// Figura estratta da hertz.typ (riga 386) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // Assi cartesiani
  
  line((0, 0), (-3.5, -1.75), mark: (end: ">"), stroke: 1pt)
  line((0, 0), (4, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -3.5), (0, 4), mark: (end: ">"), stroke: 1pt)

  // Tacca di riferimento sull'asse z inferiore
  line((-0.15, -3.1), (0.15, -3.1), stroke: 1pt)

  // SUPERFICIE SUPERIORE Z1 (Sfera)
  // Profilo esterno (arco di cerchio perfetto, metà inferiore)
  arc((0, 2.2), start: 180deg, stop: 360deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  
  // Bordo ellittico superiore (sezione orizzontale, curvatura regolarizzata)
  arc((0,2.2), 
start: -0deg, 
stop: 360deg, 
radius: (2.2, 0.8), 
anchor: "origin"
  )  
  arc((0,-1.25), 
start: 180deg, 
stop: 360deg, 
radius: (2.2, 0.8), 
anchor: "origin"
  )
  arc((0, -1.25),
start: 180deg,
stop: 0deg,
radius: (2.2, 0.8),
anchor: "origin",
name: "mio_arco",
stroke: (dash: "dashed", thickness: 1pt)
  )
  arc((0, 0.45),
start: 0deg,
stop: 360deg,
radius: (1.3, 0.3),
anchor: "origin",
name: "mio_arco",
stroke: ( thickness: 1.5pt, paint: red.transparentize(40%)),
fill: gray.transparentize(70%)
  )
  arc((0, -1.25), start: 0deg, stop: 180deg, radius: 2.2, anchor: "origin", stroke: 1pt)

  line((0, 0.95), (3.6, 0.95), stroke: ( thickness: 1pt, paint: black.transparentize(40%)))
  line((3.4, 0.95), (3.4, 0), mark: (end: ">",start:">"), stroke: 1pt)
  // Bordo ellittico inferiore (sezione orizzontale, curvatura regolarizzata)
  
  // Linee di curvatura interne (tangenti esatte all'asse x in O, terminano esattamente sull'ellisse)
  

  // Etichette
  content((3.8, 0.5), [$h$])
  content((-3.3, -1.3), [$x$])
  content((3.8, -0.3), [$y$])
  content((-0.3, 3.8), [$z$])
  content((0.3, -0.3), [$O$])
  content((-1.2, 1.0), [$Z_1$])
  content((1.3, -1.2), [$Z_2$])
})
