// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.8cm, {
  import draw: *

  // Facce del blocco
  line((-2.50, 1.25), (-0.40, 2.30), (1.85, 1.05), (-0.25, 0.00), close: true, fill: luma(248), stroke: 0.9pt)
  line((-2.50, 1.25), (-0.25, 0.00), (-0.25, -1.90), (-2.50, -0.65), close: true, fill: luma(242), stroke: 0.9pt)
  line((-0.25, 0.00), (1.85, 1.05), (1.85, -0.85), (-0.25, -1.90), close: true, fill: white, stroke: 0.9pt)

  // Cordone di saldatura superiore (copre il bordo posteriore)
  merge-path(close: true, fill: luma(236), stroke: 0.85pt, {
    bezier((-1.80, 1.60), (-1.10, 1.95), (-1.66, 1.91), (-1.24, 2.12))
    line((-1.10, 1.95), (1.15, 0.70))
    bezier((1.15, 0.70), (0.45, 0.35), (1.01, 0.87), (0.59, 0.66))
    line((0.45, 0.35), (-1.80, 1.60))
  })

  // Striature del cordone
  bezier((-1.613, 1.496), (-0.913, 1.846), (-1.473, 1.806), (-1.053, 2.016), stroke: 0.4pt + luma(140))
  bezier((-1.425, 1.392), (-0.725, 1.742), (-1.285, 1.702), (-0.865, 1.912), stroke: 0.4pt + luma(140))
  bezier((-1.238, 1.288), (-0.538, 1.638), (-1.098, 1.598), (-0.678, 1.808), stroke: 0.4pt + luma(140))
  bezier((-1.050, 1.183), (-0.350, 1.533), (-0.910, 1.493), (-0.490, 1.703), stroke: 0.4pt + luma(140))
  bezier((-0.863, 1.079), (-0.163, 1.429), (-0.723, 1.389), (-0.303, 1.599), stroke: 0.4pt + luma(140))
  bezier((-0.675, 0.975), (0.025, 1.325), (-0.535, 1.285), (-0.115, 1.495), stroke: 0.4pt + luma(140))
  bezier((-0.488, 0.871), (0.213, 1.221), (-0.348, 1.181), (0.073, 1.391), stroke: 0.4pt + luma(140))
  bezier((-0.300, 0.767), (0.400, 1.117), (-0.160, 1.077), (0.260, 1.287), stroke: 0.4pt + luma(140))
  bezier((-0.113, 0.663), (0.588, 1.013), (0.028, 0.973), (0.448, 1.183), stroke: 0.4pt + luma(140))
  bezier((0.075, 0.558), (0.775, 0.908), (0.215, 0.868), (0.635, 1.078), stroke: 0.4pt + luma(140))
  bezier((0.263, 0.454), (0.963, 0.804), (0.403, 0.764), (0.823, 0.974), stroke: 0.4pt + luma(140))

  // Sezione trasversale a X del cordone (con sovrametallo superiore e inferiore)
  merge-path(close: true, fill: luma(230), stroke: 0.85pt, {
    bezier((0.45, 0.35), (1.15, 0.70), (0.59, 0.66), (1.01, 0.87))
    line((1.15, 0.70), (0.86, -0.395), (1.15, -1.20))
    bezier((1.15, -1.20), (0.45, -1.55), (1.01, -1.40), (0.59, -1.61))
    line((0.45, -1.55), (0.74, -0.455), (0.45, 0.35))
  })

  // Tratteggio nella sezione del cordone
  line((0.65, -0.21), (0.87, -0.36), stroke: 0.45pt + luma(120))
  line((0.55, 0.06), (0.91, -0.19), stroke: 0.45pt + luma(120))
  line((0.46, 0.33), (0.96, -0.02), stroke: 0.45pt + luma(120))
  line((0.60, 0.43), (1.00, 0.15), stroke: 0.45pt + luma(120))
  line((0.77, 0.51), (1.05, 0.32), stroke: 0.45pt + luma(120))
  line((0.94, 0.59), (1.09, 0.48), stroke: 0.45pt + luma(120))
  line((0.70, -0.59), (1.01, -0.81), stroke: 0.45pt + luma(120))
  line((0.66, -0.76), (1.10, -1.07), stroke: 0.45pt + luma(120))
  line((0.61, -0.93), (1.06, -1.24), stroke: 0.45pt + luma(120))
  line((0.57, -1.10), (0.90, -1.33), stroke: 0.45pt + luma(120))
  line((0.52, -1.27), (0.73, -1.41), stroke: 0.45pt + luma(120))
  line((0.48, -1.44), (0.56, -1.49), stroke: 0.45pt + luma(120))

  // Tensioni di trazione nel cordone (frecce uscenti)
  line((-0.88, 1.63), (0.25, 1.00), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.85), stroke: 1.2pt)

  line((0.80, -0.08), (0.80, 0.44), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.36), stroke: 0.65pt)
  line((0.59, 0.075), (1.01, 0.285), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.36), stroke: 0.65pt)

  line((0.80, -1.28), (0.80, -0.76), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.36), stroke: 0.65pt)
  line((0.59, -1.125), (1.01, -0.915), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.36), stroke: 0.65pt)

  // Tensioni di compressione nel metallo base (frecce entranti)
  line((-1.70, 1.18), (-1.12, 0.86), mark: (end: "stealth", fill: black, scale: 0.7), stroke: 0.8pt)
  line((-0.44, 0.48), (-1.02, 0.80), mark: (end: "stealth", fill: black, scale: 0.7), stroke: 0.8pt)

  line((-0.30, 1.88), (0.28, 1.56), mark: (end: "stealth", fill: black, scale: 0.7), stroke: 0.8pt)
  line((0.96, 1.18), (0.38, 1.50), mark: (end: "stealth", fill: black, scale: 0.7), stroke: 0.8pt)

  // Frecce entranti nella sezione trasversale (0.12, -0.30)
  line((0.12, 0.00), (0.12, -0.26), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((0.12, -0.60), (0.12, -0.34), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((-0.14, -0.43), (0.08, -0.32), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((0.38, -0.17), (0.16, -0.28), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)

  // Frecce entranti nella sezione trasversale (0.12, -1.25)
  line((0.12, -0.95), (0.12, -1.21), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((0.12, -1.55), (0.12, -1.29), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((-0.14, -1.38), (0.08, -1.27), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((0.38, -1.12), (0.16, -1.23), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)

  // Frecce entranti nella sezione trasversale (1.48, 0.40)
  line((1.48, 0.70), (1.48, 0.44), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.48, 0.10), (1.48, 0.36), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.22, 0.27), (1.44, 0.38), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.74, 0.53), (1.52, 0.42), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)

  // Frecce entranti nella sezione trasversale (1.48, -0.55)
  line((1.48, -0.25), (1.48, -0.51), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.48, -0.85), (1.48, -0.59), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.22, -0.68), (1.44, -0.57), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)
  line((1.74, -0.42), (1.52, -0.53), mark: (end: "stealth", fill: black, scale: 0.38), stroke: 0.55pt)

  // Etichette e richiami
  line((-1.40, 2.55), (-0.95, 1.80), mark: (end: "stealth", fill: red, scale: 0.75), stroke: 0.9pt + red)
  content((-1.40, 2.62), text(size: 8.5pt)[Tensioni residue di trazione nel cordone], anchor: "south")

  line((2.20, 1.50), (0.85, 1.30), mark: (end: "stealth", fill: red, scale: 0.75), stroke: 0.9pt + red)
  content((2.25, 1.50), text(size: 8.5pt)[Tensioni residue di compressione\ nel metallo base], anchor: "west")
})
