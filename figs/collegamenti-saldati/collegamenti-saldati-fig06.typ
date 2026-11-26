// Figura estratta da collegamenti saldati.typ (riga 785) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
import draw: *

// =========================================================
// 1. METALLO BASE, BAGNO DI FUSIONE E METALLO SOLIDIFICATO
// =========================================================
line((1.80, 0.40), (9.00, 0.40), (9.00, 1.15), (1.80, 1.15), close: true, fill: luma(222), stroke: none)

for i in range(0, 18) {
  let x0 = 1.95 + i * 0.40
  if x0 < 8.85 {
    line((x0, 0.40), (calc.min(x0 + 0.35, 9.00), calc.min(0.40 + 0.35, 1.15)), stroke: 0.3pt + luma(175))
    if x0 + 0.35 < 8.65 {
      line((x0 + 0.20, 0.40), (x0 + 0.75, 1.15), stroke: 0.3pt + luma(175))
    }
  }
}

// Zona fusa e cordone di metallo solidificato
bezier(
  (5.55, 1.15), (9.00, 1.15),
  (6.20, 0.58), (7.60, 0.58),
  close: true,
  fill: rgb("#b86b43").transparentize(10%),
  stroke: 0.6pt + rgb("#7c4223")
)
bezier(
  (5.55, 1.15), (9.00, 1.15),
  (6.30, 1.36), (8.20, 1.34),
  close: true,
  fill: rgb("#c97a50"),
  stroke: 0.75pt + rgb("#6d381c")
)
for rx in (6.15, 6.65, 7.15, 7.65, 8.15, 8.55) {
  bezier((rx, 1.15), (rx + 0.10, 1.26), (rx + 0.08, 1.19), (rx + 0.10, 1.22), stroke: 0.55pt + rgb("#7c4223"))
}

// Bagno di fusione
bezier(
  (4.32, 1.15), (5.75, 1.15),
  (4.55, 0.42), (5.50, 0.42),
  close: true,
  fill: rgb("#e53935"),
  stroke: 0.6pt + rgb("#b71c1c")
)
bezier(
  (4.58, 1.15), (5.48, 1.15),
  (4.75, 0.65), (5.32, 0.65),
  close: true,
  fill: rgb("#ff7043"),
  stroke: none
)

line((1.80, 1.15), (4.32, 1.15), stroke: 0.9pt)
line((1.80, 0.40), (9.00, 0.40), stroke: 0.9pt)

// =========================================================
// 2. ATMOSFERA PROTETTIVA E ARCO
// =========================================================
line(
  (4.88, 2.43), (5.45, 2.25),
  (6.32, 1.15), (3.82, 1.15),
  close: true,
  fill: aqua.transparentize(80%),
  stroke: (paint: rgb("#00acc1").transparentize(45%), thickness: 0.5pt, dash: "dashed")
)

bezier((4.68, 1.15), (5.40, 1.15), (4.92, 2.22), (5.18, 2.22), close: true, fill: rgb("#ffb300").transparentize(20%), stroke: none)
bezier((4.80, 1.15), (5.28, 1.15), (4.96, 2.15), (5.14, 2.15), close: true, fill: rgb("#ffe033"), stroke: none)
bezier((4.92, 1.15), (5.16, 1.15), (5.00, 2.04), (5.10, 2.04), close: true, fill: rgb("#fffde7"), stroke: none)

// =========================================================
// 3. BACCHETTA DI SALDATURA E FRECCIA DI AVANZAMENTO
// =========================================================
line((1.75, 4.02), (1.84, 4.10), (4.22, 1.56), (4.13, 1.48), close: true, fill: luma(185), stroke: 0.7pt)

line(
  (2.40, 4.45), (2.92, 4.68), (2.80, 4.52), (3.65, 4.52),
  (3.65, 4.38), (2.80, 4.38), (2.92, 4.22),
  close: true,
  fill: rgb("#29b6f6").transparentize(20%),
  stroke: 0.5pt + rgb("#0288d1")
)

// =========================================================
// 4. GUAINA / MANICO CON CANALI STRATIFICATI
// =========================================================
line((5.95, 4.32), (9.10, 4.66), (9.10, 5.76), (5.95, 5.42), close: true, fill: luma(145), stroke: none)
line((5.95, 4.32), (9.10, 4.66), stroke: 0.9pt)
line((5.95, 5.42), (9.10, 5.76), stroke: 0.9pt)
circle((9.10, 5.21), radius: (0.17, 0.55), fill: luma(245), stroke: 0.9pt)

// Canale 1: Entrata acqua (fredda)
line((5.72, 5.13), (9.08, 5.49), (9.08, 5.65), (5.72, 5.29), close: true, fill: rgb("#1e88e5"), stroke: 0.55pt)
line((7.85, 5.43), (7.55, 5.40), stroke: (paint: white, thickness: 0.8pt), mark: (end: ">", size: 0.12))

// Canale 2: Conduttore elettrico
line((5.65, 4.92), (9.32, 5.31), (9.32, 5.41), (5.65, 5.02), close: true, fill: luma(205), stroke: 0.6pt)

// Canale 3: Ingresso gas di protezione
line((5.58, 4.68), (9.08, 5.05), (9.08, 5.22), (5.58, 4.85), close: true, fill: rgb("#80deea"), stroke: 0.55pt)
line((7.85, 4.99), (7.55, 4.96), stroke: (paint: rgb("#006064"), thickness: 0.8pt), mark: (end: ">", size: 0.12))

// Canale 4: Uscita acqua (calda)
line((5.50, 4.44), (9.08, 4.82), (9.08, 4.98), (5.50, 4.60), close: true, fill: rgb("#ffd54f"), stroke: 0.55pt)
line((7.55, 4.72), (7.85, 4.75), stroke: (paint: rgb("#bf360c"), thickness: 0.8pt), mark: (end: ">", size: 0.12))

// =========================================================
// 5. TORCIA TIG (SEZIONE STRATIFICATA)
// =========================================================
group({
  translate((5.05, 1.98))
  rotate(-18deg)

  // Camera interna del gas nell'ugello
  line((-0.26, 0.38), (0.26, 0.38), (0.37, 1.25), (0.37, 2.05), (-0.37, 2.05), (-0.37, 1.25), close: true, fill: aqua.transparentize(70%), stroke: none)

  // Diffusore / gas lens con fori e condotto centrale
  line((-0.37, 1.25), (0.37, 1.25), (0.37, 2.05), (-0.37, 2.05), close: true, fill: rgb("#fb8c00"), stroke: 0.7pt)
  line((-0.14, 1.25), (0.14, 1.25), (0.14, 2.05), (-0.14, 2.05), close: true, fill: rgb("#ffe0b2"), stroke: 0.6pt)
  for hx in (-0.26, 0.26) {
    for hy in (1.45, 1.70, 1.90) {
      circle((hx, hy), radius: 0.04, fill: aqua.transparentize(30%), stroke: 0.4pt + rgb("#e65100"))
    }
  }
  line((-0.22, 1.22), (-0.22, 0.78), stroke: (paint: rgb("#00838f"), thickness: 0.65pt), mark: (end: ">", size: 0.10))
  line((0.22, 1.22), (0.22, 0.78), stroke: (paint: rgb("#00838f"), thickness: 0.65pt), mark: (end: ">", size: 0.10))

  // Pareti in sezione dell'ugello ceramico
  line((-0.36, 0.38), (-0.24, 0.38), (-0.37, 1.25), (-0.37, 2.05), (-0.49, 2.05), (-0.49, 1.25), close: true, fill: rgb("#d8648c"), stroke: 0.8pt)
  line((0.24, 0.38), (0.36, 0.38), (0.49, 1.25), (0.49, 2.05), (0.37, 2.05), (0.37, 1.25), close: true, fill: rgb("#d8648c"), stroke: 0.8pt)

  // Corpo torcia con camere di raffreddamento e pinza
  line((-0.46, 2.05), (0.46, 2.05), (0.46, 3.72), (-0.46, 3.72), close: true, fill: luma(195), stroke: 0.9pt)
  line((-0.38, 2.15), (-0.20, 2.15), (-0.20, 3.45), (-0.38, 3.45), close: true, fill: rgb("#1e88e5").transparentize(25%), stroke: 0.5pt)
  line((0.20, 2.15), (0.38, 2.15), (0.38, 3.45), (0.20, 3.45), close: true, fill: rgb("#ffd54f").transparentize(15%), stroke: 0.5pt)
  line((-0.12, 2.05), (0.12, 2.05), (0.12, 3.55), (-0.12, 3.55), close: true, fill: luma(225), stroke: 0.6pt)

  // Tappo posteriore
  line((-0.32, 3.72), (0.32, 3.72), (0.32, 3.96), (-0.32, 3.96), close: true, fill: luma(215), stroke: 0.8pt)
  line((-0.44, 3.96), (0.44, 3.96), (0.44, 4.24), (-0.44, 4.24), close: true, fill: luma(85), stroke: 0.9pt)
  for kx in (-0.28, -0.14, 0.0, 0.14, 0.28) {
    line((kx, 3.98), (kx, 4.22), stroke: 0.4pt + luma(50))
  }

  // Elettrodo di tungsteno con punta conica affilata
  line(
    (0.00, 0.00),
    (0.055, 0.28),
    (0.055, 3.15),
    (-0.055, 3.15),
    (-0.055, 0.28),
    close: true,
    fill: luma(220),
    stroke: 0.75pt
  )
})

// =========================================================
// 6. ETICHETTE E LINEE DI RICHIAMO
// =========================================================
let lx = 1.45

line((lx + 0.12, 5.45), (5.55, 5.45), stroke: 0.6pt)
content((lx, 5.45), text(size: 8pt)[Torcia TIG], anchor: "east")

line((lx + 0.12, 4.75), (4.20, 4.75), (5.32, 3.55), stroke: 0.6pt)
content((lx, 4.75), text(size: 8pt)[Diffusore], anchor: "east")

line((lx + 0.12, 3.45), (3.85, 3.45), (5.12, 2.18), stroke: 0.6pt)
content((lx, 3.45), text(size: 8pt)[Elettrodo di tungsteno], anchor: "east")

line((lx + 0.12, 2.75), (3.65, 2.75), (4.98, 1.55), stroke: 0.6pt)
content((lx, 2.75), text(size: 8pt)[Arco], anchor: "east")

line((lx + 0.12, 2.15), (3.58, 2.15), stroke: 0.6pt)
content((lx, 2.15), text(size: 8pt)[Bacchetta di saldatura], anchor: "east")

line((lx + 0.12, 1.50), (2.45, 1.50), (2.45, 0.80), stroke: 0.6pt)
content((lx, 1.50), text(size: 8pt)[Metallo base], anchor: "east")

let rx = 9.75

line((6.95, 5.33), (6.95, 6.25), (rx - 0.12, 6.25), stroke: 0.6pt)
content((rx, 6.25), text(size: 8pt)[Entrata acqua (fredda)], anchor: "west")

line((9.32, 5.36), (9.50, 5.36), (9.50, 5.65), (rx - 0.12, 5.65), stroke: 0.6pt)
content((rx, 5.65), text(size: 8pt)[Conduttore elettrico], anchor: "west")

line((7.05, 4.92), (7.05, 4.15), (rx - 0.12, 4.15), stroke: 0.6pt)
content((rx, 4.15), text(size: 8pt)[Ingresso gas di protezione], anchor: "west")

line((6.45, 4.62), (6.45, 3.55), (rx - 0.12, 3.55), stroke: 0.6pt)
content((rx, 3.55), text(size: 8pt)[Uscita acqua (calda)], anchor: "west")

line((5.46, 2.78), (6.20, 2.95), (rx - 0.12, 2.95), stroke: 0.6pt)
content((rx, 2.95), text(size: 8pt)[Uscita gas di protezione], anchor: "west")

line((5.65, 1.65), (6.30, 2.35), (rx - 0.12, 2.35), stroke: 0.6pt)
content((rx, 2.35), text(size: 8pt)[Atmosfera protettiva], anchor: "west")

line((7.35, 1.24), (7.65, 1.75), (rx - 0.12, 1.75), stroke: 0.6pt)
content((rx, 1.75), text(size: 8pt)[Metallo solidificato], anchor: "west")
})
