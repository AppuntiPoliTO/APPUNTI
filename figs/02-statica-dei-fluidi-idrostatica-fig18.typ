// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  import draw: *

  // Riempimento fluido di lavoro (gamma)
  circle((-2.0, 0.0), radius: 0.65, fill: c-fluido, stroke: none)
  rect((-2.16, 0.60), (-1.84, 1.0), fill: c-fluido, stroke: none)
  arc((-1.0, 1.0), start: 0deg, stop: 180deg, radius: 1.16, anchor: "origin", mode: "CLOSE", fill: c-fluido, stroke: none)
  arc((-1.0, 1.0), start: 0deg, stop: 180deg, radius: 0.84, anchor: "origin", mode: "CLOSE", fill: white, stroke: none)
  rect((-0.16, 0.0), (0.16, 1.0), fill: c-fluido, stroke: none)

  // Riempimento fluido manometrico (gamma_m)
  arc((0.8, -1.2), start: 180deg, stop: 360deg, radius: 0.96, anchor: "origin", mode: "CLOSE", fill: c-aux.transparentize(69%), stroke: none)
  arc((0.8, -1.2), start: 180deg, stop: 360deg, radius: 0.64, anchor: "origin", mode: "CLOSE", fill: white, stroke: none)
  rect((-0.16, -1.2), (0.16, 0.0), fill: c-aux.transparentize(69%), stroke: none)
  rect((1.44, -1.2), (1.76, 0.85), fill: c-aux.transparentize(69%), stroke: none)

  // Linee di costruzione e piani di riferimento
  line((-3.15, 0.0), (2.30, 0.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.76, 0.85), (2.30, 0.85), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-3.15, 2.60), (-0.75, 2.60), stroke: (dash: "dashed", thickness: 0.6pt))

  // Simbolo pelo libero / piano dei carichi idrostatici
  line((-1.20, 2.76), (-1.00, 2.76), (-1.10, 2.60), close: true, stroke: 0.65pt)
  line((-1.18, 2.53), (-1.02, 2.53), stroke: 0.5pt)
  line((-1.14, 2.47), (-1.06, 2.47), stroke: 0.5pt)

  // Contorni condotta e tubo manometrico a U
  arc((-2.0, 0.0), start: 104.25deg, stop: 435.75deg, radius: 0.65, anchor: "origin", stroke: 1pt)
  line((-2.16, 0.63), (-2.16, 1.0), stroke: 1pt)
  line((-1.84, 0.63), (-1.84, 1.0), stroke: 1pt)
  arc((-1.0, 1.0), start: 0deg, stop: 180deg, radius: 0.84, anchor: "origin", stroke: 1pt)
  arc((-1.0, 1.0), start: 0deg, stop: 180deg, radius: 1.16, anchor: "origin", stroke: 1pt)
  line((-0.16, 1.0), (-0.16, -1.2), stroke: 1pt)
  line((0.16, 1.0), (0.16, -1.2), stroke: 1pt)
  arc((0.8, -1.2), start: 180deg, stop: 360deg, radius: 0.64, anchor: "origin", stroke: 1pt)
  arc((0.8, -1.2), start: 180deg, stop: 360deg, radius: 0.96, anchor: "origin", stroke: 1pt)
  line((1.44, -1.2), (1.44, 2.0), stroke: 1pt)
  line((1.76, -1.2), (1.76, 2.0), stroke: 1pt)
  line((1.44, 2.0), (1.38, 2.06), stroke: 1pt)
  line((1.76, 2.0), (1.82, 2.06), stroke: 1pt)

  // Menischi e punti notevoli
  line((-0.16, 0.0), (0.16, 0.0), stroke: 0.95pt)
  line((1.44, 0.85), (1.76, 0.85), stroke: 0.95pt)
  circle((-2.0, 0.0), radius: 0.045, fill: black, stroke: none)
  circle((0.0, 0.0), radius: 0.045, fill: black, stroke: none)
  circle((1.6, 0.85), radius: 0.045, fill: black, stroke: none)

  // Quote e frecce
  line((-2.98, 0.0), (-2.98, 2.60), mark: (start: ">", end: ">"), stroke: 0.7pt)
  line((2.15, 0.0), (2.15, 0.85), mark: (start: ">", end: ">"), stroke: 0.7pt)
  line((1.60, 2.38), (1.60, 2.08), mark: (end: ">"), stroke: 0.65pt)
  line((0.80, -1.58), (0.80, -1.98), mark: (end: ">"), stroke: 0.55pt)

  // Etichette
  content((-1.90, 0.10), text(size: 8.5pt)[$A$], anchor: "south-west")
  content((-2.0, -0.32), text(size: 8.5pt)[$gamma$], anchor: "center")
  content((-0.24, 0.12), text(size: 8.5pt)[$M$], anchor: "south-east")
  content((1.35, 0.85), text(size: 8.5pt)[$N'$], anchor: "east")
  content((1.88, 1.98), text(size: 8.5pt)[$B'$], anchor: "west")
  content((1.60, 2.45), text(size: 7pt)[$p_("atm")$], anchor: "south")
  content((0.80, -1.42), text(size: 8.5pt)[$gamma_m$], anchor: "center")
  content((2.26, 0.425), text(size: 8.5pt)[$Delta$], anchor: "west")
  content((-3.08, 1.30), text(size: 8.5pt)[$h$], anchor: "east")
  content((-0.78, 2.78), text(size: 6.5pt)[p.c.i.], anchor: "south-east")
})
