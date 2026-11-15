// Figura estratta da fatica.typ (riga 1316) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// ==================== GRIGLIA DELLA TABELLA ====================
// Linee orizzontali principali
line((0.0, 2.1), (11.6, 2.1), stroke: 1pt)
line((0.0, 0.0), (11.6, 0.0), stroke: 1pt)

// Linee orizzontali nell'intestazione
line((3.7, 2.75), (7.5, 2.75), stroke: 0.8pt)
line((7.7, 2.75), (11.5, 2.75), stroke: 0.8pt)

// Linee verticali
line((3.6, 0.0), (3.6, 3.3), stroke: 1pt)
line((5.6, 0.0), (5.6, 2.75), stroke: 0.8pt)
line((7.6, 0.0), (7.6, 3.3), stroke: 1pt)
line((9.6, 0.0), (9.6, 2.75), stroke: 0.8pt)
line((11.6, 0.0), (11.6, 3.3), stroke: 1pt)

// ==================== INTESTAZIONI (IN ITALIANO) ====================
content((1.8, 2.65), text(size: 7pt)[MODALITÀ DI CARICO])
content((9.6, 3.02), text(size: 7pt)[effetto d'intaglio elevato])

content((4.6, 2.53), text(size: 7pt)[sforzo])
content((4.6, 2.27), text(size: 7pt)[elevato])
content((6.6, 2.53), text(size: 7pt)[sforzo])
content((6.6, 2.27), text(size: 7pt)[basso])
content((8.6, 2.53), text(size: 7pt)[sforzo])
content((8.6, 2.27), text(size: 7pt)[elevato])
content((10.6, 2.53), text(size: 7pt)[sforzo])
content((10.6, 2.27), text(size: 7pt)[basso])


// Colonna 0: flessione rotante
content((0.2, 1.72), text(size: 7pt)[flessione rotante], anchor: "west")
// Cuscinetti a sinistra
rect((0.6, 0.92), (0.85, 1.17), stroke: 0.8pt)
line((0.6, 0.92), (0.85, 1.17), stroke: 0.6pt)
line((0.6, 1.17), (0.85, 0.92), stroke: 0.6pt)
rect((0.6, 0.32), (0.85, 0.57), stroke: 0.8pt)
line((0.6, 0.32), (0.85, 0.57), stroke: 0.6pt)
line((0.6, 0.57), (0.85, 0.32), stroke: 0.6pt)
line((0.6, 0.57), (0.6, 0.92), stroke: 0.8pt)
// Barra
rect((0.6, 0.57), (2.8, 0.92), stroke: 0.9pt)
// Freccia di rotazione attorno alla barra
arc((1.35, 0.745), start: 60deg, stop: 300deg, radius: (0.22, 0.36), anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
// Freccia di flessione a destra
arc((1.8, 1.05), start: -35deg, stop: -8deg, radius: 1.3, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)


// --- Col 1: (4.6, 1.0) Provino liscio, sforzo elevato ---
// Zona di rottura finale grande spostata in basso a destra
line((3.96, 0.78), (4.35, 0.92), (4.72, 1.15), (5.05, 1.50), (5.24, 1.22), (5.28, 0.95), (5.15, 0.60), (4.88, 0.38), (4.55, 0.32), (4.22, 0.42), (4.02, 0.60), close: true, fill: black.transparentize(72%), stroke: none)
circle((4.6, 1.0), radius: 0.68, stroke: 1pt)
// Fronte limite della zona di rottura finale
bezier((3.96, 0.78), (5.05, 1.50), (4.40, 0.88), (4.75, 1.15), stroke: 0.8pt)
// Fronti di propagazione dall'innesco superiore
arc((4.60, 1.68), start: 195deg, stop: 335deg, radius: (0.22, 0.14), anchor: "origin", stroke: 0.65pt)
bezier((4.08, 1.44), (4.88, 1.62), (4.35, 1.28), (4.68, 1.38), stroke: 0.65pt)
bezier((3.93, 1.12), (4.98, 1.56), (4.35, 1.05), (4.72, 1.25), stroke: 0.65pt)
// Frecce radiali (con leggera trasparenza)
line((4.55, 1.65), (4.42, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((4.65, 1.65), (4.68, 1.28), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((4.42, 1.66), (4.18, 1.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((4.75, 1.66), (4.88, 1.44), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
// Assi tratteggiati (verticale e inclinato)
line((4.6, 1.78), (4.6, 0.22), stroke: (dash: "dashed", thickness: 0.6pt))
line((4.30, 1.74), (4.90, 0.26), stroke: (dash: "dashed", thickness: 0.6pt))
// Freccia rotazione esterna
arc((4.6, 1.0), start: 122deg, stop: 152deg, radius: 0.82, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)


// --- Col 2: (6.6, 1.0) Provino liscio, sforzo basso ---
// Zona di rottura finale piccola in basso a destra
line((6.35, 0.37), (6.58, 0.52), (6.88, 0.62), (7.18, 0.65), (7.02, 0.45), (6.75, 0.34), (6.50, 0.33), close: true, fill: black.transparentize(72%), stroke: none)
circle((6.6, 1.0), radius: 0.68, stroke: 1pt)
// Fronte limite convesso verso l'alto/sinistra della zona ruvida
bezier((6.35, 0.37), (7.18, 0.65), (6.55, 0.55), (6.90, 0.64), stroke: 0.8pt)
// Fronti di propagazione dall'alto (6.6, 1.68)
arc((6.60, 1.68), start: 195deg, stop: 345deg, radius: (0.20, 0.12), anchor: "origin", stroke: 0.65pt)
bezier((5.96, 1.24), (7.18, 1.36), (6.35, 1.12), (6.85, 1.18), stroke: 0.65pt)
bezier((5.93, 0.88), (7.27, 1.05), (6.40, 0.85), (6.90, 0.92), stroke: 0.65pt)
bezier((6.06, 0.58), (7.24, 0.80), (6.45, 0.66), (6.95, 0.74), stroke: 0.65pt)
// Frecce radiali lunghe (con leggera trasparenza)
line((6.48, 1.66), (6.15, 0.72), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((6.56, 1.64), (6.42, 0.66), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((6.68, 1.64), (6.82, 0.74), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((6.78, 1.66), (7.08, 0.80), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
// Assi tratteggiati
line((6.6, 1.78), (6.6, 0.22), stroke: (dash: "dashed", thickness: 0.6pt))
line((6.30, 1.74), (6.90, 0.26), stroke: (dash: "dashed", thickness: 0.6pt))
// Freccia rotazione esterna
arc((6.6, 1.0), start: 122deg, stop: 152deg, radius: 0.82, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)


// --- Col 3: (8.6, 1.0) Intaglio elevato, sforzo elevato ---
// Rottura finale interna (isola centrale leggermente eccentrica)
circle((8.65, 0.95), radius: (0.23, 0.17), fill: black.transparentize(72%), stroke: 0.8pt)
circle((8.6, 1.0), radius: 0.68, stroke: 1pt)
circle((8.6, 1.0), radius: 0.60, stroke: 0.8pt)
// Fronti concentrici anulari dalla periferia verso il centro
circle((8.62, 0.98), radius: (0.48, 0.44), stroke: 0.65pt)
circle((8.64, 0.96), radius: (0.35, 0.30), stroke: 0.65pt)
// Frecce radiali da tutti i bordi verso l'interno (con leggera trasparenza)
line((8.60, 1.60), (8.63, 1.15), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((8.60, 0.40), (8.64, 0.76), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((8.00, 1.00), (8.40, 0.96), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((9.20, 1.00), (8.90, 0.96), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((8.18, 1.42), (8.46, 1.09), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((9.02, 1.42), (8.82, 1.09), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((8.18, 0.58), (8.46, 0.82), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((9.02, 0.58), (8.82, 0.82), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
// Assi tratteggiati
line((8.6, 1.78), (8.6, 0.22), stroke: (dash: "dashed", thickness: 0.6pt))
line((8.35, 1.74), (8.85, 0.26), stroke: (dash: "dashed", thickness: 0.6pt))
// Freccia rotazione esterna
arc((8.6, 1.0), start: 122deg, stop: 152deg, radius: 0.82, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)


// --- Col 4: (10.6, 1.0) Intaglio elevato, sforzo basso ---
// Isola piccola spostata in basso a destra
circle((10.72, 0.78), radius: (0.16, 0.13), fill: black.transparentize(72%), stroke: 0.8pt)
circle((10.6, 1.0), radius: 0.68, stroke: 1pt)
circle((10.6, 1.0), radius: 0.60, stroke: 0.8pt)
// Fronti eccentrici che convergono verso (10.72, 0.78)
circle((10.65, 0.90), radius: (0.45, 0.42), stroke: 0.65pt)
circle((10.69, 0.84), radius: (0.30, 0.26), stroke: 0.65pt)
arc((10.45, 1.58), start: 225deg, stop: 345deg, radius: 0.28, anchor: "origin", stroke: 0.65pt)
// Frecce radiali dai bordi (con leggera trasparenza)
line((10.50, 1.58), (10.68, 0.93), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((10.15, 1.38), (10.55, 0.85), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((10.85, 1.54), (10.80, 0.93), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((10.02, 0.95), (10.54, 0.78), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((11.18, 0.95), (10.90, 0.80), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((10.35, 0.45), (10.62, 0.68), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
line((10.95, 0.50), (10.82, 0.68), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
// Assi tratteggiati
line((10.6, 1.78), (10.6, 0.22), stroke: (dash: "dashed", thickness: 0.6pt))
line((10.35, 1.74), (10.85, 0.26), stroke: (dash: "dashed", thickness: 0.6pt))
// Freccia rotazione esterna
arc((10.6, 1.0), start: 122deg, stop: 152deg, radius: 0.82, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)
})
