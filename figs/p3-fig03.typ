// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *
  let hatch(x0, y0, x1, y1, step: 0.22, dir: 1) = {
    let w = x1 - x0
    let h = y1 - y0
    let d = step
    while d < w + h {
      let sx = x0 + calc.max(0, d - h)
      let ex = x0 + calc.min(w, d)
      let sy = if dir == 1 { y0 + calc.min(h, d) } else { y1 - calc.min(h, d) }
      let ey = if dir == 1 { y0 + calc.max(0, d - w) } else { y1 - calc.max(0, d - w) }
      line((sx, sy), (ex, ey), stroke: 0.4pt + luma(90))
      d += step
    }
  }

  line((-0.3, 0), (5.8, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((0.0, 0.30), (1.00, 0.30), stroke: 0.9pt)
  line((0.0, -0.30), (1.00, -0.30), stroke: 0.9pt)
  line((1.00, -0.30), (1.00, 0.30), stroke: 0.9pt)
  bezier((0.0, 0.30), (0.0, 0.0), (-0.08, 0.18), (0.08, 0.10), stroke: 0.8pt)
  bezier((0.0, 0.0), (0.0, -0.30), (-0.08, -0.10), (0.08, -0.18), stroke: 0.8pt)

  line((1.65, 0.30), (5.35, 0.30), stroke: 0.9pt)
  line((1.65, -0.30), (5.35, -0.30), stroke: 0.9pt)
  line((1.65, -0.30), (1.65, 0.30), stroke: 0.9pt)
  bezier((5.35, 0.30), (5.35, 0.0), (5.27, 0.18), (5.43, 0.10), stroke: 0.8pt)
  bezier((5.35, 0.0), (5.35, -0.30), (5.27, -0.10), (5.43, -0.18), stroke: 0.8pt)

  for sgn in (1, -1) {
    let ya = sgn * 0.30
    let yb = sgn * 1.95
    let yc = sgn * 1.70
    let pts = (
      (1.00, ya), (1.00, yb), (4.10, yb), (4.10, yc),
      (1.60, yc), (1.60, ya)
    )
    line(..pts, close: true, fill: luma(242), stroke: 0.9pt)
    hatch(1.00, calc.min(ya, yb), 1.60, calc.max(ya, yb), step: 0.24, dir: 1)
    hatch(1.60, calc.min(yc, yb), 4.10, calc.max(yc, yb), step: 0.24, dir: 1)
  }

  for sgn in (1, -1) {
    let lo = calc.min(sgn * 0.30, sgn * 0.62)
    let hi = calc.max(sgn * 0.30, sgn * 0.62)
    rect((1.72, lo), (3.72, hi), fill: luma(230), stroke: 0.85pt)
    hatch(1.72, lo, 3.72, hi, step: 0.22, dir: -1)
    line((1.72, sgn * 0.50), (3.72, sgn * 0.50), stroke: 0.55pt)
  }

  let x0 = 1.68
  for k in range(4) {
    let x = x0 + k * 0.44
    for sgn in (1, -1) {
      let lo = calc.min(sgn * 0.72, sgn * 1.70)
      let hi = calc.max(sgn * 0.72, sgn * 1.70)
      rect((x, lo), (x + 0.14, hi), fill: luma(215), stroke: 0.75pt)
    }
  }
  for k in range(3) {
    let x = x0 + 0.19 + k * 0.44
    for sgn in (1, -1) {
      let lo = calc.min(sgn * 0.50, sgn * 1.56)
      let hi = calc.max(sgn * 0.50, sgn * 1.56)
      rect((x + 0.05, lo), (x + 0.15, hi), fill: white, stroke: 0.75pt)
      let flo = calc.min(sgn * 0.72, sgn * 1.56)
      let fhi = calc.max(sgn * 0.72, sgn * 1.56)
      rect((x, flo), (x + 0.05, fhi), fill: rgb("#f59e0b").transparentize(45%), stroke: 0.55pt)
      rect((x + 0.15, flo), (x + 0.20, fhi), fill: rgb("#f59e0b").transparentize(45%), stroke: 0.55pt)
    }
  }

  for sgn in (1, -1) {
    let lo = calc.min(sgn * 0.66, sgn * 1.66)
    let hi = calc.max(sgn * 0.66, sgn * 1.66)
    rect((3.16, lo), (3.72, hi), fill: luma(242), stroke: 0.9pt)
    hatch(3.16, lo, 3.72, hi, step: 0.22, dir: -1)
  }
  line((3.72, -0.66), (3.72, 0.66), stroke: 0.6pt)

  line((4.65, 1.15), (3.78, 1.15), mark: (end: "stealth", fill: rgb("#dc2626"), scale: 0.9), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt))
  line((4.65, -1.15), (3.78, -1.15), mark: (end: "stealth", fill: rgb("#dc2626"), scale: 0.9), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt))
  content((4.78, 1.15), text(size: 9pt, fill: rgb("#dc2626"))[$F$], anchor: "west")
  content((4.78, -1.15), text(size: 9pt, fill: rgb("#dc2626"))[$F$], anchor: "west")

  content((2.55, 2.25), text(size: 8.2pt)[Innesto multidisco ($z$ superfici d'attrito)])
})
