// Figura estratta da Cap3_1_MEC_handouts_appunti.typ (riga 564) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  // Stile IEEE (zig-zag per R e spire tonde per L)
  set-style(zap: (variant: "ieee"))

  // --- 1. RAMO VERTICALE SERIE: R, L, C ---
  resistor("r1", (2, 6), (2, 4))
  inductor("l1", (2, 4), (2, 2))
  capacitor("c1", (2, 2), (2, 0))

  // Etichette a DESTRA dei componenti (R, L, C)
  content((2.45, 5.0), anchor: "west", $R$)
  content((2.45, 3.0), anchor: "west", $L$)
  content((2.55, 1.0), anchor: "west", $C$)

  // Etichette a SINISTRA dei componenti (Z1, Z2, Z3)
  content((1.55, 5.0), anchor: "east", $macron(Z)_1$)
  content((1.55, 3.0), anchor: "east", $macron(Z)_2$)
  content((1.45, 1.0), anchor: "east", $macron(Z)_3$)

  // --- 2. MORSETTI DI INGRESSO (a sinistra) ---
  wire((0, 6), (2, 6))
  wire((0, 0), (2, 0))

  // Freccia della corrente I sul ramo superiore d'ingresso
  line((0.8, 6), (1.2, 6), mark: (end: "stealth", fill: black, scale: 1.2))
  content((1.0, 6.25), anchor: "south", $macron(I)$)

  // --- 3. MORSETTI DI USCITA AI CAPI DI R (a destra) ---
  wire((2, 6), (4.0, 6))
  wire((2, 4), (4.0, 4))

  // --- 4. NODI DI GIUNZIONE E MORSETTI APERTI ---
  // Nodi pieni (giunzioni ai capi di R)
  node("n_top", (2, 6))
  node("n_mid", (2, 4))

  // Morsetti aperti (fill: false in Zap disegna il pallino con sfondo bianco coprendo il filo)
  node("in_p", (0, 6), fill: false)
  node("in_m", (0, 0), fill: false)
  node("out_p", (4.0, 6), fill: false)
  node("out_m", (4.0, 4), fill: false)

  // --- 5. FRECCE DI TENSIONE V e VR ---
  // Tensione totale d'ingresso V
  line((0, 0.35), (0, 5.65), stroke: 0.7pt, mark: (end: "stealth", fill: black))
  content((-0.25, 3.0), anchor: "east", $macron(V)$)

  // Tensione d'uscita VR ai capi del resistore
  line((4.0, 4.35), (4.0, 5.65), stroke: 0.7pt, mark: (end: "stealth", fill: black))
  content((4.25, 5.0), anchor: "west", $macron(V)_R$)
})
