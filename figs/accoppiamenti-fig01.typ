// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.0, 2.60), (3.0, 2.60), (3.0, 0.80), (2.75, 0.80), (0.30, 1.25), (0.0, 1.25), close: true, fill: white, stroke: 1pt)
  line((0.0, -2.60), (3.0, -2.60), (3.0, -0.80), (2.75, -0.80), (0.30, -1.25), (0.0, -1.25), close: true, fill: white, stroke: 1pt)

  line((2.80, 0.80), (3.00, 1.00), stroke: 0.5pt)
  line((2.581, 0.831), (3.00, 1.25), stroke: 0.5pt)
  line((2.370, 0.870), (3.00, 1.50), stroke: 0.5pt)
  line((2.159, 0.909), (3.00, 1.75), stroke: 0.5pt)
  line((1.947, 0.947), (3.00, 2.00), stroke: 0.5pt)
  line((1.736, 0.986), (3.00, 2.25), stroke: 0.5pt)
  line((1.525, 1.025), (3.00, 2.50), stroke: 0.5pt)
  line((1.314, 1.064), (2.85, 2.60), stroke: 0.5pt)
  line((1.103, 1.103), (2.60, 2.60), stroke: 0.5pt)
  line((0.891, 1.141), (2.35, 2.60), stroke: 0.5pt)
  line((0.680, 1.180), (2.10, 2.60), stroke: 0.5pt)
  line((0.469, 1.219), (1.85, 2.60), stroke: 0.5pt)
  line((0.250, 1.250), (1.60, 2.60), stroke: 0.5pt)
  line((0.000, 1.250), (1.35, 2.60), stroke: 0.5pt)
  line((0.000, 1.500), (1.10, 2.60), stroke: 0.5pt)
  line((0.000, 1.750), (0.85, 2.60), stroke: 0.5pt)
  line((0.000, 2.000), (0.60, 2.60), stroke: 0.5pt)
  line((0.000, 2.250), (0.35, 2.60), stroke: 0.5pt)
  line((0.000, 2.500), (0.10, 2.60), stroke: 0.5pt)

  line((2.90, -2.60), (3.00, -2.50), stroke: 0.5pt)
  line((2.65, -2.60), (3.00, -2.25), stroke: 0.5pt)
  line((2.40, -2.60), (3.00, -2.00), stroke: 0.5pt)
  line((2.15, -2.60), (3.00, -1.75), stroke: 0.5pt)
  line((1.90, -2.60), (3.00, -1.50), stroke: 0.5pt)
  line((1.65, -2.60), (3.00, -1.25), stroke: 0.5pt)
  line((1.40, -2.60), (3.00, -1.00), stroke: 0.5pt)
  line((1.15, -2.60), (2.95, -0.80), stroke: 0.5pt)
  line((0.90, -2.60), (2.689, -0.811), stroke: 0.5pt)
  line((0.65, -2.60), (2.383, -0.868), stroke: 0.5pt)
  line((0.40, -2.60), (2.076, -0.924), stroke: 0.5pt)
  line((0.15, -2.60), (1.770, -0.980), stroke: 0.5pt)
  line((0.00, -2.50), (1.464, -1.036), stroke: 0.5pt)
  line((0.00, -2.25), (1.158, -1.093), stroke: 0.5pt)
  line((0.00, -2.00), (0.851, -1.149), stroke: 0.5pt)
  line((0.00, -1.75), (0.545, -1.205), stroke: 0.5pt)
  line((0.00, -1.50), (0.250, -1.250), stroke: 0.5pt)

  rect((3.00, -1.60), (3.40, 1.60), stroke: 1pt)
  line((2.75, -0.80), (2.75, 0.80), stroke: 0.8pt)
  line((0.30, -1.25), (0.30, 1.25), stroke: 0.7pt)

  line((-1.40, 0.0), (3.65, 0.0), stroke: (dash: "dash-dotted", thickness: 0.7pt))

  line((0.30, 1.25), (-1.40, 1.562), stroke: 0.6pt)
  line((0.30, 1.25), (-1.10, 1.25), stroke: 0.6pt)
  line((0.30, -1.25), (-1.10, -1.25), stroke: 0.6pt)
  line((2.75, 0.80), (-1.20, 0.80), stroke: 0.55pt)

  line((0.30, -1.25), (0.30, -3.70), stroke: 0.55pt)
  line((2.75, -0.80), (2.75, -3.70), stroke: 0.55pt)
  line((0.30, -3.40), (2.75, -3.40), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.55pt)

  line((2.75, 0.80), (4.25, 0.80), stroke: 0.55pt)
  line((2.75, -0.80), (4.25, -0.80), stroke: 0.55pt)
  line((4.00, -0.80), (4.00, 0.80), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.55pt)

  line((0.30, 1.25), (5.15, 1.25), stroke: 0.55pt)
  line((0.30, -1.25), (5.15, -1.25), stroke: 0.55pt)
  line((4.90, -1.25), (4.90, 1.25), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.55pt)

  content((-1.25, 1.38), text(size: 8.5pt)[$alpha$], anchor: "center")
  content((1.525, -3.28), text(size: 8.5pt)[$L$], anchor: "south")
  content((4.15, 0.0), text(size: 8.5pt)[$d_1$], anchor: "west")
  content((5.05, 0.0), text(size: 8.5pt)[$d_2$], anchor: "west")
})
