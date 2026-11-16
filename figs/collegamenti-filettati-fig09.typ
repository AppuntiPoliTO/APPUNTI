// Figura estratta da collegamenti filettati.typ (riga 955) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((2.396, 8.372), (3.618, 8.816), (3.430, 9.333), (2.208, 8.889), close: true, fill: red.transparentize(78%), stroke: none)
  line((0.0, 7.5), (5.8, 7.5), stroke: (paint: rgb("#2b5c8f"), thickness: 0.9pt))
  line((0.0, 7.5), (5.45, 9.48), stroke: (paint: rgb("#2b5c8f"), thickness: 0.9pt))
  arc((0.0, 7.5), start: 0deg, stop: 20deg, radius: 1.4, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  content((1.65, 7.72), text(size: 8pt)[$alpha_m$], anchor: "west")

  line((0.94, 8.14), (2.15, 8.58), mark: (end: ">"), stroke: (paint: rgb("#3b73b9"), thickness: 2pt))
  content((1.15, 8.62), text(size: 8pt)[Moto relativo], angle: 20deg)

  arc((3.01, 8.59), start: 90deg, stop: 110deg, radius: 1.5, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  arc((3.01, 8.59), start: 110deg, stop: 135deg, radius: 1.8, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  content((2.72, 10.42), text(size: 8pt)[$alpha_m$])
  content((1.82, 10.42), text(size: 8pt)[$phi$])

  line((3.01, 11.59), (3.01, 8.59), mark: (end: ">"), stroke: (paint: rgb("#801818"), thickness: 1.1pt, dash: "dashed"))
  line((0.01, 11.59), (3.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#009933"), thickness: 1.1pt, dash: "dashed"))
  line((3.01, 8.59), (1.69, 12.21), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
  line((1.69, 12.21), (0.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#1f4e79"), thickness: 1.2pt))
  line((3.01, 8.59), (0.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#5b3a70"), thickness: 1.2pt))

  content((0.75, 12.18), text(size: 8.5pt, fill: rgb("#1f4e79"))[*$F_("attrito")$*])
  content((1.75, 12.50), text(size: 8.5pt, fill: red)[*$F_N$*])
  content((2.65, 11.88), text(size: 8.5pt, fill: rgb("#009933"))[*$F_U$*])
  content((3.22, 10.30), text(size: 8.5pt, fill: rgb("#801818"))[*$F_V$*], anchor: "west")
  content((1.22, 9.95), text(size: 8.5pt, fill: rgb("#5b3a70"))[*$F_("RES")$*], anchor: "east")

  line((0.70, 3.50), (0.62, 3.75), (0.76, 4.00), (0.64, 4.25), (0.72, 4.50), (2.25, 4.50), (2.25, 3.50), close: true, fill: luma(215), stroke: 0.8pt)
  line((3.75, 3.50), (3.75, 4.50), (5.28, 4.50), (5.36, 4.25), (5.22, 4.00), (5.34, 3.75), (5.26, 3.50), close: true, fill: luma(215), stroke: 0.8pt)

  line((0.35, 2.00), (0.26, 2.38), (0.42, 2.75), (0.28, 3.12), (0.36, 3.50), (2.25, 3.50), (2.25, 2.00), close: true, fill: luma(150), stroke: 0.8pt)
  rect((3.75, 2.00), (5.50, 3.50), fill: luma(150), stroke: 0.8pt)

  rect((2.05, 4.50), (3.95, 4.70), fill: luma(90), stroke: 0.7pt)
  rect((2.05, 1.80), (3.95, 2.00), fill: luma(90), stroke: 0.7pt)

  arc((3.00, 5.42), start: 0deg, stop: 135deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 5.42), start: 0deg, stop: 135deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))

  rect((2.45, 2.00), (3.55, 4.70), fill: luma(228), stroke: 0.9pt)
  rect((2.45, 0.80), (3.55, 1.15), fill: luma(228), stroke: 0.9pt)

  line((2.45, 2.00), (3.55, 2.14), stroke: 0.75pt)
  line((2.45, 2.20), (3.55, 2.34), stroke: 0.75pt)
  line((2.45, 2.40), (3.55, 2.54), stroke: 0.75pt)
  line((2.45, 2.60), (3.55, 2.74), stroke: 0.75pt)
  line((2.45, 2.80), (3.55, 2.94), stroke: 0.75pt)
  line((2.45, 3.00), (3.55, 3.14), stroke: 0.75pt)
  line((2.45, 3.20), (3.55, 3.34), stroke: 0.75pt)
  line((2.45, 0.84), (3.55, 0.96), stroke: 0.75pt)
  line((2.45, 1.00), (3.55, 1.12), stroke: 0.75pt)

  rect((2.05, 4.70), (3.95, 5.35), fill: luma(225), stroke: 0.9pt)
  line((2.52, 4.70), (2.52, 5.35), stroke: 0.7pt)
  line((3.48, 4.70), (3.48, 5.35), stroke: 0.7pt)

  rect((2.05, 1.15), (3.95, 1.80), fill: luma(225), stroke: 0.9pt)
  line((2.52, 1.15), (2.52, 1.80), stroke: 0.7pt)
  line((3.48, 1.15), (3.48, 1.80), stroke: 0.7pt)

  line((3.00, 0.25), (3.00, 6.10), stroke: (paint: luma(80), thickness: 0.5pt, dash: "dashed"))

  line((3.00, 4.35), (2.80, 4.05), (2.90, 4.05), (2.90, 2.85), (2.80, 2.85), (3.00, 2.55), (3.20, 2.85), (3.10, 2.85), (3.10, 4.05), (3.20, 4.05), close: true, fill: red, stroke: (paint: yellow, thickness: 1.1pt))

  line((2.72, 1.40), (3.12, 1.50), (3.09, 1.58), (3.32, 1.54), (3.15, 1.38), (3.13, 1.45), (2.74, 1.35), close: true, fill: rgb("#2b6cb0"), stroke: (paint: yellow, thickness: 0.9pt))

  line((3.80, 1.05), (3.80, 1.98), mark: (end: ">"), stroke: (paint: rgb("#e66100"), thickness: 2.2pt))

  arc((3.00, 5.42), start: 245deg, stop: 360deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 5.42), start: 245deg, stop: 360deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))
  line((2.13, 5.21), (2.49, 5.35), (2.45, 4.99), close: true, fill: rgb("#4a7ebb"), stroke: (paint: rgb("#1e3a5f"), thickness: 0.8pt))

  arc((3.00, 0.55), start: 140deg, stop: 310deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 0.55), start: 140deg, stop: 310deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))
  line((4.13, 0.40), (3.77, 0.52), (3.83, 0.16), close: true, fill: rgb("#4a7ebb"), stroke: (paint: rgb("#1e3a5f"), thickness: 0.8pt))

  line((1.30, 4.50), (1.30, 5.45), mark: (end: ">"), stroke: 1.2pt)
  line((4.70, 4.50), (4.70, 5.45), mark: (end: ">"), stroke: 1.2pt)
  line((1.30, 2.00), (1.30, 1.05), mark: (end: ">"), stroke: 1.2pt)
  line((4.70, 2.00), (4.70, 1.05), mark: (end: ">"), stroke: 1.2pt)

  content((1.12, 5.25), text(size: 8pt)[$P$], anchor: "east")
  content((4.88, 5.25), text(size: 8pt)[$P$], anchor: "west")
  content((1.12, 1.25), text(size: 8pt)[$P$], anchor: "east")
  content((4.88, 1.25), text(size: 8pt)[$P$], anchor: "west")

  line((4.05, 4.70), (5.55, 4.70), stroke: 0.5pt)
  line((4.05, 1.80), (5.55, 1.80), stroke: 0.5pt)
})
