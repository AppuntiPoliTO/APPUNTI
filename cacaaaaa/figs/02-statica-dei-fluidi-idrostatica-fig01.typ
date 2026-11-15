// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 30) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 3cm, {
  import draw: *
  // Funzione di proiezione per simulare il 3D
  let p(x, y, z) = (x - 0.4*z, y - 0.4*z)
  
  // Assi
  line(p(0,0,0), p(1.5,0,0), mark: (end: "stealth", fill: c-geo), name: "y")
  content("y.end", [$y$], anchor: "west", padding: 0.1)
  line(p(0,0,0), p(0,1.5,0), mark: (end: "stealth", fill: c-geo), name: "z")
  content("z.end", [$z$], anchor: "south", padding: 0.1)
  line(p(0,0,0), p(0,0,1.5), mark: (end: "stealth", fill: c-geo), name: "x")
  content("x.end", [$x$], anchor: "north-east", padding: 0.1)
  
  // Cubetto
  line(p(0.5,0.5,0.5), p(1,0.5,0.5), p(1,1,0.5), p(0.5,1,0.5), close: true)
  line(p(0.5,0.5,1), p(1,0.5,1), p(1,1,1), p(0.5,1,1), close: true)
  line(p(0.5,0.5,0.5), p(0.5,0.5,1))
  line(p(1,0.5,0.5), p(1,0.5,1))
  line(p(1,1,0.5), p(1,1,1))
  line(p(0.5,1,0.5), p(0.5,1,1))
  
  // Forze di pressione (solo lungo x per chiarezza)
  line(p(0.2,0.75,0.75), p(0.5,0.75,0.75), mark: (end: "stealth", fill: c-forza), stroke: (thickness: 1.1pt, paint: c-forza))
  content(p(0.06,0.75,0.75), text(c-forza)[$p dif y dif z$], anchor: "south", padding: 0.1)
  
  line(p(1.4,0.75,0.75), p(1,0.75,0.75), mark: (end: "stealth", fill: c-forza), stroke: (thickness: 1.1pt, paint: c-forza))
  content(p(1.6,0.75,0.75), text(c-forza)[$(p + (partial p)/(partial x) dif x) dif y dif z$], anchor: "south", padding: 0.1)
  
  // Gravità
  line(p(0.75,0.5,0.75), p(0.75,0.1,0.75), mark: (end: "stealth", fill: c-forza), stroke: (thickness: 1.1pt, paint: c-forza))
  content(p(0.75,0.3,0.55), text(c-forza)[$rho arrow(g) dif cal(V)$], anchor: "west", padding: 0.1)
})
