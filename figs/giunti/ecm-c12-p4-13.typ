// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // =========================================================
  // PANNELLO SINISTRO: sez. A-A
  // =========================================================

  // Asse principale
  line((-4.95, 0.00), (-0.15, 0.00), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  // Albero sinistro e mozzo scanalato con crociera
  line(
    (-4.80, 0.16), (-4.42, 0.16), (-4.32, 0.22), (-3.95, 0.22), (-3.85, 0.17),
    (-2.68, 0.17), (-2.60, 0.24), (-1.98, 0.24), (-1.94, 0.20),
    (-1.94, -0.20), (-1.98, -0.24), (-2.60, -0.24), (-2.68, -0.17),
    (-3.85, -0.17), (-3.95, -0.22), (-4.32, -0.22), (-4.42, -0.16), (-4.80, -0.16),
    close: true, fill: white, stroke: 0.75pt
  )
  // Linea d'interruzione sinistra albero
  bezier((-4.80, 0.16), (-4.80, 0.00), (-4.85, 0.11), (-4.75, 0.05), stroke: 0.5pt)
  bezier((-4.80, 0.00), (-4.80, -0.16), (-4.85, -0.05), (-4.75, -0.11), stroke: 0.5pt)

  // Spallamenti albero per cuffia
  line((-4.42, 0.16), (-4.42, -0.16), stroke: 0.5pt)
  line((-4.32, 0.22), (-4.32, -0.22), stroke: 0.5pt)
  line((-3.95, 0.22), (-3.95, -0.22), stroke: 0.5pt)
  line((-3.85, 0.17), (-3.85, -0.17), stroke: 0.5pt)

  // Scanalature sul tratto (-2.60 .. -1.98)
  line((-2.60, 0.24), (-2.60, -0.24), stroke: 0.6pt)
  line((-1.98, 0.24), (-1.98, -0.24), stroke: 0.6pt)
  line((-2.60, 0.18), (-1.98, 0.18), stroke: 0.45pt)
  line((-2.60, 0.11), (-1.98, 0.11), stroke: 0.45pt)
  line((-2.60, 0.04), (-1.98, 0.04), stroke: 0.45pt)
  line((-2.60, -0.04), (-1.98, -0.04), stroke: 0.45pt)
  line((-2.60, -0.11), (-1.98, -0.11), stroke: 0.45pt)
  line((-2.60, -0.18), (-1.98, -0.18), stroke: 0.45pt)

  // Mozzo tripode centrale (sezionato attorno allo scanalato) e anello Seeger
  line(
    (-2.38, 0.24), (-2.34, 0.36), (-2.04, 0.36), (-2.00, 0.24),
    close: true, fill: luma(215), stroke: 0.7pt
  )
  line(
    (-2.38, -0.24), (-2.34, -0.44), (-2.04, -0.44), (-2.00, -0.24),
    close: true, fill: luma(210), stroke: 0.7pt
  )
  // Anello d'arresto (Seeger) all'estremità destra dello scanalato
  line((-1.98, 0.27), (-1.92, 0.27), (-1.92, -0.27), (-1.98, -0.27), close: true, fill: luma(70), stroke: 0.5pt)

  // Cuffia a soffietto in gomma (profilo sezionato nero/grigio scuro con pieghe)
  line(
    (-4.28, 0.22), (-4.05, 0.22), (-3.96, 0.70), (-3.88, 0.74), (-3.80, 0.56),
    (-3.72, 0.56), (-3.64, 0.78), (-3.56, 0.78), (-3.46, 0.58), (-3.38, 0.58),
    (-3.28, 0.90), (-3.18, 0.90), (-3.08, 0.68), (-2.84, 0.68),
    (-2.84, 0.61), (-3.12, 0.61), (-3.23, 0.82), (-3.34, 0.50), (-3.48, 0.50),
    (-3.60, 0.70), (-3.70, 0.48), (-3.82, 0.48), (-3.90, 0.65), (-4.00, 0.17), (-4.28, 0.17),
    close: true, fill: luma(75), stroke: 0.6pt
  )
  line(
    (-4.28, -0.22), (-4.05, -0.22), (-3.96, -0.70), (-3.88, -0.74), (-3.80, -0.56),
    (-3.72, -0.56), (-3.64, -0.78), (-3.56, -0.78), (-3.46, -0.58), (-3.38, -0.58),
    (-3.28, -0.90), (-3.18, -0.90), (-3.08, -0.68), (-2.84, -0.68),
    (-2.84, -0.61), (-3.12, -0.61), (-3.23, -0.82), (-3.34, -0.50), (-3.48, -0.50),
    (-3.60, -0.70), (-3.70, -0.48), (-3.82, -0.48), (-3.90, -0.65), (-4.00, -0.17), (-4.28, -0.17),
    close: true, fill: luma(75), stroke: 0.6pt
  )
  // Linee delle pieghe interne in vista della cuffia
  line((-3.88, 0.65), (-3.88, 0.17), stroke: 0.45pt)
  line((-3.60, 0.70), (-3.60, 0.17), stroke: 0.45pt)
  line((-3.23, 0.82), (-3.23, 0.17), stroke: 0.45pt)
  line((-3.88, -0.65), (-3.88, -0.17), stroke: 0.45pt)
  line((-3.60, -0.70), (-3.60, -0.17), stroke: 0.45pt)
  line((-3.23, -0.82), (-3.23, -0.17), stroke: 0.45pt)

  // Fascette di serraggio cuffia
  line((-4.24, 0.22), (-4.08, 0.22), (-4.08, 0.27), (-4.24, 0.27), close: true, fill: luma(40), stroke: 0.5pt)
  line((-4.24, -0.22), (-4.08, -0.22), (-4.08, -0.27), (-4.24, -0.27), close: true, fill: luma(40), stroke: 0.5pt)
  line((-3.02, 0.68), (-2.86, 0.68), (-2.86, 0.73), (-3.02, 0.73), close: true, fill: luma(40), stroke: 0.5pt)
  line((-3.02, -0.68), (-2.86, -0.68), (-2.86, -0.73), (-3.02, -0.73), close: true, fill: luma(40), stroke: 0.5pt)

  // Camicia metallica / coperchio anteriore e posteriore della campana
  // Parete superiore corpo campana (sezionata)
  line(
    (-3.04, 0.61), (-2.82, 0.61), (-2.64, 0.96), (-1.68, 0.96),
    (-1.68, 0.90), (-2.60, 0.90), (-2.78, 0.55), (-3.04, 0.55),
    close: true, fill: luma(215), stroke: 0.7pt
  )
  // Corpo campana superiore (anello esterno sopra la pista a 90 deg)
  line(
    (-2.60, 1.10), (-1.68, 1.10), (-1.68, 0.96), (-2.04, 0.96), (-2.12, 1.02), (-2.54, 1.02),
    close: true, fill: luma(230), stroke: 0.65pt
  )
  // Linee interne della pista superiore e spallamenti
  line((-2.78, 0.55), (-2.78, 0.17), stroke: 0.5pt)
  line((-2.60, 0.90), (-2.60, 0.50), stroke: 0.5pt)
  line((-2.60, 0.50), (-1.76, 0.50), stroke: 0.6pt)
  line((-2.78, -0.46), (-2.00, -0.46), stroke: 0.6pt)

  // Corpo campana inferiore (sezionato nella nervatura piena a 270 deg con foro bullone)
  line(
    (-3.04, -0.61), (-2.82, -0.61), (-2.72, -0.72), (-1.68, -0.72),
    (-1.68, -0.84), (-2.20, -0.84), (-2.20, -0.60), (-2.68, -0.60), (-2.78, -0.55), (-3.04, -0.55),
    close: true, fill: luma(215), stroke: 0.7pt
  )
  // Blocco inferiore sotto il bullone (nervatura campana)
  line(
    (-2.06, -1.04), (-1.68, -1.04), (-1.68, -1.24), (-2.06, -1.24),
    close: true, fill: luma(215), stroke: 0.7pt
  )

  // Perno superiore (trunnion a 90 deg) e rullo sferico con rullini
  line((-2.31, 0.30), (-2.07, 0.30), (-2.07, 0.87), (-2.31, 0.87), close: true, fill: white, stroke: 0.7pt)
  line((-2.28, 0.87), (-2.10, 0.87), (-2.07, 0.84), (-2.31, 0.84), close: true, fill: white, stroke: 0.5pt)
  // Rullini (needles)
  line((-2.36, 0.48), (-2.31, 0.48), (-2.31, 0.82), (-2.36, 0.82), close: true, fill: luma(180), stroke: 0.5pt)
  line((-2.07, 0.48), (-2.02, 0.48), (-2.02, 0.82), (-2.07, 0.82), close: true, fill: luma(180), stroke: 0.5pt)
  // Anello esterno rullo (profilo bombato sinistro e destro)
  line(
    (-2.44, 0.48), (-2.36, 0.48), (-2.36, 0.84), (-2.44, 0.84), (-2.48, 0.74), (-2.48, 0.58),
    close: true, fill: luma(230), stroke: 0.7pt
  )
  line(
    (-2.02, 0.48), (-1.94, 0.48), (-1.90, 0.58), (-1.90, 0.74), (-1.94, 0.84), (-2.02, 0.84),
    close: true, fill: luma(230), stroke: 0.7pt
  )

  // Coperchio in lamiera sagomata tra campana e flangia destra
  line(
    (-1.95, 1.02), (-1.66, 1.02), (-1.52, 0.86), (-1.52, -0.78), (-1.68, -0.78), (-1.68, -0.84),
    (-1.46, -0.84), (-1.46, 0.89), (-1.63, 1.08), (-1.95, 1.08),
    close: true, fill: luma(190), stroke: 0.65pt
  )

  // Flangia/mozzo d'uscita destro (con disco centrale sezionato)
  line(
    (-1.46, 0.84), (-1.34, 0.84), (-1.34, 0.30), (-1.16, 0.16),
    (-1.16, -0.16), (-1.34, -0.30), (-1.34, -1.16), (-1.46, -1.16),
    close: true, fill: luma(220), stroke: 0.7pt
  )
  // Sporgenza conica centrale della flangia
  line((-1.46, 0.10), (-1.28, 0.00), (-1.46, -0.10), close: true, fill: white, stroke: 0.6pt)

  // Grande campana/flangia esterna destra (r = 2.08, spallamento a r = 1.38)
  line(
    (-1.60, 1.08), (-1.60, 1.34), (-0.98, 1.38), (-0.98, 2.08), (-0.82, 2.08),
    (-0.82, 1.24), (-1.48, 1.20), (-1.48, 1.08),
    close: true, fill: luma(210), stroke: 0.75pt
  )
  line(
    (-1.60, -1.08), (-1.60, -1.34), (-0.98, -1.38), (-0.98, -2.08), (-0.82, -2.08),
    (-0.82, -1.24), (-1.48, -1.20), (-1.48, -1.08),
    close: true, fill: luma(210), stroke: 0.75pt
  )
  // Linee verticali di raccordo tra parte superiore e inferiore della grande flangia
  line((-0.82, 1.24), (-0.82, 0.18), stroke: 0.75pt)
  line((-0.82, -0.18), (-0.82, -1.24), stroke: 0.75pt)
  line((-0.86, 1.24), (-0.86, 0.18), stroke: 0.45pt)
  line((-0.86, -0.18), (-0.86, -1.24), stroke: 0.45pt)

  // Albero d'uscita destro
  line(
    (-1.16, 0.18), (-0.32, 0.18), (-0.32, -0.18), (-1.16, -0.18),
    close: true, fill: white, stroke: 0.75pt
  )
  line((-1.16, 0.18), (-1.16, -0.18), stroke: 0.65pt)
  bezier((-0.32, 0.18), (-0.32, 0.00), (-0.36, 0.12), (-0.28, 0.06), stroke: 0.5pt)
  bezier((-0.32, 0.00), (-0.32, -0.18), (-0.36, -0.06), (-0.28, -0.12), stroke: 0.5pt)

  // Bullone di fissaggio inferiore con dado e rondella (y = -0.94)
  line((-2.32, -0.88), (-1.28, -0.88), (-1.28, -1.00), (-2.32, -1.00), close: true, fill: white, stroke: 0.65pt)
  // Testa cilindrica / bussola destra
  line((-1.34, -0.85), (-1.24, -0.85), (-1.24, -1.03), (-1.34, -1.03), close: true, fill: luma(235), stroke: 0.6pt)
  // Rondella e dado esagonale a sinistra
  line((-2.12, -0.78), (-2.06, -0.78), (-2.06, -1.10), (-2.12, -1.10), close: true, fill: luma(200), stroke: 0.6pt)
  line((-2.26, -0.81), (-2.12, -0.81), (-2.12, -1.07), (-2.26, -1.07), close: true, fill: luma(230), stroke: 0.65pt)
  line((-2.26, -0.87), (-2.12, -0.87), stroke: 0.5pt)
  line((-2.26, -1.01), (-2.12, -1.01), stroke: 0.5pt)
  // Asse bullone
  line((-2.40, -0.94), (-1.16, -0.94), stroke: (dash: "dash-dotted", thickness: 0.4pt, paint: luma(70)))

  // Traccia del piano di sezione B-B (a scalino: sopra per il perno x = -2.04, sotto a sinistra del dado x = -2.54)
  line((-2.04, 1.54), (-2.04, 0.96), stroke: 0.55pt)
  line((-2.04, 1.50), (-1.68, 1.50), mark: (end: ">", scale: 0.9), stroke: 0.75pt)
  content((-1.92, 1.34), text(size: 7.5pt)[*B*], anchor: "center")

  line((-2.04, -0.46), (-2.54, -0.46), (-2.54, -1.52), stroke: 0.55pt)
  line((-2.54, -1.48), (-2.18, -1.48), mark: (end: ">", scale: 0.9), stroke: 0.75pt)
  content((-2.42, -1.32), text(size: 7.5pt)[*B*], anchor: "center")

  content((-2.40, -2.05), text(size: 8.5pt)[*sez. A-A*], anchor: "north")

  // =========================================================
  // PANNELLO DESTRO: sez. B-B (centro in (2.55, 0.00))
  // =========================================================

  // Cerchi esterni della flangia (proiettati 1:1 con sez. A-A)
  circle((2.55, 0.00), radius: 2.08, fill: white, stroke: 0.8pt)
  circle((2.55, 0.00), radius: 1.24, fill: white, stroke: 0.7pt)

  // Profilo esagonale esterno della campana sezionata (smussato ai vertici)
  line(
    (2.02, 1.00), (3.08, 1.00),
    (3.16, 0.95), (3.68, 0.05),
    (3.68, -0.05), (3.44, -0.46),
    (1.66, -0.46), (1.42, -0.05),
    (1.42, 0.05), (1.94, 0.95),
    close: true, fill: luma(220), stroke: 0.75pt
  )

  // Parte inferiore della campana in vista (non sezionata per via dello scalino di B-B sotto y = -0.46)
  line(
    (1.66, -0.46), (3.44, -0.46), (3.16, -0.95), (3.08, -1.00), (2.02, -1.00), (1.94, -0.95),
    close: true, fill: white, stroke: 0.75pt
  )
  // Nervatura e contorni della flangetta inferiore porta-bulloni in vista
  arc((2.55, 0.00), start: 235deg, stop: 305deg, radius: 1.12, anchor: "origin", stroke: 0.55pt)
  line((1.76, -0.56), (3.34, -0.56), stroke: 0.55pt)

  // Tratteggio (hatching) sulla sezione esagonale della campana
  line((1.50, -0.10), (2.14, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.56, -0.22), (2.26, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.62, -0.34), (2.38, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.68, -0.46), (2.50, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.80, -0.46), (2.62, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.92, -0.46), (2.74, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.04, -0.46), (2.86, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.16, -0.46), (2.98, 1.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.28, -0.46), (3.10, 0.98), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.40, -0.46), (3.18, 0.88), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.52, -0.46), (3.26, 0.78), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.64, -0.46), (3.32, 0.66), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.76, -0.46), (3.40, 0.54), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.88, -0.46), (3.46, 0.42), stroke: (paint: luma(110), thickness: 0.4pt))
  line((3.00, -0.46), (3.54, 0.30), stroke: (paint: luma(110), thickness: 0.4pt))
  line((3.12, -0.46), (3.60, 0.18), stroke: (paint: luma(110), thickness: 0.4pt))
  line((3.24, -0.46), (3.66, 0.06), stroke: (paint: luma(110), thickness: 0.4pt))

  // Cavità trilobata interna della campana (piste a 90, 210, 330 deg)
  line(
    (2.26, 0.88), (2.84, 0.88),
    (2.94, 0.42), (3.08, 0.34),
    (3.46, -0.18), (3.17, -0.68),
    (2.74, -0.46), (2.36, -0.46),
    (1.93, -0.68), (1.64, -0.18),
    (2.02, 0.34), (2.16, 0.42),
    close: true, fill: white, stroke: 0.75pt
  )

  // 6 bulloni periferici (3 coppie a r = 0.86 attorno a 30, 150, 270 deg)
  // Coppia superiore destra (42 deg e 12 deg)
  circle((3.16, 0.66), radius: 0.16, fill: white, stroke: 0.6pt)
  circle((3.16, 0.66), radius: 0.11, fill: luma(230), stroke: 0.6pt)
  circle((3.16, 0.66), radius: 0.06, fill: luma(180), stroke: 0.5pt)

  circle((3.42, 0.22), radius: 0.16, fill: white, stroke: 0.6pt)
  circle((3.42, 0.22), radius: 0.11, fill: luma(230), stroke: 0.6pt)
  circle((3.42, 0.22), radius: 0.06, fill: luma(180), stroke: 0.5pt)

  // Coppia superiore sinistra (138 deg e 168 deg)
  circle((1.94, 0.66), radius: 0.16, fill: white, stroke: 0.6pt)
  circle((1.94, 0.66), radius: 0.11, fill: luma(230), stroke: 0.6pt)
  circle((1.94, 0.66), radius: 0.06, fill: luma(180), stroke: 0.5pt)

  circle((1.68, 0.22), radius: 0.16, fill: white, stroke: 0.6pt)
  circle((1.68, 0.22), radius: 0.11, fill: luma(230), stroke: 0.6pt)
  circle((1.68, 0.22), radius: 0.06, fill: luma(180), stroke: 0.5pt)

  // Coppia inferiore in vista con dadi esagonali (252 deg e 288 deg)
  circle((2.24, -0.78), radius: 0.18, fill: white, stroke: 0.6pt)
  line(
    (2.38, -0.78), (2.31, -0.66), (2.17, -0.66), (2.10, -0.78), (2.17, -0.90), (2.31, -0.90),
    close: true, fill: luma(242), stroke: 0.6pt
  )
  circle((2.24, -0.78), radius: 0.09, fill: white, stroke: 0.6pt)
  circle((2.24, -0.78), radius: 0.05, fill: luma(190), stroke: 0.5pt)

  circle((2.86, -0.78), radius: 0.18, fill: white, stroke: 0.6pt)
  line(
    (3.00, -0.78), (2.93, -0.66), (2.79, -0.66), (2.72, -0.78), (2.79, -0.90), (2.93, -0.90),
    close: true, fill: luma(242), stroke: 0.6pt
  )
  circle((2.86, -0.78), radius: 0.09, fill: white, stroke: 0.6pt)
  circle((2.86, -0.78), radius: 0.05, fill: luma(190), stroke: 0.5pt)

  // Tre perni (trunnions) e rulli a 90, 210, 330 deg
  // 1) 90 deg (superiore)
  line((2.28, 0.46), (2.82, 0.46), (2.82, 0.84), (2.28, 0.84), close: true, fill: luma(232), stroke: 0.7pt)
  line((2.38, 0.46), (2.72, 0.46), (2.72, 0.84), (2.38, 0.84), close: true, fill: luma(185), stroke: 0.55pt)
  line((2.43, 0.34), (2.67, 0.34), (2.67, 0.87), (2.43, 0.87), close: true, fill: white, stroke: 0.7pt)

  // 2) 210 deg (inferiore sinistro)
  line((2.02, -0.00), (2.29, -0.47), (1.96, -0.66), (1.69, -0.19), close: true, fill: luma(232), stroke: 0.7pt)
  line((2.07, -0.09), (2.24, -0.38), (1.91, -0.57), (1.74, -0.28), close: true, fill: luma(185), stroke: 0.55pt)
  line((2.20, -0.07), (2.32, -0.27), (1.86, -0.54), (1.74, -0.34), close: true, fill: white, stroke: 0.7pt)

  // 3) 330 deg (inferiore destro)
  line((3.08, -0.00), (2.81, -0.47), (3.14, -0.66), (3.41, -0.19), close: true, fill: luma(232), stroke: 0.7pt)
  line((3.03, -0.09), (2.86, -0.38), (3.19, -0.57), (3.36, -0.28), close: true, fill: luma(185), stroke: 0.55pt)
  line((2.90, -0.07), (2.78, -0.27), (3.24, -0.54), (3.36, -0.34), close: true, fill: white, stroke: 0.7pt)

  // Mozzo centrale tripode e albero scanalato sezionato
  circle((2.55, 0.00), radius: 0.42, fill: luma(212), stroke: 0.75pt)
  circle((2.55, 0.00), radius: 0.25, fill: white, stroke: 0.65pt)
  // Profilo scanalato interno (corona dentata stilizzata fedele all'originale)
  line(
    (2.77, 0.04), (2.71, 0.07), (2.73, 0.14), (2.66, 0.14), (2.64, 0.20), (2.58, 0.17),
    (2.55, 0.22), (2.52, 0.17), (2.46, 0.20), (2.44, 0.14), (2.37, 0.14), (2.39, 0.07),
    (2.33, 0.04), (2.38, 0.00), (2.33, -0.04), (2.39, -0.07), (2.37, -0.14), (2.44, -0.14),
    (2.46, -0.20), (2.52, -0.17), (2.55, -0.22), (2.58, -0.17), (2.64, -0.20), (2.66, -0.14),
    (2.73, -0.14), (2.71, -0.07), (2.77, -0.04), (2.72, 0.00),
    close: true, fill: luma(230), stroke: 0.55pt
  )

  // Assi di simmetria del pannello destro
  line((0.20, 0.00), (4.90, 0.00), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))
  line((2.55, -2.28), (2.55, 2.28), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  // Traccia del piano di sezione A-A (verticale superiore, inclinata inferiore attraverso il bullone a 252 deg)
  line((2.55, 1.85), (2.55, 1.45), stroke: 0.55pt)
  line((2.55, 1.80), (2.18, 1.80), mark: (end: ">", scale: 0.9), stroke: 0.75pt)
  content((2.42, 1.63), text(size: 7.5pt)[*A*], anchor: "center")

  line((2.55, 0.00), (2.11, -1.48), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(70)))
  line((2.20, -1.16), (2.09, -1.52), stroke: 0.55pt)
  line((2.10, -1.48), (1.74, -1.48), mark: (end: ">", scale: 0.9), stroke: 0.75pt)
  content((2.03, -1.32), text(size: 7.5pt)[*A*], anchor: "center")

  content((3.85, -2.05), text(size: 8.5pt)[*sez. B-B.*], anchor: "north")
})