#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // --- Sezione A-A (sinistra) ---
  circle((2.0, 0.15), radius: 1.15, stroke: 0.9pt)
  circle((2.0, 0.15), radius: 0.65, stroke: (dash: "dashed", thickness: 0.6pt))
  circle((2.0, 0.15), radius: 0.28, stroke: 0.75pt)
  circle((2.0, -0.15), radius: 1.15, stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Linguetta gialla sezione A-A
  line((1.279, 0.755), (1.095, 0.571), (2.721, -1.055), (2.905, -0.871), close: true, fill: rgb("#f5e625"), stroke: 0.8pt)
  line((1.272, 0.394), (1.456, 0.578), stroke: 0.45pt)
  line((1.484, 0.182), (1.668, 0.366), stroke: 0.45pt)
  line((1.696, -0.030), (1.880, 0.154), stroke: 0.45pt)
  line((1.908, -0.242), (2.092, -0.058), stroke: 0.45pt)
  line((2.120, -0.454), (2.304, -0.270), stroke: 0.45pt)
  line((2.332, -0.666), (2.516, -0.482), stroke: 0.45pt)
  line((2.544, -0.878), (2.728, -0.694), stroke: 0.45pt)

  // Assi sezione A-A e quota e
  line((2.0, -1.40), (2.0, 1.45), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.35, 0.15), (3.45, 0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.35, -0.15), (3.45, -0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.55, 0.55), (0.55, 0.15), mark: (end: ">"), stroke: 0.6pt)
  line((0.55, -0.55), (0.55, -0.15), mark: (end: ">"), stroke: 0.6pt)
  content((0.40, 0.0), text(size: 7.5pt)[$e$], anchor: "east")
  content((2.0, -1.70), text(size: 7.5pt)[Sez. $A$-$A$], anchor: "center")

  // --- Vista longitudinale (centro) ---
  // Albero sinistro
  line((3.55, 0.40), (3.85, 0.40), stroke: 0.85pt)
  line((3.55, -0.10), (3.85, -0.10), stroke: 0.85pt)
  line((3.55, 0.40), (3.60, 0.25), (3.52, 0.10), (3.58, -0.02), (3.55, -0.10), stroke: 0.7pt)

  // Mozzo e flangia sinistra (centrati a y = 0.15)
  line((3.85, -0.45), (3.85, 0.75), (4.35, 0.82), (4.35, 1.30), (4.85, 1.30), (4.85, -1.00), (4.35, -1.00), (4.35, -0.52), close: true, stroke: 0.9pt)
  // Foro albero e cava nascosti sinistra
  line((3.85, 0.40), (4.60, 0.40), (4.60, -0.10), (3.85, -0.10), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.72, 1.08), (4.85, 1.08), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.72, 1.08), (4.72, -0.78), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.72, -0.78), (4.85, -0.78), stroke: (dash: "dashed", thickness: 0.6pt))

  // Disco centrale giallo (Oldham)
  line((4.82, 1.15), (5.23, 1.15), (5.23, -0.82), (5.38, -0.82), (5.38, -1.05), (5.23, -1.05), (5.23, -1.15), (4.97, -1.15), (4.97, 0.95), (4.82, 0.95), close: true, fill: rgb("#f5e625"), stroke: 0.9pt)
  line((4.97, 1.15), (4.97, 0.95), stroke: 0.7pt)
  line((5.23, -0.82), (5.23, -1.05), stroke: 0.7pt)

  // Mozzo e flangia destra (centrati a y = -0.15)
  line((5.23, 1.00), (5.73, 1.00), (5.73, 0.52), (6.23, 0.45), (6.23, -0.75), (5.73, -0.82), (5.73, -1.30), (5.23, -1.30), close: true, stroke: 0.9pt)
  // Foro albero e cava nascosti destra
  line((6.23, 0.10), (5.48, 0.10), (5.48, -0.40), (6.23, -0.40), stroke: (dash: "dashed", thickness: 0.6pt))
  line((5.23, 0.78), (5.36, 0.78), (5.36, -0.82), stroke: (dash: "dashed", thickness: 0.6pt))

  // Albero destro
  line((6.23, 0.10), (6.55, 0.10), stroke: 0.85pt)
  line((6.23, -0.40), (6.55, -0.40), stroke: 0.85pt)
  line((6.55, 0.10), (6.50, -0.05), (6.58, -0.20), (6.52, -0.32), (6.55, -0.40), stroke: 0.7pt)

  // Linee d'asse longitudinali
  line((3.45, 0.15), (6.75, 0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((3.45, -0.15), (6.75, -0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Piani di sezione A e B
  line((4.90, 1.40), (4.90, 1.80), stroke: 0.7pt)
  line((4.90, 1.68), (4.62, 1.68), mark: (end: ">"), stroke: 0.7pt)
  content((4.52, 1.68), text(size: 7.5pt)[$A$], anchor: "east")

  line((4.90, -1.25), (4.90, -1.65), stroke: 0.7pt)
  line((4.90, -1.53), (4.62, -1.53), mark: (end: ">"), stroke: 0.7pt)
  content((4.52, -1.53), text(size: 7.5pt)[$A$], anchor: "east")

  line((5.30, 1.40), (5.30, 1.80), stroke: 0.7pt)
  line((5.30, 1.68), (5.58, 1.68), mark: (end: ">"), stroke: 0.7pt)
  content((5.68, 1.68), text(size: 7.5pt)[$B$], anchor: "west")

  line((5.30, -1.25), (5.30, -1.65), stroke: 0.7pt)
  line((5.30, -1.53), (5.58, -1.53), mark: (end: ">"), stroke: 0.7pt)
  content((5.68, -1.53), text(size: 7.5pt)[$B$], anchor: "west")

  // --- Sezione B-B (destra) ---
  circle((8.20, -0.15), radius: 1.15, stroke: 0.9pt)
  circle((8.20, -0.15), radius: 0.65, stroke: (dash: "dashed", thickness: 0.6pt))
  circle((8.20, -0.15), radius: 0.28, stroke: 0.75pt)
  circle((8.20, 0.15), radius: 1.15, stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Linguetta gialla sezione B-B
  line((7.479, 1.055), (7.295, 0.871), (8.921, -0.755), (9.105, -0.571), close: true, fill: rgb("#f5e625"), stroke: 0.8pt)
  line((7.472, 0.694), (7.656, 0.878), stroke: 0.45pt)
  line((7.684, 0.482), (7.868, 0.666), stroke: 0.45pt)
  line((7.896, 0.270), (8.080, 0.454), stroke: 0.45pt)
  line((8.108, 0.058), (8.292, 0.242), stroke: 0.45pt)
  line((8.320, -0.154), (8.504, 0.030), stroke: 0.45pt)
  line((8.532, -0.366), (8.716, -0.182), stroke: 0.45pt)
  line((8.744, -0.578), (8.928, -0.394), stroke: 0.45pt)

  // Assi sezione B-B
  line((8.20, -1.40), (8.20, 1.45), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((6.75, 0.15), (9.55, 0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((6.75, -0.15), (9.55, -0.15), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  content((8.20, -1.70), text(size: 7.5pt)[Sez. $B$-$B$], anchor: "center")
})
