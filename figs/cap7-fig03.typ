// Figura estratta da capitoli/cap7.typ (riga 349) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1cm, {
import draw: *

// Riempimento leggero delle sezioni trasversali di ingresso e uscita
circle((1.40, 2.00), radius: (0.28, 1.15), fill: c-aux.transparentize(93%), stroke: none)
circle((6.80, 2.00), radius: (0.11, 0.42), fill: c-aux.transparentize(93%), stroke: none)

// Profilo della condotta convergente (cilindro + raccordo simmetrico)
line((1.40, 3.15), (3.80, 3.15), stroke: 1.1pt)
line((1.40, 0.85), (3.80, 0.85), stroke: 1.1pt)
bezier((3.80, 3.15), (6.80, 2.42), (4.90, 3.15), (5.70, 2.42), stroke: 1.1pt)
bezier((3.80, 0.85), (6.80, 1.58), (4.90, 0.85), (5.70, 1.58), stroke: 1.1pt)

// Sezione d'ingresso S1 (interamente visibile)
circle((1.40, 2.00), radius: (0.28, 1.15), stroke: (paint: c-norm, thickness: 0.95pt))
content((1.74, 1.06), text(size: 8.5pt, fill: c-norm)[$S_1$], anchor: "west")

// Sezione d'uscita S2 (arco posteriore tratteggiato, anteriore pieno)
arc((6.80, 2.00), start: 90deg, stop: 270deg, radius: (0.11, 0.42), anchor: "origin", stroke: (paint: c-norm, dash: "dashed", thickness: 0.75pt))
arc((6.80, 2.00), start: -90deg, stop: 90deg, radius: (0.11, 0.42), anchor: "origin", stroke: (paint: c-norm, thickness: 0.95pt))
content((6.62, 1.40), text(size: 8.5pt, fill: c-norm)[$S_2$], anchor: "north-east")

// Flusso in ingresso e in uscita (U_1, p_1 ; U_2, p_2) e portata Q
line((0.65, 2.00), (2.30, 2.00), mark: (end: ">"), stroke: (paint: c-vel, thickness: 1pt))
content((1.82, 2.12), text(size: 8pt, fill: c-vel)[$U_1, p_1$], anchor: "south-west")

line((6.25, 2.00), (7.80, 2.00), mark: (end: ">"), stroke: (paint: c-vel, thickness: 1pt))
content((7.08, 2.12), text(size: 8pt, fill: c-vel)[$U_2, p_2$], anchor: "south-west")

content((3.55, 2.00), text(size: 9.5pt)[$Q$], anchor: "center")

// Versori normali uscenti sulle sezioni (blu) e sulla parete (rosso)
line((1.40, 2.55), (0.75, 2.55), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.85pt))
content((0.95, 2.66), text(size: 8pt, fill: c-norm)[$arrow(n)$], anchor: "south")

line((6.80, 1.76), (7.38, 1.76), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.85pt))
content((7.14, 1.64), text(size: 8pt, fill: c-norm)[$arrow(n)$], anchor: "north")

line((5.30, 2.785), (5.551, 3.438), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.95pt))
content((5.63, 3.43), text(size: 8.5pt, fill: c-norm)[$arrow(n)_w$], anchor: "west")
})
