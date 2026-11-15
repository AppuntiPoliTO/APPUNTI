// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 562) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.7cm, {
  import draw: *
  
  // Linee di riferimento orizzontali (tratteggiate)
  line((0, 6), (9.6, 6), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt)) // Pelo libero
  line((6, 4), (9.6, 4), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt)) // Quota superiore piastra
  line((0, 1), (3, 1), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt)) // Quota inferiore piastra
  
  // Superficie inclinata principale
  line((1, -1), (8.5, 6.5), stroke: 1pt)
  
  // Tratteggio della distribuzione di pressione (linee grigie perpendicolari)
  line((3.3, 1.3), (1.42, 3.18), stroke: 0.5pt + c-forza)
  line((3.6, 1.6), (1.84, 3.36), stroke: 0.5pt + c-forza)
  line((3.9, 1.9), (2.26, 3.54), stroke: 0.5pt + c-forza)
  line((4.2, 2.2), (2.68, 3.72), stroke: 0.5pt + c-forza)
  line((4.5, 2.5), (3.10, 3.90), stroke: 0.5pt + c-forza)
  line((4.8, 2.8), (3.52, 4.08), stroke: 0.5pt + c-forza)
  line((5.1, 3.1), (3.94, 4.26), stroke: 0.5pt + c-forza)
  line((5.4, 3.4), (4.36, 4.44), stroke: 0.5pt + c-forza)
  line((5.7, 3.7), (4.78, 4.62), stroke: 0.5pt + c-forza)
  
  // Contorno del trapezio delle pressioni
  line((3, 1), (1.0, 3.0), stroke: 1pt + c-forza) // Base inferiore
  line((6, 4), (5.2, 4.8), stroke: 1pt + c-forza) // Base superiore
  line((1.0, 3.0), (5.2, 4.8), stroke: (paint: c-forza, dash: "dashed", thickness: 1pt)) // Lato esterno
  
  // Punti notevoli
  circle((8, 6), radius: 0.06, fill: c-geo) // Origine
  circle((4.5, 2.5), radius: 0.06, fill: c-geo) // G
  circle((4.0, 2.0), radius: 0.06, fill: c-geo) // C
  
  // Vettore Spinta S (blu)
  line((2.5, 3.5), (4.0, 2.0), mark: (end: "stealth", fill: c-forza), stroke: (paint: c-forza, thickness: 1.4pt))
  
  // Linee di quota verticali (h1, h2)
  line((9.4, 6), (9.4, 4), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((0.5, 6), (0.5, 1), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  
  // Linee di riferimento perpendicolari per xG e xC
  line((8, 6), (9.2, 4.8), stroke: 0.6pt)
  line((4.5, 2.5), (5.18, 1.82), stroke: 0.6pt)
  line((4.0, 2.0), (5.28, 0.72), stroke: 0.6pt)
  
  // Linee di quota parallele (xG, xC)
  line((8.6, 5.4), (5.1, 1.9), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((9.2, 4.8), (5.2, 0.8), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  
  // Angolo alpha
  arc((8, 6), start: 180deg, stop: 225deg, radius: 1.2, anchor: "origin", stroke: 0.6pt)
  
  // Etichette di testo
  content((9.7, 5.0), [$h_1$])
  content((0.9, 3.9), [$h_2$])
  content((6.0, 4.7), text(c-forza)[$h_1 gamma$]) 
  content((1.6, 1.8), text(c-forza)[$h_2 gamma$])
  content((4.2, 2.8), [$G$])
  content((3.5, 1.9), text(c-geo)[$C$])
  content((3.0, 2.5), text(c-forza)[$arrow(S)$])
  content((6.1, 3.4), [$x_G$])
  content((7.2, 3.2), [$x_C$])
  content((6.5, 5.5), [$alpha$])
})
