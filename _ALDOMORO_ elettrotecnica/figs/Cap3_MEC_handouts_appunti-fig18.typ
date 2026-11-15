// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 906) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }

#canvas({
  import draw: *
  // Grafico temporale v(t) e i(t) in fase
  let w = 4.8
  let h = 2.0

  // Griglia verticale per T/4, T/2, 3T/4, T
  for k in (1, 2, 3) {
    let xk = k * w / 4
    line((xk, -h), (xk, h), stroke: (paint: gray.lighten(40%), thickness: 0.5pt))
  }

  // Riquadro e asse temporale centrale
  rect((0, -h), (w, h), stroke: (paint: black, thickness: 0.7pt))
  line((0, 0), (w, 0), stroke: (paint: black, thickness: 0.7pt))

  // Etichette asse tempi
  content((0, -h - 0.35), $0$)
  content((w / 4, -h - 0.35), $T / 4$)
  content((w / 2, -h - 0.35), $T / 2$)
  content((3 * w / 4, -h - 0.35), $3 T / 4$)
  content((w, -h - 0.35), $T$)

  // Campionamento sinusoidi in fase (phi = 25deg)
  let phi0 = 25deg
  let pts-v = ()
  let pts-i = ()
  let N = 60
  for n in range(0, N + 1) {
    let x = n * w / N
    let theta = 360deg * (n / N) + phi0
    pts-v.push((x, 1.55 * calc.sin(theta)))
    pts-i.push((x, 1.2 * calc.sin(theta)))
  }

  line(..pts-v, stroke: (paint: black, dash: "dashed", thickness: 1.2pt))
  line(..pts-i, stroke: (paint: black, dash: "dotted", thickness: 1.2pt))

  content((0.65, 1.75), $v(t)$)
  content((0.75, 0.85), $i(t)$)
})
