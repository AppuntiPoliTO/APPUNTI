#import "../../lib.typ": *
#align(center, scale(80%, reflow: true, canvas({
  import draw: *
  
  // Assi
  line((-1.2, 0), (3.5, 0), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((3.4, -0.35), $t$)
  line((0, -0.6), (0, 2.6), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((0.55, 2.5), $e(t)$)
  
  // Gradino di tensione e(t)
  line((-1.0, 0), (0, 0), stroke: 1.3pt)
  line((0, 1.5), (3.2, 1.5), stroke: 1.3pt)
  content((-0.3, 1.5), $E$)
  
  // Indicazione istanti 0^- e 0^+
  content((0, -0.45), $0$)
  line((-0.7, -0.2), (-0.15, -0.2), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((-0.5, -0.5), $0^-$)
  line((0.7, -0.2), (0.15, -0.2), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((0.5, -0.5), $0^+$)
})))