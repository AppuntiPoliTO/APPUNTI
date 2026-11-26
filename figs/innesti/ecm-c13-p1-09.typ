// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.95cm, {
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

  // =========================================================================
  // PARTE SUPERIORE: INNESTO MULTIDISCO GENERICO (VISTA FRONTALE + SEZIONE)
  // =========================================================================
  let cy = 7.45

  // --- Vista frontale sinistra ---
  let cx = 2.75
  let r-out = 1.65
  let r-in = 1.46
  let r-disc = 1.34
  let r-hub = 0.54
  let r-sh = 0.28

  circle((cx, cy), radius: r-out, fill: gray.transparentize(84%), stroke: 0.95pt)
  for a in range(0, 360, step: 15) {
    let ang = a * 1deg
    line(
      (cx + r-in * calc.cos(ang), cy + r-in * calc.sin(ang)),
      (cx + r-out * calc.cos(ang), cy + r-out * calc.sin(ang)),
      stroke: 0.35pt + gray.darken(20%),
    )
  }
  circle((cx, cy), radius: r-in, fill: white, stroke: 0.85pt)

  let sw = 0.14
  let sd = 0.11
  rect((cx - sw, cy + r-in - 0.02), (cx + sw, cy + r-in + sd), fill: white, stroke: 0.75pt)
  rect((cx - sw, cy - r-in - sd), (cx + sw, cy - r-in + 0.02), fill: white, stroke: 0.75pt)
  rect((cx + r-in - 0.02, cy - sw), (cx + r-in + sd, cy + sw), fill: white, stroke: 0.75pt)
  rect((cx - r-in - sd, cy - sw), (cx - r-in + 0.02, cy + sw), fill: white, stroke: 0.75pt)

  circle((cx, cy), radius: r-disc, stroke: 0.7pt)
  circle((cx, cy), radius: r-hub, fill: white, stroke: 0.8pt)
  circle((cx, cy), radius: r-sh, fill: gray.transparentize(78%), stroke: 0.85pt)
  for d in (-0.16, 0.0, 0.16) {
    let l = calc.sqrt(calc.max(0, r-sh * r-sh - d * d * 0.5)) * 0.65
    line((cx + d - l * 0.6, cy - l * 0.6), (cx + d + l * 0.6, cy + l * 0.6), stroke: 0.4pt + gray.darken(25%))
  }
  let kw = 0.075
  rect((cx - kw, cy + r-sh - 0.04), (cx + kw, cy + r-sh + 0.09), fill: gray.transparentize(65%), stroke: 0.65pt)
  rect((cx - kw, cy - r-sh - 0.09), (cx + kw, cy - r-sh + 0.04), fill: gray.transparentize(65%), stroke: 0.65pt)
  rect((cx + r-sh - 0.04, cy - kw), (cx + r-sh + 0.09, cy + kw), fill: gray.transparentize(65%), stroke: 0.65pt)
  rect((cx - r-sh - 0.09, cy - kw), (cx - r-sh + 0.04, cy + kw), fill: gray.transparentize(65%), stroke: 0.65pt)

  line((cx, cy - r-out - 0.45), (cx, cy + r-out + 0.45), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))
  line((cx - r-out - 0.45, cy), (cx + r-out + 0.45, cy), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  // --- Sezione assiale destra (DUE ALBERI COASSIALI DISTINTI) ---
  let ysh = 0.27
  line((5.35, cy + ysh), (7.15, cy + ysh), (7.15, cy - ysh), (5.35, cy - ysh), stroke: 0.9pt)
  bezier((5.35, cy + ysh), (5.35, cy), (5.25, cy + 0.14), (5.45, cy + 0.08), stroke: 0.7pt)
  bezier((5.35, cy), (5.35, cy - ysh), (5.25, cy - 0.10), (5.45, cy - 0.18), stroke: 0.7pt)
  rect((5.85, cy - 0.06), (6.75, cy + 0.06), fill: white, stroke: 0.65pt)

  line((7.30, cy + ysh), (11.75, cy + ysh), stroke: 0.9pt)
  line((7.30, cy - ysh), (11.75, cy - ysh), stroke: 0.9pt)
  line((7.30, cy - ysh), (7.30, cy + ysh), stroke: 0.9pt)
  bezier((11.75, cy + ysh), (11.75, cy), (11.65, cy + 0.14), (11.85, cy + 0.08), stroke: 0.7pt)
  bezier((11.75, cy), (11.75, cy - ysh), (11.65, cy - 0.10), (11.85, cy - 0.18), stroke: 0.7pt)
  rect((7.50, cy - 0.06), (10.35, cy + 0.06), fill: white, stroke: 0.65pt)

  for sgn in (1, -1) {
    let ya = cy + sgn * ysh
    let yb = cy + sgn * 0.78
    let yc = cy + sgn * 1.44
    let yd = cy + sgn * 1.66
    let pts = (
      (5.78, ya), (5.78, yb), (6.75, yb), (6.75, yd),
      (11.15, yd), (11.15, yc), (7.22, yc), (7.22, ya),
    )
    line(..pts, close: true, fill: gray.transparentize(86%), stroke: 0.9pt)
    let lo1 = calc.min(ya, yb)
    let hi1 = calc.max(ya, yb)
    hatch-rect(5.78, lo1, 7.22, hi1, step: 0.25, dir: 1)
    let lo2 = calc.min(yb, yd)
    let hi2 = calc.max(yb, yd)
    hatch-rect(6.75, lo2, 7.22, hi2, step: 0.25, dir: 1)
    let lo3 = calc.min(yc, yd)
    let hi3 = calc.max(yc, yd)
    hatch-rect(7.22, lo3, 11.15, hi3, step: 0.25, dir: 1)
    line((7.22, cy + sgn * 1.54), (10.55, cy + sgn * 1.54), stroke: 0.65pt)
  }

  for sgn in (1, -1) {
    let lo = calc.min(cy + sgn * ysh, cy + sgn * 0.46)
    let hi = calc.max(cy + sgn * ysh, cy + sgn * 0.46)
    rect((7.32, lo), (10.05, hi), fill: gray.transparentize(78%), stroke: 0.8pt)
    hatch-rect(7.32, lo, 10.05, hi, step: 0.22, dir: -1)
    line((7.32, cy + sgn * 0.37), (10.05, cy + sgn * 0.37), stroke: 0.55pt)
  }

  let x-pack = 7.36
  for k in range(3) {
    let xd = x-pack + k * 0.84
    for sgn in (1, -1) {
      let y0 = calc.min(cy + sgn * 0.46, cy + sgn * 1.34)
      let y1 = calc.max(cy + sgn * 0.46, cy + sgn * 1.34)
      rect((xd, y0), (xd + 0.14, y1), fill: luma(165), stroke: 0.65pt)
      rect((xd + 0.14, y0), (xd + 0.26, y1), fill: white, stroke: 0.7pt)
      rect((xd + 0.26, y0), (xd + 0.40, y1), fill: luma(165), stroke: 0.65pt)
    }
  }
  for k in range(2) {
    let xd = x-pack + 0.44 + k * 0.84
    for sgn in (1, -1) {
      let y0 = calc.min(cy + sgn * 0.58, cy + sgn * 1.54)
      let y1 = calc.max(cy + sgn * 0.58, cy + sgn * 1.54)
      rect((xd, y0), (xd + 0.34, y1), fill: gray.transparentize(82%), stroke: 0.8pt)
      hatch-rect(xd, y0, xd + 0.34, y1, step: 0.20, dir: 1)
    }
  }

  let xsp0 = 9.52
  let xsp1 = 10.12
  for sgn in (1, -1) {
    let y0 = calc.min(cy + sgn * 0.54, cy + sgn * 1.54)
    let y1 = calc.max(cy + sgn * 0.54, cy + sgn * 1.54)
    rect((xsp0, y0), (xsp1, y1), fill: gray.transparentize(84%), stroke: 0.9pt)
    hatch-rect(xsp0, y0, xsp1, y1, step: 0.22, dir: -1)
  }

  for sgn in (1, -1) {
    let y0 = calc.min(cy + sgn * 0.56, cy + sgn * 1.44)
    let y1 = calc.max(cy + sgn * 0.56, cy + sgn * 1.44)
    rect((10.65, y0), (11.15, y1), fill: gray.transparentize(86%), stroke: 0.85pt)
    hatch-rect(10.65, y0, 11.15, y1, step: 0.22, dir: 1)
    rect((10.65, cy + sgn * 0.92 - 0.12), (11.15, cy + sgn * 0.92 + 0.12), fill: white, stroke: 0.6pt)
    line(
      (11.55, cy + sgn * 0.92), (10.18, cy + sgn * 0.92),
      mark: (end: "stealth", fill: black, scale: 0.9),
      stroke: 1.1pt,
    )
  }

  line((5.05, cy), (12.15, cy), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  content((0.95, cy + 2.25), text(size: 9pt, style: "italic")[campana])
  line((1.55, cy + 2.08), (2.00, cy + 1.45), stroke: 0.55pt + luma(50))
  line((1.55, cy + 2.08), (6.95, cy + 1.25), stroke: 0.55pt + luma(50))

  content((1.25, cy - 2.20), text(size: 9pt, style: "italic")[spingidisco/i])
  line((2.35, cy - 2.15), (9.82, cy - 1.15), stroke: 0.55pt + luma(50))

  // =========================================================================
  // PARTE INFERIORE: INNESTO MULTIDISCO ELETTROMAGNETICO (SEMISEZIONE)
  // =========================================================================
  let ay = 0.72
  let ysh2 = 0.55

  line((1.25, ay), (11.35, ay), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(80)))

  rect((2.55, ay - ysh2), (10.25, ay + ysh2), fill: white, stroke: 0.95pt)
  bezier((10.25, ay + ysh2), (10.25, ay - ysh2), (10.65, ay + 0.35), (10.65, ay - 0.35), stroke: 0.9pt)
  rect((2.35, ay - ysh2 + 0.08), (2.55, ay + ysh2 - 0.08), fill: gray.transparentize(80%), stroke: 0.75pt)

  let yhub = ay + ysh2 + 0.52
  rect((2.65, ay + ysh2), (9.75, yhub), fill: gray.transparentize(84%), stroke: 0.9pt)
  hatch-rect(2.65, ay + ysh2, 9.75, yhub, step: 0.26, dir: -1)

  let yfl-top = 4.65
  let ydr-lo = 3.42
  let ydr-hi = 3.82
  line(
    (1.65, ay - 0.45), (1.65, yfl-top), (2.45, yfl-top), (2.45, ydr-hi),
    (6.28, ydr-hi), (6.52, ydr-hi - 0.22), (6.52, ydr-lo),
    (2.35, ydr-lo), (2.35, ay - 0.45),
    close: true,
    fill: gray.transparentize(86%),
    stroke: 0.95pt,
  )
  hatch-rect(1.65, ydr-lo, 2.45, yfl-top, step: 0.26, dir: 1)
  hatch-rect(2.45, ydr-lo, 6.45, ydr-hi, step: 0.26, dir: 1)
  rect((1.65, 4.10), (2.45, 4.42), fill: white, stroke: 0.75pt)
  line((1.35, 4.26), (2.80, 4.26), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))
  rect((1.65, ay - 0.45), (2.35, ydr-lo), fill: white, stroke: 0.85pt)

  rect((2.85, yhub), (3.88, ydr-lo), fill: gray.transparentize(88%), stroke: 0.85pt)
  hatch-rect(2.85, yhub, 3.88, yhub + 0.35, step: 0.20, dir: 1)
  circle((3.36, 2.66), radius: 0.20, fill: white, stroke: 0.8pt)
  circle((3.36, 2.66), radius: 0.10, stroke: 0.7pt)
  line((2.65, 2.66), (4.10, 2.66), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  let xpk0 = 3.92
  let dt = 0.23
  for k in range(9) {
    let x0 = xpk0 + k * dt
    let is-outer = calc.rem(k, 2) == 0
    if is-outer {
      rect((x0, yhub + 0.12), (x0 + dt - 0.02, ydr-lo + 0.22), fill: gray.transparentize(78%), stroke: 0.7pt)
    } else {
      rect((x0, yhub - 0.14), (x0 + dt - 0.02, ydr-lo - 0.08), fill: luma(175), stroke: 0.7pt)
    }
  }
  line((xpk0, ydr-lo + 0.22), (xpk0 + 9 * dt, ydr-lo + 0.22), stroke: 0.65pt)
  line((xpk0, yhub - 0.14), (xpk0 + 9 * dt, yhub - 0.14), stroke: 0.65pt)

  let xpl0 = xpk0 + 9 * dt + 0.02
  let xpl1 = xpl0 + 0.34
  rect((xpl0, yhub), (xpl1, ydr-lo), fill: gray.transparentize(82%), stroke: 0.9pt)
  hatch-rect(xpl0, yhub, xpl1, ydr-lo, step: 0.20, dir: -1)

  let xel0 = xpl1 + 0.14
  let xel1 = 9.05
  rect((xel0, yhub), (xel1, 3.68), fill: gray.transparentize(85%), stroke: 0.95pt)
  hatch-rect(xel0, yhub, xel1, 3.68, step: 0.26, dir: 1)

  let xb0 = 7.20
  let xb1 = 8.48
  let yb0 = 2.38
  let yb1 = 3.16
  rect((xb0, yb0), (xb1, yb1), fill: white, stroke: 0.9pt)
  rect((xb0 + 0.08, yb0 + 0.08), (xb1 - 0.08, yb1 - 0.08), fill: rgb("#f3f4f6"), stroke: 0.75pt)
  let gx = xb0 + 0.20
  while gx < xb1 - 0.10 {
    line((gx, yb0 + 0.08), (gx, yb1 - 0.08), stroke: 0.4pt + luma(90))
    gx += 0.15
  }
  let gy = yb0 + 0.20
  while gy < yb1 - 0.10 {
    line((xb0 + 0.08, gy), (xb1 - 0.08, gy), stroke: 0.4pt + luma(90))
    gy += 0.15
  }

  let xan0 = 9.18
  let xan1 = 9.75
  rect((xan0, yhub), (xan1, 3.62), fill: gray.transparentize(82%), stroke: 0.9pt)
  hatch-rect(xan0, yhub, xan1, 3.62, step: 0.22, dir: -1)

  let yt-hi = 3.36
  rect((xpl0 + 0.10, yt-hi - 0.10), (xan1 - 0.12, yt-hi + 0.10), fill: white, stroke: 0.8pt)
  line((xpl0 - 0.15, yt-hi), (xan1 + 0.25, yt-hi), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  let yt-lo = 2.02
  rect((6.85, yt-lo - 0.22), (8.45, yt-lo + 0.22), fill: white, stroke: 0.75pt)
  rect((xpl0 + 0.10, yt-lo - 0.08), (xan1 - 0.12, yt-lo + 0.08), fill: white, stroke: 0.8pt)
  for k in range(6) {
    let xm = 7.05 + k * 0.22
    circle((xm, yt-lo + 0.15), radius: 0.055, fill: luma(110), stroke: 0.5pt)
    circle((xm, yt-lo - 0.15), radius: 0.055, fill: luma(110), stroke: 0.5pt)
  }
  line((xpl0 - 0.15, yt-lo), (xan1 + 0.25, yt-lo), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  rect((6.55, 3.68), (7.45, 4.02), fill: gray.transparentize(78%), stroke: 0.85pt)
  hatch-rect(6.55, 3.68, 7.45, 4.02, step: 0.18, dir: -1)
  rect((7.75, 3.68), (8.65, 4.02), fill: gray.transparentize(78%), stroke: 0.85pt)
  hatch-rect(7.75, 3.68, 8.65, 4.02, step: 0.18, dir: -1)
  line((6.92, 4.02), (6.92, 4.25), stroke: 0.75pt)
  line((7.12, 4.02), (7.12, 4.25), stroke: 0.75pt)
  line((7.02, 4.02), (7.02, 4.42), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  content((7.02, 4.62), text(size: 11pt, weight: "bold")[+])

  line((8.10, 4.02), (8.10, 4.25), stroke: 0.75pt)
  line((8.30, 4.02), (8.30, 4.25), stroke: 0.75pt)
  line((8.20, 4.02), (8.20, 4.42), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  content((8.20, 4.62), text(size: 11pt, weight: "bold")[$-$])

  content((10.55, 3.22), text(size: 8.5pt, style: "italic")[elettro-\ magnete], anchor: "west")
  line((10.48, 3.22), (8.25, 2.75), stroke: 0.55pt + luma(50))

  content((10.55, 2.02), text(size: 8.5pt, style: "italic")[molle], anchor: "west")
  line((10.48, 2.02), (8.15, 1.88), stroke: 0.55pt + luma(50))
})
