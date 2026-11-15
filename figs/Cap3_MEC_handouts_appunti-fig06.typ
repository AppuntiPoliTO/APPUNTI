// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 315) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#zap.circuit({
  
  import zap.cetz.draw: *
  node("n0", (0, 0))
  wire((-1.5, 1.5), (0, 0), i: (content: $i_3(t) med thin$, anchor: "south-west"))
  wire((1.8, 1.0), (0, 0), i: (content: $i_2(t)$, anchor: "north-west"))
  wire((1.2, -1.5), (0, 0), i: (content: $i_1(t)$, anchor: "south-west"))
  wire((0, 0), (-1.5, -1.2), i: (content: $ med thin med thin i_4(t)$, anchor: "north-west"))
})
