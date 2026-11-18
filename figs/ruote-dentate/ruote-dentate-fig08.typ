// Figura estratta da ruote dentate.typ (riga 937) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. RIEMPIMENTI (toni di grigio come nell'immagine)
  // Corpo frontale della ruota e dei due denti (grigio chiaro)
  line(
    (0.30, 0.45),
    (0.30, 3.30),
    (0.52, 3.95),
    (0.90, 4.58),
    (1.65, 4.55),
    (2.05, 3.85),
    (2.22, 3.16),
    (2.35, 1.60),
    (3.45, 1.40),
    (3.98, 2.84),
    (4.65, 4.10),
    (5.40, 3.92),
    (5.65, 2.95),
    (5.75, 1.00),
    (6.60, 0.72),
    (6.15, -0.05),
    (5.30, -0.35),
    (4.10, -0.20),
    (3.20, -0.30),
    (2.10, 0.15),
    (1.10, 0.25),
    close: true,
    fill: gray.transparentize(65%),
    stroke: none
  )

  // Superficie di testa dente 1 (molto chiara)
  line(
    (0.90, 4.58), (1.65, 4.55), (3.29, 6.19), (2.54, 6.22),
    close: true,
    fill: gray.transparentize(85%),
    stroke: none
  )

  // Fianco destro dente 1 (grigio medio)
  line(
    (1.65, 4.55), (2.05, 3.85), (2.22, 3.16), (2.35, 1.60),
    (3.99, 3.24), (3.86, 4.80), (3.69, 5.49), (3.29, 6.19),
    close: true,
    fill: gray.transparentize(50%),
    stroke: none
  )

  // Fondo vano 1 (grigio medio-chiaro)
  line(
    (2.35, 1.60), (3.45, 1.40), (5.09, 3.04), (3.99, 3.24),
    close: true,
    fill: gray.transparentize(60%),
    stroke: none
  )

  // Superficie di testa dente 2 (molto chiara)
  line(
    (4.65, 4.10), (5.40, 3.92), (7.04, 5.56), (6.29, 5.74),
    close: true,
    fill: gray.transparentize(85%),
    stroke: none
  )

  // Fianco destro dente 2 (grigio medio)
  line(
    (5.40, 3.92), (5.65, 2.95), (5.75, 1.00),
    (7.39, 2.64), (7.29, 4.59), (7.04, 5.56),
    close: true,
    fill: gray.transparentize(50%),
    stroke: none
  )

  line(
    (5.75, 1.00), (6.60, 0.72), (8.24, 2.36), (7.39, 2.64),
    close: true,
    fill: gray.transparentize(55%),
    stroke: none
  )

  // 2. CONTORNI DEI DENTI E DEL CORPO
  // Dente 1 - profilo frontale
  bezier((0.30, 3.10), (0.90, 4.58), (0.45, 3.75), (0.68, 4.25), stroke: 0.8pt)
  line((0.90, 4.58), (1.65, 4.55), stroke: 0.8pt)
  bezier((1.65, 4.55), (2.35, 1.60), (2.08, 3.85), (2.28, 2.40), stroke: 0.8pt + white)

  // Dente 1 - spigoli di profondita e profili posteriori
  line((0.90, 4.58), (2.54, 6.22), stroke: 0.8pt)
  line((1.65, 4.55), (3.29, 6.19), stroke: 0.6pt + gray)
  line((2.54, 6.22), (3.29, 6.19), stroke: 0.8pt)
  bezier((3.29, 6.19), (3.99, 3.24), (3.72, 5.49), (3.92, 4.04), stroke: 0.8pt)
  line((3.99, 3.24), (4.22, 3.19), stroke: 0.8pt)

  // Vano tra Dente 1 e Dente 2
  bezier((2.35, 1.60), (3.45, 1.40), (2.70, 1.52), (3.10, 1.46), stroke: 0.6pt + gray)

  // Dente 2 - profilo frontale
  bezier((3.45, 1.40), (4.65, 4.10), (3.72, 2.45), (4.20, 3.50), stroke: 0.8pt)
  line((4.65, 4.10), (5.40, 3.92), stroke: 0.8pt)
  bezier((5.40, 3.92), (5.75, 1.00), (5.68, 3.05), (5.74, 1.85), stroke: 0.8pt + white)

  // Dente 2 - spigoli di profondita e profili posteriori
  line((4.65, 4.10), (6.29, 5.74), stroke: 0.8pt)
  line((5.40, 3.92), (7.04, 5.56), stroke: 0.6pt + gray)
  line((6.29, 5.74), (7.04, 5.56), stroke: 0.8pt)
  bezier((7.04, 5.56), (7.39, 2.64), (7.32, 4.69), (7.38, 3.49), stroke: 0.8pt)
  line((7.39, 2.64), (8.24, 2.36), stroke: 0.8pt)

  // Tratteggio curvo dei raccordi al piede (Dente 1)
  arc((2.45, 1.72), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((2.57, 1.84), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((2.69, 1.96), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((2.81, 2.08), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((2.93, 2.20), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.05, 2.32), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.17, 2.44), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.29, 2.56), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.41, 2.68), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.53, 2.80), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.65, 2.92), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.77, 3.04), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((3.89, 3.16), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))

  // Tratteggio curvo dei raccordi al piede (Dente 2)
  arc((5.85, 1.12), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((5.97, 1.24), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.09, 1.36), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.21, 1.48), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.33, 1.60), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.45, 1.72), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.57, 1.84), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.69, 1.96), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.81, 2.08), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((6.93, 2.20), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((7.05, 2.32), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((7.17, 2.44), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))
  arc((7.29, 2.56), start: 200deg, stop: 310deg, radius: 0.14, anchor: "origin", stroke: 0.5pt + gray.darken(30%))

  // 3. ARCHI DELLE CIRCONFERENZE (tratto-punto / tratteggiati)
  // Circonferenza di testa (R = 18.6, centro (0.5, -14.0))
  arc((0.5, -14.0), start: 72.5deg, stop: 90.8deg, radius: 18.6, anchor: "origin", stroke: (dash: "loosely-dashed", thickness: 0.6pt))

  // Cerchio primitivo (R = 17.3, centro (0.5, -14.0))
  arc((0.5, -14.0), start: 69.5deg, stop: 90.8deg, radius: 17.3, anchor: "origin", stroke: (dash: "loosely-dashed", thickness: 0.6pt))

  // Circonferenza del gioco (R = 16.0, centro (0.5, -14.0))
  arc((0.5, -14.0), start: 70.0deg, stop: 90.8deg, radius: 16.0, anchor: "origin", stroke: (dash: "loosely-dashed", thickness: 0.6pt))

  // Circonferenza di piede (R = 15.7, centro (0.5, -14.0))
  arc((0.5, -14.0), start: 70.0deg, stop: 90.8deg, radius: 15.7, anchor: "origin", stroke: (dash: "loosely-dashed", thickness: 0.6pt))

  // Linee di costruzione sulla superficie primitiva dei fianchi (a 45 gradi)
  line((2.15, 3.10), (4.05, 5.00), stroke: (dash: "loosely-dashed", thickness: 0.6pt))
  line((5.60, 2.55), (7.60, 4.55), stroke: (dash: "loosely-dashed", thickness: 0.6pt))

  // 4. QUOTE E FRECCE DI RIFERIMENTO
  // Quota: Larghezza di dentatura
  line((0.90, 4.68), (0.90, 5.30), stroke: 0.6pt)
  line((2.54, 6.32), (2.54, 7.00), stroke: 0.6pt)
  line((0.90, 5.10), (1.35, 5.55), stroke: 0.6pt)
  line((2.05, 6.25), (2.54, 6.74), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Superficie di testa
  line((3.35, 6.65), (2.70, 5.95), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Circonferenza di testa
  line((4.50, 4.75), (4.30, 4.22), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Faccia
  line((7.65, 5.15), (6.85, 4.75), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Fianco
  line((7.65, 3.60), (6.85, 3.20), mark: (end: ">"), stroke: 0.6pt)

  // Linee di riferimento verticali/radiali per Passo circolare, Spessore del dente, Larghezza del vano
  line((0.40, 3.15), (0.40, 3.90), stroke: 0.6pt)
  line((0.40, 3.15), (0.40, 2.60), stroke: 0.6pt)
  line((2.18, 3.15), (2.18, 2.55), stroke: 0.6pt)
  line((3.98, 2.84), (3.98, 3.55), stroke: 0.6pt)
  line((3.98, 2.84), (3.98, 2.25), stroke: 0.6pt)

  // Frecce: Passo circolare
  line((1.00, 3.70), (0.40, 3.72), mark: (end: ">"), stroke: 0.6pt)
  bezier((1.95, 3.68), (3.98, 3.40), (2.65, 3.65), (3.30, 3.55), mark: (end: ">"), stroke: 0.6pt)

  // Frecce: Spessore del dente
  line((0.80, 2.75), (0.40, 2.75), mark: (end: ">"), stroke: 0.6pt)
  line((1.80, 2.75), (2.18, 2.75), mark: (end: ">"), stroke: 0.6pt)

  // Frecce: Larghezza del vano
  bezier((3.98, 2.48), (2.18, 2.72), (3.40, 2.58), (2.80, 2.66), mark: ( start: ">", end: ">"), stroke: 0.6pt)
  bezier((3.45, 2.60), (4.30, 2.45), (3.75, 2.95), (4.10, 2.80), stroke: 0.6pt)

  // Frecce: Gioco
  line((1.30, 2.35), (1.30, 2.02), mark: (end: ">"), stroke: 0.6pt)
  line((1.30, 1.35), (1.30, 1.68), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Raccordo al piede
  line((2.35, 1.25), (2.52, 1.68), mark: (end: ">"), stroke: 0.6pt)

  // Linea profilo vano centrale (indicazione fondo)
  bezier((4.05, 3.20), (3.35, 1.40), (3.75, 2.45), (3.65, 1.50), stroke: 0.6pt)

  // Freccia: Circonferenza di piede
  line((3.80, 0.85), (3.90, 1.38), mark: (end: ">"), stroke: 0.6pt)

  // Freccia: Circonferenza del gioco
  line((5.10, 0.85), (5.20, 1.40), mark: (end: ">"), stroke: 0.6pt)

  // 5. ETICHETTE (tutte con text(size: 7pt))
  content((1.75, 5.95), text(size: 7pt)[Larghezza di], anchor: "south")
  content((1.95, 5.60), text(size: 7pt)[dentatura], anchor: "south")

  content((2.70, 6.75), text(size: 7pt)[Superficie di testa], anchor: "west")

  content((4.25, 5.15), text(size: 7pt)[Circonferenza], anchor: "west")
  content((4.25, 4.85), text(size: 7pt)[di testa], anchor: "west")

  content((7.70, 5.20), text(size: 7pt)[Faccia], anchor: "west")
  content((7.70, 3.65), text(size: 7pt)[Fianco], anchor: "west")

  content((1.45, 3.85), text(size: 7pt)[Passo], anchor: "center")
  content((1.45, 3.55), text(size: 7pt)[circolare], anchor: "center")

  content((4.10, 3.05), text(size: 7pt)[Cerchio primitivo], anchor: "west")

  content((1.30, 2.85), text(size: 7pt)[Spessore], anchor: "center")
  content((1.30, 2.55), text(size: 7pt)[del dente], anchor: "center")

  content((4.20, 2.25), text(size: 7pt)[Larghezza del], anchor: "west")
  content((4.20, 1.95), text(size: 7pt)[vano], anchor: "west")

  content((1.20, 1.05), text(size: 7pt)[Gioco], anchor: "center")

  content((2.35, 1.05), text(size: 7pt)[Raccordo al], anchor: "center")
  content((2.15, 0.75), text(size: 7pt)[piede], anchor: "center")

  content((3.80, 0.65), text(size: 7pt)[Circonferenza], anchor: "center")
  content((3.55, 0.35), text(size: 7pt)[di piede], anchor: "center")

  content((5.25, 0.65), text(size: 7pt)[Circonferenza], anchor: "center")
  content((5.10, 0.35), text(size: 7pt)[del gioco], anchor: "center")

  content((6.95, 1.85), text(size: 7pt)[Superficie di], anchor: "center")
  content((7.15, 1.50), text(size: 7pt)[piede], anchor: "center")
})
