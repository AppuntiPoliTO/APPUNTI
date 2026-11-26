// Figura estratta da collegamenti filettati.typ (riga 861) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

let draw-nuts(dx) = {
  // --- CONTRODADO (sopra, y: 0.0 .. 1.0) - tratteggio +45°, grigio chiaro ---
  line((0.2 + dx, 0.0), (0.85 + dx, 0.0), (0.85 + dx, 0.22), (0.67 + dx, 0.34), (0.85 + dx, 0.46), (0.85 + dx, 1.0), (0.2 + dx, 1.0), close: true, fill: luma(242), stroke: none)
  line((1.75 + dx, 0.0), (2.4 + dx, 0.0), (2.4 + dx, 1.0), (1.75 + dx, 1.0), (1.75 + dx, 0.78), (1.93 + dx, 0.66), (1.75 + dx, 0.54), close: true, fill: luma(242), stroke: none)

  // --- DADO (sotto, y: -1.0 .. 0.0) - tratteggio -45°, grigio più scuro ---
  line((0.2 + dx, -1.0), (0.85 + dx, -1.0), (0.85 + dx, -0.78), (0.67 + dx, -0.66), (0.85 + dx, -0.54), (0.85 + dx, 0.0), (0.2 + dx, 0.0), close: true, fill: luma(222), stroke: none)
  line((1.75 + dx, -1.0), (2.4 + dx, -1.0), (2.4 + dx, 0.0), (1.75 + dx, 0.0), (1.75 + dx, -0.22), (1.93 + dx, -0.34), (1.75 + dx, -0.46), close: true, fill: luma(222), stroke: none)

  // Tratteggio Controdado (+45°)
  line((0.2 + dx, 0.75), (0.45 + dx, 1.0), stroke: 0.45pt + luma(110))
  line((0.2 + dx, 0.50), (0.70 + dx, 1.0), stroke: 0.45pt + luma(110))
  line((0.2 + dx, 0.25), (0.85 + dx, 0.90), stroke: 0.45pt + luma(110))
  line((0.2 + dx, 0.0), (0.85 + dx, 0.65), stroke: 0.45pt + luma(110))
  line((0.45 + dx, 0.0), (0.74 + dx, 0.29), stroke: 0.45pt + luma(110))
  line((0.70 + dx, 0.0), (0.85 + dx, 0.15), stroke: 0.45pt + luma(110))

  line((1.75 + dx, 0.80), (1.95 + dx, 1.0), stroke: 0.45pt + luma(110))
  line((1.89 + dx, 0.69), (2.20 + dx, 1.0), stroke: 0.45pt + luma(110))
  line((1.75 + dx, 0.30), (2.4 + dx, 0.95), stroke: 0.45pt + luma(110))
  line((1.75 + dx, 0.05), (2.4 + dx, 0.70), stroke: 0.45pt + luma(110))
  line((1.95 + dx, 0.0), (2.4 + dx, 0.45), stroke: 0.45pt + luma(110))
  line((2.20 + dx, 0.0), (2.4 + dx, 0.20), stroke: 0.45pt + luma(110))

  // Tratteggio Dado (-45°, opposto al controdado)
  line((0.2 + dx, -0.75), (0.45 + dx, -1.0), stroke: 0.45pt + luma(95))
  line((0.2 + dx, -0.50), (0.70 + dx, -1.0), stroke: 0.45pt + luma(95))
  line((0.2 + dx, -0.25), (0.85 + dx, -0.90), stroke: 0.45pt + luma(95))
  line((0.2 + dx, 0.0), (0.784 + dx, -0.584), stroke: 0.45pt + luma(95))
  line((0.45 + dx, 0.0), (0.85 + dx, -0.40), stroke: 0.45pt + luma(95))
  line((0.70 + dx, 0.0), (0.85 + dx, -0.15), stroke: 0.45pt + luma(95))

  line((1.75 + dx, -0.75), (2.00 + dx, -1.0), stroke: 0.45pt + luma(95))
  line((1.75 + dx, -0.50), (2.25 + dx, -1.0), stroke: 0.45pt + luma(95))
  line((1.876 + dx, -0.376), (2.4 + dx, -0.90), stroke: 0.45pt + luma(95))
  line((1.75 + dx, 0.0), (2.4 + dx, -0.65), stroke: 0.45pt + luma(95))
  line((2.00 + dx, 0.0), (2.4 + dx, -0.40), stroke: 0.45pt + luma(95))
  line((2.25 + dx, 0.0), (2.4 + dx, -0.15), stroke: 0.45pt + luma(95))

  // Contorni dei pezzi
  line((0.2 + dx, 0.0), (0.85 + dx, 0.0), (0.85 + dx, 0.22), (0.67 + dx, 0.34), (0.85 + dx, 0.46), (0.85 + dx, 1.0), (0.2 + dx, 1.0), close: true, stroke: 0.9pt)
  line((1.75 + dx, 0.0), (2.4 + dx, 0.0), (2.4 + dx, 1.0), (1.75 + dx, 1.0), (1.75 + dx, 0.78), (1.93 + dx, 0.66), (1.75 + dx, 0.54), close: true, stroke: 0.9pt)
  line((0.2 + dx, -1.0), (0.85 + dx, -1.0), (0.85 + dx, -0.78), (0.67 + dx, -0.66), (0.85 + dx, -0.54), (0.85 + dx, 0.0), (0.2 + dx, 0.0), close: true, stroke: 0.9pt)
  line((1.75 + dx, -1.0), (2.4 + dx, -1.0), (2.4 + dx, 0.0), (1.75 + dx, 0.0), (1.75 + dx, -0.22), (1.93 + dx, -0.34), (1.75 + dx, -0.46), close: true, stroke: 0.9pt)

  // Linea di separazione netta tra Controdado e Dado
  line((0.2 + dx, 0.0), (0.85 + dx, 0.0), stroke: 1.35pt)
  line((1.75 + dx, 0.0), (2.4 + dx, 0.0), stroke: 1.35pt)

  // Filetti vite (fondo + cresta del filetto) e contatti
  line((0.85 + dx, 0.22), (1.75 + dx, 0.54), stroke: 0.65pt)
  line((0.67 + dx, 0.34), (1.93 + dx, 0.66), stroke: 0.55pt)
  line((0.85 + dx, 0.46), (1.75 + dx, 0.78), stroke: 0.65pt)

  line((0.85 + dx, -0.78), (1.75 + dx, -0.46), stroke: 0.65pt)
  line((0.67 + dx, -0.66), (1.93 + dx, -0.34), stroke: 0.55pt)
  line((0.85 + dx, -0.54), (1.75 + dx, -0.22), stroke: 0.65pt)

  line((0.67 + dx, 0.34), (0.85 + dx, 0.22), stroke: 1.5pt)
  line((1.75 + dx, 0.54), (1.93 + dx, 0.66), stroke: 1.5pt)
  line((0.67 + dx, -0.66), (0.85 + dx, -0.78), stroke: 1.5pt)
  line((1.75 + dx, -0.46), (1.93 + dx, -0.34), stroke: 1.5pt)

  // Gambo vite e asse
  line((0.85 + dx, 1.0), (0.85 + dx, 1.6), stroke: 0.9pt)
  line((1.75 + dx, 1.0), (1.75 + dx, 1.6), stroke: 0.9pt)
  line((0.85 + dx, -1.0), (0.85 + dx, -1.5), stroke: 0.9pt)
  line((1.75 + dx, -1.0), (1.75 + dx, -1.5), stroke: 0.9pt)
  line((1.3 + dx, -1.75), (1.3 + dx, 1.85), stroke: (dash: "dash-dotted", thickness: 0.65pt))
}

// --- PANNELLO 1 (SINISTRA) ---
draw-nuts(0.0)
content((1.3, 2.2), text(size: 9pt)[_Schema di funzionamento_], anchor: "center")
content((2.6, 0.5), text(size: 8pt)[Controdado], anchor: "west")
content((2.6, -0.5), text(size: 8pt)[Dado], anchor: "west")

// --- PANNELLO 2 (CENTRO) ---
draw-nuts(4.3)
circle((5.06, -0.68), radius: 0.27, stroke: 1.15pt + red)
circle((6.14, -0.36), radius: 0.27, stroke: 1.15pt + red)

// --- PANNELLO 3 (DESTRA) ---
// Filetto Controdado (arancione) e Filetto Dado (blu) con linee orizzontali di separazione
line((7.5, 0.0), (7.9, 0.0), (7.9, 0.38), (8.8, 0.38), (8.8, 0.78), (7.5, 0.78), close: true, fill: rgb("#ff6600"), stroke: 0.85pt)
line((7.5, 0.38), (7.9, 0.38), stroke: 0.85pt)

line((7.5, 0.0), (7.9, 0.0), (7.9, -0.38), (8.8, -0.38), (8.8, -0.78), (7.5, -0.78), close: true, fill: rgb("#2432c8"), stroke: 0.85pt)
line((7.5, -0.38), (7.9, -0.38), stroke: 0.85pt)

line((7.5, 0.0), (7.9, 0.0), stroke: 1.35pt)

// Filetti vite (pezzo a U con linee orizzontali di separazione tra denti e gambo)
line(
  (8.4, 1.12), (9.7, 1.12), (9.7, -1.12), (8.4, -1.12),
  (8.4, -0.78), (9.35, -0.78), (9.35, 0.78), (8.4, 0.78),
  close: true, fill: rgb("#00b884"), stroke: 0.85pt,
)
line((9.35, 0.78), (9.7, 0.78), stroke: 0.85pt)
line((9.35, -0.78), (9.7, -0.78), stroke: 0.85pt)

// Corpo vite a destra
line((9.7, 0.78), (10.2, 0.78), (10.2, 0.52), (10.05, 0.35), (10.2, 0.18), (10.05, 0.0), (10.2, -0.18), (10.05, -0.35), (10.2, -0.52), (10.2, -0.78), (9.7, -0.78), stroke: 0.75pt)

// Frecce e legende
line((8.6, 0.78), (8.6, 1.55), mark: (end: ">"), stroke: 1.05pt + red)
line((8.6, -0.78), (8.6, -1.55), mark: (end: ">"), stroke: 1.05pt + red)
line((10.2, 0.78), (10.2, 1.55), mark: (end: ">"), stroke: 1.05pt + red)
line((10.2, -0.78), (10.2, -1.55), mark: (end: ">"), stroke: 1.05pt + red)

content((8.35, 1.68), text(size: 7.5pt, fill: rgb("#e64a00"))[Filetto Controdado], anchor: "south")
content((8.35, -1.42), text(size: 7.5pt, fill: rgb("#2432c8"))[Filetto dado], anchor: "east")
content((9.45, -1.42), text(size: 7.5pt, fill: rgb("#00a876"))[Filetti vite], anchor: "center")
})
