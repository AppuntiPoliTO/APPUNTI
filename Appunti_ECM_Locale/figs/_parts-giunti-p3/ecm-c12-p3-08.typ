#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-3.80, 0.60), (-2.35, 0.60), (-2.35, 1.65), (-2.68, 1.65), (-2.68, 1.15), (-2.71, 1.08), (-2.78, 1.05), (-3.80, 1.05), close: true, fill: rgb("#f04090").transparentize(35%), stroke: none)
  line((-2.23, 0.78), (-1.55, 0.78), (-1.55, 0.60), (-0.10, 0.60), (-0.10, 1.05), (-1.00, 1.05), (-1.07, 1.08), (-1.10, 1.15), (-1.10, 1.65), (-2.23, 1.65), close: true, fill: orange.transparentize(35%), stroke: none)
  rect((-2.23, 0.60), (-1.55, 0.78), fill: rgb("#c0b020").transparentize(35%), stroke: none)

  line((-3.80, 0.90), (-3.65, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-3.80, 0.65), (-3.40, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-3.60, 0.60), (-3.15, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-3.35, 0.60), (-2.90, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-3.10, 0.60), (-2.68, 1.02), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.85, 0.60), (-2.35, 1.10), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.60, 0.60), (-2.35, 0.85), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.68, 1.27), (-2.35, 1.60), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.68, 1.52), (-2.55, 1.65), stroke: (paint: luma(40), thickness: 0.45pt))

  line((-2.23, 1.40), (-1.98, 1.65), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.23, 1.15), (-1.73, 1.65), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.23, 0.90), (-1.48, 1.65), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-2.10, 0.78), (-1.23, 1.65), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.85, 0.78), (-1.10, 1.53), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.60, 0.78), (-1.10, 1.28), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.55, 0.60), (-1.03, 1.08), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.30, 0.60), (-0.85, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.05, 0.60), (-0.60, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-0.80, 0.60), (-0.35, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-0.55, 0.60), (-0.10, 1.05), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-0.30, 0.60), (-0.10, 0.80), stroke: (paint: luma(40), thickness: 0.45pt))

  line((-2.20, 0.60), (-2.02, 0.78), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.98, 0.60), (-1.80, 0.78), stroke: (paint: luma(40), thickness: 0.45pt))
  line((-1.76, 0.60), (-1.58, 0.78), stroke: (paint: luma(40), thickness: 0.45pt))

  line((-3.80, 0.60), (-2.35, 0.60), (-2.35, 1.65), (-2.68, 1.65), (-2.68, 1.15), stroke: 1pt)
  arc((-2.78, 1.15), start: 270deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((-2.78, 1.05), (-3.80, 1.05), (-3.80, 0.60), stroke: 1pt)

  line((-2.23, 0.78), (-1.55, 0.78), (-1.55, 0.60), (-0.10, 0.60), (-0.10, 1.05), (-1.00, 1.05), stroke: 1pt)
  arc((-1.00, 1.15), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((-1.10, 1.15), (-1.10, 1.65), (-2.23, 1.65), (-2.23, 0.78), stroke: 1pt)

  line((-2.23, 0.60), (-1.55, 0.60), stroke: 0.8pt)
  line((-2.35, 0.60), (-2.23, 0.60), stroke: 0.6pt)

  line((-3.80, 0.60), (-3.80, -1.05), (-2.78, -1.05), stroke: 1pt)
  arc((-2.78, -1.15), start: 0deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((-2.68, -1.15), (-2.68, -1.65), (-1.45, -1.65), (-1.45, -1.48), (-2.35, -1.48), stroke: 1pt)
  line((-2.35, -1.65), (-2.35, -0.35), stroke: 0.75pt)
  line((-2.23, -1.48), (-2.23, -0.35), stroke: 0.75pt)
  line((-2.23, -1.38), (-1.45, -1.38), stroke: 0.75pt)
  line((-1.55, -1.38), (-1.55, -0.35), stroke: 0.75pt)
  line((-1.35, -1.65), (-1.10, -1.65), (-1.10, -1.15), stroke: 1pt)
  arc((-1.00, -1.15), start: 90deg, stop: 180deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((-1.00, -1.05), (-0.10, -1.05), (-0.10, 0.60), stroke: 1pt)
  line((-1.35, -1.65), (-1.35, -0.35), stroke: 0.8pt)
  line((-1.45, -1.48), (-1.45, -1.38), stroke: 0.75pt)

  line((-2.23, -0.35), (-1.55, -0.35), stroke: 0.8pt)
  line((-1.55, -0.52), (-1.35, -0.52), stroke: 0.8pt)

  line((-3.80, -0.15), (-2.35, -0.15), stroke: 0.7pt)
  circle((-3.35, -0.15), radius: 0.08, stroke: 0.7pt)
  line((-3.35, -0.30), (-3.35, 0.00), stroke: (dash: "dash-dotted", paint: luma(60), thickness: 0.5pt))

  line((-1.35, -0.15), (-0.10, -0.15), stroke: 0.7pt)
  circle((-0.55, -0.15), radius: 0.08, stroke: 0.7pt)
  line((-0.55, -0.30), (-0.55, 0.00), stroke: (dash: "dash-dotted", paint: luma(60), thickness: 0.5pt))

  line((-2.05, 1.75), (-2.05, 2.15), stroke: 0.8pt)
  line((-2.05, 1.95), (-2.40, 1.95), stroke: 0.8pt)
  line((-2.05, 1.95), (-2.28, 2.02), (-2.28, 1.88), close: true, fill: black, stroke: none)
  content((-2.50, 1.95), text(size: 8.5pt)[$A$], anchor: "east")

  line((-2.05, -1.75), (-2.05, -2.15), stroke: 0.8pt)
  line((-2.05, -1.95), (-2.40, -1.95), stroke: 0.8pt)
  line((-2.05, -1.95), (-2.28, -2.02), (-2.28, -1.88), close: true, fill: black, stroke: none)
  content((-2.50, -1.95), text(size: 8.5pt)[$A$], anchor: "east")

  content((2.15, 1.95), text(size: 8.5pt)[Sez. $A div A$], anchor: "south")

  circle((2.80, 0), radius: 1.65, stroke: 1pt)
  circle((2.80, 0), radius: 0.72, stroke: 0.75pt)
  arc((2.80, 0), start: 10deg, stop: 170deg, radius: 0.60, anchor: "origin", stroke: 0.9pt)
  arc((2.80, 0), start: 190deg, stop: 350deg, radius: 0.60, anchor: "origin", stroke: 0.9pt)
  arc((2.80, 0), start: -10deg, stop: 10deg, radius: 0.60, anchor: "origin", stroke: 0.9pt)
  line((2.21, 0.10), (2.10, 0.10), (2.10, -0.10), (2.21, -0.10), stroke: 0.9pt)
  circle((2.80, 0), radius: 0.88, stroke: 0.7pt)

  arc((3.96, 0), start: -125deg, stop: 125deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((3.78, 0.26), (3.64, 0.26), stroke: 0.85pt)
  line((3.78, -0.26), (3.64, -0.26), stroke: 0.85pt)

  arc((3.38, 1.005), start: -65deg, stop: 185deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((3.52, 0.72), (3.44, 0.60), stroke: 0.85pt)
  line((3.06, 0.98), (3.00, 0.86), stroke: 0.85pt)

  arc((2.22, 1.005), start: -5deg, stop: 245deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((2.54, 0.98), (2.60, 0.86), stroke: 0.85pt)
  line((2.08, 0.72), (2.16, 0.60), stroke: 0.85pt)

  arc((1.64, 0), start: 55deg, stop: 305deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((1.82, 0.26), (1.96, 0.26), stroke: 0.85pt)
  line((1.82, -0.26), (1.96, -0.26), stroke: 0.85pt)

  arc((2.22, -1.005), start: 115deg, stop: 365deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((2.08, -0.72), (2.16, -0.60), stroke: 0.85pt)
  line((2.54, -0.98), (2.60, -0.86), stroke: 0.85pt)

  arc((3.38, -1.005), start: 175deg, stop: 425deg, radius: 0.32, anchor: "origin", stroke: 0.85pt)
  line((3.06, -0.98), (3.00, -0.86), stroke: 0.85pt)
  line((3.52, -0.72), (3.44, -0.60), stroke: 0.85pt)

  line((2.55, 0.95), (3.05, 1.45), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.65, 0.88), (3.25, 1.48), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.50, 1.15), (2.95, 1.60), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.52, 1.38), (2.78, 1.64), stroke: (paint: luma(40), thickness: 0.45pt))

  line((2.55, -1.45), (3.05, -0.95), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.35, -1.48), (2.95, -0.88), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.65, -1.60), (3.10, -1.15), stroke: (paint: luma(40), thickness: 0.45pt))
  line((2.82, -1.64), (3.08, -1.38), stroke: (paint: luma(40), thickness: 0.45pt))

  line((3.58, 0.50), (4.22, 1.14), stroke: (paint: luma(40), thickness: 0.45pt))
  line((3.68, 0.35), (4.35, 1.02), stroke: (paint: luma(40), thickness: 0.45pt))
  line((3.90, 0.32), (4.42, 0.84), stroke: (paint: luma(40), thickness: 0.45pt))

  line((1.18, 0.84), (1.70, 1.36), stroke: (paint: luma(40), thickness: 0.45pt))
  line((1.25, 0.62), (1.92, 1.29), stroke: (paint: luma(40), thickness: 0.45pt))
  line((1.38, 0.45), (2.02, 1.09), stroke: (paint: luma(40), thickness: 0.45pt))

  line((1.38, -1.09), (2.02, -0.45), stroke: (paint: luma(40), thickness: 0.45pt))
  line((1.25, -1.29), (1.92, -0.62), stroke: (paint: luma(40), thickness: 0.45pt))
  line((1.18, -1.36), (1.70, -0.84), stroke: (paint: luma(40), thickness: 0.45pt))

  line((3.58, -1.14), (4.22, -0.50), stroke: (paint: luma(40), thickness: 0.45pt))
  line((3.68, -1.02), (4.35, -0.35), stroke: (paint: luma(40), thickness: 0.45pt))
  line((3.90, -0.84), (4.42, -0.32), stroke: (paint: luma(40), thickness: 0.45pt))

  line((3.72, -0.10), (4.06, 0.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.78, -0.22), (4.18, 0.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.92, -0.26), (4.22, 0.04), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.72, 0.10), (4.06, -0.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.78, 0.22), (4.18, -0.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.92, 0.26), (4.22, -0.04), stroke: (paint: luma(50), thickness: 0.4pt))

  line((3.14, 0.90), (3.48, 1.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.20, 0.78), (3.60, 1.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.34, 0.74), (3.64, 1.04), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.14, 1.10), (3.48, 0.76), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.20, 1.22), (3.60, 0.82), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.34, 1.26), (3.64, 0.96), stroke: (paint: luma(50), thickness: 0.4pt))

  line((1.98, 0.90), (2.32, 1.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.04, 0.78), (2.44, 1.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.18, 0.74), (2.48, 1.04), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.98, 1.10), (2.32, 0.76), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.04, 1.22), (2.44, 0.82), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.18, 1.26), (2.48, 0.96), stroke: (paint: luma(50), thickness: 0.4pt))

  line((1.40, -0.10), (1.74, 0.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.46, -0.22), (1.86, 0.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.60, -0.26), (1.90, 0.04), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.40, 0.10), (1.74, -0.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.46, 0.22), (1.86, -0.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.60, 0.26), (1.90, -0.04), stroke: (paint: luma(50), thickness: 0.4pt))

  line((1.98, -1.10), (2.32, -0.76), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.04, -1.22), (2.44, -0.82), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.18, -1.26), (2.48, -0.96), stroke: (paint: luma(50), thickness: 0.4pt))
  line((1.98, -0.90), (2.32, -1.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.04, -0.78), (2.44, -1.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((2.18, -0.74), (2.48, -1.04), stroke: (paint: luma(50), thickness: 0.4pt))

  line((3.14, -1.10), (3.48, -0.76), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.20, -1.22), (3.60, -0.82), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.34, -1.26), (3.64, -0.96), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.14, -0.90), (3.48, -1.24), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.20, -0.78), (3.60, -1.18), stroke: (paint: luma(50), thickness: 0.4pt))
  line((3.34, -0.74), (3.64, -1.04), stroke: (paint: luma(50), thickness: 0.4pt))

  line((-4.10, 0), (4.80, 0), stroke: (dash: "dash-dotted", paint: luma(70), thickness: 0.55pt))
  line((2.80, -1.95), (2.80, 1.95), stroke: (dash: "dash-dotted", paint: luma(70), thickness: 0.55pt))
  line((1.85, -1.65), (3.75, 1.65), stroke: (dash: "dash-dotted", paint: luma(70), thickness: 0.5pt))
  line((1.85, 1.65), (3.75, -1.65), stroke: (dash: "dash-dotted", paint: luma(70), thickness: 0.5pt))
})
