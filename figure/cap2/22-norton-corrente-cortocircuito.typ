#import "../../lib.typ": *
#fig-scala({
  
  import zap.cetz.draw: *

  rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
  content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

  wire((2.6, 2.0), (4.0, 2.0))
  wire((2.6, 0.4), (4.0, 0.4))
  wire((4.0, 2.0), (4.0, 0.4))
  circle((3.3, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
  circle((3.3, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
  content((3.3, 2.3), sans("A", size: 11pt))
  content((3.3, 0.7), sans("B", size: 11pt))

  line((4.0, 1.4), (4.0, 1.0), mark: (end: "stealth", fill: black, scale: 0.7))
  content((4.95, 1.2), $quad A_"eq" = A_"NOR"$)
}, s: 75%)