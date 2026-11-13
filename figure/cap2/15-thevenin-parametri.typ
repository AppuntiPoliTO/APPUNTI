#import "../../lib.typ": *
#grid(
  columns: 2,
  column-gutter: 1em, row-gutter: 0.4em, align: center + bottom,
fig-scala({
  
  import zap.cetz.draw: *

  rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
  content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

  wire((2.6, 2.0), (3.4, 2.0))
  wire((2.6, 0.4), (3.4, 0.4))
  circle((3.45, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
  circle((3.45, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
  content((3.4, 2.3), sans("A", size: 11pt))
  content((3.4, 0.7), sans("B", size: 11pt))

  bezier((3.8, 0.45), (3.8, 1.95), (4.1, 1.2), mark: (end: "stealth", fill: black, scale: 0.7))
  content((4.5, 1.2), $E_"eq"$)
}, s: 80%),
fig-scala({
  
  import zap.cetz.draw: *

  rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
  content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt) \ #sans("Passivata", size: 11pt)])

  wire((2.6, 2.0), (3.4, 2.0))
  wire((2.6, 0.4), (3.4, 0.4))
  circle((3.45, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
  circle((3.45, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
  content((3.4, 2.3), sans("A", size: 11pt))
  content((3.4, 0.7), sans("B", size: 11pt))

  line((4.2, 1.2), (3.6, 1.2), mark: (end: "stealth", fill: black, scale: 0.7))
  content((5.1, 1.2), $R_"eq" = R_"TH"$)
}, s: 80%),
[(a) a vuoto: $E_"TH"$],
[(b) passivata: $R_"TH"$]
)