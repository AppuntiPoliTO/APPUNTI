// Principio dell'esame radiografico (RX) su giunto saldato (Slide 16)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Sorgente / tubo a raggi X
  line((3.0, 3.95), (3.45, 4.18), (4.65, 4.18), (4.65, 3.82), (3.45, 3.82), close: true, fill: luma(230), stroke: 0.85pt)
  circle((3.10, 3.95), radius: 0.08, fill: red.darken(10%), stroke: 0.6pt)
  content((4.05, 4.00), text(size: 6.2pt)[*Tubo RX*], anchor: "center")
  content((0.35, 3.95), text(size: 6.8pt)[*Esame radiografico*], anchor: "west")

  // Fascio conico di raggi X (da (3.10, 3.87) verso il pezzo e la pellicola)
  for tx in (1.35, 1.85, 2.35, 2.85, 3.35, 3.85, 4.35, 4.85) {
    line((3.10, 3.87), (tx, 0.88), stroke: (paint: red.darken(10%), thickness: 0.5pt, dash: "dashed"))
  }

  // Pezzo saldato (lamiera sinistra, destra e cordone)
  rect((1.0, 1.35), (5.2, 2.10), fill: luma(232), stroke: 0.9pt)
  // Cordone di saldatura
  line((2.50, 2.10), (3.70, 2.10), (3.30, 1.35), (2.90, 1.35), close: true, fill: luma(200), stroke: none)
  arc((3.10, 1.35), start: 51.34deg, stop: 128.66deg, radius: 0.96, anchor: "origin", fill: luma(200), stroke: 0.85pt)
  line((2.50, 2.10), (2.90, 1.35), stroke: (dash: "dashed", thickness: 0.6pt))
  line((3.70, 2.10), (3.30, 1.35), stroke: (dash: "dashed", thickness: 0.6pt))
  content((5.38, 1.72), text(size: 6.3pt)[Pezzo saldato], anchor: "west")

  // Due difetti interni (cavità / scoria a bassa densità)
  circle((2.78, 1.78), radius: (0.12, 0.08), fill: white, stroke: 0.75pt)
  line((3.22, 1.62), (3.44, 1.72), (3.48, 1.56), (3.28, 1.50), close: true, fill: white, stroke: 0.75pt)
  content((0.88, 1.72), text(size: 6.2pt)[Difetti], anchor: "east")
  line((0.92, 1.72), (2.62, 1.77), mark: (end: ">", scale: 0.45), stroke: 0.55pt)

  // Pellicola / lastra radiografica in basso
  rect((1.0, 0.62), (5.2, 0.88), fill: luma(110), stroke: 0.85pt)
  // Banda più chiara sotto il cordone (maggiore spessore -> minore annerimento)
  rect((2.40, 0.64), (3.80, 0.86), fill: luma(195), stroke: none)
  // Zone scure proiettate dai difetti (minore attenuazione -> maggiore annerimento)
  rect((2.62, 0.64), (2.86, 0.86), fill: luma(35), stroke: none)
  rect((3.25, 0.64), (3.56, 0.86), fill: luma(35), stroke: none)
  content((5.38, 0.75), text(size: 6.3pt)[Pellicola RX], anchor: "west")
  content((3.10, 0.30), text(size: 6.0pt, fill: luma(60))[Zone scure in corrispondenza delle cavità (minore attenuazione)], anchor: "center")
})
