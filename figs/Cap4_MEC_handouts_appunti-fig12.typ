// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 773) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas(length: 1cm, {
  import draw: *
  
  // Griglia di sfondo
  for x in range(1, 5) {
    line((x * 1.6, 0), (x * 1.6, 5), stroke: 0.4pt + gray.lighten(30%))
  }
  for y in range(1, 5) {
    line((0, y * 1.0), (8, y * 1.0), stroke: 0.4pt + gray.lighten(30%))
  }
  
  // Riquadro
  rect((0, 0), (8, 5), stroke: 0.7pt + black)
  
  // Tacche principali e secondarie
  for i in range(0, 26) {
    let x = i * 8.0 / 25.0
    let len = if calc.rem(i, 5) == 0 { 0.15 } else { 0.08 }
    line((x, 0), (x, -len), stroke: 0.5pt + black)
    line((x, 5), (x, 5 + len), stroke: 0.5pt + black)
  }
  for j in range(0, 26) {
    let y = j * 5.0 / 25.0
    let len = if calc.rem(j, 5) == 0 { 0.15 } else { 0.08 }
    line((0, y), (-len, y), stroke: 0.5pt + black)
    line((8, y), (8 + len, y), stroke: 0.5pt + black)
  }
  
  content((4, -0.55), $italic("tempo")$)
  content((-0.6, 2.5), angle: 90deg, $italic("energia")$)
  
  // Retta media: t * V * I * cos(phi)
  line((0, 0), (8, 5), stroke: 1.5pt + black)
  
  // Curva oscillante: V * I * cos(phi) * (t - 1/(2*omega) * sin(2*omega*t))
  let N = 120
  let pts = ()
  for k in range(N + 1) {
    let x = 8.0 * k / N
    let y = 5.0 * (k / N) - 0.12 * calc.sin(5.0 * 2.0 * calc.pi * k / N)
    pts.push((x, y))
  }
  line(..pts, stroke: (paint: black, thickness: 1pt, dash: "dashed"))
  
  // Punti di richiamo ed etichette
  circle((3.76, 2.35), radius: 0.07, fill: black)
  line((3.76, 2.35), (2.7, 3.3), stroke: 0.6pt + black)
  content((2.1, 3.6), $t V I cos(phi)$)
  
  circle((2.8, 1.66), radius: 0.07, fill: black)
  line((2.8, 1.66), (3.1, 1.05), stroke: 0.6pt + black)
  content((5.5, 1.05), $V I cos phi (t - 1 / (2 omega) sin 2 omega t)$)
})
