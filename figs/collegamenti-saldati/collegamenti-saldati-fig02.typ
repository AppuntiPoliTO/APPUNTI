// Figura estratta da collegamenti saldati.typ (riga 91) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// Profili della zona fusa (cono) e dei bordi organici della ZTA
let x-fus(t) = 0.20 + 0.70 * calc.pow(t, 0.78) + 0.05 * calc.sin(t * calc.pi)
let x-haz-l(t) = -(0.52 + 1.03 * calc.pow(t, 0.68) + 0.045 * calc.sin(t * 2.3 * calc.pi) - 0.02 * calc.cos(t * 4.1 * calc.pi))
let x-haz-r(t) = 0.50 + 1.02 * calc.pow(t, 0.70) + 0.04 * calc.sin(t * 2.1 * calc.pi + 0.6) + 0.02 * calc.cos(t * 3.7 * calc.pi)

let steps = 28
let ts = range(steps + 1).map(i => i / steps)

let haz-left-pts = (
  ..ts.map(t => (x-haz-l(t), 1.2 * t)),
  ..ts.rev().map(t => (-x-fus(t), 1.2 * t)),
)
let haz-right-pts = (
  ..ts.map(t => (x-fus(t), 1.2 * t)),
  ..ts.rev().map(t => (x-haz-r(t), 1.2 * t)),
)

line(..haz-left-pts, close: true, fill: gray.transparentize(85%), stroke: none)
line(..haz-right-pts, close: true, fill: gray.transparentize(85%), stroke: none)

// Tratteggio parallelo inclinato confinato nei poligoni della ZTA
let hatch-poly(pts, slope, spacing, stroke-style) = {
  let n = pts.len()
  let cs = pts.map(p => p.at(1) - slope * p.at(0))
  let c-min = calc.min(..cs)
  let c-max = calc.max(..cs)
  let k = calc.ceil((c-max - c-min) / spacing)
  for idx in range(1, k) {
    let c = c-min + idx * spacing
    let xs = ()
    for i in range(n) {
      let p1 = pts.at(i)
      let p2 = pts.at(calc.rem(i + 1, n))
      let d1 = p1.at(1) - slope * p1.at(0) - c
      let d2 = p2.at(1) - slope * p2.at(0) - c
      if (d1 <= 0 and d2 > 0) or (d2 <= 0 and d1 > 0) {
        let frac = -d1 / (d2 - d1)
        xs.push(p1.at(0) + frac * (p2.at(0) - p1.at(0)))
      }
    }
    xs = xs.sorted()
    let j = 0
    while j + 1 < xs.len() {
      let x1 = xs.at(j)
      let x2 = xs.at(j + 1)
      line((x1, slope * x1 + c), (x2, slope * x2 + c), stroke: stroke-style)
      j += 2
    }
  }
}

hatch-poly(haz-left-pts, -0.72, 0.11, 0.45pt + luma(50))
hatch-poly(haz-right-pts, 0.72, 0.11, 0.45pt + luma(50))

// Contorni esterni della ZTA (non perfettamente rettilinei)
line(..ts.map(t => (x-haz-l(t), 1.2 * t)), stroke: (paint: black, thickness: 0.6pt, dash: "densely-dashed"))
line(..ts.map(t => (x-haz-r(t), 1.2 * t)), stroke: (paint: black, thickness: 0.6pt, dash: "densely-dashed"))

// Lamiere del materiale base (si fermano ai limiti del cono di fusione)
line((-4.0, 1.2), (-x-fus(1.0), 1.2), stroke: 1pt)
line((x-fus(1.0), 1.2), (4.0, 1.2), stroke: 1pt)
line((-4.0, 0), (-x-fus(0.0), 0), stroke: 1pt)
line((x-fus(0.0), 0), (4.0, 0), stroke: 1pt)

// Materiale d'apporto (zona fusa continua: sovrametallo + limiti curvi + radice)
let weld-pts = (
  ..ts.map(t => (-x-fus(t), 1.2 * t)),
  ..range(1, 20).map(i => {
    let u = i / 20
    (-0.90 + 1.80 * u, 1.2 + 0.28 * calc.sin(u * calc.pi))
  }),
  ..ts.rev().map(t => (x-fus(t), 1.2 * t)),
  ..range(1, 10).map(i => {
    let u = i / 10
    (0.20 - 0.40 * u, -0.07 * calc.sin(u * calc.pi))
  }),
)
line(..weld-pts, close: true, fill: black, stroke: 0.9pt + black)

// Frecce ed etichette
line((-0.85, 1.80), (-0.35, 1.38), mark: (end: ">"), stroke: 0.8pt)
line((-0.95, -0.65), (-0.65, 0.35), mark: (end: ">"), stroke: 0.8pt)
line((0.95, -0.65), (0.65, 0.35), mark: (end: ">"), stroke: 0.8pt)
content((0, 2.02), text(size: 8.5pt)[materiale d'apporto])
content((-2.6, 0.6), text(size: 8.5pt)[materiale base])
content((2.6, 0.6), text(size: 8.5pt)[materiale base])
content((0, -0.88), text(size: 8.5pt)[zona termicamente alterata])
})
