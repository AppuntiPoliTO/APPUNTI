// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1872) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  // Triangolo vettoriale RL (Slide 58)
  let green-v = rgb("#2e6b4e")

  // Vettore E orizzontale
  line((0, 0), (3.5, 0), stroke: green-v + 2pt, mark: (end: "stealth", fill: green-v))
  content((2.4, 0.5), text(fill: green-v, size: 13pt)[$macron(E)$])

  // Vettore V_R
  line((0, 0), (2.24, -1.68), stroke: green-v + 2pt, mark: (end: "stealth", fill: green-v))
  content((1.1, -1.6), text(fill: green-v, size: 13pt)[$macron(V)_R$])

  // Vettore I sovrapposto a V_R
  line((0, 0), (1.5, -1.125), stroke: red + 2pt, mark: (end: "stealth", fill: red))
  content((0.5, -0.95), text(fill: red, size: 13pt)[$macron(I)$])

  // Vettore V_L ortogonale
  line((2.24, -1.68), (3.5, 0), stroke: green-v + 2pt, mark: (end: "stealth", fill: green-v))
  content((3.5, -1.0), text(fill: green-v, size: 13pt)[$macron(V)_L$])

  // Simbolo angolo retto
  line((2.0, -1.5), (2.18, -1.26), (2.42, -1.44), stroke: black + 0.9pt)

  // Arco phi_I
  arc((0.9, 0), start: 0deg, stop: -36.87deg, radius: 0.9, stroke: black + 1pt, mark: (end: "stealth", fill: black))
  content((1.25, -0.35), $varphi_I$)
})
