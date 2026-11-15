// Figura estratta da molle.typ (riga 1440) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 4 barre verticali
  line((0.95, 0.00), (1.45, 0.00), (1.45, 1.55), (0.95, 1.55), close: true, fill: black.transparentize(82%), stroke: 0.8pt)
  line((3.15, 0.00), (3.65, 0.00), (3.65, 1.85), (3.15, 1.85), close: true, fill: black.transparentize(82%), stroke: 0.8pt)
  line((5.35, 0.00), (5.85, 0.00), (5.85, 2.30), (5.35, 2.30), close: true, fill: black.transparentize(82%), stroke: 0.8pt)
  line((7.55, 0.00), (8.05, 0.00), (8.05, 2.70), (7.55, 2.70), close: true, fill: black.transparentize(82%), stroke: 0.8pt)

  // Linea di base
  line((0.15, 0.00), (8.25, 0.00), stroke: 0.8pt)

  // Linee di riferimento orizzontali
  line((0.95, 1.55), (0.15, 1.55), stroke: 0.6pt)
  line((3.15, 1.85), (0.15, 1.85), stroke: 0.6pt)
  line((5.35, 2.30), (4.55, 2.30), stroke: 0.6pt)
  line((7.55, 2.70), (6.75, 2.70), stroke: 0.6pt)

  // Quote verticali (ben distanziate dalle barre adiacenti)
  line((0.72, 0.00), (0.72, 1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((0.72, 2.42), (0.72, 1.85), mark: (end: ">"), stroke: 0.6pt)
  line((2.90, 0.00), (2.90, 1.85), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.10, 0.00), (5.10, 2.30), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((7.30, 0.00), (7.30, 2.70), mark: (start: ">", end: ">"), stroke: 0.6pt)

  // Frecce di carico F_max e F_min
  line((3.40, 2.95), (3.40, 1.85), mark: (end: ">"), stroke: 1.8pt)
  line((5.60, 3.05), (5.60, 2.30), mark: (end: ">"), stroke: 1.8pt)

  // Grande freccia orizzontale cava in basso
  line((1.75, -0.73), (6.65, -0.73), (6.65, -0.58), (8.00, -0.85), (6.65, -1.12), (6.65, -0.97), (1.75, -0.97), (2.35, -0.85), close: true, stroke: 0.8pt)

  // Etichette con ampi margini anti-sovrapposizione
  content((0.60, 0.78), [$L_b$], anchor: "east")
  content((0.60, 2.22), [$i dot g_(italic("res"))$], anchor: "east")
  content((2.76, 0.92), [$L_(F "max")$], anchor: "east")
  content((3.24, 2.45), [$F_("max")$], anchor: "east")
  content((4.96, 1.15), [$L_(F "min")$], anchor: "east")
  content((5.44, 2.72), [$F_("min")$], anchor: "east")
  content((7.16, 1.35), [$L_0$], anchor: "east")
  content((1.58, -0.85), [Dati $d$, $i$ e $k$], anchor: "east")
})
