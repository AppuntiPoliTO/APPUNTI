// Figura estratta da 27-50_appunti.typ (riga 1283) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  
  // Substrato acciaio inossidabile
  rect((0, 0), (4.6, 0.65), fill: rgb(0, 180, 245), stroke: 0.7pt + black)
  content((2.3, 0.325), text(size: 7pt, fill: white, weight: "bold")[Acciaio inossidabile])
  
  // Film passivante di ossido di Cr
  rect((0, 0.65), (4.6, 0.92), fill: luma(130), stroke: 0.7pt + black)
  
  // Frecce ondulate di O2 incidenti dall'alto
  // Freccia 1 (x = 0.7)
  bezier((0.7, 2.0), (0.7, 1.75), (0.85, 1.92), (0.55, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((0.7, 1.75), (0.7, 1.5), (0.85, 1.67), (0.55, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((0.7, 1.5), (0.7, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((0.55, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia 2 (x = 2.3)
  bezier((2.3, 2.0), (2.3, 1.75), (2.45, 1.92), (2.15, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((2.3, 1.75), (2.3, 1.5), (2.45, 1.67), (2.15, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((2.3, 1.5), (2.3, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((2.15, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia 3 (x = 3.9)
  bezier((3.9, 2.0), (3.9, 1.75), (4.05, 1.92), (3.75, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((3.9, 1.75), (3.9, 1.5), (4.05, 1.67), (3.75, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((3.9, 1.5), (3.9, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((3.75, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia arancione verso etichetta strato passivante
  line((4.7, 0.82), (4.98, 0.82), (4.98, 0.88), (5.12, 0.785), (4.98, 0.69), (4.98, 0.75), (4.7, 0.75), close: true, fill: rgb(240, 100, 20), stroke: 0.5pt + rgb(160, 50, 0))
  
  // Testo descrittivo a destra
  content((5.25, 0.82), text(size: 7pt, weight: "bold")[Film di ossido di $"Cr"$ impermeabile all'$"O"_2$], anchor: "west")
  content((6.1, 0.48), text(size: 7pt, fill: rgb(30, 40, 160), weight: "bold")[(strato passivante)], anchor: "west")
})
