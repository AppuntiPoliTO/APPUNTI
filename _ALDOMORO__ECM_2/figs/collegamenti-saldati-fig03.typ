// Figura estratta da collegamenti saldati.typ (riga 200) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((1.00, 0.62), (3.95, 0.62), (3.71, 0.80), (3.46, 0.95), (3.15, 1.08), (2.60, 1.15), (0.85, 1.15), close: true, fill: gray.transparentize(86%), stroke: none)
  line((0.85, 1.15), (2.60, 1.15), (3.15, 1.08), (3.65, 0.96), (2.95, 1.22), (2.25, 1.30), (0.88, 1.32), close: true, fill: gray.transparentize(68%), stroke: none)
  line((3.95, 0.62), (4.45, 0.55), (5.20, 0.56), (5.65, 0.62), (5.58, 0.74), (5.75, 0.85), (5.00, 0.89), (3.55, 0.94), (3.75, 0.78), close: true, fill: gray.transparentize(90%), stroke: none)
  line((3.45, 1.01), (4.15, 0.98), (4.85, 0.96), (5.55, 0.88), (5.35, 0.85), (4.60, 0.90), (3.55, 0.94), close: true, fill: gray.transparentize(64%), stroke: none)

  line((4.565, 2.33), (5.615, 4.15), (6.585, 3.59), (5.535, 1.77), close: true, fill: gray.transparentize(82%), stroke: none)
  line((4.738, 2.23), (5.788, 4.05), (6.412, 3.69), (5.362, 1.87), close: true, fill: white, stroke: none)

  bezier((0.68, 0.62), (1.00, 0.62), (0.78, 0.65), (0.90, 0.59), stroke: 0.75pt)
  line((1.00, 0.62), (3.95, 0.62), stroke: 0.9pt)
  line((1.00, 0.62), (0.85, 1.15), stroke: 0.9pt)
  line((0.85, 1.15), (2.60, 1.15), stroke: 0.85pt)
  bezier((2.60, 1.15), (3.95, 0.62), (3.15, 1.15), (3.55, 0.95), stroke: 0.9pt)

  line((1.15, 0.62), (1.00, 1.15), stroke: 0.5pt)
  line((1.35, 0.62), (1.20, 1.15), stroke: 0.5pt)
  line((1.55, 0.62), (1.40, 1.15), stroke: 0.5pt)
  line((1.75, 0.62), (1.60, 1.15), stroke: 0.5pt)
  line((1.95, 0.62), (1.80, 1.15), stroke: 0.5pt)
  line((2.15, 0.62), (2.00, 1.15), stroke: 0.5pt)
  line((2.35, 0.62), (2.20, 1.15), stroke: 0.5pt)
  line((2.55, 0.62), (2.40, 1.15), stroke: 0.5pt)
  line((2.75, 0.62), (2.60, 1.15), stroke: 0.5pt)
  line((2.95, 0.62), (2.81, 1.13), stroke: 0.5pt)
  line((3.15, 0.62), (3.02, 1.09), stroke: 0.5pt)
  line((3.35, 0.62), (3.24, 1.03), stroke: 0.5pt)
  line((3.55, 0.62), (3.46, 0.95), stroke: 0.5pt)
  line((3.75, 0.62), (3.70, 0.81), stroke: 0.5pt)

  line((0.85, 1.15), (0.88, 1.32), stroke: 0.8pt)
  bezier((0.88, 1.32), (2.25, 1.30), (1.35, 1.35), (1.85, 1.29), stroke: 0.8pt)
  bezier((2.25, 1.30), (3.55, 0.98), (2.75, 1.29), (3.20, 1.13), stroke: 0.8pt)

  circle((1.02, 1.23), radius: 0.015, fill: black, stroke: none)
  circle((1.18, 1.26), radius: 0.015, fill: black, stroke: none)
  circle((1.33, 1.20), radius: 0.013, fill: black, stroke: none)
  circle((1.48, 1.25), radius: 0.015, fill: black, stroke: none)
  circle((1.65, 1.21), radius: 0.014, fill: black, stroke: none)
  circle((1.80, 1.26), radius: 0.015, fill: black, stroke: none)
  circle((1.98, 1.21), radius: 0.013, fill: black, stroke: none)
  circle((2.15, 1.25), radius: 0.015, fill: black, stroke: none)
  circle((2.32, 1.20), radius: 0.014, fill: black, stroke: none)
  circle((2.50, 1.23), radius: 0.015, fill: black, stroke: none)
  circle((2.70, 1.19), radius: 0.014, fill: black, stroke: none)
  circle((2.90, 1.15), radius: 0.013, fill: black, stroke: none)
  circle((3.10, 1.10), radius: 0.013, fill: black, stroke: none)

  bezier((3.95, 0.62), (5.65, 0.62), (4.45, 0.51), (5.20, 0.54), stroke: 0.9pt)
  line((5.65, 0.62), (8.40, 0.62), stroke: 0.9pt)
  line((5.75, 0.85), (8.40, 0.85), stroke: 0.9pt)
  bezier((5.65, 0.62), (5.75, 0.85), (5.52, 0.71), (5.58, 0.82), stroke: 0.75pt)

  bezier((3.52, 0.95), (4.15, 0.92), (3.72, 0.91), (3.95, 0.95), stroke: 0.75pt)
  bezier((4.22, 0.92), (4.88, 0.91), (4.45, 0.88), (4.68, 0.94), stroke: 0.75pt)
  bezier((4.95, 0.90), (5.62, 0.86), (5.18, 0.87), (5.42, 0.90), stroke: 0.75pt)

  bezier((3.42, 1.03), (3.95, 0.98), (3.60, 1.04), (3.78, 0.97), stroke: 0.75pt)
  bezier((4.05, 0.99), (4.65, 0.98), (4.25, 1.02), (4.45, 0.96), stroke: 0.75pt)
  bezier((4.72, 0.97), (5.32, 0.94), (4.95, 1.00), (5.15, 0.95), stroke: 0.75pt)
  bezier((5.28, 0.93), (5.75, 0.85), (5.45, 0.96), (5.62, 0.88), stroke: 0.75pt)
  bezier((5.30, 0.87), (5.55, 0.89), (5.38, 0.91), (5.48, 0.91), stroke: 0.6pt)

  line((4.18, 0.65), (4.21, 0.73), stroke: 0.5pt)
  line((4.32, 0.62), (4.35, 0.71), stroke: 0.5pt)
  line((4.48, 0.66), (4.50, 0.75), stroke: 0.5pt)
  line((4.62, 0.60), (4.65, 0.69), stroke: 0.5pt)
  line((4.78, 0.64), (4.80, 0.74), stroke: 0.5pt)
  line((4.94, 0.61), (4.96, 0.70), stroke: 0.5pt)
  line((5.10, 0.66), (5.12, 0.76), stroke: 0.5pt)
  line((5.25, 0.63), (5.28, 0.72), stroke: 0.5pt)
  line((5.40, 0.68), (5.42, 0.77), stroke: 0.5pt)

  line((4.565, 2.33), (5.615, 4.15), stroke: 1pt)
  line((5.535, 1.77), (6.585, 3.59), stroke: 1pt)
  line((4.738, 2.23), (5.788, 4.05), stroke: 0.9pt)
  line((5.362, 1.87), (6.412, 3.69), stroke: 0.9pt)

  line((4.95, 2.35), (5.85, 3.91), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.15, 2.15), (6.05, 3.71), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.28, 2.00), (6.22, 3.63), stroke: 0.5pt)

  bezier((5.788, 4.050), (6.180, 4.009), (5.832, 4.127), (6.008, 4.108), stroke: 0.9pt)
  bezier((6.180, 4.009), (6.412, 3.690), (6.352, 3.910), (6.456, 3.767), stroke: 0.9pt)
  bezier((6.412, 3.690), (6.020, 3.731), (6.368, 3.613), (6.192, 3.632), stroke: 0.9pt)
  bezier((6.020, 3.731), (5.788, 4.050), (5.848, 3.830), (5.744, 3.973), stroke: 0.9pt)

  line((5.85, 3.96), (6.32, 3.70), stroke: 0.5pt)
  line((5.92, 4.02), (6.38, 3.76), stroke: 0.5pt)
  line((6.02, 4.05), (6.40, 3.84), stroke: 0.5pt)
  line((5.82, 3.88), (6.24, 3.65), stroke: 0.5pt)

  bezier((5.615, 4.150), (6.225, 4.087), (5.684, 4.270), (5.957, 4.242), stroke: 1pt)
  bezier((6.225, 4.087), (6.585, 3.590), (6.493, 3.932), (6.654, 3.710), stroke: 1pt)
  bezier((5.615, 4.150), (5.788, 4.050), (5.65, 4.06), (5.72, 4.02), stroke: 0.9pt)
  bezier((6.585, 3.590), (6.412, 3.690), (6.54, 3.60), (6.47, 3.64), stroke: 0.9pt)

  bezier((4.565, 2.33), (5.535, 1.77), (4.80, 2.15), (5.30, 1.98), stroke: 0.9pt)
  bezier((4.738, 2.23), (5.362, 1.87), (4.92, 2.02), (5.16, 1.96), stroke: 0.8pt)

  circle((4.65, 1.72), radius: (0.045, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.95, 1.82), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.20, 1.72), radius: (0.040, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.48, 1.42), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.78, 1.50), radius: (0.050, 0.090), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.06, 1.44), radius: (0.045, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.62, 1.18), radius: (0.045, 0.075), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.90, 1.20), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.14, 1.18), radius: (0.040, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)

  circle((5.36, 1.56), radius: (0.032, 0.145), fill: gray.transparentize(35%), stroke: 0.65pt)
  circle((5.50, 1.46), radius: (0.030, 0.135), fill: gray.transparentize(35%), stroke: 0.65pt)
  circle((5.42, 1.22), radius: (0.034, 0.130), fill: gray.transparentize(35%), stroke: 0.65pt)

  bezier((2.20, 1.32), (3.90, 2.15), (2.70, 1.55), (3.40, 1.75), stroke: (dash: "dashed", thickness: 0.75pt))
  bezier((3.90, 2.15), (4.85, 3.25), (4.20, 2.65), (4.50, 3.05), stroke: (dash: "dashed", thickness: 0.75pt))
  bezier((5.85, 2.30), (6.65, 0.85), (6.20, 1.85), (6.50, 1.35), stroke: (dash: "dashed", thickness: 0.75pt))

  line((2.30, 3.45), (3.45, 3.45), (4.95, 3.00), stroke: 0.55pt)
  content((2.88, 3.60), text(size: 7.5pt)[rivestimento], anchor: "center")

  line((7.80, 3.50), (6.80, 3.50), (5.70, 3.25), stroke: 0.55pt)
  content((7.30, 3.65), text(size: 7.5pt)[anima], anchor: "center")

  line((1.50, 2.55), (3.30, 2.55), (3.95, 2.15), stroke: 0.55pt)
  content((2.40, 2.70), text(size: 7.5pt)[protezione gassosa], anchor: "center")

  line((1.50, 2.00), (3.30, 2.00), stroke: 0.55pt)
  line((2.50, 2.00), (2.15, 0.90), stroke: 0.55pt)
  content((2.40, 2.15), text(size: 7.5pt)[deposito solidificato], anchor: "center")

  line((0.35, 1.62), (1.95, 1.62), stroke: 0.55pt)
  line((1.60, 1.62), (1.45, 1.24), stroke: 0.55pt)
  content((1.15, 1.77), text(size: 7.5pt)[scoria solidificata], anchor: "center")

  line((8.55, 2.00), (6.30, 2.00), (5.06, 1.44), stroke: 0.55pt)
  content((7.42, 2.15), text(size: 7.5pt)[materiale in trasferimento], anchor: "center")

  line((8.20, 1.55), (6.70, 1.55), (5.50, 1.46), stroke: 0.55pt)
  line((6.70, 1.55), (4.85, 0.95), stroke: 0.55pt)
  line((6.70, 1.55), (5.42, 0.90), stroke: 0.55pt)
  content((7.45, 1.70), text(size: 7.5pt)[scoria liquida], anchor: "center")

  line((8.30, 1.10), (6.60, 1.10), (5.05, 0.72), stroke: 0.55pt)
  content((7.45, 1.25), text(size: 7.5pt)[bagno di fusione], anchor: "center")

  line((6.35, 0.18), (7.80, 0.18), stroke: 0.55pt)
  line((7.80, 1.15), (7.80, 0.85), mark: (end: ">"), stroke: 0.6pt)
  line((7.80, 0.18), (7.80, 0.62), mark: (end: ">"), stroke: 0.6pt)
  content((7.05, 0.33), text(size: 7.5pt)[penetrazione], anchor: "center")
})
