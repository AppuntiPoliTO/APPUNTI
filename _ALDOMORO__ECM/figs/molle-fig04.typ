// Figura estratta da molle.typ (riga 434) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// --- STRATO 1: TRATTI POSTERIORI DELLE SPIRE ---

// Spira 1 dietro (-180deg -> -235deg, entra dietro spira 2 davanti)
line(
  (-2.220, 0.820), (-2.040, 1.150), (-1.480, 1.512), (-1.220, 1.560),
  (-1.120, 1.160), (-1.348, 1.092), (-1.690, 0.960), (-1.780, 0.820),
  close: true, fill: white, stroke: none
)
bezier((-2.220, 0.820), (-1.220, 1.560), (-2.220, 1.240), (-1.690, 1.460), stroke: 1pt)
bezier((-1.780, 0.820), (-1.120, 1.160), (-1.780, 0.970), (-1.450, 1.090), stroke: 1pt)

// Spira 2 dietro (0deg -> 90deg -> 180deg)
line(
  (2.220, 1.380), (2.040, 1.880), (1.522, 2.333), (0.820, 2.635), (0.020, 2.759), (-0.770, 2.765), (-1.480, 2.632), (-2.010, 2.320), (-2.220, 1.940),
  (-1.780, 1.940), (-1.690, 2.090), (-1.348, 2.212), (-0.720, 2.305), (-0.020, 2.321), (0.660, 2.210), (1.306, 1.951), (1.675, 1.660), (1.780, 1.380),
  close: true, fill: white, stroke: none
)
bezier((2.220, 1.380), (0.020, 2.759), (2.220, 2.179), (1.092, 2.663), stroke: 1pt)
bezier((0.020, 2.759), (-2.220, 1.940), (-0.993, 2.850), (-2.220, 2.602), stroke: 1pt)
bezier((1.780, 1.380), (-0.020, 2.321), (1.780, 1.750), (1.116, 2.219), stroke: 1pt)
bezier((-0.020, 2.321), (-1.780, 1.940), (-1.215, 2.428), (-1.780, 2.050), stroke: 1pt)

// Spira 3 superiore dietro (360deg -> 450deg -> 540deg)
line(
  (2.220, 2.500), (2.040, 3.000), (1.522, 3.453), (0.820, 3.755), (0.020, 3.879), (-0.770, 3.885), (-1.480, 3.752), (-2.010, 3.440), (-2.220, 3.060),
  (-1.780, 3.060), (-1.690, 3.210), (-1.348, 3.332), (-0.720, 3.425), (-0.020, 3.441), (0.660, 3.330), (1.306, 3.071), (1.675, 2.780), (1.780, 2.500),
  close: true, fill: white, stroke: none
)
bezier((2.220, 2.500), (0.020, 3.879), (2.220, 3.299), (1.092, 3.783), stroke: 1pt)
bezier((0.020, 3.879), (-2.220, 3.060), (-0.993, 3.970), (-2.220, 3.722), stroke: 1pt)
bezier((1.780, 2.500), (-0.020, 3.441), (1.780, 2.870), (1.116, 3.339), stroke: 1pt)
bezier((-0.020, 3.441), (-1.780, 3.060), (-1.215, 3.548), (-1.780, 3.170), stroke: 1pt)

// --- STRATO 2: ASSE CENTRALE DELLA MOLLA ---
line((0, -0.15), (0, 4.20), stroke: (dash: "dash-dotted", thickness: 0.55pt))

// --- STRATO 3: TRATTI ANTERIORI DELLE SPIRE (CAMPITI BIANCO + CONTORNI NERI) ---

// Spira 1 inferiore davanti (-180deg -> -90deg -> 0deg)
line(
  (-2.220, 0.820), (-1.988, 0.384), (-1.480, 0.128), (-0.785, -0.002), (0.020, 0.001), (0.825, 0.145), (1.522, 0.427), (2.022, 0.839), (2.220, 1.380),
  (1.780, 1.380), (1.674, 1.107), (1.306, 0.809), (0.707, 0.569), (-0.020, 0.439), (-0.747, 0.436), (-1.348, 0.548), (-1.708, 0.722), (-1.780, 0.820),
  close: true, fill: white, stroke: none
)
bezier((-2.220, 0.820), (0.020, 0.001), (-2.220, 0.158), (-0.993, -0.090), stroke: 1pt)
bezier((0.020, 0.001), (2.220, 1.380), (1.092, 0.097), (2.220, 0.581), stroke: 1pt)
bezier((-1.780, 0.820), (-0.020, 0.439), (-1.780, 0.710), (-1.215, 0.332), stroke: 1pt)
bezier((-0.020, 0.439), (1.780, 1.380), (1.116, 0.541), (1.780, 1.010), stroke: 1pt)

// Spira 2 centrale davanti (180deg -> 270deg -> 360deg)
line(
  (-2.220, 1.940), (-1.988, 1.504), (-1.480, 1.248), (-0.785, 1.118), (0.020, 1.121), (0.825, 1.265), (1.522, 1.547), (2.022, 1.959), (2.220, 2.500),
  (1.780, 2.500), (1.674, 2.227), (1.306, 1.929), (0.707, 1.689), (-0.020, 1.559), (-0.747, 1.556), (-1.348, 1.668), (-1.708, 1.842), (-1.780, 1.940),
  close: true, fill: white, stroke: none
)
bezier((-2.220, 1.940), (0.020, 1.121), (-2.220, 1.278), (-0.993, 1.030), stroke: 1pt)
bezier((0.020, 1.121), (2.220, 2.500), (1.092, 1.217), (2.220, 1.701), stroke: 1pt)
bezier((-1.780, 1.940), (-0.020, 1.559), (-1.780, 1.830), (-1.215, 1.452), stroke: 1pt)
bezier((-0.020, 1.559), (1.780, 2.500), (1.116, 1.661), (1.780, 2.130), stroke: 1pt)

// Tratto terminale della spira 3 fino alla sezione A (540deg -> 565deg)
line(
  (-2.220, 3.060), (-2.120, 2.800), (-1.943, 2.587), (-1.683, 2.941), (-1.740, 3.000), (-1.780, 3.060),
  close: true, fill: white, stroke: none
)
bezier((-2.220, 3.060), (-1.943, 2.587), (-2.220, 2.820), (-2.080, 2.700), stroke: 1pt)
bezier((-1.780, 3.060), (-1.683, 2.941), (-1.780, 2.990), (-1.730, 2.970), stroke: 1pt)

// --- STRATO 4: SEZIONE A, TERNA LOCALE (x, y, z), FORZE N, T, F ---

// Campitura e tratteggio della sezione circolare A
bezier((-1.708, 2.687), (-1.683, 2.941), (-1.636, 2.785), (-1.625, 2.898), fill: black.transparentize(84%), stroke: none)
bezier((-1.683, 2.941), (-1.918, 2.841), (-1.741, 2.984), (-1.846, 2.939), fill: black.transparentize(84%), stroke: none)
bezier((-1.918, 2.841), (-1.943, 2.587), (-1.990, 2.743), (-2.001, 2.630), fill: black.transparentize(84%), stroke: none)
bezier((-1.943, 2.587), (-1.708, 2.687), (-1.885, 2.544), (-1.780, 2.589), fill: black.transparentize(84%), stroke: none)
line((-1.708, 2.687), (-1.683, 2.941), (-1.918, 2.841), (-1.943, 2.587), close: true, fill: black.transparentize(84%), stroke: none)
line((-1.93, 2.63), (-1.72, 2.93), stroke: 0.5pt)
line((-1.94, 2.76), (-1.81, 2.94), stroke: 0.5pt)
line((-1.85, 2.59), (-1.67, 2.85), stroke: 0.5pt)
line((-1.76, 2.62), (-1.67, 2.75), stroke: 0.5pt)

// Contorno della sezione A
bezier((-1.708, 2.687), (-1.683, 2.941), (-1.636, 2.785), (-1.625, 2.898), stroke: 0.9pt)
bezier((-1.683, 2.941), (-1.918, 2.841), (-1.741, 2.984), (-1.846, 2.939), stroke: 0.9pt)
bezier((-1.918, 2.841), (-1.943, 2.587), (-1.990, 2.743), (-2.001, 2.630), stroke: 0.9pt)
bezier((-1.943, 2.587), (-1.708, 2.687), (-1.885, 2.544), (-1.780, 2.589), stroke: 0.9pt)

// Terna locale destra (x, y, z) centrata in A (-1.813, 2.764)
line((-1.813, 2.764), (-1.813, 3.600), mark: (end: ">"), stroke: 0.65pt)
line((-1.813, 2.764), (-2.580, 2.430), mark: (end: ">"), stroke: 0.65pt)
line((-1.813, 2.764), (-0.950, 2.320), mark: (end: ">"), stroke: 0.65pt)

// Sollecitazioni interne N (lungo +y, perpendicolare alla sezione) e T (nel piano della sezione)
line((-1.813, 2.764), (-0.720, 2.200), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
line((-1.813, 2.764), (-1.980, 2.040), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))

// Forza assiale F alla base della molla
line((0, -1.15), (0, 0.00), mark: (end: ">"), stroke: 1.6pt)

// Etichette posizionate senza collisioni con le curve
content((-1.98, 3.04), [$A$], anchor: "east")
content((-1.74, 3.58), [$z$], anchor: "west")
content((-2.62, 2.38), [$x$], anchor: "north-east")
content((-1.15, 2.76), [$y$], anchor: "south")
content((-0.72, 2.15), text(fill: red)[$N$], anchor: "north")
content((-1.85, 2.04), text(fill: red)[$T$], anchor: "west")
content((0.20, -0.75), [$F$], anchor: "west")
})
