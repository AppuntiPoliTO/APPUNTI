// Figura estratta da capitoli/cap7.typ (riga 122) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#cetz.canvas(length: 1.1cm, {
    import cetz.draw: *
    // Pareti condotta
    line((0, 1.2), (5, 1.2), stroke: 1.6pt + black)
    line((0, -1.2), (5, -1.2), stroke: 1.6pt + black)
    // Tratteggio parete solida
    for x in (0.4, 1.0, 1.6, 2.2, 2.8, 3.4, 4.0, 4.6) {
      line((x, 1.2), (x + 0.25, 1.45), stroke: 0.6pt + c-aux)
      line((x, -1.2), (x - 0.25, -1.45), stroke: 0.6pt + c-aux)
    }
    // Sezioni S1 e S2 (volume di controllo)
    line((0.5, -1.2), (0.5, 1.2), stroke: (paint: c-norm, thickness: 1.2pt, dash: "dashed"))
    line((4.5, -1.2), (4.5, 1.2), stroke: (paint: c-norm, thickness: 1.2pt, dash: "dashed"))
    content((0.85, -0.9), text(size: 9pt, fill: c-norm)[$S_1$])
    content((4.15, -0.9), text(size: 9pt, fill: c-norm)[$S_2$])
    content((2.5, 0.85), text(size: 9pt)[$S_w$])

    // Normali n1, n2, nw
    line((0.5, 0.35), (-0.4, 0.35), mark: (end: ">"), stroke: 1.1pt + c-norm)
    content((-0.4, 0.68), text(size: 9pt, fill: c-norm)[$arrow(n)_1$])

    line((4.5, 0.35), (5.4, 0.35), mark: (end: ">"), stroke: 1.1pt + c-norm)
    content((5.4, 0.68), text(size: 9pt, fill: c-norm)[$arrow(n)_2$])

    line((2.5, 1.2), (2.5, 2.0), mark: (end: ">"), stroke: 1.1pt + c-norm)
    content((2.9, 1.75), text(size: 9pt, fill: c-norm)[$arrow(n)_w$])

    // Velocità u1 e u2
    line((0.1, -0.35), (1.2, -0.35), mark: (end: ">"), stroke: 1.1pt + c-vel)
    content((1.1, -0.05), text(size: 9pt, fill: c-vel)[$arrow(u)_1$])

    line((4.1, -0.35), (5.2, -0.35), mark: (end: ">"), stroke: 1.1pt + c-vel)
    content((5.1, -0.05), text(size: 9pt, fill: c-vel)[$arrow(u)_2$])

    // Asse x
    line((1.8, -1.8), (3.4, -1.8), mark: (end: ">"), stroke: 0.8pt + black)
    content((3.65, -1.8), text(size: 9pt)[$x$])
  })
