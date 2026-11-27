// Figura estratta da ruote dentate.typ (riga 2587) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. RIEMPIMENTI E CONTORNI DELLA PARETE E DELLA TRAVE
  // Parete verticale d'incastro a sinistra
  rect((-0.58, -2.12), (0.00, 1.58))

  // Trave orizzontale a mensola
  rect((-0., -0.76), (7.14, 0.00))

  // 2. CARICO DISTRIBUITO TRIANGOLARE
  // Profilo lineare superiore del carico
  line((0.00, 1.46), (7.00, 0.16), stroke: 0.9pt)

  // Segmenti verticali del carico distribuito
  line((0.40, 0.00), (0.40, 1.39), stroke: 0.8pt)
  line((0.85, 0.00), (0.85, 1.30), stroke: 0.8pt)
  line((1.30, 0.00), (1.30, 1.22), stroke: 0.8pt)
  line((1.75, 0.00), (1.75, 1.14), stroke: 0.8pt)
  line((2.20, 0.00), (2.20, 1.05), stroke: 0.8pt)
  line((2.65, 0.00), (2.65, 0.97), stroke: 0.8pt)
  line((3.10, 0.00), (3.10, 0.88), stroke: 0.8pt)
  line((3.55, 0.00), (3.55, 0.80), stroke: 0.8pt)
  line((4.00, 0.00), (4.00, 0.72), stroke: 0.8pt)
  line((4.45, 0.00), (4.45, 0.63), stroke: 0.8pt)
  line((4.90, 0.00), (4.90, 0.55), stroke: 0.8pt)
  line((5.35, 0.00), (5.35, 0.47), stroke: 0.8pt)
  line((5.80, 0.00), (5.80, 0.38), stroke: 0.8pt)

  // 3. VETTORI E ASSI
  // Forza concentrata blu all'estremità destra
  line((7.02, 1.90), (7.02, 0.12), mark: (end: ">"), stroke: (paint: blue, thickness: 2.4pt))

  // Freccia dell'ascissa x sotto la trave
  line((7.08, -1.22), (4.08, -1.22), mark: (end: ">"), stroke: 0.8pt)

  // 4. ETICHETTE (dentro l'immagine -> text(size: 7pt))
  content((5.24, -1.52), text(size: 7pt)[$x$], anchor: "north")
})
