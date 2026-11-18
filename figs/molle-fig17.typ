// Figura estratta da molle.typ (riga 1879) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- Molla 2: tratti posteriori (in discesa da sinistra a destra) ---
  line((-1.70, 0.76), (1.78, 0.27), (1.70, 0.00), (-1.78, 0.22), close: true, fill: white, stroke: none)
  line((-1.70, 0.76), (1.78, 0.27), stroke: 1.2pt)
  line((-1.78, 0.22), (-0.22, 0.00), stroke: 1.2pt)

  line((-1.70, 1.74), (1.78, 1.25), (1.70, 0.71), (-1.78, 1.20), close: true, fill: white, stroke: none)
  line((-1.70, 1.74), (1.78, 1.25), stroke: 1.2pt)
  line((-1.78, 1.20), (1.70, 0.71), stroke: 1.2pt)

  line((-1.70, 2.72), (1.78, 2.23), (1.70, 1.69), (-1.78, 2.18), close: true, fill: white, stroke: none)
  line((-1.70, 2.72), (1.78, 2.23), stroke: 1.2pt)
  line((-1.78, 2.18), (1.70, 1.69), stroke: 1.2pt)

  line((-1.70, 3.70), (1.78, 3.21), (1.70, 2.67), (-1.78, 3.16), close: true, fill: white, stroke: none)
  line((-1.70, 3.70), (1.78, 3.21), stroke: 1.2pt)
  line((-1.78, 3.16), (1.70, 2.67), stroke: 1.2pt)

  line((-1.74, 4.41), (0.22, 4.41), (1.78, 4.19), (1.70, 3.65), (-1.78, 4.14), close: true, fill: white, stroke: none)
  line((0.22, 4.41), (1.78, 4.19), stroke: 1.2pt)
  line((-1.78, 4.14), (1.70, 3.65), stroke: 1.2pt)

  // --- Maschera bianca dietro molla 1 ---
  line((-1.24, 0.00), (1.24, 0.00), (1.24, 4.41), (-1.24, 4.41), close: true, fill: white, stroke: none)

  // --- Molla 2: sezioni circolari e semicerchi con tratteggio (-60 deg) ---
  arc((1.74, 0.00), start: 0deg, stop: 180deg, radius: 0.27, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.532, 0.000), (1.483, 0.084), stroke: 0.5pt)
  line((1.636, 0.000), (1.535, 0.175), stroke: 0.5pt)
  line((1.740, 0.000), (1.605, 0.234), stroke: 0.5pt)
  line((1.844, 0.000), (1.691, 0.265), stroke: 0.5pt)
  line((1.948, 0.000), (1.795, 0.264), stroke: 0.5pt)

  circle((-1.74, 0.49), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 0.574), (-1.795, 0.226), stroke: 0.5pt)
  line((-1.945, 0.665), (-1.691, 0.225), stroke: 0.5pt)
  line((-1.875, 0.724), (-1.605, 0.256), stroke: 0.5pt)
  line((-1.789, 0.755), (-1.535, 0.315), stroke: 0.5pt)
  line((-1.685, 0.754), (-1.483, 0.406), stroke: 0.5pt)

  circle((1.74, 0.98), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 1.064), (1.685, 0.716), stroke: 0.5pt)
  line((1.535, 1.155), (1.789, 0.715), stroke: 0.5pt)
  line((1.605, 1.214), (1.875, 0.746), stroke: 0.5pt)
  line((1.691, 1.245), (1.945, 0.805), stroke: 0.5pt)
  line((1.795, 1.244), (1.997, 0.896), stroke: 0.5pt)

  circle((-1.74, 1.47), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 1.554), (-1.795, 1.206), stroke: 0.5pt)
  line((-1.945, 1.645), (-1.691, 1.205), stroke: 0.5pt)
  line((-1.875, 1.704), (-1.605, 1.236), stroke: 0.5pt)
  line((-1.789, 1.735), (-1.535, 1.295), stroke: 0.5pt)
  line((-1.685, 1.734), (-1.483, 1.386), stroke: 0.5pt)

  circle((1.74, 1.96), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 2.044), (1.685, 1.696), stroke: 0.5pt)
  line((1.535, 2.135), (1.789, 1.695), stroke: 0.5pt)
  line((1.605, 2.194), (1.875, 1.726), stroke: 0.5pt)
  line((1.691, 2.225), (1.945, 1.785), stroke: 0.5pt)
  line((1.795, 2.224), (1.997, 1.876), stroke: 0.5pt)

  circle((-1.74, 2.45), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 2.534), (-1.795, 2.186), stroke: 0.5pt)
  line((-1.945, 2.625), (-1.691, 2.185), stroke: 0.5pt)
  line((-1.875, 2.684), (-1.605, 2.216), stroke: 0.5pt)
  line((-1.789, 2.715), (-1.535, 2.275), stroke: 0.5pt)
  line((-1.685, 2.714), (-1.483, 2.366), stroke: 0.5pt)

  circle((1.74, 2.94), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 3.024), (1.685, 2.676), stroke: 0.5pt)
  line((1.535, 3.115), (1.789, 2.675), stroke: 0.5pt)
  line((1.605, 3.174), (1.875, 2.706), stroke: 0.5pt)
  line((1.691, 3.205), (1.945, 2.765), stroke: 0.5pt)
  line((1.795, 3.204), (1.997, 2.856), stroke: 0.5pt)

  circle((-1.74, 3.43), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 3.514), (-1.795, 3.166), stroke: 0.5pt)
  line((-1.945, 3.605), (-1.691, 3.165), stroke: 0.5pt)
  line((-1.875, 3.664), (-1.605, 3.196), stroke: 0.5pt)
  line((-1.789, 3.695), (-1.535, 3.255), stroke: 0.5pt)
  line((-1.685, 3.694), (-1.483, 3.346), stroke: 0.5pt)

  circle((1.74, 3.92), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 4.004), (1.685, 3.656), stroke: 0.5pt)
  line((1.535, 4.095), (1.789, 3.655), stroke: 0.5pt)
  line((1.605, 4.154), (1.875, 3.686), stroke: 0.5pt)
  line((1.691, 4.185), (1.945, 3.745), stroke: 0.5pt)
  line((1.795, 4.184), (1.997, 3.836), stroke: 0.5pt)

  arc((-1.74, 4.41), start: 180deg, stop: 360deg, radius: 0.27, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.948, 4.410), (-1.795, 4.146), stroke: 0.5pt)
  line((-1.844, 4.410), (-1.691, 4.145), stroke: 0.5pt)
  line((-1.740, 4.410), (-1.605, 4.176), stroke: 0.5pt)
  line((-1.636, 4.410), (-1.535, 4.235), stroke: 0.5pt)
  line((-1.532, 4.410), (-1.483, 4.326), stroke: 0.5pt)

  // --- Molla 1: tratti posteriori (9 tratti) ---
  line((-1.108, 0.583), (1.132, 0.351), (1.108, 0.113), (-1.132, 0.345), close: true, fill: white, stroke: none)
  line((-1.108, 0.583), (1.132, 0.351), stroke: 1.2pt)
  line((-1.132, 0.345), (1.108, 0.113), stroke: 1.2pt)

  line((-1.108, 1.047), (1.132, 0.815), (1.108, 0.577), (-1.132, 0.809), close: true, fill: white, stroke: none)
  line((-1.108, 1.047), (1.132, 0.815), stroke: 1.2pt)
  line((-1.132, 0.809), (1.108, 0.577), stroke: 1.2pt)

  line((-1.108, 1.512), (1.132, 1.280), (1.108, 1.042), (-1.132, 1.274), close: true, fill: white, stroke: none)
  line((-1.108, 1.512), (1.132, 1.280), stroke: 1.2pt)
  line((-1.132, 1.274), (1.108, 1.042), stroke: 1.2pt)

  line((-1.108, 1.976), (1.132, 1.744), (1.108, 1.506), (-1.132, 1.738), close: true, fill: white, stroke: none)
  line((-1.108, 1.976), (1.132, 1.744), stroke: 1.2pt)
  line((-1.132, 1.738), (1.108, 1.506), stroke: 1.2pt)

  line((-1.108, 2.440), (1.132, 2.208), (1.108, 1.970), (-1.132, 2.202), close: true, fill: white, stroke: none)
  line((-1.108, 2.440), (1.132, 2.208), stroke: 1.2pt)
  line((-1.132, 2.202), (1.108, 1.970), stroke: 1.2pt)

  line((-1.108, 2.904), (1.132, 2.672), (1.108, 2.434), (-1.132, 2.666), close: true, fill: white, stroke: none)
  line((-1.108, 2.904), (1.132, 2.672), stroke: 1.2pt)
  line((-1.132, 2.666), (1.108, 2.434), stroke: 1.2pt)

  line((-1.108, 3.368), (1.132, 3.136), (1.108, 2.898), (-1.132, 3.130), close: true, fill: white, stroke: none)
  line((-1.108, 3.368), (1.132, 3.136), stroke: 1.2pt)
  line((-1.132, 3.130), (1.108, 2.898), stroke: 1.2pt)

  line((-1.108, 3.833), (1.132, 3.601), (1.108, 3.363), (-1.132, 3.595), close: true, fill: white, stroke: none)
  line((-1.108, 3.833), (1.132, 3.601), stroke: 1.2pt)
  line((-1.132, 3.595), (1.108, 3.363), stroke: 1.2pt)

  line((-1.108, 4.297), (1.132, 4.065), (1.108, 3.827), (-1.132, 4.059), close: true, fill: white, stroke: none)
  line((-1.108, 4.297), (1.132, 4.065), stroke: 1.2pt)
  line((-1.132, 4.059), (1.108, 3.827), stroke: 1.2pt)

  // --- Molla 1: tratti anteriori (10 tratti) ---
  line((-1.132, 0.119), (1.108, 0.351), (1.132, 0.113), (0.041, 0.000), (-1.120, 0.000), close: true, fill: white, stroke: none)
  line((-1.132, 0.119), (1.108, 0.351), stroke: 1.2pt)
  line((0.041, 0.000), (1.132, 0.113), stroke: 1.2pt)

  line((-1.132, 0.583), (1.108, 0.815), (1.132, 0.577), (-1.108, 0.345), close: true, fill: white, stroke: none)
  line((-1.132, 0.583), (1.108, 0.815), stroke: 1.2pt)
  line((-1.108, 0.345), (1.132, 0.577), stroke: 1.2pt)

  line((-1.132, 1.047), (1.108, 1.280), (1.132, 1.042), (-1.108, 0.809), close: true, fill: white, stroke: none)
  line((-1.132, 1.047), (1.108, 1.280), stroke: 1.2pt)
  line((-1.108, 0.809), (1.132, 1.042), stroke: 1.2pt)

  line((-1.132, 1.512), (1.108, 1.744), (1.132, 1.506), (-1.108, 1.274), close: true, fill: white, stroke: none)
  line((-1.132, 1.512), (1.108, 1.744), stroke: 1.2pt)
  line((-1.108, 1.274), (1.132, 1.506), stroke: 1.2pt)

  line((-1.132, 1.976), (1.108, 2.208), (1.132, 1.970), (-1.108, 1.738), close: true, fill: white, stroke: none)
  line((-1.132, 1.976), (1.108, 2.208), stroke: 1.2pt)
  line((-1.108, 1.738), (1.132, 1.970), stroke: 1.2pt)

  line((-1.132, 2.440), (1.108, 2.672), (1.132, 2.434), (-1.108, 2.202), close: true, fill: white, stroke: none)
  line((-1.132, 2.440), (1.108, 2.672), stroke: 1.2pt)
  line((-1.108, 2.202), (1.132, 2.434), stroke: 1.2pt)

  line((-1.132, 2.904), (1.108, 3.136), (1.132, 2.898), (-1.108, 2.666), close: true, fill: white, stroke: none)
  line((-1.132, 2.904), (1.108, 3.136), stroke: 1.2pt)
  line((-1.108, 2.666), (1.132, 2.898), stroke: 1.2pt)

  line((-1.132, 3.368), (1.108, 3.601), (1.132, 3.363), (-1.108, 3.130), close: true, fill: white, stroke: none)
  line((-1.132, 3.368), (1.108, 3.601), stroke: 1.2pt)
  line((-1.108, 3.130), (1.132, 3.363), stroke: 1.2pt)

  line((-1.132, 3.833), (1.108, 4.065), (1.132, 3.827), (-1.108, 3.595), close: true, fill: white, stroke: none)
  line((-1.132, 3.833), (1.108, 4.065), stroke: 1.2pt)
  line((-1.108, 3.595), (1.132, 3.827), stroke: 1.2pt)

  line((-1.132, 4.297), (-0.041, 4.410), (1.120, 4.410), (1.132, 4.291), (-1.108, 4.059), close: true, fill: white, stroke: none)
  line((-1.132, 4.297), (-0.041, 4.410), stroke: 1.2pt)
  line((-1.108, 4.059), (1.132, 4.291), stroke: 1.2pt)

  // --- Molla 1: sezioni circolari e semicerchi con tratteggio (+60 deg) ---
  arc((-1.12, 0.000), start: 0deg, stop: 180deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.189, 0.000), (-1.120, 0.120), stroke: 0.5pt)
  line((-1.120, 0.000), (-1.060, 0.104), stroke: 0.5pt)
  line((-1.051, 0.000), (-1.016, 0.060), stroke: 0.5pt)

  circle((1.12, 0.232), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 0.172), (1.120, 0.352), stroke: 0.5pt)
  line((1.060, 0.128), (1.180, 0.336), stroke: 0.5pt)
  line((1.120, 0.112), (1.224, 0.292), stroke: 0.5pt)

  circle((-1.12, 0.464), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 0.404), (-1.120, 0.584), stroke: 0.5pt)
  line((-1.180, 0.360), (-1.060, 0.568), stroke: 0.5pt)
  line((-1.120, 0.344), (-1.016, 0.524), stroke: 0.5pt)

  circle((1.12, 0.696), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 0.636), (1.120, 0.816), stroke: 0.5pt)
  line((1.060, 0.592), (1.180, 0.800), stroke: 0.5pt)
  line((1.120, 0.576), (1.224, 0.756), stroke: 0.5pt)

  circle((-1.12, 0.928), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 0.868), (-1.120, 1.048), stroke: 0.5pt)
  line((-1.180, 0.824), (-1.060, 1.032), stroke: 0.5pt)
  line((-1.120, 0.808), (-1.016, 0.988), stroke: 0.5pt)

  circle((1.12, 1.161), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 1.101), (1.120, 1.281), stroke: 0.5pt)
  line((1.060, 1.057), (1.180, 1.265), stroke: 0.5pt)
  line((1.120, 1.041), (1.224, 1.221), stroke: 0.5pt)

  circle((-1.12, 1.393), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 1.333), (-1.120, 1.513), stroke: 0.5pt)
  line((-1.180, 1.289), (-1.060, 1.497), stroke: 0.5pt)
  line((-1.120, 1.273), (-1.016, 1.453), stroke: 0.5pt)

  circle((1.12, 1.625), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 1.565), (1.120, 1.745), stroke: 0.5pt)
  line((1.060, 1.521), (1.180, 1.729), stroke: 0.5pt)
  line((1.120, 1.505), (1.224, 1.685), stroke: 0.5pt)

  circle((-1.12, 1.857), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 1.797), (-1.120, 1.977), stroke: 0.5pt)
  line((-1.180, 1.753), (-1.060, 1.961), stroke: 0.5pt)
  line((-1.120, 1.737), (-1.016, 1.917), stroke: 0.5pt)

  circle((1.12, 2.089), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.029), (1.120, 2.209), stroke: 0.5pt)
  line((1.060, 1.985), (1.180, 2.193), stroke: 0.5pt)
  line((1.120, 1.969), (1.224, 2.149), stroke: 0.5pt)

  circle((-1.12, 2.321), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 2.261), (-1.120, 2.441), stroke: 0.5pt)
  line((-1.180, 2.217), (-1.060, 2.425), stroke: 0.5pt)
  line((-1.120, 2.201), (-1.016, 2.381), stroke: 0.5pt)

  circle((1.12, 2.553), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.493), (1.120, 2.673), stroke: 0.5pt)
  line((1.060, 2.449), (1.180, 2.657), stroke: 0.5pt)
  line((1.120, 2.433), (1.224, 2.613), stroke: 0.5pt)

  circle((-1.12, 2.785), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 2.725), (-1.120, 2.905), stroke: 0.5pt)
  line((-1.180, 2.681), (-1.060, 2.889), stroke: 0.5pt)
  line((-1.120, 2.665), (-1.016, 2.845), stroke: 0.5pt)

  circle((1.12, 3.017), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.957), (1.120, 3.137), stroke: 0.5pt)
  line((1.060, 2.913), (1.180, 3.121), stroke: 0.5pt)
  line((1.120, 2.897), (1.224, 3.077), stroke: 0.5pt)

  circle((-1.12, 3.249), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 3.189), (-1.120, 3.369), stroke: 0.5pt)
  line((-1.180, 3.145), (-1.060, 3.353), stroke: 0.5pt)
  line((-1.120, 3.129), (-1.016, 3.309), stroke: 0.5pt)

  circle((1.12, 3.482), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 3.422), (1.120, 3.602), stroke: 0.5pt)
  line((1.060, 3.378), (1.180, 3.586), stroke: 0.5pt)
  line((1.120, 3.362), (1.224, 3.542), stroke: 0.5pt)

  circle((-1.12, 3.714), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 3.654), (-1.120, 3.834), stroke: 0.5pt)
  line((-1.180, 3.610), (-1.060, 3.818), stroke: 0.5pt)
  line((-1.120, 3.594), (-1.016, 3.774), stroke: 0.5pt)

  circle((1.12, 3.946), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 3.886), (1.120, 4.066), stroke: 0.5pt)
  line((1.060, 3.842), (1.180, 4.050), stroke: 0.5pt)
  line((1.120, 3.826), (1.224, 4.006), stroke: 0.5pt)

  circle((-1.12, 4.178), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 4.118), (-1.120, 4.298), stroke: 0.5pt)
  line((-1.180, 4.074), (-1.060, 4.282), stroke: 0.5pt)
  line((-1.120, 4.058), (-1.016, 4.238), stroke: 0.5pt)

  arc((1.12, 4.410), start: 180deg, stop: 360deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.016, 4.350), (1.051, 4.410), stroke: 0.5pt)
  line((1.060, 4.306), (1.120, 4.410), stroke: 0.5pt)
  line((1.120, 4.290), (1.189, 4.410), stroke: 0.5pt)

  // --- Piano di base e tratteggio ---
  line((-2.20, 0.00), (2.25, 0.00), stroke: 1.3pt)
  line((-1.90, 0.00), (-2.12, -0.34), stroke: 0.6pt)
  line((-1.50, 0.00), (-1.72, -0.34), stroke: 0.6pt)
  line((-1.10, 0.00), (-1.32, -0.34), stroke: 0.6pt)
  line((-0.70, 0.00), (-0.92, -0.34), stroke: 0.6pt)
  line((-0.30, 0.00), (-0.52, -0.34), stroke: 0.6pt)
  line((0.10, 0.00), (-0.12, -0.34), stroke: 0.6pt)
  line((0.50, 0.00), (0.28, -0.34), stroke: 0.6pt)
  line((0.90, 0.00), (0.68, -0.34), stroke: 0.6pt)
  line((1.30, 0.00), (1.08, -0.34), stroke: 0.6pt)
  line((1.70, 0.00), (1.48, -0.34), stroke: 0.6pt)
  line((2.10, 0.00), (1.88, -0.34), stroke: 0.6pt)

  // --- Piastra superiore ---
  rect((-2.02, 4.41), (2.02, 4.86), fill: white, stroke: 1.3pt)

  // --- Asse di simmetria ---
  line((0.00, 0.00), (0.00, 4.86), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // --- Forza F ---
  line((0.00, 6.25), (0.00, 5.45), stroke: 2.2pt)
  line((-0.20, 5.45), (0.20, 5.45), (0.00, 4.86), close: true, fill: black, stroke: black)
  content((0.40, 5.75), [$F$], anchor: "west")

  // --- Spostamento f ---
  line((2.02, 4.41), (2.75, 4.41), stroke: 0.6pt)
  line((2.75, 4.41), (2.75, 3.65), mark: (end: ">"), stroke: 0.6pt)
  content((2.92, 3.75), [$f$], anchor: "west")

  // --- Richiami ed etichette ---
  line((1.12, 2.089), (2.68, 1.52), stroke: 0.6pt)
  content((2.73, 1.48), [molla 1], anchor: "west")

  line((1.74, 0.980), (2.68, 0.52), stroke: 0.6pt)
  content((2.73, 0.48), [molla 2], anchor: "west")
})
