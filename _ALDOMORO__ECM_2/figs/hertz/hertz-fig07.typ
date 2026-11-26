// Figura estratta da hertz.typ (riga 333) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
import draw: *

// RIEMPIMENTO (Corpo grigio)
// Arco di raggio intermedio (2.75) e spessore esatto (0.5cm) per riempire l'area senza usare path()
arc((3, 3.5), start: 225deg, stop: 315deg, radius: 2.75, anchor: "origin", stroke: (paint: rgb("a0a5a9"), thickness: 0.5cm, cap: "butt"))

// CONTORNI CORPO GRIGIO
arc((3, 3.5), start: 225deg, stop: 315deg, radius: 2.5, anchor: "origin", stroke: 1pt)
arc((3, 3.5), start: 225deg, stop: 315deg, radius: 3.0, anchor: "origin", stroke: 1pt)
line((1.232, 1.732), (0.879, 1.379), stroke: 1pt)
line((4.768, 1.732), (5.121, 1.379), stroke: 1pt)

// ASSI
line((3, 1), (0.5, 1), mark: (end: ">"), stroke: 1pt)
content((0.5, 0.6), [$x$])

line((3, 1), (3, 5), mark: (end: ">"), stroke: 1pt)
content((3.3, 4.8), [$z$])

// RAGGI DI CURVATURA E CIRCONFERENZE OSCULATRICI
// R2x (Sinistra, raggio maggiore per il bordo)
line((3, 4), (1.75, 1.335), mark: (end: ">"), stroke: 1pt)
content((2.0, 3.2), [$R_(2x)$])


arc((3,4.2), 
  start: -20deg, 
  stop: -160deg, 
  radius: (1.5, 3.2), 
  anchor: "origin"
)


// Raggio di curvatura R1x (dal centro di curvatura z=1.25 alla curva in dx=0.9)
line((3, 2.25), (3.67, 1.324), mark: (end: ">"), stroke: 0.6pt)

content((3.6, 1.94), [$R_(1x)$])


})
