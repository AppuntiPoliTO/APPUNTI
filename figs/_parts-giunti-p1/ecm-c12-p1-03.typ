#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Asse principale del motore e del semigiunto
  line((0.05, 0.00), (8.30, 0.00), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Estremita albero a sinistra e dado/mozzo
  line((0.25, -0.20), (0.29, -0.24), (0.60, -0.24), (0.60, 0.24), (0.29, 0.24), (0.25, 0.20), close: true, fill: white, stroke: 0.9pt)
  line((0.29, -0.24), (0.29, 0.24), stroke: 0.6pt)
  line((0.25, -0.13), (0.60, -0.13), stroke: (dash: "dashed", thickness: 0.55pt))
  line((0.25, 0.13), (0.60, 0.13), stroke: (dash: "dashed", thickness: 0.55pt))

  rect((0.60, -0.36), (1.00, 0.36), fill: white, stroke: 0.9pt)
  line((0.60, -0.20), (1.00, -0.20), stroke: 0.65pt)
  line((0.60, 0.20), (1.00, 0.20), stroke: 0.65pt)

  rect((1.00, -0.52), (1.18, 0.52), fill: white, stroke: 0.9pt)
  rect((1.18, -0.66), (1.32, 0.66), fill: white, stroke: 0.9pt)
  line((1.00, -0.36), (1.32, -0.36), stroke: 0.6pt)
  line((1.00, 0.36), (1.32, 0.36), stroke: 0.6pt)

  // Semigiunto calettato (flangia principale)
  line((1.32, -1.14), (1.52, -1.50), (1.70, -1.50), (1.70, 1.50), (1.52, 1.50), (1.32, 1.14), close: true, fill: white, stroke: 0.9pt)
  line((1.52, -1.50), (1.52, 1.50), stroke: 0.7pt)
  line((1.61, -1.50), (1.61, 1.50), stroke: 0.7pt)

  line((1.70, -1.46), (2.10, -1.42), (2.15, -1.36), (2.15, 1.36), (2.10, 1.42), (1.70, 1.46), close: true, fill: white, stroke: 0.9pt)
  line((2.02, -1.36), (2.02, 1.36), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.96, -0.68), (2.15, -0.68), stroke: 0.65pt)
  line((1.96, 0.68), (2.15, 0.68), stroke: 0.65pt)

  // Tratto albero tra semigiunto e scudo motore
  rect((2.15, -0.24), (2.34, 0.24), fill: white, stroke: 0.9pt)

  // Scudo anteriore del motore
  line((2.34, -0.94), (2.44, -1.04), (2.98, -1.06), (2.98, 1.06), (2.44, 1.04), (2.34, 0.94), close: true, fill: white, stroke: 0.9pt)
  line((2.44, -1.04), (2.44, 1.04), stroke: 0.65pt)

  // Carcassa principale del motore
  line((2.98, -1.06), (3.26, -1.44), (6.18, -1.44), (6.44, -1.06), (6.44, 1.06), (6.18, 1.44), (3.26, 1.44), (2.98, 1.06), close: true, fill: white, stroke: 0.9pt)
  line((3.26, -1.44), (3.26, 1.44), stroke: 0.65pt)
  line((6.18, -1.44), (6.18, 1.44), stroke: 0.65pt)

  // Piedini di fissaggio e piastra di base
  line((3.40, -1.44), (3.40, -1.56), (4.05, -1.56), (3.94, -0.44), (3.40, -1.44), stroke: 0.8pt)
  line((6.04, -1.44), (6.04, -1.56), (5.39, -1.56), (5.50, -0.44), (6.04, -1.44), stroke: 0.8pt)

  rect((3.30, -1.72), (6.14, -1.56), fill: white, stroke: 0.85pt)
  rect((2.64, -2.20), (7.86, -1.72), fill: white, stroke: 0.9pt)

  line((3.62, -1.56), (3.62, -1.72), stroke: (dash: "dashed", thickness: 0.55pt))
  line((3.74, -1.56), (3.74, -1.72), stroke: (dash: "dashed", thickness: 0.55pt))
  line((3.68, -1.48), (3.68, -2.06), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  line((5.66, -1.56), (5.66, -1.72), stroke: (dash: "dashed", thickness: 0.55pt))
  line((5.78, -1.56), (5.78, -1.72), stroke: (dash: "dashed", thickness: 0.55pt))
  line((5.72, -1.48), (5.72, -2.06), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Scatola morsettiera frontale
  rect((3.84, -0.44), (5.58, 0.64), fill: white, stroke: 0.85pt)

  // Copriventola posteriore
  line((6.44, -1.40), (7.44, -1.40), (8.04, -1.12), (8.04, 1.12), (7.44, 1.40), (6.44, 1.40), close: true, fill: white, stroke: 0.9pt)
  line((7.44, -1.40), (7.44, 1.40), stroke: 0.7pt)
  rect((8.04, -0.14), (8.16, 0.14), fill: white, stroke: 0.8pt)
})
