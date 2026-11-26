#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.2cm, {
  import draw: *

  // --- FASE 1: PREPARAZIONE / SGRASSATURA ---
  line((0.05, 4.95), (0.85, 4.95), (0.82, 4.70), (0.74, 4.55), (0.65, 4.15), (0.90, 4.55), (0.95, 4.72), (1.02, 4.95), (1.75, 4.95), stroke: 0.8pt)
  content((0.90, 3.85), text(size: 6.5pt)[PREPARAZIONE /], anchor: "center")
  content((0.90, 3.60), text(size: 6.5pt)[SGRASSATURA], anchor: "center")

  // --- FASE 2: APPLICAZIONE DEL PENETRANTE ---
  line((2.10, 4.95), (3.80, 4.95), (3.80, 5.03), (2.10, 5.03), close: true, fill: red.transparentize(25%), stroke: none)
  line((2.90, 4.95), (2.87, 4.70), (2.79, 4.55), (2.70, 4.15), (2.95, 4.55), (3.00, 4.72), (3.07, 4.95), close: true, fill: red.transparentize(25%), stroke: none)
  line((2.10, 4.95), (2.90, 4.95), (2.87, 4.70), (2.79, 4.55), (2.70, 4.15), (2.95, 4.55), (3.00, 4.72), (3.07, 4.95), (3.80, 4.95), stroke: 0.8pt)
  line((2.10, 5.03), (3.80, 5.03), stroke: (paint: red, thickness: 0.6pt))
  content((2.95, 3.85), text(size: 6.5pt)[APPLICAZIONE], anchor: "center")
  content((2.95, 3.60), text(size: 6.5pt)[DEL], anchor: "center")
  content((2.95, 3.35), text(size: 6.5pt)[PENETRANTE], anchor: "center")

  // --- FASE 3: RIMOZIONE DELL'ECCESSO DI PENETRANTE ---
  line((4.95, 4.95), (4.92, 4.70), (4.84, 4.55), (4.75, 4.15), (5.00, 4.55), (5.05, 4.72), (5.12, 4.95), close: true, fill: red.transparentize(25%), stroke: none)
  line((4.15, 4.95), (4.95, 4.95), (4.92, 4.70), (4.84, 4.55), (4.75, 4.15), (5.00, 4.55), (5.05, 4.72), (5.12, 4.95), (5.85, 4.95), stroke: 0.8pt)
  line((4.92, 5.05), (4.55, 5.45), mark: (end: ">"), stroke: (paint: gray, thickness: 0.6pt))
  line((4.98, 5.07), (4.80, 5.55), mark: (end: ">"), stroke: (paint: gray, thickness: 0.6pt))
  line((5.03, 5.08), (5.03, 5.60), mark: (end: ">"), stroke: (paint: gray, thickness: 0.6pt))
  line((5.08, 5.07), (5.26, 5.55), mark: (end: ">"), stroke: (paint: gray, thickness: 0.6pt))
  line((5.14, 5.05), (5.50, 5.45), mark: (end: ">"), stroke: (paint: gray, thickness: 0.6pt))
  content((5.00, 3.85), text(size: 6.5pt)[RIMOZIONE], anchor: "center")
  content((5.00, 3.60), text(size: 6.5pt)[DELL'ECCESSO DI], anchor: "center")
  content((5.00, 3.35), text(size: 6.5pt)[PENETRANTE], anchor: "center")

  // --- FASE 4: APPLICAZIONE DEL RILEVATORE ---
  line((6.20, 4.95), (7.90, 4.95), (7.90, 5.04), (6.20, 5.04), close: true, fill: gray.transparentize(70%), stroke: none)
  line((7.00, 4.95), (6.97, 4.70), (6.89, 4.55), (6.80, 4.15), (7.05, 4.55), (7.10, 4.72), (7.17, 4.95), close: true, fill: red.transparentize(25%), stroke: none)
  line((6.95, 4.95), (7.22, 4.95), (7.18, 5.04), (6.99, 5.04), close: true, fill: red.transparentize(20%), stroke: none)
  line((6.20, 4.95), (7.00, 4.95), (6.97, 4.70), (6.89, 4.55), (6.80, 4.15), (7.05, 4.55), (7.10, 4.72), (7.17, 4.95), (7.90, 4.95), stroke: 0.8pt)
  line((6.20, 5.04), (7.90, 5.04), stroke: (paint: gray, thickness: 0.55pt))
  content((7.05, 3.85), text(size: 6.5pt)[APPLICAZIONE], anchor: "center")
  content((7.05, 3.60), text(size: 6.5pt)[DEL RILEVATORE], anchor: "center")

  // --- FASE 5: ISPEZIONE ---
  line((8.25, 4.95), (9.95, 4.95), (9.95, 5.04), (8.25, 5.04), close: true, fill: gray.transparentize(70%), stroke: none)
  line((9.05, 4.95), (9.02, 4.70), (8.94, 4.55), (8.85, 4.15), (9.10, 4.55), (9.15, 4.72), (9.22, 4.95), close: true, fill: red.transparentize(25%), stroke: none)
  line((8.90, 4.95), (9.37, 4.95), (9.32, 5.05), (8.95, 5.05), close: true, fill: red.transparentize(15%), stroke: none)
  line((8.25, 4.95), (9.05, 4.95), (9.02, 4.70), (8.94, 4.55), (8.85, 4.15), (9.10, 4.55), (9.15, 4.72), (9.22, 4.95), (9.95, 4.95), stroke: 0.8pt)
  line((8.25, 5.04), (9.95, 5.04), stroke: (paint: gray, thickness: 0.55pt))
  line((8.95, 5.10), (8.68, 5.38), stroke: (paint: gray, thickness: 0.5pt))
  line((9.02, 5.10), (8.85, 5.45), stroke: (paint: gray, thickness: 0.5pt))
  line((9.08, 5.10), (9.00, 5.50), stroke: (paint: gray, thickness: 0.5pt))
  line((9.14, 5.10), (9.14, 5.52), stroke: (paint: gray, thickness: 0.5pt))
  line((9.20, 5.10), (9.28, 5.50), stroke: (paint: gray, thickness: 0.5pt))
  line((9.26, 5.10), (9.43, 5.45), stroke: (paint: gray, thickness: 0.5pt))
  line((9.33, 5.10), (9.60, 5.38), stroke: (paint: gray, thickness: 0.5pt))
  content((9.10, 3.85), text(size: 6.5pt)[ISPEZIONE], anchor: "center")

  // --- RIQUADRO PROVA DI TENUTA (DIFETTO PASSANTE) ---
  rect((1.80, 0.10), (8.20, 3.00), stroke: 0.7pt)

  // Parete curva (sezione)
  arc((6.20, 1.95), start: 150deg, stop: 210deg, radius: 1.65, anchor: "origin", stroke: 0.85pt)
  arc((6.20, 1.95), start: 150deg, stop: 210deg, radius: 1.35, anchor: "origin", stroke: 0.85pt)
  line((4.77, 2.775), (5.03, 2.625), stroke: 0.85pt)
  line((4.77, 1.125), (5.03, 1.275), stroke: 0.85pt)

  // Tratteggio sezione parete
  line((4.73, 2.68), (4.98, 2.55), stroke: 0.5pt)
  line((4.68, 2.56), (4.94, 2.43), stroke: 0.5pt)
  line((4.64, 2.44), (4.90, 2.31), stroke: 0.5pt)
  line((4.60, 2.31), (4.87, 2.18), stroke: 0.5pt)
  line((4.57, 2.18), (4.85, 2.05), stroke: 0.5pt)
  line((4.56, 2.04), (4.84, 1.93), stroke: 0.5pt)
  line((4.56, 1.74), (4.86, 1.61), stroke: 0.5pt)
  line((4.59, 1.61), (4.88, 1.48), stroke: 0.5pt)
  line((4.63, 1.48), (4.91, 1.35), stroke: 0.5pt)
  line((4.68, 1.35), (4.95, 1.23), stroke: 0.5pt)
  line((4.73, 1.22), (5.00, 1.15), stroke: 0.5pt)

  // Strato sviluppatore (sinistra) e penetrante (destra)
  arc((6.20, 1.95), start: 152deg, stop: 208deg, radius: 1.69, anchor: "origin", stroke: (paint: gray.lighten(20%), thickness: 2.2pt))
  arc((6.20, 1.95), start: 152deg, stop: 208deg, radius: 1.73, anchor: "origin", stroke: 0.5pt)
  arc((6.20, 1.95), start: 152deg, stop: 208deg, radius: 1.31, anchor: "origin", stroke: (paint: red, thickness: 2.2pt))

  // Difetto passante (rosso) e affioramento sullo sviluppatore
  line(
    (4.89, 1.93), (4.76, 1.88), (4.67, 1.94), (4.55, 1.86), (4.51, 1.95),
    (4.51, 1.78), (4.57, 1.82), (4.68, 1.89), (4.77, 1.83), (4.89, 1.87),
    close: true, fill: red, stroke: none
  )
  arc((6.20, 1.95), start: 178deg, stop: 192deg, radius: 1.69, anchor: "origin", stroke: (paint: red, thickness: 2.4pt))

  // Frecce ed etichette del riquadro
  line((3.70, 2.75), (4.58, 2.48), mark: (end: ">"), stroke: 0.7pt)
  content((3.62, 2.78), text(size: 6.5pt)[SVILUPPATORE], anchor: "east")

  line((3.70, 1.50), (4.45, 1.82), mark: (end: ">"), stroke: 0.7pt)
  content((3.62, 1.55), text(size: 6.5pt)[DIFETTO], anchor: "east")
  content((3.62, 1.32), text(size: 6.5pt)[PASSANTE], anchor: "east")

  line((5.70, 1.95), (4.94, 2.02), mark: (end: ">"), stroke: 0.7pt)
  content((5.78, 1.95), text(size: 6.5pt)[PENETRANTE], anchor: "west")

  content((5.00, 0.58), text(size: 6.5pt)[Se si vogliono rilevare solo difetti passanti (controllo di perdite),], anchor: "center")
  content((5.00, 0.34), text(size: 6.5pt)[applicare su una superficie il penetrante e su quella opposta lo sviluppatore.], anchor: "center")
})
