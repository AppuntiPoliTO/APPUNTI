// Figura estratta da fatica.typ (riga 1793) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.55cm, {
  // BBox: x in [-2.05, 2.90] (dx=4.95), y in [-2.20, 3.85], length=1.55cm -> larghezza = 7.67 cm <= 8.2 cm
  import draw: *

  let r1 = 0.58
  let yc1 = 2.75
  let r2 = 1.55
  let yc2 = 0.0
  let amp = 1.75
  let x80 = 0.80 * amp

  // --- Provino piccolo (sopra) ---
  content((0, yc1 + r1 + 0.30), anchor: "south")[#text(size: 8pt, weight: "bold")[Provetta ($d = 8"–"12 thin "mm"$)]]

  circle((0, yc1), radius: r1, fill: luma(228), stroke: 1pt + black)

  // Calotta superiore campita tra 0.80*sigma_a e sigma_a (theta da 53.13deg a 126.87deg)
  let cap1 = ()
  for i in range(0, 25) {
    let ang = 53.13deg + i * (73.74deg / 24)
    cap1.push((r1 * calc.cos(ang), yc1 + r1 * calc.sin(ang)))
  }
  line(..cap1, close: true, fill: red.transparentize(65%), stroke: (paint: red.transparentize(10%), thickness: 0.75pt))

  // Assi di riferimento e profilo lineare
  line((-1.90, yc1), (1.90, yc1), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((0, yc1 - r1 - 0.15), (0, yc1 + r1 + 0.15), stroke: (dash: "dotted", thickness: 0.55pt, paint: luma(110)))

  // Frecce di picco +/- sigma_a
  line((0, yc1 + r1), (amp, yc1 + r1), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))
  line((0, yc1 - r1), (-amp, yc1 - r1), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))

  // Livello 80% sigma_a e profilo di flessione
  let y1_80 = yc1 + 0.80 * r1
  line((-0.85, y1_80), (amp, y1_80), stroke: (paint: blue, thickness: 0.65pt, dash: "dashed"))
  line((-amp, yc1 - r1), (amp, yc1 + r1), stroke: 1.1pt + blue)

  // Etichette esterne con richiami anti-collisione
  line((amp + 0.04, yc1 + r1), (amp + 0.16, yc1 + r1 + 0.12), stroke: 0.55pt + black)
  content((amp + 0.18, yc1 + r1 + 0.12), anchor: "south-west")[#text(size: 7.5pt)[$sigma_a$]]

  line((amp + 0.04, y1_80), (amp + 0.16, y1_80 - 0.14), stroke: 0.55pt + blue)
  content((amp + 0.18, y1_80 - 0.14), anchor: "north-west")[#text(size: 7.5pt, fill: blue)[$80% thin sigma_a$]]

  // --- Albero grande (sotto) ---
  circle((0, yc2), radius: r2, fill: luma(228), stroke: 1pt + black)

  let cap2 = ()
  for i in range(0, 31) {
    let ang = 53.13deg + i * (73.74deg / 30)
    cap2.push((r2 * calc.cos(ang), yc2 + r2 * calc.sin(ang)))
  }
  line(..cap2, close: true, fill: red.transparentize(65%), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))

  // Assi di riferimento e profilo lineare
  line((-1.90, yc2), (1.90, yc2), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((0, yc2 - r2 - 0.15), (0, yc2 + r2 + 0.15), stroke: (dash: "dotted", thickness: 0.55pt, paint: luma(110)))

  // Frecce di picco +/- sigma_a (identiche in ampiezza al provino)
  line((0, yc2 + r2), (amp, yc2 + r2), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))
  line((0, yc2 - r2), (-amp, yc2 - r2), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))

  // Livello 80% sigma_a, proiezione verticale comune e profilo di flessione
  let y2_80 = yc2 + 0.80 * r2
  line((x80, y1_80), (x80, y2_80), stroke: (paint: blue.transparentize(30%), thickness: 0.55pt, dash: "dotted"))
  line((-1.25, y2_80), (amp, y2_80), stroke: (paint: blue, thickness: 0.65pt, dash: "dashed"))
  line((-amp, yc2 - r2), (amp, yc2 + r2), stroke: 1.1pt + blue)
  circle((x80, y1_80), radius: 0.042, fill: blue, stroke: none)
  circle((x80, y2_80), radius: 0.042, fill: blue, stroke: none)

  // Etichette ben distanziate (delta y = 0.31 unità)
  content((amp + 0.12, yc2 + r2 + 0.04), anchor: "south-west")[#text(size: 7.5pt)[$sigma_a$]]
  content((amp + 0.12, y2_80 - 0.04), anchor: "north-west")[#text(size: 7.5pt, fill: blue)[$80% thin sigma_a$]]

  content((0, yc2 - r2 - 0.30), anchor: "north")[#text(size: 8pt, weight: "bold")[Albero grande ($d >> 12 thin "mm"$)]]
})
