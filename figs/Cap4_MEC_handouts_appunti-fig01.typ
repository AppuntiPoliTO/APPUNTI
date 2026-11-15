// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 174) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let varphi = $phi$

#zap.circuit({
  
  import zap.cetz.draw: *

  // --- Bipolo a sinistra ---
  node("t1", (0, 2.6), fill: false)
  node("t2", (0, 0.2), fill: false)
  wire((0, 2.6), (1, 2.6))
  wire((0, 0.2), (1, 0.2))
  resistor("b1", (1, 2.6), (1, 0.2), variant: "iec")

  // Corrente i(t)
  line((-1.1, 2.6), (-0.25, 2.6), mark: (end: "stealth", fill: black), stroke: 1pt)
  content((-0.65, 3.05), $i(t)$)

  // Tensione v(t)
  bezier((0, 0.45), (-0.1, 2.4), (-0.55, 1.4), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((-0.95, 1.45), $v(t)$)

  // Freccia ondulata p(t)
  bezier((-0.7, 0.65), (-0.45, 0.65), (-0.57, 0.85), stroke: 1.8pt)
  bezier((-0.45, 0.65), (-0.2, 0.65), (-0.32, 0.45), stroke: 1.8pt)
  line((-0.2, 0.65), (0.35, 0.65), mark: (end: "stealth", fill: black), stroke: 1.8pt)
  content((-1.15, 0.65), $p(t)$)

  // --- Piano di Gauss a destra ---
  let ox = 3.2
  let oy = 0.2
  line((ox, oy), (ox + 3.8, oy), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  line((ox, oy), (ox, oy + 3.0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((ox + 3.5, oy - 0.35), $R e$)
  content((ox - 0.45, oy + 2.65), $I m$)

  // Fasore V (60 gradi, lunghezza 3.1)
  let vx = ox + 3.1 * calc.cos(60deg)
  let vy = oy + 3.1 * calc.sin(60deg)
  line((ox, oy), (vx, vy), mark: (end: "stealth", fill: black), stroke: 1.1pt)
  content((vx - 0.55, vy - 0.1), $macron(V)$)

  // Fasore I (22 gradi, lunghezza 2.4)
  let ix = ox + 2.4 * calc.cos(22deg)
  let iy = oy + 2.4 * calc.sin(22deg)
  line((ox, oy), (ix, iy), mark: (end: "stealth", fill: black), stroke: 1.1pt)
  content((ix + 0.4, iy + 0.15), $macron(I)$)

  // Archi degli angoli
  arc((ox + 1.5, oy), start: 0deg, stop: 22deg, radius: 1.5, mark: (end: "stealth", fill: black), stroke: 0.5pt)
  content((ox + 1.95, oy + 0.3), $varphi_I$)

  arc((ox + 1.0, oy), start: 0deg, stop: 60deg, radius: 1.0, mark: (end: "stealth", fill: black), stroke: 0.5pt)
  content((ox + 1.15, oy + 0.85), $varphi_V$)

  arc((ox + 1.9 * calc.cos(22deg), oy + 1.9 * calc.sin(22deg)), start: 22deg, stop: 60deg, radius: 1.9, mark: (end: "stealth", fill: black), stroke: 0.5pt)
  content((ox + 1.75, oy + 1.55), $varphi$)
})
