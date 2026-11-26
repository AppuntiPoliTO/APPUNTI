// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.65cm, {
  import draw: *

  // Pannello 1 (in alto al centro): Giunti assiali
  content((2.32, 2.02), text(size: 9.5pt)[_Giunti assiali_], anchor: "south")
  line((1.55, 1.96), (3.09, 1.96), stroke: 0.6pt)

  line((1.05, 1.56), (3.58, 1.56), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.25, 1.34), (1.88, 1.34), (1.92, 1.38), (1.92, 1.74), (1.88, 1.78), (1.25, 1.78), close: true, fill: white, stroke: 0.9pt)
  line((1.88, 1.34), (1.88, 1.78), stroke: 0.65pt)

  line((2.64, 1.34), (2.28, 1.34), (2.24, 1.38), (2.24, 1.74), (2.28, 1.78), (2.64, 1.78), stroke: (dash: "dashed", thickness: 0.65pt, paint: gray.darken(25%)))
  line((2.28, 1.34), (2.28, 1.78), stroke: (dash: "dashed", thickness: 0.5pt, paint: gray.darken(25%)))
  line((2.68, 1.34), (2.64, 1.38), (2.64, 1.74), (2.68, 1.78), (3.35, 1.78), (3.35, 1.34), close: true, fill: white, stroke: 0.9pt)
  line((2.68, 1.34), (2.68, 1.78), stroke: 0.65pt)
  line((2.98, 1.34), (2.98, 1.78), stroke: 0.65pt)

  // Pannello 2 (in basso a sinistra): Giunti trasversali
  content((1.02, 0.88), text(size: 9.5pt)[_Giunti trasversali_], anchor: "south")
  line((0.12, 0.82), (1.92, 0.82), stroke: 0.6pt)

  line((0.00, 0.00), (1.02, 0.00), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.14, -0.22), (0.77, -0.22), (0.81, -0.18), (0.81, 0.18), (0.77, 0.22), (0.14, 0.22), close: true, fill: white, stroke: 0.9pt)
  line((0.77, -0.22), (0.77, 0.22), stroke: 0.65pt)

  line((1.02, 0.34), (2.02, 0.34), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.22, 0.12), (1.18, 0.16), (1.18, 0.52), (1.22, 0.56), (1.85, 0.56), (1.85, 0.12), close: true, fill: white, stroke: 0.9pt)
  line((1.22, 0.12), (1.22, 0.56), stroke: 0.65pt)

  line((1.02, -0.34), (2.02, -0.34), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.22, -0.56), (1.18, -0.52), (1.18, -0.16), (1.22, -0.12), (1.85, -0.12), (1.85, -0.56), close: true, fill: white, stroke: 0.9pt)
  line((1.22, -0.56), (1.22, -0.12), stroke: 0.65pt)

  // Pannello 3 (in basso a destra): Giunti angolari
  content((3.62, 0.88), text(size: 9.5pt)[_Giunti angolari_], anchor: "south")
  line((2.78, 0.82), (4.46, 0.82), stroke: 0.6pt)

  line((2.46, 0.00), (3.48, 0.00), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((2.60, -0.22), (3.23, -0.22), (3.27, -0.18), (3.27, 0.18), (3.23, 0.22), (2.60, 0.22), close: true, fill: white, stroke: 0.9pt)
  line((3.23, -0.22), (3.23, 0.22), stroke: 0.65pt)

  line((3.60, 0.28), (4.56, 0.62), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: gray.darken(25%)))
  line((3.88, 0.14), (3.83, 0.16), (3.71, 0.50), (3.73, 0.55), (4.33, 0.77), (4.48, 0.35), close: true, fill: white, stroke: (dash: "dashed", thickness: 0.65pt, paint: gray.darken(25%)))
  line((3.88, 0.14), (3.73, 0.55), stroke: (dash: "dashed", thickness: 0.5pt, paint: gray.darken(25%)))

  line((3.60, -0.28), (4.56, -0.62), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((3.88, -0.14), (3.83, -0.16), (3.71, -0.50), (3.73, -0.55), (4.33, -0.77), (4.48, -0.35), close: true, fill: white, stroke: 0.9pt)
  line((3.88, -0.14), (3.73, -0.55), stroke: 0.65pt)
})
