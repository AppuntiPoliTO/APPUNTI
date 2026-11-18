// Figura estratta da solidi.typ (riga 549) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
import draw: *

// Blocco ad anello (bordi spessi, grigio)
arc((0,0), start: 75deg, stop: 105deg, radius: 7.0, anchor: "origin", stroke: 2pt + rgb("#8a8a8a"))
arc((0,0), start: 75deg, stop: 105deg, radius: 4.0, anchor: "origin", stroke: 2pt + rgb("#8a8a8a"))
line((1.035, 3.864), (1.812, 6.761), stroke: 2pt + rgb("#8a8a8a"))
line((-1.035, 3.864), (-1.812, 6.761), stroke: 2pt + rgb("#8a8a8a"))

// Lati convergenti inferiori
line((0,0), (1.035, 3.864), stroke: 1.5pt + rgb("#666666"))
line((0,0), (-1.035, 3.864), stroke: 1.5pt + rgb("#666666"))

// Assi (tratteggiati)
line((0, -0), (0, 7.8), stroke: (dash: "dash-dotted", thickness: 1.2pt, paint: rgb("#838383")))
line((-3.0, 5.2), (3.0, 5.2), stroke: (dash: "dashed", thickness: 1.2pt, paint: rgb("#838383")))

// Vettori Forza
line((1.393, 5.2), (3.808, 4.553), mark: (end: ">"), stroke: 1.5pt + rgb("#8a8a8a"))
line((-1.393, 5.2), (-3.808, 4.553), mark: (end: ">"), stroke: 1.5pt + rgb("#8a8a8a"))

// Archetti angolari d(theta)/2
arc((0,0), start: 75deg, stop: 90deg, radius: 2.2, anchor: "origin", stroke: 1pt + rgb("#888888"))
arc((0,0), start: 90deg, stop: 105deg, radius: 2.2, anchor: "origin", stroke: 1pt + rgb("#888888"))

// Quota angolare esterna destra
arc((1.393, 5.2), start: 345deg, stop: 360deg, radius: 1.4, anchor: "origin", mark: (start: ">"), stroke: 1pt + rgb("#666666"))

// Etichette (Testo puro Typst, nessun tag illegale o plugin LaTeX)
content((0.40, 2.80), text(fill: rgb("#4a5c6e"))[$ (dif theta) / 2 $])
content((-0.40, 2.80), text(fill: rgb("#4a5c6e"))[$ (dif theta) / 2 $])

content((2.9, 5.8), text(fill: rgb("#4a5c6e"))[$ (dif theta) / 2 $])

content((2.8, 3.8), text(fill: rgb("#4a5c6e"))[$ sigma_c dot dif r dot b $])
content((-2.8, 3.8), text(fill: rgb("#4a5c6e"))[$ sigma_c dot dif r dot b $])

 

})
