// Figura estratta da ruote dentate.typ (riga 2483) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // 1. RIEMPIMENTO DEL DENTE (poligono chiuso con contorno inferiore ondulato come nell'immagine)
  line(
    (-0.46, 4.27), (0.46, 4.27),
    (0.96, 3.68), (1.35, 2.98), (1.61, 2.20), (1.72, 1.40), (1.66, 0.54),
    (1.65, 0.28), (1.73, 0.00), (1.92, -0.26), (2.18, -0.44), (2.49, -0.52),
    (2.38, -0.88), (2.05, -1.16), (1.42, -1.35), (0.72, -1.38), (0.00, -1.30),
    (-0.68, -1.46), (-1.28, -1.42), (-1.92, -1.20), (-2.35, -0.88), (-2.49, -0.52),
    (-2.18, -0.44), (-1.92, -0.26), (-1.73, 0.00), (-1.65, 0.28), (-1.66, 0.54),
    (-1.72, 1.40), (-1.61, 2.20), (-1.35, 2.98), (-0.96, 3.68),
    close: true,
    fill: black.transparentize(82%),
    stroke: none
  )

  // 2. CONTORNO DEL DENTE (linea e archi di cerchio raccordati con continuità C1)
  // Cresta superiore
  line((-0.46, 4.27), (0.46, 4.27), stroke: 1.3pt)
  // Fianco destro e fianco sinistro
  arc((-2.48, 1.27), start: -10deg, stop: 45.5deg, radius: 4.20, anchor: "origin", stroke: 1.3pt)
  arc((2.48, 1.27), start: 134.5deg, stop: 190deg, radius: 4.20, anchor: "origin", stroke: 1.3pt)
  // Raccordo di piede destro e sinistro (r_f)
  arc((2.55, 0.38), start: 170deg, stop: 266deg, radius: 0.90, anchor: "origin", stroke: 1.3pt)
  arc((-2.55, 0.38), start: 274deg, stop: 370deg, radius: 0.90, anchor: "origin", stroke: 1.3pt)

  // 3. ASSE DI SIMMETRIA E CIRCONFERENZA PRIMITIVA
  line((0.00, -1.85), (0.00, 4.45), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  arc((0.00, -8.34), start: 74.4deg, stop: 107.8deg, radius: 10.22, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))

  // 4. LINEE DI COSTRUZIONE DEL TRIANGOLO DI LEWIS
  line((0.00, 4.00), (-1.95, -0.63), stroke: 0.6pt)
  line((0.00, 4.00), (1.95, -0.64), stroke: 0.6pt)
  line((1.68, 0.00), (0.00, -0.71), stroke: 0.6pt)

  // 5. RETTANGOLO TRATTEGGIATO E VETTORI DELLE FORZE
  line((0.00, 5.25), (3.12, 5.25), stroke: (dash: "dashed", thickness: 0.6pt))
  line((3.12, 5.25), (3.12, 4.00), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.00, 5.25), (0.00, 4.18), mark: (end: ">"), stroke: 1.6pt)
  line((3.12, 4.00), (0.18, 4.00), mark: (end: ">"), stroke: 1.6pt)
  line((3.12, 5.25), (0.16, 4.07), mark: (end: ">"), stroke: 1.6pt)

  // 6. QUOTE E LINEE DI RIFERIMENTO
  // Linee orizzontali di riferimento per le quote l e x
  line((-0.75, 0.00), (0.30, 0.00), stroke: 0.6pt)
  line((0.45, 0.00), (2.70, 0.00), stroke: 0.6pt)
  line((-0.75, -0.71), (-0.08, -0.71), stroke: 0.6pt)

  // Quota verticale l
  line((2.34, 2.25), (2.34, 4.00), mark: (end: ">"), stroke: 0.6pt)
  line((2.34, 1.75), (2.34, 0.00), mark: (end: ">"), stroke: 0.6pt)

  // Quota verticale x
  line((-0.60, 0.45), (-0.60, 0.00), mark: (end: ">"), stroke: 0.6pt)
  line((-0.60, -1.16), (-0.60, -0.71), mark: (end: ">"), stroke: 0.6pt)

  // Linee verticali di riferimento e frecce per la quota t
  line((-1.72, 0.00), (-1.72, -1.45), stroke: 0.6pt)
  line((1.68, 0.00), (1.68, -1.45), stroke: 0.6pt)
  line((0.32, -1.25), (-1.72, -1.25), mark: (end: ">"), stroke: 0.6pt)
  line((0.64, -1.25), (1.68, -1.25), mark: (end: ">"), stroke: 0.6pt)

  // Freccia del raggio di raccordo r_f
  line((-2.90, 0.72), (-1.84, -0.15), mark: (end: ">"), stroke: 0.6pt)

  // 7. PUNTI DI TANGENZA E DI APPLICAZIONE (cerchi verdi con bordo nero)
  circle((0.00, 4.00), radius: 0.17, fill: green.transparentize(25%), stroke: 0.8pt)
  circle((-1.62, 0.12), radius: 0.17, fill: green.transparentize(25%), stroke: 0.8pt)
  circle((1.68, 0.02), radius: 0.17, fill: green.transparentize(25%), stroke: 0.8pt)

  // 8. ETICHETTE (tutte dentro l'immagine -> ridotte con text(size: 12pt))
  content((-0.42, 4.95), text(size: 12pt)[$"F"_"r"$], anchor: "east")
  content((3.35, 5.25), text(size: 12pt)[$"F"$], anchor: "west")
  content((1.75, 3.55), text(size: 12pt)[$"F"_"t"$], anchor: "north")
  content((2.34, 2.00), text(size: 12pt)[$l$], anchor: "center")
  content((1.86, 0.22), text(size: 12pt)[$a$], anchor: "south")
  content((-2.95, 0.78), text(size: 12pt)[$r_f$], anchor: "east")
  content((-0.60, -0.35), text(size: 12pt)[$x$], anchor: "center")
  content((0.48, -1.25), text(size: 12pt)[$t$], anchor: "center")
})
