// Figura estratta da collegamenti filettati.typ (riga 705) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  let plate-fill = black.transparentize(78%)
  let arrow-fill = rgb("#00b884")

  let draw-joint(dx) = {
    // Piastre (colore uniforme)
    line(
      (1.68 + dx, 1.35), (2.30 + dx, 1.35), (2.30 + dx, 0.34), (1.42 + dx, 0.34),
      (1.476 + dx, 0.579), (1.531 + dx, 0.830), (1.596 + dx, 1.088),
      close: true, fill: plate-fill, stroke: none
    )
    line((1.68 + dx, 1.35), (2.30 + dx, 1.35), (2.30 + dx, 0.34), (1.42 + dx, 0.34), stroke: 1pt)
    bezier((1.68 + dx, 1.35), (1.42 + dx, 0.34), (1.55 + dx, 1.00), (1.50 + dx, 0.65), stroke: 1pt)

    line(
      (1.44 + dx, -0.34), (2.30 + dx, -0.34), (2.30 + dx, -1.35), (1.68 + dx, -1.35),
      (1.600 + dx, -1.088), (1.538 + dx, -0.830), (1.486 + dx, -0.579),
      close: true, fill: plate-fill, stroke: none
    )
    line((1.44 + dx, -0.34), (2.30 + dx, -0.34), (2.30 + dx, -1.35), (1.68 + dx, -1.35), stroke: 1pt)
    bezier((1.44 + dx, -0.34), (1.68 + dx, -1.35), (1.50 + dx, -0.65), (1.56 + dx, -1.00), stroke: 1pt)

    // Gambo della vite
    line(
      (1.00 + dx, 0.30), (3.28 + dx, 0.30), (3.38 + dx, 0.22),
      (3.38 + dx, -0.22), (3.28 + dx, -0.30), (1.00 + dx, -0.30),
      fill: white, stroke: 1pt
    )
    line((1.57 + dx, -0.30), (1.57 + dx, 0.30), stroke: 0.75pt)
    line((1.57 + dx, 0.30), (1.65 + dx, 0.22), (3.38 + dx, 0.22), stroke: 0.75pt)
    line((1.57 + dx, -0.30), (1.65 + dx, -0.22), (3.38 + dx, -0.22), stroke: 0.75pt)
    line((3.28 + dx, -0.30), (3.28 + dx, 0.30), stroke: 0.75pt)
    line((1.00 + dx, -0.45), (1.00 + dx, 0.45), stroke: (dash: "dash-dotted", thickness: 0.6pt))

    // Dado esagonale (3 facce + smussi + archi di smusso)
    let x0 = 2.30 + dx
    let x1 = x0 + 0.45
    let x2 = x0 + 0.54

    // Riempimento uniforme delle 3 facce del dado
    line((x0, 0.28), (x0, 0.52), (x0 + 0.04, 0.56), (x1, 0.56), (x2, 0.47), (x2, 0.28), close: true, fill: luma(242), stroke: none)
    rect((x0, -0.28), (x2, 0.28), fill: white, stroke: none)
    line((x0, -0.28), (x2, -0.28), (x2, -0.47), (x1, -0.56), (x0 + 0.04, -0.56), (x0, -0.52), close: true, fill: luma(222), stroke: none)

    // Spigoli delle facce e archi di smusso
    line((x0, 0.28), (x1, 0.28), stroke: 0.8pt)
    line((x0, -0.28), (x1, -0.28), stroke: 0.8pt)
    bezier((x1, 0.56), (x1, 0.28), (x2 - 0.01, 0.49), (x2 - 0.01, 0.35), stroke: 0.75pt)
    bezier((x1, 0.28), (x1, -0.28), (x2 + 0.01, 0.14), (x2 + 0.01, -0.14), stroke: 0.75pt)
    bezier((x1, -0.28), (x1, -0.56), (x2 - 0.01, -0.35), (x2 - 0.01, -0.49), stroke: 0.75pt)

    // Contorno esterno del dado
    line(
      (x0, 0.52), (x0 + 0.04, 0.56), (x1, 0.56), (x2, 0.47),
      (x2, -0.47), (x1, -0.56), (x0 + 0.04, -0.56), (x0, -0.52),
      close: true, stroke: 1pt
    )

    // Asse di simmetria
    line((0.90 + dx, 0), (3.55 + dx, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  }

  // Giunto sinistro
  draw-joint(0)
  line((1.00, 0.13), (0.51, 0.13), (0.51, 0.25), (0.25, 0), (0.51, -0.25), (0.51, -0.13), (1.00, -0.13), close: true, fill: arrow-fill, stroke: 0.85pt)
  line((0.78, -0.72), (1.28, -0.72), (1.28, -0.60), (1.54, -0.85), (1.28, -1.10), (1.28, -0.98), (0.78, -0.98), close: true, fill: arrow-fill, stroke: 0.85pt)
  content((0.65, 0.35), text(size: 9pt)[$F_v$], anchor: "south")
  content((0.68, -0.85), text(size: 9pt)[$F_p$], anchor: "east")

  // Giunto destro
  draw-joint(5.20)
  line((6.20, 0.13), (5.36, 0.13), (5.36, 0.25), (5.10, 0), (5.36, -0.25), (5.36, -0.13), (6.20, -0.13), close: true, fill: arrow-fill, stroke: 0.85pt)
  line((6.20, -0.72), (6.48, -0.72), (6.48, -0.60), (6.74, -0.85), (6.48, -1.10), (6.48, -0.98), (6.20, -0.98), close: true, fill: arrow-fill, stroke: 0.85pt)
  line((7.50, -0.77), (7.82, -0.77), (7.82, -0.69), (7.98, -0.85), (7.82, -1.01), (7.82, -0.93), (7.50, -0.93), close: true, fill: arrow-fill, stroke: 0.85pt)
  content((5.70, 0.35), text(size: 9pt)[$F'_v$], anchor: "south")
  content((6.10, -0.85), text(size: 9pt)[$F'_p$], anchor: "east")
  content((8.12, -0.85), text(size: 9pt)[$C$], anchor: "west")
})
