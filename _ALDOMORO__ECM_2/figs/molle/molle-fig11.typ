// Figura estratta da molle.typ (riga 1054) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ==========================================
  // RIEMPIMENTI (grigio chiaro come nell'illustrazione)
  // ==========================================
  // Viste dall'alto - corone circolari
  circle((0.00, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((0.00, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((2.40, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((2.40, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((4.80, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((4.80, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((7.20, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((7.20, 0.00), radius: 0.55, fill: white, stroke: none)

  // Riempimenti spire - Colonna 1
  line((-0.65, -1.54), (-0.07, -1.62), (0.65, -1.72), (0.65, -1.52), (-0.05, -1.42), (-0.65, -1.34), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -1.90), (-0.07, -1.98), (0.65, -2.08), (0.65, -1.88), (0.07, -1.80), (-0.65, -1.70), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.26), (-0.07, -2.34), (0.65, -2.44), (0.65, -2.24), (0.07, -2.16), (-0.65, -2.06), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.62), (-0.07, -2.70), (0.65, -2.80), (0.65, -2.60), (0.07, -2.52), (-0.65, -2.42), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.98), (0.05, -3.08), (0.65, -3.16), (0.65, -2.96), (0.07, -2.88), (-0.65, -2.78), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -1.34), (-0.07, -1.26), (-0.04, -1.46), (-0.65, -1.54), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -1.70), (0.65, -1.52), (0.65, -1.72), (-0.65, -1.90), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.06), (0.65, -1.88), (0.65, -2.08), (-0.65, -2.26), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.42), (0.65, -2.24), (0.65, -2.44), (-0.65, -2.62), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.78), (0.65, -2.60), (0.65, -2.80), (-0.65, -2.98), close: true, fill: black.transparentize(86%), stroke: none)
  line((0.04, -3.04), (0.65, -2.96), (0.65, -3.16), (0.07, -3.24), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 2
  line((1.75, -1.40), (3.05, -1.40), (3.05, -1.50), (2.33, -1.52), (1.75, -1.52), close: true, fill: black.transparentize(80%), stroke: none)
  line((1.75, -1.78), (2.33, -1.86), (3.05, -1.96), (3.05, -1.76), (2.47, -1.68), (1.75, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.14), (2.33, -2.22), (3.05, -2.32), (3.05, -2.12), (2.47, -2.04), (1.75, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.50), (2.33, -2.58), (3.05, -2.68), (3.05, -2.48), (2.47, -2.40), (1.75, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.86), (2.33, -2.94), (3.05, -3.04), (3.05, -2.84), (2.47, -2.76), (1.75, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -3.22), (3.05, -3.22), (3.05, -3.10), (2.47, -3.10), (1.75, -3.12), close: true, fill: black.transparentize(80%), stroke: none)
  line((1.75, -1.58), (3.05, -1.40), (3.05, -1.60), (1.75, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -1.94), (3.05, -1.76), (3.05, -1.96), (1.75, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -2.30), (3.05, -2.12), (3.05, -2.32), (1.75, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -2.66), (3.05, -2.48), (3.05, -2.68), (1.75, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -3.02), (3.05, -2.84), (3.05, -3.04), (1.75, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 3
  line((4.15, -1.22), (4.80, -1.22), (4.80, -1.31), (5.45, -1.40), (5.45, -1.50), (4.15, -1.42), close: true, fill: black.transparentize(80%), stroke: none)
  line((4.15, -1.78), (4.73, -1.86), (5.45, -1.96), (5.45, -1.76), (4.87, -1.68), (4.15, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.14), (4.73, -2.22), (5.45, -2.32), (5.45, -2.12), (4.87, -2.04), (4.15, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.50), (4.73, -2.58), (5.45, -2.68), (5.45, -2.48), (4.87, -2.40), (4.15, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.86), (4.73, -2.94), (5.45, -3.04), (5.45, -2.84), (4.87, -2.76), (4.15, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -3.22), (4.80, -3.31), (4.80, -3.40), (5.45, -3.40), (5.45, -3.20), (4.15, -3.12), close: true, fill: black.transparentize(80%), stroke: none)
  line((4.15, -1.58), (5.45, -1.40), (5.45, -1.60), (4.15, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -1.94), (5.45, -1.76), (5.45, -1.96), (4.15, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -2.30), (5.45, -2.12), (5.45, -2.32), (4.15, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -2.66), (5.45, -2.48), (5.45, -2.68), (4.15, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -3.02), (5.45, -2.84), (5.45, -3.04), (4.15, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 4
  line((6.55, -1.32), (7.95, -1.32), (7.13, -1.49), (6.55, -1.46), close: true, fill: black.transparentize(80%), stroke: none)
  line((6.55, -1.78), (7.13, -1.86), (7.85, -1.96), (7.85, -1.76), (7.27, -1.68), (6.55, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.14), (7.13, -2.22), (7.85, -2.32), (7.85, -2.12), (7.27, -2.04), (6.55, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.50), (7.13, -2.58), (7.85, -2.68), (7.85, -2.48), (7.27, -2.40), (6.55, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.86), (7.13, -2.94), (7.85, -3.04), (7.85, -2.84), (7.27, -2.76), (6.55, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.45, -3.30), (7.85, -3.30), (7.85, -3.16), (7.27, -3.13), close: true, fill: black.transparentize(80%), stroke: none)
  line((6.55, -1.58), (7.85, -1.40), (7.85, -1.60), (6.55, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -1.94), (7.85, -1.76), (7.85, -1.96), (6.55, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -2.30), (7.85, -2.12), (7.85, -2.32), (6.55, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -2.66), (7.85, -2.48), (7.85, -2.68), (6.55, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -3.02), (7.85, -2.84), (7.85, -3.04), (6.55, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // ==========================================
  // VISTE DALL'ALTO (RIGA SUPERIORE, y = 0)
  // ==========================================
  // 1. Estremita semplice
  circle((0.00, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((0.00, 0.00), radius: 0.55, stroke: 1.2pt)
  circle((0.00, -0.65), radius: (0.03, 0.10), fill: white, stroke: 1pt)

  // 2. Estremita semplice e molata
  circle((2.40, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((2.40, 0.00), radius: 0.55, stroke: 1.2pt)
  arc((2.40, -0.65), start: -90deg, stop: 90deg, radius: (0.08, 0.10), anchor: "origin", stroke: 1pt)
  arc((3.05, 0.00), start: 180deg, stop: 360deg, radius: (0.10, 0.08), anchor: "origin", stroke: 1pt)

  // 3. Estremita troncata
  circle((4.80, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((4.80, 0.00), radius: 0.55, stroke: 1.2pt)
  line((4.80, -0.75), (4.80, -0.55), stroke: 1.2pt)

  // 4. Estremita troncata e molata
  circle((7.20, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((7.20, 0.00), radius: 0.55, stroke: 1.2pt)
  arc((6.60, 0.16), start: -10deg, stop: 170deg, radius: (0.10, 0.08), anchor: "origin", stroke: 1pt)
  arc((7.48, 0.57), start: 115deg, stop: 245deg, radius: (0.12, 0.10), anchor: "origin", stroke: 1pt)

  // ==========================================
  // VISTE LATERALI - COLONNA 1: ESTREMITA SEMPLICE (x_c = 0.00)
  // ==========================================
  // Mezza spira superiore (con sezione di taglio al centro)
  arc((-0.65, -1.44), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -1.34), (-0.07, -1.26), (-0.04, -1.46), (-0.65, -1.54), stroke: 1.2pt)
  // Spira posteriore 1
  line((-0.65, -1.54), (-0.07, -1.62), stroke: 1pt)
  line((-0.05, -1.42), (0.65, -1.52), stroke: 1.2pt)

  // Spira anteriore 1
  arc((-0.65, -1.80), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -1.62), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -1.70), (0.65, -1.52), stroke: 1.2pt)
  line((-0.65, -1.90), (0.65, -1.72), stroke: 1.2pt)
  // Spira posteriore 2
  line((-0.65, -1.90), (-0.07, -1.98), stroke: 1pt)
  line((0.07, -1.80), (0.65, -1.88), stroke: 1pt)

  // Spira anteriore 2
  arc((-0.65, -2.16), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -1.98), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.06), (0.65, -1.88), stroke: 1.2pt)
  line((-0.65, -2.26), (0.65, -2.08), stroke: 1.2pt)
  // Spira posteriore 3
  line((-0.65, -2.26), (-0.07, -2.34), stroke: 1pt)
  line((0.07, -2.16), (0.65, -2.24), stroke: 1pt)

  // Spira anteriore 3
  arc((-0.65, -2.52), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -2.34), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.42), (0.65, -2.24), stroke: 1.2pt)
  line((-0.65, -2.62), (0.65, -2.44), stroke: 1.2pt)
  // Spira posteriore 4
  line((-0.65, -2.62), (-0.07, -2.70), stroke: 1pt)
  line((0.07, -2.52), (0.65, -2.60), stroke: 1pt)

  // Spira anteriore 4
  arc((-0.65, -2.88), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -2.70), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.78), (0.65, -2.60), stroke: 1.2pt)
  line((-0.65, -2.98), (0.65, -2.80), stroke: 1.2pt)
  // Spira posteriore 5
  line((-0.65, -2.98), (0.05, -3.08), stroke: 1.2pt)
  line((0.07, -2.88), (0.65, -2.96), stroke: 1pt)

  // Mezza spira inferiore (con sezione di taglio al centro)
  arc((0.65, -3.06), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((0.65, -2.96), (0.04, -3.04), (0.07, -3.24), (0.65, -3.16), stroke: 1.2pt)

  // ==========================================
  // VISTE LATERALI - COLONNA 2: ESTREMITA SEMPLICE E MOLATA (x_c = 2.40)
  // ==========================================
  // Estremita superiore molata piana
  line((1.75, -1.40), (3.05, -1.40), stroke: 1.2pt)
  arc((1.75, -1.46), start: 90deg, stop: 270deg, radius: 0.06, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.52), (2.62, -1.40), stroke: 1.2pt)
  line((2.04, -1.48), (2.33, -1.52), stroke: 1pt)

  // Spira anteriore 1
  arc((1.75, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.58), (3.05, -1.40), stroke: 1.2pt)
  line((1.75, -1.78), (3.05, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((1.75, -1.78), (2.33, -1.86), stroke: 1pt)
  line((2.47, -1.68), (3.05, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((1.75, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.94), (3.05, -1.76), stroke: 1.2pt)
  line((1.75, -2.14), (3.05, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((1.75, -2.14), (2.33, -2.22), stroke: 1pt)
  line((2.47, -2.04), (3.05, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((1.75, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -2.30), (3.05, -2.12), stroke: 1.2pt)
  line((1.75, -2.50), (3.05, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((1.75, -2.50), (2.33, -2.58), stroke: 1pt)
  line((2.47, -2.40), (3.05, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((1.75, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -2.66), (3.05, -2.48), stroke: 1.2pt)
  line((1.75, -2.86), (3.05, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((1.75, -2.86), (2.33, -2.94), stroke: 1pt)
  line((2.47, -2.76), (3.05, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((1.75, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -3.02), (3.05, -2.84), stroke: 1.2pt)
  line((1.75, -3.22), (3.05, -3.04), stroke: 1.2pt)

  // Estremita inferiore molata piana
  line((1.75, -3.22), (3.05, -3.22), stroke: 1.2pt)
  arc((3.05, -3.16), start: -90deg, stop: 90deg, radius: 0.06, anchor: "origin", stroke: 1.2pt)
  line((2.18, -3.22), (3.05, -3.10), stroke: 1.2pt)
  line((2.47, -3.12), (2.76, -3.16), stroke: 1pt)

  // ==========================================
  // VISTE LATERALI - COLONNA 3: ESTREMITA TRONCATA (x_c = 4.80)
  // ==========================================
  // Mezza spira superiore piegata orizzontalmente
  arc((4.15, -1.32), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.22), (4.80, -1.22), (4.80, -1.42), (4.15, -1.42), stroke: 1.2pt)
  line((4.80, -1.31), (5.45, -1.40), stroke: 1.2pt)
  line((4.50, -1.42), (4.73, -1.45), stroke: 1pt)

  // Spira anteriore 1
  arc((4.15, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.58), (5.45, -1.40), stroke: 1.2pt)
  line((4.15, -1.78), (5.45, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((4.15, -1.78), (4.73, -1.86), stroke: 1pt)
  line((4.87, -1.68), (5.45, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((4.15, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.94), (5.45, -1.76), stroke: 1.2pt)
  line((4.15, -2.14), (5.45, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((4.15, -2.14), (4.73, -2.22), stroke: 1pt)
  line((4.87, -2.04), (5.45, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((4.15, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -2.30), (5.45, -2.12), stroke: 1.2pt)
  line((4.15, -2.50), (5.45, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((4.15, -2.50), (4.73, -2.58), stroke: 1pt)
  line((4.87, -2.40), (5.45, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((4.15, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -2.66), (5.45, -2.48), stroke: 1.2pt)
  line((4.15, -2.86), (5.45, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((4.15, -2.86), (4.73, -2.94), stroke: 1pt)
  line((4.87, -2.76), (5.45, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((4.15, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -3.02), (5.45, -2.84), stroke: 1.2pt)
  line((4.15, -3.22), (5.45, -3.04), stroke: 1.2pt)

  // Mezza spira inferiore piegata orizzontalmente
  line((4.15, -3.22), (4.80, -3.31), stroke: 1.2pt)
  line((4.87, -3.17), (5.10, -3.20), stroke: 1pt)
  arc((5.45, -3.30), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((5.45, -3.20), (4.80, -3.20), (4.80, -3.40), (5.45, -3.40), stroke: 1.2pt)

  // ==========================================
  // VISTE LATERALI - COLONNA 4: ESTREMITA TRONCATA E MOLATA (x_c = 7.20)
  // ==========================================
  // Estremita superiore piegata e molata a cuneo completo
  line((6.55, -1.32), (7.95, -1.32), stroke: 1.2pt)
  arc((6.55, -1.39), start: 90deg, stop: 270deg, radius: 0.07, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.46), (7.95, -1.32), stroke: 1.2pt)
  line((6.75, -1.44), (7.13, -1.49), stroke: 1pt)

  // Spira anteriore 1
  arc((6.55, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.58), (7.85, -1.40), stroke: 1.2pt)
  line((6.55, -1.78), (7.85, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((6.55, -1.78), (7.13, -1.86), stroke: 1pt)
  line((7.27, -1.68), (7.85, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((6.55, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.94), (7.85, -1.76), stroke: 1.2pt)
  line((6.55, -2.14), (7.85, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((6.55, -2.14), (7.13, -2.22), stroke: 1pt)
  line((7.27, -2.04), (7.85, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((6.55, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -2.30), (7.85, -2.12), stroke: 1.2pt)
  line((6.55, -2.50), (7.85, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((6.55, -2.50), (7.13, -2.58), stroke: 1pt)
  line((7.27, -2.40), (7.85, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((6.55, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -2.66), (7.85, -2.48), stroke: 1.2pt)
  line((6.55, -2.86), (7.85, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((6.55, -2.86), (7.13, -2.94), stroke: 1pt)
  line((7.27, -2.76), (7.85, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((6.55, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -3.02), (7.85, -2.84), stroke: 1.2pt)
  line((6.55, -3.22), (7.85, -3.04), stroke: 1.2pt)

  // Estremita inferiore piegata e molata a cuneo completo
  line((6.45, -3.30), (7.85, -3.30), stroke: 1.2pt)
  arc((7.85, -3.23), start: -90deg, stop: 90deg, radius: 0.07, anchor: "origin", stroke: 1.2pt)
  line((6.45, -3.30), (7.85, -3.16), stroke: 1.2pt)
  line((7.27, -3.13), (7.65, -3.18), stroke: 1pt)
})
