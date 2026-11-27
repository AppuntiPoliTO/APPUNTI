// Figura estratta da fatica.typ (riga 1682) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.16cm, {
  // BBox: x in [0.0, 16.0] (dx=16.0), y in [0.0, 5.7], length=1.0cm -> larghezza = 16.0 cm <= 17.0 cm
  import draw: *

  // --- Pannello sinistro: Curve S-N sperimentali (sigma_a - N) ---
  content((3.825, 5.15), anchor: "south", text(size: 8.5pt, weight: "bold")[Curve $S$-$N$ sperimentali ($sigma_a$)])
  rect((1.2, 0.8), (6.45, 4.9), stroke: 0.9pt)

  // Griglia logaritmica decadi 10^2 .. 10^7 (1.05 u/decade)
  for (i, lbl) in ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$).enumerate() {
    let x = 1.2 + i * 1.05
    if i > 0 and i < 5 {
      line((x, 0.8), (x, 4.9), stroke: (paint: black.transparentize(82%), thickness: 0.45pt))
    }
    line((x, 0.8), (x, 0.72), stroke: 0.6pt)
    content((x, 0.64), anchor: "north", text(size: 7.5pt)[#lbl])
  }
  for y_g in (1.5, 2.2, 2.9, 3.6, 4.3) {
    line((1.2, y_g), (6.45, y_g), stroke: (paint: black.transparentize(86%), thickness: 0.45pt))
  }

  // Ginocchio N_i = 2*10^6: x = 1.2 + 4.301 * 1.05 = 5.72
  line((5.72, 0.8), (5.72, 4.9), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(40%)))
  content((5.66, 4.76), anchor: "north-east", text(size: 7pt)[$N_i = 2 dot 10^6$])

  // Curva Flessione (blu) e Trazione-compressione (rosso) da 10^3 (x=2.25)
  line((2.25, 4.55), (5.72, 3.15), (6.45, 3.15), stroke: 1.2pt + blue)
  line((2.25, 3.85), (5.72, 2.20), (6.45, 2.20), stroke: 1.2pt + red)
  line((1.2, 3.15), (5.72, 3.15), stroke: (dash: "dashed", thickness: 0.65pt, paint: blue))
  line((1.2, 2.20), (5.72, 2.20), stroke: (dash: "dashed", thickness: 0.65pt, paint: red))

  // Etichette curve e asse Y sinistro
  content((1.02, 4.82), anchor: "east", text(size: 8.5pt)[$sigma_a$])
  content((1.02, 3.15), anchor: "east", text(size: 8pt, fill: blue)[$sigma_(D-1)^f$])
  content((1.02, 2.20), anchor: "east", text(size: 8pt, fill: red)[$sigma_(D-1)^T$])
  content((3.65, 4.08), anchor: "south-west", text(size: 8pt, fill: blue)[Flessione])
  content((2.68, 2.68), anchor: "center", box(fill: white, inset: 1.5pt)[#text(size: 7.6pt, fill: red)[Trazione-compressione]])
  line((3.98, 2.68), (4.63, 2.68), stroke: 0.55pt + red, mark: (end: ">", scale: 0.5, fill: red))
  content((3.825, 0.25), anchor: "north", text(size: 8pt)[$N$ (cicli)])

  // Scarto C_L tra i due asintoti
  line((6.45, 3.15), (6.80, 3.15), stroke: (dash: "dotted", thickness: 0.55pt))
  line((6.45, 2.20), (6.80, 2.20), stroke: (dash: "dotted", thickness: 0.55pt))
  line((6.70, 2.20), (6.70, 3.15), stroke: 0.7pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.55))
  content((6.88, 2.675), anchor: "west", text(size: 7.5pt)[$C_L = 0.6 div 0.85$])

  // --- Pannello destro: Curva teorica unica (sigma_{a,eff} - N) ---
  content((12.475, 5.15), anchor: "south", text(size: 8.5pt, weight: "bold")[Curva teorica unificata ($sigma_(a,"eff")$)])
  rect((9.85, 0.8), (15.10, 4.9), stroke: 0.9pt)

  for (i, lbl) in ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$).enumerate() {
    let x = 9.85 + i * 1.05
    if i > 0 and i < 5 {
      line((x, 0.8), (x, 4.9), stroke: (paint: black.transparentize(82%), thickness: 0.45pt))
    }
    line((x, 0.8), (x, 0.72), stroke: 0.6pt)
    content((x, 0.64), anchor: "north", text(size: 7.5pt)[#lbl])
  }
  for y_g in (1.5, 2.2, 2.9, 3.6, 4.3) {
    line((9.85, y_g), (15.10, y_g), stroke: (paint: black.transparentize(86%), thickness: 0.45pt))
  }

  // Ginocchio comune N_i = 2*10^6: x = 9.85 + 4.301 * 1.05 = 14.37
  line((14.37, 0.8), (14.37, 4.9), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(40%)))
  content((14.31, 4.76), anchor: "north-east", text(size: 7pt)[$N_i = 2 dot 10^6$])

  // Curva sovrapposta (blu + rosso tratteggiato) da 10^3 (x=10.90)
  line((10.90, 3.85), (14.37, 2.20), (15.10, 2.20), stroke: 1.3pt + blue)
  line((10.90, 3.85), (14.37, 2.20), (15.10, 2.20), stroke: (paint: red, thickness: 1.2pt, dash: "dashed"))
  line((9.85, 2.20), (14.37, 2.20), stroke: (dash: "dashed", thickness: 0.65pt))

  content((9.67, 4.82), anchor: "east", text(size: 8.5pt)[$sigma_(a,"eff")$])
  content((9.67, 2.20), anchor: "east", text(size: 8pt)[$sigma_(D-1)^0$])
  content((12.95, 3.30), anchor: "south", align(center, text(size: 8pt)[Flessione +\ Traz.-compr.]))
  content((12.475, 0.25), anchor: "north", text(size: 8pt)[$N$ (cicli)])
})
