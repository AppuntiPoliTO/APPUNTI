// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 349) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *

  // --- Grafico p_a(t) a sinistra ---
  line((-0.3, 0), (4.5, 0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  line((0, -0.4), (0, 2.8), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((4.6, -0.3), $t$)
  content((-0.55, 2.65), $p_a(t)$)

  line((-0.1, 2.0), (0.1, 2.0), stroke: 0.8pt)
  line((0.1, 2.0), (0.7, 2.0), stroke: (dash: "dashed", thickness: 0.6pt))
  content((-0.85, 2.0), $2 V I cos varphi$)

  let pts_pa = ()
  for k in range(0, 91) {
    let x = k / 90 * 4.0
    let y = 1.0 * (1 - calc.cos(3 * calc.pi * x / 2.0))
    pts_pa.push((x, y))
  }
  line(..pts_pa, stroke: 1.2pt)

  // --- Grafico p_r(t) a destra ---
  let ox = 7.0
  line((ox - 0.3, 0.8), (ox + 4.5, 0.8), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  line((ox, -0.9), (ox, 2.8), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((ox + 4.6, 0.5), $t$)
  content((ox - 0.55, 2.65), $p_r(t)$)

  line((ox - 0.1, 1.9), (ox + 0.1, 1.9), stroke: 0.8pt)
  content((ox - 0.8, 1.9), $V I sin varphi$)

  line((ox - 0.1, -0.3), (ox + 0.1, -0.3), stroke: 0.8pt)
  content((ox - 0.9, -0.3), $-V I sin varphi$)

  let pts_pr = ()
  for k in range(0, 91) {
    let x = k / 90 * 4.0
    let y = 0.8 + 1.1 * calc.sin(3 * calc.pi * x / 2.0)
    pts_pr.push((ox + x, y))
  }
  line(..pts_pr, stroke: 1.2pt)
})
