// Figura estratta da cuscinetti.typ (riga 351) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.75cm, {
import draw: *

// =========================================================================
// PANNELLO 1 (SUPERIORE)
// =========================================================================

// Piastra rettangolare grigia
rect((0.00, 0.00), (6.50, 1.32), fill: luma(175), stroke: 0.8pt)

// Sfera con effetto sfumatura radiale (cerchi concentrici)
circle((0.64, 1.98), radius: 0.64, fill: luma(115), stroke: none)
circle((0.63, 1.99), radius: 0.54, fill: luma(145), stroke: none)
circle((0.62, 2.00), radius: 0.44, fill: luma(175), stroke: none)
circle((0.61, 2.01), radius: 0.34, fill: luma(205), stroke: none)
circle((0.60, 2.02), radius: 0.24, fill: luma(230), stroke: none)
circle((0.59, 2.03), radius: 0.14, fill: white, stroke: none)
// Contorno nero della sfera
circle((0.64, 1.98), radius: 0.64, stroke: 0.8pt)

// Due frecce rosse curve di rotazione oraria
arc((0.64, 1.98), start: 15deg, stop: 88deg, radius: 0.45, anchor: "origin", mark: (start: ">", size: 0.16), stroke: (paint: red, thickness: 1.8pt))
arc((0.64, 1.98), start: 195deg, stop: 268deg, radius: 0.45, anchor: "origin", mark: (start: ">", size: 0.16), stroke: (paint: red, thickness: 1.8pt))

// Freccia nera spessa del carico verticale
line((0.64, 3.36), (0.64, 2.75), mark: (end: ">", size: 0.22), stroke: (paint: black, thickness: 2.2pt))


// Fascia sfumata verde/turchese dentro la sfera inferiore (disegnata prima del contorno)
line((2.58, -2.22), (3.72, -2.22), (3.72, -1.70), (2.58, -1.70), close: true, fill: rgb(0, 180, 130).transparentize(75%), stroke: none)
line((2.56, -2.14), (3.74, -2.14), (3.74, -1.78), (2.56, -1.78), close: true, fill: rgb(0, 180, 130).transparentize(55%), stroke: none)
line((2.55, -2.06), (3.75, -2.06), (3.75, -1.86), (2.55, -1.86), close: true, fill: rgb(0, 180, 130).transparentize(30%), stroke: none)

// Maschere bianche esterne per pulire il rettangolo verde fuori dal cerchio della sfera
// (il profilo esatto della sfera è l'arco di raggio 0.60 centrato in (3.15, -1.96) + corda inferiore)
arc((3.15, -1.96), start: -60deg, stop: 240deg, radius: 0.60, anchor: "origin", stroke: 0.8pt)
line((2.85, -2.48), (3.45, -2.48), stroke: 0.8pt)

// Contorno della piastra inferiore con impronta concava centrale
// Tratto sinistro del bordo superiore, parete sinistra, base, parete destra, tratto destro del bordo superiore
line((2.98, -2.86), (0.00, -2.86), (0.00, -4.18), (6.50, -4.18), (6.50, -2.86), (3.32, -2.86), stroke: 0.8pt)
// Arco concavo dell'impronta al centro della pista
arc((3.15, -2.814), start: 219.6deg, stop: 320.4deg, radius: 0.176, anchor: "origin", stroke: 0.8pt)

// Tratteggio obliquo di sezione della piastra inferiore
line((0.00, -3.52), (0.28, -2.86), stroke: 0.6pt)
line((0.00, -4.18), (0.56, -2.86), stroke: 0.6pt)
line((0.48, -4.18), (1.04, -2.86), stroke: 0.6pt)
line((0.96, -4.18), (1.52, -2.86), stroke: 0.6pt)
line((1.44, -4.18), (2.00, -2.86), stroke: 0.6pt)
line((1.92, -4.18), (2.48, -2.86), stroke: 0.6pt)
line((2.40, -4.18), (2.96, -2.86), stroke: 0.6pt)
line((2.88, -4.18), (3.44, -2.86), stroke: 0.6pt)
line((3.36, -4.18), (3.92, -2.86), stroke: 0.6pt)
line((3.84, -4.18), (4.40, -2.86), stroke: 0.6pt)
line((4.32, -4.18), (4.88, -2.86), stroke: 0.6pt)
line((4.80, -4.18), (5.36, -2.86), stroke: 0.6pt)
line((5.28, -4.18), (5.84, -2.86), stroke: 0.6pt)
line((5.76, -4.18), (6.32, -2.86), stroke: 0.6pt)
line((6.24, -4.18), (6.50, -3.57), stroke: 0.6pt)

// Quota rossa superiore del diametro Dw
line((2.55, -1.96), (2.55, -0.82), stroke: (paint: red, thickness: 0.7pt))
line((3.75, -1.96), (3.75, -0.82), stroke: (paint: red, thickness: 0.7pt))
line((2.55, -1.02), (3.75, -1.02), mark: (start: ">", end: ">", size: 0.10), stroke: (paint: red, thickness: 0.6pt))

// Quote rosse a destra per la deformazione plastica permanente
line((3.55, -2.48), (6.18, -2.48), stroke: (paint: red, thickness: 0.7pt))
line((3.50, -3.00), (4.92, -3.00), stroke: (paint: red, thickness: 0.7pt))
// Asta verticale di quota in x = 5.12
line((5.12, -1.92), (5.12, -2.48), stroke: (paint: red, thickness: 0.5pt))
line((5.12, -2.86), (5.12, -2.48), mark: (end: ">", size: 0.09), stroke: (paint: red, thickness: 0.5pt))
line((5.12, -3.38), (5.12, -2.86), mark: (end: ">", size: 0.09), stroke: (paint: red, thickness: 0.5pt))

// Etichette (tutte interne all'immagine -> ridotte con text(size: 7pt))
content((3.15, -0.88), text(size: 7pt)[Dw], anchor: "south")
content((5.75, -1.95), text(size: 7pt)[$D_w / 10000$], anchor: "center")
})
