// Figura estratta da fatica.typ (riga 4196) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let circ = sym.degree
#let circ = sym.degree

#canvas(length: 1.15cm, {
  // BBox: x in [-0.6, 6.2] (dx=6.8), y in [-1.05, 5.35], length=1.15cm -> larghezza = 7.82 cm <= 8.2 cm
  import draw: line, circle, bezier, content

  // Legenda orizzontale in alto
  line((0.1, 5.20), (0.5, 5.20), stroke: (paint: blue, thickness: 1.1pt))
  content((0.58, 5.20), anchor: "west", text(size: 7pt)[$sigma(t)$])
  line((1.50, 5.20), (1.90, 5.20), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  content((1.98, 5.20), anchor: "west", text(size: 7pt)[$tau(t)$ ($0^circ$ / sfas.)])
  line((3.80, 5.20), (4.20, 5.20), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
  content((4.28, 5.20), anchor: "west", text(size: 7pt)[$tau(t)$ ($180^circ$)])

  // Sottografico superiore: Carichi semplici (y0 = 3.35)
  content((0.18, 4.78), anchor: "west", text(size: 7.5pt, weight: "bold")[Carichi semplici (in fase / controfase)])
  line((0, 2.35), (0, 4.55), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
  line((0, 3.35), (5.80, 3.35), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
  content((-0.10, 4.45), anchor: "east", text(size: 7.5pt)[$sigma, tau$])
  content((5.85, 3.35), anchor: "west", text(size: 7.5pt)[$t$])

  // sigma(t) superiore (A = 0.80, W = 1.80, 1.333*A = 1.066)
  bezier((0.0, 3.35), (1.8, 3.35), (0.594, 4.416), (1.206, 4.416), stroke: (paint: blue, thickness: 1.1pt))
  bezier((1.8, 3.35), (3.6, 3.35), (2.394, 2.284), (3.006, 2.284), stroke: (paint: blue, thickness: 1.1pt))
  bezier((3.6, 3.35), (5.4, 3.35), (4.194, 4.416), (4.806, 4.416), stroke: (paint: blue, thickness: 1.1pt))

  // tau(t) in fase 0° (A = 0.50, W = 1.80, 1.333*A = 0.667)
  bezier((0.0, 3.35), (1.8, 3.35), (0.594, 4.017), (1.206, 4.017), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  bezier((1.8, 3.35), (3.6, 3.35), (2.394, 2.683), (3.006, 2.683), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  bezier((3.6, 3.35), (5.4, 3.35), (4.194, 4.017), (4.806, 4.017), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))

  // tau(t) controfase 180° (A = 0.42, W = 1.80, 1.333*A = 0.560)
  bezier((0.0, 3.35), (1.8, 3.35), (0.594, 2.790), (1.206, 2.790), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
  bezier((1.8, 3.35), (3.6, 3.35), (2.394, 3.910), (3.006, 3.910), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
  bezier((3.6, 3.35), (5.4, 3.35), (4.194, 2.790), (4.806, 2.790), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))

  // Allineamento picchi/valli simultanei a x = 0.9
  line((0.9, 2.82), (0.9, 4.30), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
  circle((0.9, 4.15), radius: 0.045, fill: blue, stroke: none)
  circle((0.9, 3.85), radius: 0.045, fill: red.transparentize(10%), stroke: none)
  circle((0.9, 2.93), radius: 0.045, fill: orange, stroke: none)

  // Sottografico inferiore: Carichi complessi (y0 = 0.0)
  content((0.18, 1.62), anchor: "west", text(size: 7.5pt, weight: "bold")[Carichi complessi (sfasati)])
  line((0, -1.00), (0, 1.25), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
  line((0, 0.0), (5.80, 0.0), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
  content((-0.10, 1.15), anchor: "east", text(size: 7.5pt)[$sigma, tau$])
  content((5.85, 0.0), anchor: "west", text(size: 7.5pt)[$t$])

  // sigma(t) inferiore (A = 0.80, W = 1.80)
  bezier((0.0, 0.0), (1.8, 0.0), (0.594, 1.066), (1.206, 1.066), stroke: (paint: blue, thickness: 1.1pt))
  bezier((1.8, 0.0), (3.6, 0.0), (2.394, -1.066), (3.006, -1.066), stroke: (paint: blue, thickness: 1.1pt))
  bezier((3.6, 0.0), (5.4, 0.0), (4.194, 1.066), (4.806, 1.066), stroke: (paint: blue, thickness: 1.1pt))

  // tau(t) sfasata di Δφ = 72° (dx = 0.72, A = 0.50, W = 1.80)
  bezier((0.0, -0.480), (0.72, 0.0), (0.242, -0.427), (0.482, -0.267), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  bezier((0.72, 0.0), (2.52, 0.0), (1.314, 0.667), (1.926, 0.667), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  bezier((2.52, 0.0), (4.32, 0.0), (3.114, -0.667), (3.726, -0.667), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
  bezier((4.32, 0.0), (5.40, 0.480), (4.676, 0.400), (5.039, 0.560), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))

  // Linee di proiezione e quota Δφ tra i picchi (x = 0.9 e x = 1.62)
  line((0.9, 0.0), (0.9, 1.12), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
  line((1.62, 0.0), (1.62, 1.12), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
  circle((0.9, 0.80), radius: 0.045, fill: blue, stroke: none)
  circle((1.62, 0.50), radius: 0.045, fill: red.transparentize(10%), stroke: none)
  line((0.9, 0.98), (1.62, 0.98), mark: (start: ">", end: ">", scale: 0.5), stroke: 0.65pt)
  content((1.26, 1.07), anchor: "south", text(size: 7.5pt)[$Delta phi$])
})
