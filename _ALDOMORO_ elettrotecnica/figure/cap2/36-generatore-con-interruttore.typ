#import "../../lib.typ": *
#fig-scala({
  
  import zap.cetz.draw: *
  
  vsource("e", (0, 0), (0, 2.8), variant: "iec", label: (content: $E$, anchor: "north", distance: 6pt))
  content((-0.25, 2.1), sans("+", weight: "bold"))
  
  wire((0, 2.8), (0.8, 2.8))
  // interruttore che si chiude a t = 0
  line((0.8, 2.8), (1.9, 3.2), stroke: 0.8pt)
  bezier((1.2, 3.3), (1.4, 2.65), (1.35, 3.0), mark: (end: "stealth", fill: black), stroke: 0.6pt)
  content((1.65, 2.25), $t = 0$)
  
  wire((1.9, 2.8), (2.7, 2.8))
  wire((0, 0), (2.7, 0))
  
  node("P", (2.7, 2.8), fill: false, label: (content: sans("P"), anchor: "south", distance: 4pt))
  node("Q", (2.7, 0), fill: false, label: (content: sans("Q"), anchor: "north", distance: 4pt))
  
  // Freccia di tensione tra Q e P
  bezier((2.9, 0.2), (2.9, 2.6), (3.3, 1.4), mark: (end: "stealth", fill: black), stroke: 0.6pt)
}, s: 70%)