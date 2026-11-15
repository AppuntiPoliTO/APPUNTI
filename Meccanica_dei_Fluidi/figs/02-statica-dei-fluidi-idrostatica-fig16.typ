// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 1136) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.8cm, {
  import draw: *
  
  // Superfici fittizie (tratteggiate)
  line((1.5, 1), (1.5, 6.5), stroke: (paint: c-aux, dash: "dashed", thickness: 1pt))
  line((1.5, 6.5), (7, 6.5), stroke: (paint: c-aux, dash: "dashed", thickness: 1pt))
  
  // Superfici reali (continue)
  // Fondo orizzontale
  line((1.5, 1), (2.5, 1), stroke: 1pt)
  // Curva inferiore
  bezier((2.5, 1), (4.5, 3), (3.5, 1), (4, 2.5), stroke: 1pt)
  // Curva superiore
  bezier((4.5, 3), (7, 6.5), (5, 3.5), (7, 4.5), stroke: 1pt)
  
  // Polo dei momenti (baricentro del volume di controllo)
  circle((4, 4.5), radius: 0.07, fill: c-geo)
  
  
  // --- FORZE E BRACCI ---
  
  // Forza Pi_1 (spinta superiore)
  line((5.5, 7.5), (5.5, 6.5), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((5.9, 7.5), text(c-forza)[$arrow(Pi)_1$])
  // Linea di azione e braccio b_1 (rosso)
  line((5.5, 6.5), (5.5, 4.5), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((4, 4.5), (5.5, 4.5), stroke: (paint: c-norm, thickness: 0.6pt))
  content((4.8, 4.8), text(fill: c-norm)[$b_1$])
  
  // Forza Pi_2 (spinta sinistra)
  line((0.3, 2.0), (1.5, 2.0), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((0.5, 2.5), text(c-forza)[$arrow(Pi)_2$])
  // Linea di azione e braccio b_2 (verde)
  line((1.5, 2.0), (4, 2.0), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((4, 4.5), (4, 2.0), stroke: (paint: c-norm, thickness: 0.6pt))
  content((3.6, 3.0), text(fill: c-norm)[$b_2$])
  content((3.6, 4.7), text(fill: c-norm)[$b_0$])
  // Forza Pi_0 (reazione parete) applicata sul flesso (4.5, 3)
  line((6.0, 1.5), (4.5, 3.0), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((6.2, 1.2), text(c-forza)[$arrow(Pi)_0$])
  line((4.5, 3.0), (3, 4.5), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((3, 4.5), (3, 5.5), mark: (end: "stealth", fill: c-norm), stroke: (paint: c-norm, thickness: 0.8pt))
  line((3.0, 4.5),(4, 4.5), stroke: (paint: c-norm, thickness: 0.8pt))
  // Forza peso G: passa per il polo, braccio nullo
  line((4, 4.5), (4, 3.5), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((4.4, 4), text(c-forza)[$arrow(G)$])
})
