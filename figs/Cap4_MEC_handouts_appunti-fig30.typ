// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1619) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *

  // Origine
  let O = (0, 0)
  
  // Vettore V (orizzontale)
  line(O, (4.2, 0), stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((4.4, 0.35), $macron(V)$)

  // Vettore Ic sull'origine
  line(O, (0, 1.5), stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((0.65, 0.8), $macron(I)_C$)

  // Vettore I (carico non rifasato)
  let I_end = (2.6, -2.8)
  line(O, I_end, stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((1.3, -2.3), $macron(I)$)

  // Vettore Ic applicato sulla punta di I
  let Ip_end = (2.6, -1.3)
  line(I_end, Ip_end, stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((3.15, -2.05), $macron(I)_C$)

  // Vettore I' risultante
  line(O, Ip_end, stroke: (paint: blue, thickness: 1.4pt), mark: (end: "stealth", fill: blue))
  content((2.9, -0.85), $macron(I)'$)

  // Archi angoli phi e phi'
  arc((1.3, 0), start: 0deg, stop: -47deg, radius: 1.3, stroke: (paint: red, thickness: 1pt), mark: (end: "stealth", fill: red))
  content((1.4, -1.05), $phi$)

  arc((1.8, 0), start: 0deg, stop: -26.5deg, radius: 1.8, stroke: (paint: blue, thickness: 1pt), mark: (end: "stealth", fill: blue))
  content((2.15, -0.5), $phi'$)
})
