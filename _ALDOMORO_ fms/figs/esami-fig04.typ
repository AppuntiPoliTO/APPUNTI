// Figura estratta da esami.typ (riga 369) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.5cm, {
    import draw: *

    // Telaio A-B-C-D-E-F
    line((0, 0), (0, 2.0), (4.0, 2.0), (4.0, 0), stroke: 1pt)

    // Cerniera in C e vincoli tratteggiati
    circle((2.0, 2.0), radius: 0.08, fill: white, stroke: 1pt)
    circle((0, 0), radius: 0.06, fill: white, stroke: 0.6pt)
    circle((3.0, 2.0), radius: 0.06, fill: white, stroke: 0.6pt)
    circle((4.0, 0), radius: 0.06, fill: white, stroke: 0.6pt)

    // Forza F e carico distribuito q
    line((-0.7, 2.0), (-0.02, 2.0), stroke: 1pt, mark: (end: ">"))
    line((0, 2.45), (4.0, 2.45), stroke: 0.6pt)
    line((0, 2.45), (0, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((0.5, 2.45), (0.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((1.0, 2.45), (1.0, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((1.5, 2.45), (1.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((2.0, 2.45), (2.0, 2.1), stroke: 0.6pt, mark: (end: ">"))
    line((2.5, 2.45), (2.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((3.0, 2.45), (3.0, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((3.5, 2.45), (3.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
    line((4.0, 2.45), (4.0, 2.02), stroke: 0.6pt, mark: (end: ">"))

    // Reazioni vincolari V_A, V_D, O_F, V_F
    line((0, -0.55), (0, -0.06), stroke: 1pt, mark: (end: ">"))
    line((3.0, 1.35), (3.0, 1.94), stroke: 1pt, mark: (end: ">"))
    line((3.35, 0), (3.94, 0), stroke: 1pt, mark: (end: ">"))
    line((4.0, -0.55), (4.0, -0.06), stroke: 1pt, mark: (end: ">"))

    // Segni di sezione e cerchi dei tratti I, II, III, IV
    line((-0.15, 0.9), (0.15, 0.95), stroke: 0.6pt)
    circle((0.38, 0.85), radius: 0.18, stroke: 0.6pt)

    line((2.15, 1.85), (2.2, 2.15), stroke: 0.6pt)
    circle((2.22, 1.45), radius: 0.18, stroke: 0.6pt)

    line((3.7, 1.85), (3.75, 2.15), stroke: 0.6pt)
    circle((3.7, 1.55), radius: 0.18, stroke: 0.6pt)

    line((3.85, 0.9), (4.15, 0.95), stroke: 0.6pt)
    circle((4.42, 0.9), radius: 0.18, stroke: 0.6pt)

    // Etichette (tutte con text(size: 7pt))
    content((-0.4, 2.12), text(size: 7pt)[$F$], anchor: "south")
    content((0.15, 1.85), text(size: 7pt)[$B$], anchor: "north")
    content((1.82, 1.85), text(size: 7pt)[$C$], anchor: "north")
    content((2.4, 2.55), text(size: 7pt)[$q$], anchor: "south")
    content((2.82, 1.88), text(size: 7pt)[$D$], anchor: "north")
    content((3.08, 1.55), text(size: 7pt)[$V_D$], anchor: "west")
    content((4.15, 1.88), text(size: 7pt)[$E$], anchor: "west")
    content((-0.15, 0.1), text(size: 7pt)[$A$], anchor: "east")
    content((0.1, -0.35), text(size: 7pt)[$V_A$], anchor: "west")
    content((3.55, 0.12), text(size: 7pt)[$O_F$], anchor: "south")
    content((4.15, 0.15), text(size: 7pt)[$F$], anchor: "west")
    content((4.1, -0.35), text(size: 7pt)[$V_F$], anchor: "west")
    content((0.38, 0.85), text(size: 7pt)[$"I"$], anchor: "center")
    content((2.22, 1.45), text(size: 7pt)[$"II"$], anchor: "center")
    content((3.7, 1.55), text(size: 7pt)[$"III"$], anchor: "center")
    content((4.42, 0.9), text(size: 7pt)[$"IV"$], anchor: "center")
  })
