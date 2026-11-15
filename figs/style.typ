// ---------------------------------------------------------------
// Stile condiviso delle figure CeTZ (colori dal template)
// 3 spessori, una sola freccia, etichette 9pt, helper riutilizzabili.
// ---------------------------------------------------------------
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": c-geo, c-vel, c-norm, c-forza, c-aux, c-fluido, c-riemp

// Spessori (solo questi tre)
#let sp-geo = 1pt     // pareti, corpi, assi
#let sp-vec = 0.9pt   // linee di corrente, vettori
#let sp-aux = 0.5pt   // quote, richiami, costruzioni, tratteggi

// Una sola punta: stealth, stessa scala, piena del colore del tratto
#let punta-scala = 0.75
#let punta(col) = (end: "stealth", fill: col, scale: punta-scala)
#let punte(col) = (start: "stealth", end: "stealth", fill: col, scale: punta-scala)

// --- geometria vettoriale minima ---
#let v-add(a, b) = (a.at(0) + b.at(0), a.at(1) + b.at(1))
#let v-sub(a, b) = (a.at(0) - b.at(0), a.at(1) - b.at(1))
#let v-mul(a, k) = (a.at(0) * k, a.at(1) * k)
#let v-len(a) = calc.sqrt(a.at(0) * a.at(0) + a.at(1) * a.at(1))
#let v-unit(a) = v-mul(a, 1 / v-len(a))
#let v-perp(a) = (-a.at(1), a.at(0))   // ruota di +90°
#let v-lerp(a, b, t) = v-add(a, v-mul(v-sub(b, a), t))

// --- tratti ---
#let tratto-geo(col: c-geo) = sp-geo + col
#let tratto-vec(col: c-vel) = sp-vec + col
#let tratto-aux(col: c-aux) = sp-aux + col

// Vettore (grandezza fisica): spessore sp-vec, punta piena
#let vettore(a, b, col: c-vel, name: none) = draw.line(
  a, b, stroke: sp-vec + col, mark: punta(col), name: name,
)

// Etichetta: 9pt (dalla regola #show figure del capitolo), con fondo bianco opzionale
#let lab(pos, body, col: c-geo, anchor: "center", bg: false, pad: 0.05) = draw.content(
  pos,
  text(fill: col, body),
  anchor: anchor,
  padding: pad,
  frame: if bg { "rect" } else { none },
  fill: if bg { white } else { none },
  stroke: none,
)

// Parete con tratteggio di sezione generato in loop.
// side = 1: tratteggio a sinistra del verso from->to; side = -1: a destra.
#let hatch-wall(from, to, side: 1, step: 0.2, len: 0.16, col: c-geo, linea: true) = {
  if linea { draw.line(from, to, stroke: sp-geo + col) }
  let d = v-sub(to, from)
  let L = v-len(d)
  let t = v-unit(d)
  let n = v-mul(v-perp(t), side)
  let k = calc.floor(L / step)
  let s0 = (L - k * step) / 2
  for i in range(k + 1) {
    let p = v-add(from, v-mul(t, s0 + i * step))
    draw.line(p, v-add(p, v-mul(v-sub(n, t), len)), stroke: sp-aux + col)
  }
}

// Asse di simmetria tratto-punto (dash pattern di cetz)
#let axis-line(a, b, col: c-aux) = draw.line(
  a, b, stroke: (paint: col, thickness: sp-aux, dash: "dash-dotted"),
)

// Quota: linee di estensione da a e b, linea di quota spostata di `off` lungo la
// normale sinistra del verso a->b, frecce ai due capi, etichetta al centro.
#let dim(a, b, label, off: 0, col: c-geo, anchor: "center", lab-off: (0, 0), bg: true) = {
  let t = v-unit(v-sub(b, a))
  let n = v-perp(t)
  let a2 = v-add(a, v-mul(n, off))
  let b2 = v-add(b, v-mul(n, off))
  if off != 0 {
    let sgn = if off > 0 { 1 } else { -1 }
    let over = v-mul(n, 0.12 * sgn)
    draw.line(a, v-add(a2, over), stroke: sp-aux + col)
    draw.line(b, v-add(b2, over), stroke: sp-aux + col)
  }
  draw.line(a2, b2, stroke: sp-aux + col, mark: punte(col))
  lab(v-add(v-lerp(a2, b2, 0.5), lab-off), label, col: col, anchor: anchor, bg: bg)
}

// Richiamo: etichetta in `from`, freccia sottile fino a `to`
#let leader(from, to, label, col: c-aux, lab-col: c-geo, anchor: "center", start: 0.0) = {
  let a = v-lerp(from, to, start)
  draw.line(a, to, stroke: sp-aux + col, mark: punta(col))
  lab(from, label, col: lab-col, anchor: anchor)
}

// Polilinea / curva campionata da una funzione parametrica t in [t0, t1]
#let campiona(f, t0, t1, n: 60) = range(n + 1).map(i => f(t0 + (t1 - t0) * i / n))
