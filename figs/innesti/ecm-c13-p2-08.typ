// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  let pt(cx, cy, r, a) = (cx + r * calc.cos(a), cy + r * calc.sin(a))

  line((-4.3, 0), (0.3, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-1.75, -2.05), (-1.75, 2.05), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((-1.15, 2.00), (-1.15, 1.48), (-0.05, 1.48), (-0.05, -1.48), (-1.15, -1.48), (-1.15, -2.00), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((-3.55, 1.25), (-3.55, 1.78), (-1.75, 1.78), (-1.75, 1.45), (-2.05, 1.45), (-2.05, 1.25), close: true, fill: gray.transparentize(84%), stroke: 0.85pt)
  line((-3.80, 1.12), (-3.80, 1.78), (-3.55, 1.78), (-3.55, 1.12), close: true, fill: gray.transparentize(78%), stroke: 0.8pt)
  line((-3.55, -1.25), (-3.55, -1.78), (-1.75, -1.78), (-1.75, -1.45), (-3.55, -1.45), close: true, fill: gray.transparentize(84%), stroke: 0.85pt)
  line((-3.80, -1.12), (-3.80, -1.78), (-3.55, -1.78), (-3.55, -1.12), close: true, fill: gray.transparentize(78%), stroke: 0.8pt)

  rect((-3.40, 0.82), (-2.05, 1.45), fill: white, stroke: 0.85pt)
  line((-3.45, 1.135), (-2.00, 1.135), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  rect((-3.75, 0.82), (-3.42, 1.12), fill: gray.transparentize(65%), stroke: 0.7pt)
  circle((-3.58, 0.97), radius: 0.04, fill: black, stroke: none)
  rect((-3.75, -1.12), (-3.42, -0.82), fill: gray.transparentize(65%), stroke: 0.7pt)
  circle((-3.58, -0.97), radius: 0.04, fill: black, stroke: none)

  rect((-3.80, 0.42), (-2.05, 0.82), fill: gray.transparentize(84%), stroke: 0.85pt)
  rect((-3.80, -0.82), (-2.05, -0.42), fill: gray.transparentize(84%), stroke: 0.85pt)
  rect((-3.40, -1.45), (-2.05, -0.82), fill: gray.transparentize(90%), stroke: 0.65pt)

  line((-2.05, 0.82), (-1.75, 0.72), (-0.25, 0.72), (-0.25, 0.50), (-1.75, 0.50), (-2.05, 0.42), close: true, fill: gray.transparentize(84%), stroke: 0.85pt)
  line((-2.05, -0.82), (-1.75, -0.72), (-0.25, -0.72), (-0.25, -0.50), (-1.75, -0.50), (-2.05, -0.42), close: true, fill: gray.transparentize(84%), stroke: 0.85pt)
  line((-3.80, 0.42), (-3.80, -0.42), stroke: 0.85pt)
  line((-2.05, 0.42), (-2.05, -0.42), stroke: 0.7pt)
  line((-3.80, 0.14), (-2.05, 0.14), stroke: 0.5pt)
  line((-3.80, -0.14), (-2.05, -0.14), stroke: 0.5pt)

  let cx = 2.95
  let cy = 0.0
  line((cx - 2.15, cy), (cx + 2.15, cy), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((cx, cy - 2.15), (cx, cy + 2.15), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  circle((cx, cy), radius: 1.78, fill: gray.transparentize(84%), stroke: 0.95pt)
  circle((cx, cy), radius: 1.38, fill: white, stroke: 0.85pt)

  let cam-pts = ()
  for k in range(5) {
    let a = 90deg + k * 72deg
    cam-pts.push(pt(cx, cy, 1.16, a - 26deg))
    cam-pts.push(pt(cx, cy, 0.84, a + 24deg))
    cam-pts.push(pt(cx, cy, 1.18, a + 36deg))
  }
  line(..cam-pts, close: true, fill: gray.transparentize(82%), stroke: 0.85pt)

  for k in (0, 1, 2, 4) {
    let a = 90deg + k * 72deg
    let p-rol = pt(cx, cy, 1.15, a - 4deg)
    let p-m1 = pt(cx, cy, 1.06, a + 29deg)
    let p-m2 = pt(cx, cy, 1.11, a + 7deg)
    let dx = p-m2.at(0) - p-m1.at(0)
    let dy = p-m2.at(1) - p-m1.at(1)
    let L = calc.sqrt(dx * dx + dy * dy)
    let ux = dx / L
    let uy = dy / L
    let nx = -uy * 0.06
    let ny = ux * 0.06
    let spts = (p-m1,)
    for j in range(4) {
      let t1 = (j + 0.25) / 4 * L
      let t2 = (j + 0.75) / 4 * L
      spts.push((p-m1.at(0) + ux * t1 + nx, p-m1.at(1) + uy * t1 + ny))
      spts.push((p-m1.at(0) + ux * t2 - nx, p-m1.at(1) + uy * t2 - ny))
    }
    spts.push(p-m2)
    line(..spts, stroke: 0.65pt)
    circle(p-rol, radius: 0.22, fill: white, stroke: 0.85pt)
  }

  let cpts = (pt(cx, cy, 0.85, -10deg),)
  for j in range(13) {
    let a = -10deg - j * 90deg / 12
    cpts.push(pt(cx, cy, 1.78, a))
  }
  cpts.push(pt(cx, cy, 0.85, -100deg))
  for j in range(9) {
    let a = -100deg + j * 90deg / 8
    cpts.push(pt(cx, cy, 0.85, a))
  }
  line(..cpts, close: true, fill: white, stroke: 0.85pt)

  for ab in (-32deg, -82deg) {
    let bx = cx + 1.54 * calc.cos(ab)
    let by = cy + 1.54 * calc.sin(ab)
    let hex = ()
    for j in range(6) {
      let ah = j * 60deg
      hex.push((bx + 0.13 * calc.cos(ah), by + 0.13 * calc.sin(ah)))
    }
    line(..hex, close: true, fill: white, stroke: 0.75pt)
  }

  circle((cx, cy), radius: 0.56, fill: white, stroke: 0.85pt)
  let ak = 225deg
  let kx = cx + 0.56 * calc.cos(ak)
  let ky = cy + 0.56 * calc.sin(ak)
  let kdx = calc.cos(ak) * 0.11
  let kdy = calc.sin(ak) * 0.11
  let knx = -calc.sin(ak) * 0.08
  let kny = calc.cos(ak) * 0.08
  line(
    (kx + knx, ky + kny),
    (kx + kdx + knx, ky + kdy + kny),
    (kx + kdx - knx, ky + kdy - kny),
    (kx - knx, ky - kny),
    close: true, fill: white, stroke: 0.75pt,
  )

  arc((cx, cy), start: 96deg, stop: 124deg, radius: 2.02, anchor: "origin", mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.85pt))
  arc((cx, cy), start: 122deg, stop: 92deg, radius: 1.90, anchor: "origin", mark: (end: ">"), stroke: 0.9pt)
  content((cx - 0.85, cy + 2.15), text(size: 8.5pt)[_libera_], anchor: "east")
  content((cx + 0.12, cy + 2.05), text(size: 8.5pt)[_innestata_], anchor: "west")

  arc((cx, cy), start: 150deg, stop: 75deg, radius: 0.41, anchor: "origin", mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.7pt))
  arc((cx, cy), start: 78deg, stop: 155deg, radius: 0.26, anchor: "origin", mark: (end: ">"), stroke: 0.75pt)
})
