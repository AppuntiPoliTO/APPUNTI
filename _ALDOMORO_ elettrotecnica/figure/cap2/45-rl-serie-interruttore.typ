#import "../../lib.typ": *
#fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  vsource("e1", (0, 0), (0, 3), label: (content: $E$, anchor: "north", distance: 6pt))
  content((-0.35, 2.2), sans("+", weight: "bold"))

  switch("s1", (0, 3), (2.5, 3), closed: false, label: (content: $S$, anchor: "north", distance: 8pt))
  content((1.4, 2), $t = 0$)

  node("A", (2.5, 3), fill: true, label: (content: text(fill: red.darken(10%))[#sans("A", weight: "bold")], anchor: "north", distance: 6pt))
  node("B", (2.5, 0), fill: true, label: (content: text(fill: red.darken(10%))[#sans("B", weight: "bold")], anchor: "south", distance: 6pt))

  resistor("r1", (2.5, 3), (5.5, 3), label: (content: $R$, anchor: "south", distance: 6pt))
  inductor("l1", (5.5, 3), (5.5, 0), label: (content: $L$, anchor: "east", distance: 6pt))
  wire((5.5, 0), (0, 0))

  // Corrente i
  line((5.8, 2.8), (5.8, 2.1), mark: (end: "stealth", fill: black))
  content((6.1, 2.45), $i$)

  // Frecce tensioni VR, VL e VAB
  bezier((4.8, 3.4), (3.2, 3.4), (4.0, 3.8), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((4.0, 3.95), $v_R$)

  bezier((5.1, 0.6), (5.1, 2.2), (4.7, 1.4), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((4.4, 1.4), $v_L$)

  line((2.5, 0.4), (2.5, 2.6), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 1pt))
  content((2.95, 1.5), text(fill: red.darken(10%))[$V_(A B)$])
}, s: 60%)