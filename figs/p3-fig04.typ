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

  line((-0.3, 0), (5.5, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((0.0, 0.30), (1.45, 0.30), stroke: 0.9pt)
  line((0.0, -0.30), (1.45, -0.30), stroke: 0.9pt)
  line((1.45, -0.30), (1.45, 0.30), stroke: 0.9pt)
  bezier((0.0, 0.30), (0.0, 0.0), (-0.08, 0.18), (0.08, 0.10), stroke: 0.8pt)
  bezier((0.0, 0.0), (0.0, -0.30), (-0.08, -0.10), (0.08, -0.18), stroke: 0.8pt)

  line((2.00, 0.30), (5.15, 0.30), stroke: 0.9pt)
  line((2.00, -0.30), (5.15, -0.30), stroke: 0.9pt)
  line((2.00, -0.30), (2.00, 0.30), stroke: 0.9pt)
  bezier((5.15, 0.30), (5.15, 0.0), (5.07, 0.18), (5.23, 0.10), stroke: 0.8pt)
  bezier((5.15, 0.0), (5.15, -0.30), (5.07, -0.10), (5.23, -0.18), stroke: 0.8pt)

  for sgn in (1, -1) {
    let ya = sgn * 0.30
    let yb = sgn * 1.95
    let yc = sgn * 1.68
    let pts = (
      (1.45, ya), (1.45, yb), (3.55, yb), (3.55, yc),
      (2.07, yc), (2.07, ya)
    )
    line(..pts, close: true, fill: luma(242), stroke: 0.9pt)
    hatch(1.45, calc.min(ya, yb), 2.07, calc.max(ya, yb), step: 0.24, dir: 1)
    hatch(2.07, calc.min(yc, yb), 3.55, calc.max(yc, yb), step: 0.24, dir: 1)
  }

  for sgn in (1, -1) {
    let lo = calc.min(sgn * 0.30, sgn * 0.62)
    let hi = calc.max(sgn * 0.30, sgn * 0.62)
    rect((2.02, lo), (2.56, hi), fill: luma(230), stroke: 0.85pt)
    hatch(2.02, lo, 2.56, hi, step: 0.20, dir: -1)
    let dlo = calc.min(sgn * 0.62, sgn * 1.62)
    let dhi = calc.max(sgn * 0.62, sgn * 1.62)
    rect((2.21, dlo), (2.31, dhi), fill: luma(220), stroke: 0.8pt)
    let glo = calc.min(sgn * 0.92, sgn * 1.62)
    let ghi = calc.max(sgn * 0.92, sgn * 1.62)
    rect((2.08, glo), (2.21, ghi), fill: rgb("#f59e0b").transparentize(45%), stroke: 0.75pt)
    rect((2.31, glo), (2.44, ghi), fill: rgb("#f59e0b").transparentize(45%), stroke: 0.75pt)
  }
  line((2.21, -0.62), (2.21, 0.62), stroke: 0.6pt)
  line((2.31, -0.62), (2.31, 0.62), stroke: 0.6pt)

  for sgn in (1, -1) {
    let pts = (
      (2.45, sgn * 0.75), (2.45, sgn * 1.65),
      (3.00, sgn * 1.65), (3.00, sgn * 1.42),
      (3.70, sgn * 1.42), (3.70, sgn * 0.75),
    )
    line(..pts, close: true, fill: luma(242), stroke: 0.9pt)
    hatch(2.45, calc.min(sgn * 0.75, sgn * 1.65), 3.00, calc.max(sgn * 0.75, sgn * 1.65), step: 0.22, dir: -1)
    hatch(3.00, calc.min(sgn * 0.75, sgn * 1.42), 3.70, calc.max(sgn * 0.75, sgn * 1.42), step: 0.22, dir: -1)
  }
  line((3.00, -0.75), (3.00, 0.75), stroke: 0.6pt)

  line((4.55, 1.08), (3.76, 1.08), mark: (end: "stealth", fill: rgb("#dc2626"), scale: 0.9), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt))
  line((4.55, -1.08), (3.76, -1.08), mark: (end: "stealth", fill: rgb("#dc2626"), scale: 0.9), stroke: (paint: rgb("#dc2626"), thickness: 1.2pt))
  content((4.68, 1.08), text(size: 9pt, fill: rgb("#dc2626"))[$F$], anchor: "west")
  content((4.68, -1.08), text(size: 9pt, fill: rgb("#dc2626"))[$F$], anchor: "west")

  content((2.35, 2.25), text(size: 8.2pt)[Innesto monodisco ($2$ superfici attive)])
})
