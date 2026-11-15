// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 882) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
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

  let y_levels = (4.0, 2.2, 0.4)
  wire((0, 0.4), (0, 4.0))
  wire((8.6, 0.4), (8.6, 4.0))
  node("O", (0, 2.2))
  node("Op", (8.6, 2.2))
  content((-0.25, 2.2), anchor: "east", $O$)
  content((8.85, 2.2), anchor: "west", $O'$)

  for idx in range(3) {
    let y = y_levels.at(idx)
    let k = str(idx + 1)

    vsource("e" + k, (0, y), (3.8, y), position: 45%)
    wire((3.8, y), (5.2, y))
    resistor("z" + k, (5.2, y), (8.6, y), variant: "iec", position: 50%)

    node("m" + k, (3.8, y), fill: false)
    content((3.8, y + 0.2), anchor: "south", sans(k, weight: "bold"))

    // Etichette generatore
    content((rel: (0, 0.55), to: "e" + k + ".center"), anchor: "south", $overline(E)_#k$)
    content((rel: (0.48, 0.15), to: "e" + k + ".center"), anchor: "south", sans("+", weight: "bold"))

    // Freccia corrente di linea
    line((4.25, y + 0.2), (4.95, y + 0.2), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
    content((4.6, y + 0.35), anchor: "south", $overline(I)_#k$)

    // Etichette impedenza e tensione sul carico
    content((rel: (0, -0.45), to: "z" + k + ".center"), anchor: "north", $overline(Z)_#k$)
    bezier((7.4, y + 0.38), (6.4, y + 0.38), (6.9, y + 0.72), stroke: 0.75pt, mark: (end: "stealth", fill: black))
    content((6.9, y + 0.72), anchor: "south", $overline(E)'_#k$)
  }

  // Freccia tensione tra i centri stella V_{O'O}
  bezier((0, -0.2), (8.6, -0.2), (4.3, -1.2), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  content((4.3, -0.95), anchor: "north", $overline(V)_(O' O)$)
})
