// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.92cm, {
  import draw: *

  let hatch-rect(x0, y0, x1, y1, step: 0.24, dir: 1, stroke-col: gray.darken(25%)) = {
    let w = x1 - x0
    let h = y1 - y0
    if dir == 1 {
      let d = step
      while d < w + h {
        let sx = x0 + calc.max(0, d - h)
        let sy = y0 + calc.min(h, d)
        let ex = x0 + calc.min(w, d)
        let ey = y0 + calc.max(0, d - w)
        line((sx, sy), (ex, ey), stroke: 0.4pt + stroke-col)
        d += step
      }
    } else {
      let d = step
      while d < w + h {
        let sx = x0 + calc.max(0, d - h)
        let sy = y1 - calc.min(h, d)
        let ex = x0 + calc.min(w, d)
        let ey = y1 - calc.max(0, d - w)
        line((sx, sy), (ex, ey), stroke: 0.4pt + stroke-col)
        d += step
      }
    }
  }

  let cy = 4.0

  // =========================================================================
  // VISTA SINISTRA: SEZIONE B–B
  // =========================================================================
  let cx = 3.35
  let r-fl = 2.65
  let r-dr-o = 2.25
  let r-dr-i = 1.98
  let r-disc = 1.86
  let r-hub-o = 1.34
  let r-hub-r = 1.18
  let r-bore = 0.66

  content((1.45, cy + 2.85), text(size: 9.5pt, style: "italic")[B–B])

  circle((cx, cy), radius: r-fl, fill: white, stroke: 0.95pt)
  for a in (0, 90, 180, 270) {
    let ang = a * 1deg
    let bx = cx + 2.45 * calc.cos(ang)
    let by = cy + 2.45 * calc.sin(ang)
    circle((bx, by), radius: 0.14, fill: white, stroke: 0.75pt)
  }
  for a in (45, 135, 225, 315) {
    let ang = a * 1deg
    let bx = cx + 2.45 * calc.cos(ang)
    let by = cy + 2.45 * calc.sin(ang)
    circle((bx, by), radius: 0.16, fill: white, stroke: 0.75pt)
    circle((bx, by), radius: 0.10, fill: white, stroke: 0.55pt)
    line(
      (cx + 2.15 * calc.cos(ang), cy + 2.15 * calc.sin(ang)),
      (cx + 2.78 * calc.cos(ang), cy + 2.78 * calc.sin(ang)),
      stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(90)),
    )
  }

  circle((cx, cy), radius: r-dr-o, fill: gray.transparentize(84%), stroke: 0.95pt)
  for a in range(0, 360, step: 10) {
    let ang = a * 1deg
    line(
      (cx + r-dr-i * calc.cos(ang), cy + r-dr-i * calc.sin(ang)),
      (cx + r-dr-o * calc.cos(ang), cy + r-dr-o * calc.sin(ang)),
      stroke: 0.35pt + gray.darken(20%),
    )
  }
  circle((cx, cy), radius: r-dr-i, fill: white, stroke: 0.85pt)

  let tw = 0.15
  let td = 0.14
  rect((cx - tw, cy + r-dr-i - 0.02), (cx + tw, cy + r-dr-i + td), fill: white, stroke: 0.75pt)
  rect((cx - tw, cy - r-dr-i - td), (cx + tw, cy - r-dr-i + 0.02), fill: white, stroke: 0.75pt)
  rect((cx + r-dr-i - 0.02, cy - tw), (cx + r-dr-i + td, cy + tw), fill: white, stroke: 0.75pt)
  rect((cx - r-dr-i - td, cy - tw), (cx - r-dr-i + 0.02, cy + tw), fill: white, stroke: 0.75pt)

  circle((cx, cy), radius: r-disc, fill: white, stroke: 0.75pt)
  for a in (28, 62, 118, 152, 208, 242, 298, 332) {
    let ang = a * 1deg
    line(
      (cx + (r-hub-o + 0.03) * calc.cos(ang), cy + (r-hub-o + 0.03) * calc.sin(ang)),
      (cx + r-disc * calc.cos(ang), cy + r-disc * calc.sin(ang)),
      stroke: 0.65pt,
    )
  }

  let spline-pts = ()
  let n-teeth = 18
  for k in range(n-teeth) {
    let a0 = (k * 360.0 / n-teeth) * 1deg
    let a1 = ((k + 0.42) * 360.0 / n-teeth) * 1deg
    let a2 = ((k + 0.50) * 360.0 / n-teeth) * 1deg
    let a3 = ((k + 0.92) * 360.0 / n-teeth) * 1deg
    spline-pts.push((cx + r-hub-o * calc.cos(a0), cy + r-hub-o * calc.sin(a0)))
    spline-pts.push((cx + r-hub-o * calc.cos(a1), cy + r-hub-o * calc.sin(a1)))
    spline-pts.push((cx + r-hub-r * calc.cos(a2), cy + r-hub-r * calc.sin(a2)))
    spline-pts.push((cx + r-hub-r * calc.cos(a3), cy + r-hub-r * calc.sin(a3)))
  }
  line(..spline-pts, close: true, fill: gray.transparentize(82%), stroke: 0.85pt)
  for a in range(0, 360, step: 12) {
    let ang = a * 1deg
    line(
      (cx + r-bore * calc.cos(ang), cy + r-bore * calc.sin(ang)),
      (cx + (r-hub-r - 0.02) * calc.cos(ang), cy + (r-hub-r - 0.02) * calc.sin(ang)),
      stroke: 0.35pt + gray.darken(25%),
    )
  }

  for a in (90, 210, 330) {
    let ang = a * 1deg
    let ux = calc.cos(ang)
    let uy = calc.sin(ang)
    let px = -uy
    let py = ux
    let r0 = r-bore + 0.14
    let r1 = r-hub-o + 0.02
    let hw = 0.13
    line(
      (cx + r0 * ux - hw * px, cy + r0 * uy - hw * py),
      (cx + r1 * ux - hw * px, cy + r1 * uy - hw * py),
      (cx + r1 * ux + hw * px, cy + r1 * uy + hw * py),
      (cx + r0 * ux + hw * px, cy + r0 * uy + hw * py),
      close: true,
      fill: white,
      stroke: 0.75pt,
    )
    let lr0 = r-bore + 0.18
    let lr1 = r-hub-r - 0.08
    let lhw = 0.095
    line(
      (cx + lr0 * ux - lhw * px, cy + lr0 * uy - lhw * py),
      (cx + lr1 * ux - lhw * px, cy + lr1 * uy - lhw * py),
      (cx + lr1 * ux + lhw * px, cy + lr1 * uy + lhw * py),
      (cx + lr0 * ux + lhw * px, cy + lr0 * uy + lhw * py),
      close: true,
      fill: luma(175),
      stroke: 0.75pt,
    )
  }

  circle((cx, cy), radius: r-bore, fill: white, stroke: 0.95pt)
  let ka = 35deg
  let kux = calc.cos(ka)
  let kuy = calc.sin(ka)
  let kpx = -kuy
  let kpy = kux
  let kr0 = r-bore - 0.04
  let kr1 = r-bore + 0.15
  let khw = 0.11
  line(
    (cx + kr0 * kux - khw * kpx, cy + kr0 * kuy - khw * kpy),
    (cx + kr1 * kux - khw * kpx, cy + kr1 * kuy - khw * kpy),
    (cx + kr1 * kux + khw * kpx, cy + kr1 * kuy + khw * kpy),
    (cx + kr0 * kux + khw * kpx, cy + kr0 * kuy + khw * kpy),
    fill: white,
    stroke: 0.85pt,
  )

  line((cx - r-fl - 0.45, cy), (cx + r-fl + 0.45, cy), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))
  line((cx, cy - r-fl - 0.85), (cx, cy + r-fl + 0.85), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(70)))
  line((cx, cy + r-fl + 0.85), (cx + 0.62, cy + r-fl + 0.85), mark: (end: "stealth", fill: black, scale: 0.9), stroke: 0.95pt)
  content((cx - 0.28, cy + r-fl + 0.85), text(size: 9.5pt, style: "italic")[A])
  line((cx, cy - r-fl - 0.85), (cx + 0.62, cy - r-fl - 0.85), mark: (end: "stealth", fill: black, scale: 0.9), stroke: 0.95pt)
  content((cx - 0.28, cy - r-fl - 0.85), text(size: 9.5pt, style: "italic")[A])

  // =========================================================================
  // VISTA DESTRA: SEZIONE A–A
  // =========================================================================
  let x0 = 8.45
  let xb-l = x0 + 0.28
  let xb-r = 12.85

  content((10.95, cy + 2.75), text(size: 9.5pt, style: "italic")[A–A])

  line((x0 - 0.55, cy), (xb-r + 0.45, cy), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(70)))

  rect((xb-l, cy - r-bore), (xb-r, cy + r-bore), fill: white, stroke: 0.95pt)
  line((xb-l, cy + 0.46), (xb-r, cy + 0.46), stroke: 0.6pt)
  line((xb-l, cy + 0.28), (xb-r, cy + 0.28), stroke: 0.6pt)

  rect((xb-l, cy - 1.24), (xb-r, cy - r-bore), fill: gray.transparentize(82%), stroke: 0.9pt)
  hatch-rect(xb-l, cy - 1.24, xb-r, cy - r-bore, step: 0.24, dir: -1)
  rect((xb-l, cy + r-bore), (xb-r, cy + 0.82), fill: gray.transparentize(82%), stroke: 0.85pt)
  hatch-rect(xb-l, cy + r-bore, xb-r, cy + 0.82, step: 0.18, dir: -1)

  for sgn in (1, -1) {
    let yfl0 = cy + sgn * 1.92
    let yfl1 = cy + sgn * 2.68
    let ydr0 = cy + sgn * 1.92
    let ydr1 = cy + sgn * 2.26
    let pts = (
      (x0, yfl1), (x0 + 0.42, yfl1), (x0 + 0.42, ydr1),
      (10.75, ydr1), (10.75, ydr0), (x0 + 0.42, ydr0),
      (x0 + 0.42, yfl0), (x0, yfl0),
    )
    line(..pts, close: true, fill: gray.transparentize(86%), stroke: 0.9pt)
    let f-lo = calc.min(yfl0, yfl1)
    let f-hi = calc.max(yfl0, yfl1)
    hatch-rect(x0, f-lo, x0 + 0.42, f-hi, step: 0.22, dir: 1)
    let d-lo = calc.min(ydr0, ydr1)
    let d-hi = calc.max(ydr0, ydr1)
    hatch-rect(x0 + 0.42, d-lo, 10.75, d-hi, step: 0.22, dir: 1)
    let yb = cy + sgn * 2.40
    rect((x0, yb - 0.11), (x0 + 0.42, yb + 0.11), fill: white, stroke: 0.7pt)
    line((x0 - 0.28, yb), (x0 + 0.65, yb), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))
    let yv = cy + sgn * 2.09
    rect((10.12, yv - 0.08), (10.75, yv + 0.08), fill: white, stroke: 0.65pt)
    rect((10.75, yv - 0.13), (10.95, yv + 0.13), fill: gray.transparentize(70%), stroke: 0.7pt)
    line((9.95, yv), (11.12, yv), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))
  }

  let xp0 = 9.42
  let dt = 0.15
  for k in range(6) {
    let xd = xp0 + k * dt
    let is-outer = calc.rem(k, 2) == 0
    for sgn in (1, -1) {
      if is-outer {
        let lo = calc.min(cy + sgn * 1.30, cy + sgn * 2.04)
        let hi = calc.max(cy + sgn * 1.30, cy + sgn * 2.04)
        rect((xd, lo), (xd + dt - 0.015, hi), fill: gray.transparentize(76%), stroke: 0.65pt)
      } else {
        let lo = calc.min(cy + sgn * 1.18, cy + sgn * 1.88)
        let hi = calc.max(cy + sgn * 1.18, cy + sgn * 1.88)
        rect((xd, lo), (xd + dt - 0.015, hi), fill: luma(170), stroke: 0.65pt)
      }
    }
  }

  for sgn in (1, -1) {
    let lo = calc.min(cy + sgn * 1.26, cy + sgn * 1.92)
    let hi = calc.max(cy + sgn * 1.26, cy + sgn * 1.92)
    rect((9.08, lo), (9.40, hi), fill: gray.transparentize(82%), stroke: 0.9pt)
    hatch-rect(9.08, lo, 9.40, hi, step: 0.18, dir: -1)
  }

  for sgn in (1, -1) {
    let lo = calc.min(cy + sgn * 1.28, cy + sgn * 1.92)
    let hi = calc.max(cy + sgn * 1.28, cy + sgn * 1.92)
    rect((10.34, lo), (10.75, hi), fill: gray.transparentize(84%), stroke: 0.9pt)
    hatch-rect(10.34, lo, 10.75, hi, step: 0.20, dir: 1)
    let yreg = cy + sgn * 1.58
    rect((10.75, yreg - 0.14), (10.98, yreg + 0.14), fill: gray.transparentize(74%), stroke: 0.75pt)
    line((10.45, yreg), (11.15, yreg), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))
  }

  merge-path(fill: white, stroke: 0.95pt, {
    line((8.82, cy + 0.98), (8.88, cy + 1.40))
    bezier((8.88, cy + 1.40), (9.08, cy + 1.68), (8.94, cy + 1.58), (9.02, cy + 1.68))
    bezier((9.08, cy + 1.68), (9.08, cy + 1.34), (9.12, cy + 1.56), (9.08, cy + 1.42))
    bezier((9.08, cy + 1.34), (9.35, cy + 1.10), (9.10, cy + 1.16), (9.22, cy + 1.11))
    line((9.35, cy + 1.10), (11.20, cy + 1.08))
    bezier((11.20, cy + 1.08), (11.82, cy + 1.26), (11.48, cy + 1.10), (11.68, cy + 1.24))
    bezier((11.82, cy + 1.26), (11.42, cy + 0.90), (11.80, cy + 1.04), (11.64, cy + 0.92))
    line((11.42, cy + 0.90), (8.98, cy + 0.86))
    bezier((8.98, cy + 0.86), (8.82, cy + 0.98), (8.86, cy + 0.86), (8.82, cy + 0.91))
  })
  circle((8.98, cy + 1.00), radius: 0.08, fill: white, stroke: 0.75pt)
  line((8.92, cy + 0.94), (9.04, cy + 1.06), stroke: 0.5pt)

  let y-s-out = cy + 1.64
  let y-s-mid = cy + 1.34
  let y-s-in = cy + 1.16
  let y-s-ramp-l = cy + 1.36
  merge-path(fill: gray.transparentize(84%), stroke: 0.9pt, {
    line((11.18, y-s-out), (11.46, y-s-out), (11.46, y-s-mid), (11.98, y-s-mid), (11.98, y-s-out), (12.28, y-s-out), (12.28, y-s-in), (11.68, y-s-in))
    bezier((11.68, y-s-in), (11.18, y-s-ramp-l), (11.44, y-s-in + 0.03), (11.28, y-s-ramp-l - 0.06))
    line((11.18, y-s-ramp-l), (11.18, y-s-out))
  })
  hatch-rect(11.18, y-s-ramp-l, 11.46, y-s-out, step: 0.18, dir: 1)
  hatch-rect(11.98, y-s-in, 12.28, y-s-out, step: 0.18, dir: 1)
  line((12.28, y-s-out), (12.55, y-s-out), (12.55, y-s-in), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(70)))
  line((11.46, y-s-out), (11.74, y-s-out), (11.74, y-s-mid), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(70)))

  let yb-in = cy - 1.24
  let yb-mid = cy - 1.38
  let yb-out = cy - 1.64
  let pts-sb = (
    (11.18, yb-out), (11.46, yb-out), (11.46, yb-mid), (11.98, yb-mid),
    (11.98, yb-out), (12.28, yb-out), (12.28, yb-in), (11.18, yb-in),
  )
  line(..pts-sb, close: true, fill: gray.transparentize(84%), stroke: 0.9pt)
  hatch-rect(11.18, yb-out, 11.46, yb-in, step: 0.18, dir: 1)
  hatch-rect(11.98, yb-out, 12.28, yb-in, step: 0.18, dir: 1)
  hatch-rect(11.46, yb-mid, 11.98, yb-in, step: 0.18, dir: 1)
  line((12.28, yb-out), (12.55, yb-out), (12.55, yb-in), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(70)))
  line((11.46, yb-out), (11.74, yb-out), (11.74, yb-mid), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(70)))

  circle((11.82, cy + 2.02), radius: (0.68, 0.30), stroke: (dash: "dashed", paint: red, thickness: 1.2pt))
  circle((11.82, cy + 2.02), radius: 0.055, fill: black, stroke: none)
  line((11.82, cy + 2.02), (11.30, cy + 2.02), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 0.9pt)
  line((11.82, cy + 2.02), (12.34, cy + 2.02), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 0.9pt)

  let xbb = 9.86
  line((xbb, cy - r-fl - 0.85), (xbb, cy + r-fl + 0.85), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(70)))
  line((xbb, cy + r-fl + 0.85), (xbb - 0.62, cy + r-fl + 0.85), mark: (end: "stealth", fill: black, scale: 0.9), stroke: 0.95pt)
  content((xbb + 0.28, cy + r-fl + 0.85), text(size: 9.5pt, style: "italic")[B])
  line((xbb, cy - r-fl - 0.85), (xbb - 0.62, cy - r-fl - 0.85), mark: (end: "stealth", fill: black, scale: 0.9), stroke: 0.95pt)
  content((xbb + 0.28, cy - r-fl - 0.85), text(size: 9.5pt, style: "italic")[B])
})
