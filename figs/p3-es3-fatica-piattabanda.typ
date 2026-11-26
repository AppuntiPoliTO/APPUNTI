// Esempio 3 (Fatica): ribaltamento sezione di gola sulla piattabanda (Slide 13 dx)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Supporto
  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.022), stroke: 1pt)
  line((3.344, 5.822), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  // Fascia gialla: sezione di gola ribaltata sulla faccia superiore della piattabanda
  line((0.528, 3.764), (1.012, 3.522), (3.828, 4.930), (3.344, 5.172), close: true, fill: yellow, stroke: 0.5pt)

  // Piattabanda
  line((0.528, 2.264), (0.528, 3.764), stroke: 0.9pt)
  line((0.528, 2.264), (1.012, 2.022), stroke: 0.9pt)
  line((0.528, 3.764), (1.012, 3.522), stroke: 0.9pt)
  line((1.012, 2.022), (1.012, 3.522), (5.412, 5.722), (5.412, 4.222), close: true, stroke: 1pt)
  line((3.621, 5.311), (4.928, 5.964), (5.412, 5.722), stroke: 1pt)

  // Cordoni superiore e inferiore
  line((0.528, 3.764), (0.528, 4.414), (1.012, 3.522), stroke: 0.85pt)
  line((0.528, 4.414), (3.344, 5.822), (3.828, 4.930), stroke: 0.85pt)
  line((0.528, 2.264), (0.528, 1.614), (1.012, 2.022), stroke: 0.85pt)
  line((0.528, 1.614), (3.344, 3.022), (3.828, 3.430), stroke: 0.85pt)

  // Carico P
  line((4.928, 7.25), (4.928, 5.964), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.75), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  // Frecce rosse n_perp e f_parallel
  for (x, y) in ((1.122, 4.894), (1.826, 5.246), (2.530, 5.598), (3.234, 5.950)) {
    line((x, y), (x, y - 0.72), mark: (end: ">", scale: 0.5, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }
  content((1.90, 5.95), text(size: 11.5pt, fill: red, weight: "bold")[$n_perp$], anchor: "south")

  for (x, y) in ((1.028, 3.756), (1.703, 4.094), (2.379, 4.432), (3.055, 4.770)) {
    line((x, y), (x + 0.55, y + 0.275), mark: (end: ">", scale: 0.5, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }
  content((4.10, 4.35), text(size: 11.5pt, fill: red, weight: "bold")[$f_parallel$], anchor: "center")

  for (x, y) in ((1.364, 2.948), (2.068, 3.300), (2.772, 3.652), (3.476, 4.004)) {
    line((x, y), (x, y - 0.72), mark: (end: ">", scale: 0.5, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }
  for (x, y) in ((3.473, 3.170), (2.798, 2.832), (2.122, 2.494), (1.446, 2.156)) {
    line((x, y), (x - 0.55, y - 0.275), mark: (end: ">", scale: 0.5, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }

  content((5.55, 5.05), text(size: 10.5pt, weight: "bold")[piattabanda], anchor: "west")
  line((2.85, 0.05), (2.35, 4.35), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.55pt)
  content((2.85, -0.15), text(size: 9.5pt, weight: "bold")[sezione di gola ribaltata sulla piattabanda], anchor: "north")
})
