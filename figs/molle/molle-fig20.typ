// Figura estratta da molle.typ (riga 2646) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ============= MOLLA CILINDRICA (x = 0) =============
  // Estremita inferiore molata (cuneo posteriore)
  line((-1.06, 0.000), (1.20, 0.000), (-1.06, 0.277), close: true, fill: white, stroke: none)
  line((-1.06, 0.000), (1.20, 0.000), stroke: 1.0pt)
  line((1.20, 0.000), (-1.06, 0.277), stroke: 1.0pt)

  // Tratti posteriori (5 tratti in salita da sinistra a destra: L_k -> R_k)
  // L1(-1.06, 0.140) -> R1(1.06, 0.456)
  line((-1.081, 0.278), (1.039, 0.594), (1.081, 0.318), (-1.039, 0.002), close: true, fill: white, stroke: none)
  line((-1.081, 0.278), (1.039, 0.594), stroke: 1.0pt)
  line((-1.039, 0.002), (1.081, 0.318), stroke: 1.0pt)

  // L2(-1.06, 0.772) -> R2(1.06, 1.088)
  line((-1.081, 0.910), (1.039, 1.226), (1.081, 0.950), (-1.039, 0.634), close: true, fill: white, stroke: none)
  line((-1.081, 0.910), (1.039, 1.226), stroke: 1.0pt)
  line((-1.039, 0.634), (1.081, 0.950), stroke: 1.0pt)

  // L3(-1.06, 1.404) -> R3(1.06, 1.720)
  line((-1.081, 1.542), (1.039, 1.858), (1.081, 1.582), (-1.039, 1.266), close: true, fill: white, stroke: none)
  line((-1.081, 1.542), (1.039, 1.858), stroke: 1.0pt)
  line((-1.039, 1.266), (1.081, 1.582), stroke: 1.0pt)

  // L4(-1.06, 2.036) -> R4(1.06, 2.352)
  line((-1.081, 2.174), (1.039, 2.490), (1.081, 2.214), (-1.039, 1.898), close: true, fill: white, stroke: none)
  line((-1.081, 2.174), (1.039, 2.490), stroke: 1.0pt)
  line((-1.039, 1.898), (1.081, 2.214), stroke: 1.0pt)

  // L5(-1.06, 2.668) -> R5(1.06, 2.984)
  line((-1.081, 2.806), (1.039, 3.122), (1.081, 2.846), (-1.039, 2.530), close: true, fill: white, stroke: none)
  line((-1.081, 2.806), (1.039, 3.122), stroke: 1.0pt)
  line((-1.039, 2.530), (1.081, 2.846), stroke: 1.0pt)

  // Estremita superiore molata (cuneo posteriore rispetto a L6 -> R5)
  line((-1.06, 3.440), (1.20, 3.440), (-1.06, 3.163), close: true, fill: white, stroke: none)
  line((-1.06, 3.440), (1.20, 3.440), stroke: 1.0pt)
  line((1.20, 3.440), (-1.06, 3.163), stroke: 1.0pt)

  // Raccordi laterali posteriori (per chiusura bordi esterni)
  arc((-1.06, 0.140), start: 98.5deg, stop: 270deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 0.772), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 1.404), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 2.036), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 2.668), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)

  arc((1.06, 0.456), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.088), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.720), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.352), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.984), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori (5 tratti in discesa da sinistra a destra: L_{k+1} -> R_k)
  // L2(-1.06, 0.772) -> R1(1.06, 0.456)
  line((-1.039, 0.910), (1.081, 0.594), (1.039, 0.318), (-1.081, 0.634), close: true, fill: white, stroke: none)
  arc((-1.06, 0.772), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 0.456), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 0.910), (1.081, 0.594), stroke: 1.0pt)
  line((-1.081, 0.634), (1.039, 0.318), stroke: 1.0pt)

  // L3(-1.06, 1.404) -> R2(1.06, 1.088)
  line((-1.039, 1.542), (1.081, 1.226), (1.039, 0.950), (-1.081, 1.266), close: true, fill: white, stroke: none)
  arc((-1.06, 1.404), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.088), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 1.542), (1.081, 1.226), stroke: 1.0pt)
  line((-1.081, 1.266), (1.039, 0.950), stroke: 1.0pt)

  // L4(-1.06, 2.036) -> R3(1.06, 1.720)
  line((-1.039, 2.174), (1.081, 1.858), (1.039, 1.582), (-1.081, 1.898), close: true, fill: white, stroke: none)
  arc((-1.06, 2.036), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.720), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 2.174), (1.081, 1.858), stroke: 1.0pt)
  line((-1.081, 1.898), (1.039, 1.582), stroke: 1.0pt)

  // L5(-1.06, 2.668) -> R4(1.06, 2.352)
  line((-1.039, 2.806), (1.081, 2.490), (1.039, 2.214), (-1.081, 2.530), close: true, fill: white, stroke: none)
  arc((-1.06, 2.668), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.352), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 2.806), (1.081, 2.490), stroke: 1.0pt)
  line((-1.081, 2.530), (1.039, 2.214), stroke: 1.0pt)

  // L6(-1.06, 3.300) -> R5(1.06, 2.984)
  line((-1.039, 3.438), (1.081, 3.122), (1.039, 2.846), (-1.081, 3.162), close: true, fill: white, stroke: none)
  arc((-1.06, 3.300), start: 90deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.984), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 3.438), (1.081, 3.122), stroke: 1.0pt)
  line((-1.081, 3.162), (1.039, 2.846), stroke: 1.0pt)

  // Asse e frecce molla cilindrica
  line((0.00, 0.00), (0.00, 3.44), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0.00, 4.25), (0.00, 3.52), mark: (end: ">"), stroke: 0.8pt)
  line((0.00, -0.85), (0.00, -0.06), mark: (end: ">"), stroke: 0.8pt)

  // ============= MOLLA CONICA (x = 4.24) =============
  // Estremita inferiore molata (cuneo posteriore, punta a sinistra x = 2.073)
  line((2.073, 0.000), (6.238, 0.000), (6.238, 0.240), close: true, fill: white, stroke: none)
  line((2.073, 0.000), (6.238, 0.000), stroke: 1.0pt)
  line((2.073, 0.000), (6.238, 0.240), stroke: 1.0pt)

  // Tratti posteriori (4 tratti in discesa da sinistra a destra: L_{k+1} -> R_k)
  // L2(2.475, 0.78) -> R1(6.238, 0.12)
  line((2.496, 0.898), (6.259, 0.238), (6.217, 0.002), (2.454, 0.662), close: true, fill: white, stroke: none)
  line((2.496, 0.898), (6.259, 0.238), stroke: 1.0pt)
  line((2.454, 0.662), (6.217, 0.002), stroke: 1.0pt)

  // L3(2.722, 1.48) -> R2(5.934, 1.04)
  line((2.738, 1.599), (5.950, 1.159), (5.918, 0.921), (2.706, 1.361), close: true, fill: white, stroke: none)
  line((2.738, 1.599), (5.950, 1.159), stroke: 1.0pt)
  line((2.706, 1.361), (5.918, 0.921), stroke: 1.0pt)

  // L4(2.976, 2.20) -> R3(5.674, 1.76)
  line((2.995, 2.318), (5.693, 1.878), (5.655, 1.642), (2.957, 2.082), close: true, fill: white, stroke: none)
  line((2.995, 2.318), (5.693, 1.878), stroke: 1.0pt)
  line((2.957, 2.082), (5.655, 1.642), stroke: 1.0pt)

  // L5(3.258, 3.00) -> R4(5.413, 2.48)
  line((3.286, 3.117), (5.441, 2.597), (5.385, 2.363), (3.230, 2.883), close: true, fill: white, stroke: none)
  line((3.286, 3.117), (5.441, 2.597), stroke: 1.0pt)
  line((3.230, 2.883), (5.385, 2.363), stroke: 1.0pt)

  // Estremita superiore molata (punta a destra x = 5.307, y = 3.12)
  line((3.258, 3.120), (5.307, 3.120), (3.258, 2.880), close: true, fill: white, stroke: none)
  line((3.258, 3.120), (5.307, 3.120), stroke: 1.0pt)
  line((5.307, 3.120), (3.258, 2.880), stroke: 1.0pt)

  // Raccordi esterni posteriori (L5, R1)
  arc((3.258, 3.000), start: 90deg, stop: 256.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((6.238, 0.120), start: -90deg, stop: 80.1deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori (4 tratti: L1->R1, L2->R2, L3->R3, L4->R4)
  // L1(2.278, 0.22) -> R1(6.238, 0.12)
  line((2.281, 0.340), (6.241, 0.240), (6.235, 0.000), (2.275, 0.100), close: true, fill: white, stroke: none)
  arc((2.278, 0.220), start: 88.6deg, stop: 268.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((6.238, 0.120), start: -91.4deg, stop: 88.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.281, 0.340), (6.241, 0.240), stroke: 1.0pt)
  line((2.275, 0.100), (6.235, 0.000), stroke: 1.0pt)

  // L2(2.475, 0.78) -> R2(5.934, 1.04)
  line((2.466, 0.900), (5.925, 1.160), (5.943, 0.920), (2.484, 0.660), close: true, fill: white, stroke: none)
  arc((2.475, 0.780), start: 94.3deg, stop: 274.3deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.934, 1.040), start: -85.7deg, stop: 94.3deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.466, 0.900), (5.925, 1.160), stroke: 1.0pt)
  line((2.484, 0.660), (5.943, 0.920), stroke: 1.0pt)

  // L3(2.722, 1.48) -> R3(5.674, 1.76)
  line((2.711, 1.599), (5.663, 1.879), (5.685, 1.641), (2.733, 1.361), close: true, fill: white, stroke: none)
  arc((2.722, 1.480), start: 95.4deg, stop: 275.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.674, 1.760), start: -84.6deg, stop: 95.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.711, 1.599), (5.663, 1.879), stroke: 1.0pt)
  line((2.733, 1.361), (5.685, 1.641), stroke: 1.0pt)

  // L4(2.976, 2.20) -> R4(5.413, 2.48)
  line((2.962, 2.319), (5.399, 2.599), (5.427, 2.361), (2.990, 2.081), close: true, fill: white, stroke: none)
  arc((2.976, 2.200), start: 96.6deg, stop: 276.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.413, 2.480), start: -83.4deg, stop: 96.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.962, 2.319), (5.399, 2.599), stroke: 1.0pt)
  line((2.990, 2.081), (5.427, 2.361), stroke: 1.0pt)

  // Asse verticale, inviluppo conico e frecce molla conica
  line((4.24, 0.00), (4.24, 3.12), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.985, -0.25), (3.307, 3.50), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((6.495, -0.25), (5.173, 3.50), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((4.24, 4.25), (4.24, 3.25), mark: (end: ">"), stroke: 0.8pt)
  line((4.24, -0.85), (4.24, -0.06), mark: (end: ">"), stroke: 0.8pt)
})
