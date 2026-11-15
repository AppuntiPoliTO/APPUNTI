// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 443) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#canvas({
  import draw: *
  // Assi Re e Im
  line((-0.8, 0), (4.2, 0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  line((0, -0.6), (0, 3.6), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((4.0, -0.4), sans("Re", size: 11pt))
  content((-0.45, 3.4), sans("Im", size: 11pt))

  // Proiezioni tratteggiate
  line((0, 2.3), (3.0, 2.3), stroke: (paint: red, dash: "dashed", thickness: 0.8pt))
  line((3.0, 0), (3.0, 2.3), stroke: (paint: red, dash: "dashed", thickness: 0.8pt))
  content((3.0, -0.35), $a$)
  content((-0.3, 2.3), $b$)

  // Vettore z
  line((0, 0), (3.0, 2.3), stroke: 1.8pt + red)
  circle((3.0, 2.3), radius: 0.08, fill: black, stroke: red + 1pt)
  content((3.3, 2.65), $macron(z)$)
  content((1.3, 1.5), $|macron(z)|$)

  // Versore immaginario j
  line((0, 0), (0, 0.9), mark: (end: "stealth", fill: red), stroke: 2.5pt + red)
  content((-0.35, 0.5), $j$)
  content((-1.1, 1.4), $j = sqrt(-1)$)

  // Arco angolo theta
  arc((1.1, 0), start: 0deg, stop: 37.5deg, radius: 1.1, mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((2.1, 0.45), $theta = angle macron(z)$)
})
