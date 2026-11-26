// Figura estratta da molle.typ (riga 646) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi di riferimento (verticale tratteggiato, normale inclinata continua, linea quota r)
  line((0.00, -2.00), (0.00, 3.80), stroke: (dash: "dashed", thickness: 0.7pt))
  line((-0.416, -1.956), (0.353, 1.663), stroke: 0.7pt)
  line((1.55, 0.100), (1.55, 3.45), stroke: 0.8pt)

  // Sezioni circolari della spira e tangenti di collegamento
  circle((-1.55, 0.759), radius: 0.42, fill: white, stroke: 0.9pt)
  circle((1.55, 0.100), radius: 0.42, fill: white, stroke: 0.9pt)
  line((-1.463, 1.170), (1.637, 0.511), stroke: 0.9pt)
  line((-1.637, 0.348), (1.463, -0.311), stroke: 0.9pt)

  // Tratteggio obliquo (45deg) dentro le due sezioni circolari
  line((-1.966, 0.703), (-1.494, 1.175), stroke: 0.6pt)
  line((-1.923, 0.566), (-1.357, 1.132), stroke: 0.6pt)
  line((-1.847, 0.462), (-1.253, 1.056), stroke: 0.6pt)
  line((-1.743, 0.386), (-1.177, 0.952), stroke: 0.6pt)
  line((-1.606, 0.343), (-1.134, 0.815), stroke: 0.6pt)

  line((1.134, 0.044), (1.606, 0.516), stroke: 0.6pt)
  line((1.177, -0.093), (1.743, 0.473), stroke: 0.6pt)
  line((1.253, -0.197), (1.847, 0.397), stroke: 0.6pt)
  line((1.357, -0.273), (1.923, 0.293), stroke: 0.6pt)
  line((1.494, -0.316), (1.966, 0.156), stroke: 0.6pt)

  // Arco angolo alpha
  arc((0.00, 0.00), start: 258deg, stop: 270deg, radius: 1.65, anchor: "origin", stroke: 0.7pt)

  // Quota r
  line((0.00, 3.25), (1.55, 3.25), mark: (start: ">", end: ">"), stroke: 0.7pt)

  // Vettori F e scomposizione tratteggiata in alto (origine (0, 2.85), |F|=1.75)
  line((0.00, 2.85), (0.00, 1.10), mark: (end: ">"), stroke: 1.5pt)
  line((0.00, 2.85), (-0.356, 1.176), mark: (end: ">"), stroke: (dash: "dashed", thickness: 1.5pt))
  line((0.00, 2.85), (0.356, 2.774), mark: (end: ">"), stroke: (dash: "dashed", thickness: 1.5pt))

  // Vettore T sulla sezione destra (parallelo all'asse inclinato)
  line((1.55, 0.100), (1.862, 1.567), mark: (end: ">"), stroke: 1.4pt)

  // Freccia curva cava per momento torcente M_t attorno a (1.55, 0.100)
  line((0.81, 0.100), (0.99, 0.100), stroke: 1.1pt)
  arc((1.55, 0.100), start: 180deg, stop: 345deg, radius: 0.56, anchor: "origin", stroke: 1.1pt)
  arc((1.55, 0.100), start: 180deg, stop: 345deg, radius: 0.74, anchor: "origin", stroke: 1.1pt)
  line((2.265, -0.092), (2.352, -0.115), (2.199, 0.134), (2.004, -0.022), (2.091, -0.045), stroke: 1.1pt)

  // Etichette
  content((-0.30, 2.40), [$F$], anchor: "east")
  content((0.78, 3.05), [$r$], anchor: "north")
  content((2.10, 1.35), [$T$], anchor: "west")
  content((2.20, -0.78), [$M_t$], anchor: "north-west")
  content((-0.36, -1.72), [$alpha$], anchor: "east")
})
