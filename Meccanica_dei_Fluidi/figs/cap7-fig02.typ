// Figura estratta da capitoli/cap7.typ (riga 227) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1cm, {
import draw: *

// Riempimento leggero della sezione di ingresso
circle((1.80, 2.30), radius: (0.40, 1.10), fill: c-fluido, stroke: none)

// Asse x (linea tratto-punto)
line((1.10, 2.30), (7.40, 2.30), mark: (end: ">"), stroke: (paint: c-aux, dash: "dash-dotted", thickness: 0.75pt))
content((7.55, 2.30), text(size: 8.5pt)[$x$], anchor: "west")

// Generatrici del cilindro orizzontale
line((1.80, 3.40), (6.40, 3.40), stroke: 1.15pt)
line((1.80, 1.20), (6.40, 1.20), stroke: 1.15pt)

// Sezioni circolari in prospettiva S1 ed S2
circle((1.80, 2.30), radius: (0.40, 1.10), stroke: (paint: c-norm, thickness: 1pt))
circle((6.40, 2.30), radius: (0.40, 1.10), stroke: (paint: c-norm, thickness: 1pt))
content((1.80, 3.52), text(size: 8.5pt, fill: c-norm)[$S_1$], anchor: "south")
content((6.40, 3.52), text(size: 8.5pt, fill: c-norm)[$S_2$], anchor: "south")

// Raggio R
line((1.80, 2.30), (1.80, 3.40), mark: (end: ">"), stroke: 0.9pt)
content((1.90, 2.82), text(size: 8pt)[$R$], anchor: "west")

// Pressioni p1 e p2
line((0.85, 2.65), (1.68, 2.65), mark: (end: ">"), stroke: (paint: c-forza, thickness: 1.05pt))
content((0.76, 2.75), text(size: 8.5pt, fill: c-forza)[$p_1$], anchor: "east")

line((7.35, 2.65), (6.52, 2.65), mark: (end: ">"), stroke: (paint: c-forza, thickness: 1.05pt))
content((7.44, 2.75), text(size: 8.5pt, fill: c-forza)[$p_2$], anchor: "west")

// Versori normali uscenti su S1, S2 e sulla parete Sw
line((1.80, 1.75), (1.05, 1.75), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.95pt))
content((0.97, 1.75), text(size: 8pt, fill: c-norm)[$arrow(n)_1$], anchor: "east")

line((6.40, 1.75), (7.15, 1.75), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.95pt))
content((7.23, 1.75), text(size: 8pt, fill: c-norm)[$arrow(n)_2$], anchor: "west")

line((4.10, 3.40), (4.10, 4.08), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.95pt))
content((4.22, 3.80), text(size: 8pt, fill: c-norm)[$arrow(n)_w$], anchor: "west")

// Sforzi tangenziali alla parete tau_w
line((4.90, 3.12), (3.30, 3.12), mark: (end: ">"), stroke: (paint: c-forza, thickness: 1.05pt))
content((4.10, 2.98), text(size: 8.5pt, fill: c-forza)[$tau_w$], anchor: "north")

line((4.90, 1.48), (3.30, 1.48), mark: (end: ">"), stroke: (paint: c-forza, thickness: 1.05pt))
content((4.10, 1.62), text(size: 8.5pt, fill: c-forza)[$tau_w$], anchor: "south")

// Quota lunghezza L
line((1.80, 1.05), (1.80, 0.55), stroke: (paint: c-aux, thickness: 0.6pt))
line((6.40, 1.05), (6.40, 0.55), stroke: (paint: c-aux, thickness: 0.6pt))
line((1.80, 0.78), (6.40, 0.78), mark: (start: ">", end: ">"), stroke: 0.9pt)
content((4.10, 0.62), text(size: 8.5pt)[$L$], anchor: "north")
})
