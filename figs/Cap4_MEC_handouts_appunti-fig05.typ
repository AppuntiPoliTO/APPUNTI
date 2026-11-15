// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 440) con LocalTypst
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
  let y0 = 1.6

  // Griglia
  for x in (w * 0.25, w * 0.5, w * 0.75) {
    line((x, 0), (x, h), stroke: (paint: gray.lighten(50%), thickness: 0.5pt))
  }
  line((0, y0 + 1.5), (w, y0 + 1.5), stroke: (paint: gray.lighten(50%), thickness: 0.5pt))
  line((0, y0), (w, y0), stroke: 0.7pt)
  rect((0, 0), (w, h), stroke: 0.7pt)

  // Etichette asse X
  content((0, -0.3), text(size: 8.5pt, $0$))
  content((w * 0.25, -0.3), text(size: 8.5pt, $pi / 2$))
  content((w * 0.5, -0.3), text(size: 8.5pt, $pi$))
  content((w * 0.75, -0.3), text(size: 8.5pt, $3 pi / 2$))
  content((w, -0.3), text(size: 8.5pt, $2 pi$))
  content((w / 2, -0.7), text(size: 9pt, sans("angle (rad)")))

  let N = 100
  let pts_v = ()
  let pts_i = ()
  let pts_pa = ()
  for k in range(0, N + 1) {
    let u = k / N
    let ang = 2 * calc.pi * u
    pts_v.push((u * w, y0 + 0.75 * calc.sin(ang)))
    pts_i.push((u * w, y0 + 1.5 * calc.sin(ang)))
    pts_pa.push((u * w, y0 + 1.5 * (1 - calc.cos(2 * ang))))
  }
  line(..pts_v, stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  line(..pts_i, stroke: (paint: rgb("#d95319"), thickness: 1.3pt))
  line(..pts_pa, stroke: (paint: rgb("#edb120"), thickness: 1.3pt))

  // Legenda
  rect((5.7, 2.3), (7.15, 3.65), fill: white, stroke: 0.6pt)
  line((5.8, 3.4), (6.2, 3.4), stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  content((6.3, 3.4), anchor: "west", text(size: 8pt, $v(t)$))
  line((5.8, 2.98), (6.2, 2.98), stroke: (paint: rgb("#d95319"), thickness: 1.3pt))
  content((6.3, 2.98), anchor: "west", text(size: 8pt, $i(t)$))
  line((5.8, 2.55), (6.2, 2.55), stroke: (paint: rgb("#edb120"), thickness: 1.3pt))
  content((6.3, 2.55), anchor: "west", text(size: 8pt, $p_a(t)$))
})
