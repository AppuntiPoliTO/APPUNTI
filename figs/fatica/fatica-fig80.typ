// Figura estratta da fatica.typ (riga 934) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let circ = sym.degree
#let circ = sym.degree

#canvas(length: 1.45cm, {
  // BBox: x in [-4.55, 4.75] (dx=9.30), y in [-0.65, 4.68], length=1.35cm -> larghezza = 12.56 cm <= 17.0 cm
  import draw: *

  let rm = 4.0
  let rp = 3.0
  let sd = 1.6
  // Intersezione Goodman-snervamento trazione: (2.333, 0.667)
  let x_gt = 2.333
  let y_gt = 0.667
  // Intersezione plateau-snervamento compressione: (-1.40, 1.60)
  let x_pc = -1.40

  // Triangolo di plasticizzazione (sicuro a fatica, plasticizzato staticamente)
  line(
    (x_gt, y_gt), (rm, 0), (rp, 0),
    close: true,
    fill: orange.transparentize(82%),
    stroke: none,
  )

  // Poligono di sicurezza campito (fatica + snervamento)
  line(
    (-rp, 0), (x_pc, sd), (0, sd), (x_gt, y_gt), (rp, 0),
    close: true,
    fill: black.transparentize(86%),
    stroke: 1.2pt,
  )

  // Assi principali
  line((-4.45, 0), (4.55, 0), stroke: 0.9pt, mark: (end: ">", fill: black, scale: 0.75))
  line((0, -0.15), (0, 4.52), stroke: 0.9pt, mark: (end: ">", fill: black, scale: 0.75))
  content((4.58, -0.12), anchor: "north", text(size: 8.5pt)[$sigma_m$])
  content((0, 4.58), anchor: "south", text(size: 8.5pt)[$sigma_a$])

  // Inviluppo statico Rm (45 deg esterno)
  line((-rm, 0), (0, rm), (rm, 0), stroke: (paint: black.transparentize(55%), thickness: 0.65pt, dash: "dotted"))

  // Prosecuzioni rette di snervamento a 45 deg
  line((x_pc, sd), (0, rp), stroke: (dash: "dashed", thickness: 0.75pt))
  line((0, rp), (x_gt, y_gt), stroke: (dash: "dashed", thickness: 0.75pt))

  // Prosecuzione retta di Goodman
  line((x_gt, y_gt), (rm, 0), stroke: (dash: "dashed", thickness: 0.85pt))

  // Parabola di Gerber (17 punti da x=0 a x=rm)
  let gerber = ()
  for k in range(0, 17) {
    let xk = rm * k / 16
    let yk = sd * (1 - (xk / rm) * (xk / rm))
    gerber.push((xk, yk))
  }
  line(..gerber, stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))

  // Punti sperimentali indicativi intorno alla parabola di Gerber
  let exp_pts = ((0.45, 1.56), (0.95, 1.49), (1.68, 1.34), (2.25, 1.06), (2.90, 0.72), (3.45, 0.38))
  for (px, py) in exp_pts {
    circle((px, py), radius: 0.045, fill: black, stroke: none)
  }

  // Raggi a rapporto di ciclo costante (R=0 e R=-inf)
  line((0, 0), (2.70, 2.70), stroke: (paint: black.transparentize(40%), thickness: 0.65pt, dash: "dashed"))
  content((2.76, 2.76), anchor: "south-west", text(size: 7.5pt)[$R = 0$])

  line((0, 0), (-2.70, 2.70), stroke: (paint: black.transparentize(40%), thickness: 0.65pt, dash: "dashed"))
  content((-2.76, 2.76), anchor: "south-east", text(size: 7.5pt)[$R = -infinity$])

  // Punto di lavoro sicuro P e confronto verticale ISO con sigma_D
  let wx = 1.30
  let wy = 0.52
  let wy_lim = sd * (1 - wx / rm) // 1.08
  line((wx, 0), (wx, wy), (0, wy), stroke: (paint: red.transparentize(20%), thickness: 0.65pt, dash: "dotted"))
  line((wx, wy), (wx, wy_lim), stroke: (paint: red.transparentize(20%), thickness: 0.65pt, dash: "dashed"))
  circle((wx, wy_lim), radius: 0.045, fill: white, stroke: 0.75pt + red.transparentize(10%))
  content((wx + 0.06, wy_lim + 0.03), anchor: "south-west", text(size: 7pt, fill: red.transparentize(10%))[$sigma_D$])
  circle((wx, wy), radius: 0.06, fill: red.transparentize(10%), stroke: 0.7pt + black)
  content((wx + 0.09, wy), anchor: "west", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[Lavoro])

  // Etichette assi (senza collisioni)
  content((-rm, -0.10), anchor: "north", text(size: 7.5pt)[$-R_m$])
  content((-rp, -0.10), anchor: "north", text(size: 7.5pt)[$-R_"p0.2"$])
  content((rp, -0.10), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
  content((rm, -0.10), anchor: "north", text(size: 7.5pt)[$R_m$])

  content((-0.12, sd + 0.14), anchor: "south-east", text(size: 7.5pt)[$sigma_(D-1)$])
  content((0.12, rp + 0.05), anchor: "south-west", text(size: 7.5pt)[$R_"p0.2"$])
  content((0.12, rm + 0.03), anchor: "south-west", text(size: 7.5pt)[$R_m$])

  // Etichette interne ed esterne con richiami
  content((-1.08, 0.48), anchor: "center", text(size: 7.2pt, weight: "bold")[Poligono \ sicuro])

  content((2.35, 2.05), anchor: "west", text(size: 7.2pt, fill: rgb("#1f77b4"))[Parabola di Gerber])
  line((2.30, 2.03), (1.85, 1.28), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", fill: rgb("#1f77b4"), scale: 0.55))

  content((3.40, 1.48), anchor: "south", text(size: 7.2pt)[Retta di Goodman])
  line((3.28, 1.44), (2.72, 0.54), stroke: 0.55pt, mark: (end: ">", fill: black, scale: 0.55))

  content((3.85, 0.92), anchor: "west", text(size: 6.8pt, fill: rgb("#b85d00"))[Plasticizzazione])
  line((3.80, 0.88), (3.12, 0.20), stroke: (paint: rgb("#b85d00"), thickness: 0.55pt), mark: (end: ">", fill: rgb("#b85d00"), scale: 0.55))

  content((-3.55, 1.45), anchor: "center", text(size: 7pt)[Snervamento \ ($plus.minus 45^circ$)])
  line((-3.15, 1.20), (-2.30, 0.72), stroke: 0.55pt, mark: (end: ">", fill: black, scale: 0.55))

  // Riquadro N = costante
  rect((2.55, 3.45), (4.55, 4.30), fill: white, stroke: 0.7pt)
  content((3.55, 3.875), anchor: "center", text(size: 7pt)[
    #align(center)[
      $N = text("costante")$ \
      ($2 dot.op 10^6$ acciai)
    ]
  ])
})
