// Figura estratta da solidi.typ (riga 805) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-1, 0), (7.5, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -4), (0, 5.6), mark: (end: ">"), stroke: 1pt)

  line((0, 1), (7.5, 1), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2), (7.5, 2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -3.5), (1, -3.5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1, -3.5), (1, 5.5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((6, 0), (6, 2.3), stroke: (dash: "dashed", thickness: 0.6pt))

  bezier((1, -3.5), (6, 0), (1.2, -1.0), (3.0, 0), stroke: 1pt)
  bezier((1, 5.5), (6, 2), (1.2, 3.0), (3.0, 2.0), stroke: 1pt)

  circle((1, -3.5), radius: 0.08, fill: black, stroke: none)

  line((6.5, 2.6), (6.5, 2.1), mark: (end: ">"), stroke: 0.8pt)
  line((6.5, 0.4), (6.5, 0.9), mark: (end: ">"), stroke: 0.8pt)

  content((-0.4, 5.5), [ $ sigma $ ])
  content((7.2, -0.4), text(fill: red)[$ r $])
  content((-0.3, -0.3), [$ 0 $])
  
  content((0.7, -0.8), [$ D_i/2 $])
  content((6, -0.8), [$ D_e/2 $])
  
  content((-0.6, -3.5), [$ -p_i $])
  content((-0.5, 1), [$ A $])
  content((-0.5, 2), [$ 2A $])

  content((3, -1.5), [$ sigma_r $])
  content((3, 3.3), [$ sigma_c $])
  content((6.5, 3.0), [$ A = B/r_e^2 $])
})
