// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 707) con LocalTypst
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

#canvas(length: 1cm, {
  import draw: *
  
  // Riquadro del grafico
  rect((0, -2), (10, 4), stroke: 0.6pt + black)
  // Asse zero
  line((0, 0), (10, 0), stroke: 0.5pt + black)
  
  // Tacche asse x
  for (x, lbl) in ((0, $0$), (2.5, $pi/2$), (5, $pi$), (7.5, $3pi/2$), (10, $2pi$)) {
    line((x, -2), (x, -1.85), stroke: 0.5pt + black)
    line((x, 4), (x, 3.85), stroke: 0.5pt + black)
    content((x, -2.35), lbl)
  }
  content((5, -2.9), sans("angle (rad)", size: 10pt))
  
  // Tacche asse y
  for y in (-1, 0, 1, 2, 3) {
    line((0, y), (0.15, y), stroke: 0.5pt + black)
    line((10, y), (9.85, y), stroke: 0.5pt + black)
  }
  
  // Parametri: phi = -pi/6, phi_I = pi/6
  // pa(t) = A * cos(phi) * (1 - cos(2*theta + pi/3))
  // pr(t) = A * sin(phi) * sin(2*theta + pi/3)
  // p(t) = pa(t) + pr(t)
  let N = 100
  let pts-pa = ()
  let pts-pr = ()
  let pts-p = ()
  for k in range(N + 1) {
    let x = 10.0 * k / N
    let th = 2.0 * calc.pi * k / N
    let arg = 2.0 * th + calc.pi / 3.0
    let pa = 1.9 * (1.0 - calc.cos(arg))
    let pr = -1.1 * calc.sin(arg)
    let p = pa + pr
    pts-pa.push((x, pa))
    pts-pr.push((x, pr))
    pts-p.push((x, p))
  }
  
  line(..pts-p, stroke: 1.5pt + rgb("#0072bd"))
  line(..pts-pa, stroke: 1.5pt + rgb("#d95319"))
  line(..pts-pr, stroke: 1.5pt + rgb("#edb120"))
  
  // Legenda
  rect((3.8, 2.0), (5.3, 3.8), fill: white, stroke: 0.5pt + black)
  line((3.95, 3.45), (4.4, 3.45), stroke: 1.5pt + rgb("#0072bd"))
  content((4.8, 3.45), $p(t)$)
  line((3.95, 2.85), (4.4, 2.85), stroke: 1.5pt + rgb("#d95319"))
  content((4.8, 2.85), $p_a (t)$)
  line((3.95, 2.25), (4.4, 2.25), stroke: 1.5pt + rgb("#edb120"))
  content((4.8, 2.25), $p_r (t)$)
})
