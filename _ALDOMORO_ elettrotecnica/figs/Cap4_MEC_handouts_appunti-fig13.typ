// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 865) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  
  resistor("z", (0, 0), (0, 3), variant: "iec", n: "o-o")
  
  // Freccia corrente I in alto verso il basso
  line((0.35, 2.9), (0.35, 2.0), mark: (end: "stealth", fill: black, scale: 1.2), stroke: 0.9pt + black)
  content((0.75, 2.45), $overline(I)$)
  
  // Freccia curva tensione V a sinistra dal basso verso l'alto
  bezier((-0.35, 0.2), (-0.35, 2.5), (-0.75, 1.35), mark: (end: "stealth", fill: black, scale: 1.2), stroke: 0.7pt + black)
  content((-1.0, 1.35), $overline(V)$)
})
