// Figura estratta da fatica.typ (riga 3812) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.92cm, {
  import draw: *
  // BBox: x in [0.0, 9.5] (dx=9.5), y in [0.1, 6.5], length=0.82cm -> larghezza = 7.79 cm <= 8.2 cm

  // a) Piegatura a freddo (lamiera + farfalla tensioni residue)
  content((0.1, 6.28), anchor: "west", [#text(size: 7.3pt, weight: "bold")[a) Piegatura a freddo (dopo lo scarico)]])

  // Mini-schema lamiera piegata a sinistra + cerchio di zoom
  line((0.60, 5.65), (0.60, 4.45), stroke: 1.3pt)
  arc((1.10, 4.45), start: 180deg, stop: 270deg, radius: 0.50, anchor: "origin", stroke: 1.3pt)
  line((1.10, 3.95), (2.10, 3.95), stroke: 1.3pt)
  circle((0.76, 4.10), radius: 0.30, stroke: (dash: "dashed", thickness: 0.55pt))
  line((1.06, 4.15), (2.82, 4.65), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(45%)))

  // Zoom gomito con distribuzione residua a farfalla nello spessore
  // Centro di curvatura in (5.35, 5.75): r_ext = 2.55, r_med = 2.15, r_int = 1.75
  arc((5.35, 5.75), start: 192deg, stop: 256deg, radius: 2.55, anchor: "origin", stroke: 1.0pt)
  arc((5.35, 5.75), start: 192deg, stop: 256deg, radius: 1.75, anchor: "origin", stroke: 1.0pt)
  arc((5.35, 5.75), start: 194deg, stop: 254deg, radius: 2.15, anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(50%)))

  // Sezione radiale a theta = 225 deg: P_ext=(3.55,3.95), P_med=(3.83,4.23), P_int=(4.11,4.51)
  line((3.55, 3.95), (4.11, 4.51), stroke: 0.65pt)
  line((3.55, 3.95), (3.46, 4.28), (3.83, 4.23), close: true, fill: blue.transparentize(78%), stroke: (paint: blue, thickness: 0.8pt))
  line((3.83, 4.23), (4.20, 4.18), (4.11, 4.51), close: true, fill: red.transparentize(78%), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))

  content((3.25, 3.82), anchor: "center", [#text(fill: blue, size: 8pt, weight: "bold")[$-$]])
  content((4.38, 4.62), anchor: "center", [#text(fill: red.transparentize(10%), size: 8pt, weight: "bold")[$+$]])

  // Richiami senza incroci: intradosso (da lato concavo) ed estradosso (da sotto)
  line((5.35, 5.12), (3.82, 5.02), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
  content((5.45, 5.12), anchor: "west", [#text(size: 6.9pt)[Fibre interne: #text(fill: red.transparentize(10%), weight: "bold")[$sigma_"res" (+)$]]])

  line((5.35, 3.35), (4.52, 3.35), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
  content((5.45, 3.35), anchor: "west", [#text(size: 6.9pt)[Fibre esterne: #text(fill: blue, weight: "bold")[$sigma_"res" (-)$]]])

  // Separatore
  line((0.1, 2.95), (9.3, 2.95), stroke: (dash: "dotted", thickness: 0.6pt))

  // b) Lavorazione a caldo: decarburazione
  content((0.1, 2.58), anchor: "west", [#text(size: 7.3pt, weight: "bold")[b) Lavorazione a caldo: decarburazione]])
  rect((0.9, 0.35), (4.9, 1.30), fill: black.transparentize(88%), stroke: 0.9pt)
  content((2.9, 0.82), anchor: "center", [#text(size: 7pt)[Substrato (vincola il ritiro)]])
  rect((0.9, 1.30), (4.9, 1.70), fill: red.transparentize(80%), stroke: 0.9pt)

  // Frecce trazione sullo strato superficiale
  line((0.9, 1.50), (0.25, 1.50), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">"))
  line((4.9, 1.50), (5.55, 1.50), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">"))
  content((5.75, 1.62), anchor: "west", [#text(fill: red.transparentize(10%), size: 7pt, weight: "bold")[$sigma_"res" (+)$]])
  content((5.75, 1.15), anchor: "west", [#text(size: 6.9pt)[Pelle decarburata]])

  // Reazione decarburazione
  line((2.5, 1.70), (3.1, 2.15), stroke: 0.8pt, mark: (end: ">"))
  content((3.25, 2.18), anchor: "west", [#text(size: 7pt)[$"C" + "O"_2 -> "CO"_2$]])
})
