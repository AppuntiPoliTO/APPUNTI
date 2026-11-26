// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  let pt(r, a) = (r * calc.cos(a), r * calc.sin(a))

  line((-2.75, 0), (2.75, 0), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((0, -2.75), (0, 2.75), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  let Nout = 24
  let opts = ()
  for i in range(Nout * 10) {
    let a = i * 360deg / (Nout * 10)
    let r = 2.22 + 0.22 * calc.cos(Nout * a)
    opts.push(pt(r, a))
  }
  line(..opts, close: true, fill: gray.transparentize(90%), stroke: 0.85pt)

  let Nin = 12
  let r-root = 1.90
  let r-tip = 1.54
  let ipts = ()
  for i in range(Nin) {
    let a0 = i * 30deg + 3deg
    let a-step = a0 + 8deg
    let a-next = (i + 1) * 30deg + 3deg
    ipts.push(pt(r-root, a0))
    ipts.push(pt(r-tip, a-step))
    ipts.push(pt(r-root, a-next - 1.5deg))
  }
  line(..ipts, close: true, fill: white, stroke: 0.85pt)

  circle((0, 0), radius: 1.44, fill: white, stroke: 0.9pt)
  circle((0, 0), radius: 1.12, stroke: 0.6pt)
  circle((0, 0), radius: 0.54, stroke: 0.85pt)
  rect((-0.65, -0.09), (-0.52, 0.09), fill: white, stroke: 0.75pt)

  for k in range(3) {
    let a-piv = 50deg + k * 120deg
    let p-piv = pt(1.38, a-piv)
    let a-tip = a-piv + 41deg
    let p-tip = pt(1.78, a-tip)

    arc((0, 0), start: a-piv + 4deg, stop: a-piv + 44deg, radius: 1.44, anchor: "origin", stroke: (paint: white, thickness: 1.6pt))
    bezier(pt(1.36, a-piv + 5deg), pt(1.44, a-piv + 44deg), pt(1.18, a-piv + 20deg), pt(1.26, a-piv + 36deg), stroke: 0.65pt)
    bezier(pt(1.30, a-piv + 34deg), pt(1.56, a-piv + 23deg), pt(1.36, a-piv + 25deg), pt(1.46, a-piv + 21deg), stroke: 0.6pt)

    let dx = p-tip.at(0) - p-piv.at(0)
    let dy = p-tip.at(1) - p-piv.at(1)
    let L = calc.sqrt(dx * dx + dy * dy)
    let nx = -dy / L * 0.085
    let ny = dx / L * 0.085
    line(
      (p-piv.at(0) + nx, p-piv.at(1) + ny),
      (p-tip.at(0) + nx * 0.75, p-tip.at(1) + ny * 0.75),
      (p-tip.at(0) - nx * 0.75, p-tip.at(1) - ny * 0.75),
      (p-piv.at(0) - nx, p-piv.at(1) - ny),
      close: true, fill: white, stroke: 0.85pt,
    )
    circle(p-piv, radius: 0.14, fill: white, stroke: 0.85pt)
  }

  arc((0, 0), start: -52deg, stop: 38deg, radius: 1.24, anchor: "origin", mark: (end: ">"), stroke: (paint: red, thickness: 1.4pt))
  arc((0, 0), start: 145deg, stop: 100deg, radius: 1.24, anchor: "origin", mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.75pt))
  arc((0, 0), start: 112deg, stop: 148deg, radius: 1.98, anchor: "origin", mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.75pt))
  arc((0, 0), start: 42deg, stop: 5deg, radius: 1.98, anchor: "origin", mark: (end: ">"), stroke: 0.8pt)

  let p-c = pt(1.76, 91deg)
  let a1 = 132deg
  let a2 = 166deg
  line(p-c, (p-c.at(0) + 1.55 * calc.cos(a1), p-c.at(1) + 1.55 * calc.sin(a1)), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line(p-c, (p-c.at(0) + 1.55 * calc.cos(a2), p-c.at(1) + 1.55 * calc.sin(a2)), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  arc(p-c, start: a1, stop: a2, radius: 1.15, anchor: "origin", stroke: 0.65pt)
  content((p-c.at(0) + 1.42 * calc.cos(149deg), p-c.at(1) + 1.42 * calc.sin(149deg)), text(size: 9.5pt)[$alpha$])

  let p-not = pt(1.58, 71deg)
  line((1.95, 2.85), p-not, mark: (end: ">", fill: black), stroke: 0.65pt)
  content((2.00, 2.95), text(size: 8.5pt)[nottolino], anchor: "west")

  let p-dente = pt(1.76, 25deg)
  line((2.55, 1.95), p-dente, mark: (end: ">", fill: black), stroke: 0.65pt)
  content((2.58, 2.15), text(size: 8.5pt)[denti interni], anchor: "west")
  content((2.58, 1.82), text(size: 8.5pt)[del tamburo], anchor: "west")
})
