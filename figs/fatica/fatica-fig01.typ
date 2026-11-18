// Figura estratta da fatica.typ (riga 67) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- Sezione circolare dell'albero in rotazione ---
  let cx = 2.2
  let cy = 3.0
  let r = 1.5
  circle((cx, cy), radius: r, stroke: 1pt)
  // Assi di simmetria della sezione (asse neutro tratteggiato)
  line((cx - 1.9, cy), (cx + 1.9, cy), stroke: (dash: "dashed", thickness: 0.6pt))
  line((cx, cy - 1.8), (cx, cy + 1.8), stroke: (dash: "dashed", thickness: 0.6pt))
  content((cx, cy + 2.1), text(size: 8.5pt, weight: "bold")[Albero in rotazione])

  // Freccia interna del verso di rotazione
  arc((cx + 0.55, cy), start: 0deg, stop: 240deg, radius: 0.55, mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  content((cx + 0.1, cy - 0.1), text(red, size: 8pt)[$omega$])

  // Posizioni successive dello stesso punto materiale sulla periferia
  circle((cx + r, cy), radius: 0.12, fill: blue, stroke: none)
  circle((cx, cy + r), radius: 0.12, fill: blue, stroke: none)
  circle((cx - r, cy), radius: 0.12, fill: blue, stroke: none)
  circle((cx, cy - r), radius: 0.12, fill: blue, stroke: none)

  // --- Diagramma lineare della tensione di flessione sulla sezione ---
  let bx = 5.2
  line((bx, cy - 1.8), (bx, cy + 1.8), stroke: 1pt)
  line((bx - 1.1, cy - r), (bx + 1.1, cy + r), stroke: (paint: blue, thickness: 1pt))
  line((bx, cy + r), (bx + 1.1, cy + r), mark: (end: ">"), stroke: (paint: blue, thickness: 0.8pt))
  line((bx, cy - r), (bx - 1.1, cy - r), mark: (end: ">"), stroke: (paint: blue, thickness: 0.8pt))
  line((bx, cy + 0.75), (bx + 0.55, cy + 0.75), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((bx, cy - 0.75), (bx - 0.55, cy - 0.75), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  content((bx + 1.35, cy + r), text(blue, size: 8.5pt)[$+sigma_"max"$])
  content((bx - 1.4, cy - r), text(blue, size: 8.5pt)[$-sigma_"min"$])

  // Linee di proiezione dalla sezione al diagramma di flessione
  line((cx, cy + r), (bx, cy + r), stroke: (dash: "dotted", thickness: 0.6pt))
  line((cx, cy - r), (bx, cy - r), stroke: (dash: "dotted", thickness: 0.6pt))

  // --- Grafico temporale sigma(t) esplorato dal punto ---
  let gx = 7.6
  line((gx, cy - 2.0), (gx, cy + 2.2), mark: (end: ">"), stroke: 1pt)
  content((gx - 0.35, cy + 2.0), text(size: 9pt)[$sigma$])
  line((gx - 0.2, cy), (gx + 5.4, cy), mark: (end: ">"), stroke: 1pt)
  content((gx + 5.55, cy - 0.25), text(size: 9pt)[$t$])

  // Linee guida dei valori massimi e minimi
  line((gx, cy + r), (gx + 4.8, cy + r), stroke: (dash: "dotted", thickness: 0.6pt))
  line((gx, cy - r), (gx + 4.8, cy - r), stroke: (dash: "dotted", thickness: 0.6pt))

  // Onda sinusoidale (2 cicli completi)
  bezier((gx, cy), (gx + 1.2, cy), (gx + 0.4, cy + 2.0), (gx + 0.8, cy + 2.0), stroke: (paint: blue, thickness: 1.1pt))
  bezier((gx + 1.2, cy), (gx + 2.4, cy), (gx + 1.6, cy - 2.0), (gx + 2.0, cy - 2.0), stroke: (paint: blue, thickness: 1.1pt))
  bezier((gx + 2.4, cy), (gx + 3.6, cy), (gx + 2.8, cy + 2.0), (gx + 3.2, cy + 2.0), stroke: (paint: blue, thickness: 1.1pt))
  bezier((gx + 3.6, cy), (gx + 4.8, cy), (gx + 4.0, cy - 2.0), (gx + 4.4, cy - 2.0), stroke: (paint: blue, thickness: 1.1pt))
})
