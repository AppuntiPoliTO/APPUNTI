// Figura estratta da fatica.typ (riga 1194) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.22cm, {
  import draw: *
  // BBox: x in [-0.95, 5.35] (dx=6.30), y in [-0.65, 4.30], length=1.12cm -> larghezza = 7.06 cm <= 8.2 cm

  let x_of(r) = 2.2 * (r + 1.0) // R in [-1, 1] -> x in [0, 4.4]
  let sd = 1.35
  let rp = 2.95
  let rm = 3.80
  let r_cut = 0.6825
  let x_cut = x_of(r_cut) // 3.702

  // Campionamento curva limite da R = -1 a R_cut (regione sicura) e fino a R = 1
  let safe_curve = ()
  for k in range(0, 17) {
    let rk = -1.0 + (r_cut + 1.0) * k / 16
    let yk = 2.0 / ((1.0 - rk) / sd + (1.0 + rk) / rm)
    safe_curve.push((x_of(rk), yk))
  }
  let ext_curve = ()
  for k in range(0, 9) {
    let rk = r_cut + (1.0 - r_cut) * k / 8
    let yk = 2.0 / ((1.0 - rk) / sd + (1.0 + rk) / rm)
    ext_curve.push((x_of(rk), yk))
  }

  // Regione sicura campita
  let poly = ((0.0, 0.0), ..safe_curve, (4.4, rp), (4.4, 0.0))
  line(..poly, close: true, fill: black.transparentize(88%), stroke: none)

  // Assi principali
  line((-0.15, 0.0), (4.95, 0.0), stroke: 0.8pt, mark: (end: ">", scale: 0.7))
  line((0.0, -0.15), (0.0, 4.05), stroke: 0.8pt, mark: (end: ">", scale: 0.7))
  content((5.05, 0.0), anchor: "west")[#text(size: 8pt)[$R$]]
  content((0.0, 4.12), anchor: "south")[#text(size: 8pt)[$sigma_"max"$]]

  // Riferimenti verticali R = 0 e R = 1 e snervamento Rp0.2
  line((2.2, 0.0), (2.2, 1.992), stroke: (dash: "dotted", thickness: 0.55pt))
  line((4.4, 0.0), (4.4, rm), stroke: (dash: "dotted", thickness: 0.55pt))
  line((0.0, rp), (x_cut, rp), stroke: (dash: "dotted", thickness: 0.6pt))
  line((0.0, rm), (4.4, rm), stroke: (dash: "dotted", thickness: 0.55pt))

  // Ramo tratteggiato fino a Rm e contorno marcato regione sicura
  line(..ext_curve, stroke: (dash: "dashed", paint: rgb("#1f77b4"), thickness: 0.8pt))
  line(..safe_curve, (4.4, rp), stroke: 1.15pt)
  line((4.4, rp), (4.4, 0.0), stroke: 0.85pt)

  // Punti notevoli
  circle((0.0, sd), radius: 0.055, fill: black)
  circle((2.2, 1.992), radius: 0.05, fill: black)
  circle((4.4, rm), radius: 0.055, fill: rgb("#1f77b4"), stroke: rgb("#1f77b4"))

  // Etichette assi
  content((0.0, -0.15), anchor: "north")[#text(size: 7.5pt)[$-1$]]
  content((2.2, -0.15), anchor: "north")[#text(size: 7.5pt)[$0$]]
  content((4.4, -0.15), anchor: "north")[#text(size: 7.5pt)[$+1$]]

  content((-0.12, sd), anchor: "east")[#text(size: 7.5pt)[$sigma_(D-1)$]]
  content((-0.12, rp), anchor: "east")[#text(size: 7.5pt)[$R_"p0.2"$]]
  content((-0.12, rm), anchor: "east")[#text(size: 7.5pt)[$R_m$]]
  content((2.15, 2.12), anchor: "south-east")[#text(size: 7pt)[$sigma_(D 0)$]]
  content((3.25, 0.85), anchor: "center")[#text(size: 7.2pt, weight: "bold")[Zona sicura]]
})
