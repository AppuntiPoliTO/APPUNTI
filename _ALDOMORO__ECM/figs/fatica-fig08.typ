// Figura estratta da fatica.typ (riga 475) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.3cm, {
import draw: *

// 1. RIEMPIMENTI (zona di rottura finale campita in grigio chiaro per rendere il retino denso)
line(
  (-1.82, 0.15), (-1.75, 0.45), (-1.52, 0.72), (-1.15, 0.96), (-0.65, 1.12),
  (-0.10, 1.18), (0.45, 1.12), (0.92, 0.96), (1.12, 0.72),
  (0.75, 0.82), (0.25, 0.80), (-0.30, 0.65), (-0.82, 0.38), (-1.22, 0.02),
  (-1.42, -0.35), (-1.28, -0.69), (-1.56, -0.30),
  close: true,
  fill: black.transparentize(75%),
  stroke: none
)

// 2. ZONE CON DIVERSA GRANULOSITÀ E LINEE DI SPIAGGIA (archi punteggiati concentrici alla nucleazione)
// Fascia 1 (interna)
arc((1.02, -0.84), start: 62deg, stop: 188deg, radius: (0.46, 0.38), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 62deg, stop: 188deg, radius: (0.52, 0.43), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 62deg, stop: 188deg, radius: (0.58, 0.48), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))

// Fascia 2 (intermedia)
arc((1.02, -0.84), start: 68deg, stop: 192deg, radius: (0.96, 0.82), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 68deg, stop: 192deg, radius: (1.03, 0.88), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 68deg, stop: 192deg, radius: (1.10, 0.94), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 68deg, stop: 192deg, radius: (1.17, 1.00), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 68deg, stop: 192deg, radius: (1.24, 1.06), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))

// Fascia 3 (esterna, più ampia)
arc((1.02, -0.84), start: 70deg, stop: 187deg, radius: (1.58, 1.30), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 77deg, stop: 187deg, radius: (1.65, 1.35), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 78deg, stop: 187deg, radius: (1.72, 1.40), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 79deg, stop: 187deg, radius: (1.79, 1.45), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 80deg, stop: 184deg, radius: (1.86, 1.50), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 82deg, stop: 183deg, radius: (1.93, 1.55), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))
arc((1.02, -0.84), start: 84deg, stop: 182deg, radius: (2.00, 1.60), anchor: "origin", stroke: (dash: "dotted", thickness: 0.7pt))

// 3. BORDI RADIALI (5 nervature sottili che partono dalla zona di nucleazione)
// Bordo radiale 1 (in basso)
bezier((0.80, -0.86), (-0.42, -0.90), (0.35, -0.82), (-0.05, -0.84), stroke: 0.6pt)
bezier((0.80, -0.86), (-0.42, -0.90), (0.35, -0.89), (-0.05, -0.91), stroke: 0.6pt)

// Bordo radiale 2 (medio-basso, indicato dalla freccia)
bezier((0.82, -0.80), (-1.35, -0.25), (0.15, -0.52), (-0.65, -0.32), stroke: 0.6pt)
bezier((0.82, -0.80), (-1.35, -0.25), (0.12, -0.60), (-0.68, -0.40), stroke: 0.6pt)

// Bordo radiale 3 (centrale)
bezier((0.90, -0.72), (-0.50, 0.50), (0.35, -0.28), (-0.22, 0.12), stroke: 0.6pt)
bezier((0.90, -0.72), (-0.50, 0.50), (0.28, -0.34), (-0.28, 0.06), stroke: 0.6pt)

// Bordo radiale 4 (medio-alto)
bezier((1.00, -0.68), (0.76, 0.68), (0.68, -0.18), (0.62, 0.28), stroke: 0.6pt)
bezier((1.00, -0.68), (0.76, 0.68), (0.60, -0.20), (0.54, 0.26), stroke: 0.6pt)

// Bordo radiale 5 (destro)
bezier((1.10, -0.66), (1.45, 0.02), (1.12, -0.36), (1.26, -0.14), stroke: 0.6pt)
bezier((1.10, -0.66), (1.45, 0.02), (1.18, -0.40), (1.32, -0.18), stroke: 0.6pt)

// 4. ZONA DI NUCLEAZIONE
arc((1.02, -0.84), start: 38deg, stop: 196deg, radius: (0.22, 0.16), anchor: "origin", stroke: 0.8pt)

// 5. CONTORNI PRINCIPALI DEL CILINDRO E DELLA SUPERFICIE DI FRATTURA
// Parte anteriore-destra dell'ellisse di frattura (da 202deg a 402deg = 42deg)
arc((0, 0), start: 220deg, stop: 402deg, radius: (1.70, 1.05), anchor: "origin", stroke: 1.2pt)

// Arco esterno superiore della zona di rottura finale (rialzata)
arc((-0.10, 0.13), start: 48deg, stop: 186deg, radius: (1.72, 1.05), anchor: "origin", stroke: 1.2pt)

// Confine interno della zona di rottura finale (bordo di scorrimento a taglio interno)
bezier((-1.28, -0.69), (-1.38, -0.22), (-1.38, -0.52), (-1.42, -0.35), stroke: 1.2pt)
bezier((-1.38, -0.22), (0.82, 0.82), (-1.15, 0.55), (0.15, 0.98), stroke: 1.2pt)
bezier((0.82, 0.82), (1.26, 0.70), (0.98, 0.80), (1.15, 0.76), stroke: 1.2pt)

// Raccordi laterali del bordo di scorrimento a taglio (sinistro e destro)
line((-1.82, 0.15), (-1.28, -0.69), stroke: 1.2pt)
line((1.05, 0.91), (1.26, 0.70), stroke: 1.2pt)

// Pareti verticali e fondo del cilindro
line((-1.82, 0.15), (-1.82, -1.05), stroke: 1.2pt)
line((1.70, 0.00), (1.70, -1.05), stroke: 1.2pt)
arc((-0.06, -1.05), start: 180deg, stop: 360deg, radius: (1.76, 1.05), anchor: "origin", stroke: 1.2pt)

// 6. FRECCE DI RICHIAMO
// Zona di rottura finale
line((-1.45, 1.25), (-0.96, 0.70), mark: (end: ">"), stroke: 0.6pt)

// Bordi di scorrimento a taglio
line((1.58, 1.15), (1.10, 0.82), mark: (end: ">"), stroke: 0.6pt)

// Zone con diversa granulosità (4 frecce dallo stesso vertice)
line((1.88, 0.86), (1.06, 0.66), mark: (end: ">"), stroke: 0.6pt)
line((1.88, 0.86), (1.22, 0.40), mark: (end: ">"), stroke: 0.6pt)
line((1.88, 0.86), (1.40, 0.20), mark: (end: ">"), stroke: 0.6pt)
line((1.88, 0.86), (1.56, 0.05), mark: (end: ">"), stroke: 0.6pt)

// Zona di nucleazione
line((2.08, -1.12), (1.18, -0.82), mark: (end: ">"), stroke: 0.6pt)

// Linee di arresto e di "spiaggia"
line((-3.20, -1.62), (-0.45, -0.68), mark: (end: ">"), stroke: 0.6pt)

// 'Bordi radiali'
line((-2.65, 0.32), (-0.52, -0.40), mark: (end: ">"), stroke: 0.6pt)

// 7. ETICHETTE (tutte interne all'immagine -> text(size: 7pt))
content((-1.05, 1.42), text(size: 7pt)[Zona di rottura finale], anchor: "center")

content((1.62, 1.48), text(size: 7pt)[Bordi di scorrimento], anchor: "west")
content((1.62, 1.16), text(size: 7pt)[a taglio], anchor: "west")

content((2.02, 0.82), text(size: 7pt)[Zone con diversa], anchor: "west")
content((2.02, 0.50), text(size: 7pt)[granulosità], anchor: "west")

content((2.08, -0.86), text(size: 7pt)[Zona di nucleazione], anchor: "west")

content((-4.55, 0.48), text(size: 7pt)[‘Bordi radiali’], anchor: "west")
content((-4.55, 0.16), text(size: 7pt)[(cambiamento], anchor: "west")
content((-4.55, -0.16), text(size: 7pt)[del piano], anchor: "west")
content((-4.55, -0.48), text(size: 7pt)[di propagazione)], anchor: "west")

content((-3.30, -1.92), text(size: 7pt)[Linee di arresto e di], anchor: "center")
content((-3.30, -2.24), text(size: 7pt)[“spiaggia”], anchor: "center")
content((-3.30, -2.56), text(size: 7pt)[(beachmarks)], anchor: "center")
})
