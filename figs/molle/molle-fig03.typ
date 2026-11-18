// Figura estratta da molle.typ (riga 277) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi verticali (centrale e assi delle colonne di spire)
  line((0.00, -1.65), (0.00, 4.25), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-1.00, -1.65), (-1.00, 4.10), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.00, -1.65), (1.00, 4.25), stroke: (dash: "dashed", thickness: 0.6pt))

  // Piano inferiore con tratteggio di appoggio e piano superiore
  line((-1.60, 0.00), (2.40, 0.00), stroke: 0.8pt)
  line((-1.55, 4.25), (2.40, 4.25), stroke: 0.8pt)
  line((-1.40, 0.00), (-1.55, -0.18), stroke: 0.6pt)
  line((-1.15, 0.00), (-1.30, -0.18), stroke: 0.6pt)
  line((-0.90, 0.00), (-1.05, -0.18), stroke: 0.6pt)
  line((-0.65, 0.00), (-0.80, -0.18), stroke: 0.6pt)
  line((-0.40, 0.00), (-0.55, -0.18), stroke: 0.6pt)
  line((-0.15, 0.00), (-0.30, -0.18), stroke: 0.6pt)
  line((0.10, 0.00), (-0.05, -0.18), stroke: 0.6pt)
  line((0.35, 0.00), (0.20, -0.18), stroke: 0.6pt)
  line((0.60, 0.00), (0.45, -0.18), stroke: 0.6pt)
  line((0.85, 0.00), (0.70, -0.18), stroke: 0.6pt)
  line((1.10, 0.00), (0.95, -0.18), stroke: 0.6pt)
  line((1.35, 0.00), (1.20, -0.18), stroke: 0.6pt)
  line((1.60, 0.00), (1.45, -0.18), stroke: 0.6pt)

  // Fasce oblique frontali tra colonna sx e colonna dx
  line((-1.044, 0.630), (0.956, 1.055), stroke: 0.9pt)
  line((-0.956, 0.220), (1.044, 0.645), stroke: 0.9pt)

  line((-1.044, 1.480), (0.956, 1.905), stroke: 0.9pt)
  line((-0.956, 1.070), (1.044, 1.495), stroke: 0.9pt)

  line((-1.044, 2.330), (0.956, 2.755), stroke: 0.9pt)
  line((-0.956, 1.920), (1.044, 2.345), stroke: 0.9pt)

  line((-1.044, 3.180), (0.956, 3.605), stroke: 0.9pt)
  line((-0.956, 2.770), (1.044, 3.195), stroke: 0.9pt)

  line((-1.044, 4.030), (-0.009, 4.250), stroke: 0.9pt)
  line((-0.956, 3.620), (1.044, 4.045), stroke: 0.9pt)

  // Estremita inferiore e linea prolungata per angolo alpha
  line((-0.009, 0.000), (1.750, 0.374), stroke: 0.8pt)

  // Cerchi delle sezioni a sinistra (L1..L5) con tratteggio interno a 45deg
  circle((-1.00, 0.425), radius: 0.21, fill: white, stroke: 0.9pt)
  line((-1.208, 0.397), (-0.972, 0.633), stroke: 0.6pt)
  line((-1.175, 0.310), (-0.885, 0.600), stroke: 0.6pt)
  line((-1.115, 0.250), (-0.825, 0.540), stroke: 0.6pt)
  line((-1.028, 0.217), (-0.792, 0.453), stroke: 0.6pt)

  circle((-1.00, 1.275), radius: 0.21, fill: white, stroke: 0.9pt)
  line((-1.208, 1.247), (-0.972, 1.483), stroke: 0.6pt)
  line((-1.175, 1.160), (-0.885, 1.450), stroke: 0.6pt)
  line((-1.115, 1.100), (-0.825, 1.390), stroke: 0.6pt)
  line((-1.028, 1.067), (-0.792, 1.303), stroke: 0.6pt)

  circle((-1.00, 2.125), radius: 0.21, fill: white, stroke: 0.9pt)
  line((-1.208, 2.097), (-0.972, 2.333), stroke: 0.6pt)
  line((-1.175, 2.010), (-0.885, 2.300), stroke: 0.6pt)
  line((-1.115, 1.950), (-0.825, 2.240), stroke: 0.6pt)
  line((-1.028, 1.917), (-0.792, 2.153), stroke: 0.6pt)

  circle((-1.00, 2.975), radius: 0.21, fill: white, stroke: 0.9pt)
  line((-1.208, 2.947), (-0.972, 3.183), stroke: 0.6pt)
  line((-1.175, 2.860), (-0.885, 3.150), stroke: 0.6pt)
  line((-1.115, 2.800), (-0.825, 3.090), stroke: 0.6pt)
  line((-1.028, 2.767), (-0.792, 3.003), stroke: 0.6pt)

  circle((-1.00, 3.825), radius: 0.21, fill: white, stroke: 0.9pt)
  line((-1.208, 3.797), (-0.972, 4.033), stroke: 0.6pt)
  line((-1.175, 3.710), (-0.885, 4.000), stroke: 0.6pt)
  line((-1.115, 3.650), (-0.825, 3.940), stroke: 0.6pt)
  line((-1.028, 3.617), (-0.792, 3.853), stroke: 0.6pt)

  // Sezioni a destra: R0 (semicerchio sup), R1..R4 (interi), R5 (semicerchio inf)
  arc((1.00, 0.00), start: 0deg, stop: 180deg, radius: 0.21, anchor: "origin", stroke: 0.9pt)
  line((0.820, 0.000), (1.028, 0.208), stroke: 0.6pt)
  line((0.940, 0.000), (1.115, 0.175), stroke: 0.6pt)
  line((1.060, 0.000), (1.175, 0.115), stroke: 0.6pt)
  line((1.180, 0.000), (1.208, 0.028), stroke: 0.6pt)

  circle((1.00, 0.850), radius: 0.21, fill: white, stroke: 0.9pt)
  line((0.792, 0.822), (1.028, 1.058), stroke: 0.6pt)
  line((0.825, 0.735), (1.115, 1.025), stroke: 0.6pt)
  line((0.885, 0.675), (1.175, 0.965), stroke: 0.6pt)
  line((0.972, 0.642), (1.208, 0.878), stroke: 0.6pt)

  circle((1.00, 1.700), radius: 0.21, fill: white, stroke: 0.9pt)
  line((0.792, 1.672), (1.028, 1.908), stroke: 0.6pt)
  line((0.825, 1.585), (1.115, 1.875), stroke: 0.6pt)
  line((0.885, 1.525), (1.175, 1.815), stroke: 0.6pt)
  line((0.972, 1.492), (1.208, 1.728), stroke: 0.6pt)

  circle((1.00, 2.550), radius: 0.21, fill: white, stroke: 0.9pt)
  line((0.792, 2.522), (1.028, 2.758), stroke: 0.6pt)
  line((0.825, 2.435), (1.115, 2.725), stroke: 0.6pt)
  line((0.885, 2.375), (1.175, 2.665), stroke: 0.6pt)
  line((0.972, 2.342), (1.208, 2.578), stroke: 0.6pt)

  circle((1.00, 3.400), radius: 0.21, fill: white, stroke: 0.9pt)
  line((0.792, 3.372), (1.028, 3.608), stroke: 0.6pt)
  line((0.825, 3.285), (1.115, 3.575), stroke: 0.6pt)
  line((0.885, 3.225), (1.175, 3.515), stroke: 0.6pt)
  line((0.972, 3.192), (1.208, 3.428), stroke: 0.6pt)

  arc((1.00, 4.250), start: 180deg, stop: 360deg, radius: 0.21, anchor: "origin", stroke: 0.9pt)
  line((0.792, 4.222), (0.820, 4.250), stroke: 0.6pt)
  line((0.825, 4.135), (0.940, 4.250), stroke: 0.6pt)
  line((0.885, 4.075), (1.060, 4.250), stroke: 0.6pt)
  line((0.972, 4.042), (1.180, 4.250), stroke: 0.6pt)

  // Forza F
  line((0.00, 5.45), (0.00, 4.25), mark: (end: ">"), stroke: 1.3pt)

  // Quote d, p, L_0, alpha, r, D = 2r
  line((-1.00, 3.185), (-1.75, 3.185), stroke: 0.6pt)
  line((-1.00, 2.765), (-1.75, 2.765), stroke: 0.6pt)
  line((-1.55, 3.65), (-1.55, 3.185), mark: (end: ">"), stroke: 0.6pt)
  line((-1.55, 2.30), (-1.55, 2.765), mark: (end: ">"), stroke: 0.6pt)

  line((1.00, 3.40), (1.75, 3.40), stroke: 0.6pt)
  line((1.00, 2.55), (1.75, 2.55), stroke: 0.6pt)
  line((1.55, 3.85), (1.55, 3.40), mark: (end: ">"), stroke: 0.6pt)
  line((1.55, 2.10), (1.55, 2.55), mark: (end: ">"), stroke: 0.6pt)

  line((2.20, 0.00), (2.20, 4.25), mark: (start: ">", end: ">"), stroke: 0.6pt)

  arc((0.00, 0.00), start: 12deg, stop: 30deg, radius: 1.60, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  arc((0.00, 0.00), start: -18deg, stop: 0deg, radius: 1.60, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)

  circle((0.00, -0.75), radius: 0.06, fill: black, stroke: none)
  line((0.00, -0.75), (1.00, -0.75), mark: (end: ">"), stroke: 0.6pt)
  line((-1.00, -1.45), (1.00, -1.45), mark: (start: ">", end: ">"), stroke: 0.6pt)

  // Etichette
  content((-0.25, 4.95), [$F$], anchor: "east")
  content((-1.70, 2.975), [$d$], anchor: "east")
  content((1.68, 2.975), [$p$], anchor: "west")
  content((2.32, 2.125), [$L_0$], anchor: "west")
  content((1.72, 0.18), [$alpha$], anchor: "west")
  content((0.50, -0.58), [$r$], anchor: "south")
  content((0.00, -1.28), [$D = 2 r$], anchor: "south")
})
