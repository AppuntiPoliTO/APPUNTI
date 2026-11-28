// Figura estratta da fatica.typ (riga 2800) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.72cm, {
  // BBox: x in [-0.7, 10.3] (dx=11.0), y in [-0.6, 7.3], length=0.72cm -> larghezza = 7.92 cm <= 8.2 cm
  import draw: *

  // --- Micro-schema (a) Provino liscio ("u") ---
  line((0.6, 6.75), (1.0, 6.75), (1.25, 6.60), (3.65, 6.60), (3.9, 6.75), (4.3, 6.75), stroke: 0.9pt)
  line((0.6, 5.85), (1.0, 5.85), (1.25, 6.00), (3.65, 6.00), (3.9, 5.85), (4.3, 5.85), stroke: 0.9pt)
  line((0.45, 6.30), (4.45, 6.30), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.45, 7.12), (2.45, 6.60), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
  line((2.45, 5.48), (2.45, 6.00), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
  content((2.45, 7.18), anchor: "south", text(size: 7.5pt)[$d$])
  content((2.45, 5.12), anchor: "center", text(size: 7pt)[(a) Provino liscio (u)])

  // --- Micro-schema (b) Provino intagliato ("n") ---
  line((5.2, 6.85), (6.80, 6.85), stroke: 0.9pt)
  arc((7.05, 6.85), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 0.9pt)
  line((7.30, 6.85), (8.9, 6.85), stroke: 0.9pt)
  line((5.2, 5.75), (6.80, 5.75), stroke: 0.9pt)
  arc((7.05, 5.75), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 0.9pt)
  line((7.30, 5.75), (8.9, 5.75), stroke: 0.9pt)
  line((5.05, 6.30), (9.05, 6.30), stroke: (dash: "dashed", thickness: 0.5pt))
  line((7.05, 7.12), (7.05, 6.60), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
  line((7.05, 5.48), (7.05, 6.00), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
  content((7.05, 7.18), anchor: "south", text(size: 7.5pt)[$d$])
  content((7.05, 5.12), anchor: "center", text(size: 7pt)[(b) Provino intagliato (n)])

  // --- Diagramma log-log S_n vs N ---
  line((0.6, 0.55), (0.6, 4.40), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
  line((0.6, 0.55), (7.65, 0.55), stroke: 0.85pt, mark: (end: ">", scale: 0.55))

  // Tacche asse N
  for (x, lbl) in ((1.2, $10^3$), (2.3, $10^4$), (3.4, $10^5$), (4.5, $10^6$), (5.6, $10^7$)) {
    line((x, 0.55), (x, 0.70), stroke: 0.6pt)
    content((x, 0.38), anchor: "north", text(size: 7pt)[#lbl])
  }
  content((4.1, -0.25), anchor: "center", text(size: 7.5pt)[Durata $N$ (cicli, scala log)])
  content((-0.25, 2.45), anchor: "center", std.rotate(-90deg, reflow: true)[#text(size: 7.5pt)[Tensione nominale $S_n$]])

  // Curva provini lisci S_n(u)
  line((1.2, 3.95), (4.4, 2.55), (6.5, 2.55), stroke: 1.15pt + blue)
  content((2.9, 3.55), anchor: "south-west", text(size: 7.5pt, fill: blue)[Provini lisci])
  content((5.55, 2.75), anchor: "south", text(size: 7.5pt, fill: blue)[$S_n (u)$])

  // Curva provini intagliati S_n(n)
  line((1.2, 3.25), (4.4, 1.55), (6.5, 1.55), stroke: 1.15pt + red.transparentize(10%))
  content((5.55, 1.35), anchor: "north", text(size: 7.5pt, fill: red.transparentize(10%))[$S_n (n)$])
  content((1.05, 1.10), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%))[Provini intagliati])
  line((2.15, 1.38), (2.45, 2.57), stroke: (paint: red.transparentize(10%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: red.transparentize(10%)))

  // Rapporto K_f
  line((6.5, 2.55), (7.10, 2.55), stroke: (dash: "dotted", thickness: 0.6pt))
  line((6.5, 1.55), (7.10, 1.55), stroke: (dash: "dotted", thickness: 0.6pt))
  line((6.85, 1.55), (6.85, 2.55), stroke: 0.75pt, mark: (start: ">", end: ">", scale: 0.5))
  content((7.15, 2.05), anchor: "west", text(size: 7.5pt)[$K_f = frac(S_n (u), S_n (n))$])
})
