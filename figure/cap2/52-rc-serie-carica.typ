#import "../../lib.typ": *
#fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  vsource("e1", (0, 0), (0, 3), label: (content: $E$, anchor: "east", distance: 12pt))
  content((-0.35, 2.2), sans("+", weight: "bold"))

  switch("s1", (0, 3), (2.2, 3), closed: false)
  content((1.1, 3.45), $S$)
  content((1.1, 2.3), $t = 0$)

  resistor("r1", (2.2, 3), (5.0, 3), label: (content: $R$, anchor: "south", distance: 6pt), n: "*-*")
  bezier((4.4, 3.4), (2.8, 3.4), (3.6, 3.7), mark: (end: "stealth", fill: green.darken(30%)), stroke: (paint: green.darken(30%), thickness: 0.8pt))
  content((3.6, 3.95), text(fill: green.darken(30%))[$v_R$])

  capacitor("c1", (5.0, 3), (5.0, 0), label: (content: $C$, anchor: "south", distance: 6pt))
  line((5.35, 2.7), (5.35, 2.0), mark: (end: "stealth", fill: red.darken(10%)), stroke: (paint: red.darken(10%), thickness: 0.9pt))
  content((5.75, 2.35), text(fill: red.darken(10%))[$i_C$])

  bezier((5.45, 0.3), (5.45, 1.9), (5.65, 1.1), mark: (end: "stealth", fill: green.darken(30%)), stroke: (paint: green.darken(30%), thickness: 0.8pt))
  content((5.9, 1.1), text(fill: green.darken(30%))[$v$])

  wire((5.0, 0), (0, 0))

  bezier((2.2, 1.8), (2.2, 0.8), (2.9, 1.3), mark: (end: "stealth", fill: orange.darken(10%)), stroke: (paint: orange.darken(10%), thickness: 1.2pt))
}, s: 60%)