// Figura estratta da solidi.typ (riga 436) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *
  //assi cartesiani
   line((2.5, 2), (2.5, 3.5), stroke: (paint: rgb("#898d91")), thickness: 1.5pt, mark:(end:">", fill: rgb("#898d91")))
   content((2.3, 3), text(fill: rgb("#476481"))[$"r"$], anchor: "south")
   line((2.5, 2), (4, 2), stroke: (paint: rgb("#898d91")), thickness: 1.5pt, mark:(end:">", fill: rgb("#898d91")))
   content((3.6, 1.7), text(fill: rgb("#476481"))[$"c"$], anchor: "south")
   line((2.5, 2), (3.5, 3), stroke: (paint: rgb("#898d91")), thickness: 1.5pt, mark:(end:">", fill: rgb("#898d91")))
   content((3, 2.8), text(fill: rgb("#476481"))[$"a"$], anchor: "south")
  // Linee di costruzione
  line((0, 0), (0, 6.5), stroke: (paint: rgb("#898d91"), thickness: 1pt, dash: "dash-dotted"))
  line((0, 0), (-1.04, 3.86), stroke: (paint: rgb("#898d91"), thickness: 1pt, dash: "dotted"))
  line((0, 0), (1.04, 3.86), stroke: (paint: rgb("#898d91"), thickness: 1pt, dash: "dotted"))
  line((1.39, 1.95), (2.04, 4.36), stroke: (paint: rgb("#898d91"), thickness: 1pt, dash: "dotted"))

  // Spigoli Nascosti
  arc((1.0, 0.5), start: 75deg, stop: 105deg, radius: 4, anchor: "origin", stroke: (paint: rgb("#898d91"), thickness: 1.5pt, dash: "dashed"))
  line((-0.04, 4.36), (-0.55, 6.30), stroke: (paint: rgb("#898d91"), thickness: 1.5pt, dash: "dashed"))
  line((-1.04, 3.86), (-0.04, 4.36), stroke: (paint: rgb("#898d91"), thickness: 1.5pt, dash: "dashed")) 

  // Spigoli Visibili 
  arc((0, 0), start: 75deg, stop: 105deg, radius: 4, anchor: "origin", stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  arc((0, 0), start: 75deg, stop: 105deg, radius: 6, anchor: "origin", stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((-1.04, 3.86), (-1.55, 5.80), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((1.04, 3.86), (1.55, 5.80), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  arc((1.0, 0.5), start: 75deg, stop: 105deg, radius: 6, anchor: "origin", stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((-1.55, 5.80), (-0.55, 6.30), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((1.55, 5.80), (2.55, 6.30), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((1.04, 3.86), (2.04, 4.36), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))
  line((2.04, 4.36), (2.55, 6.30), stroke: (paint: rgb("#898d91"), thickness: 1.5pt))

  // Annotazioni
  arc((0, 0), start: 75deg, stop: 105deg, radius: 2.2, anchor: "origin", mark: (start: ">", end: ">", fill: rgb("#476481")), stroke: (paint: rgb("#476481"), thickness: 1pt))
  content((0, 2.5), text(fill: rgb("#476481"))[$dif theta$], anchor: "south")

  line((0.65, 2.41), (1.65, 2.91), mark: (start: ">", end: ">", fill: rgb("#476481")), stroke: (paint: rgb("#476481"), thickness: 1pt))
  content((1.1, 2.85), text(fill: rgb("#476481"))[$bold(b)$], anchor: "south")

  line((2.55, 6.30), (4.00, 5.91), stroke: (paint: rgb("#898d91"), thickness: 0.8pt))
  line((2.04, 4.36), (3.49, 3.97), stroke: (paint: rgb("#898d91"), thickness: 0.8pt))
  line((3.20, 4.05), (3.71, 5.99), mark: (start: ">", end: ">", fill: rgb("#476481")), stroke: (paint: rgb("#476481"), thickness: 1pt))
  content((3.65, 5.02), text(fill: rgb("#4b6986"))[$bold("dr")$], anchor: "west")
})
