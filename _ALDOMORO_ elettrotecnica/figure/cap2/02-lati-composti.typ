#import "../../lib.typ": *
#grid(
  columns: 2,
  column-gutter: 1em, row-gutter: 0.4em, align: center + bottom,
fig-scala({
  import zap.cetz.draw: *
  
  
  set-style(resistor: (variant: "ieee"))

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((5.4, 0), (5.7, 0.4))
  line((5.4, 0), (5.7, -0.4))

  resistor("r1", (0, 0), (1.8, 0), label: (content: $R_1$, anchor: "north", distance: 4pt), n: "o-")
  resistor("r2", (1.8, 0), (3.6, 0), label: (content: $R_2$, anchor: "north", distance: 4pt))
  resistor("r3", (3.6, 0), (5.4, 0), label: (content: $R_3$, anchor: "north", distance: 4pt), n: "-o")

  line((0.15, 0), (0.55, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.25, 0.45), $I$)

  bezier((5.1, -0.45), (0.3, -0.45), (2.7, -1.1), mark: (end: "stealth", fill: black))
  content((2.7, -1.1), $V$)
}, s: 70%),
fig-scala({
  
  import zap.cetz.draw: *
  set-style(zap: (variant: "iec"))

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((5.4, 0), (5.7, 0.4))
  line((5.4, 0), (5.7, -0.4))

  vsource("e1", (0, 0), (1.8, 0), label: (content: $E_1$, anchor: "north", distance: 5pt), n: "o-")
  vsource("e2", (1.8, 0), (3.6, 0), label: (content: $E_2$, anchor: "north", distance: 5pt))
  vsource("e3", (3.6, 0), (5.4, 0), label: (content: $E_3$, anchor: "north", distance: 5pt), n: "-o")

  content((1.35, -0.45), sans("+", size: 10pt, weight: "bold"))
  content((3.15, -0.45), sans("+", size: 10pt, weight: "bold"))
  content((4.05, -0.45), sans("+", size: 10pt, weight: "bold"))

  line((0.15, 0), (0.5, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.3, 0.35), $I$)

  bezier((5.1, -0.65), (0.3, -0.65), (2.7, -1.3), mark: (end: "stealth", fill: black))
  content((2.7, -1.3), $V$)
}, s: 70%),
[(a) serie di resistori],
[(b) serie di generatori],
fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((4.8, 0), (5.1, 0.4))
  line((4.8, 0), (5.1, -0.4))

  resistor("rk", (0, 0), (2.4, 0), label: (content: $R_k$, anchor: "south", distance: 4pt), n: "o-")
  vsource("ek", (2.4, 0), (4.8, 0), label: (content: $E_k$, anchor: "north", distance: 5pt), n: "-o")

  content((4.1, 0.35), sans("+", size: 10pt, weight: "bold"))
  line((0.15, 0), (0.55, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.35, 0.35), $I$)

  bezier((0.3, -0.65), (4.5, -0.65), (2.4, -1.3), mark: (end: "stealth", fill: black))
  content((4.2, -1.2), $V$)
}, s: 70%),
fig-scala({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), isource: (variant: "iec"))

  // Terminali esterni e nodi di giunzione
  wire((0, 0), (1.2, 0), n: "o-*")
  resistor("rk", (1.2, 0), (4.8, 0), label: (content: $R_k$, anchor: "south", distance: 6pt))
  wire((4.8, 0), (6.0, 0), n: "*-o")

  // Ramo in parallelo con generatore di corrente Ak
  wire((1.2, 0), (1.2, 1.8))
  isource("ak", (1.2, 1.8), (4.8, 1.8))
  wire((4.8, 1.8), (4.8, 0))

  // Frecce di corrente Ik e Ak sui rami
  line((0.7, 0), (0.4, 0), mark: (end: "stealth", fill: black, scale: 0.9))
  content((0.6, 0.38), $I_k$)

  line((1.9, 1.8), (1.6, 1.8), mark: (end: "stealth", fill: black, scale: 0.9))
  content((1.8, 2.2), $A_k$)

  // Freccia di tensione Vk curva sotto
  bezier((5.7, -0.6), (0.3, -0.6), (3.0, -1.35), mark: (end: "stealth", fill: black))
  content((3.0, -1.35), $V_k$)
}, s: 70%),
[(c) lato attivo serie],
[(d) lato attivo parallelo]
)