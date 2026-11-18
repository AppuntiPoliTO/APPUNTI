// Figura estratta da collegamenti filettati.typ (riga 50) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
import draw: *

let hatch(pts, slope: 1, step: 0.28, line-stroke: 0.35pt + luma(110)) = {
  let c-min = calc.min(..pts.map(p => p.at(1) - slope * p.at(0)))
  let c-max = calc.max(..pts.map(p => p.at(1) - slope * p.at(0)))
  let n = calc.ceil((c-max - c-min) / step)
  for k in range(1, n) {
    let c = c-min + k * step
    let hits = ()
    for i in range(pts.len()) {
      let p1 = pts.at(i)
      let p2 = pts.at(calc.rem(i + 1, pts.len()))
      let d1 = p1.at(1) - (slope * p1.at(0) + c)
      let d2 = p2.at(1) - (slope * p2.at(0) + c)
      if (d1 >= 0 and d2 < 0) or (d1 < 0 and d2 >= 0) {
        let t = d1 / (d1 - d2)
        hits.push((
          p1.at(0) + t * (p2.at(0) - p1.at(0)),
          p1.at(1) + t * (p2.at(1) - p1.at(1)),
        ))
      }
    }
    hits = hits.sorted(key: p => p.at(0))
    let i = 0
    while i + 1 < hits.len() {
      let a = hits.at(i)
      let b = hits.at(i + 1)
      if calc.abs(a.at(0) - b.at(0)) > 1e-4 {
        line(a, b, stroke: line-stroke)
      }
      i += 2
    }
  }
}

let vite-pts = (
  (-2.70, -1.55), (-2.70, 0.5196), (-2.00, -0.6928),
  (-1.8309, -0.8619), (-1.60, -0.9238), (-1.3691, -0.8619), (-1.20, -0.6928),
  (-0.20, 1.0392), (0, 1.0392), (0.20, 1.0392),
  (1.20, -0.6928), (1.3691, -0.8619), (1.60, -0.9238), (1.8309, -0.8619), (2.00, -0.6928),
  (2.70, 0.5196), (2.70, -1.55),
)

let madrevite-pts = (
  (-2.70, 1.55), (-2.70, 0.5196), (-2.00, -0.6928), (-1.20, -0.6928),
  (0, 1.3856), (1.20, -0.6928), (2.00, -0.6928), (2.70, 0.5196), (2.70, 1.55),
)

// Tratteggio a +45° per la vite e -45° per la madrevite
hatch(vite-pts, slope: 1, step: 0.28, line-stroke: 0.35pt + luma(110))
hatch(madrevite-pts, slope: -1, step: 0.28, line-stroke: 0.35pt + luma(110))

line((-2.70, 0.5196), (-2.00, -0.6928), stroke: 1pt)
arc((-1.60, -0.4619), start: 210deg, stop: 330deg, radius: 0.4619, anchor: "origin", stroke: 1pt)
line((-1.20, -0.6928), (-0.20, 1.0392), (0.20, 1.0392), (1.20, -0.6928), stroke: 1pt)
arc((1.60, -0.4619), start: 210deg, stop: 330deg, radius: 0.4619, anchor: "origin", stroke: 1pt)
line((2.00, -0.6928), (2.70, 0.5196), stroke: 1pt)

line((-2.00, -0.6928), (-1.20, -0.6928), stroke: 0.8pt)
line((-0.20, 1.0392), (0, 1.3856), (0.20, 1.0392), stroke: 0.55pt)
line((1.20, -0.6928), (2.00, -0.6928), stroke: 0.8pt)
line((-2.00, -0.6928), (-1.60, -1.3856), (-1.20, -0.6928), stroke: 0.55pt)
line((1.20, -0.6928), (1.60, -1.3856), (2.00, -0.6928), stroke: 0.55pt)

line((-3.60, 0), (5.55, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))
line((0, 0.45), (0, 1.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))
line((-1.60, -0.25), (-1.60, -1.90), stroke: (dash: "dash-dotted", thickness: 0.6pt))
line((1.60, -0.25), (1.60, -1.90), stroke: (dash: "dash-dotted", thickness: 0.6pt))

line((-3.95, 1.0392), (-0.20, 1.0392), stroke: 0.55pt)
line((-3.25, -0.6928), (-2.00, -0.6928), stroke: 0.55pt)

line((0, 1.3856), (4.40, 1.3856), stroke: 0.55pt)
line((0.20, 1.0392), (5.90, 1.0392), stroke: 0.55pt)
line((2.00, -0.6928), (5.20, -0.6928), stroke: 0.55pt)
line((1.60, -0.9238), (3.20, -0.9238), stroke: 0.55pt)
line((1.60, -1.3856), (4.40, -1.3856), stroke: 0.55pt)

line((-3.80, -2.15), (-3.80, 1.0392), mark: (end: ">"), stroke: 0.65pt)
line((-3.45, -2.15), (-3.45, 0), mark: (end: ">"), stroke: 0.65pt)
line((-3.10, -2.15), (-3.10, -0.6928), mark: (end: ">"), stroke: 0.65pt)

line((5.05, -2.15), (5.05, -0.6928), mark: (end: ">"), stroke: 0.65pt)
line((5.40, -2.15), (5.40, 0), mark: (end: ">"), stroke: 0.65pt)
line((5.75, -2.15), (5.75, 1.0392), mark: (end: ">"), stroke: 0.65pt)

line((3.05, -0.9238), (3.05, 1.0392), mark: (start: ">", end: ">"), stroke: 0.65pt)
line((3.45, 1.65), (3.45, 1.3856), mark: (end: ">"), stroke: 0.65pt)
line((3.45, 0.78), (3.45, 1.0392), mark: (end: ">"), stroke: 0.65pt)
line((3.45, -0.42), (3.45, -0.6928), mark: (end: ">"), stroke: 0.65pt)
line((3.45, -1.65), (3.45, -1.3856), mark: (end: ">"), stroke: 0.65pt)
line((3.85, 0), (3.85, 1.3856), mark: (start: ">", end: ">"), stroke: 0.65pt)
line((3.85, -1.3856), (3.85, 0), mark: (start: ">", end: ">"), stroke: 0.65pt)
line((4.25, -1.3856), (4.25, 1.3856), mark: (start: ">", end: ">"), stroke: 0.65pt)
line((4.65, -0.6928), (4.65, 1.0392), mark: (start: ">", end: ">"), stroke: 0.65pt)

line((-1.60, -1.78), (1.60, -1.78), mark: (start: ">", end: ">"), stroke: 0.65pt)

arc((0, 1.3856), start: 240deg, stop: 300deg, radius: 1.85, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
arc((1.60, -1.3856), start: 60deg, stop: 120deg, radius: 1.75, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)

line((1.34, -0.20), (1.60, -0.4619), stroke: 0.6pt)
line((1.60, -0.4619), (1.8310, -0.8619), mark: (end: ">"), stroke: 0.6pt)

content((-1.35, 0.68), box(fill: white, inset: 1.5pt, text(size: 8pt)[Madrevite]), anchor: "east")
content((0, -0.98), box(fill: white, inset: 1.5pt, text(size: 8pt)[Vite]), anchor: "center")
content((0, -0.26), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$60 degree$]), anchor: "center")
content((1.60, 0.54), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$60 degree$]), anchor: "center")
content((1.28, -0.15), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$r$]), anchor: "east")

content((0, -1.68), text(size: 8pt)[$P$], anchor: "south")
content((0, -2.18), text(size: 7.5pt)[$H = 0,86603 P$], anchor: "center")

content((-3.80, -2.25), text(size: 7.5pt)[$D$], anchor: "north")
content((-3.45, -2.25), text(size: 7.5pt)[$D_2$], anchor: "north")
content((-3.10, -2.25), text(size: 7.5pt)[$D_1$], anchor: "north")

content((5.05, -2.25), text(size: 7.5pt)[$d_1$], anchor: "north")
content((5.40, -2.25), text(size: 7.5pt)[$d_2$], anchor: "north")
content((5.75, -2.25), text(size: 7.5pt)[$d$], anchor: "north")

content((2.98, 0.42), text(size: 7pt)[$h_3$], anchor: "east")
content((3.45, 1.72), text(size: 7pt)[$H / 8$], anchor: "south")
content((3.45, -1.04), text(size: 7pt)[$H / 4$], anchor: "center")
content((3.78, 0.56), text(size: 7pt)[$H / 2$], anchor: "east")
content((3.78, -0.34), text(size: 7pt)[$H / 2$], anchor: "east")
content((4.32, 0.56), text(size: 7pt)[$H$], anchor: "west")
content((4.72, 0.56), text(size: 7pt)[$H_1$], anchor: "west")
})
