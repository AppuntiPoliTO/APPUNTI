// Figura estratta da accoppiamenti.typ (riga 224) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *


  // Circonferenza esterna adattatore (r = 2.80)
  arc((0, 0), start: -88.57deg, stop: 26.79deg, radius: 2.80, anchor: "origin", stroke: 1.0pt)
  arc((0, 0), start: 43.21deg, stop: 268.57deg, radius: 2.80, anchor: "origin", stroke: 1.0pt)

  // Cava per linguetta esterna (a 35° dall'orizzontale / 55° dalla verticale)
  line((2.041, 1.917), (1.737, 1.705), (2.195, 1.049), (2.500, 1.262), stroke: 1.0pt)

  // Circonferenza intermedia bussola (r = 1.96, interrotta dai 3 fori e dal taglio inferiore)
  arc((0, 0), start: 11.13deg, stop: 78.87deg, radius: 1.96, anchor: "origin", stroke: 1.0pt)
  arc((0, 0), start: 101.13deg, stop: 168.87deg, radius: 1.96, anchor: "origin", stroke: 1.0pt)
  arc((0, 0), start: 191.13deg, stop: 267.95deg, radius: 1.96, anchor: "origin", stroke: 1.0pt)
  arc((0, 0), start: -87.95deg, stop: -11.13deg, radius: 1.96, anchor: "origin", stroke: 1.0pt)

  // Foro interno della bussola (r = 1.30)
  arc((0, 0), start: -86.91deg, stop: 22.56deg, radius: 1.30, anchor: "origin", stroke: 1.0pt)
  arc((0, 0), start: 47.44deg, stop: 266.91deg, radius: 1.30, anchor: "origin", stroke: 1.0pt)

  // Cava per linguetta interna (a 35° dall'orizzontale)
  line((0.879, 0.958), (1.051, 1.078), (1.373, 0.620), (1.200, 0.499), stroke: 1.0pt)

  // Taglio radiale inferiore (a ore 6, da r = 1.30 a r = 2.80)
  line((-0.07, -1.30), (-0.07, -2.80), stroke: 1.0pt)
  line(( 0.07, -1.30), ( 0.07, -2.80), stroke: 1.0pt)


  // Vite sinistra in (-1.96, 0)
  circle((-1.96, 0), radius: 0.38, stroke: 0.9pt)
  circle((-1.96, 0), radius: 0.30, stroke: 0.9pt)
  line((-1.96, 0.22), (-1.77, 0.11), (-1.77, -0.11), (-1.96, -0.22), (-2.15, -0.11), (-2.15, 0.11), close: true, stroke: 0.9pt)
  line((-1.96, -0.52), (-1.96, 0.52), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Vite destra in (1.96, 0)
  circle((1.96, 0), radius: 0.38, stroke: 0.9pt)
  circle((1.96, 0), radius: 0.30, stroke: 0.9pt)
  line((1.96, 0.22), (2.15, 0.11), (2.15, -0.11), (1.96, -0.22), (1.77, -0.11), (1.77, 0.11), close: true, stroke: 0.9pt)
  line((1.96, -0.52), (1.96, 0.52), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Foro superiore in (0, 1.96)
  circle((0, 1.96), radius: 0.38, stroke: (dash: "dashed", thickness: 0.8pt))
  circle((0, 1.96), radius: 0.30, stroke: 0.9pt)
  // Linea interna di raccordo/smusso nel foro superiore
  bezier((-0.30, 2.02), (0.30, 2.02), (-0.10, 1.98), (0.10, 2.18), stroke: 0.9pt)
  line((-0.55, 1.96), (0.55, 1.96), stroke: (dash: "dash-dotted", thickness: 0.6pt))


  // =========================================================================
  // 3. ASSI DI SIMMETRIA PRINCIPALI
  // =========================================================================

  // Asse orizzontale
  line((-3.30, 0), (3.80, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  // Asse verticale
  line((0, -3.35), (0, 2.95), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  // Prolungamento superiore dell'asse verticale per la quota di 55°
  line((0, 2.95), (0, 3.88), stroke: 0.6pt)

  // Asse inclinato a 35° (55° dalla verticale)
  line((0, 0), (2.335, 1.635), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  // Prolungamento esterno per la quota di 55°
  line((2.85, 2), (3.24, 2.27), stroke: 0.6pt)


  // =========================================================================
  // 4. QUOTE E LINEE DI RICHIAMO
  // =========================================================================

  // Quota angolare 55° (raggio R_a = 3.70)
  arc((0, 0), start: 35deg, stop: 54deg, radius: 3.70, anchor: "origin", mark: (start: ">", size: 0.16), stroke: 0.6pt)
  arc((0, 0), start: 68deg, stop: 90deg, radius: 3.70, anchor: "origin", mark: (end: ">", size: 0.16), stroke: 0.6pt)

  // Quota larghezza cava "b"
  line((2.041, 1.917), (2.614, 2.319), stroke: 0.6pt)
  line((2.500, 1.262), (3.073, 1.664), stroke: 0.6pt)
  line((2.233, 2.515), (2.451, 2.204), mark: (end: ">", size: 0.15), stroke: 0.6pt)
  line((3.128, 1.238), (2.910, 1.549), mark: (end: ">", size: 0.15), stroke: 0.6pt)

  // Quota profondità cava "t_2"
  line((2.195, 1.049), (3.027, -0.139), stroke: 0.6pt)
  line((2.500, 1.262), (3.620, -0.337), stroke: 0.6pt)
  // Frecce per t_2 (freccia superiore verso il basso-sx sulla linea esterna, freccia inferiore tra le due linee)
  line((3.98, 0.70), (3.2, 0.18), mark: (end: ">", size: 0.15), stroke: 0.6pt)

  // Linea di richiamo "adattatore" (con pallino sul pezzo)
  circle((-1.68, 1.90), radius: 0.04, fill: black, stroke: none)
  line((-1.68, 1.90), (-2.75, 4.95), (-2.30, 4.95), stroke: 0.8pt)

  // Linea di richiamo "bussola Taper-Lock" (con pallino sul pezzo)
  circle((-0.38, -1.62), radius: 0.04, fill: black, stroke: none)
  line((-0.38, -1.62), (-1.45, -3.72), (-1.10, -3.72), stroke: 0.8pt)


  // =========================================================================
  // 5. ETICHETTE DI TESTO (tutte con text(size: 7pt))
  // =========================================================================

  content((-2.05, 4.95), text(size: 7pt)[adattatore], anchor: "west")
  content((-0.88, -3.72), text(size: 7pt)[bussola Taper-Lock], anchor: "west")
  content((1.82, 3.28), text(size: 7pt)[$55 degree$], anchor: "center")
  content((2.64, 1.88), text(size: 7pt)[b], anchor: "center")
  content((3.35, 0.62), text(size: 7pt)[$"t"_2$], anchor: "center")
})
