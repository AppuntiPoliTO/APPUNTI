// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1679) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *

  let O = (0, 0)
  let B = (4.5, 0)
  let T_old = (4.5, 3.4)
  let T_new = (4.5, 1.3)

  // Base P
  line(O, B, stroke: 1.2pt)
  content((2.25, -0.4), $P$)

  // Ipotenusa S (blu)
  line(O, T_old, stroke: (paint: blue, thickness: 1.2pt))
  content((4.2, 3.65), text(fill: blue)[$S$])

  // Ipotenusa S' (verde)
  line(O, T_new, stroke: (paint: rgb("#2e7d32"), thickness: 1.2pt))
  content((4.1, 0.85), text(fill: rgb("#2e7d32"))[$S'$])

  // Cateto verticale Q' (verde)
  line(B, T_new, stroke: (paint: rgb("#2e7d32"), thickness: 1.5pt))
  content((5.55, 0.65), text(fill: rgb("#2e7d32"))[$quad quad Q' = Q + Q_C$])

  // Segmento Qc (arancione)
  line(T_new, T_old, stroke: (paint: rgb("#d97706"), thickness: 2pt))
  content((4.15, 2.35), text(fill: rgb("#d97706"))[$Q_C$])

  // Linea di quota totale Q (blu)
  line((4.65, 0), (4.65, 3.4), stroke: (paint: blue, thickness: 1pt))
  content((4.95, 1.8), text(fill: blue)[$Q$])

  // Archi angoli
  arc((1.5, 0), start: 0deg, stop: 37deg, radius: 1.5, stroke: (paint: blue, thickness: 0.9pt), mark: (end: "stealth", fill: blue))
  content((1.7, 0.75), text(fill: blue)[$phi$])

  arc((2.1, 0), start: 0deg, stop: 16.1deg, radius: 2.1, stroke: (paint: rgb("#2e7d32"), thickness: 0.9pt), mark: (end: "stealth", fill: rgb("#2e7d32")))
  content((2.45, 0.32), text(fill: rgb("#2e7d32"))[$phi'$])
})
