// Figura estratta da main.typ (riga 1225) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  import draw: *
  // Assi
  line((0, 0), (6.5, 0), mark: (end: ">"), name: "x")
  content((6.5, -0.4), $I_i$)
  line((0.5, 2.8), (0.5, -2.8), mark: (end: ">"), name: "y")
  content((0.9, -2.7), $I_(i j)$)

  // Cerchio di Mohr (centro in (3.5, 0), raggio 2.1)
  let cx = 3.5
  let R = 2.1
  circle((cx, 0), radius: R, stroke: 1.2pt)
  circle((cx, 0), radius: 0.07, fill: black)

  // Punti P e Q (angolo 50 gradi)
  let px = cx + R * calc.cos(50deg)
  let py = R * calc.sin(50deg)
  let qx = cx - R * calc.cos(50deg)
  let qy = -R * calc.sin(50deg)

  // Linee tratteggiate di proiezione
  line((0.5, py), (px, py), stroke: (dash: "dashed", thickness: 0.6pt))
  line((px, 0), (px, py), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.5, qy), (qx, qy), stroke: (dash: "dashed", thickness: 0.6pt))
  line((qx, 0), (qx, qy), stroke: (dash: "dashed", thickness: 0.6pt))

  // Diametro PQ
  line((qx, qy), (px, py), stroke: 0.8pt)

  // Rette direzioni principali (passanti per P e per I_min / I_max)
  line((cx - R, 0), (px, py), stroke: (dash: "dotted", thickness: 0.8pt))
  line((cx + R, 0), (px, py), stroke: (dash: "dotted", thickness: 0.8pt))

  // Punti notevoli
  circle((px, py), radius: 0.1, fill: black)
  content((px + 0.35, py + 0.25), $P$)
  circle((qx, qy), radius: 0.1, fill: black)
  content((qx - 0.35, qy - 0.3), $Q$)
  circle((cx - R, 0), radius: 0.09, fill: black)
  circle((cx + R, 0), radius: 0.09, fill: black)

  // Etichette
  content((0.0, py), $-I_(y z)$)
  content((0.0, qy), $I_(y z)$)
  content((px, -0.35), $I_z$)
  content((qx + 0.25, -0.35), $I_y$)
  content((cx - R - 0.3, 0.35), $I_"min" (I_eta)$)
  content((cx + R + 0.9, 0.35), $I_"MAX" (I_zeta)$)
})
