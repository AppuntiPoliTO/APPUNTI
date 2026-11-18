// Figura estratta da collegamenti filettati.typ (riga 702) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // ===
  // --- PANEL 1: VITE (TOP) ---
  // ===
  content((4.20, 10.35), text(size: 9.5pt, weight: "bold")[Vite (filettatura esterna)], anchor: "center")

  // Screw body fill (follows exact thread teeth so valleys remain white = spazio vuoto)
  line(
    (1.80, 6.78),
    (3.50, 6.78), (3.66, 7.00), (3.82, 6.78), (3.98, 7.00), (4.14, 6.78), (4.30, 7.00),
    (4.46, 6.78), (4.62, 7.00), (4.78, 6.78), (4.94, 7.00), (5.10, 6.78), (5.26, 7.00),
    (5.42, 6.78), (5.58, 7.00), (5.74, 6.78), (5.90, 7.00), (6.06, 6.78), (6.22, 7.00),
    (6.44, 7.00), (6.44, 8.00), (6.22, 8.22),
    (6.06, 8.00), (5.90, 8.22), (5.74, 8.00), (5.58, 8.22), (5.42, 8.00), (5.26, 8.22),
    (5.10, 8.00), (4.94, 8.22), (4.78, 8.00), (4.62, 8.22), (4.46, 8.00), (4.30, 8.22),
    (4.14, 8.00), (3.98, 8.22), (3.82, 8.00), (3.66, 8.22), (3.50, 8.00), (3.50, 8.22),
    (1.80, 8.22),
    close: true, fill: luma(228), stroke: none
  )

  bezier((1.80, 7.50), (1.80, 8.22), (1.58, 7.68), (1.58, 8.04), fill: luma(228), stroke: 0.9pt)
  bezier((1.80, 6.78), (1.80, 7.50), (1.58, 6.96), (1.58, 7.32), fill: luma(228), stroke: 0.9pt)
  bezier((1.80, 7.50), (1.80, 8.22), (1.98, 7.68), (1.98, 8.04), fill: luma(195), stroke: 0.8pt)

  // Shaft outline
  line((1.80, 8.22), (3.50, 8.22), stroke: 0.95pt)
  line((1.80, 6.78), (3.50, 6.78), stroke: 0.95pt)
  line((3.50, 6.78), (3.50, 8.22), stroke: 0.7pt)

  // Thread top profile
  line((3.50, 8.00), (3.66, 8.22), (3.82, 8.00), (3.98, 8.22), (4.14, 8.00), (4.30, 8.22), (4.46, 8.00), (4.62, 8.22), (4.78, 8.00), (4.94, 8.22), (5.10, 8.00), (5.26, 8.22), (5.42, 8.00), (5.58, 8.22), (5.74, 8.00), (5.90, 8.22), (6.06, 8.00), (6.22, 8.22), stroke: 0.95pt)
  // Thread bottom profile
  line((3.50, 6.78), (3.66, 7.00), (3.82, 6.78), (3.98, 7.00), (4.14, 6.78), (4.30, 7.00), (4.46, 6.78), (4.62, 7.00), (4.78, 6.78), (4.94, 7.00), (5.10, 6.78), (5.26, 7.00), (5.42, 6.78), (5.58, 7.00), (5.74, 6.78), (5.90, 7.00), (6.06, 6.78), (6.22, 7.00), (6.44, 7.00), stroke: 0.95pt)
  // Chamfer and right end face
  line((6.22, 8.22), (6.44, 8.00), (6.44, 7.00), stroke: 0.95pt)

  // Helical crest lines
  line((3.66, 8.22), (3.82, 6.78), stroke: 0.8pt)
  line((3.98, 8.22), (4.14, 6.78), stroke: 0.8pt)
  line((4.30, 8.22), (4.46, 6.78), stroke: 0.8pt)
  line((4.62, 8.22), (4.78, 6.78), stroke: 0.8pt)
  line((4.94, 8.22), (5.10, 6.78), stroke: 0.8pt)
  line((5.26, 8.22), (5.42, 6.78), stroke: 0.8pt)
  line((5.58, 8.22), (5.74, 6.78), stroke: 0.8pt)
  line((5.90, 8.22), (6.06, 6.78), stroke: 0.8pt)
  line((6.22, 8.22), (6.36, 7.00), stroke: 0.8pt)

  // Helical root lines
  line((3.50, 8.00), (3.66, 7.00), stroke: 0.5pt)
  line((3.82, 8.00), (3.98, 7.00), stroke: 0.5pt)
  line((4.14, 8.00), (4.30, 7.00), stroke: 0.5pt)
  line((4.46, 8.00), (4.62, 7.00), stroke: 0.5pt)
  line((4.78, 8.00), (4.94, 7.00), stroke: 0.5pt)
  line((5.10, 8.00), (5.26, 7.00), stroke: 0.5pt)
  line((5.42, 8.00), (5.58, 7.00), stroke: 0.5pt)
  line((5.74, 8.00), (5.90, 7.00), stroke: 0.5pt)
  line((6.06, 8.00), (6.22, 7.00), stroke: 0.5pt)

  // Centerline axis
  line((1.40, 7.50), (6.65, 7.50), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Green rotation arrow
  bezier((0.25, 6.85), (1.00, 7.12), (0.25, 8.45), (1.00, 8.45), stroke: (paint: rgb(0, 120, 80), thickness: 6pt))
  line((0.83, 7.15), (1.17, 7.15), (1.00, 6.80), close: true, fill: rgb(0, 175, 115), stroke: (paint: rgb(0, 110, 75), thickness: 0.7pt))
  bezier((0.25, 6.85), (1.00, 7.12), (0.25, 8.45), (1.00, 8.45), stroke: (paint: rgb(0, 175, 115), thickness: 4.4pt))

  // Diameter reference lines & arrows (staggered well above Passo p)
  line((2.15, 8.22), (3.50, 8.22), stroke: 0.55pt)
  line((2.15, 6.78), (3.50, 6.78), stroke: 0.55pt)
  line((2.50, 8.11), (6.38, 8.11), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.50, 6.89), (6.38, 6.89), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.85, 8.00), (3.50, 8.00), stroke: 0.55pt)
  line((2.85, 7.00), (3.66, 7.00), stroke: 0.55pt)

  line((2.25, 6.78), (2.25, 8.22), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.25, 8.22), (2.25, 9.80), (2.75, 9.80), stroke: 0.6pt)
  content((2.83, 9.80), text(size: 7.5pt)[Diametro maggiore], anchor: "west")

  line((2.60, 6.89), (2.60, 8.11), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.60, 8.11), (2.60, 9.42), (2.95, 9.42), stroke: 0.6pt)
  content((3.03, 9.42), text(size: 7.5pt)[Diametro medio], anchor: "west")

  line((2.95, 7.00), (2.95, 8.00), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.95, 8.00), (2.95, 9.04), (3.15, 9.04), stroke: 0.6pt)
  content((3.23, 9.04), text(size: 7.5pt)[Diametro minore], anchor: "west")

  // Passo p (placed lower so it never touches Diametro minore)
  line((4.94, 8.28), (4.94, 8.74), stroke: 0.55pt)
  line((5.26, 8.28), (5.26, 8.74), stroke: 0.55pt)
  line((4.54, 8.58), (4.94, 8.58), mark: (end: ">"), stroke: 0.65pt)
  line((5.66, 8.58), (5.26, 8.58), mark: (end: ">"), stroke: 0.65pt)
  content((5.72, 8.58), text(size: 7.5pt)[Passo $p$], anchor: "west")

  // 45° Smusso
  line((6.28, 8.22), (7.15, 8.22), stroke: 0.55pt)
  line((6.44, 8.00), (6.98, 7.46), stroke: 0.55pt)
  arc((6.22, 8.22), start: 315deg, stop: 360deg, radius: 0.68, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((7.00, 7.90), text(size: 7.5pt)[45° Smusso], anchor: "west")

  // Spazio vuoto in Panel 1 (pointing into empty valley between threads)
  line((6.95, 6.88), (6.22, 6.88), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.65pt))
  content((7.00, 6.88), text(size: 7.5pt, fill: rgb(180, 60, 40))[Spazio vuoto], anchor: "west")

  // Gola & Cresta
  line((3.40, 6.32), (3.66, 6.32), (3.66, 7.00), mark: (end: ">"), stroke: 0.65pt)
  content((3.35, 6.32), text(size: 7.5pt)[Gola], anchor: "east")

  line((4.20, 5.95), (4.46, 5.95), (4.46, 6.78), mark: (end: ">"), stroke: 0.65pt)
  content((4.15, 5.95), text(size: 7.5pt)[Cresta], anchor: "east")

  // Angolo del filetto 2alpha
  line((5.74, 6.78), (5.42, 6.34), stroke: 0.55pt)
  line((5.74, 6.78), (6.06, 6.34), stroke: 0.55pt)
  arc((5.74, 6.78), start: 233.97deg, stop: 306.03deg, radius: 0.42, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((5.74, 6.36), (5.74, 6.02), (6.10, 6.02), stroke: 0.6pt)
  content((6.16, 6.02), text(size: 7.5pt)[Angolo del filetto $2 alpha$], anchor: "west")

  // ===
  // --- PANEL 2: VITE E MADREVITE (BOTTOM) ---
  // ===
  content((4.20, 5.28), text(size: 9.5pt, weight: "bold")[Accoppiamento Vite – Madrevite (sezione)], anchor: "center")

  // Vite fill
  line((2.40, 0.55), (3.70, 0.575), (4.30, 0.90), (3.70, 1.225), (4.30, 1.55), (3.70, 1.875), (4.30, 2.20), (3.70, 2.525), (4.30, 2.85), (3.70, 3.175), (4.30, 3.50), (3.70, 3.825), (4.30, 4.15), (3.70, 4.475), (4.30, 4.80), (2.40, 4.80), close: true, fill: luma(228), stroke: none)

  // Vite thread lines
  line((2.40, 4.725), (3.70, 4.475), stroke: 0.55pt)
  line((2.40, 4.075), (3.70, 3.825), stroke: 0.55pt)
  line((2.40, 3.425), (3.70, 3.175), stroke: 0.55pt)
  line((2.40, 2.775), (3.70, 2.525), stroke: 0.55pt)
  line((2.40, 2.125), (3.70, 1.875), stroke: 0.55pt)
  line((2.40, 1.475), (3.70, 1.225), stroke: 0.55pt)
  line((2.40, 0.825), (3.70, 0.575), stroke: 0.55pt)

  // Vite outlines
  line((2.40, 0.55), (2.40, 4.80), stroke: 0.9pt)
  line((2.40, 4.80), (4.30, 4.80), (3.70, 4.475), (4.30, 4.15), (3.70, 3.825), (4.30, 3.50), (3.70, 3.175), (4.30, 2.85), (3.70, 2.525), (4.30, 2.20), (3.70, 1.875), (4.30, 1.55), (3.70, 1.225), (4.30, 0.90), (3.70, 0.575), (2.40, 0.55), stroke: 0.9pt)

  // Vite vertical centerline
  line((2.70, 0.50), (2.70, 4.85), stroke: (paint: rgb(50, 130, 200), dash: "dash-dotted", thickness: 0.7pt))

  // Upper right block (clamped element) + hatching
  line((4.55, 2.85), (7.10, 2.85), (7.10, 4.80), (4.55, 4.80), close: true, fill: white, stroke: none)
  line((4.55, 4.55), (4.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.30), (5.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.05), (5.30, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.80), (5.55, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.55), (5.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.30), (6.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.05), (6.30, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.60, 2.85), (6.55, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.85, 2.85), (6.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.10, 2.85), (7.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.35, 2.85), (7.10, 4.60), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.60, 2.85), (7.10, 4.35), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.85, 2.85), (7.10, 4.10), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.10, 2.85), (7.10, 3.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.35, 2.85), (7.10, 3.60), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.60, 2.85), (7.10, 3.35), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.85, 2.85), (7.10, 3.10), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.80), (4.55, 2.85), (7.10, 2.85), stroke: 0.9pt)
  line((4.55, 4.80), (7.10, 4.80), stroke: 0.6pt)

  // Madrevite with visible radial/axial clearance (spazio vuoto) on non-contact flanks and crests/roots
  line(
    (4.50, 2.85), (3.80, 2.47), (4.40, 2.145), (3.80, 1.82), (4.40, 1.495), (3.80, 1.17), (4.40, 0.845), (3.80, 0.55),
    (7.10, 0.55), (7.10, 2.85),
    close: true, fill: white, stroke: none
  )

  // Madrevite hatching
  line((4.05, 0.55), (3.94, 0.66), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.35, 0.55), (4.16, 0.74), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.65, 0.55), (4.24, 0.96), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.95, 0.55), (4.14, 1.36), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.25, 0.55), (4.16, 1.64), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.55, 0.55), (4.12, 1.98), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.85, 0.55), (4.12, 2.28), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.15, 0.55), (4.12, 2.58), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.45, 0.55), (4.22, 2.78), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.75, 0.55), (4.45, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.05, 0.55), (4.75, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 0.80), (5.05, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.10), (5.35, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.40), (5.65, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.70), (5.95, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.00), (6.25, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.30), (6.55, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.60), (6.85, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))

  // Madrevite outline
  line((4.50, 2.85), (3.80, 2.47), (4.40, 2.145), (3.80, 1.82), (4.40, 1.495), (3.80, 1.17), (4.40, 0.845), (3.80, 0.55), stroke: 0.9pt)
  line((4.50, 2.85), (7.10, 2.85), stroke: 0.9pt)
  line((3.80, 0.55), (7.10, 0.55), stroke: 0.6pt)

  // Thick blue upward arrow in Vite
  line((3.10, 3.05), (3.22, 3.05), (3.22, 3.40), (3.30, 3.40), (3.16, 3.65), (3.02, 3.40), (3.10, 3.40), close: true, fill: rgb(0, 145, 235), stroke: none)

  // Thick dark downward arrow in upper block
  line((5.79, 3.55), (5.91, 3.55), (5.91, 3.22), (5.99, 3.22), (5.85, 2.97), (5.71, 3.22), (5.79, 3.22), close: true, fill: luma(45), stroke: none)

  // Engagement force arrows on contact flanks
  line((3.86, 2.10), (3.99, 2.34), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 2.62), (4.01, 2.38), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  line((3.86, 1.45), (3.99, 1.69), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 1.97), (4.01, 1.73), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  line((3.86, 0.80), (3.99, 1.04), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 1.32), (4.01, 1.08), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  // Labels in Panel 2
  content((1.45, 3.10), text(size: 9.5pt, weight: "bold")[Vite], anchor: "east")
  content((1.45, 2.78), text(size: 7pt, fill: luma(80))[(filetto esterno)], anchor: "east")
  line((1.55, 2.88), (2.90, 2.18), mark: (end: ">"), stroke: 0.75pt)

  // Madrevite label
  rect((4.85, 0.90), (6.90, 1.62), fill: white, stroke: none)
  content((5.875, 1.38), text(size: 9.5pt, weight: "bold")[Madrevite], anchor: "center")
  content((5.875, 1.08), text(size: 7pt, fill: luma(80))[(filetto interno)], anchor: "center")

  // Spazio vuoto label in Panel 2 pointing to both the thread clearance and upper gap
  rect((4.78, 2.00), (6.98, 2.44), fill: white, stroke: none)
  content((5.875, 2.22), text(size: 7.5pt, fill: rgb(180, 60, 40))[Spazio vuoto (gioco)], anchor: "center")
  line((4.78, 2.16), (4.32, 1.98), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.7pt))
  line((5.15, 2.44), (4.42, 3.35), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.7pt))
})
