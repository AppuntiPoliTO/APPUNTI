// Figura estratta da fatica.typ (riga 786) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((0.0, 1.2), (1.3, 1.2), (1.6, 1.8), (1.85, 0.65), (2.15, 1.2), (3.4, 1.2), stroke: 1pt)
  bezier((3.4, 1.2), (4.4, 1.2), (3.7, 1.6), (4.1, 0.8), stroke: 1pt)
  bezier((4.4, 1.2), (5.4, 1.2), (4.7, 1.6), (5.1, 0.8), stroke: 1pt)
  line((5.4, 1.2), (6.4, 1.2), (6.8, 1.8), (6.98, 1.68), (6.58, 1.2), (7.8, 1.2), stroke: 1pt)

  line((1.15, 0.65), (1.5, 1.15), stroke: 0.5pt + gray.darken(20%))
  line((1.4, 0.55), (1.7, 0.95), stroke: 0.5pt + gray.darken(20%))
  line((3.55, 0.65), (3.9, 1.1), stroke: 0.5pt + gray.darken(20%))
  line((3.8, 0.6), (4.15, 1.05), stroke: 0.5pt + gray.darken(20%))
  line((6.15, 0.65), (6.5, 1.15), stroke: 0.5pt + gray.darken(20%))
  line((6.4, 0.6), (6.75, 1.1), stroke: 0.5pt + gray.darken(20%))

  circle((1.85, 0.72), radius: 0.3, stroke: 1.1pt + red.darken(10%))
  circle((4.15, 0.98), radius: 0.3, stroke: 1.1pt + red.darken(10%))
  circle((6.62, 1.25), radius: 0.3, stroke: 1.1pt + red.darken(10%))

  content((1.75, 2.2), text(size: 7.5pt)[Creste e avvallamenti \ (_ridge and groove_)], anchor: "center")
  content((4.4, 2.2), text(size: 7.5pt)[Ondulazioni \ (_undulations_)], anchor: "center")
  content((6.7, 2.2), text(size: 7.5pt)[Estrusione a bande \ (_slipband extrusion_)], anchor: "center")
})
