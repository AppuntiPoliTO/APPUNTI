// Figura estratta da molle.typ (riga 2460) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ============= VISTA FRONTALE (x = 0) =============
  // Estremita inferiore posteriore (cuneo alla base)
  line((-1.07, 0.000), (0.35, 0.080), (-1.07, 0.200), close: true, fill: white, stroke: none)
  line((-1.07, 0.000), (0.35, 0.080), stroke: 1.0pt)

  // Raccordi posteriori del corpo (L1..L5)
  arc((-1.07, 0.130), start: 93.5deg, stop: 270deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.07, 0.390), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.07, 0.650), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.07, 0.910), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.07, 1.170), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori del corpo (4 spire accostate in salita L_k -> R_k)
  line((-1.078, 0.260), (1.062, 0.390), (1.078, 0.130), (-1.062, 0.000), close: true, fill: white, stroke: none)
  arc((-1.07, 0.130), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.07, 0.260), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.078, 0.260), (1.062, 0.390), stroke: 1.0pt)
  line((-1.062, 0.000), (1.078, 0.130), stroke: 1.0pt)

  line((-1.078, 0.520), (1.062, 0.650), (1.078, 0.390), (-1.062, 0.260), close: true, fill: white, stroke: none)
  arc((-1.07, 0.390), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.07, 0.520), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.078, 0.520), (1.062, 0.650), stroke: 1.0pt)
  line((-1.062, 0.260), (1.078, 0.390), stroke: 1.0pt)

  line((-1.078, 0.780), (1.062, 0.910), (1.078, 0.650), (-1.062, 0.520), close: true, fill: white, stroke: none)
  arc((-1.07, 0.650), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.07, 0.780), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.078, 0.780), (1.062, 0.910), stroke: 1.0pt)
  line((-1.062, 0.520), (1.078, 0.650), stroke: 1.0pt)

  line((-1.078, 1.040), (1.062, 1.170), (1.078, 0.910), (-1.062, 0.780), close: true, fill: white, stroke: none)
  arc((-1.07, 0.910), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.07, 1.040), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.078, 1.040), (1.062, 1.170), stroke: 1.0pt)
  line((-1.062, 0.780), (1.078, 0.910), stroke: 1.0pt)

  // Occhiello frontale: da L5(-1.07, 1.17) a (0.00, 1.23) poi arco centro (0.00, 2.02)
  line((-1.078, 1.300), (0.000, 1.360), stroke: 1.0pt)
  line((-1.062, 1.040), (0.000, 1.100), stroke: 1.0pt)
  arc((0.00, 2.02), start: -90deg, stop: 168deg, radius: 0.66, anchor: "origin", stroke: 1.0pt)
  arc((0.00, 2.02), start: -90deg, stop: 168deg, radius: 0.92, anchor: "origin", stroke: 1.0pt)
  arc((-0.773, 2.184), start: 168deg, stop: 348deg, radius: 0.13, anchor: "origin", stroke: 1.0pt)

  // Assi e sezione A-A (vista frontale)
  line((0.00, 0.00), (0.00, 2.02), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-1.15, 2.02), (1.15, 2.02), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0.38, 1.72), (0.38, 2.02), mark: (end: ">"), stroke: 0.6pt)
  content((0.33, 1.82), [A], anchor: "east")
  line((1.06, 1.72), (1.06, 2.02), mark: (end: ">"), stroke: 0.6pt)
  content((1.11, 1.82), [A], anchor: "west")

  // Raggi r1 e r3
  line((0.00, 2.02), (-0.379, 2.561), mark: (end: ">"), stroke: 0.6pt)
  content((-0.28, 2.26), [$r_1$], anchor: "east")
  line((0.00, 2.02), (0.754, 2.548), mark: (end: ">"), stroke: 0.6pt)
  content((0.97, 2.60), [$r_3$], anchor: "west")

  // Forza F (vista frontale)
  line((0.00, 2.02), (0.00, 3.30), stroke: 1.6pt)
  line((-0.14, 3.30), (0.14, 3.30), (0.00, 3.72), close: true, fill: black, stroke: black)
  content((-0.22, 3.45), [$F$], anchor: "east")

  // Quote D e d (vista frontale)
  content((-1.32, 0.65), [$d$], anchor: "east")
  line((-1.20, 0.04), (-1.20, -0.58), stroke: 0.6pt)
  line((1.20, 0.20), (1.20, -0.58), stroke: 0.6pt)
  line((-1.20, -0.45), (1.20, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.00, -0.52), [$D$], anchor: "north")

  // ============= VISTA LATERALE (x = 4.20) =============
  // Estremita inferiore posteriore
  line((3.13, 0.000), (4.55, 0.080), (3.13, 0.200), close: true, fill: white, stroke: none)
  line((3.13, 0.000), (4.55, 0.080), stroke: 1.0pt)

  // Raccordi posteriori del corpo
  arc((3.13, 0.130), start: 93.5deg, stop: 270deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((3.13, 0.390), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((3.13, 0.650), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((3.13, 0.910), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((3.13, 1.170), start: 93.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori del corpo (4 spire accostate)
  line((3.122, 0.260), (5.262, 0.390), (5.278, 0.130), (3.138, 0.000), close: true, fill: white, stroke: none)
  arc((3.13, 0.130), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.27, 0.260), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((3.122, 0.260), (5.262, 0.390), stroke: 1.0pt)
  line((3.138, 0.000), (5.278, 0.130), stroke: 1.0pt)

  line((3.122, 0.520), (5.262, 0.650), (5.278, 0.390), (3.138, 0.260), close: true, fill: white, stroke: none)
  arc((3.13, 0.390), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.27, 0.520), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((3.122, 0.520), (5.262, 0.650), stroke: 1.0pt)
  line((3.138, 0.260), (5.278, 0.390), stroke: 1.0pt)

  line((3.122, 0.780), (5.262, 0.910), (5.278, 0.650), (3.138, 0.520), close: true, fill: white, stroke: none)
  arc((3.13, 0.650), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.27, 0.780), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((3.122, 0.780), (5.262, 0.910), stroke: 1.0pt)
  line((3.138, 0.520), (5.278, 0.650), stroke: 1.0pt)

  line((3.122, 1.040), (5.262, 1.170), (5.278, 0.910), (3.138, 0.780), close: true, fill: white, stroke: none)
  arc((3.13, 0.910), start: 86.5deg, stop: 266.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.27, 1.040), start: -93.5deg, stop: 86.5deg, radius: 0.13, anchor: "origin", fill: white, stroke: 1.0pt)
  line((3.122, 1.040), (5.262, 1.170), stroke: 1.0pt)
  line((3.138, 0.780), (5.278, 0.910), stroke: 1.0pt)

  // Gomito e tratto verticale dell'occhiello (vista laterale)
  line((3.122, 1.300), (3.741, 1.341), stroke: 1.0pt)
  line((3.138, 1.040), (3.757, 1.081), stroke: 1.0pt)
  arc((3.72, 1.69), start: -86.5deg, stop: 0deg, radius: 0.35, anchor: "origin", stroke: 1.0pt)
  arc((3.72, 1.69), start: -86.5deg, stop: 0deg, radius: 0.61, anchor: "origin", stroke: 1.0pt)
  line((4.07, 1.69), (4.07, 2.81), stroke: 1.0pt)
  line((4.33, 1.69), (4.33, 2.81), stroke: 1.0pt)
  arc((4.20, 2.81), start: 0deg, stop: 180deg, radius: 0.13, anchor: "origin", stroke: 1.0pt)

  // Asse verticale, centro di curvatura e sezione B-B
  line((4.20, 0.00), (4.20, 1.69), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((3.64, 1.69), (3.80, 1.69), stroke: 0.5pt)
  line((3.72, 1.61), (3.72, 1.77), stroke: 0.5pt)
  line((2.971, 2.275), (4.469, 1.105), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((3.12, 2.16), (3.29, 2.38), mark: (end: ">"), stroke: 0.6pt)
  content((2.98, 2.28), [B], anchor: "east")
  line((4.38, 1.18), (4.55, 1.40), mark: (end: ">"), stroke: 0.6pt)
  content((4.60, 1.38), [B], anchor: "west")

  // Raggi r2 e r4
  line((3.72, 1.69), (3.988, 1.465), mark: (end: ">"), stroke: 0.6pt)
  content((3.7, 1.88), [$r_2$], anchor: "west")
  line((3.72, 1.69), (3.978, 1.137), mark: (end: ">"), stroke: 0.6pt)
  content((3.48, 1.50), [$r_4$], anchor: "east")

  // Forza F (vista laterale)
  line((4.20, 2.25), (4.20, 3.30), stroke: 1.6pt)
  line((4.06, 3.30), (4.34, 3.30), (4.20, 3.72), close: true, fill: black, stroke: black)
  content((3.98, 3.45), [$F$], anchor: "east")

  // Quota D (vista laterale)
  line((3.00, 0.04), (3.00, -0.58), stroke: 0.6pt)
  line((5.40, 0.20), (5.40, -0.58), stroke: 0.6pt)
  line((3.00, -0.45), (5.40, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.20, -0.52), [$D$], anchor: "north")
})
