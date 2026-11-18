// Figura non inclusa nel capitolo (conservata).
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 1.2cm, {
  import draw: *
  let (H, r1, tw, r2, h, getto) = (3.0, 0.55, 0.13, 2.25, 0.45, 0.75)
  axis-line((0, -1.05), (0, H + 1.3))
  bobina-geo(H: H, r1: r1, tw: tw, r2: r2, h: h, getto: getto)
  // quote
  dim((0, H), (r1, H), $r_1$, off: 0.35, anchor: "south", lab-off: (0, 0.02), bg: false)
  line((r2, h + tw), (r2, H + 1.07), stroke: sp-aux + c-geo)
  dim((0, H + 0.95), (r2, H + 0.95), $r_2$)
  dim((-r2, 0), (-r2, h), $h$, off: getto + 0.3, anchor: "east", lab-off: (-0.06, 0), bg: false)
  // zone
  lab((0, H - 1.35), $A$, bg: true)
  leader((-0.95, -0.85), (-0.45, 0.2), $B$, anchor: "north")
  leader((-1.75, -0.85), (-1.55, 0.2), $C$, anchor: "north")
  leader((r2 + getto + 0.25, -0.75), (r2 + 0.45, 0.2), $D$, anchor: "north-west")
})
