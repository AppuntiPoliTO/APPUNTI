#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Vertical and horizontal plates
  rect((0.20, 0.20), (1.40, 5.20), stroke: 0.85pt)
  rect((1.50, 2.15), (4.90, 3.25), stroke: 0.85pt)

  // Upper stress flow lines
  line((0.72, 5.05), (0.72, 4.50), (2.47, 2.75), (3.75, 2.75), stroke: 0.8pt)
  line((0.94, 5.05), (0.94, 4.54), (2.55, 2.93), (3.75, 2.93), stroke: 0.8pt)
  line((1.16, 5.05), (1.16, 4.58), (2.63, 3.11), (3.75, 3.11), stroke: 0.8pt)

  // Lower stress flow lines
  line((0.72, 0.35), (0.72, 0.90), (2.47, 2.65), (3.75, 2.65), stroke: 0.55pt)
  line((0.94, 0.35), (0.94, 0.86), (2.55, 2.47), (3.75, 2.47), stroke: 0.55pt)
  line((1.16, 0.35), (1.16, 0.82), (2.63, 2.29), (3.75, 2.29), stroke: 0.55pt)

  // Upper and lower fillet welds
  line((1.40, 3.25), (1.40, 4.55), (2.70, 3.25), close: true, stroke: 1.5pt)
  line((1.40, 2.15), (1.40, 0.85), (2.70, 2.15), close: true, stroke: 1.5pt)

  // Throat section line (Sezione di gola)
  line((1.40, 3.25), (2.05, 3.90), stroke: 0.9pt)

  // Label and arrow
  content((1.65, 4.95), text(size: 10pt)[Sezione di gola], anchor: "west")
  line((3.05, 4.68), (2.22, 4.07), mark: (end: ">"), stroke: 0.7pt)
})
