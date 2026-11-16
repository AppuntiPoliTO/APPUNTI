#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 1.65cm, {
  import draw: *
  let (H, r1, tw, r2, h, getto) = (1.7, 0.55, 0.13, 2.25, 0.45, 0.6)
  axis-line((0, -1.3), (0, H + 1.15))
  bobina-geo(H: H, r1: r1, tw: tw, r2: r2, h: h, getto: getto, linee: ((0.43, 0.2),), profilo: false)
  // pressioni
  lab((0, H - 0.4), $P_A = "cost"$, bg: true)
  lab((1.5, 0.6 * h), $P_c (r)$)
  for x in (0.55, 1.25, 1.95) {
    for s in (1, -1) { vettore((s * x, -0.55), (s * x, -0.1), col: c-forza) }
  }
  lab((0.9, -0.55), $P_0$, col: c-forza, anchor: "north", pad: 0.06)
  // quote e asse radiale
  dim((0, H), (r1, H), $r_1$, off: 0.3, anchor: "south", lab-off: (0, 0.02), bg: false)
  line((r2, h + tw), (r2, H + 0.92), stroke: sp-aux + c-geo)
  dim((0, H + 0.8), (r2, H + 0.8), $r_2$)
  draw.line((0, -1.1), (r2 + 0.9, -1.1), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((r2 + 0.9, -1.1), $r$, anchor: "west", pad: 0.08)
})
