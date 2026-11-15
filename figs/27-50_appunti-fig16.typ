// Figura estratta da 27-50_appunti.typ (riga 1431) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  
  // Laminato composito a fibre lunghe orizzontali (alternanza matrice grigio-blu e fibre bianche)
  // Strati di matrice (6 strati grigio-blu) e 5 fibre bianche intermedie
  rect((-2.5, -0.78), (2.5, 0.78), fill: rgb(95, 115, 140), stroke: 0.7pt + black)
  
  // Fibre orizzontali bianche
  rect((-2.5, 0.48), (2.5, 0.64), fill: white, stroke: 0.5pt + black)
  rect((-2.5, 0.21), (2.5, 0.37), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.08), (2.5, 0.08), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.37), (2.5, -0.21), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.64), (2.5, -0.48), fill: white, stroke: 0.5pt + black)
  
  // Contorno esterno del provino
  rect((-2.5, -0.78), (2.5, 0.78), fill: none, stroke: 0.8pt + black)
  
  // Frecce rosse longitudinali (direzione delle fibre - alta resistenza)
  // Freccia destra
  line((2.7, 0.16), (3.15, 0.16), (3.15, 0.42), (3.55, 0.0), (3.15, -0.42), (3.15, -0.16), (2.7, -0.16), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Freccia sinistra
  line((-2.7, 0.16), (-3.15, 0.16), (-3.15, 0.42), (-3.55, 0.0), (-3.15, -0.42), (-3.15, -0.16), (-2.7, -0.16), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Frecce rosse trasversali (direzione ortogonale alle fibre - governata dalla matrice)
  // Freccia superiore
  line((-0.13, 0.92), (-0.13, 1.22), (-0.38, 1.22), (0.0, 1.48), (0.38, 1.22), (0.13, 1.22), (0.13, 0.92), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Freccia inferiore
  line((-0.13, -0.92), (-0.13, -1.22), (-0.38, -1.22), (0.0, -1.48), (0.38, -1.22), (0.13, -1.22), (0.13, -0.92), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
})
