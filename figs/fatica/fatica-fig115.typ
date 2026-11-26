// Figura estratta da fatica.typ (riga 4701) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  // BBox: x in [-0.7, 7.3] (dx=8.0), y in [-0.85, 5.25], length=1.0cm -> larghezza = 8.0 cm <= 8.2 cm
  import draw: line, bezier, content

  // --- Pannello superiore: segnale irregolare periodico ---
  line((0, 2.95), (0, 5.15), stroke: 0.7pt, mark: (end: ">"))
  line((-0.1, 3.8), (6.6, 3.8), stroke: 0.7pt, mark: (end: ">"))
  content((-0.18, 5.05), text(size: 8pt)[$sigma$], anchor: "east")
  content((6.72, 3.8), text(size: 8pt)[$t$], anchor: "west")

  let wave = (
    (0.00, 0.15), (0.10, 0.55), (0.20, 0.75), (0.30, 0.25),
    (0.40, -0.40), (0.52, -0.05), (0.65, 0.45), (0.75, 0.05),
    (0.85, -0.65), (0.98, -0.15), (1.10, 0.55), (1.22, 0.20),
    (1.35, -0.25), (1.45, 0.35), (1.55, 0.85), (1.68, 0.10),
    (1.80, -0.75), (1.92, -0.20), (2.05, 0.35), (2.15, 0.05),
    (2.25, -0.35), (2.35, 0.15), (2.45, 0.50), (2.60, 0.15),
  )
  for x0 in (0.3, 2.9) {
    let pts = wave.map(p => (x0 + p.at(0), 3.8 + p.at(1)))
    line(..pts, stroke: (paint: black, thickness: 0.85pt))
  }
  let tail = wave.slice(0, 9).map(p => (5.5 + p.at(0), 3.8 + p.at(1)))
  line(..tail, stroke: (paint: black, thickness: 0.85pt))

  line((0.3, 3.05), (0.3, 5.05), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(35%)))
  line((2.9, 3.05), (2.9, 5.05), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(35%)))
  line((0.3, 4.92), (2.9, 4.92), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.6))
  content((1.6, 5.02), text(size: 7.5pt)[$T$], anchor: "south")

  // --- Pannello inferiore: scomposizione in tre pacchetti con ampiezza e media distinte ---
  line((0, -0.15), (0, 2.15), stroke: 0.7pt, mark: (end: ">"))
  line((-0.1, 0.0), (6.6, 0.0), stroke: 0.7pt, mark: (end: ">"))
  content((-0.18, 2.08), text(size: 8pt)[$sigma$], anchor: "east")
  content((6.72, 0.0), text(size: 8pt)[$t$], anchor: "west")

  let trains = (
    (0.20, 3, 0.28, 1.18, 0.66),
    (2.05, 4, 0.21, 0.88, 0.45),
    (3.90, 5, 0.17, 0.62, 0.27),
  )
  for tr in trains {
    let xs = tr.at(0)
    let nc = tr.at(1)
    let wh = tr.at(2)
    let ym = tr.at(3)
    let amp = tr.at(4)
    let xe = xs + 2 * nc * wh
    line((xs - 0.05, ym), (xe + 0.05, ym), stroke: (dash: "dashed", thickness: 0.65pt, paint: blue.transparentize(20%)))
    for i in range(nc) {
      let xa = xs + 2 * i * wh
      let xb = xa + wh
      let xc = xb + wh
      bezier((xa, ym), (xb, ym), (xa + 0.33 * wh, ym + 1.333 * amp), (xa + 0.67 * wh, ym + 1.333 * amp), stroke: (paint: black, thickness: 0.85pt))
      bezier((xb, ym), (xc, ym), (xb + 0.33 * wh, ym - 1.333 * amp), (xb + 0.67 * wh, ym - 1.333 * amp), stroke: (paint: black, thickness: 0.85pt))
    }
  }
  content((5.72, 0.62), text(size: 7.2pt, fill: blue)[$sigma_"mi"$], anchor: "west")

  line((1.96, -0.35), (1.96, 1.92), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(40%)))
  line((3.81, -0.35), (3.81, 1.92), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(40%)))

  line((0.20, -0.28), (1.88, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
  content((1.04, -0.40), text(size: 7pt)[$n_1, sigma_"a1", sigma_"m1"$], anchor: "north")

  line((2.05, -0.28), (3.73, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
  content((2.89, -0.40), text(size: 7pt)[$n_2, sigma_"a2", sigma_"m2"$], anchor: "north")

  line((3.90, -0.28), (5.60, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
  content((4.75, -0.40), text(size: 7pt)[$n_3, sigma_"a3", sigma_"m3"$], anchor: "north")
})
