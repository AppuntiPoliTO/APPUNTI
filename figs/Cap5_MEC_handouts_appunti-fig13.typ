// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 569) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
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

  let rcol = rgb("#c41e1e")

  // Alternatore a sinistra
  wire((0, 0.8), (0, 3.2))
  vsource("ea1", (0, 3.2), (2.2, 3.2), position: 50%)
  vsource("ea2", (0, 2.0), (2.2, 2.0), position: 50%)
  vsource("ea3", (0, 0.8), (2.2, 0.8), position: 50%)
  for y in (3.2, 2.0, 0.8) { circle((2.2, y), radius: 0.05, fill: black) }

  content((rel: (0, 0.45), to: "ea1.center"), anchor: "south", $underline(E)_1$)
  content((rel: (0.4, 0.12), to: "ea1.center"), anchor: "south", sans("+", size: 8pt, weight: "bold"))
  content((rel: (-0.4, 0.12), to: "ea1.center"), anchor: "south", sans("-", size: 8pt, weight: "bold"))

  content((rel: (0, 0.45), to: "ea2.center"), anchor: "south", $underline(E)_2$)
  content((rel: (0.4, 0.12), to: "ea2.center"), anchor: "south", sans("+", size: 8pt, weight: "bold"))
  content((rel: (-0.4, 0.12), to: "ea2.center"), anchor: "south", sans("-", size: 8pt, weight: "bold"))

  content((rel: (0, 0.45), to: "ea3.center"), anchor: "south", $underline(E)_3$)
  content((rel: (0.4, 0.12), to: "ea3.center"), anchor: "south", sans("+", size: 8pt, weight: "bold"))
  content((rel: (-0.4, 0.12), to: "ea3.center"), anchor: "south", sans("-", size: 8pt, weight: "bold"))

  content((1.1, 0.1), anchor: "north", align(center)[#text(fill: rcol)[#sans("Alternatore", size: 9pt)\ #sans("(in MT)", size: 9pt)]])

  // Trasformatore elevatore MT/AT
  line((2.2, 3.2), (2.6, 3.2), (2.95, 2.35))
  line((2.2, 2.0), (2.8, 2.0))
  line((2.2, 0.8), (2.6, 0.8), (2.95, 1.65))
  circle((3.2, 2.0), radius: 0.42, stroke: 1.1pt)
  circle((3.65, 2.0), radius: 0.42, stroke: 1.1pt)
  line((3.9, 2.35), (4.25, 3.2), (4.8, 3.2))
  line((4.07, 2.0), (4.8, 2.0))
  line((3.9, 1.65), (4.25, 0.8), (4.8, 0.8))

  content((3.42, 3.8), anchor: "south", align(center)[#text(fill: rcol)[#sans("Trasformatore", size: 8.5pt)\ #sans("elevatore", size: 8.5pt)]])
  content((3.42, 1.3), anchor: "north", sans("MT/AT", size: 8.5pt, weight: "bold"))

  // Linea elettrica AT
  rect((4.8, 0.3), (6.2, 3.7), stroke: 1.1pt)
  content((5.5, 2.0), align(center)[#text(fill: rcol)[#sans("Linea", size: 8.5pt)\ #sans("elettrica", size: 8.5pt)\ #sans("AT", size: 8.5pt)]])
  content((5.5, 0.0), anchor: "north", align(center)[#text(fill: rcol)[#sans("Trasmissione", size: 8.5pt)\ #sans("ad alta tensione (AT)", size: 8.5pt)]])

  // Collegamento e Trasformatore abbassatore AT/MT
  for y in (3.2, 2.0, 0.8) {
    line((6.2, y), (7.0, y))
    circle((7.0, y), radius: 0.05, fill: black)
  }
  line((7.0, 3.2), (7.4, 3.2), (7.75, 2.35))
  line((7.0, 2.0), (7.6, 2.0))
  line((7.0, 0.8), (7.4, 0.8), (7.75, 1.65))
  circle((8.0, 2.0), radius: 0.42, stroke: 1.1pt)
  circle((8.45, 2.0), radius: 0.42, stroke: 1.1pt)
  line((8.7, 2.35), (9.05, 3.2), (9.6, 3.2))
  line((8.87, 2.0), (9.6, 2.0))
  line((8.7, 1.65), (9.05, 0.8), (9.6, 0.8))

  content((8.22, 3.8), anchor: "south", align(center)[#text(fill: rcol)[#sans("Trasformatore", size: 8.5pt)\ #sans("abbassatore", size: 8.5pt)]])
  content((8.22, 1.3), anchor: "north", sans("AT/MT", size: 8.5pt, weight: "bold"))

  // Linea elettrica MT
  rect((9.6, 0.3), (11.0, 3.7), stroke: 1.1pt)
  content((10.3, 2.0), align(center)[#text(fill: rcol)[#sans("Linea", size: 8.5pt)\ #sans("elettrica", size: 8.5pt)\ #sans("MT", size: 8.5pt)]])
  content((10.3, 0.0), anchor: "north", align(center)[#text(fill: rcol)[#sans("Distribuzione", size: 8.5pt)\ #sans("in Media Tensione (MT)", size: 8.5pt)]])

  // Collegamento e Trasformatore abbassatore MT/BT
  for y in (3.2, 2.0, 0.8) {
    line((11.0, y), (11.8, y))
    circle((11.8, y), radius: 0.05, fill: black)
  }
  line((11.8, 3.2), (12.2, 3.2), (12.55, 2.35))
  line((11.8, 2.0), (12.4, 2.0))
  line((11.8, 0.8), (12.2, 0.8), (12.55, 1.65))
  circle((12.8, 2.0), radius: 0.42, stroke: 1.1pt)
  circle((13.25, 2.0), radius: 0.42, stroke: 1.1pt)
  content((12.68, 2.0), text(fill: rcol)[$Delta$])
  content((13.38, 2.0), text(fill: rcol)[#sans("Y", size: 8pt, weight: "bold")])

  content((13.02, 3.8), anchor: "south", align(center)[#text(fill: rcol)[#sans("Trasformatore", size: 8.5pt)\ #sans("abbassatore", size: 8.5pt)]])
  content((13.02, 1.3), anchor: "north", sans("MT/BT", size: 8.5pt, weight: "bold"))

  // Uscita BT a 4 fili (R, S, T, N)
  let y_bt = (2.3, 2.1, 1.9, 1.7)
  let l_bt = ("R", "S", "T", "N")
  for i in range(4) {
    let yb = y_bt.at(i)
    line((13.65, yb), (14.8, yb), stroke: 0.8pt)
    content((14.9, yb), anchor: "west", text(fill: rcol)[#sans(l_bt.at(i), size: 6.5pt, weight: "bold")])
  }
  content((14.4, 1.2), anchor: "north", text(fill: rcol)[#sans("BT", size: 9.5pt, weight: "bold")])
})
