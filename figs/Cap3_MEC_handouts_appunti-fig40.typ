// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1844) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Piano di Gauss completo (Slide 57)
  line((-0.8, 0), (3.8, 0), mark: (end: "stealth", fill: black))
  content((4.1, -0.2), $"Re"$)
  line((0, -2.0), (0, 2.2), mark: (end: "stealth", fill: black))
  content((0.5, 2.1), $"Im"$)

  // E sull'asse Re
  line((0, 0), (3.0, 0), stroke: blue + 1.5pt, mark: (end: "stealth", fill: blue))
  content((2.9, -0.45), text(fill: blue)[$macron(E)$])

  // V_R e I nel quarto quadrante
  line((0, 0), (1.92, -1.44), stroke: blue + 1.5pt, mark: (end: "stealth", fill: blue))
  content((2.3, -1.5), text(fill: blue)[$macron(V)_R$])

  line((0, 0), (1.3, -0.975), stroke: red + 1.8pt, mark: (end: "stealth", fill: red))
  content((1.4, -1.45), text(fill: red)[$macron(I)$])

  // V_L dall'origine e traslato punta-coda
  line((0, 0), (1.08, 1.44), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))
  content((1.2, 1.65), text(fill: blue)[$macron(V)_L$])

  line((1.92, -1.44), (3.0, 0), stroke: blue + 1.5pt, mark: (end: "stealth", fill: blue))
  content((3.1, 0.45), text(fill: blue)[$macron(V)_L$])
})
