// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 780) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  // --- Nodo nel dominio del tempo (sinistra) ---
  circle((-4.5, 1.0), radius: 0.08, fill: black)
  line((-5.5, 2.0), (-4.58, 1.08), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((-5.5, 2.3), text(fill: red)[$i_1(t)$])
  line((-4.6, -0.2), (-4.51, 0.9), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((-4.0, 0.2), text(fill: red)[$i_2(t)$])
  line((-4.42, 1.05), (-3.3, 1.6), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((-2.9, 1.6), text(fill: red)[$i_3(t)$])

  // --- Diagramma fasoriale (centro) ---
  line((-1.5, 0), (2.0, 0), mark: (end: "stealth", fill: black))
  content((2.35, 0), $"Re"$)
  line((-1.0, -0.4), (-1.0, 2.4), mark: (end: "stealth", fill: black))
  content((-1.35, 2.3), $"Im"$)

  // Origine del piano complesso a (-1.0, 0)
  let ox = -1.0
  let oy = 0.0
  // I1 = (1.1, 0.45)
  line((ox, oy), (ox + 1.1, oy + 0.45), stroke: (paint: rgb("#008000"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#008000")))
  content((ox + 1.3, oy + 0.3), text(fill: rgb("#008000"))[$macron(I)_1$])

  // I2 = (0.8, 0.7)
  line((ox, oy), (ox + 0.8, oy + 0.7), stroke: (paint: rgb("#cc6600"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#cc6600")))
  content((ox + 0.55, oy + 0.95), text(fill: rgb("#cc6600"))[$macron(I)_2$])

  // Traslazione punta-coda di I2
  line((ox + 1.1, oy + 0.45), (ox + 1.9, oy + 1.15), stroke: (paint: rgb("#cc6600"), dash: "dashed", thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#cc6600")))
  content((ox + 1.95, oy + 0.85), text(fill: rgb("#cc6600"))[$macron(I)_2$])

  // Risultante I3 = I1 + I2 = (1.9, 1.15)
  line((ox, oy), (ox + 1.9, oy + 1.15), stroke: (paint: blue, thickness: 1.6pt), mark: (end: "stealth", fill: blue))
  content((ox + 1.9, oy + 1.55), text(fill: blue)[$macron(I)_3 = macron(I)_1 + macron(I)_2$])

  // --- Nodo nel dominio dei fasori (destra) ---
  circle((4.5, 1.0), radius: 0.08, fill: black)
  line((3.4, 1.7), (4.4, 1.06), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((3.4, 1.1), text(fill: red)[$macron(I)_1$])
  line((4.5, -0.2), (4.5, 0.9), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((5.0, 0.2), text(fill: red)[$macron(I)_2$])
  line((4.58, 1.06), (5.6, 1.8), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((5.8, 1.3), text(fill: red)[$macron(I)_3$])
})
