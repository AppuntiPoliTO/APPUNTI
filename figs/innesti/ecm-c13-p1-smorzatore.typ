#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  content((1.7, 3.75), text(size: 8.5pt, weight: "bold")[Modello a 2 masse])

  line((0.4, 0.35), (3.0, 0.35), stroke: 1.1pt)
  for i in range(9) {
    let x = 0.55 + i * 0.28
    line((x, 0.35), (x - 0.16, 0.17), stroke: 0.5pt)
  }

  let xs1 = 1.15
  line((xs1, 0.35), (xs1, 0.55), (xs1 - 0.14, 0.63), (xs1 + 0.14, 0.73), (xs1 - 0.14, 0.83), (xs1 + 0.14, 0.93), (xs1 - 0.14, 1.03), (xs1, 1.10), (xs1, 1.28), stroke: 0.75pt)
  content((0.68, 0.82), text(size: 8pt)[$k_1$])

  let xd1 = 2.25
  line((xd1, 0.35), (xd1, 0.65), stroke: 0.75pt)
  line((xd1 - 0.16, 0.98), (xd1 - 0.16, 0.65), (xd1 + 0.16, 0.65), (xd1 + 0.16, 0.98), stroke: 0.75pt)
  line((xd1 - 0.11, 0.82), (xd1 + 0.11, 0.82), stroke: 0.9pt)
  line((xd1, 0.82), (xd1, 1.28), stroke: 0.75pt)
  content((2.68, 0.82), text(size: 8pt)[$c_1$])

  rect((0.85, 1.28), (2.55, 1.98), fill: gray.transparentize(82%), stroke: 0.9pt)
  content((1.70, 1.63), text(size: 9pt)[$m_1$])

  line((xs1, 1.98), (xs1, 2.13), (xs1 - 0.12, 2.20), (xs1 + 0.12, 2.29), (xs1 - 0.12, 2.38), (xs1 + 0.12, 2.47), (xs1 - 0.12, 2.56), (xs1, 2.63), (xs1, 2.78), stroke: 0.75pt)
  content((0.68, 2.38), text(size: 8pt)[$k_2$])

  line((xd1, 1.98), (xd1, 2.22), stroke: 0.75pt)
  line((xd1 - 0.14, 2.52), (xd1 - 0.14, 2.22), (xd1 + 0.14, 2.22), (xd1 + 0.14, 2.52), stroke: 0.75pt)
  line((xd1 - 0.09, 2.38), (xd1 + 0.09, 2.38), stroke: 0.9pt)
  line((xd1, 2.38), (xd1, 2.78), stroke: 0.75pt)
  content((2.68, 2.38), text(size: 8pt)[$c_2$])

  rect((1.05, 2.78), (2.35, 3.30), fill: blue.transparentize(85%), stroke: (paint: blue.darken(20%), thickness: 0.9pt))
  content((1.70, 3.04), text(size: 8.5pt, fill: blue.darken(25%))[$m_2$])

  line((2.82, 1.45), (2.82, 1.88), mark: (end: ">"), stroke: (paint: red.darken(10%), thickness: 0.9pt))
  line((2.82, 3.25), (2.82, 2.82), mark: (end: ">"), stroke: (paint: blue.darken(20%), thickness: 0.9pt))
  content((3.02, 2.36), text(size: 7pt, style: "italic", fill: luma(60))[contro-\ fase], anchor: "west")

  let ox = 4.65
  let oy = 0.45
  content((ox + 2.45, 3.75), text(size: 8.5pt, weight: "bold")[Risposta in frequenza (FRF)])

  line((ox, oy), (ox + 4.95, oy), mark: (end: ">"), stroke: 0.85pt)
  line((ox, oy), (ox, oy + 3.05), mark: (end: ">"), stroke: 0.85pt)
  content((ox + 4.90, oy - 0.28), text(size: 8.5pt)[$omega$])
  content((ox - 0.35, oy + 2.95), text(size: 8.5pt)[$|X_1|$])

  let x0 = ox + 2.35
  line((x0, oy), (x0, oy + 2.85), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(110)))
  content((x0, oy - 0.26), text(size: 8pt)[$omega_0$])

  let pts1 = ()
  for i in range(0, 121) {
    let w = 0.05 + i * 0.0165
    let amp = 0.40 / calc.sqrt(calc.pow(1 - w * w, 2) + calc.pow(0.15 * w, 2))
    let y = calc.min(2.72, amp)
    pts1.push((ox + w * 2.35, oy + y))
  }
  line(..pts1, stroke: (dash: "dashed", paint: red.darken(10%), thickness: 1.0pt))

  let pts2 = ()
  let mu = 0.22
  let f = 1.0 / (1.0 + mu)
  let z2 = 0.14
  let z1 = 0.03
  for i in range(0, 121) {
    let w = 0.05 + i * 0.0165
    let nr = f * f - w * w
    let ni = 2 * z2 * f * w
    let dr = (1 - w * w) * (f * f - w * w) - mu * f * f * w * w - (2 * z1 * w) * (2 * z2 * f * w)
    let di = (2 * z2 * f * w) * (1 - (1 + mu) * w * w) + (2 * z1 * w) * (f * f - w * w)
    let amp = 0.40 * calc.sqrt(nr * nr + ni * ni) / calc.sqrt(dr * dr + di * di)
    let y = calc.min(2.72, amp)
    pts2.push((ox + w * 2.35, oy + y))
  }
  line(..pts2, stroke: (paint: blue.darken(20%), thickness: 1.25pt))

  line((ox + 2.85, oy + 2.65), (ox + 3.35, oy + 2.65), stroke: (dash: "dashed", paint: red.darken(10%), thickness: 1.0pt))
  content((ox + 3.42, oy + 2.65), text(size: 7.5pt)[1 massa], anchor: "west")
  line((ox + 2.85, oy + 2.30), (ox + 3.35, oy + 2.30), stroke: (paint: blue.darken(20%), thickness: 1.25pt))
  content((ox + 3.42, oy + 2.30), text(size: 7.5pt)[doppio volano], anchor: "west")
})
