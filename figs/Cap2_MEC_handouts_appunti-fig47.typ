// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2390) con LocalTypst
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
  rect((0, 0), (5.5, 3.3), stroke: 0.8pt + black)
  line((0, 2.8), (5.5, 2.8), stroke: (paint: black, dash: "dashed", thickness: 0.6pt))
  content((-0.45, 2.8), $E / R$)
  content((0.35, 3.0), $i(t)$)

  for x in range(0, 6) {
    content((x * 1.1, -0.3), str(x))
    line((x * 1.1, 0), (x * 1.1, 0.1))
    line((x * 1.1, 3.3), (x * 1.1, 3.2))
  }
  content((2.75, -0.7), sans("costanti di tempo", size: 9pt, weight: "bold"))

  line((-1.2, 0), (0, 0), stroke: (paint: black, thickness: 1.8pt))
  let pts = ()
  for k in range(0, 51) {
    let t_val = k * 5.0 / 50.0
    let x_pos = t_val * 1.1
    let y_pos = 2.8 * (1.0 - calc.exp(-t_val))
    pts.push((x_pos, y_pos))
  }
  line(..pts, stroke: (paint: black, thickness: 1.8pt))
})
