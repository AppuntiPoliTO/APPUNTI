// Figura estratta da ruote dentate.typ (riga 1261) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *
  
  // Evidenziatore giallo (sfondo titolo)
 
  
  // Circonferenze primitive (tratteggiate)
  arc((0, 4.0), start: 210deg, stop: 330deg, radius: 4.0, anchor: "origin", stroke: (dash: "dashed", thickness: 1pt))
  arc((0, -5.0), start: 30deg, stop: 150deg, radius: 5.0, anchor: "origin", stroke: (dash: "dashed", thickness: 1pt))
  
  // Circonferenze di addendum (continue)
  arc((0, 4.0), start: 210deg, stop: 330deg, radius: 4.5, anchor: "origin", stroke: 1pt)
  arc((0, -5.0), start: 30deg, stop: 150deg, radius: 5.5, anchor: "origin", stroke: 1pt)
  
  // Retta d'azione (da x=-2.5 a x=2.5)
  line((-2.5, 0.910), (2.5, -0.910), stroke: 1pt)
  
  // Rette perpendicolari dai punti di tangenza
  line((-1.285, 0.468), (-0.943, 1.408), stroke: 0.6pt)
  line((1.607, -0.585), (1.265, -1.525), stroke: 0.6pt)
  
  // Simboli di angolo retto
  line((-1.144, 0.417), (-1.093, 0.558), (-1.234, 0.609), stroke: 0.6pt)
  line((1.466, -0.534), (1.415, -0.675), (1.556, -0.726), stroke: 0.6pt)
  
  // Punti notevoli (P, a, b, T1, T2)
  circle((0, 0), radius: 0.04, fill: black, stroke: none)
  circle((-1.080, 0.393), radius: 0.06, fill: black, stroke: none)
  circle((1.040, -0.378), radius: 0.06, fill: black, stroke: none)
  circle((-1.285, 0.468), radius: 0.06, fill: black, stroke: none)
  circle((1.607, -0.585), radius: 0.06, fill: black, stroke: none)
  
  // Etichette dei punti
  content((0, -0.3), [$P$])
  content((-0.85, 0.45), [$a$])
  content((1.15, -0.55), [$b$])
  content((-1.55, 0.8), [$T_1$])
  content((1.8, -1), [$T_2$])
  
  // Quota verde ADDENDUM
  line((0, 0), (0, 0.5), mark: (start: ">", end: ">"), stroke: rgb("#008000") + 1pt)
  bezier((0.1, 0.25), (0.6, 0.8), (0.6, 0.25), stroke: rgb("#008000") + 1pt)
  content((-0.6, 1), [#text(fill: rgb("#008000"))[*ADDENDUM*]], anchor: "west")
  
  
  
  
  // Frecce di rotazione (omega 1 e omega 2)
  bezier((-0.8, 1.6), (1.5, 2.0), (-0.2, 1.2), (0.8, 1.3), mark: (end: ">"), stroke: 1pt)
  content((0.2, 1.8), [$omega_1$])
  
  bezier((1.8, -2.4), (-1.2, -2.2), (1.0, -1.8), (-0.5, -1.8), mark: (start: ">"), stroke: 1pt)
  content((0.1, -2.2), [$omega_2$])
  
  // Testo inferiore
  content((0, -3.2), [Ruota condotta])
})
