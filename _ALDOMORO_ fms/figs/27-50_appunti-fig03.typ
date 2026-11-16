// Figura estratta da 27-50_appunti.typ (riga 161) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // 1. Provino a sezione circolare (in alto, y = 4.2)
  // Teste di serraggio
  rect((0, 3.85), (1.1, 4.55), stroke: 1pt)
  rect((6.1, 3.85), (7.2, 4.55), stroke: 1pt)
  // Tratto calibrato centrale
  line((1.6, 4.42), (5.6, 4.42), stroke: 1pt)
  line((1.6, 3.98), (5.6, 3.98), stroke: 1pt)
  // Raccordi tra teste e tratto utile
  bezier((1.1, 4.55), (1.6, 4.42), (1.3, 4.42), (1.45, 4.42), stroke: 1pt)
  bezier((1.1, 3.85), (1.6, 3.98), (1.3, 3.98), (1.45, 3.98), stroke: 1pt)
  bezier((5.6, 4.42), (6.1, 4.55), (5.75, 4.42), (5.9, 4.42), stroke: 1pt)
  bezier((5.6, 3.98), (6.1, 3.85), (5.75, 3.98), (5.9, 3.98), stroke: 1pt)
  // Asse
  line((-0.2, 4.2), (7.4, 4.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Sezione ribaltata circolare S_0
  circle((3.1, 4.2), radius: 0.22, fill: luma(220), stroke: 0.9pt)
  line((3.25, 4.35), (3.65, 4.7), mark: (start: ">"), stroke: 0.6pt)
  content((3.7, 4.7), text(size: 7pt)[$S_0$], anchor: "west")
  // Tacche di riferimento per L_0
  line((2.1, 4.05), (2.1, 4.35), stroke: 0.9pt)
  line((5.1, 4.05), (5.1, 4.35), stroke: 0.9pt)
  line((2.1, 4.05), (2.1, 2.2), stroke: 0.5pt)
  line((5.1, 4.05), (5.1, 2.2), stroke: 0.5pt)
  line((2.1, 3.55), (5.1, 3.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.6, 3.6), text(size: 7pt)[$L_0$], anchor: "south")
  // Quota diametro d
  line((5.6, 4.42), (7.85, 4.42), stroke: 0.5pt)
  line((5.6, 3.98), (7.85, 3.98), stroke: 0.5pt)
  line((7.7, 3.98), (7.7, 4.42), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((7.6, 4.2), text(size: 7pt)[$d$], anchor: "east")

  // 2. Provino a sezione rettangolare (al centro, y = 2.2)
  rect((0, 1.85), (1.1, 2.55), stroke: 1pt)
  rect((6.1, 1.85), (7.2, 2.55), stroke: 1pt)
  line((1.6, 2.42), (5.6, 2.42), stroke: 1pt)
  line((1.6, 1.98), (5.6, 1.98), stroke: 1pt)
  bezier((1.1, 2.55), (1.6, 2.42), (1.3, 2.42), (1.45, 2.42), stroke: 1pt)
  bezier((1.1, 1.85), (1.6, 1.98), (1.3, 1.98), (1.45, 1.98), stroke: 1pt)
  bezier((5.6, 2.42), (6.1, 2.55), (5.75, 2.42), (5.9, 2.42), stroke: 1pt)
  bezier((5.6, 1.98), (6.1, 1.85), (5.75, 1.98), (5.9, 1.98), stroke: 1pt)
  line((-0.2, 2.2), (7.4, 2.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Sezione ribaltata rettangolare S_0 di spessore a
  rect((3.0, 1.98), (3.2, 2.42), fill: luma(220), stroke: 0.9pt)
  line((3.0, 2.42), (3.0, 2.75), stroke: 0.5pt)
  line((3.2, 2.42), (3.2, 2.75), stroke: 0.5pt)
  line((2.7, 2.68), (3.0, 2.68), mark: (end: ">"), stroke: 0.6pt)
  line((3.5, 2.68), (3.2, 2.68), mark: (end: ">"), stroke: 0.6pt)
  content((3.1, 2.72), text(size: 7pt)[$a$], anchor: "south")
  line((3.2, 2.3), (3.6, 2.65), mark: (start: ">"), stroke: 0.6pt)
  content((3.65, 2.65), text(size: 7pt)[$S_0$], anchor: "west")
  // Tacche
  line((2.1, 2.05), (2.1, 2.35), stroke: 0.9pt)
  line((5.1, 2.05), (5.1, 2.35), stroke: 0.9pt)
  // Quota larghezza b
  line((5.6, 2.42), (7.85, 2.42), stroke: 0.5pt)
  line((5.6, 1.98), (7.85, 1.98), stroke: 0.5pt)
  line((7.7, 1.98), (7.7, 2.42), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((7.6, 2.2), text(size: 7pt)[$b$], anchor: "east")
  // Etichetta teste di serraggio
  content((7.1, 3.2), text(size: 7pt)[teste di serraggio], anchor: "center")
  line((6.6, 3.4), (6.4, 3.85), mark: (end: ">"), stroke: 0.6pt)
  line((6.6, 3.0), (6.4, 2.55), mark: (end: ">"), stroke: 0.6pt)

  // Quote L_c e L_t
  line((1.6, 4.42), (1.6, 1.3), stroke: 0.5pt)
  line((5.6, 4.42), (5.6, 1.3), stroke: 0.5pt)
  line((1.6, 1.45), (5.6, 1.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.6, 1.5), text(size: 7pt)[$L_c$], anchor: "south")
  line((0, 1.85), (0, 0.9), stroke: 0.5pt)
  line((7.2, 1.85), (7.2, 0.9), stroke: 0.5pt)
  line((0, 1.05), (7.2, 1.05), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.6, 1.1), text(size: 7pt)[$L_t$], anchor: "south")

  // 3. Provino allungato con strizione (in basso, y = 0.0)
  rect((0, -0.35), (1.1, 0.35), stroke: 1pt)
  rect((6.7, -0.35), (7.8, 0.35), stroke: 1pt)
  line((1.6, 0.2), (3.4, 0.2), stroke: 1pt)
  line((1.6, -0.2), (3.4, -0.2), stroke: 1pt)
  line((4.4, 0.2), (6.2, 0.2), stroke: 1pt)
  line((4.4, -0.2), (6.2, -0.2), stroke: 1pt)
  // Raccordi teste
  bezier((1.1, 0.35), (1.6, 0.2), (1.3, 0.2), (1.45, 0.2), stroke: 1pt)
  bezier((1.1, -0.35), (1.6, -0.2), (1.3, -0.2), (1.45, -0.2), stroke: 1pt)
  bezier((6.2, 0.2), (6.7, 0.35), (6.35, 0.2), (6.5, 0.2), stroke: 1pt)
  bezier((6.2, -0.2), (6.7, -0.35), (6.35, -0.2), (6.5, -0.2), stroke: 1pt)
  // Zona di strizione centrale attorno a x = 3.9
  bezier((3.4, 0.2), (3.9, 0.1), (3.6, 0.2), (3.7, 0.1), stroke: 1pt)
  bezier((3.9, 0.1), (4.4, 0.2), (4.1, 0.1), (4.2, 0.2), stroke: 1pt)
  bezier((3.4, -0.2), (3.9, -0.1), (3.6, -0.2), (3.7, -0.1), stroke: 1pt)
  bezier((3.9, -0.1), (4.4, -0.2), (4.1, -0.1), (4.2, -0.2), stroke: 1pt)
  line((3.9, -0.25), (3.9, 0.25), stroke: 0.8pt)
  line((-0.2, 0), (8.0, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Sezione ristretta S_u
  circle((2.8, 0), radius: 0.1, fill: luma(220), stroke: 0.8pt)
  line((2.87, 0.07), (3.25, 0.42), mark: (start: ">"), stroke: 0.6pt)
  content((3.3, 0.42), text(size: 7pt)[$S_u$], anchor: "west")
  // Quota L_u
  line((2.0, -0.15), (2.0, 0.15), stroke: 0.9pt)
  line((5.8, -0.15), (5.8, 0.15), stroke: 0.9pt)
  line((2.0, -0.15), (2.0, -0.7), stroke: 0.5pt)
  line((5.8, -0.15), (5.8, -0.7), stroke: 0.5pt)
  line((2.0, -0.55), (5.8, -0.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.9, -0.5), text(size: 7pt)[$L_u$], anchor: "south")
})
