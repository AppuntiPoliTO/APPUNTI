#import "@preview/cetz:0.3.2": canvas, draw

#set page(width: auto, height: auto, margin: 1cm)
#set text(font: "New Computer Modern", size: 11pt)

// Proiezione isometrica:
// x = asse dell'albero (in alto a destra)
// y = direzione radiale orizzontale (in basso a destra)
// z = direzione verticale (in alto)
#let iso(x, y, z, ox: 0) = (
  ox + 0.866 * x + 0.866 * y,
  0.5 * x - 0.5 * y + z
)

// Helper per disegnare un arco nel piano y-z a coordinata assiale x
#let iso-arc(x, r, start, stop, ox: 0, steps: 40, ..style) = {
  let pts = range(steps + 1).map(i => {
    let a = start + (stop - start) * i / steps
    iso(x, r * calc.cos(a), r * calc.sin(a), ox: ox)
  })
  draw.line(..pts, ..style)
}

// Funzione principale per disegnare l'accoppiamento (cavo o pieno)
#let draw-assembly(ox, hollow: true) = {
  import draw: *

  let r0 = if hollow { 0.55 } else { 0.0 } // Raggio foro interno
  let ri = 1.15                            // Raggio interfaccia albero-mozzo
  let re = 2.15                            // Raggio esterno mozzo
  let L_shaft = 4.6                        // Lunghezza albero
  let x_hub1 = 1.2                         // Inizio mozzo
  let x_hub2 = 3.4                         // Fine mozzo
  let p_scale = 0.75                       // Ampiezza grafica della pressione p

  // 1. ASSE DI SIMMETRIA
  line(
    iso(-0.6, 0, 0, ox: ox),
    iso(L_shaft + 0.8, 0, 0, ox: ox),
    stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: black)
  )

  // 2. CONTORNI CILINDRICI (ALBERO E MOZZO)
  // Faccia anteriore albero (x = 0)
  iso-arc(0, ri, 90deg, 270deg, ox: ox, stroke: 1pt)
  if hollow {
    iso-arc(0, r0, 90deg, 270deg, ox: ox, stroke: 0.9pt)
  }

  // Faccia anteriore mozzo (x = x_hub1)
  iso-arc(x_hub1, re, 90deg, 270deg, ox: ox, stroke: 1pt)

  // Generatrici superiori e inferiori
  line(iso(0, 0, ri, ox: ox), iso(L_shaft, 0, ri, ox: ox), stroke: 1pt)
  line(iso(0, 0, -ri, ox: ox), iso(L_shaft, 0, -ri, ox: ox), stroke: 1pt)
  line(iso(x_hub1, 0, re, ox: ox), iso(x_hub2, 0, re, ox: ox), stroke: 1pt)
  line(iso(x_hub1, 0, -re, ox: ox), iso(x_hub2, 0, -re, ox: ox), stroke: 1pt)
  if hollow {
    line(iso(0, 0, r0, ox: ox), iso(L_shaft, 0, r0, ox: ox), stroke: 0.8pt)
    line(iso(0, 0, -r0, ox: ox), iso(L_shaft, 0, -r0, ox: ox), stroke: 0.8pt)
  }

  // Chiusure posteriori (sezioni verticali)
  line(iso(x_hub2, 0, re, ox: ox), iso(x_hub2, 0, ri, ox: ox), stroke: 1pt)
  line(iso(x_hub2, 0, -re, ox: ox), iso(x_hub2, 0, -ri, ox: ox), stroke: 1pt)
  line(iso(L_shaft, 0, ri, ox: ox), iso(L_shaft, 0, r0, ox: ox), stroke: 1pt)
  line(iso(L_shaft, 0, -ri, ox: ox), iso(L_shaft, 0, -r0, ox: ox), stroke: 1pt)

  // 3. SEZIONE TRATTEGGIATA (semplificata sul piano y=0)
  // Mozzo superiore
  for i in range(1, 14) {
    let x = x_hub1 + (x_hub2 - x_hub1) * i / 14
    line(
      iso(x, 0, ri, ox: ox),
      iso(x - 0.15, 0, re, ox: ox),
      stroke: 0.3pt + luma(140)
    )
  }
  // Mozzo inferiore
  for i in range(1, 14) {
    let x = x_hub1 + (x_hub2 - x_hub1) * i / 14
    line(
      iso(x, 0, -re, ox: ox),
      iso(x + 0.15, 0, -ri, ox: ox),
      stroke: 0.3pt + luma(140)
    )
  }

  // 4. DIAGRAMMI DI TENSIONE NEL MOZZO (parte superiore)
  let x_mid = (x_hub1 + x_hub2) / 2
  let k_hub = (ri * ri) / (re * re - ri * ri)

  // sigma_rA (radiale nel mozzo, compressione: va da p a 0)
  let pts_srA = range(21).map(i => {
    let r = ri + (re - ri) * i / 20
    let val = p_scale * k_hub * ((re * re) / (r * r) - 1)
    iso(x_mid - val, 0, r, ox: ox)
  })
  line(iso(x_mid, 0, ri, ox: ox), ..pts_srA, iso(x_mid, 0, re, ox: ox), stroke: 1.1pt)
  for i in range(1, 6) {
    let r = ri + (re - ri) * i / 6
    let val = p_scale * k_hub * ((re * re) / (r * r) - 1)
    line(
      iso(x_mid, 0, r, ox: ox),
      iso(x_mid - val, 0, r, ox: ox),
      stroke: 0.5pt,
      mark: (end: ">", size: 0.1)
    )
  }
  content(iso(x_mid - 0.65, 0, ri + 0.35, ox: ox), $sigma_(r A)$)

  // sigma_tA (tangenziale nel mozzo, trazione: massima a ri, decresce verso re)
  let pts_stA = range(21).map(i => {
    let r = ri + (re - ri) * i / 20
    let val = p_scale * 0.75 * k_hub * ((re * re) / (r * r) + 1)
    iso(x_mid, val, r, ox: ox)
  })
  line(iso(x_mid, 0, ri, ox: ox), ..pts_stA, iso(x_mid, 0, re, ox: ox), stroke: 1.1pt)
  for i in range(0, 6) {
    let r = ri + (re - ri) * i / 5
    let val = p_scale * 0.75 * k_hub * ((re * re) / (r * r) + 1)
    line(
      iso(x_mid, 0, r, ox: ox),
      iso(x_mid, val, r, ox: ox),
      stroke: 0.5pt,
      mark: (end: ">", size: 0.1)
    )
  }
  content(iso(x_mid + 0.1, 0.85, ri + 0.55, ox: ox), $sigma_(t A)$)

  // 5. DIAGRAMMI DI TENSIONE NELL'ALBERO (parte inferiore)
  if hollow {
    // Albero cavo: sigma_rI va da 0 (r0) a -p (ri)
    let k_sh = (ri * ri) / (ri * ri - r0 * r0)
    let pts_srI = range(21).map(i => {
      let r = r0 + (ri - r0) * i / 20
      let val = p_scale * k_sh * (1 - (r0 * r0) / (r * r))
      iso(x_mid - val, 0, -r, ox: ox)
    })
    line(iso(x_mid, 0, -r0, ox: ox), ..pts_srI, iso(x_mid, 0, -ri, ox: ox), stroke: 1.1pt)
    for i in range(1, 5) {
      let r = r0 + (ri - r0) * i / 5
      let val = p_scale * k_sh * (1 - (r0 * r0) / (r * r))
      line(
        iso(x_mid - val, 0, -r, ox: ox),
        iso(x_mid, 0, -r, ox: ox),
        stroke: 0.5pt,
        mark: (end: ">", size: 0.1)
      )
    }

    // sigma_tI (compressione, max a r0)
    let pts_stI = range(21).map(i => {
      let r = r0 + (ri - r0) * i / 20
      let val = p_scale * 0.65 * k_sh * (1 + (r0 * r0) / (r * r))
      iso(x_mid, val, -r, ox: ox)
    })
    line(iso(x_mid, 0, -r0, ox: ox), ..pts_stI, iso(x_mid, 0, -ri, ox: ox), stroke: 1.1pt)
    for i in range(0, 5) {
      let r = r0 + (ri - r0) * i / 4
      let val = p_scale * 0.65 * k_sh * (1 + (r0 * r0) / (r * r))
      line(
        iso(x_mid, val, -r, ox: ox),
        iso(x_mid, 0, -r, ox: ox),
        stroke: 0.5pt,
        mark: (end: ">", size: 0.1)
      )
    }
  } else {
    // Albero pieno: sigma_rI = sigma_tI = -p (costanti)
    line(
      iso(x_mid, 0, 0, ox: ox),
      iso(x_mid - p_scale, 0, 0, ox: ox),
      iso(x_mid - p_scale, 0, -ri, ox: ox),
      iso(x_mid, 0, -ri, ox: ox),
      stroke: 1.1pt
    )
    for i in range(1, 5) {
      let r = ri * i / 5
      line(
        iso(x_mid - p_scale, 0, -r, ox: ox),
        iso(x_mid, 0, -r, ox: ox),
        stroke: 0.5pt,
        mark: (end: ">", size: 0.1)
      )
    }

    line(
      iso(x_mid, 0, 0, ox: ox),
      iso(x_mid, p_scale * 0.8, 0, ox: ox),
      iso(x_mid, p_scale * 0.8, -ri, ox: ox),
      iso(x_mid, 0, -ri, ox: ox),
      stroke: 1.1pt
    )
    for i in range(1, 5) {
      let r = ri * i / 5
      line(
        iso(x_mid, p_scale * 0.8, -r, ox: ox),
        iso(x_mid, 0, -r, ox: ox),
        stroke: 0.5pt,
        mark: (end: ">", size: 0.1)
      )
    }
  }

  content(iso(x_mid - 0.55, 0, -0.55, ox: ox), $sigma_(r I)$)
  content(iso(x_mid + 0.1, 0.55, -0.7, ox: ox), $sigma_(t I)$)

  // 6. QUOTE PRESSIONE p (in alto e in basso)
  let p_top1 = iso(x_mid - p_scale, 0, re + 0.9, ox: ox)
  let p_top2 = iso(x_mid, 0, re + 0.9, ox: ox)
  line(iso(x_mid - p_scale, 0, re + 0.1, ox: ox), p_top1, stroke: 0.4pt)
  line(iso(x_mid, 0, re + 0.1, ox: ox), p_top2, stroke: 0.4pt)
  line(p_top1, p_top2, stroke: 0.5pt, mark: (symbol: ">", size: 0.12))
  content(iso(x_mid - p_scale / 2, 0, re + 1.15, ox: ox), $p$)

  // 7. RIQUADRO ROSSO DI EVIDENZIAZIONE
  rect(
    iso(x_mid - 1.1, -0.1, -ri - 0.35, ox: ox),
    iso(x_mid + 0.4, 1.35, 0.15, ox: ox),
    radius: 0.35,
    stroke: rgb("#a51d2d") + 1.3pt
  )
}

// Rendering completo affiancato
#figure(
  canvas(length: 1cm, {
    draw-assembly(0, hollow: true)   // Sinistra: albero cavo
    draw-assembly(7.5, hollow: false) // Destra: albero pieno
  }),
  caption: text(fill: rgb("#a51d2d"), style: "italic")[
    Albero cerchiato dal mozzo (compresso) e mozzo dilatato dall'albero (teso)
  ]
)