// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  let pt(r, a) = (r * calc.cos(a), r * calc.sin(a))

  let draw-spring(p1, p2, n: 6, amp: 0.13) = {
    let dx = p2.at(0) - p1.at(0)
    let dy = p2.at(1) - p1.at(1)
    let L = calc.sqrt(dx * dx + dy * dy)
    let ux = dx / L
    let uy = dy / L
    let nx = -uy
    let ny = ux
    let pts = (p1,)
    let margin = 0.22
    let eff = L - 2 * margin
    let p-start = (p1.at(0) + ux * margin, p1.at(1) + uy * margin)
    pts.push(p-start)
    for i in range(n) {
      let t1 = margin + (i + 0.25) / n * eff
      let t2 = margin + (i + 0.75) / n * eff
      pts.push((p1.at(0) + ux * t1 + nx * amp, p1.at(1) + uy * t1 + ny * amp))
      pts.push((p1.at(0) + ux * t2 - nx * amp, p1.at(1) + uy * t2 - ny * amp))
    }
    let p-end = (p1.at(0) + ux * (L - margin), p1.at(1) + uy * (L - margin))
    pts.push(p-end)
    pts.push(p2)
    line(..pts, stroke: 0.75pt)
  }

  line((-2.55, 0), (2.55, 0), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((0, -2.55), (0, 2.55), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line(pt(2.45, 210deg), pt(0, 0), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line(pt(2.45, 330deg), pt(0, 0), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  circle((0, 0), radius: 2.28, stroke: 1.0pt)
  circle((0, 0), radius: 2.13, stroke: 0.8pt)

  for k in range(3) {
    let base = k * 120deg
    let a-tail = base - 25deg
    let a-head = base + 68deg
    let r-out = 2.02
    let r-lin = 1.90

    let spts = ()
    for j in range(17) {
      let a = a-tail + j * (a-head - a-tail) / 16
      spts.push(pt(r-out, a))
    }
    spts.push(pt(1.58, a-head + 2deg))
    spts.push(pt(1.30, base + 42deg))
    spts.push(pt(1.25, base + 15deg))
    spts.push(pt(1.42, base - 8deg))
    spts.push(pt(1.78, a-tail - 2deg))
    line(..spts, close: true, fill: gray.transparentize(88%), stroke: 0.9pt)

    let lpts = ()
    for j in range(15) {
      let a = (a-tail + 4deg) + j * (a-head - a-tail - 8deg) / 14
      lpts.push(pt(r-lin, a))
    }
    line(..lpts, stroke: 0.55pt)
  }

  let hpts = ()
  for k in range(3) {
    let a0 = 90deg + k * 120deg
    hpts.push(pt(0.84, a0 - 30deg))
    hpts.push(pt(1.18, a0 - 11deg))
    hpts.push(pt(1.22, a0))
    hpts.push(pt(1.18, a0 + 11deg))
    hpts.push(pt(0.84, a0 + 30deg))
    for j in range(1, 5) {
      let a = a0 + 30deg + j * 12deg
      hpts.push(pt(0.84, a))
    }
  }
  line(..hpts, close: true, fill: white, stroke: 0.9pt)

  circle((0, 0), radius: 0.48, fill: white, stroke: 0.85pt)
  rect((-0.09, -0.58), (0.09, -0.46), fill: white, stroke: 0.7pt)

  for k in range(3) {
    let a-hub = 90deg + k * 120deg
    let a-shoe = a-hub + 65deg
    let p-hub = pt(1.04, a-hub)
    let p-shoe = pt(1.56, a-shoe)

    let dx = p-shoe.at(0) - p-hub.at(0)
    let dy = p-shoe.at(1) - p-hub.at(1)
    let L = calc.sqrt(dx * dx + dy * dy)
    let nx = -dy / L * 0.14
    let ny = dx / L * 0.14
    line(
      (p-hub.at(0) + nx, p-hub.at(1) + ny),
      (p-shoe.at(0) + nx, p-shoe.at(1) + ny),
      (p-shoe.at(0) - nx, p-shoe.at(1) - ny),
      (p-hub.at(0) - nx, p-hub.at(1) - ny),
      close: true, fill: white, stroke: 0.75pt,
    )

    circle(p-hub, radius: 0.17, fill: white, stroke: 0.8pt)
    circle(p-hub, radius: 0.09, fill: white, stroke: 0.65pt)
    circle(p-shoe, radius: 0.16, fill: white, stroke: 0.8pt)
    circle(p-shoe, radius: 0.08, fill: white, stroke: 0.65pt)

    let p-sp1 = pt(1.66, a-hub - 26deg)
    let p-sp2 = pt(1.68, a-hub + 24deg)
    draw-spring(p-sp1, p-sp2, n: 6, amp: 0.12)
    circle(p-sp1, radius: 0.065, fill: black, stroke: none)
    circle(p-sp2, radius: 0.065, fill: black, stroke: none)
  }
})
