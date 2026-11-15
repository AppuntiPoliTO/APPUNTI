// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 1057) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.6cm, {
  import draw: *
  
  // CONTORNO PRINCIPALE CONTINUO
  // Parete sinistra
  line((0, 7), (0, 0), stroke: 1pt)
  // Curva a S (metà inferiore, parte orizzontale)
  bezier((0, 0), (2.5, 1.75), (1.3, 0), (1.5, 0.8), stroke: 1pt)
  // Curva a S (metà superiore, arriva verticale alla parete)
  bezier((2.5, 1.75), (5, 3.5), (3.5, 2.7), (5, 2.5), stroke: 1pt)
  // Parete destra superiore
  line((5, 3.5), (5, 7), stroke: 1pt)
  
  // ELEMENTI INTERNI E SUPERFICIE
  // Pelo libero / PCI (linea tratteggiata superiore)
  line((0, 7), (5, 7), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  // Linea di separazione tra volume V1 e V2
  line((0, 3.5), (5, 3.5), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  // Trattino verticale al centro della linea di separazione
  line((2.5, 3.4), (2.5, 3.6), stroke: 1pt)
  
  // SIMBOLO DEL PELO LIBERO
  line((2.3, 7.3), (2.7, 7.3), (2.5, 7.0), close: true, stroke: 0.8pt + c-norm)
  
  // ETICHETTE VOLUMI
  content((3.0, 5.25), [$V_1$])
  content((1.5, 2.0), [$V_2$])
  
  // QUOTE E RIFERIMENTI
  // Quota b (larghezza base)
  line((0, 0), (0, -1.2), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((5, 1.5), (5, -1.2), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt)) // Estensione dal profilo destro
  line((0, -0.8), (2.2, -0.8), mark: (start: "stealth", fill: c-geo), stroke: 0.6pt)
  line((2.8, -0.8), (5, -0.8), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((2.5, -0.8), [$b$])
  
  // Quota a (altezza inferiore, lato sinistro)
  content((-0.4, 1.75), [$a$])
  
  // Quota (h-a) (altezza superiore, lato sinistro)
  content((-1.2, 5.25), [$(h-a)$])
  line((-1.2, 5.7), (-1.2, 6.8), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((-1.2, 4.8), (-1.2, 3.7), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  
  // Quota h (altezza totale, lato destro)
  line((6, 0), (6, 7), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((6.4, 3.5), [$h$])
})
