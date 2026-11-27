// Figura estratta da fatica.typ (riga 1389) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.46cm, {
  import draw: *

  content((2.5, 4.35), anchor: "south")[#text(size: 8.5pt, weight: "bold")[Scala log--log (equazione di Basquin)]]

  // Griglia logaritmica leggera su x (decadi e sottodecadi)
  for d in (0, 1, 2, 3, 4) {
    for m in (2, 3, 4, 5, 6, 7, 8, 9) {
      let xs = d + calc.log(m, base: 10)
      line((xs, 0.0), (xs, 4.0), stroke: (paint: luma(228), thickness: 0.35pt))
    }
    if d > 0 {
      line((d, 0.0), (d, 4.0), stroke: (paint: luma(195), thickness: 0.5pt))
    }
  }
  // Griglia logaritmica su y
  for s in (200, 300, 400, 500, 600, 700, 800, 900) {
    let ys = 4.0 * (calc.log(s, base: 10) - 2.0)
    line((0.0, ys), (5.0, ys), stroke: (paint: luma(222), thickness: 0.4pt))
  }

  // Cornice pannello sinistro
  rect((0.0, 0.0), (5.0, 4.0), stroke: 0.8pt)

  // Etichette asse x (N)
  for (xi, lbl) in ((0.0, $10^2$), (1.0, $10^3$), (2.0, $10^4$), (3.0, $10^5$), (4.0, $10^6$), (5.0, $10^7$)) {
    content((xi, -0.15), anchor: "north")[#text(size: 7.5pt)[#lbl]]
  }
  content((5.10, 0.12), anchor: "south-west")[#text(size: 8pt)[$N$]]

  // Etichette asse y (sigma_a)
  for (s, lbl) in ((100, [100]), (200, [200]), (500, [500]), (1000, [1000])) {
    let ys = 4.0 * (calc.log(s, base: 10) - 2.0)
    content((-0.12, ys), anchor: "east")[#text(size: 7.5pt)[#lbl]]
  }
  content((-0.78, 2.0), angle: 90deg, anchor: "center")[#text(size: 8pt)[$sigma_a$ (MPa)]]

  // Linee di demarcazione N_F = 10^3 (sigma_F = 850 MPa -> y = 3.718) e N_G = 2*10^6 (sigma_D = 300 MPa -> y = 1.908)
  line((1.0, 0.0), (1.0, 3.718), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.301, 0.0), (4.301, 1.908), stroke: (dash: "dashed", thickness: 0.6pt))

  // Curva S-N log-log: oligociclica (tratteggiata), Basquin F-G (blu), infinita (blu)
  line((0.0, 3.92), (1.0, 3.718), stroke: (dash: "dashed", paint: luma(90), thickness: 0.9pt))
  line((1.0, 3.718), (4.301, 1.908), (5.0, 1.908), stroke: (paint: blue, thickness: 1.35pt))

  // Triangolo di pendenza sul tratto F-G: x da 2.0 (y=3.170) a 3.5 (y=2.347)
  line((2.0, 3.170), (2.0, 2.347), (3.5, 2.347), stroke: (paint: blue, thickness: 0.65pt))
  content((2.65, 2.90), anchor: "south-west")[#text(size: 7.2pt, fill: blue)[$b = -1 \/ k$]]

  // Punti F e G ben distanziati dalla cornice superiore
  circle((1.0, 3.718), radius: 0.06, fill: blue, stroke: blue)
  content((1.16, 3.70), anchor: "west")[#text(size: 7.5pt)[$F(10^3, sigma_F)$]]
  circle((4.301, 1.908), radius: 0.06, fill: blue, stroke: blue)
  content((4.18, 1.72), anchor: "north-east")[#text(size: 7.5pt)[$G(N_G, sigma_D)$]]

  content((1.20, 0.32), anchor: "south-west")[#text(size: 7.5pt)[$sigma_m = "cost."$]]

  // ========================================================
  // PANNELLO DESTRO: SCALA SEMI-LOG
  // x in [7.2, 12.2] -> log10(N) in [2, 7]; y in [0, 4] -> sigma_a lineare in [0, 1000] MPa
  // ========================================================
  let x0 = 7.2
  content((x0 + 2.5, 4.35), anchor: "south")[#text(size: 8.5pt, weight: "bold")[Scala semi--log ($sigma_a$ lineare, $log N$)]]

  // Griglia logaritmica su x
  for d in (0, 1, 2, 3, 4) {
    for m in (2, 3, 4, 5, 6, 7, 8, 9) {
      let xs = x0 + d + calc.log(m, base: 10)
      line((xs, 0.0), (xs, 4.0), stroke: (paint: luma(228), thickness: 0.35pt))
    }
    if d > 0 {
      line((x0 + d, 0.0), (x0 + d, 4.0), stroke: (paint: luma(195), thickness: 0.5pt))
    }
  }
  // Griglia lineare su y (200, 400, 600, 800 MPa)
  for s in (200, 400, 600, 800) {
    let ys = 0.004 * s
    line((x0, ys), (x0 + 5.0, ys), stroke: (paint: luma(215), thickness: 0.45pt))
  }

  // Cornice pannello destro
  rect((x0, 0.0), (x0 + 5.0, 4.0), stroke: 0.8pt)

  // Etichette asse x (N)
  for (xi, lbl) in ((0.0, $10^2$), (1.0, $10^3$), (2.0, $10^4$), (3.0, $10^5$), (4.0, $10^6$), (5.0, $10^7$)) {
    content((x0 + xi, -0.15), anchor: "north")[#text(size: 7.5pt)[#lbl]]
  }
  content((x0 + 5.10, 0.12), anchor: "south-west")[#text(size: 8pt)[$N$]]

  // Etichette asse y (sigma_a lineare)
  for (s, lbl) in ((0, [0]), (200, [200]), (400, [400]), (600, [600]), (800, [800]), (1000, [1000])) {
    let ys = 0.004 * s
    content((x0 - 0.12, ys), anchor: "east")[#text(size: 7.5pt)[#lbl]]
  }
  content((x0 - 0.78, 2.0), angle: 90deg, anchor: "center")[#text(size: 8pt)[$sigma_a$ (MPa)]]

  // Linee di demarcazione N_F e N_G (sigma_F = 850 MPa -> y = 3.40)
  line((x0 + 1.0, 0.0), (x0 + 1.0, 3.40), stroke: (dash: "dashed", thickness: 0.6pt))
  line((x0 + 4.301, 0.0), (x0 + 4.301, 1.20), stroke: (dash: "dashed", thickness: 0.6pt))

  // Curva S-N semi-log: oligociclica (tratteggiata), tratto F-G (rosso), infinita (rosso)
  line((x0, 3.80), (x0 + 1.0, 3.40), stroke: (dash: "dashed", paint: luma(90), thickness: 0.9pt))
  line((x0 + 1.0, 3.40), (x0 + 4.301, 1.20), (x0 + 5.0, 1.20), stroke: (paint: red.transparentize(10%), thickness: 1.35pt))

  // Punti F e G
  circle((x0 + 1.0, 3.40), radius: 0.06, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  content((x0 + 1.16, 3.44), anchor: "west")[#text(size: 7.5pt)[$F(10^3, sigma_F)$]]
  circle((x0 + 4.301, 1.20), radius: 0.06, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  content((x0 + 4.18, 1.02), anchor: "north-east")[#text(size: 7.5pt)[$G(N_G, sigma_D)$]]

  content((x0 + 1.20, 0.32), anchor: "south-west")[#text(size: 7.5pt)[$sigma_m = "cost."$]]
})
