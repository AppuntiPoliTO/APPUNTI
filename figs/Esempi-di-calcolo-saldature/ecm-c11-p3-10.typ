#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.60, 0.00), (3.198, 1.500), stroke: 0.9pt)
  line((3.198, 1.500), (3.198, 3.000), stroke: 0.9pt)
  line((3.198, 4.800), (3.198, 6.900), stroke: 0.9pt)
  line((0.60, 5.400), (3.198, 6.900), stroke: 0.9pt)
  line((0.60, 0.00), (0.60, 5.400), stroke: 0.9pt)

  line((0.60, 0.00), (0.210, 0.225), stroke: 0.9pt)
  line((0.210, 0.225), (0.210, 5.625), stroke: 0.9pt)
  line((0.60, 5.400), (0.210, 5.625), stroke: 0.9pt)
  line((0.210, 5.625), (2.808, 7.125), stroke: 0.9pt)
  line((3.198, 6.900), (2.808, 7.125), stroke: 0.9pt)

  line((1.552, 2.050), (4.930, 4.000), (4.930, 5.400), (1.552, 3.450), close: true, fill: white, stroke: none)
  line((1.552, 3.450), (4.930, 5.400), (4.584, 5.600), (1.206, 3.650), close: true, fill: white, stroke: none)
  line((4.930, 4.000), (4.930, 5.400), (4.584, 5.600), (4.584, 4.200), close: true, fill: white, stroke: none)

  line((1.552, 2.050), (4.930, 4.000), stroke: 0.95pt)
  line((1.552, 3.450), (4.930, 5.400), stroke: 0.95pt)
  line((1.206, 3.650), (4.584, 5.600), stroke: 0.95pt)
  line((1.552, 2.050), (1.552, 3.450), stroke: 0.95pt)
  line((4.930, 4.000), (4.930, 5.400), stroke: 0.95pt)
  line((4.930, 5.400), (4.584, 5.600), stroke: 0.95pt)
  line((4.584, 5.600), (4.584, 4.200), stroke: 0.95pt)
  line((4.930, 4.000), (4.584, 4.200), stroke: 0.95pt)

  line((1.206, 4.050), (3.025, 5.100), (3.371, 4.500), (1.552, 3.450), close: true, fill: white, stroke: 0.85pt)
  line((1.206, 3.650), (1.206, 4.050), stroke: 0.85pt)
  line((1.206, 3.650), (1.552, 3.450), stroke: 0.85pt)
  line((1.206, 2.250), (1.206, 3.650), stroke: 0.85pt)

  line((1.206, 1.850), (1.206, 2.250), stroke: 0.85pt)
  line((1.206, 1.850), (1.552, 2.050), stroke: 0.85pt)
  line((1.206, 1.850), (3.025, 2.900), stroke: 0.85pt)
  line((3.025, 2.900), (3.371, 3.100), stroke: 0.85pt)

  line((2.25, 4.20), (2.25, 5.25), mark: (end: ">", fill: black), stroke: 1pt)
  line((2.25, 2.35), (2.25, 3.35), mark: (end: ">", fill: black), stroke: (dash: "dashed", thickness: 1pt))
  line((1.38, 3.75), (0.514, 3.250), mark: (end: ">", fill: black), stroke: 1pt)
  line((0.514, 1.550), (1.38, 2.05), mark: (end: ">", fill: black), stroke: 1pt)
  line((4.757, 6.550), (4.757, 5.500), mark: (end: ">", fill: black), stroke: 1pt)

  line((1.206, 1.850), (1.806, 1.504), stroke: 0.55pt)
  line((3.025, 2.900), (3.625, 2.554), stroke: 0.55pt)
  line((1.726, 1.550), (3.545, 2.600), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)

  line((2.461, 2.575), (3.611, 1.911), stroke: 0.55pt)
  line((4.930, 4.000), (6.080, 3.336), stroke: 0.55pt)
  line((3.511, 1.969), (5.980, 3.394), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)

  line((4.25, 3.608), (4.25, 5.008), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)

  line((2.60, 5.65), (2.85, 4.75), stroke: 0.55pt)
  line((2.55, 5.65), (2.95, 2.95), stroke: 0.55pt)

  content((1.55, 5.5), text(size: 10.5pt, weight: "bold")[supporto])
  content((2.55, 5.85), text(size: 10.5pt, weight: "bold")[2 cordoni])
  content((5.05, 4.75), text(size: 10.5pt, weight: "bold")[piattabanda], anchor: "west")
  content((4.90, 6.15), text(size: 10.5pt, weight: "bold")[$P$], anchor: "west")
  content((2.05, 4.85), text(size: 10.5pt, weight: "bold")[$F_1$], anchor: "east")
  content((2.10, 2.75), text(size: 10.5pt, weight: "bold")[$F_1$], anchor: "east")
  content((0.75, 3.55), text(size: 10.5pt, weight: "bold")[$F_2$], anchor: "south")
  content((0.95, 1.55), text(size: 10.5pt, weight: "bold")[$F_2$], anchor: "north")
  content((2.72, 1.98), text(size: 10.5pt, weight: "bold")[$L$], anchor: "north")
  content((4.85, 2.58), text(size: 10.5pt, weight: "bold")[$b$], anchor: "north")
  content((4.15, 4.30), text(size: 10.5pt, weight: "bold")[$h$], anchor: "east")
})
