#import "../../lib.typ": *
#fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "ieee"))

  vsource("e", (0, 0), (0, 3), label: (content: $E$, anchor: "east", distance: 6pt))
  resistor("r", (0, 3), (3.2, 3), label: (content: $R$, anchor: "north", distance: 4pt))
  wire((0, 0), (3.2, 0))

  // Carico Ru
  wire((3.2, 3), (4.6, 3))
  resistor("ru", (4.6, 3), (4.6, 0), label: (content: $R_u$, anchor: "west", distance: 6pt))
  wire((4.6, 0), (3.2, 0))

  node("n1", (0, 3), fill: false)
  node("n2", (0, 0), fill: false)
  node("A", (3.2, 3), fill: false, label: (content: sans("A", weight: "bold", size: 10pt), anchor: "north", distance: 5pt))
  node("B", (3.2, 0), fill: false, label: (content: sans("B", weight: "bold", size: 10pt), anchor: "south", distance: 5pt))

  content((0.45, 2.3), sans("+", weight: "bold"))
  line((0.65, 0.8), (0.65, 2.1), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))
  bezier((2.2, 3.65), (1.0, 3.65), (1.6, 3.95), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))
  bezier((1.4, 1.8), (1.6, 1.0), (2.1, 2.1), stroke: orange + 1.2pt, mark: (end: "stealth", fill: orange))

  // Annotazione resistenza interna
  circle((1.6, 3.45), radius: 0.35, stroke: red + 1pt)
  line((1.1, 3.5), (0.2, 4.1), stroke: red + 1pt, mark: (end: "stealth", fill: red))
  content((0.0, 4.35), text(fill: red)[#sans("R interna", size: 8pt)])

  line((3.2, 0.2), (3.2, 2.75), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((3.55, 1.9), text(fill: red)[$V$])
  line((3.6, 3), (4.2, 3), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((3.9, 3.35), text(fill: red)[$I$])
}, s: 70%)