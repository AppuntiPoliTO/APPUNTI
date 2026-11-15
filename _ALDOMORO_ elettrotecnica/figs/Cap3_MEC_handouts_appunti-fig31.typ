// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1515) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Caso 2: Circuito RC
  content((-1.2, 2.2), text(fill: rgb("#1b5e20"), weight: "bold")[Caso 2 (Serie $R C$)])
  line((-0.5, 0), (3.5, 0), mark: (end: "stealth", fill: black))
  content((3.7, -0.3), $"Re"$)
  line((0, -1.8), (0, 2.0), mark: (end: "stealth", fill: black))
  content((-0.4, 2.0), $"Im"$)

  // Vettore V su asse Re
  line((0, 0), (2.4, 0), stroke: blue + 1.5pt, mark: (end: "stealth", fill: blue))
  content((2.2, -0.4), text(fill: blue)[$macron(V)$])

  // Vettore I in anticipo
  line((0, 0), (1.8, 1.1), stroke: red + 1.5pt, mark: (end: "stealth", fill: red))
  content((2.2, 1.2), text(fill: red)[$macron(I)$])

  // Arco angolo theta
  arc((1.0, 0), start: 0deg, stop: 31.4deg, radius: 1.0, stroke: red + 0.8pt)
  content((1.35, 0.35), text(fill: red)[$theta$])
})
