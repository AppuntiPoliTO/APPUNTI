// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 614) con LocalTypst
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
  let w = 8.4
  let h = 4.6
  let y0 = h / 2

  for x in (w * 0.25, w * 0.5, w * 0.75) {
    line((x, 0), (x, h), stroke: (paint: gray.lighten(50%), thickness: 0.5pt))
  }
  line((0, y0), (w, y0), stroke: 0.7pt)
  rect((0, 0), (w, h), stroke: 0.7pt)

  content((0, -0.3), text(size: 8.5pt, $0$))
  content((w * 0.25, -0.3), text(size: 8.5pt, $pi / 2$))
  content((w * 0.5, -0.3), text(size: 8.5pt, $pi$))
  content((w * 0.75, -0.3), text(size: 8.5pt, $3 pi / 2$))
  content((w, -0.3), text(size: 8.5pt, $2 pi$))
  content((w / 2, -0.7), text(size: 9pt, sans("angle (rad)")))

  // Se v(t) = sin(x), allora i(t) = -cos(x) e p_r(t) = -sin(2x)
  let N = 100
  let pts_v = ()
  let pts_i = ()
  let pts_pr = ()
  for k in range(0, N + 1) {
    let u = k / N
    let ang = 2 * calc.pi * u
    pts_v.push((u * w, y0 + 1.05 * calc.sin(ang)))
    pts_i.push((u * w, y0 - 2.3 * calc.cos(ang)))
    pts_pr.push((u * w, y0 - 2.3 * calc.sin(2 * ang)))
  }
  line(..pts_v, stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  line(..pts_i, stroke: (paint: rgb("#d95319"), thickness: 1.3pt))
  line(..pts_pr, stroke: (paint: rgb("#edb120"), thickness: 1.3pt))

  // Legenda
  rect((0.6, 3.15), (2.05, 4.45), fill: white, stroke: 0.6pt)
  line((0.7, 4.2), (1.1, 4.2), stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  content((1.2, 4.2), anchor: "west", text(size: 8pt, $v(t)$))
  line((0.7, 3.78), (1.1, 3.78), stroke: (paint: rgb("#d95319"), thickness: 1.3pt))
  content((1.2, 3.78), anchor: "west", text(size: 8pt, $i(t)$))
  line((0.7, 3.35), (1.1, 3.35), stroke: (paint: rgb("#edb120"), thickness: 1.3pt))
  content((1.2, 3.35), anchor: "west", text(size: 8pt, $p_r(t)$))
})
