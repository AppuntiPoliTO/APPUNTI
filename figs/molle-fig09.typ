// Figura estratta da molle.typ (riga 848) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// --- RIEMPIMENTI (ZONA CAMPITA DEL DIAGRAMMA) ---
// Poligono approssimante l'area sottesa dalle curve di Bezier per la campitura grigia
line(
  (0.0, 0.0), (0.08, 0.25), (0.18, 0.50), (0.36, 0.68), (0.60, 0.80), (0.95, 0.87), (1.35, 0.90), (0.0, 0.90),
  close: true, fill: black.transparentize(82%), stroke: none
)
line(
  (0.0, 0.0), (-0.08, -0.25), (-0.18, -0.50), (-0.36, -0.68), (-0.60, -0.80), (-0.95, -0.87), (-1.35, -0.90), (0.0, -0.90),
  close: true, fill: black.transparentize(82%), stroke: none
)

// --- CONTORNO DELLA PIASTRA CON INTAGLI ---
// Parte superiore sinistra e destra
line((-0.25, 1.15), (-3.2, 1.15), (-3.2, -1.15), (-0.25, -1.15), stroke: 1pt)
line((0.25, 1.15), (3.2, 1.15), (3.2, -1.15), (0.25, -1.15), stroke: 1pt)

// Intagli semicircolari
arc((0.0, 1.15), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 1pt)
arc((0.0, -1.15), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 1pt)

// --- DIAGRAMMA DELLE TENSIONI ---
// Asse verticale e basi
line((-1.35, -0.90), (0.0, -0.90), (0.0, 0.90), (1.35, 0.90), stroke: 0.9pt)

// Profilo curvo delle tensioni (2 Bezier raccordati nel flesso (0,0))
bezier((-1.35, -0.90), (0.0, 0.0), (-0.55, -0.90), (-0.22, -0.78), stroke: 1pt)
bezier((0.0, 0.0), (1.35, 0.90), (0.22, 0.78), (0.55, 0.90), stroke: 1pt)

// Retta tensione nominale tratteggiata
line((-0.65, -0.90), (0.65, 0.90), stroke: (dash: "dashed", thickness: 0.8pt))

// Vettore tensione generica sigma_y e richiamo
line((0.0, 0.68), (0.36, 0.68), mark: (end: ">"), stroke: 0.9pt)
line((0.22, 0.68), (0.52, 0.42), stroke: 0.7pt)
content((0.55, 0.38), [$sigma_y$], anchor: "west")

// Asse x locale
line((-0.33, 0.0), (-0.17, 0.0), stroke: 0.9pt)
line((-0.25, 0.0), (-0.25, 0.38), mark: (end: ">"), stroke: 0.8pt)
content((-0.35, 0.28), [$x$], anchor: "east")

// --- QUOTE E MOMENTI ---
// Quota h a destra
line((1.55, 0.90), (1.90, 0.90), stroke: 0.8pt)
line((0.20, -0.90), (1.90, -0.90), stroke: 0.8pt)
line((1.75, -0.90), (1.75, 0.90), mark: (start: ">", end: ">"), stroke: 0.8pt)
content((1.88, 0.0), [$h$], anchor: "west")

// Quote inferiori sigma_nominal e sigma_peak
line((0.0, -1.22), (0.0, -2.05), stroke: 0.7pt)
line((-0.65, -0.95), (-0.65, -1.62), stroke: 0.7pt)
line((-1.35, -0.95), (-1.35, -2.05), stroke: 0.7pt)

// Freccia sigma_nominal
line((-0.65, -1.52), (0.0, -1.52), mark: (start: ">", end: ">"), stroke: 0.8pt)
line((-0.32, -1.52), (-0.32, -1.66), (0.08, -1.66), stroke: 0.7pt)
content((0.12, -1.66), [$sigma_"nominal"$], anchor: "west")

// Freccia sigma_peak
line((-1.35, -1.95), (0.0, -1.95), mark: (start: ">", end: ">"), stroke: 0.8pt)
content((-0.68, -2.02), [$sigma_"peak"$], anchor: "north")

// Momenti flettenti M alle estremita
// Sinistra
arc((-2.85, 0.0), start: 135deg, stop: 225deg, radius: 1.05, anchor: "origin", mark: (end: ">"), stroke: 0.9pt)
// Destra
arc((2.85, 0.0), start: -45deg, stop: 45deg, radius: 1.05, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)
content((4.02, 0.0), [$M$], anchor: "west")

// Formula K_t in basso a destra
content((4.1, -1.85), [$K_t = display(sigma_"peak" / sigma_"nominal")$], anchor: "center")
})
