// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 49) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Cilindro principale: x da 0 a 5.6, raggio y = 1.0, raggio x = 0.35
  line((0, 1.0), (5.6, 1.0), stroke: 1.2pt)
  line((0, -1.0), (5.6, -1.0), stroke: 1.2pt)
  
  // Asse longitudinale e assi verticali/trasversali alle estremita' e sezione S
  line((-0.5, 0), (6.1, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -1.35), (0, 1.35), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((3.5, -1.35), (3.5, 1.35), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((5.6, -1.35), (5.6, 1.35), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  
  // Assi prospettici z inclinati
  line((-0.6, -0.6), (0.6, 0.6), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((2.9, -0.6), (4.1, 0.6), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((5.0, -0.6), (6.2, 0.6), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Ellisse sezione S (x = 3.5) con campitura grigia
  circle((3.5, 0), radius: (0.35, 1.0), fill: luma(220), stroke: (dash: "dashed", thickness: 0.8pt))
  line((3.5, -1.0), (3.5, 1.0), stroke: (dash: "dashed", thickness: 0.6pt))

  // Ellissi di estremita'
  circle((0, 0), radius: (0.35, 1.0), stroke: 1.2pt)
  circle((5.6, 0), radius: (0.35, 1.0), stroke: 1.2pt)

  // Frecce momento torcente Mt
  arc((0, 0), start: 135deg, stop: 225deg, radius: (0.22, 0.7), anchor: "origin", stroke: (dash: "dashed", thickness: 0.8pt), mark: (start: ">"))
  arc((5.6, 0), start: 135deg, stop: 225deg, radius: (0.22, 0.7), anchor: "origin", stroke: 0.8pt, mark: (end: ">"))

  // Etichette Mt
  content((-0.45, 0.15), text(size: 7pt)[$M_t$], anchor: "east")
  content((5.45, 0.15), text(size: 7pt)[$M_t$], anchor: "west")

  // Numeri tronchi 1, 2 e indicazione S
  circle((2.4, 1.75), radius: 0.25, stroke: 0.6pt)
  content((2.4, 1.75), text(size: 7pt)[1])
  line((2.3, 1.51), (2.0, 0.7), mark: (end: ">"), stroke: 0.6pt)

  circle((4.9, 1.75), radius: 0.25, stroke: 0.6pt)
  content((4.9, 1.75), text(size: 7pt)[2])
  line((4.8, 1.51), (4.5, 0.7), mark: (end: ">"), stroke: 0.6pt)

  line((3.6, 1.3), (3.95, 1.3), stroke: 0.6pt)
  line((3.95, 1.3), (3.6, 0.65), mark: (end: ">"), stroke: 0.6pt)
  content((3.77, 1.35), text(size: 7pt)[$S$], anchor: "south")
})
