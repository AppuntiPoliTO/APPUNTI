// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1720) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  // Impedenza di linea
  resistor("zl", (0.5, 3), (2.5, 3), variant: "iec", label: (content: $macron(Z)_"l"$, anchor: "south", distance: 6pt))
  wire((0, 3), (0.5, 3))
  
  // Corrente I'
  line((0.1, 3.35), (0.8, 3.35), mark: (end: "stealth", fill: black))
  content((0.45, 3.8), $macron(I)'$)

  // Fili principali e nodi
  node("n1", (4.2, 3))
  node("n2", (4.2, 0))
  wire((2.5, 3), (6.8, 3))
  wire((0, 0), (6.8, 0))

  // Sezioni tratteggiate per il bilancio di Boucherot
  line((3.1, -0.5), (3.1, 3.6), stroke: (dash: "dashed", thickness: 0.8pt))
  line((2.7, -0.4), (3.5, -0.4), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  content((3.1, -0.9), $P', Q'$)

  line((5.3, -0.5), (5.3, 3.6), stroke: (dash: "dashed", thickness: 0.8pt))
  line((4.9, -0.4), (5.7, -0.4), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  content((5.3, -0.9), $P, Q$)

  // Condensatore
  capacitor("c", (4.2, 3), (4.2, 0), label: (content: $C$, anchor: "south", distance: 8pt))
  line((4.5, 2.7), (4.5, 1.9), mark: (end: "stealth", fill: black))
  content((4.9, 2.3), $macron(I)_C$)

  // Carico
  resistor("zu", (6.8, 3), (6.8, 0), variant: "iec", label: (content: $macron(Z)_U$, anchor: "west", distance: 6pt))
  line((7.1, 2.8), (7.1, 2.0), mark: (end: "stealth", fill: black))
  content((7.45, 2.4), $macron(I)$)

  // Tensione V
  bezier((6.1, 0.6), (6.1, 2.4), (5.7, 1.5), mark: (end: "stealth", fill: black))
  content((5.5, 1.5), $macron(V)$)
})
