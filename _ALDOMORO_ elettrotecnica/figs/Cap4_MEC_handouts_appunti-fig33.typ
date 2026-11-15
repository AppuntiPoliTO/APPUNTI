// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1787) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#zap.circuit({
  
  import zap.cetz.draw: *

  wire((0, 3), (6, 3))
  wire((0, 0), (6, 0))

  // Ramo 1
  node("n1t", (1.5, 3))
  node("n1b", (1.5, 0))
  switch("sw1", (1.5, 3), (1.5, 1.8), closed: false)
  capacitor("c1", (1.5, 1.8), (1.5, 0), label: (content: $C$, anchor: "north", distance: 6pt))

  // Ramo 2
  node("n2t", (3.2, 3))
  node("n2b", (3.2, 0))
  switch("sw2", (3.2, 3), (3.2, 1.8), closed: false)
  capacitor("c2", (3.2, 1.8), (3.2, 0), label: (content: $C$, anchor: "north", distance: 6pt))

  // Ramo 3
  node("n3t", (4.9, 3))
  node("n3b", (4.9, 0))
  switch("sw3", (4.9, 3), (4.9, 1.8), closed: false)
  capacitor("c3", (4.9, 1.8), (4.9, 0), label: (content: $C$, anchor: "north", distance: 6pt))
})
