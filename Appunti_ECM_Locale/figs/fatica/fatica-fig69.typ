// Figura estratta da fatica.typ (riga 4787) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  // BBox: x in [-1.05, 6.95] (dx=8.0), y in [-0.65, 4.80], length=1.0cm -> larghezza = 8.0 cm <= 8.2 cm
  import draw: line, circle, content

  line((0, 0), (0, 4.65), stroke: 0.75pt, mark: (end: ">"))
  line((0, 0), (6.15, 0), stroke: 0.75pt, mark: (end: ">"))
  content((-0.15, 4.62), text(size: 8pt)[$sigma_a$], anchor: "east")
  content((6.25, 0.0), text(size: 8pt)[$N$], anchor: "west")

  for d in range(5) {
    let x0 = d * 1.1
    for m in (1, 2, 3, 5, 7) {
      let xg = x0 + 1.1 * calc.log(m, base: 10)
      if xg <= 5.52 {
        let p = if m == 1 { black.transparentize(65%) } else { black.transparentize(84%) }
        let w = if m == 1 { 0.45pt } else { 0.35pt }
        line((xg, 0), (xg, 4.2), stroke: (paint: p, thickness: w))
      }
    }
  }
  line((5.5, 0), (5.5, 4.2), stroke: (paint: black.transparentize(65%), thickness: 0.45pt))

  for s in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10) {
    let yg = 4.2 * calc.log(s, base: 10)
    let p = if s == 1 or s == 10 { black.transparentize(65%) } else { black.transparentize(82%) }
    let w = if s == 1 or s == 10 { 0.45pt } else { 0.35pt }
    line((0, yg), (5.5, yg), stroke: (paint: p, thickness: w))
  }

  content((-0.12, 4.20), text(size: 7pt)[1000], anchor: "east")
  content((-0.12, 0.00), text(size: 7pt)[100], anchor: "east")
  for d in range(5) {
    let xd = d * 1.1
    let exp = d + 2
    content((xd, -0.18), text(size: 7pt)[$10^#exp$], anchor: "north")
  }

  let x-ng = 4.731
  let y-d = 1.438
  line((1.1, 4.2), (x-ng, y-d), (5.65, y-d), stroke: (paint: black, thickness: 1.15pt))
  line((0, y-d), (x-ng, y-d), stroke: (dash: "dashed", thickness: 0.6pt, paint: black.transparentize(35%)))
  content((-0.12, y-d), text(size: 7pt)[$sigma_D$], anchor: "east")
  content((3.75, 3.55), text(size: 7.5pt)[$sigma_m = "cost"$], anchor: "west")
  line((3.72, 3.45), (3.21, 2.65), stroke: (thickness: 0.55pt, paint: black.transparentize(25%)), mark: (end: ">", scale: 0.5))

  // Livello sigma_a2
  let y2 = 2.945
  let xn2-mis = 0.55
  let xn2-rot = 2.75
  line((0, y2), (xn2-rot, y2), stroke: (dash: "dotted", thickness: 0.7pt, paint: black.transparentize(20%)))
  line((xn2-mis, y2), (xn2-mis, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(15%)))
  line((xn2-rot, y2), (xn2-rot, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: blue.transparentize(15%)))
  circle((xn2-mis, y2), radius: 0.08, fill: red.transparentize(10%), stroke: none)
  circle((xn2-rot, y2), radius: 0.08, fill: blue, stroke: none)
  content((-0.12, y2), text(size: 7pt)[$sigma_"a2"$], anchor: "east")
  content((xn2-mis, -0.18), text(size: 7pt, fill: red.transparentize(10%))[$n_2$], anchor: "north")
  content((xn2-rot, -0.18), text(size: 7pt, fill: blue)[$N_2$], anchor: "north")

  // Livello sigma_a1
  let y1 = 2.108
  let xn1-mis = 1.65
  let xn1-rot = 3.85
  line((0, y1), (xn1-rot, y1), stroke: (dash: "dotted", thickness: 0.7pt, paint: black.transparentize(20%)))
  line((xn1-mis, y1), (xn1-mis, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(15%)))
  line((xn1-rot, y1), (xn1-rot, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: blue.transparentize(15%)))
  circle((xn1-mis, y1), radius: 0.08, fill: red.transparentize(10%), stroke: none)
  circle((xn1-rot, y1), radius: 0.08, fill: blue, stroke: none)
  content((-0.12, y1), text(size: 7pt)[$sigma_"a1"$], anchor: "east")
  content((xn1-mis, -0.18), text(size: 7pt, fill: red.transparentize(10%))[$n_1$], anchor: "north")
  content((xn1-rot, -0.18), text(size: 7pt, fill: blue)[$N_1$], anchor: "north")

  // Livello sotto sigma_D
  let y3 = 0.65
  line((0, y3), (5.55, y3), stroke: (dash: "dashed", thickness: 0.75pt, paint: black.transparentize(20%)), mark: (end: ">", scale: 0.6))
  content((-0.12, y3), text(size: 7pt)[$sigma_"a3"$], anchor: "east")
  content((5.62, y3), text(size: 7pt)[$N -> infinity$], anchor: "west")
})
