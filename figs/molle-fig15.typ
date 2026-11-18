// Figura estratta da molle.typ (riga 1598) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
import draw: *

// Linee verticali della griglia e tacche asse X
line((0.0, -0.10), (0.0, 4.80), stroke: (paint: rgb("#555555"), thickness: 0.6pt))
line((1.2, -0.10), (1.2, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((2.4, -0.10), (2.4, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((3.6, -0.10), (3.6, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((4.8, -0.10), (4.8, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((6.0, -0.10), (6.0, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))

// Linee orizzontali della griglia e tacche asse Y
line((-0.10, 0.0), (6.0, 0.0), stroke: (paint: rgb("#555555"), thickness: 0.6pt))
line((-0.10, 0.6), (6.0, 0.6), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 1.2), (6.0, 1.2), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 1.8), (6.0, 1.8), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 2.4), (6.0, 2.4), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 3.0), (6.0, 3.0), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 3.6), (6.0, 3.6), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 4.2), (6.0, 4.2), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
line((-0.10, 4.8), (6.0, 4.8), stroke: (paint: rgb("#888888"), thickness: 0.5pt))

// Retta bisettrice tau_a = tau_m
line((0.0, 0.0), (3.60, 3.60), stroke: (paint: black, thickness: 0.7pt))

// Rette di fatica: tratto tratteggiato (a sinistra della bisettrice) e tratto continuo (a destra)
// 1E+03 (Y0 = 0.72)
line((0.0, 4.32), (2.274, 2.274), stroke: (paint: rgb("#000080"), dash: "dashed", thickness: 1.5pt))
line((2.274, 2.274), (4.80, 0.0), stroke: (paint: rgb("#000080"), thickness: 1.5pt))

// 1E+04 (Y0 = 0.54)
line((0.0, 3.24), (1.934, 1.934), stroke: (paint: rgb("#ff00ff"), dash: "dashed", thickness: 1.5pt))
line((1.934, 1.934), (4.80, 0.0), stroke: (paint: rgb("#ff00ff"), thickness: 1.5pt))

// 1E+05 (Y0 = 0.39)
line((0.0, 2.34), (1.573, 1.573), stroke: (paint: rgb("#99cc00"), dash: "dashed", thickness: 1.5pt))
line((1.573, 1.573), (4.80, 0.0), stroke: (paint: rgb("#99cc00"), thickness: 1.5pt))

// 1E+06 (Y0 = 0.29)
line((0.0, 1.74), (1.277, 1.277), stroke: (paint: rgb("#ff0000"), dash: "dashed", thickness: 1.5pt))
line((1.277, 1.277), (4.80, 0.0), stroke: (paint: rgb("#ff0000"), thickness: 1.5pt))

// Titolo con sfondo bianco (copre localmente la linea di griglia Y = 0.7)
content((3.55, 4.32), [#text(size: 0.80em)[Diagramma di Haigh stimato]], frame: "rect", padding: 0.08, fill: white, stroke: none)

// Riquadro legenda e voci
rect((3.90, 1.17), (5.38, 3.00), fill: white, stroke: (paint: rgb("#888888"), thickness: 0.5pt))
content((3.95, 3.28), [#text(size: 0.75em)[Cicli]], anchor: "west")

line((3.98, 2.77), (4.24, 2.77), stroke: (paint: rgb("#000080"), thickness: 1.5pt))
content((4.30, 2.77), [#text(size: 0.70em)[1E+03]], anchor: "west")

line((3.98, 2.32), (4.24, 2.32), stroke: (paint: rgb("#ff00ff"), thickness: 1.5pt))
content((4.30, 2.32), [#text(size: 0.70em)[1E+04]], anchor: "west")

line((3.98, 1.87), (4.24, 1.87), stroke: (paint: rgb("#99cc00"), thickness: 1.5pt))
content((4.30, 1.87), [#text(size: 0.70em)[1E+05]], anchor: "west")

line((3.98, 1.42), (4.24, 1.42), stroke: (paint: rgb("#ff0000"), thickness: 1.5pt))
content((4.30, 1.42), [#text(size: 0.70em)[1E+06]], anchor: "west")

// Valori delle intercette sull'asse verticale
content((0.22, 4.42), [#text(size: 0.72em)[0.72]], anchor: "west")
content((0.18, 3.30), [#text(size: 0.72em)[0.54]], anchor: "west")
content((0.18, 2.52), [#text(size: 0.72em)[0.39]], anchor: "west")
content((0.14, 1.36), [#text(size: 0.72em)[0.29]], anchor: "west")

// Valori graduati asse X
content((0.0, -0.16), [#text(size: 0.72em)[0]], anchor: "north")
content((1.2, -0.16), [#text(size: 0.72em)[0.2]], anchor: "north")
content((2.4, -0.16), [#text(size: 0.72em)[0.4]], anchor: "north")
content((3.6, -0.16), [#text(size: 0.72em)[0.6]], anchor: "north")
content((4.8, -0.16), [#text(size: 0.72em)[0.8]], anchor: "north")
content((6.0, -0.16), [#text(size: 0.72em)[1]], anchor: "north")

// Valori graduati asse Y
content((-0.16, 0.0), [#text(size: 0.72em)[0]], anchor: "east")
content((-0.16, 0.6), [#text(size: 0.72em)[0.1]], anchor: "east")
content((-0.16, 1.2), [#text(size: 0.72em)[0.2]], anchor: "east")
content((-0.16, 1.8), [#text(size: 0.72em)[0.3]], anchor: "east")
content((-0.16, 2.4), [#text(size: 0.72em)[0.4]], anchor: "east")
content((-0.16, 3.0), [#text(size: 0.72em)[0.5]], anchor: "east")
content((-0.16, 3.6), [#text(size: 0.72em)[0.6]], anchor: "east")
content((-0.16, 4.2), [#text(size: 0.72em)[0.7]], anchor: "east")
content((-0.16, 4.8), [#text(size: 0.72em)[0.8]], anchor: "east")

// Etichette degli assi
content((4.15, -0.62), [#text(size: 0.80em)[$tau_"m" \/ R_"m"$]], anchor: "north")
content((-0.82, 2.45), [#text(size: 0.80em)[$tau_a \/ R_"m"$]], angle: 90deg)
})
