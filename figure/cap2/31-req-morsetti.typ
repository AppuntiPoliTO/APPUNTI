#import "../../lib.typ": *
#grid(
  columns: 2,
  column-gutter: 1em, row-gutter: 0.4em, align: center + bottom,
fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  // Morsetti A e C
  wire((0, 2.8), (0.8, 2.8), n: "o-")
  content((-0.35, 2.8), sans("A", weight: "bold"))
  wire((0, 0), (0.8, 0), n: "o-")
  content((-0.35, 0), sans("C", weight: "bold"))

  // Maglia resistiva
  resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "east", distance: 5pt))
  resistor("r1", (0.8, 2.8), (3.2, 2.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
  resistor("r3", (0.8, 0), (3.2, 0), label: (content: $R_3$, anchor: "north", distance: 5pt))
  resistor("r2", (3.2, 0), (3.2, 2.8), n: "*-*", label: (content: $R_2$, anchor: "west", distance: 5pt))

  // Morsetti B e D
  wire((3.2, 2.8), (4.0, 2.8), n: "-o")
  content((4.0, 3.25), sans("B", weight: "bold"))
  wire((3.2, 0), (4.0, 0), n: "-o")
  content((4.0, -0.45), sans("D", weight: "bold"))

  // Generatore di prova rosso tra B e D
  set-style(zap: (stroke: (paint: red, thickness: 1pt)))
  wire((4.0, 2.8), (5.2, 2.8))
  wire((4.0, 0), (5.2, 0))
  vsource("vp", (5.2, 0), (5.2, 2.8))
  content((5.65, 2.1), text(fill: red, sans("+", size: 12pt, weight: "bold")))
}, s: 65%),
fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  // Generatore di prova rosso tra A e C
   {
    set-style(zap: (stroke: (paint: red, thickness: 1pt)))
    wire((-1.2, 2.8), (0, 2.8))
    wire((-1.2, 0), (0, 0))
    vsource("vp", (-1.2, 0), (-1.2, 2.8))
    content((-0.7, 2.0), text(fill: red, sans("+", size: 12pt, weight: "bold")))
  }

  // Morsetti A e C
  wire((0, 2.8), (0.8, 2.8), n: "o-")
  content((0, 3.25), sans("A", weight: "bold"))
  wire((0, 0), (0.8, 0), n: "o-")
  content((0, -0.45), sans("C", weight: "bold"))

  // Maglia resistiva
  resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "west", distance: 5pt))
  resistor("r1", (0.8, 2.8), (3.2, 2.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
  resistor("r3", (0.8, 0), (3.2, 0), label: (content: $R_3$, anchor: "north", distance: 5pt))
  resistor("r2", (3.2, 0), (3.2, 2.8), n: "*-*", label: (content: $R_2$, anchor: "west", distance: 5pt))

  // Morsetti B e D aperti
  wire((3.2, 2.8), (4.0, 2.8), n: "-o")
  content((4.0, 3.25), sans("B", weight: "bold"))
  wire((3.2, 0), (4.0, 0), n: "-o")
  content((4.0, -0.45), sans("D", weight: "bold"))
}, s: 65%),
[(a) prova tra $B$ e $D$],
[(b) prova tra $A$ e $C$]
)