#import "@preview/cetz:0.3.4": canvas, draw

// ---------------------------------------------------------------
// Impostazione comune del documento: usata dal main e da ogni capitolo
// (`#show: conf`), così ogni capitolo compila anche da solo con lo stesso aspetto.
// ---------------------------------------------------------------
#let conf(body) = {
  set page(paper: "a4", margin: 2cm)
  set text(lang: "it", size: 11pt)
  set par(justify: true)
  set figure(supplement: [Figura], gap: 0.8em)

  // Equazioni numerate per capitolo (es. (5.12)): la numerazione serve ai
  // riferimenti @eq:..., ma il numero non viene mostrato accanto all'equazione.
  set math.equation(numbering: n => numbering("(1.1)", counter(heading).get().first(), n))
  show math.equation.where(block: true): it => {
    if it.numbering == none { it } else { math.equation(block: true, numbering: none, it.body) }
  }

  // Numerazione: titoli fino al 3° livello; figure senza numero
  set heading(numbering: "1.1.1")
  show heading.where(level: 4): set heading(numbering: none)
  set figure(numbering: none)

  // Ogni capitolo: pagina nuova, contatori azzerati, titolo con etichetta "Capitolo N"
  show heading.where(level: 1): it => {
    if it.numbering == none { return it }   // titolo "Indice": niente etichetta né pagina nuova
    colbreak(weak: true)
    counter(math.equation).update(0)
    v(0.8cm)
    block(width: 100%, below: 1.2em, {
      text(size: 9.5pt, fill: luma(110), tracking: 0.08em)[CAPITOLO #context counter(heading).display("1")]
      v(0.2em)
      text(size: 18pt, weight: "bold", it.body)
      v(-0.2em)
      line(length: 100%, stroke: 0.6pt + luma(150))
    })
  }
  show heading.where(level: 2): set text(size: 13pt)
  show heading.where(level: 2): set block(above: 1.7em, below: 0.9em)
  show heading.where(level: 3): set text(size: 11.5pt)
  show heading.where(level: 3): set block(above: 1.4em, below: 0.8em)
  show heading.where(level: 4): set text(size: 11pt, style: "italic", weight: "semibold")

  body
}

// Simboli e scorciatoie testuali
#let circ = sym.degree
#let varphi = $phi$

// Didascalia breve sotto le figure
#let dida(body) = align(center, text(size: 9pt, fill: luma(80), body))

// Box per note e osservazioni fisiche
#let nota(body) = block(
  width: 100%,
  fill: luma(240),
  stroke: (left: 2.5pt + luma(120)),
  inset: 10pt,
  radius: (right: 3pt),
  body,
)

// ---------------------------------------------------------------
// Palette unica per tutte le figure
// ---------------------------------------------------------------
#let c-geo   = black                 // pareti, assi, quote
#let c-vel   = rgb("#8c3824")        // velocità e profili di velocità
#let c-norm  = rgb("#1f4e8c")        // versori normali e curve secondarie
#let c-forza = rgb("#2e6b3e")        // sforzi, forze, gradienti di pressione
#let c-aux   = rgb("#666666")        // linee ausiliarie e di costruzione
#let c-fluido = rgb("#d0e1f9")        // riempimento di fluido (serbatoi, piezometri)
#let c-riemp  = luma(230)             // riempimento di solidi (piastre, corpi)

// ---------------------------------------------------------------
// Elementi grafici riutilizzati
// ---------------------------------------------------------------
#let freccia(a, b, col: c-geo, sp: 0.8pt) = draw.line(
  a, b, stroke: sp + col, mark: (end: "stealth", fill: col)
)

#let quota(a, b, col: c-geo) = draw.line(
  a, b, stroke: 0.7pt + col,
  mark: (start: "stealth", end: "stealth", fill: col)
)

#let etichetta(pos, body, col: c-geo, anchor: "center", bg: none) = draw.content(
  pos,
  block(fill: bg, inset: if bg != none { 1.5pt } else { 0pt }, text(size: 9pt, fill: col, body)),
  anchor: anchor
)

#let sezione-tratteggiata(x, y0, y1) = draw.line(
  (x, y0), (x, y1),
  stroke: (paint: c-aux, thickness: 0.8pt, dash: "dashed")
)

// Parete solida con tratteggio (sotto: true -> tratteggio verso il basso)
#let parete(x0, x1, y, sotto: true, passo: 0.45) = {
  draw.line((x0, y), (x1, y), stroke: 1pt + c-geo)
  let n = calc.floor((x1 - x0 - 0.2) / passo) + 1
  let d = if sotto { -0.16 } else { 0.16 }
  for i in range(n) {
    let x = x0 + 0.15 + i * passo
    draw.line((x, y), (x + d, y + d), stroke: 0.55pt + c-geo)
  }
}

// Profilo di velocità u = f(eta), con eta = y/e in [0, 1].
#let profilo(x0, y0, f, H: 1.8, s: 1.1, n: 6) = {
  draw.line((x0, y0), (x0, y0 + H), stroke: 0.6pt + c-aux)
  let pts = range(0, 41).map(i => (x0 + s * f(i / 40), y0 + H * i / 40))
  draw.line(..pts, stroke: 1.1pt + c-vel)
  for i in range(0, n + 1) {
    let eta = 0.08 + 0.84 * i / n
    let u = f(eta)
    if calc.abs(u) > 0.10 {
      freccia((x0, y0 + H * eta), (x0 + s * u, y0 + H * eta), col: c-vel, sp: 0.65pt)
    }
  }
}
#let Rey = math.upright("Re")
// Meato con profilo di velocità e verso della spinta di pressione (-grad p)
#let caso-gradiente(x0, y0, k, titolo, verso) = {
  let W = 5.4
  let H = 1.9
  parete(x0, x0 + W, y0)
  parete(x0, x0 + W, y0 + H, sotto: false)
  profilo(x0 + 2.6, y0, eta => (eta - 1) * (1 + k * eta), H: H, s: 1.15)
  etichetta((x0 + W / 2, y0 + H + 0.48), titolo)
  etichetta((x0 + 2.0, y0 - 0.38), $-U$, col: c-vel)

  let ym = y0 + H * 0.55
  if verso < 0 {
    // G > 0: p^- a sinistra, p^+ a destra, spinta verso sinistra
    etichetta((x0 + 0.45, ym + 0.35), $p^-$, col: c-forza)
    etichetta((x0 + W - 0.45, ym + 0.35), $p^+$, col: c-forza)
    freccia((x0 + W - 0.35, ym), (x0 + W - 1.55, ym), col: c-forza, sp: 1pt)
    etichetta((x0 + W - 0.95, ym - 0.32), $-nabla p$, col: c-forza)
  } else {
    // G < 0: p^+ a sinistra, p^- a destra, spinta verso destra
    etichetta((x0 + 0.45, ym + 0.35), $p^+$, col: c-forza)
    etichetta((x0 + W - 0.45, ym + 0.35), $p^-$, col: c-forza)
    freccia((x0 + W - 1.55, ym), (x0 + W - 0.35, ym), col: c-forza, sp: 1pt)
    etichetta((x0 + W - 0.95, ym - 0.32), $-nabla p$, col: c-forza)
  }
}

// ---------------------------------------------------------------
// Derivazioni (cap. 7): passaggio con spiegazione, tappa
// ---------------------------------------------------------------
// Freccia di implicazione con la spiegazione del passaggio sopra (la freccia si allunga sul testo)
#let passo(t) = {
  let spieg = text(size: 8pt, fill: c-aux, t)
  // display(): senza, l'apice verrebbe rimpicciolito a misura di pedice
  $quad limits(stretch(arrow.r.double, size: #(100% + 1.2em)))^display(#spieg) quad$
}

// Titoletto dei passi di una derivazione
// ("[1. Testo]" in markup diventa un elenco numerato: qui torna testo in linea)
#let tappa(t) = {
  text(weight: "bold", t)
}

// Motivazione breve di un passaggio in una catena allineata (&= ... && #motivo[...])
#let motivo(t) = text(size: 8pt, fill: c-aux, t)