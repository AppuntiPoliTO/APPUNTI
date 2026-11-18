// Figura estratta da solidi.typ (riga 935) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-0.5, 0), (7.5, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -8.5), (0, 1.5), mark: (end: ">"), stroke: 1pt)

  line((0, -3), (7.0, -3), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -4), (6.0, -4), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.5, 0), (1.5, -5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((6.0, 0), (6.0, -8), stroke: (dash: "dashed", thickness: 0.6pt))

  line((0, -4), (6, 0), stroke: 1pt)
  line((0, -4), (6, -8), stroke: 1pt)

  circle((6.0, 0), radius: 0.08, fill: black, stroke: none)
  circle((1.5, -3.0), radius: 0.08, fill: black, stroke: none)
  circle((0, -4.0), radius: 0.08, fill: black, stroke: none)
  circle((1.5, -5.0), radius: 0.08, fill: black, stroke: none)
  circle((6.0, -8.0), radius: 0.08, fill: black, stroke: none)

  content((-0.4, 1.2), [$sigma$])
  content((7.2, -0.6), text(fill: red)[$ 1/r^2 $])
  content((-0.6, 0), [$ 0 $], anchor: "east")
  content((0.8, -1.0), text(fill: red)[$ D_e/2 $])
  content((6.5, -1.0), text(fill: red)[$ D_i/2 $])

  content((-0.2, -3.0), [$ -p_e $], anchor: "east")
  content((-0.2, -4.0), [$ A $], anchor: "east")
  content((6.5, -7.6), [$ 2A $])

  content((3.5, -2.5), [$ sigma_r $])
  content((3.5, -5.5), [$ sigma_c $])

  content((5.8, 0.4), text(fill: blue)[*1*])
  content((1.1, -2.6), text(fill: blue)[*2*])
  content((3.2, -1.4), text(fill: blue)[*3*])
  content((-0.4, -4.8), text(fill: blue)[*4*])
  content((3.2, -6.8), text(fill: blue)[*5*])
  content((1.9, -4.8), text(fill: blue)[*6*])
  content((5.5, -7.5), text(fill: blue)[*7*])
})
