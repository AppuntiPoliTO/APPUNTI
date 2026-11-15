// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 907) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas(length: 1cm, {
  import draw: *
  
  // Triangolo rettangolo
  line((0, 0), (4, 0), (4, 3), close: true, stroke: 1.2pt + black)
  
  // Arco per l'angolo phi
  arc((1.2, 0), start: 0deg, stop: 36.87deg, radius: 1.2, mark: (end: "stealth", fill: black, scale: 0.8), stroke: 0.7pt + black)
  content((1.65, 0.55), $phi$)
  
  // Etichette lati
  content((2, -0.45), $P$)
  content((4.45, 1.5), $Q$)
  content((1.65, 1.85), $S$)
})
