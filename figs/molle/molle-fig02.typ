// Figura estratta da molle.typ (riga 141) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Campiture leggere per la rottura convenzionale del gambo
  bezier((2.944, 1.700), (3.084, 1.458), (2.838, 1.610), (2.908, 1.440), fill: black.transparentize(84%), stroke: none)
  bezier((2.944, 1.700), (3.084, 1.458), (3.050, 1.660), (3.150, 1.540), fill: black.transparentize(84%), stroke: none)
  bezier((3.151, 2.142), (3.291, 1.900), (3.085, 2.060), (3.185, 1.940), fill: black.transparentize(84%), stroke: none)
  bezier((3.151, 2.142), (3.291, 1.900), (3.327, 2.160), (3.397, 1.990), fill: black.transparentize(84%), stroke: none)

  // Assi geometrici (croce anteriore s = 0, asse longitudinale e asse trasversale s = 7.20)
  line((0.460, -0.797), (-0.460, 0.797), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((6.625, 2.925), (5.845, 4.275), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-0.476, -0.275), (2.122, 1.225), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((2.468, 1.425), (2.944, 1.700), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((3.291, 1.900), (6.712, 3.875), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Faccia anteriore sinistra (s = 0)
  bezier((0.303, 0.175), (-0.325, 0.563), (0.124, 0.486), (-0.158, 0.660), stroke: 1pt)
  bezier((-0.325, 0.563), (-0.303, -0.175), (-0.492, 0.466), (-0.482, 0.136), stroke: 1pt)
  bezier((-0.303, -0.175), (0.325, -0.563), (-0.124, -0.486), (0.158, -0.660), stroke: 1pt)
  bezier((0.325, -0.563), (0.303, 0.175), (0.492, -0.466), (0.482, -0.136), stroke: 1pt)

  // Testa scanalata sinistra (s = 0 .. 1.30)
  line((-0.325, 0.563), (0.801, 1.213), stroke: 1pt)
  line((0.325, -0.563), (1.451, 0.087), stroke: 1pt)
  bezier((1.451, 0.087), (1.429, 0.825), (1.618, 0.184), (1.608, 0.514), stroke: 1pt)
  bezier((1.429, 0.825), (0.801, 1.213), (1.250, 1.136), (0.968, 1.310), stroke: 1pt)

  // Scanalature regolari testa sinistra (passo 18deg)
  line((0.403, -0.481), (1.529, 0.169), stroke: 0.6pt)
  line((0.441, -0.352), (1.567, 0.298), stroke: 0.6pt)
  line((0.436, -0.189), (1.562, 0.461), stroke: 0.6pt)
  line((0.388, -0.008), (1.514, 0.642), stroke: 0.6pt)
  line((0.303, 0.175), (1.429, 0.825), stroke: 0.6pt)
  line((0.188, 0.340), (1.314, 0.990), stroke: 0.6pt)
  line((0.054, 0.473), (1.180, 1.123), stroke: 0.6pt)
  line((-0.085, 0.558), (1.041, 1.208), stroke: 0.6pt)
  line((-0.215, 0.589), (0.911, 1.239), stroke: 0.6pt)

  // Raccordo sinistro e gambo sinistro (s = 1.30 .. 3.40)
  bezier((0.996, 1.225), (1.592, 1.242), (1.180, 1.120), (1.360, 1.110), stroke: 1pt)
  bezier((1.559, 0.250), (1.872, 0.758), (1.550, 0.480), (1.640, 0.620), stroke: 1pt)
  line((1.592, 1.242), (2.804, 1.942), stroke: 1pt)
  line((1.872, 0.758), (3.084, 1.458), stroke: 1pt)

  // Rottura convenzionale sinistra (s = 3.40)
  bezier((2.804, 1.942), (2.944, 1.700), (2.980, 1.960), (3.050, 1.790), stroke: 0.9pt)
  bezier((2.944, 1.700), (3.084, 1.458), (2.838, 1.610), (2.908, 1.440), stroke: 0.9pt)
  bezier((2.944, 1.700), (3.084, 1.458), (3.050, 1.660), (3.150, 1.540), stroke: 0.9pt)

  // Rottura convenzionale destra (s = 3.80)
  bezier((3.151, 2.142), (3.291, 1.900), (3.085, 2.060), (3.185, 1.940), stroke: 0.9pt)
  bezier((3.151, 2.142), (3.291, 1.900), (3.327, 2.160), (3.397, 1.990), stroke: 0.9pt)
  bezier((3.291, 1.900), (3.431, 1.658), (3.185, 1.810), (3.255, 1.640), stroke: 0.9pt)

  // Gambo destro e raccordo destro "Ampio raggio" (s = 3.80 .. 5.90)
  line((3.151, 2.142), (4.363, 2.842), stroke: 1pt)
  line((3.431, 1.658), (4.643, 2.358), stroke: 1pt)
  bezier((4.363, 2.842), (4.784, 3.513), (4.640, 3.002), (4.720, 3.220), stroke: 1pt)
  bezier((4.643, 2.358), (5.434, 2.387), (4.920, 2.518), (5.160, 2.480), stroke: 1pt)

  // Parti circolari coperte nella testa destra (tratteggiate, s = 5.90 e s = 7.20)
  bezier((5.434, 2.387), (5.412, 3.125), (5.601, 2.484), (5.591, 2.814), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((5.412, 3.125), (4.784, 3.513), (5.233, 3.436), (4.951, 3.610), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((5.910, 4.163), (5.932, 3.425), (5.743, 4.066), (5.753, 3.736), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((5.932, 3.425), (6.560, 3.037), (6.111, 3.114), (6.393, 2.940), stroke: (dash: "dashed", thickness: 0.7pt))

  // Spalla anteriore e corpo testa scanalata destra (s = 5.90 .. 7.20)
  bezier((4.784, 3.513), (4.806, 2.775), (4.605, 3.416), (4.639, 3.086), stroke: 1pt)
  bezier((4.806, 2.775), (5.434, 2.387), (4.973, 2.464), (5.255, 2.290), stroke: 1pt)
  line((4.784, 3.513), (5.910, 4.163), stroke: 1pt)
  line((5.434, 2.387), (6.560, 3.037), stroke: 1pt)
  bezier((6.560, 3.037), (6.538, 3.775), (6.727, 3.134), (6.717, 3.464), stroke: 1pt)
  bezier((6.538, 3.775), (5.910, 4.163), (6.359, 4.086), (6.077, 4.260), stroke: 1pt)

  // Scanalature regolari testa destra e raccordo sfumato
  line((5.324, 2.361), (6.638, 3.119), stroke: 0.6pt)
  line((5.194, 2.392), (6.676, 3.248), stroke: 0.6pt)
  line((5.055, 2.477), (6.671, 3.411), stroke: 0.6pt)
  line((4.921, 2.610), (6.623, 3.592), stroke: 0.6pt)
  line((4.806, 2.775), (6.538, 3.775), stroke: 0.6pt)
  line((4.721, 2.958), (6.423, 3.940), stroke: 0.6pt)
  line((4.673, 3.139), (6.289, 4.073), stroke: 0.6pt)
  line((4.668, 3.302), (6.150, 4.158), stroke: 0.6pt)
  line((4.706, 3.431), (6.016, 4.189), stroke: 0.6pt)
  bezier((4.600, 2.440), (5.055, 2.477), (4.760, 2.520), (4.920, 2.490), stroke: 0.6pt)
  bezier((4.540, 2.530), (4.921, 2.610), (4.690, 2.600), (4.820, 2.605), stroke: 0.6pt)
  bezier((4.490, 2.620), (4.806, 2.775), (4.630, 2.700), (4.730, 2.740), stroke: 0.6pt)
  bezier((4.440, 2.710), (4.721, 2.958), (4.570, 2.810), (4.660, 2.890), stroke: 0.6pt)
  bezier((4.390, 2.800), (4.673, 3.139), (4.510, 2.920), (4.600, 3.040), stroke: 0.6pt)

  // Quota d sul gambo sinistro (s = 2.65)
  line((1.930, 1.957), (2.155, 1.567), mark: (end: ">"), stroke: 0.6pt)
  line((2.660, 0.693), (2.435, 1.083), mark: (end: ">"), stroke: 0.6pt)
  content((2.295, 1.325), [$d$])

  // Etichette e frecce di richiamo pulite
  content((1.95, -0.75), [Scanalato], anchor: "north")
  line((1.95, -0.70), (1.22, -0.02), mark: (end: ">"), stroke: 0.6pt)
  content((5.05, 1.55), [Ampio raggio], anchor: "north")
  line((4.95, 1.62), (4.76, 2.46), mark: (end: ">"), stroke: 0.6pt)
  content((6.60, 2.15), [Scanalato], anchor: "north")
  line((6.45, 2.22), (6.00, 2.74), mark: (end: ">"), stroke: 0.6pt)
})
