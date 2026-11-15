// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1120) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(vsource: (variant: "iec"))

  // Schema trifase completo in alto
  let y1 = 4.0
  let y2 = 2.8
  let y3 = 1.6

  wire((0, y3), (0, y1))
  node("O", (0, y2))
  content((-0.2, y2), anchor: "east", $O$)

  vsource("e1", (0, y1), (2.4, y1), position: 50%)
  vsource("e2", (0, y2), (2.4, y2), position: 50%)
  vsource("e3", (0, y3), (2.4, y3), position: 50%)

  content((rel: (0, 0.5), to: "e1.center"), anchor: "south", $overline(E)_1$)
  content((rel: (0.45, 0.15), to: "e1.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.5), to: "e2.center"), anchor: "south", $overline(E)_2$)
  content((rel: (0.45, 0.15), to: "e2.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.5), to: "e3.center"), anchor: "south", $overline(E)_3$)
  content((rel: (0.45, 0.15), to: "e3.center"), anchor: "south", sans("+", weight: "bold"))

  wire((2.4, y1), (6.4, y1))
  wire((2.4, y2), (6.4, y2))
  wire((2.4, y3), (6.4, y3))

  resistor("za1", (6.4, y1), (8.8, y1), variant: "iec")
  resistor("za2", (6.4, y2), (8.8, y2), variant: "iec")
  resistor("za3", (6.4, y3), (8.8, y3), variant: "iec")

  wire((8.8, y3), (8.8, y1))
  node("OA", (8.8, y2))
  content((9.0, y2), anchor: "west", $O_A$)

  content((rel: (0, 0.4), to: "za1.center"), anchor: "south", $overline(Z)_A$)
  content((rel: (0, 0.4), to: "za2.center"), anchor: "south", $overline(Z)_A$)
  content((rel: (0, 0.4), to: "za3.center"), anchor: "south", $overline(Z)_A$)

  // Derivazioni verticali verso il secondo carico a stella Z_B
  let xb1 = 3.5
  let xb2 = 4.8
  let xb3 = 6.1

  node("n1", (xb1, y1))
  node("n2", (xb2, y2))
  node("n3", (xb3, y3))

  content((xb1 + 0.15, y1 + 0.15), anchor: "south", sans("1", weight: "bold"))
  content((xb2 + 0.15, y2 + 0.15), anchor: "south", sans("2", weight: "bold"))
  content((xb3 + 0.15, y3 + 0.15), anchor: "south", sans("3", weight: "bold"))

  wire((xb1, y1), (xb1, 0.8))
  wire((xb2, y2), (xb2, 0.8))
  wire((xb3, y3), (xb3, 0.8))

  resistor("zb1", (xb1, 0.8), (xb1, -0.8), variant: "iec")
  resistor("zb2", (xb2, 0.8), (xb2, -0.8), variant: "iec")
  resistor("zb3", (xb3, 0.8), (xb3, -0.8), variant: "iec")

  wire((xb1, -0.8), (xb3, -0.8))
  node("OB", (xb2, -0.8))
  content((xb2, -1.05), anchor: "north", $O_B$)

  content((rel: (-0.35, 0), to: "zb1.center"), anchor: "east", $overline(Z)_B$)
  content((rel: (-0.35, 0), to: "zb2.center"), anchor: "east", $overline(Z)_B$)
  content((rel: (-0.35, 0), to: "zb3.center"), anchor: "east", $overline(Z)_B$)

  // Circuito equivalente monofase in basso
  let y_bot = -4.8
  let y_top = -2.2
  let x_left = 2.4
  let x_mid = 4.6
  let x_right = 7.0

  vsource("e1_eq", (x_left, y_bot), (x_left, y_top), position: 45%)
  wire((x_left, y_top), (x_mid, y_top))
  resistor("za_eq", (x_mid, y_top), (x_right, y_top), variant: "iec")
  wire((x_right, y_top), (x_right, y_bot))
  wire((x_left, y_bot), (x_right, y_bot))
  resistor("zb_eq", (x_mid, y_top), (x_mid, y_bot), variant: "iec")

  node("nt_eq", (x_mid, y_top))
  node("nb_eq", (x_mid, y_bot))

  content((rel: (0.55, 0), to: "e1_eq.center"), anchor: "west", $overline(E)_1$)
  content((rel: (-0.35, 0.55), to: "e1_eq.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.42), to: "za_eq.center"), anchor: "south", $overline(Z)_A$)
  content((rel: (0.42, 0), to: "zb_eq.center"), anchor: "west", $overline(Z)_B$)

  content((x_left, y_bot - 0.2), anchor: "north", $O$)
  content((x_mid, y_bot - 0.2), anchor: "north", $O_A$)
  content((x_right, y_bot - 0.2), anchor: "north", $O_B$)
})
