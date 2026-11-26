// Figura estratta da solidi.typ (riga 869) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-0.5, 0), (7.5, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -6.5), (0, 1.5), mark: (end: ">"), stroke: 1pt)

  line((0, -2.5), (7.0, -2.5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -3.0), (7.0, -3.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -6.0), (1.5, -6.0), stroke: (dash: "dashed", thickness: 0.6pt))

  line((1.5, 0), (1.5, -6.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((6.0, 0), (6.0, -3.5), stroke: (dash: "dashed", thickness: 0.6pt))

  bezier((1.5, 0), (6.0, -2.5), (2.0, -2.0), (4.0, -2.4), stroke: 1pt)
  bezier((1.5, -6.0), (6.0, -3.5), (2.0, -4.0), (4.0, -3.6), stroke: 1pt)

  circle((1.5, -6.0), radius: 0.08, fill: black, stroke: none)
  circle((6.0, -3.5), radius: 0.08, fill: black, stroke: none)

  content((-0.4, 1.2), [$ sigma $])
  content((7.2, -0.4), [$ r $])
  content((-0.6, 0), [$ 0 $], anchor: "east")
  
  content((0.75, -0.8), [$ D_i/2 $])
  content((6.5, -0.8), [$ D_e/2 $])
  
  content((-0.2, -2.5), [$ -p_e $], anchor: "east")
  content((-0.2, -3.0), [$ A $], anchor: "east")
  content((-0.2, -6.0), [$ 2A $], anchor: "east")

  content((4.0, -1.8), [$ sigma_r $])
  content((3.5, -4.6), [$ sigma_c $])
})
