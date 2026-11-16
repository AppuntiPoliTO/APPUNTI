// Figura estratta da main.typ (riga 1293) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *
  // Assi I_i e I_ij
  line((0, 0), (6.4, 0), mark: (end: ">"), stroke: 0.8pt)
  content((6.3, -0.4), text(size: 8pt)[$I_i$])
  line((0.5, 2.7), (0.5, -2.7), mark: (end: ">"), stroke: 0.8pt)
  content((0.9, -2.6), text(size: 8pt)[$I_(i j)$])

  let cx = 3.4
  let R = 2.0
  circle((cx, 0), radius: R, stroke: 1.3pt)
  circle((cx, 0), radius: 0.07, fill: black)

  let px = cx + R * calc.cos(54deg)
  let py = R * calc.sin(54deg)
  let qx = cx - R * calc.cos(54deg)
  let qy = -R * calc.sin(54deg)

  // Proiezioni continue come in slide 22
  line((0.5, py), (px, py), stroke: 0.6pt)
  line((px, 0), (px, py), stroke: 0.6pt)
  line((0.5, qy), (qx, qy), stroke: 0.6pt)
  line((qx, 0), (qx, qy), stroke: 0.6pt)

  // Diametro PQ
  line((qx, qy), (px, py), stroke: 0.7pt)

  // Rette tratteggiate per le direzioni principali zeta e eta (Slide 22)
  // Retta zeta: passa per (cx - R, 0) e (px, py)
  line((cx - R - 1.1, -0.58), (px + 1.3, py + 0.68), stroke: (dash: "dotted", thickness: 0.8pt), mark: (end: ">"))
  content((px + 1.25, py + 0.35), text(size: 9pt)[$zeta$])

  // Retta eta: passa per (cx + R, 0) e (px, py)
  line((cx + R + 0.7, -1.35), (px - 0.75, py + 1.45), stroke: (dash: "dotted", thickness: 0.8pt), mark: (end: ">"))
  content((px - 0.5, py + 1.4), text(size: 9pt)[$eta$])

  // Arco per l'angolo alpha tra l'asse I_i e la retta zeta
  arc((cx - R, 0), start: 0deg, stop: 27deg, radius: 1.4, anchor: "origin", mark: (end: ">", size: 0.14), stroke: 0.6pt)
  content((cx - R + 1.65, 0.38), text(size: 9pt)[$alpha$])

  // Punti di intersezione I_eta e I_zeta
  circle((cx - R, 0), radius: 0.08, fill: black)
  circle((cx + R, 0), radius: 0.08, fill: black)

  // Etichette
  content((0.0, py), text(size: 8pt)[$-I_(y z)$])
  content((0.05, qy), text(size: 8pt)[$I_(y z)$])
  content((px, -0.35), text(size: 8pt)[$I_z$])
  content((qx + 0.25, -0.35), text(size: 8pt)[$I_y$])
  content((cx - R - 0.25, 0.38), text(size: 9pt)[$I_eta$])
  content((cx + R + 0.3, 0.38), text(size: 9pt)[$I_zeta$])
})
