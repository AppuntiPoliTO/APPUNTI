// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2123) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#canvas({
  import draw: *
  // Griglia di sfondo
  for x in range(1, 6) {
    line((x * 1.1, 0), (x * 1.1, 3.3), stroke: (paint: gray.lighten(50%), thickness: 0.5pt, dash: "dotted"))
  }
  for y in (0.6, 1.2, 1.8, 2.4, 3.0) {
    line((0, y), (5.5, y), stroke: (paint: gray.lighten(50%), thickness: 0.5pt, dash: "dotted"))
  }
  // Riquadro e assi
  rect((0, 0), (5.5, 3.3), stroke: 0.8pt + black)
  line((0, 3.0), (0, 3.8), mark: (end: "stealth", fill: black), stroke: 1pt)
  content((0.45, 3.7), $v(t)$)
  content((-0.45, 3.0), $R A$)
  line((-0.1, 3.0), (0, 3.0))

  // Etichette asse x
  for x in range(0, 6) {
    content((x * 1.1, -0.3), str(x))
    line((x * 1.1, 0), (x * 1.1, 0.1))
  }
  content((2.75, -0.75), sans("costanti di tempo ", size: 9pt) + $tau$)

  // Curva esponenziale: v(t) = 0 per t < 0, 3*(1 - e^(-x)) per t >= 0
  line((-1.2, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.8pt))
  let pts = ()
  for k in range(0, 51) {
    let t_val = k * 5.0 / 50.0
    let x_pos = t_val * 1.1
    let y_pos = 3.0 * (1.0 - calc.exp(-t_val))
    pts.push((x_pos, y_pos))
  }
  line(..pts, stroke: (paint: red.darken(10%), thickness: 1.8pt))
})
