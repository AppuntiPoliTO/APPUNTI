#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  arc((0, 0), start: 90deg, stop: 270deg, radius: (2.25, 3.50), anchor: "origin", fill: gray.transparentize(86%), stroke: 1.1pt)
  arc((0, 0), start: 90deg, stop: 270deg, radius: (1.55, 2.41), anchor: "origin", fill: white, stroke: 0.9pt)
  arc((0.14, 0), start: 94deg, stop: 266deg, radius: (1.55, 2.41), anchor: "origin", stroke: 0.65pt)

  rect((0, 2.41), (0.14, 3.50), fill: gray.darken(55%), stroke: 0.8pt)
  rect((0.14, 2.25), (0.22, 3.50), fill: gray.transparentize(45%), stroke: 0.7pt)
  rect((0.22, 2.41), (0.36, 3.50), fill: gray.darken(55%), stroke: 0.8pt)

  rect((0, -3.50), (0.14, -2.41), fill: gray.darken(55%), stroke: 0.8pt)
  rect((0.14, -3.50), (0.22, -2.25), fill: gray.transparentize(45%), stroke: 0.7pt)
  rect((0.22, -3.50), (0.36, -2.41), fill: gray.darken(55%), stroke: 0.8pt)

  circle((-0.71, 2.74), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-0.695, 2.74), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-1.32, 2.13), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-1.305, 2.13), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-1.74, 1.20), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-1.725, 1.20), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-1.90, 0.00), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-1.885, 0.00), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-1.74, -1.20), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-1.725, -1.20), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-1.32, -2.13), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-1.305, -2.13), radius: (0.035, 0.05), stroke: 0.45pt)
  circle((-0.71, -2.74), radius: (0.075, 0.11), fill: gray.transparentize(70%), stroke: 0.7pt)
  circle((-0.695, -2.74), radius: (0.035, 0.05), stroke: 0.45pt)

  arc((0.32, 0), start: 90deg, stop: 270deg, radius: (1.22, 1.92), anchor: "origin", fill: gray.transparentize(75%), stroke: 0.8pt)
  arc((0.18, 0), start: 90deg, stop: 270deg, radius: (1.22, 1.92), anchor: "origin", fill: gray.transparentize(88%), stroke: 1.0pt)
  arc((0.18, 0), start: 90deg, stop: 270deg, radius: (0.58, 0.92), anchor: "origin", fill: white, stroke: 0.9pt)

  rect((0.18, 0.92), (0.34, 1.92), fill: gray.darken(60%), stroke: 0.8pt)
  rect((0.18, -1.92), (0.34, -0.92), fill: gray.darken(60%), stroke: 0.8pt)

  circle((-0.35, 1.15), radius: (0.055, 0.08), fill: gray.transparentize(65%), stroke: 0.65pt)
  circle((-0.35, -1.15), radius: (0.055, 0.08), fill: gray.transparentize(65%), stroke: 0.65pt)

  line((-0.856, 0.515), (-0.540, 0.389), (-0.304, 0.985), (-0.620, 1.111), close: true, fill: gray.transparentize(70%), stroke: 0.75pt)
  line((-0.816, 0.590), (-0.490, 0.520), stroke: 1.1pt)
  line((-0.772, 0.701), (-0.446, 0.631), stroke: 1.1pt)
  line((-0.728, 0.813), (-0.402, 0.743), stroke: 1.1pt)
  line((-0.684, 0.924), (-0.358, 0.854), stroke: 1.1pt)
  line((-0.640, 1.036), (-0.314, 0.966), stroke: 1.1pt)

  line((-0.856, -0.515), (-0.540, -0.389), (-0.304, -0.985), (-0.620, -1.111), close: true, fill: gray.transparentize(70%), stroke: 0.75pt)
  line((-0.816, -0.590), (-0.490, -0.520), stroke: 1.1pt)
  line((-0.772, -0.701), (-0.446, -0.631), stroke: 1.1pt)
  line((-0.728, -0.813), (-0.402, -0.743), stroke: 1.1pt)
  line((-0.684, -0.924), (-0.358, -0.854), stroke: 1.1pt)
  line((-0.640, -1.036), (-0.314, -0.966), stroke: 1.1pt)

  circle((-0.15, 1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((-0.05, 1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.05, 1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.15, 1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.25, 1.38), radius: (0.10, 0.21), fill: gray.transparentize(75%), stroke: 0.85pt)

  circle((-0.15, -1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((-0.05, -1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.05, -1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.15, -1.38), radius: (0.10, 0.21), fill: white, stroke: 0.85pt)
  circle((0.25, -1.38), radius: (0.10, 0.21), fill: gray.transparentize(75%), stroke: 0.85pt)

  line((0.20, 0.42), (0.55, 0.42), (0.55, 0.65), (0.38, 0.65), (0.38, 0.92), (0.20, 0.92), close: true, fill: gray.darken(65%), stroke: 0.85pt)
  line((0.20, -0.42), (0.55, -0.42), (0.55, -0.65), (0.38, -0.65), (0.38, -0.92), (0.20, -0.92), close: true, fill: gray.darken(65%), stroke: 0.85pt)

  arc((0.55, 0), start: 90deg, stop: 270deg, radius: (0.24, 0.42), anchor: "origin", fill: gray.transparentize(60%), stroke: none)
  rect((-0.35, -0.42), (0.55, 0.42), fill: gray.transparentize(72%), stroke: none)
  arc((-0.35, 0), start: 90deg, stop: 270deg, radius: (0.24, 0.42), anchor: "origin", fill: white, stroke: 0.9pt)
  arc((0.55, 0), start: 90deg, stop: 270deg, radius: (0.24, 0.42), anchor: "origin", stroke: 0.9pt)
  line((-0.35, 0.42), (0.55, 0.42), stroke: 0.9pt)
  line((-0.35, -0.42), (0.55, -0.42), stroke: 0.9pt)

  line((-0.432, 0.395), (0.468, 0.395), stroke: 0.7pt)
  line((-0.504, 0.322), (0.396, 0.322), stroke: 0.7pt)
  line((-0.558, 0.210), (0.342, 0.210), stroke: 0.7pt)
  line((-0.586, 0.073), (0.314, 0.073), stroke: 0.7pt)
  line((-0.586, -0.073), (0.314, -0.073), stroke: 0.7pt)
  line((-0.558, -0.210), (0.342, -0.210), stroke: 0.7pt)
  line((-0.504, -0.322), (0.396, -0.322), stroke: 0.7pt)
  line((-0.432, -0.395), (0.468, -0.395), stroke: 0.7pt)
})
