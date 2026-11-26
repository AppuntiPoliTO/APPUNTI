// Figura estratta da fatica.typ (riga 1886) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.68cm, {
    // BBox: x in [-0.80, 5.20] (dx=6.00), y in [-0.85, 3.70], length=1.28cm -> larghezza = 7.68 cm <= 8.2 cm
    import draw: *

    let map-x(d) = (d - 10.0) / 38.0
    let map-y(cs) = (cs - 0.60) * 8.0

    // Griglia cartesiana (d ogni 10 mm da 10 a 200, C_S ogni 0.05)
    for i in range(0, 20) {
      let xg = map-x(10 + i * 10)
      line((xg, 0), (xg, 3.20), stroke: 0.35pt + luma(205))
    }
    for j in range(0, 9) {
      let yg = map-y(0.60 + j * 0.05)
      line((0, yg), (5.00, yg), stroke: 0.35pt + luma(205))
    }

    // Cornice degli assi
    rect((0, 0), (5.00, 3.20), stroke: 0.85pt + black)

    // Etichette asse Y
    let y-vals = (0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.00)
    let y-strs = ("0.60", "0.65", "0.70", "0.75", "0.80", "0.85", "0.90", "0.95", "1.00")
    for idx in range(0, y-vals.len()) {
      let yy = map-y(y-vals.at(idx))
      if y-strs.at(idx) == "0.70" {
        content((-0.08, yy), anchor: "east")[#box(stroke: 0.7pt + red.transparentize(10%), inset: 1.5pt, fill: white)[#text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[0.70]]]
      } else {
        content((-0.10, yy), anchor: "east")[#text(size: 7pt)[#y-strs.at(idx)]]
      }
    }
    content((0, 3.35), anchor: "south")[#text(size: 8pt, weight: "bold")[$C_S$]]

    // Etichette asse X (ogni 20 mm da 10 a 190, bordo destro a 200)
    for k in range(0, 10) {
      let d = 10 + k * 20
      content((map-x(d), -0.12), anchor: "north")[#text(size: 7pt)[#d]]
    }
    content((2.50, -0.48), anchor: "north")[#text(size: 7.5pt, weight: "bold")[$d$ [mm]]]

    // Asintoto orizzontale C_S = 0.70
    let y-asym = map-y(0.70)
    line((0, y-asym), (5.12, y-asym), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))

    // Curva sperimentale C_S(d) fedele all'abaco (Slide 9)
    let curve-data = (
      (10, 1.000), (15, 0.950), (20, 0.910), (25, 0.883), (30, 0.862),
      (40, 0.830), (50, 0.806), (60, 0.788), (70, 0.773), (80, 0.761),
      (90, 0.750), (100, 0.741), (110, 0.733), (120, 0.726), (130, 0.720),
      (140, 0.715), (150, 0.711), (160, 0.707), (170, 0.704), (180, 0.702),
      (190, 0.700), (200, 0.700),
    )
    let curve-pts = curve-data.map(p => (map-x(p.at(0)), map-y(p.at(1))))
    line(..curve-pts, stroke: 1.35pt + black)

    // Etichetta curva Flessione e torsione
    content((2.95, 2.65), anchor: "center")[
      #box(fill: white, stroke: 0.6pt + black, inset: 2.5pt, radius: 1.5pt)[
        #text(size: 7pt, weight: "bold")[Flessione e torsione]
      ]
    ]
    line((2.05, 2.55), (map-x(46), map-y(0.816)), stroke: 0.6pt + black, mark: (end: ">", scale: 0.55))

    // Etichetta asintoto C_L = 0.70
    content((3.10, 0.36), anchor: "center")[
      #box(fill: white, stroke: 0.6pt + red.transparentize(10%), inset: 2.2pt, radius: 1.5pt)[
        #set align(center)
        #text(size: 6.7pt)[Asintoto: valore medio $C_L = 0.70$ \ (trazione-compressione)]
      ]
    ]
    line((2.40, 0.61), (2.40, y-asym - 0.02), stroke: 0.6pt + red.transparentize(10%), mark: (end: ">", scale: 0.55))
  })
