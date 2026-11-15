// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 484) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

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

  // 1) Stella geometrica a sinistra
  let cx = 0.0
  let cy = 2.0
  let R = 2.4
  vsource("eg1", (cx, cy), (cx + R, cy), position: 50%)
  vsource("eg2", (cx, cy), (cx + R * calc.cos(120deg), cy + R * calc.sin(120deg)), position: 50%)
  vsource("eg3", (cx, cy), (cx + R * calc.cos(-120deg), cy + R * calc.sin(-120deg)), position: 50%)
  circle((cx, cy), radius: 0.06, fill: black)
  circle((cx + R, cy), radius: 0.06, fill: black)
  circle((cx + R * calc.cos(120deg), cy + R * calc.sin(120deg)), radius: 0.06, fill: black)
  circle((cx + R * calc.cos(-120deg), cy + R * calc.sin(-120deg)), radius: 0.06, fill: black)

  content((cx + 1.65, cy + 0.15), anchor: "south", sans("+", weight: "bold"))
  content((cx + 1.75, cy + 0.45), anchor: "south", text(fill: rgb("#007a14"))[$overline(E)_1$])

  content((cx - 0.95, cy + 1.35), anchor: "east", sans("+", weight: "bold"))
  content((cx - 0.35, cy + 1.55), anchor: "south", text(fill: rgb("#007a14"))[$overline(E)_2$])

  content((cx - 0.7, cy - 1.55), anchor: "north", sans("+", weight: "bold"))
  content((cx - 0.45, cy - 1.5), anchor: "west", text(fill: rgb("#007a14"))[$overline(E)_3$])

  // 2) Connessione a Y in scatola tratteggiata al centro
  let bx = 4.2
  rect((bx - 0.5, -0.3), (bx + 2.3, 4.3), stroke: (dash: "dashed", thickness: 0.8pt))
  wire((bx, 0.5), (bx, 3.5))
  node("O_mid", (bx, 2.0))
  content((bx - 0.2, 2.0), anchor: "east", $O$)

  vsource("ey1", (bx, 3.5), (bx + 2.8, 3.5), position: 45%)
  vsource("ey2", (bx, 2.0), (bx + 2.8, 2.0), position: 45%)
  vsource("ey3", (bx, 0.5), (bx + 2.8, 0.5), position: 45%)

  node("y1", (bx + 2.8, 3.5), fill: false)
  node("y2", (bx + 2.8, 2.0), fill: false)
  node("y3", (bx + 2.8, 0.5), fill: false)

  content((rel: (0, 0.55), to: "ey1.center"), anchor: "south", $overline(E)_1$)
  content((rel: (0.48, 0.15), to: "ey1.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "ey2.center"), anchor: "south", $overline(E)_2$)
  content((rel: (0.48, 0.15), to: "ey2.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "ey3.center"), anchor: "south", $overline(E)_3$)
  content((rel: (0.48, 0.15), to: "ey3.center"), anchor: "south", sans("+", weight: "bold"))

  content((bx + 2.8, 3.68), anchor: "south", sans("1"))
  content((bx + 2.8, 2.18), anchor: "south", sans("2"))
  content((bx + 2.8, 0.68), anchor: "south", sans("3"))

  // 3) Tripolo equivalente a destra
  let tx = 8.6
  rect((tx, 0.0), (tx + 1.3, 4.0), stroke: 1.2pt)
  wire((tx + 1.3, 3.5), (tx + 2.7, 3.5))
  wire((tx + 1.3, 2.0), (tx + 2.7, 2.0))
  wire((tx + 1.3, 0.5), (tx + 2.7, 0.5))

  node("t1", (tx + 2.7, 3.5), fill: false)
  node("t2", (tx + 2.7, 2.0), fill: false)
  node("t3", (tx + 2.7, 0.5), fill: false)

  content((tx + 2.7, 3.68), anchor: "south", sans("1", weight: "bold"))
  content((tx + 2.7, 2.18), anchor: "south", sans("2", weight: "bold"))
  content((tx + 2.7, 0.68), anchor: "south", sans("3", weight: "bold"))

  bezier((tx + 2.6, 2.15), (tx + 2.6, 3.35), (tx + 2.15, 2.75), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((tx + 2.2, 2.75), anchor: "east", $overline(V)_(1 2)$)

  bezier((tx + 2.6, 0.65), (tx + 2.6, 1.85), (tx + 2.15, 1.25), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((tx + 2.2, 1.25), anchor: "east", $overline(V)_(2 3)$)

  bezier((tx + 2.85, 0.6), (tx + 2.85, 3.4), (tx + 3.65, 2.0), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((tx + 3.55, 2.0), anchor: "west", $overline(V)_(3 1)$)
})
