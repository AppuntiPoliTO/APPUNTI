// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 1285) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.85cm, {
  import draw: *


  line((0.80, 3.70), (0.80, 6.20), stroke: (paint: c-aux, thickness: 0.6pt))
  // Proiezione destra (continua)
  line((5.80, 2.20), (5.80, 6.20), stroke: (paint: c-aux, thickness: 0.6pt))

  // 3. CONTORNO DEL CORPO IMMERSO (6 BEZIER C1-CONTINUI)
  bezier((0.80, 3.70), (3.40, 4.50), (0.80, 4.45), (2.00, 4.50), stroke: 1pt + c-geo)
  bezier((3.40, 4.50), (5.25, 3.40), (4.60, 4.50), (5.10, 4.00), stroke: 1pt + c-geo)
  bezier((5.25, 3.40), (5.80, 2.20), (5.40, 2.80), (5.80, 2.65), stroke: 1pt + c-geo)
  bezier((5.80, 2.20), (3.60, 1.30), (5.80, 1.50), (4.80, 1.30), stroke: 1pt + c-geo)
  bezier((3.60, 1.30), (1.65, 2.75), (2.30, 1.30), (2.05, 2.20), stroke: 1pt + c-geo)
  bezier((1.65, 2.75), (0.80, 3.70), (1.25, 3.30), (0.80, 3.25), stroke: 1pt + c-geo)

  // 4. PIANO DEI CARICHI IDROSTATICI (p.c.i.) E SIMBOLO PELO LIBERO
  line((0.10, 6.20), (7.40, 6.20), stroke: 1pt + c-norm)
  // Triangolo pelo libero
  line((1.50, 6.20), (1.30, 6.45), (1.70, 6.45), close: true, stroke: 0.8pt + c-norm)
  // Lineette sotto il pelo libero
  line((1.32, 5.98), (1.62, 5.98), stroke: 0.8pt + c-norm)
  line((1.42, 5.86), (1.55, 5.86), stroke: 0.8pt + c-norm)

  // 5. DISTRIBUZIONE DI PRESSIONE (FRECCE NERE SUL CONTORNO)
  // Parte superiore (verso il basso)
  line((0.60, 4.45), (0.96, 4.18), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((1.40, 4.88), (1.45, 4.42), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((2.15, 5.02), (2.18, 4.50), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((3.15, 5.02), (3.18, 4.52), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((4.45, 4.90), (4.30, 4.38), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)

  // Fianco destro (verso sinistra / basso-sinistra)
  line((5.85, 4.10), (5.12, 3.82), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((5.78, 3.45), (5.35, 3.22), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((6.15, 2.80), (5.70, 2.62), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)

  // Parte inferiore (verso l'alto / alto-sinistra)
  line((6.20, 1.75), (5.68, 1.85), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((5.22, 1.10), (5.10, 1.52), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((4.42, 0.90), (4.45, 1.34), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((3.50, 0.80), (3.52, 1.28), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((2.60, 0.85), (2.68, 1.40), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((1.72, 1.25), (2.15, 1.58), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)

  // Fianco sinistro (verso alto-destra / destra)
  line((1.38, 1.80), (1.92, 2.18), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((1.18, 2.38), (1.60, 2.68), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((0.62, 2.88), (1.08, 3.15), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)
  line((0.25, 3.60), (0.75, 3.62), mark: (end: "stealth", fill: c-forza), stroke: 0.7pt + c-forza)

  // 6. VETTORI RISULTANTI (DOPPIA LINEA COME NELLO SCHIZZO)
  // F_sopra (verso il basso)
  line((3.57, 5.55), (3.55, 4.58),mark: (end: "stealth", fill: c-forza), stroke: 1.4pt + c-forza)
  

  // F_sotto (verso l'alto)
  line((3.16, 0.25), (3.19, 1.22),mark: (end: "stealth", fill: c-forza), stroke: 1.4pt + c-forza)
  

  // 7. FRECCE INDICATRICI DEI VOLUMI ED ETICHETTE
  // Indicatore rosso per V1
  bezier((6.35, 5.35), (5.40, 4.90), (6.00, 5.20), (5.70, 5.08), stroke: (paint: c-norm, thickness: 0.6pt), mark: (end: "stealth", fill: c-norm))
  content((6.20, 5.65), text(fill: c-norm)[$V_1$], anchor: "west")

  // Indicatore verde per V2
  bezier((1.00, 1.60), (2.20, 2.45), (1.35, 2.00), (1.80, 2.30), stroke: (paint: c-aux, thickness: 0.6pt), mark: (end: "stealth", fill: c-aux))
  content((0.35, 1.60), text(fill: c-aux)[$V_2$], anchor: "west")

  // Etichetta p.c.i.
  content((6.00, 6.55), text(fill: c-geo)[p.c.i], anchor: "west")

  // Etichetta F_sopra
  content((3.95, 5.45), text(fill: c-forza)[$arrow(F)_"sopra"$], anchor: "west")

  // Etichetta F_sotto
  content((3.35, 0.28), text(fill: c-forza)[$arrow(F)_"sotto"$], anchor: "west")
})
