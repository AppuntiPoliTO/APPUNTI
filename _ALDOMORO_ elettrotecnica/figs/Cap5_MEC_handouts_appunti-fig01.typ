// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 86) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

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

  let r = 3.0
  let angles = (0deg, 72deg, 144deg, 216deg, 288deg)
  let labels = ($overline(E)_1$, $overline(E)_2$, $overline(E)_3$, $overline(E)_4$, $overline(E)_5$)

  for i in range(5) {
    let ang = angles.at(i)
    let p_end = (r * calc.cos(ang), r * calc.sin(ang))
    vsource("e" + str(i + 1), (0, 0), p_end, position: 50%)
    circle(p_end, radius: 0.06, fill: black)
  }
  circle((0, 0), radius: 0.07, fill: black)

  // Segni + ed etichette posizionati senza alcuna intersezione
  content((2.15, 0.2), anchor: "south", sans("+", weight: "bold"))
  content((2.3, 0.45), anchor: "south", text(fill: rgb("#007a14"))[$overline(E)_1$])

  content((0.52, 2.05), anchor: "east", sans("+", weight: "bold"))
  content((0.95, 1.85), anchor: "west", text(fill: rgb("#007a14"))[$overline(E)_2$])

  content((-1.8, 1.15), anchor: "north", sans("+", weight: "bold"))
  content((-1.95, 0.75), anchor: "east", text(fill: rgb("#007a14"))[$overline(E)_3$])

  content((-1.65, -1.35), anchor: "south", sans("+", weight: "bold"))
  content((-1.25, -1.75), anchor: "north", text(fill: rgb("#007a14"))[$overline(E)_4$])

  content((0.78, -2.0), anchor: "west", sans("+", weight: "bold"))
  content((1.0, -1.65), anchor: "west", text(fill: rgb("#007a14"))[$overline(E)_5$])
})
