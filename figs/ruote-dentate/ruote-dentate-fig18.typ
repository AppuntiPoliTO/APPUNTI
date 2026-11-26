// Figura estratta da ruote dentate.typ (riga 2628) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. ASSE DI SIMMETRIA E LINEE DI COSTRUZIONE DELLE FORZE
  // Asse orizzontale tratteggio-punto
  line((-0.95, 0.00), (4.65, 0.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Rettangolo tratteggiato di scomposizione della forza P
  line((1.21, 0.00), (1.21, 3.20), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.21, 3.20), (3.00, 3.20), stroke: (dash: "dashed", thickness: 0.6pt))

  // Linea d'azione interna di P tra il punto di contatto e l'asse
  line((3.48, -0.86), (3.00, 0.00), stroke: 0.6pt)

  // 2. COMPONENTI GRIGIE F E S
  line((3.00, 0.00), (3.00, 3.18), mark: (end: ">"), stroke: (paint: gray, thickness: 2.0pt))
  line((3.00, 0.00), (1.23, 0.00), mark: (end: ">"), stroke: (paint: gray, thickness: 2.0pt))

  // 3. CONTORNO DEL DENTE E SEZIONE CRITICA a-a
  // Profilo sinistro del corpo ruota e raccordi di piede
  line((-0.66, 3.32), (-0.45, 1.62), stroke: 1.1pt)
  arc((-0.16, 1.72), start: 198deg, stop: 301deg, radius: 0.31, anchor: "origin", stroke: 1.1pt)
  line((-0.66, -3.32), (-0.45, -1.62), stroke: 1.1pt)
  arc((-0.16, -1.72), start: 59deg, stop: 162deg, radius: 0.31, anchor: "origin", stroke: 1.1pt)

  // Fianchi superiore e inferiore e cresta destra del dente
  arc((1.00, -3.13), start: 58.1deg, stop: 102.3deg, radius: 4.69, anchor: "origin", stroke: 1.1pt)
  arc((1.00, 3.13), start: -102.3deg, stop: -58.1deg, radius: 4.69, anchor: "origin", stroke: 1.1pt)
  arc((-3.50, 0.00), start: -7.0deg, stop: 7.0deg, radius: 7.03, anchor: "origin", stroke: 1.1pt)

  // Segmento verticale della sezione critica a-a
  line((0.00, -1.45), (0.00, 1.45), stroke: 1.0pt)

  // 4. PARABOLA DI UNIFORME RESISTENZA INSCRITTA (arco ellittico tratteggiato rosso)
  arc((0.00, 0.00), start: -90deg, stop: 90deg, radius: (3.00, 1.45), anchor: "origin", stroke: (paint: red, dash: "dashed", thickness: 1.5pt))

  // Punto di applicazione V sull'asse
  circle((3.00, 0.00), radius: 0.06, fill: black, stroke: none)

  // 5. VETTORI FORZA P (neri spessi)
  line((3.00, 0.00), (1.21, 3.20), mark: (end: ">"), stroke: 1.8pt)
  line((4.69, -3.03), (3.48, -0.86), mark: (end: ">"), stroke: 1.8pt)

  // 6. QUOTE LINEARI E ANGOLARI
  // Quota h = K_1 * m a sinistra
  line((-0.05, 1.45), (-1.95, 1.45), stroke: 0.5pt)
  line((-0.05, -1.45), (-1.95, -1.45), stroke: 0.5pt)
  line((-1.78, 0.25), (-1.78, 1.45), mark: (end: ">"), stroke: 0.6pt)
  line((-1.78, -0.25), (-1.78, -1.45), mark: (end: ">"), stroke: 0.6pt)

  // Freccia doppia dell'ordinata y
  line((0.48, -1.40), (0.48, 1.40), mark: (start: ">", end: ">"), stroke: 0.7pt)

  // Quota l_0 = K_2 * m e freccia dell'ascissa x in basso
  line((0.00, -1.45), (0.00, -2.55), stroke: 0.5pt)
  line((3.00, 0.00), (3.00, -3.15), stroke: 0.7pt)
  line((0.55, -2.42), (0.00, -2.42), mark: (end: ">"), stroke: 0.6pt)
  line((2.45, -2.42), (3.00, -2.42), mark: (end: ">"), stroke: 0.6pt)
  line((3.00, -3.12), (0.55, -3.12), mark: (end: ">"), stroke: 0.8pt)

  // Arco dell'angolo theta superiore
  arc((3.00, 0.00), start: 90deg, stop: 100deg, radius: 1.95, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  arc((3.00, 0.00), start: 109deg, stop: 119.2deg, radius: 1.95, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)

  // Riferimento verticale e arco dell'angolo theta inferiore
  line((3.48, -0.86), (3.48, -2.75), stroke: 0.5pt)
  arc((3.48, -0.86), start: -90deg, stop: -80deg, radius: 1.65, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  arc((3.48, -0.86), start: -71deg, stop: -60.8deg, radius: 1.65, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)

  // 7. ETICHETTE (tutte dentro l'immagine -> ridotte con text(size: 7pt))
  content((-0.08, 1.50), text(size: 7pt)[$bold(a)$], anchor: "south")
  content((-0.08, -1.40), text(size: 7pt)[$bold(a)$], anchor: "south")
  content((-1.78, 0.00), text(size: 7pt)[$h = K_1 dot m$], anchor: "center")
  content((0.55, 0.00), text(size: 7pt)[$bold(y)$], anchor: "west")
  content((1.55, 2.88), text(size: 7pt)[$P$], anchor: "west")
  content((3.15, 2.45), text(size: 7pt)[$F$], anchor: "west")
  content((1.55, 0.22), text(size: 7pt)[$S$], anchor: "south")
  content((2.48, 1.88), text(size: 7pt)[$theta$], anchor: "center")
  content((3.90, -2.42), text(size: 7pt)[$theta$], anchor: "center")
  content((4.62, -2.65), text(size: 7pt)[$P$], anchor: "west")
  content((1.50, -2.42), text(size: 7pt)[$l_0 = K_2 dot m$], anchor: "center")
  content((2.05, -3.02), text(size: 7pt)[$x$], anchor: "south")
})
