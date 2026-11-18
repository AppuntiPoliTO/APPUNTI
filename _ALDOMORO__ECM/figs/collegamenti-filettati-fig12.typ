// Figura estratta da collegamenti filettati.typ (riga 1270) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line(
    (0.0, 0.0), (3.0, 0.0), (3.0, 0.60), (1.2, 1.0823), (1.2, 1.8823),
    (3.0, 2.3646), (3.0, 3.0646), (1.2, 3.5469), (1.2, 4.3469),
    (3.0, 4.8292), (3.0, 5.4292), (0.0, 5.4292),
    close: true, fill: luma(210), stroke: none
  )
  line(
    (3.0, 0.0), (3.0, 0.60), (1.2, 1.0823), (1.2, 1.8823),
    (3.0, 2.3646), (3.0, 3.0646), (1.2, 3.5469), (1.2, 4.3469),
    (3.0, 4.8292), (3.0, 5.4292),
    stroke: 0.8pt
  )
  line((1.95, 4.3959), (1.95, 3.3459), mark: (end: ">"), stroke: 1.2pt)
  line((2.2313, 4.3959), (1.95, 3.3459), mark: (end: ">"), stroke: 1.2pt)
  arc((1.95, 3.3459), start: 75deg, stop: 90deg, radius: 0.85, anchor: "origin", stroke: 0.6pt)
  line((2.0609, 4.1886), (2.0609, 4.48), (2.38, 4.48), stroke: 0.55pt)
  content((2.43, 4.48), text(size: 7.5pt)[$alpha$], anchor: "west")
  content((1.87, 3.92), text(size: 8pt)[$F$], anchor: "east")
  content((2.18, 3.92), text(size: 8pt)[$F \/ cos alpha$], anchor: "west")
  line((3.15, 2.4048), (4.45, 2.7531), stroke: 0.6pt)
  line((3.15, 0.5598), (4.45, 0.2115), stroke: 0.6pt)
  arc((-0.2928, 1.4823), start: 6deg, stop: 15deg, radius: 4.25, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)
  arc((-0.2928, 1.4823), start: -15deg, stop: -6deg, radius: 4.25, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  content((3.78, 1.48), text(size: 7.5pt)[$2 alpha =$], anchor: "east")
  content((3.85, 1.60), text(size: 7.5pt)[angolo], anchor: "west")
  content((3.85, 1.35), text(size: 7.5pt)[del filetto], anchor: "west")
})
