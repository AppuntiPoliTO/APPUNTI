// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // --- VISTA SINISTRA: SEZIONE LONGITUDINALE ---

  // Corpo esterno e manicotto (metà superiore, sezione fino a fondo scanalatura)
  line(
    (0.28, 1.75), (2.15, 1.75), (2.20, 1.70), (2.20, 0.96),
    (2.26, 0.90), (2.36, 0.90), (2.46, 0.98), (2.60, 0.96),
    (2.78, 0.90), (3.00, 0.86), (4.15, 0.86), (4.15, 0.72),
    (1.98, 0.72), (1.98, 0.80), (1.85, 0.80), (1.85, 1.35),
    (0.28, 1.35),
    close: true, fill: white, stroke: 0.75pt
  )
  // Cresta esterna scanalatura / linguetta sul manicotto (superiore, non tratteggiata)
  line(
    (2.46, 0.98), (4.11, 0.98), (4.15, 0.94), (4.15, 0.86),
    stroke: 0.75pt
  )

  // Corpo esterno e manicotto (metà inferiore, sezione fino a fondo scanalatura)
  line(
    (0.28, -1.75), (2.15, -1.75), (2.20, -1.70), (2.20, -0.96),
    (2.26, -0.90), (2.36, -0.90), (2.46, -0.98), (2.60, -0.96),
    (2.78, -0.90), (3.00, -0.86), (4.15, -0.86), (4.15, -0.72),
    (1.98, -0.72), (1.98, -0.80), (1.85, -0.80), (1.85, -1.35),
    (0.28, -1.35),
    close: true, fill: white, stroke: 0.75pt
  )
  // Cresta esterna scanalatura / linguetta sul manicotto (inferiore, non tratteggiata)
  line(
    (2.46, -0.98), (4.11, -0.98), (4.15, -0.94), (4.15, -0.86),
    stroke: 0.75pt
  )

  // Tratteggio corpo esterno superiore (/)
  line((0.28, 1.53), (0.50, 1.75), stroke: 0.35pt)
  line((0.35, 1.35), (0.75, 1.75), stroke: 0.35pt)
  line((0.60, 1.35), (1.00, 1.75), stroke: 0.35pt)
  line((0.85, 1.35), (1.25, 1.75), stroke: 0.35pt)
  line((1.10, 1.35), (1.50, 1.75), stroke: 0.35pt)
  line((1.35, 1.35), (1.75, 1.75), stroke: 0.35pt)
  line((1.60, 1.35), (2.00, 1.75), stroke: 0.35pt)
  line((1.85, 1.35), (2.20, 1.70), stroke: 0.35pt)
  line((1.85, 1.10), (2.20, 1.45), stroke: 0.35pt)
  line((1.85, 0.85), (2.20, 1.20), stroke: 0.35pt)
  line((1.98, 0.73), (2.20, 0.95), stroke: 0.35pt)
  line((2.22, 0.72), (2.47, 0.97), stroke: 0.35pt)
  line((2.47, 0.72), (2.68, 0.93), stroke: 0.35pt)
  line((2.72, 0.72), (2.88, 0.88), stroke: 0.35pt)
  line((2.97, 0.72), (3.11, 0.86), stroke: 0.35pt)
  line((3.22, 0.72), (3.36, 0.86), stroke: 0.35pt)
  line((3.47, 0.72), (3.61, 0.86), stroke: 0.35pt)
  line((3.72, 0.72), (3.86, 0.86), stroke: 0.35pt)
  line((3.97, 0.72), (4.11, 0.86), stroke: 0.35pt)

  // Tratteggio corpo esterno inferiore (/)
  line((0.28, -1.47), (0.40, -1.35), stroke: 0.35pt)
  line((0.28, -1.72), (0.65, -1.35), stroke: 0.35pt)
  line((0.50, -1.75), (0.90, -1.35), stroke: 0.35pt)
  line((0.75, -1.75), (1.15, -1.35), stroke: 0.35pt)
  line((1.00, -1.75), (1.40, -1.35), stroke: 0.35pt)
  line((1.25, -1.75), (1.65, -1.35), stroke: 0.35pt)
  line((1.50, -1.75), (2.20, -1.05), stroke: 0.35pt)
  line((1.75, -1.75), (2.20, -1.30), stroke: 0.35pt)
  line((2.00, -1.75), (2.20, -1.55), stroke: 0.35pt)
  line((1.85, -0.90), (1.95, -0.80), stroke: 0.35pt)
  line((1.85, -1.15), (2.28, -0.72), stroke: 0.35pt)
  line((2.35, -0.90), (2.53, -0.72), stroke: 0.35pt)
  line((2.53, -0.97), (2.78, -0.72), stroke: 0.35pt)
  line((2.86, -0.89), (3.03, -0.72), stroke: 0.35pt)
  line((3.14, -0.86), (3.28, -0.72), stroke: 0.35pt)
  line((3.39, -0.86), (3.53, -0.72), stroke: 0.35pt)
  line((3.64, -0.86), (3.78, -0.72), stroke: 0.35pt)
  line((3.89, -0.86), (4.03, -0.72), stroke: 0.35pt)

  // Boccola nel manicotto (metà superiore e inferiore)
  line(
    (1.85, 0.58), (4.15, 0.58), (4.15, 0.72), (1.98, 0.72),
    (1.98, 0.80), (1.85, 0.80),
    close: true, fill: white, stroke: 0.7pt
  )
  line(
    (1.85, -0.58), (4.15, -0.58), (4.15, -0.72), (1.98, -0.72),
    (1.98, -0.80), (1.85, -0.80),
    close: true, fill: white, stroke: 0.7pt
  )
  // Tratteggio fitto boccola (\)
  line((1.85, 0.74), (2.01, 0.58), stroke: 0.3pt)
  line((2.05, 0.72), (2.19, 0.58), stroke: 0.3pt)
  line((2.23, 0.72), (2.37, 0.58), stroke: 0.3pt)
  line((2.41, 0.72), (2.55, 0.58), stroke: 0.3pt)
  line((2.59, 0.72), (2.73, 0.58), stroke: 0.3pt)
  line((2.77, 0.72), (2.91, 0.58), stroke: 0.3pt)
  line((2.95, 0.72), (3.09, 0.58), stroke: 0.3pt)
  line((3.13, 0.72), (3.27, 0.58), stroke: 0.3pt)
  line((3.31, 0.72), (3.45, 0.58), stroke: 0.3pt)
  line((3.49, 0.72), (3.63, 0.58), stroke: 0.3pt)
  line((3.67, 0.72), (3.81, 0.58), stroke: 0.3pt)
  line((3.85, 0.72), (3.99, 0.58), stroke: 0.3pt)
  line((4.03, 0.72), (4.15, 0.60), stroke: 0.3pt)

  line((1.85, -0.58), (2.00, -0.73), stroke: 0.3pt)
  line((2.05, -0.58), (2.19, -0.72), stroke: 0.3pt)
  line((2.23, -0.58), (2.37, -0.72), stroke: 0.3pt)
  line((2.41, -0.58), (2.55, -0.72), stroke: 0.3pt)
  line((2.59, -0.58), (2.73, -0.72), stroke: 0.3pt)
  line((2.77, -0.58), (2.91, -0.72), stroke: 0.35pt)
  line((2.95, -0.58), (3.09, -0.72), stroke: 0.3pt)
  line((3.13, -0.58), (3.27, -0.72), stroke: 0.3pt)
  line((3.31, -0.58), (3.45, -0.72), stroke: 0.3pt)
  line((3.49, -0.58), (3.63, -0.72), stroke: 0.3pt)
  line((3.67, -0.58), (3.81, -0.72), stroke: 0.3pt)
  line((3.85, -0.58), (3.99, -0.72), stroke: 0.3pt)
  line((4.03, -0.58), (4.15, -0.70), stroke: 0.3pt)

  // Coperchio sinistro (metà superiore e inferiore)
  line(
    (0.05, 1.75), (0.28, 1.75), (0.28, 1.35), (0.45, 1.35),
    (0.45, 1.08), (0.08, 1.08), (0.08, 0.84), (0.00, 0.84),
    (0.00, 1.70),
    close: true, fill: white, stroke: 0.75pt
  )
  line(
    (0.05, -1.75), (0.28, -1.75), (0.28, -1.35), (0.45, -1.35),
    (0.45, -1.08), (0.08, -1.08), (0.08, -0.84), (0.00, -0.84),
    (0.00, -1.70),
    close: true, fill: white, stroke: 0.75pt
  )
  // Tratteggio coperchio (\)
  line((0.17, 1.75), (0.28, 1.64), stroke: 0.35pt)
  line((0.00, 1.70), (0.28, 1.42), stroke: 0.35pt)
  line((0.35, 1.35), (0.45, 1.25), stroke: 0.35pt)
  line((0.00, 1.48), (0.40, 1.08), stroke: 0.35pt)
  line((0.00, 1.26), (0.18, 1.08), stroke: 0.35pt)
  line((0.00, 1.04), (0.08, 0.96), stroke: 0.35pt)

  line((0.00, -0.92), (0.08, -1.00), stroke: 0.35pt)
  line((0.00, -1.14), (0.28, -1.42), stroke: 0.35pt)
  line((0.16, -1.08), (0.43, -1.35), stroke: 0.35pt)
  line((0.38, -1.08), (0.45, -1.15), stroke: 0.35pt)
  line((0.00, -1.36), (0.28, -1.64), stroke: 0.35pt)
  line((0.00, -1.58), (0.17, -1.75), stroke: 0.35pt)

  // Guarnizioni (paraolio superiore e inferiore)
  rect((0.08, 0.84), (0.45, 1.08), fill: white, stroke: 0.65pt)
  line((0.14, 0.88), (0.14, 1.03), (0.40, 1.03), (0.40, 0.90), stroke: 0.5pt)
  line((0.14, 0.88), (0.23, 0.88), (0.31, 0.84), stroke: 0.5pt)
  circle((0.28, 0.94), radius: 0.042, fill: white, stroke: 0.5pt)

  rect((0.08, -1.08), (0.45, -0.84), fill: white, stroke: 0.65pt)
  line((0.14, -0.88), (0.14, -1.03), (0.40, -1.03), (0.40, -0.90), stroke: 0.5pt)
  line((0.14, -0.88), (0.23, -0.88), (0.31, -0.84), stroke: 0.5pt)
  circle((0.28, -0.94), radius: 0.042, fill: white, stroke: 0.5pt)

  // Anello interno / stella (metà superiore)
  line(
    (0.00, 0.58), (1.85, 0.58), (1.85, 0.95), (0.45, 0.95),
    (0.45, 0.84), (0.00, 0.84),
    close: true, fill: white, stroke: 0.75pt
  )
  // Anello interno / stella (metà inferiore: il lobo a 270° scende fino a y = -1.24)
  line(
    (0.00, -0.58), (1.85, -0.58), (1.85, -1.24), (0.45, -1.24),
    (0.45, -0.84), (0.00, -0.84),
    close: true, fill: white, stroke: 0.75pt
  )
  // Tratteggio anello interno superiore (\)
  line((0.00, 0.75), (0.17, 0.58), stroke: 0.35pt)
  line((0.16, 0.84), (0.42, 0.58), stroke: 0.35pt)
  line((0.41, 0.84), (0.67, 0.58), stroke: 0.35pt)
  line((0.55, 0.95), (0.92, 0.58), stroke: 0.35pt)
  line((0.80, 0.95), (1.17, 0.58), stroke: 0.35pt)
  line((1.05, 0.95), (1.42, 0.58), stroke: 0.35pt)
  line((1.30, 0.95), (1.67, 0.58), stroke: 0.35pt)
  line((1.55, 0.95), (1.85, 0.65), stroke: 0.35pt)

  // Tratteggio anello interno inferiore (\)
  line((0.00, -0.75), (0.09, -0.84), stroke: 0.35pt)
  line((0.08, -0.58), (0.34, -0.84), stroke: 0.35pt)
  line((0.45, -1.20), (0.49, -1.24), stroke: 0.35pt)
  line((0.45, -0.95), (0.74, -1.24), stroke: 0.35pt)
  line((0.33, -0.58), (0.99, -1.24), stroke: 0.35pt)
  line((0.58, -0.58), (1.24, -1.24), stroke: 0.35pt)
  line((0.83, -0.58), (1.49, -1.24), stroke: 0.35pt)
  line((1.08, -0.58), (1.74, -1.24), stroke: 0.35pt)
  line((1.33, -0.58), (1.85, -1.10), stroke: 0.35pt)
  line((1.58, -0.58), (1.85, -0.85), stroke: 0.35pt)

  // Rullo (solo metà superiore)
  line(
    (0.51, 1.35), (1.79, 1.35), (1.82, 1.32), (1.82, 0.98),
    (1.79, 0.95), (0.51, 0.95), (0.48, 0.98), (0.48, 1.32),
    close: true, fill: white, stroke: 0.75pt
  )
  line((0.42, 1.15), (1.92, 1.15), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  // Foro interno e proiezione cava linguetta (coerente con cava a 210° nella vista destra)
  line((0.00, 0.58), (0.00, -0.58), stroke: 0.75pt)
  line((1.85, 0.58), (1.85, -0.58), stroke: 0.75pt)
  line((4.15, 0.58), (4.15, -0.58), stroke: 0.75pt)
  line((0.00, -0.18), (1.85, -0.18), stroke: 0.55pt)
  line((0.00, -0.26), (1.85, -0.26), stroke: 0.55pt)
  line((0.00, -0.39), (1.85, -0.39), stroke: 0.55pt)

  // Assi viti sul coperchio (superiore e inferiore a y = ±1.54)
  line((-0.24, 1.54), (0.95, 1.54), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((-0.24, -1.54), (0.36, -1.54), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  // Contorni fantasma (albero a sinistra/destra e pezzo accoppiato a destra)
  line((-0.65, 0.68), (0.00, 0.68), stroke: 0.45pt)
  line((-0.65, -0.68), (0.00, -0.68), stroke: 0.45pt)
  line(
    (4.15, 0.58), (4.24, 0.58), (4.30, 0.52),
    (4.30, -0.52), (4.24, -0.58), (4.15, -0.58),
    stroke: 0.45pt
  )
  line((2.20, 1.80), (2.20, 2.25), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((2.20, -1.80), (2.20, -2.25), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line(
    (2.86, 2.20), (2.86, 1.67), (2.89, 1.60), (2.96, 1.55), (4.38, 1.55),
    (4.38, -1.55), (2.96, -1.55), (2.89, -1.60), (2.86, -1.67), (2.86, -2.20),
    stroke: (dash: "dash-dotted", thickness: 0.45pt)
  )
  line((4.15, 0.88), (4.38, 0.88), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((4.15, -0.88), (4.38, -0.88), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  // --- VISTA DESTRA: SEZIONE TRASVERSALE PARZIALE ---

  // Anello esterno: riempimento base
  circle((7.60, 0.00), radius: 1.75, fill: white, stroke: 0.75pt)

  // Tratteggio anello esterno (/) ritagliato esattamente tra R=1.35 e R=1.75
  line((5.954, 0.594), (7.006, 1.646), stroke: 0.35pt)
  line((5.859, 0.179), (7.421, 1.741), stroke: 0.35pt)
  line((5.856, -0.144), (6.279, 0.279), stroke: 0.35pt)
  line((7.321, 1.321), (7.744, 1.744), stroke: 0.35pt)
  line((5.901, -0.419), (6.252, -0.068), stroke: 0.35pt)
  line((7.668, 1.348), (8.019, 1.699), stroke: 0.35pt)
  line((5.979, -0.661), (6.295, -0.345), stroke: 0.35pt)
  line((7.945, 1.305), (8.261, 1.621), stroke: 0.35pt)
  line((6.085, -0.875), (6.381, -0.579), stroke: 0.35pt)
  line((8.179, 1.219), (8.475, 1.515), stroke: 0.35pt)
  line((6.213, -1.067), (6.499, -0.781), stroke: 0.35pt)
  line((8.381, 1.101), (8.667, 1.387), stroke: 0.35pt)
  line((6.363, -1.237), (6.645, -0.955), stroke: 0.35pt)
  line((8.555, 0.955), (8.837, 1.237), stroke: 0.35pt)
  line((6.533, -1.387), (6.819, -1.101), stroke: 0.35pt)
  line((8.701, 0.781), (8.987, 1.067), stroke: 0.35pt)
  line((6.725, -1.515), (7.021, -1.219), stroke: 0.35pt)
  line((8.819, 0.579), (9.115, 0.875), stroke: 0.35pt)
  line((6.939, -1.621), (7.255, -1.305), stroke: 0.35pt)
  line((8.905, 0.345), (9.221, 0.661), stroke: 0.35pt)
  line((7.181, -1.699), (7.532, -1.348), stroke: 0.35pt)
  line((8.948, 0.068), (9.299, 0.419), stroke: 0.35pt)
  line((8.921, -0.279), (9.344, 0.144), stroke: 0.35pt)
  line((8.940, -0.580), (9.341, -0.179), stroke: 0.35pt)

  // Pista interna dell'anello esterno
  circle((7.60, 0.00), radius: 1.35, fill: white, stroke: 0.75pt)

  // Stella interna a 5 lobi simmetrici (rampe piane + dorso R=1.20 + gradini pistoncini)
  line(
    (7.355, 0.908), (8.293, 0.980), (8.443, 0.854), (8.570, 0.707),
    (8.388, 0.514), (8.746, -0.356), (8.672, -0.538), (8.572, -0.705),
    (8.332, -0.591), (7.615, -1.200), (7.420, -1.187), (7.231, -1.142),
    (7.264, -0.879), (6.463, -0.386), (6.416, -0.195), (6.399, -0.002),
    (6.660, 0.048), (6.882, 0.962), (7.048, 1.066), (7.228, 1.141),
    close: true, fill: white, stroke: 0.75pt
  )

  // Tratteggio stella interna (\)
  line((8.132, 0.968), (8.484, 0.616), stroke: 0.35pt)
  line((7.853, 0.947), (8.459, 0.341), stroke: 0.35pt)
  line((7.575, 0.925), (8.669, -0.169), stroke: 0.35pt)
  line((7.109, 1.091), (8.691, -0.491), stroke: 0.35pt)
  line((6.916, 0.984), (8.550, -0.650), stroke: 0.35pt)
  line((6.834, 0.766), (8.300, -0.700), stroke: 0.35pt)
  line((6.776, 0.524), (8.000, -0.700), stroke: 0.35pt)
  line((6.717, 0.283), (7.800, -0.800), stroke: 0.35pt)
  line((6.653, 0.047), (7.700, -1.000), stroke: 0.35pt)
  line((6.400, 0.000), (7.500, -1.100), stroke: 0.35pt)
  line((6.423, -0.223), (6.783, -0.583), stroke: 0.35pt)
  line((7.243, -1.043), (7.350, -1.150), stroke: 0.35pt)

  // Spaccato locale della molla e del pistoncino sul rullo superiore (90°)
  line(
    (6.947, 0.878), (7.282, 1.056), (7.352, 0.924), (7.017, 0.746),
    close: true, fill: white, stroke: 0.6pt
  )
  // Molla elicoidale a zig-zag nella sede
  line(
    (6.991, 0.816), (6.980, 0.879), (7.063, 0.787), (7.033, 0.907),
    (7.116, 0.815), (7.086, 0.935), (7.169, 0.843), (7.139, 0.963),
    (7.222, 0.871), (7.211, 0.934),
    stroke: 0.55pt
  )
  // Pistoncino superiore (90°)
  line(
    (7.190, 0.995), (7.385, 1.098), (7.445, 0.984), (7.250, 0.881),
    close: true, fill: white, stroke: 0.6pt
  )
  // Linea ondulata di spaccato locale sotto la sede della molla
  line(
    (6.860, 0.860), (6.940, 0.730), (7.080, 0.680),
    (7.250, 0.690), (7.420, 0.790), (7.540, 0.920),
    stroke: 0.45pt
  )

  // Pistoncini sporgenti sugli altri 3 rulli visibili (18°, 234°, 162°)
  line(
    (8.485, 0.621), (8.572, 0.538), (8.494, 0.458), (8.408, 0.541),
    close: true, fill: white, stroke: 0.6pt
  )
  line(
    (7.249, -1.023), (7.130, -1.006), (7.146, -0.896), (7.264, -0.913),
    close: true, fill: white, stroke: 0.6pt
  )
  line(
    (6.519, 0.018), (6.498, 0.136), (6.607, 0.155), (6.628, 0.037),
    close: true, fill: white, stroke: 0.6pt
  )

  // 4 Rulli visibili (a 90°, 18°, 162°, 234°)
  circle((7.600, 1.140), radius: 0.21, fill: white, stroke: 0.75pt)
  circle((8.684, 0.352), radius: 0.21, fill: white, stroke: 0.75pt)
  circle((6.516, 0.352), radius: 0.21, fill: white, stroke: 0.75pt)
  circle((6.930, -0.922), radius: 0.21, fill: white, stroke: 0.75pt)

  // Settore spaccato coperchio esterno (maschera bianca in basso a destra)
  line(
    (7.118, -1.682), (7.180, -1.520), (7.240, -1.350), (7.260, -1.180),
    (7.320, -1.030), (7.280, -0.880), (7.360, -0.720), (7.479, -0.567),
    (7.600, -0.580), (7.750, -0.560), (7.890, -0.502), (8.010, -0.410),
    (8.102, -0.290), (8.160, -0.150), (8.178, -0.051),
    (8.420, -0.051), (8.600, -0.120), (8.780, -0.180), (8.960, -0.200),
    (9.120, -0.350), (9.282, -0.482),
    (9.173, -0.767), (9.016, -1.029), (8.816, -1.259), (8.579, -1.451),
    (8.312, -1.599), (8.023, -1.698), (7.722, -1.746), (7.417, -1.740),
    close: true, fill: white, stroke: none
  )
  // Linee di rottura dello spaccato del coperchio
  line(
    (7.118, -1.682), (7.180, -1.520), (7.240, -1.350), (7.260, -1.180),
    (7.320, -1.030), (7.280, -0.880), (7.360, -0.720), (7.479, -0.567),
    stroke: 0.6pt
  )
  line(
    (8.178, -0.051), (8.420, -0.051), (8.600, -0.120), (8.780, -0.180),
    (8.960, -0.200), (9.120, -0.350), (9.282, -0.482),
    stroke: 0.6pt
  )
  // Due archi concentrici del coperchio visibili nel settore spaccato
  arc((7.60, 0.00), start: -109deg, stop: -4deg, radius: 0.84, anchor: "origin", stroke: 0.65pt)
  arc((7.60, 0.00), start: -107deg, stop: -7deg, radius: 1.00, anchor: "origin", stroke: 0.65pt)

  // Ripasso cerchio esterno per chiusura netta sul settore spaccato
  circle((7.60, 0.00), radius: 1.75, fill: none, stroke: 0.75pt)

  // Due teste esagonali delle viti sul coperchio (a 270° e 315°, R=1.54)
  line(
    (7.600, -1.400), (7.721, -1.470), (7.721, -1.610),
    (7.600, -1.680), (7.479, -1.610), (7.479, -1.470),
    close: true, fill: white, stroke: 0.65pt
  )
  line(
    (8.689, -0.949), (8.810, -1.019), (8.810, -1.159),
    (8.689, -1.229), (8.568, -1.159), (8.568, -1.019),
    close: true, fill: white, stroke: 0.65pt
  )

  // Foro interno e cava per linguetta aperta a 210° (senza arco sull'imbocco)
  circle((7.60, 0.00), radius: 0.58, fill: white, stroke: none)
  line(
    (7.048, -0.179), (6.909, -0.259), (7.030, -0.468), (7.169, -0.388),
    close: true, fill: white, stroke: none
  )
  arc((7.60, 0.00), start: -138deg, stop: 198deg, radius: 0.58, anchor: "origin", stroke: 0.75pt)
  line(
    (7.048, -0.179), (6.909, -0.259), (7.030, -0.468), (7.169, -0.388),
    stroke: 0.75pt
  )

  // Assi principali (orizzontale continuo tra le due viste, verticale sulla vista destra)
  line((-0.80, 0.00), (9.70, 0.00), stroke: (dash: "dash-dotted", thickness: 0.45pt))
  line((7.60, -2.15), (7.60, 2.28), stroke: (dash: "dash-dotted", thickness: 0.45pt))

  // Frecce di rotazione esterne e scritte (senza sovrapposizioni)
  arc(
    (7.60, 0.00), start: 98deg, stop: 118deg, radius: 1.90,
    anchor: "origin", stroke: 0.65pt,
    mark: (start: ">", fill: none, scale: 0.55)
  )
  arc(
    (7.60, 0.00), start: 98deg, stop: 118deg, radius: 2.08,
    anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt),
    mark: (end: ">", fill: none, scale: 0.55)
  )
  content((6.55, 2.06), text(size: 8.5pt)[_libera_], anchor: "east")
  content((7.44, 1.94), text(size: 8.5pt)[_innestata_], anchor: "west")

  // Frecce di rotazione interne (nel foro)
  arc(
    (7.60, 0.00), start: 100deg, stop: 165deg, radius: 0.42,
    anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt),
    mark: (start: ">", fill: none, scale: 0.45)
  )
  arc(
    (7.60, 0.00), start: 100deg, stop: 165deg, radius: 0.29,
    anchor: "origin", stroke: 0.6pt,
    mark: (end: ">", fill: none, scale: 0.45)
  )
})
