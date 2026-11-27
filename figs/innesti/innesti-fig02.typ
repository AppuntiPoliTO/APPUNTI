// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Figura estratta da _parts/innesti/p1.typ (riga 242) con LocalTypst
#import "../comuni/_helpers.typ": fig-safe, img-flag

#canvas(length: 1.17cm, {
  import draw: *

  line((0, 0), (14.4, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.8, -1.8), (1.8, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((12.6, -1.8), (12.6, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  circle((1.8, 0), radius: 1.5, stroke: 1pt)
  circle((1.8, 0), radius: 0.88, stroke: 1pt)
  circle((1.8, 0), radius: 0.22, stroke: 0.9pt)
  rect((1.51, -0.06), (1.59, 0.06), fill: white, stroke: 0.8pt)
  arc((1.8, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  line((4.8, 0.22), (4.8, 0.6), (5.15, 0.6), (5.15, 1.5), (5.55, 1.5), (5.55, 0.22), close: true, stroke: 1pt)
  line((5.15, 1.35), (5.3, 1.5), stroke: 0.5pt)
  line((5.15, 1.15), (5.5, 1.5), stroke: 0.5pt)
  line((5.15, 0.95), (5.55, 1.35), stroke: 0.5pt)
  line((5.15, 0.75), (5.55, 1.15), stroke: 0.5pt)
  line((4.8, 0.4), (5.0, 0.6), stroke: 0.5pt)
  line((4.8, 0.22), (5.55, 0.97), stroke: 0.5pt)
  line((5.0, 0.22), (5.55, 0.77), stroke: 0.5pt)
  line((5.2, 0.22), (5.55, 0.57), stroke: 0.5pt)
  line((5.4, 0.22), (5.55, 0.37), stroke: 0.5pt)

  line((4.8, -0.22), (4.8, -0.6), (5.15, -0.6), (5.15, -1.5), (5.55, -1.5), (5.55, -0.22), close: true, stroke: 1pt)
  line((4.8, -0.42), (4.98, -0.22), stroke: 0.5pt)
  line((4.82, -0.6), (5.18, -0.22), stroke: 0.5pt)
  line((5.02, -0.6), (5.38, -0.22), stroke: 0.5pt)
  line((5.15, -0.67), (5.55, -0.27), stroke: 0.5pt)
  line((5.15, -0.87), (5.55, -0.47), stroke: 0.5pt)
  line((5.15, -1.07), (5.55, -0.67), stroke: 0.5pt)
  line((5.15, -1.27), (5.55, -0.87), stroke: 0.5pt)
  line((5.15, -1.47), (5.55, -1.07), stroke: 0.5pt)
  line((5.32, -1.5), (5.55, -1.27), stroke: 0.5pt)

  line((5.58, 0.88), (5.58, 1.5), (6.0, 1.5), (6.0, 0.6), (6.35, 0.6), (6.35, 0.22), (5.65, 0.22), (5.65, 0.88), close: true, stroke: 1pt)
  line((5.8, 1.5), (6.0, 1.3), stroke: 0.5pt)
  line((5.6, 1.5), (6.0, 1.1), stroke: 0.5pt)
  line((5.58, 1.32), (6.0, 0.9), stroke: 0.5pt)
  line((6.1, 0.6), (6.35, 0.35), stroke: 0.5pt)
  line((5.58, 1.12), (6.3, 0.4), stroke: 0.5pt)
  line((5.58, 0.92), (6.28, 0.22), stroke: 0.5pt)
  line((5.65, 0.65), (6.08, 0.22), stroke: 0.5pt)
  line((5.65, 0.45), (5.88, 0.22), stroke: 0.5pt)

  line((5.58, -0.88), (5.58, -1.5), (6.0, -1.5), (6.0, -0.6), (6.35, -0.6), (6.35, -0.22), (5.65, -0.22), (5.65, -0.88), close: true, stroke: 1pt)
  line((6.15, -0.22), (6.35, -0.42), stroke: 0.5pt)
  line((5.95, -0.22), (6.33, -0.6), stroke: 0.5pt)
  line((5.75, -0.22), (6.13, -0.6), stroke: 0.5pt)
  line((5.65, -0.32), (6.0, -0.67), stroke: 0.5pt)
  line((5.65, -0.52), (6.0, -0.87), stroke: 0.5pt)
  line((5.65, -0.72), (6.0, -1.07), stroke: 0.5pt)
  line((5.58, -0.85), (6.0, -1.27), stroke: 0.5pt)
  line((5.58, -1.05), (6.0, -1.47), stroke: 0.5pt)
  line((5.58, -1.25), (5.83, -1.5), stroke: 0.5pt)
  line((5.58, -1.45), (5.63, -1.5), stroke: 0.5pt)

  line((5.55, 0.88), (5.65, 0.88), stroke: 0.8pt)
  line((5.55, -0.88), (5.65, -0.88), stroke: 0.8pt)
  line((5.6, -0.88), (5.6, 0.88), stroke: 0.7pt)

  line((5.565, 0.88), (5.565, 1.5), stroke: (paint: red, thickness: 2.2pt))
  line((5.565, -1.5), (5.565, -0.88), stroke: (paint: red, thickness: 2.2pt))

  line((4.45, 0.22), (4.8, 0.22), stroke: 0.9pt)
  line((4.45, -0.22), (4.8, -0.22), stroke: 0.9pt)
  line((5.55, -0.22), (5.55, 0.22), stroke: 0.9pt)
  line((5.65, 0.22), (6.7, 0.22), stroke: 0.9pt)
  line((5.65, -0.22), (6.7, -0.22), stroke: 0.9pt)
  line((5.65, -0.22), (5.65, 0.22), stroke: 0.9pt)

  rect((4.85, -0.04), (5.38, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((5.75, -0.04), (6.52, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((6.85, 0.44), (6.42, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((6.85, -0.44), (6.42, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  line((7.7, 0.22), (7.7, 0.6), (8.05, 0.6), (8.05, 1.5), (8.85, 1.5), (8.85, 1.38), (8.25, 1.29), (8.25, 0.92), (8.42, 0.92), (8.42, 0.22), close: true, stroke: 1pt)
  line((8.05, 1.35), (8.2, 1.5), stroke: 0.5pt)
  line((8.05, 1.15), (8.4, 1.5), stroke: 0.5pt)
  line((8.42, 1.32), (8.6, 1.5), stroke: 0.5pt)
  line((8.62, 1.35), (8.77, 1.5), stroke: 0.5pt)
  line((8.05, 0.95), (8.25, 1.15), stroke: 0.5pt)
  line((8.05, 0.75), (8.25, 0.95), stroke: 0.5pt)
  line((7.7, 0.4), (7.9, 0.6), stroke: 0.5pt)
  line((7.7, 0.22), (8.4, 0.92), stroke: 0.5pt)
  line((7.9, 0.22), (8.42, 0.74), stroke: 0.5pt)
  line((8.1, 0.22), (8.42, 0.54), stroke: 0.5pt)
  line((8.3, 0.22), (8.42, 0.34), stroke: 0.5pt)

  line((7.7, -0.22), (7.7, -0.6), (8.05, -0.6), (8.05, -1.5), (8.85, -1.5), (8.85, -1.38), (8.25, -1.29), (8.25, -0.92), (8.42, -0.92), (8.42, -0.22), close: true, stroke: 1pt)
  line((7.7, -0.42), (7.88, -0.22), stroke: 0.5pt)
  line((7.72, -0.6), (8.08, -0.22), stroke: 0.5pt)
  line((7.92, -0.6), (8.28, -0.22), stroke: 0.5pt)
  line((8.05, -0.67), (8.42, -0.3), stroke: 0.5pt)
  line((8.05, -0.87), (8.42, -0.5), stroke: 0.5pt)
  line((8.05, -1.07), (8.42, -0.7), stroke: 0.5pt)
  line((8.05, -1.27), (8.25, -1.07), stroke: 0.5pt)
  line((8.38, -0.92), (8.42, -0.88), stroke: 0.5pt)
  line((8.05, -1.47), (8.25, -1.27), stroke: 0.5pt)
  line((8.22, -1.5), (8.4, -1.32), stroke: 0.5pt)
  line((8.42, -1.5), (8.58, -1.34), stroke: 0.5pt)
  line((8.62, -1.5), (8.75, -1.37), stroke: 0.5pt)

  line((8.28, 1.08), (8.28, 1.26), (8.85, 1.34), (8.85, 0.6), (9.25, 0.6), (9.25, 0.22), (8.55, 0.22), (8.55, 0.6), (8.7, 0.6), (8.7, 1.08), close: true, stroke: 1pt)
  line((8.65, 1.31), (8.85, 1.11), stroke: 0.5pt)
  line((8.42, 1.28), (8.85, 0.85), stroke: 0.5pt)
  line((8.28, 1.22), (8.42, 1.08), stroke: 0.5pt)
  line((8.7, 1.0), (9.1, 0.6), stroke: 0.5pt)
  line((8.7, 0.8), (9.25, 0.25), stroke: 0.5pt)
  line((8.7, 0.6), (9.08, 0.22), stroke: 0.5pt)
  line((8.55, 0.55), (8.88, 0.22), stroke: 0.5pt)
  line((8.55, 0.35), (8.68, 0.22), stroke: 0.5pt)

  line((8.28, -1.08), (8.28, -1.26), (8.85, -1.34), (8.85, -0.6), (9.25, -0.6), (9.25, -0.22), (8.55, -0.22), (8.55, -0.6), (8.7, -0.6), (8.7, -1.08), close: true, stroke: 1pt)
  line((9.05, -0.22), (9.25, -0.42), stroke: 0.5pt)
  line((8.85, -0.22), (9.23, -0.6), stroke: 0.5pt)
  line((8.65, -0.22), (9.03, -0.6), stroke: 0.5pt)
  line((8.55, -0.32), (8.85, -0.62), stroke: 0.5pt)
  line((8.55, -0.52), (8.85, -0.82), stroke: 0.5pt)
  line((8.7, -0.87), (8.85, -1.02), stroke: 0.5pt)
  line((8.7, -1.07), (8.85, -1.22), stroke: 0.5pt)
  line((8.52, -1.08), (8.76, -1.32), stroke: 0.5pt)
  line((8.32, -1.08), (8.53, -1.29), stroke: 0.5pt)

  line((8.25, -1.29), (8.25, 1.29), stroke: 0.7pt)
  line((8.28, -1.08), (8.28, 1.08), stroke: 0.7pt)
  line((8.42, -0.92), (8.42, 0.92), stroke: 0.7pt)
  line((8.55, -0.6), (8.55, 0.6), stroke: 0.7pt)
  line((8.85, -1.34), (8.85, -1.38), stroke: 0.8pt)
  line((8.85, 1.34), (8.85, 1.38), stroke: 0.8pt)

  line((8.26, 1.275), (8.85, 1.36), stroke: (paint: red, thickness: 2.2pt))
  line((8.26, -1.275), (8.85, -1.36), stroke: (paint: red, thickness: 2.2pt))

  line((7.35, 0.22), (7.7, 0.22), stroke: 0.9pt)
  line((7.35, -0.22), (7.7, -0.22), stroke: 0.9pt)
  line((8.55, 0.22), (9.6, 0.22), stroke: 0.9pt)
  line((8.55, -0.22), (9.6, -0.22), stroke: 0.9pt)

  rect((7.75, -0.04), (8.28, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((8.65, -0.04), (9.42, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((9.75, 0.44), (9.32, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((9.75, -0.44), (9.32, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  // --- Vista a destra: ganasce centrifughe ---
  circle((12.6, 0), radius: 1.5, stroke: 1pt)
  circle((12.6, 0), radius: 1.4, stroke: 0.9pt)
  circle((12.6, 0), radius: 0.22, stroke: 0.9pt)
  rect((12.33, -0.05), (12.40, 0.05), fill: white, stroke: 0.8pt)
  arc((12.6, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  // Mozzo a stella (6 guide radiali)
  arc((12.6, 0), start: 38.4deg, stop: 81.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 98.4deg, stop: 141.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 158.4deg, stop: 201.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 218.4deg, stop: 261.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 278.4deg, stop: 321.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 338.4deg, stop: 381.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)

  // Pareti delle 6 guide radiali (dalla radice r=0.62 fino all'anello esterno r=1.4)
  line((12.50, 0.612), (12.50, 1.396), stroke: 0.9pt)
  line((12.70, 0.612), (12.70, 1.396), stroke: 0.9pt)

  line((12.50, -0.612), (12.50, -1.396), stroke: 0.9pt)
  line((12.70, -0.612), (12.70, -1.396), stroke: 0.9pt)

  line((13.08, 0.393), (13.759, 0.785), stroke: 0.9pt)
  line((13.18, 0.219), (13.859, 0.611), stroke: 0.9pt)

  line((12.12, 0.393), (11.441, 0.785), stroke: 0.9pt)
  line((12.02, 0.219), (11.341, 0.611), stroke: 0.9pt)

  line((12.12, -0.393), (11.441, -0.785), stroke: 0.9pt)
  line((12.02, -0.219), (11.341, -0.611), stroke: 0.9pt)

  line((13.08, -0.393), (13.759, -0.785), stroke: 0.9pt)
  line((13.18, -0.219), (13.859, -0.611), stroke: 0.9pt)

  // Chiusure delle estremità delle 6 guide (a r=1.28)
  line((12.50, 1.28), (12.70, 1.28), stroke: 0.8pt)
  line((12.50, -1.28), (12.70, -1.28), stroke: 0.8pt)
  line((13.658, 0.727), (13.758, 0.553), stroke: 0.8pt)
  line((11.542, 0.727), (11.442, 0.553), stroke: 0.8pt)
  line((11.542, -0.727), (11.442, -0.553), stroke: 0.8pt)
  line((13.658, -0.727), (13.758, -0.553), stroke: 0.8pt)

  // 6 settori / spicchi espansibili (archi interni r=0.74 e fianchi tra guide)
  arc((12.6, 0), start: 37.8deg, stop: 82.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, 0.733), (12.70, 1.396), stroke: 0.9pt)
  line((13.185, 0.453), (13.759, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 97.8deg, stop: 142.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.50, 0.733), (12.50, 1.396), stroke: 0.9pt)
  line((12.015, 0.453), (11.441, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 157.8deg, stop: 202.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((11.915, 0.279), (11.341, 0.611), stroke: 0.9pt)
  line((11.915, -0.279), (11.341, -0.611), stroke: 0.9pt)

  arc((12.6, 0), start: 217.8deg, stop: 262.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.015, -0.453), (11.441, -0.785), stroke: 0.9pt)
  line((12.50, -0.733), (12.50, -1.396), stroke: 0.9pt)

  arc((12.6, 0), start: 277.8deg, stop: 322.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, -0.733), (12.70, -1.396), stroke: 0.9pt)
  line((13.185, -0.453), (13.759, -0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 337.8deg, stop: 382.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((13.285, -0.279), (13.859, -0.611), stroke: 0.9pt)
  line((13.285, 0.279), (13.859, 0.611), stroke: 0.9pt)

  // Freccia curva di rotazione attorno al mozzo (punta stealth piena)
  arc((12.6, 0), start: 18deg, stop: 245deg, radius: 0.42, anchor: "origin", mark: (start: "stealth", fill: black, scale: 0.58), stroke: 0.8pt)

  // 6 frecce centrifughe al centro dei 6 spicchi (0°, 60°, 120°, 180°, 240°, 300°)
  line((13.44, 0), (13.90, 0), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((11.76, 0), (11.30, 0), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((13.02, 0.727), (13.25, 1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((12.18, 0.727), (11.95, 1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((12.18, -0.727), (11.95, -1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((13.02, -0.727), (13.25, -1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
})
