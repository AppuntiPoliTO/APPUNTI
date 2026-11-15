// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 317) con LocalTypst
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
  let W = 8.0
  let H = 2.2

  // Riquadro e griglia
  rect((0, -H), (W, H), stroke: 0.7pt)
  for ix in range(1, 8) {
    let x = ix * (W / 8.0)
    line((x, -H), (x, H), stroke: (paint: gray.lighten(40%), thickness: 0.5pt))
  }
  for iy in (-3, -2, -1, 0, 1, 2, 3) {
    let y = iy * (H / 4.0)
    line((0, y), (W, y), stroke: (paint: gray.lighten(40%), thickness: 0.5pt))
  }

  // Assi ed etichette numeriche
  let t_vals = ("0.0", "2.5", "5.0", "7.5", "10.0", "12.5", "15.0", "17.5", "20.0")
  for ix in range(9) {
    let x = ix * (W / 8.0)
    content((x, -H - 0.15), anchor: "north", sans(t_vals.at(ix), size: 7.5pt))
  }
  content((W / 2, -H - 0.6), anchor: "north", sans("time (ms)", size: 8.5pt))

  let v_vals = ("-100", "-75", "-50", "-25", "0", "25", "50", "75", "100")
  for iy in range(-4, 5) {
    let y = iy * (H / 4.0)
    content((-0.15, y), anchor: "east", sans(v_vals.at(iy + 4), size: 7.5pt))
  }
  content((-1.1, 0), angle: 90deg, sans("Voltage (V)", size: 8.5pt))

  // Campionamento delle tre sinusoidi (terna inversa come nel grafico: e2 a +120 deg, e3 a -120 deg)
  let N_pts = 80
  let pts1 = ()
  let pts2 = ()
  let pts3 = ()
  for k in range(N_pts + 1) {
    let x = k * (W / N_pts)
    let phi = k * (360deg / N_pts)
    let y1 = (H * 4.0 / 4.4) * calc.sin(phi)
    let y2 = (H * 4.0 / 4.4) * calc.sin(phi + 120deg)
    let y3 = (H * 4.0 / 4.4) * calc.sin(phi - 120deg)
    pts1.push((x, y1))
    pts2.push((x, y2))
    pts3.push((x, y3))
  }

  line(..pts1, stroke: (paint: rgb("#1f77b4"), thickness: 1.3pt))
  line(..pts2, stroke: (paint: rgb("#ff7f0e"), thickness: 1.3pt))
  line(..pts3, stroke: (paint: rgb("#2ca02c"), thickness: 1.3pt))
  line((0, 0), (W, 0), stroke: (paint: rgb("#d62728"), thickness: 1.5pt))

  // Legenda a destra
  let lx = W + 0.4
  rect((lx, 0.4), (lx + 3.8, H), stroke: (paint: gray, thickness: 0.6pt), radius: 0.08)
  line((lx + 0.15, H - 0.25), (lx + 0.75, H - 0.25), stroke: (paint: rgb("#1f77b4"), thickness: 1.3pt))
  content((lx + 0.9, H - 0.25), anchor: "west", sans("e1(t)", size: 7.5pt))

  line((lx + 0.15, H - 0.65), (lx + 0.75, H - 0.65), stroke: (paint: rgb("#ff7f0e"), thickness: 1.3pt))
  content((lx + 0.9, H - 0.65), anchor: "west", sans("e2(t)", size: 7.5pt))

  line((lx + 0.15, H - 1.05), (lx + 0.75, H - 1.05), stroke: (paint: rgb("#2ca02c"), thickness: 1.3pt))
  content((lx + 0.9, H - 1.05), anchor: "west", sans("e3(t)", size: 7.5pt))

  line((lx + 0.15, H - 1.45), (lx + 0.75, H - 1.45), stroke: (paint: rgb("#d62728"), thickness: 1.5pt))
  content((lx + 0.9, H - 1.45), anchor: "west", sans("e1(t)+e2(t)+e3(t)", size: 7.5pt))
})
