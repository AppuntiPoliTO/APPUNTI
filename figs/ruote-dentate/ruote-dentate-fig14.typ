// Figura estratta da ruote dentate.typ (riga 1869) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line(
    (-3.48, 0.56), (-3.48, 0.80), (-3.36, 0.80), (-3.30, 0.56),
    (-3.08, 0.56), (-3.02, 0.80), (-2.90, 0.80), (-2.84, 0.56),
    (-2.64, 0.56), (-2.58, 0.80), (-2.46, 0.80), (-2.40, 0.56),
    (-2.20, 0.56), (-2.14, 0.80), (-2.02, 0.80), (-1.96, 0.56),
    (-1.76, 0.56), (-1.70, 0.80), (-1.58, 0.80), (-1.52, 0.56),
    (-1.42, 0.56), (-1.42, -0.56),
    (-1.54, -0.56), (-1.60, -0.80), (-1.72, -0.80), (-1.78, -0.56),
    (-1.98, -0.56), (-2.04, -0.80), (-2.16, -0.80), (-2.22, -0.56),
    (-2.42, -0.56), (-2.48, -0.80), (-2.60, -0.80), (-2.66, -0.56),
    (-2.86, -0.56), (-2.92, -0.80), (-3.04, -0.80), (-3.10, -0.56),
    (-3.30, -0.56), (-3.36, -0.80), (-3.44, -0.80), (-3.48, -0.62),
    close: true,
    fill: gray.transparentize(65%),
    stroke: 0.6pt
  )

  // Linee delle creste e dei fondi dei filetti inclinati (da alto-sinistra a basso-destra)
  // Filetto 1
  line((-3.48, 0.72), (-3.36, -0.80), stroke: 0.5pt)
  line((-3.36, 0.80), (-3.10, -0.56), stroke: 0.5pt)
  line((-3.30, 0.56), (-3.04, -0.80), stroke: 0.5pt)
  // Filetto 2
  line((-3.08, 0.56), (-2.92, -0.80), stroke: 0.5pt)
  line((-3.02, 0.80), (-2.80, -0.80), stroke: 0.5pt)
  line((-2.90, 0.80), (-2.66, -0.56), stroke: 0.5pt)
  line((-2.84, 0.56), (-2.60, -0.80), stroke: 0.5pt)
  // Filetto 3
  line((-2.64, 0.56), (-2.48, -0.80), stroke: 0.5pt)
  line((-2.58, 0.80), (-2.36, -0.80), stroke: 0.5pt)
  line((-2.46, 0.80), (-2.22, -0.56), stroke: 0.5pt)
  line((-2.40, 0.56), (-2.16, -0.80), stroke: 0.5pt)
  // Filetto 4
  line((-2.20, 0.56), (-2.04, -0.80), stroke: 0.5pt)
  line((-2.14, 0.80), (-1.92, -0.80), stroke: 0.5pt)
  line((-2.02, 0.80), (-1.78, -0.56), stroke: 0.5pt)
  line((-1.96, 0.56), (-1.72, -0.80), stroke: 0.5pt)
  // Filetto 5
  line((-1.76, 0.56), (-1.60, -0.80), stroke: 0.5pt)
  line((-1.70, 0.80), (-1.48, -0.80), stroke: 0.5pt)
  line((-1.58, 0.80), (-1.42, -0.20), stroke: 0.5pt)
  line((-1.52, 0.56), (-1.42, -0.05), stroke: 0.5pt)

  // Generatrici primitive sulla vista laterale (tratteggiate a y = +0.70 e y = -0.70)
  line((-3.58, 0.70), (-1.32, 0.70), stroke: (dash: "dashed", thickness: 0.5pt))
  line((-3.58, -0.70), (-1.32, -0.70), stroke: (dash: "dashed", thickness: 0.5pt))

  // =========================================================================
  // 2. VISTA CENTRALE: VITE ASSIALE E RUOTA ELICOIDALE SEZIONATA
  // =========================================================================
  // Riempimento grigio della Ruota elicoidale (sezione verticale tra x = -0.42 e x = 0.42)
  // Meta superiore della corona ruota
  line(
    (-0.42, -0.73), (-0.28, -0.79), (-0.14, -0.83), (0.00, -0.84),
    (0.14, -0.83), (0.28, -0.79), (0.42, -0.73),
    (0.42, -2.35), (-0.42, -2.35),
    close: true,
    fill: gray.transparentize(55%),
    stroke: 0.6pt
  )

  // Meta inferiore della corona ruota (con gola inferiore concava verso il basso)
  line(
    (-0.42, -3.45), (0.42, -3.45),
    (0.42, -5.07), (0.28, -5.24), (0.28, -5.31), (0.14, -5.25), (0.00, -5.24),
    (-0.14, -5.25), (-0.28, -5.31), (-0.28, -5.24), (-0.42, -5.07),
    close: true,
    fill: gray.transparentize(55%),
    stroke: 0.6pt
  )

  // Bordi verticali del foro centrale della ruota (tra y = -2.35 e y = -3.45)
  line((-0.42, -2.35), (-0.42, -3.45), stroke: 0.6pt)
  line((0.42, -2.35), (0.42, -3.45), stroke: 0.6pt)

  // Vite senza fine in vista assiale (cerchi concentrici in O = (0, 0))
  // Cerchio esterno (di testa, R = 0.80)
  circle((0, 0), radius: 0.80, fill: gray.transparentize(65%), stroke: 0.6pt)
  // Cerchio interno (di fondo, R = 0.56)
  circle((0, 0), radius: 0.56, fill: none, stroke: 0.6pt)
  // Cerchio primitivo (R_w = 0.70, tratto-punto)
  circle((0, 0), radius: 0.70, fill: none, stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Foro centrale (R = 0.30, bianco) con cava per linguetta
  circle((0, 0), radius: 0.30, fill: white, stroke: 0.6pt)
  line((-0.06, -0.29), (-0.06, -0.37), (0.06, -0.37), (0.06, -0.29), fill: white, stroke: 0.6pt)

  // Dettagli delle gole superiore e inferiore della ruota elicoidale
  // Gola superiore (centro (0, 0)):
  arc((0, 0), start: 240deg, stop: 300deg, radius: 0.84, anchor: "origin", stroke: 0.6pt)
  line((0, 0), (-0.42, -0.73), stroke: (dash: "dashed", thickness: 0.45pt))
  line((0, 0), (0.42, -0.73), stroke: (dash: "dashed", thickness: 0.45pt))

  // Gola inferiore (centro O_inf = (0, -5.80)):
  arc((0, -5.80), start: 60deg, stop: 120deg, radius: 0.84, anchor: "origin", stroke: 0.6pt)
  arc((0, -5.80), start: 48deg, stop: 132deg, radius: 0.70, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.5pt))
  arc((0, -5.80), start: 60deg, stop: 120deg, radius: 0.56, anchor: "origin", stroke: 0.6pt)
  line((0, -5.80), (-0.42, -5.07), stroke: (dash: "dashed", thickness: 0.45pt))
  line((0, -5.80), (0.42, -5.07), stroke: (dash: "dashed", thickness: 0.45pt))
  line((-0.15, -5.80), (0.15, -5.80), stroke: 0.5pt)

  // =========================================================================
  // 3. VISTA DESTRA: CILINDRO PRIMITIVO ED ELICA
  // =========================================================================
  // Contorno del cilindro primitivo (a tratto-punto, tra x = 1.15 e x = 3.25, y = +-0.70)
  line((1.15, 0.70), (3.25, 0.70), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.15, -0.70), (3.25, -0.70), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.15, -0.70), (1.15, 0.70), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((3.25, -0.70), (3.25, 0.70), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Spira dell'elica sul cilindro primitivo
  // Tratti anteriori (continui spessi)
  line((1.85, 0.00), (1.96, -0.70), stroke: 1.2pt)
  line((2.16, 0.70), (2.27, 0.00), stroke: 1.2pt)
  // Tratto posteriore (tratteggiato)
  line((1.96, -0.70), (2.16, 0.70), stroke: (dash: "dashed", thickness: 0.5pt))

  // =========================================================================
  // 4. ASSI DI SIMMETRIA COMUNI
  // =========================================================================
  // Asse orizzontale superiore (attraversa tutte e tre le viste)
  line((-3.68, 0.00), (3.95, 0.00), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Asse verticale centrale (attraversa la vite assiale e la ruota elicoidale fino a O_inf)
  line((0.00, 0.92), (0.00, -5.95), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Asse orizzontale della ruota elicoidale (in y = -2.90)
  line((-0.68, -2.90), (0.68, -2.90), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // =========================================================================
  // 5. QUOTE E FRECCE DI INDICAZIONE
  // =========================================================================
  // Quota: Diametro interno (tra y = -0.56 e y = +0.56, a x = -1.12)
  line((-1.38, 0.56), (-0.98, 0.56), stroke: 0.5pt)
  line((-1.38, -0.56), (-0.98, -0.56), stroke: 0.5pt)
  line((-1.12, -0.56), (-1.12, 0.56), mark: (start: ">", end: ">", fill: black), stroke: 0.5pt)
  line((-1.12, 0.56), (-1.12, 1.32), (-1.38, 1.32), stroke: 0.5pt)

  // Quota: Diametro primitivo d_w (tra x = -0.70 e x = +0.70, in alto a y = 1.32)
  line((-0.70, 0.25), (-0.70, 1.48), stroke: 0.5pt)
  line((0.70, 0.25), (0.70, 1.48), stroke: 0.5pt)
  line((-0.70, 1.32), (0.70, 1.32), mark: (start: ">", end: ">", fill: black), stroke: 0.5pt)
  line((0.00, 1.32), (-0.12, 1.85), (-0.38, 1.85), stroke: 0.5pt)

  // Freccia: Vite senza fine
  line((-3.12, -1.35), (-3.12, -0.82), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Quota: Passo assiale p_x (tra due creste inferiori a x = -2.66 e x = -2.28)
  line((-2.66, -0.85), (-2.66, -1.25), stroke: 0.5pt)
  line((-2.28, -0.85), (-2.28, -1.25), stroke: 0.5pt)
  line((-2.98, -1.12), (-2.66, -1.12), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((-1.96, -1.12), (-2.28, -1.12), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((-2.66, -1.12), (-2.28, -1.12), stroke: 0.5pt)
  line((-2.47, -1.12), (-2.36, -1.62), (-2.22, -1.62), stroke: 0.5pt)

  // Freccia: Cilindro primitivo
  line((1.50, 1.05), (1.35, 0.72), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Freccia: Elica
  line((2.98, 0.95), (2.82, 0.95), (2.22, 0.42), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Quota: Passo L (tra x = 1.85 e x = 2.27)
  line((1.85, -0.08), (1.85, -1.48), stroke: 0.5pt)
  line((2.27, -0.08), (2.27, -1.48), stroke: 0.5pt)
  line((2.06, -1.35), (2.06, -1.85), (2.20, -1.85), stroke: 0.5pt)

  // Angoli lambda (Angolo di passo) e psi_W (Angolo d'elica), centro (2.27, 0.00), R = 1.45
  // Prolungamento dell'elica a 279deg
  line((2.27, 0.00), (2.52, -1.58), stroke: 0.5pt)
  // Arco per psi_W (da 279deg a 360deg)
  arc((2.27, 0.00), start: 279deg, stop: 360deg, radius: 1.45, anchor: "origin", mark: (start: ">", end: ">", fill: black), stroke: 0.5pt)
  // Arco e linea di richiamo per lambda (tra 270deg e 279deg)
  arc((2.27, 0.00), start: 252deg, stop: 270deg, radius: 1.45, anchor: "origin", mark: (end: ">", fill: black), stroke: 0.5pt)
  line((2.38, -1.44), (2.58, -1.62), (2.75, -1.62), stroke: 0.5pt)

  // Quota: Diametro primitivo d_G (tra y = -0.70 e y = -5.10, a x = 0.88)
  line((0.20, -0.70), (1.05, -0.70), stroke: 0.5pt)
  line((0.20, -5.10), (1.05, -5.10), stroke: 0.5pt)
  line((0.88, -2.05), (0.88, -0.70), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((0.88, -4.15), (0.88, -5.10), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Freccia: Ruota elicoidale
  line((-0.85, -4.35), (-0.44, -4.45), mark: (end: ">", fill: black), stroke: 0.5pt)

  // =========================================================================
  // 6. ETICHETTE (tutte con text(size: 7pt))
  // =========================================================================
  content((-1.42, 1.32), text(size: 7pt)[Diametro interno], anchor: "east")

  content((-0.90, 1.95), text(size: 7pt)[Diametro], anchor: "center")
  content((-0.90, 1.68), text(size: 7pt)[primitivo $d_w$], anchor: "center")

  content((1.55, 1.45), text(size: 7pt)[Cilindro], anchor: "center")
  content((1.55, 1.18), text(size: 7pt)[primitivo], anchor: "center")

  content((3.05, 0.95), text(size: 7pt)[Elica], anchor: "west")

  content((-3.12, -1.55), text(size: 7pt)[Vite senza], anchor: "center")
  content((-3.12, -1.82), text(size: 7pt)[fine], anchor: "center")

  content((-2.15, -1.55), text(size: 7pt)[Passo], anchor: "west")
  content((-2.32, -1.82), text(size: 7pt)[assiale $p_x$], anchor: "west")

  content((3.72, -0.82), text(size: 7pt)[$psi_W$, Angolo d'elica], anchor: "center")
  content((2.80, -1.62), text(size: 7pt)[Angolo di passo $lambda$], anchor: "west")
  content((2.25, -1.85), text(size: 7pt)[Passo $L$], anchor: "west")

  content(
  (0.88, -3.10), 
  text(size: 7pt)[Diametro primitivo $d_G$], 
  anchor: "center", 
  angle: -90deg
)

  content((-1.32, -4.25), text(size: 7pt)[Ruota], anchor: "center")
  content((-1.32, -4.52), text(size: 7pt)[elicoidale], anchor: "center")
})
