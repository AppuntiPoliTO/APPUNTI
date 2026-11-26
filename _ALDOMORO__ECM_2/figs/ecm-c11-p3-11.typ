#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.022), stroke: 1pt)
  line((3.344, 5.822), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  line((0.528, 2.264), (0.528, 3.764), stroke: 0.9pt)
  line((0.528, 2.264), (1.012, 2.022), stroke: 0.9pt)
  line((0.528, 3.764), (1.012, 3.522), stroke: 0.9pt)

  line((1.012, 2.022), (1.012, 3.522), (5.412, 5.722), (5.412, 4.222), close: true, stroke: 1pt)
  line((3.621, 5.311), (4.928, 5.964), (5.412, 5.722), stroke: 1pt)

  line((0.528, 3.764), (0.528, 4.414), (1.012, 3.522), stroke: 0.85pt)
  line((0.528, 4.414), (3.344, 5.822), (3.828, 4.930), stroke: 0.85pt)

  line((0.528, 2.264), (0.528, 1.614), (1.012, 2.022), stroke: 0.85pt)
  line((0.528, 1.614), (3.344, 3.022), (3.828, 3.430), stroke: 0.85pt)

  line((4.928, 7.25), (4.928, 5.964), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.75), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  line((1.122, 4.894), (1.122, 4.144), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((1.826, 5.246), (1.826, 4.496), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.530, 5.598), (2.530, 4.848), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((3.234, 5.950), (3.234, 5.200), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  content((1.95, 5.95), text(size: 11.5pt, fill: red, weight: "bold")[$n_perp$], anchor: "south")

  line((1.028, 3.756), (1.591, 4.038), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((1.703, 4.094), (2.267, 4.376), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.379, 4.432), (2.942, 4.714), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((3.055, 4.770), (3.618, 5.052), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  content((4.25, 4.38), text(size: 11.5pt, fill: red, weight: "bold")[$f_parallel$], anchor: "center")

  line((1.364, 2.948), (1.364, 2.198), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.068, 3.300), (2.068, 2.550), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.772, 3.652), (2.772, 2.902), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((3.476, 4.004), (3.476, 3.254), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))

  line((3.473, 3.170), (2.910, 2.888), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.798, 2.832), (2.234, 2.550), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((2.122, 2.494), (1.558, 2.212), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((1.446, 2.156), (0.883, 1.874), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
})
