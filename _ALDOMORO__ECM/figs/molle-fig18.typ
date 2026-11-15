// Figura estratta da molle.typ (riga 2224) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- Molla 2 (inferiore): 4 tratti anteriori in discesa da sinistra a destra ---
  line((-1.595, 0.714), (1.665, 0.248), (1.630, 0.000), (-0.140, 0.000), (-1.665, 0.218), close: true, fill: white, stroke: none)
  line((-1.595, 0.714), (1.665, 0.248), stroke: 1.2pt)
  line((-1.665, 0.218), (-0.140, 0.000), stroke: 1.2pt)

  line((-1.595, 1.645), (1.665, 1.179), (1.595, 0.683), (-1.665, 1.149), close: true, fill: white, stroke: none)
  line((-1.595, 1.645), (1.665, 1.179), stroke: 1.2pt)
  line((-1.665, 1.149), (1.595, 0.683), stroke: 1.2pt)

  line((-1.595, 2.577), (1.665, 2.111), (1.595, 1.615), (-1.665, 2.081), close: true, fill: white, stroke: none)
  line((-1.595, 2.577), (1.665, 2.111), stroke: 1.2pt)
  line((-1.665, 2.081), (1.595, 1.615), stroke: 1.2pt)

  line((-1.630, 3.260), (0.140, 3.260), (1.665, 3.042), (1.595, 2.546), (-1.665, 3.012), close: true, fill: white, stroke: none)
  line((0.140, 3.260), (1.665, 3.042), stroke: 1.2pt)
  line((-1.665, 3.012), (1.595, 2.546), stroke: 1.2pt)

  // --- Molla 2: sezioni circolari e semicerchi con tratteggio (-60 deg) ---
  arc((1.63, 0.000), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.445, 0.000), (1.395, 0.086), stroke: 0.5pt)
  line((1.538, 0.000), (1.442, 0.165), stroke: 0.5pt)
  line((1.630, 0.000), (1.505, 0.217), stroke: 0.5pt)
  line((1.722, 0.000), (1.581, 0.245), stroke: 0.5pt)
  line((1.815, 0.000), (1.673, 0.246), stroke: 0.5pt)

  circle((-1.63, 0.466), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 0.552), (-1.673, 0.220), stroke: 0.5pt)
  line((-1.818, 0.631), (-1.581, 0.221), stroke: 0.5pt)
  line((-1.755, 0.683), (-1.505, 0.249), stroke: 0.5pt)
  line((-1.679, 0.711), (-1.442, 0.301), stroke: 0.5pt)
  line((-1.587, 0.712), (-1.395, 0.380), stroke: 0.5pt)

  circle((1.63, 0.931), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 1.017), (1.587, 0.685), stroke: 0.5pt)
  line((1.442, 1.096), (1.679, 0.686), stroke: 0.5pt)
  line((1.505, 1.148), (1.755, 0.714), stroke: 0.5pt)
  line((1.581, 1.176), (1.818, 0.766), stroke: 0.5pt)
  line((1.673, 1.177), (1.865, 0.845), stroke: 0.5pt)

  circle((-1.63, 1.397), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 1.483), (-1.673, 1.151), stroke: 0.5pt)
  line((-1.818, 1.562), (-1.581, 1.152), stroke: 0.5pt)
  line((-1.755, 1.614), (-1.505, 1.180), stroke: 0.5pt)
  line((-1.679, 1.642), (-1.442, 1.232), stroke: 0.5pt)
  line((-1.587, 1.643), (-1.395, 1.311), stroke: 0.5pt)

  circle((1.63, 1.863), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 1.949), (1.587, 1.617), stroke: 0.5pt)
  line((1.442, 2.028), (1.679, 1.618), stroke: 0.5pt)
  line((1.505, 2.080), (1.755, 1.646), stroke: 0.5pt)
  line((1.581, 2.108), (1.818, 1.698), stroke: 0.5pt)
  line((1.673, 2.109), (1.865, 1.777), stroke: 0.5pt)

  circle((-1.63, 2.329), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 2.415), (-1.673, 2.083), stroke: 0.5pt)
  line((-1.818, 2.494), (-1.581, 2.084), stroke: 0.5pt)
  line((-1.755, 2.546), (-1.505, 2.112), stroke: 0.5pt)
  line((-1.679, 2.574), (-1.442, 2.164), stroke: 0.5pt)
  line((-1.587, 2.575), (-1.395, 2.243), stroke: 0.5pt)

  circle((1.63, 2.794), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 2.880), (1.587, 2.548), stroke: 0.5pt)
  line((1.442, 2.959), (1.679, 2.549), stroke: 0.5pt)
  line((1.505, 3.011), (1.755, 2.577), stroke: 0.5pt)
  line((1.581, 3.039), (1.818, 2.629), stroke: 0.5pt)
  line((1.673, 3.040), (1.865, 2.708), stroke: 0.5pt)

  arc((-1.63, 3.260), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.815, 3.260), (-1.673, 3.014), stroke: 0.5pt)
  line((-1.722, 3.260), (-1.581, 3.015), stroke: 0.5pt)
  line((-1.630, 3.260), (-1.505, 3.043), stroke: 0.5pt)
  line((-1.538, 3.260), (-1.442, 3.095), stroke: 0.5pt)
  line((-1.445, 3.260), (-1.395, 3.174), stroke: 0.5pt)

  // --- Molla 1 (superiore): 6 tratti anteriori in salita da sinistra a destra ---
  line((-1.076, 3.829), (1.044, 4.075), (1.076, 3.797), (0.154, 3.690), (-1.060, 3.690), close: true, fill: white, stroke: none)
  line((-1.076, 3.829), (1.044, 4.075), stroke: 1.2pt)
  line((0.154, 3.690), (1.076, 3.797), stroke: 1.2pt)

  line((-1.076, 4.322), (1.044, 4.568), (1.076, 4.290), (-1.044, 4.044), close: true, fill: white, stroke: none)
  line((-1.076, 4.322), (1.044, 4.568), stroke: 1.2pt)
  line((-1.044, 4.044), (1.076, 4.290), stroke: 1.2pt)

  line((-1.076, 4.814), (1.044, 5.061), (1.076, 4.783), (-1.044, 4.536), close: true, fill: white, stroke: none)
  line((-1.076, 4.814), (1.044, 5.061), stroke: 1.2pt)
  line((-1.044, 4.536), (1.076, 4.783), stroke: 1.2pt)

  line((-1.076, 5.307), (1.044, 5.554), (1.076, 5.276), (-1.044, 5.029), close: true, fill: white, stroke: none)
  line((-1.076, 5.307), (1.044, 5.554), stroke: 1.2pt)
  line((-1.044, 5.029), (1.076, 5.276), stroke: 1.2pt)

  line((-1.076, 5.800), (1.044, 6.046), (1.076, 5.768), (-1.044, 5.522), close: true, fill: white, stroke: none)
  line((-1.076, 5.800), (1.044, 6.046), stroke: 1.2pt)
  line((-1.044, 5.522), (1.076, 5.768), stroke: 1.2pt)

  line((-1.076, 6.293), (-0.154, 6.400), (1.060, 6.400), (1.076, 6.261), (-1.044, 6.015), close: true, fill: white, stroke: none)
  line((-1.076, 6.293), (-0.154, 6.400), stroke: 1.2pt)
  line((-1.044, 6.015), (1.076, 6.261), stroke: 1.2pt)

  // --- Molla 1: sezioni circolari e semicerchi con tratteggio (+60 deg) ---
  arc((-1.06, 3.690), start: 0deg, stop: 180deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.141, 3.690), (-1.060, 3.830), stroke: 0.5pt)
  line((-1.060, 3.690), (-0.990, 3.811), stroke: 0.5pt)
  line((-0.979, 3.690), (-0.939, 3.760), stroke: 0.5pt)

  circle((1.06, 3.936), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 3.866), (1.060, 4.076), stroke: 0.5pt)
  line((0.990, 3.815), (1.130, 4.057), stroke: 0.5pt)
  line((1.060, 3.796), (1.181, 4.006), stroke: 0.5pt)

  circle((-1.06, 4.183), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 4.113), (-1.060, 4.323), stroke: 0.5pt)
  line((-1.130, 4.062), (-0.990, 4.304), stroke: 0.5pt)
  line((-1.060, 4.043), (-0.939, 4.253), stroke: 0.5pt)

  circle((1.06, 4.429), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 4.359), (1.060, 4.569), stroke: 0.5pt)
  line((0.990, 4.308), (1.130, 4.550), stroke: 0.5pt)
  line((1.060, 4.289), (1.181, 4.499), stroke: 0.5pt)

  circle((-1.06, 4.675), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 4.605), (-1.060, 4.815), stroke: 0.5pt)
  line((-1.130, 4.554), (-0.990, 4.796), stroke: 0.5pt)
  line((-1.060, 4.535), (-0.939, 4.745), stroke: 0.5pt)

  circle((1.06, 4.922), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 4.852), (1.060, 5.062), stroke: 0.5pt)
  line((0.990, 4.801), (1.130, 5.043), stroke: 0.5pt)
  line((1.060, 4.782), (1.181, 4.992), stroke: 0.5pt)

  circle((-1.06, 5.168), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 5.098), (-1.060, 5.308), stroke: 0.5pt)
  line((-1.130, 5.047), (-0.990, 5.289), stroke: 0.5pt)
  line((-1.060, 5.028), (-0.939, 5.238), stroke: 0.5pt)

  circle((1.06, 5.415), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 5.345), (1.060, 5.555), stroke: 0.5pt)
  line((0.990, 5.294), (1.130, 5.536), stroke: 0.5pt)
  line((1.060, 5.275), (1.181, 5.485), stroke: 0.5pt)

  circle((-1.06, 5.661), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 5.591), (-1.060, 5.801), stroke: 0.5pt)
  line((-1.130, 5.540), (-0.990, 5.782), stroke: 0.5pt)
  line((-1.060, 5.521), (-0.939, 5.731), stroke: 0.5pt)

  circle((1.06, 5.907), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 5.837), (1.060, 6.047), stroke: 0.5pt)
  line((0.990, 5.786), (1.130, 6.028), stroke: 0.5pt)
  line((1.060, 5.767), (1.181, 5.977), stroke: 0.5pt)

  circle((-1.06, 6.154), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 6.084), (-1.060, 6.294), stroke: 0.5pt)
  line((-1.130, 6.033), (-0.990, 6.275), stroke: 0.5pt)
  line((-1.060, 6.014), (-0.939, 6.224), stroke: 0.5pt)

  arc((1.06, 6.400), start: 180deg, stop: 360deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.2pt)
  line((0.939, 6.330), (0.979, 6.400), stroke: 0.5pt)
  line((0.990, 6.279), (1.060, 6.400), stroke: 0.5pt)
  line((1.060, 6.260), (1.141, 6.400), stroke: 0.5pt)

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

  // --- Piastra intermedia e piastra superiore ---
  rect((-2.00, 3.26), (2.00, 3.69), fill: white, stroke: 1.3pt)
  rect((-2.00, 6.40), (2.00, 6.83), fill: white, stroke: 1.3pt)

  // --- Asse di simmetria ---
  line((0.00, 0.00), (0.00, 6.83), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // --- Forza F ---
  line((0.00, 8.20), (0.00, 7.40), stroke: 2.2pt)
  line((-0.20, 7.40), (0.20, 7.40), (0.00, 6.83), close: true, fill: black, stroke: black)
  content((0.40, 7.70), [$F$], anchor: "west")

  // --- Spostamento f ---
  line((2.00, 6.40), (2.72, 6.40), stroke: 0.6pt)
  line((2.72, 6.40), (2.72, 5.65), mark: (end: ">"), stroke: 0.6pt)
  content((2.88, 5.75), [$f$], anchor: "west")

  // --- Richiami ed etichette ---
  line((1.06, 4.922), (2.08, 4.46), stroke: 0.6pt)
  content((2.12, 4.42), [molla 1], anchor: "west")

  line((0.08, 2.08), (2.08, 1.44), stroke: 0.6pt)
  content((2.12, 1.40), [molla 2], anchor: "west")
})
