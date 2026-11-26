#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((-2.8, 4.0), (2.8, 4.9), fill: luma(230), stroke: none)
  line((-0.75, 4.9), (-0.1, 4.0), (0.1, 4.0), (0.75, 4.9), close: true, fill: luma(195), stroke: none)
  arc((0, 3.9), start: 53.13deg, stop: 126.87deg, radius: 1.25, anchor: "origin", fill: luma(195), stroke: 1pt)

  line((-2.8, 4.9), (-0.75, 4.9), stroke: 1pt)
  line((0.75, 4.9), (2.8, 4.9), stroke: 1pt)
  line((-2.8, 4.0), (2.8, 4.0), stroke: 1pt)
  line((-0.75, 4.9), (-0.1, 4.0), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.75, 4.9), (0.1, 4.0), stroke: (dash: "dashed", thickness: 0.7pt))

  line((-0.44, 4.47), (-0.38, 4.45), (-0.31, 4.31), (-0.39, 4.33), close: true, fill: black, stroke: none)
  line((0.44, 4.47), (0.38, 4.45), (0.31, 4.31), (0.39, 4.33), close: true, fill: black, stroke: none)

  line((-2.8, 4.9), (-2.8, 2.5), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((2.8, 4.9), (2.8, 2.5), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-0.75, 4.9), (-0.75, 2.6), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.75, 4.9), (0.75, 2.6), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-0.44, 4.47), (-0.44, 2.22), stroke: (dash: "dashed", thickness: 0.55pt))
  line((-0.31, 4.31), (-0.31, 2.12), stroke: (dash: "dashed", thickness: 0.55pt))
  line((0.31, 4.31), (0.31, 2.12), stroke: (dash: "dashed", thickness: 0.55pt))
  line((0.44, 4.47), (0.44, 2.22), stroke: (dash: "dashed", thickness: 0.55pt))

  line((-2.8, 2.6), (-0.75, 2.6), stroke: 1pt)
  line((0.75, 2.6), (2.8, 2.6), stroke: 1pt)
  bezier((-0.75, 2.6), (-0.44, 2.22), (-0.68, 2.28), (-0.52, 2.20), stroke: 1pt)
  bezier((-0.44, 2.22), (-0.375, 2.48), (-0.42, 2.35), (-0.40, 2.48), stroke: 1pt)
  bezier((-0.375, 2.48), (-0.31, 2.12), (-0.35, 2.48), (-0.33, 2.25), stroke: 1pt)
  bezier((-0.31, 2.12), (0.31, 2.12), (-0.22, 1.98), (0.22, 1.98), stroke: 1pt)
  bezier((0.31, 2.12), (0.375, 2.48), (0.33, 2.25), (0.35, 2.48), stroke: 1pt)
  bezier((0.375, 2.48), (0.44, 2.22), (0.40, 2.48), (0.42, 2.35), stroke: 1pt)
  bezier((0.44, 2.22), (0.75, 2.6), (0.52, 2.20), (0.68, 2.28), stroke: 1pt)

  line((-3.55, 2.72), (-3.55, 3.05), mark: (end: ">"), stroke: 0.75pt)
  line((-3.55, 2.48), (-3.55, 2.15), mark: (end: ">"), stroke: 0.75pt)
  content((-3.75, 2.60), text(size: 7.5pt)[Densità], anchor: "east")
  content((-3.45, 2.90), text(size: 7pt)[Alta], anchor: "west")
  content((-3.45, 2.30), text(size: 7pt)[Bassa], anchor: "west")

  rect((-4.0, 0.0), (4.0, 1.45), fill: luma(55), stroke: 0.8pt)
  rect((-4.0, 0.25), (4.0, 0.88), fill: luma(165), stroke: none)
  circle((-2.8, 0.55), radius: (0.45, 0.22), fill: luma(200).transparentize(40%), stroke: none)
  circle((-1.1, 0.58), radius: (0.55, 0.24), fill: luma(210).transparentize(35%), stroke: none)
  circle((0.5, 0.54), radius: (0.50, 0.22), fill: luma(205).transparentize(40%), stroke: none)
  circle((2.2, 0.56), radius: (0.48, 0.23), fill: luma(200).transparentize(40%), stroke: none)

  line((-3.6, 0.62), (-2.1, 0.61), stroke: (paint: luma(35), thickness: 1.1pt))
  line((-1.7, 0.60), (-0.4, 0.63), stroke: (paint: luma(30), thickness: 1.2pt))
  line((0.1, 0.61), (1.8, 0.59), stroke: (paint: luma(35), thickness: 1.1pt))
  line((2.3, 0.62), (3.5, 0.60), stroke: (paint: luma(30), thickness: 1.2pt))

  rect((-4.1, 0.48), (4.1, 0.74), radius: 0.08, stroke: red + 0.8pt, fill: none)

  content((-3.7, 1.18), text(size: 9pt, fill: white)[*5 27 V 10*], anchor: "west")
  content((3.7, 1.18), text(size: 9pt, fill: white)[*TRC*], anchor: "east")

  content((3.15, 4.45), text(size: 9pt)[a)], anchor: "west")
  content((3.15, 2.60), text(size: 9pt)[b)], anchor: "west")
  content((2.85, 1.68), text(size: 9pt)[c)], anchor: "west")
})
