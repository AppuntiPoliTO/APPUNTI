// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // ===== PANNELLO SINISTRO: MODELLO A 2 MASSE =====
  content((1.7, 3.82), text(size: 9pt, weight: "bold")[Modello a 2 masse])

  line((0.35, 0.35), (3.05, 0.35), stroke: 1.1pt)
  for i in range(9) {
    let x = 0.52 + i * 0.29
    line((x, 0.35), (x - 0.16, 0.17), stroke: 0.5pt)
  }

  let xs1 = 1.12
  line(
    (xs1, 0.35), (xs1, 0.55),
    (xs1 - 0.14, 0.63), (xs1 + 0.14, 0.73),
    (xs1 - 0.14, 0.83), (xs1 + 0.14, 0.93),
    (xs1 - 0.14, 1.03), (xs1, 1.10), (xs1, 1.28),
    stroke: 0.8pt,
  )
  content((0.68, 0.82), text(size: 8.5pt)[$k_1$])

  let xd1 = 2.28
  line((xd1, 0.35), (xd1, 0.65), stroke: 0.8pt)
  line((xd1 - 0.16, 0.98), (xd1 - 0.16, 0.65), (xd1 + 0.16, 0.65), (xd1 + 0.16, 0.98), stroke: 0.8pt)
  line((xd1 - 0.11, 0.82), (xd1 + 0.11, 0.82), stroke: 0.95pt)
  line((xd1, 0.82), (xd1, 1.28), stroke: 0.8pt)
  content((2.72, 0.82), text(size: 8.5pt)[$c_1$])

  rect((0.82, 1.28), (2.58, 1.98), fill: gray.transparentize(84%), stroke: 0.95pt)
  content((1.70, 1.63), text(size: 9.5pt)[$m_1$])

  line(
    (xs1, 1.98), (xs1, 2.13),
    (xs1 - 0.12, 2.20), (xs1 + 0.12, 2.29),
    (xs1 - 0.12, 2.38), (xs1 + 0.12, 2.47),
    (xs1 - 0.12, 2.56), (xs1, 2.63), (xs1, 2.78),
    stroke: 0.8pt,
  )
  content((0.68, 2.38), text(size: 8.5pt)[$k_2$])

  line((xd1, 1.98), (xd1, 2.22), stroke: 0.8pt)
  line((xd1 - 0.14, 2.52), (xd1 - 0.14, 2.22), (xd1 + 0.14, 2.22), (xd1 + 0.14, 2.52), stroke: 0.8pt)
  line((xd1 - 0.09, 2.38), (xd1 + 0.09, 2.38), stroke: 0.95pt)
  line((xd1, 2.38), (xd1, 2.78), stroke: 0.8pt)
  content((2.72, 2.38), text(size: 8.5pt)[$c_2$])

  rect((1.02, 2.78), (2.38, 3.32), fill: rgb("#2563eb").transparentize(84%), stroke: (paint: rgb("#1d4ed8"), thickness: 0.95pt))
  content((1.70, 3.05), text(size: 9pt, fill: rgb("#1d4ed8"))[$m_2$])

  line((2.92, 1.38), (2.92, 1.92), mark: (end: "stealth", fill: rgb("#dc2626"), scale: 0.85), stroke: (paint: rgb("#dc2626"), thickness: 1.05pt))
  content((3.18, 1.64), text(size: 8pt, fill: rgb("#dc2626"))[$x_1$])

  line((2.92, 3.30), (2.92, 2.76), mark: (end: "stealth", fill: rgb("#1d4ed8"), scale: 0.85), stroke: (paint: rgb("#1d4ed8"), thickness: 1.05pt))
  content((3.18, 3.04), text(size: 8pt, fill: rgb("#1d4ed8"))[$x_2$])

  content((3.04, 2.38), text(size: 7pt, style: "italic", fill: luma(60))[contro-\ fase], anchor: "west")

  // ===== PANNELLO DESTRO: RISPOSTA IN FREQUENZA (FRF) =====
  let ox = 4.65
  let oy = 0.42
  let sx = 2.65
  content((ox + 2.75, 3.82), text(size: 9pt, weight: "bold")[Risposta in frequenza (FRF)])

  line((ox, oy), (ox + 5.65, oy), mark: (end: "stealth", fill: black, scale: 0.95), stroke: 0.95pt)
  line((ox, oy), (ox, oy + 3.18), mark: (end: "stealth", fill: black, scale: 0.95), stroke: 0.95pt)
  content((ox + 5.55, oy - 0.28), text(size: 9pt)[$omega$])
  content((ox - 0.42, oy + 3.08), text(size: 9pt)[$|X_1|$])

  let x0 = ox + 1.0 * sx
  line((x0, oy), (x0, oy + 2.95), stroke: (dash: "dotted", thickness: 0.65pt, paint: luma(110)))
  content((x0, oy - 0.28), text(size: 8.5pt)[$omega_0$])

  let scale-y = 0.44
  let z1 = 0.08
  let mu = 0.22
  let f = 0.84
  let z2 = 0.16

  let pts1 = ()
  let y1-max = 0.0
  for i in range(0, 141) {
    let w = 0.04 + i * 0.0145
    let amp = scale-y / calc.sqrt(calc.pow(1 - w * w, 2) + calc.pow(2 * z1 * w, 2))
    let y = calc.min(2.85, amp)
    if y > y1-max { y1-max = y }
    pts1.push((ox + w * sx, oy + y))
  }
  line(..pts1, stroke: (dash: "dashed", paint: rgb("#dc2626"), thickness: 1.05pt))

  let pts2 = ()
  let w-p1 = 0.0
  let y-p1 = 0.0
  let w-p2 = 0.0
  let y-p2 = 0.0
  for i in range(0, 141) {
    let w = 0.04 + i * 0.0145
    let nr = f * f - w * w
    let ni = 2 * z2 * f * w
    let dr = (1 - w * w) * (f * f - w * w) - mu * f * f * w * w - (2 * z1 * w) * (2 * z2 * f * w)
    let di = (2 * z2 * f * w) * (1 - (1 + mu) * w * w) + (2 * z1 * w) * (f * f - w * w)
    let amp = scale-y * calc.sqrt(nr * nr + ni * ni) / calc.sqrt(dr * dr + di * di)
    let y = calc.min(2.85, amp)
    if w < 0.88 and y > y-p1 { y-p1 = y; w-p1 = w }
    if w > 0.92 and y > y-p2 { y-p2 = y; w-p2 = w }
    pts2.push((ox + w * sx, oy + y))
  }
  line(..pts2, stroke: (paint: rgb("#1d4ed8"), thickness: 1.35pt))

  let xp1 = ox + w-p1 * sx
  let xp2 = ox + w-p2 * sx
  line((xp1, oy), (xp1, oy + y-p1), stroke: (dash: "dotted", thickness: 0.6pt, paint: rgb("#1d4ed8").lighten(25%)))
  content((xp1 - 0.06, oy - 0.28), text(size: 8pt, fill: rgb("#1d4ed8"))[$omega_1$])
  line((xp2, oy), (xp2, oy + y-p2), stroke: (dash: "dotted", thickness: 0.6pt, paint: rgb("#1d4ed8").lighten(25%)))
  content((xp2 + 0.08, oy - 0.28), text(size: 8pt, fill: rgb("#1d4ed8"))[$omega_2$])

  let y-ref = calc.max(y-p1, y-p2)
  line((ox + 0.55, oy + y1-max), (x0, oy + y1-max), stroke: (dash: "dotted", thickness: 0.55pt, paint: rgb("#dc2626").lighten(20%)))
  line((ox + 0.55, oy + y-ref), (xp2, oy + y-ref), stroke: (dash: "dotted", thickness: 0.55pt, paint: rgb("#1d4ed8").lighten(20%)))
  line(
    (ox + 0.68, oy + y-ref + 0.06), (ox + 0.68, oy + y1-max - 0.06),
    mark: (start: "stealth", end: "stealth", fill: luma(50), scale: 0.72),
    stroke: (paint: luma(50), thickness: 0.75pt),
  )
  content((ox + 0.80, oy + (y1-max + y-ref) / 2), text(size: 7.2pt, style: "italic", fill: luma(45))[riduzione\ del picco], anchor: "west")

  line((ox + 3.45, oy + 2.80), (ox + 4.00, oy + 2.80), stroke: (dash: "dashed", paint: rgb("#dc2626"), thickness: 1.05pt))
  content((ox + 4.08, oy + 2.80), text(size: 7.8pt)[1 massa], anchor: "west")
  line((ox + 3.45, oy + 2.42), (ox + 4.00, oy + 2.42), stroke: (paint: rgb("#1d4ed8"), thickness: 1.35pt))
  content((ox + 4.08, oy + 2.42), text(size: 7.8pt)[2 masse (doppio volano)], anchor: "west")
})
