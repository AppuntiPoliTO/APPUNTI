// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 241) con LocalTypst
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
  let w = 9.0
  let h = 5.6
  let y0 = h / 2

  // Griglia orizzontale tratteggiata
  for dy in (-2.1, -1.4, -0.7, 0.7, 1.4, 2.1) {
    line((0, y0 + dy), (w, y0 + dy), stroke: (paint: gray.lighten(30%), thickness: 0.5pt, dash: "densely-dashed"))
  }
  // Asse t centrale
  line((0, y0), (w, y0), stroke: 0.8pt)
  // Riquadro esterno
  rect((0, 0), (w, h), stroke: 0.8pt)

  // Tacche e label asse X
  for k in range(0, 6) {
    let x = k * 0.2 * w
    let lbl = str(calc.round(k * 0.2, digits: 1))
    line((x, 0), (x, -0.12), stroke: 0.8pt)
    line((x, h), (x, h + 0.12), stroke: 0.8pt)
    content((x, -0.35), text(size: 8.5pt, sans(lbl)))
    content((x, h + 0.35), text(size: 8.5pt, sans(lbl)))
  }
  content((w / 2, -0.8), text(size: 9.5pt, weight: "bold", sans("periodo")))

  // Campionamento curve: v(t) = 0.65 sin(2pi x), i(t) = 0.45 sin(2pi x + 0.6), p(t) = 2.8 v(t) i(t)
  let N = 120
  let pts_v = ()
  let pts_i = ()
  let pts_p = ()
  for k in range(0, N + 1) {
    let u = k / N
    let ang = 2 * calc.pi * u
    let vv = 1.3 * calc.sin(ang)
    let ii = 0.9 * calc.sin(ang + 0.62)
    let pp = 1.85 * vv * ii
    pts_v.push((u * w, y0 + vv))
    pts_i.push((u * w, y0 + ii))
    pts_p.push((u * w, y0 + pp))
  }
  line(..pts_v, stroke: (paint: rgb("#007000"), thickness: 1.4pt))
  line(..pts_i, stroke: (paint: rgb("#c81010"), thickness: 1.4pt))
  line(..pts_p, stroke: (paint: rgb("#0010c8"), thickness: 1.4pt))

  // Legenda
  rect((0.2, 0.2), (2.6, 1.55), fill: white, stroke: 0.7pt)
  line((0.35, 1.25), (0.85, 1.25), stroke: (paint: rgb("#007000"), thickness: 1.4pt))
  content((1.0, 1.25), anchor: "west", text(size: 8.5pt, sans("tensione")))
  line((0.35, 0.85), (0.85, 0.85), stroke: (paint: rgb("#c81010"), thickness: 1.4pt))
  content((1.0, 0.85), anchor: "west", text(size: 8.5pt, sans("corrente")))
  line((0.35, 0.45), (0.85, 0.45), stroke: (paint: rgb("#0010c8"), thickness: 1.4pt))
  content((1.0, 0.45), anchor: "west", text(size: 8.5pt, sans("p(t)")))
})
