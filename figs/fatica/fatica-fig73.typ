// Figura estratta da fatica.typ (riga 5208) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  // BBox: x in [-0.65, 7.35] (dx=8.0), y in [0.10, 4.30], length=1.0cm -> larghezza = 8.00 cm <= 8.2 cm
  import draw: line, rect, circle, content

  let period-pts = (
    (0.35, 0.55), (0.75, -0.25), (1.10, 0.25), (1.45, -0.55),
    (1.80, 1.00), (2.15, -0.35), (2.50, 0.45), (2.90, -0.85),
    (3.35, 0.55), (3.75, -0.25), (4.10, 0.25), (4.45, -0.55),
    (4.80, 1.00), (5.15, -0.35), (5.50, 0.45), (5.90, -0.85),
    (6.35, 0.55), (6.75, -0.25),
  )
  let amp = 0.62

  // --- Pannello superiore: finestra periodica generica ---
  let y-top = 3.05
  rect((0.95, y-top - 0.62), (3.95, y-top + 0.72), fill: black.transparentize(92%), stroke: none)
  line((0.0, y-top), (7.00, y-top), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
  line((0.0, y-top - 0.72), (0.0, y-top + 0.85), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
  content((-0.12, y-top + 0.83), anchor: "east", text(size: 7.5pt)[$sigma$])
  content((7.08, y-top), anchor: "west", text(size: 7.5pt)[$t$])

  let top-pts = period-pts.map(p => (p.at(0), y-top + amp * p.at(1)))
  line(..top-pts, stroke: (paint: black, thickness: 0.95pt))

  line((0.95, y-top - 0.65), (0.95, y-top + 0.82), stroke: (paint: luma(90), thickness: 0.75pt, dash: "dashed"))
  line((3.95, y-top - 0.65), (3.95, y-top + 0.82), stroke: (paint: luma(90), thickness: 0.75pt, dash: "dashed"))
  line((0.95, y-top + 0.86), (3.95, y-top + 0.86), mark: (start: ">", end: ">", scale: 0.45), stroke: 0.65pt)
  content((2.45, y-top + 0.94), anchor: "south", text(size: 7.2pt)[Finestra generica ($T$)])

  // --- Pannello inferiore: finestra traslata "periodico tra max" ---
  let y-bot = 0.90
  let y-max = y-bot + amp * 1.00
  rect((1.80, y-bot - 0.62), (4.80, y-max), fill: rgb("#1f77b4").transparentize(86%), stroke: none)
  line((0.0, y-bot), (7.00, y-bot), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
  line((0.0, y-bot - 0.72), (0.0, y-bot + 0.85), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
  content((-0.12, y-bot + 0.83), anchor: "east", text(size: 7.5pt)[$sigma$])
  content((7.08, y-bot), anchor: "west", text(size: 7.5pt)[$t$])

  let bot-pts = period-pts.map(p => (p.at(0), y-bot + amp * p.at(1)))
  line(..bot-pts, stroke: (paint: black, thickness: 0.95pt))

  line((1.80, y-max), (4.80, y-max), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))
  line((1.80, y-bot - 0.65), (1.80, y-max + 0.16), stroke: (paint: rgb("#1f77b4"), thickness: 1.2pt))
  line((4.80, y-bot - 0.65), (4.80, y-max + 0.16), stroke: (paint: rgb("#1f77b4"), thickness: 1.2pt))
  circle((1.80, y-max), radius: 0.055, fill: rgb("#1f77b4"), stroke: none)
  circle((4.80, y-max), radius: 0.055, fill: rgb("#1f77b4"), stroke: none)

  content((1.66, y-max + 0.04), anchor: "east", text(size: 7.2pt, fill: rgb("#1f77b4"))[$sigma_"max"$])
  content((4.94, y-max + 0.04), anchor: "west", text(size: 7.2pt, fill: rgb("#1f77b4"))[$sigma_"max"$])
  line((1.80, y-max + 0.22), (4.80, y-max + 0.22), mark: (start: ">", end: ">", scale: 0.45), stroke: (paint: rgb("#1f77b4"), thickness: 0.75pt))
  content((3.30, y-max + 0.30), anchor: "south", text(size: 7.2pt, fill: rgb("#1f77b4"), weight: "bold")[Periodico tra max ($T$)])
})
