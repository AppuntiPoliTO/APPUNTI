// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 409) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.6cm, {
  import draw: *
  
  // Riempimento fluido manometrico
  line(
    (2.5, 2.0),
    (2.5, 0.5),
    (2.634, 0.0),
    (3.0, -0.366),
    (3.5, -0.5),
    (8.0, -0.5),
    (8.5, -0.366),
    (8.866, 0.0),
    (9.0, 0.5),
    (9.0, 1.0),
    (8.5, 1.0),
    (8.5, 0.5),
    (8.433, 0.25),
    (8.25, 0.067),
    (8.0, 0.0),
    (3.5, 0.0),
    (3.25, 0.067),
    (3.067, 0.25),
    (3.0, 0.5),
    (3.0, 2.0),
    close: true, fill: c-fluido, stroke: none
  )
  
  // Contorno serbatoio sinistro
  line((1.0, 3.0), (1.0, 5.0), stroke: 1pt)
  line((1.5, 5.5), (4.0, 5.5), stroke: 1pt)
  line((4.5, 5.0), (4.5, 3.0), stroke: 1pt)
  line((4.0, 2.5), (3.0, 2.5), stroke: 1pt)
  line((2.5, 2.5), (1.5, 2.5), stroke: 1pt)
  arc((1.5, 3.0), start: 180deg, stop: 270deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((1.5, 5.0), start: 90deg, stop: 180deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((4.0, 5.0), start: 0deg, stop: 90deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((4.0, 3.0), start: 270deg, stop: 360deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  
  // Contorno serbatoio destro
  line((7.0, 3.0), (7.0, 5.0), stroke: 1pt)
  line((7.5, 5.5), (10.0, 5.5), stroke: 1pt)
  line((10.5, 5.0), (10.5, 3.0), stroke: 1pt)
  line((10.0, 2.5), (9.0, 2.5), stroke: 1pt)
  line((8.5, 2.5), (7.5, 2.5), stroke: 1pt)
  arc((7.5, 3.0), start: 180deg, stop: 270deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((7.5, 5.0), start: 90deg, stop: 180deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((10.0, 5.0), start: 0deg, stop: 90deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((10.0, 3.0), start: 270deg, stop: 360deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  
  // Contorno tubo a U
  line((2.5, 2.5), (2.5, 0.5), stroke: 1pt)
  line((3.0, 2.5), (3.0, 0.5), stroke: 1pt)
  line((3.5, -0.5), (8.0, -0.5), stroke: 1pt)
  line((3.5, 0.0), (8.0, 0.0), stroke: 1pt)
  line((9.0, 2.5), (9.0, 0.5), stroke: 1pt)
  line((8.5, 2.5), (8.5, 0.5), stroke: 1pt)
  arc((3.5, 0.5), start: 180deg, stop: 270deg, radius: 1.0, anchor: "origin", stroke: 1pt)
  arc((8.0, 0.5), start: 270deg, stop: 360deg, radius: 1.0, anchor: "origin", stroke: 1pt)
  arc((3.5, 0.5), start: 180deg, stop: 270deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  arc((8.0, 0.5), start: 270deg, stop: 360deg, radius: 0.5, anchor: "origin", stroke: 1pt)
  
  // Superfici menischi
  line((2.5, 2.0), (3.0, 2.0), stroke: (paint: c-norm, thickness: 1pt))
  line((8.5, 1.0), (9.0, 1.0), stroke: (paint: c-norm, thickness: 1pt))
  
  // Linee di riferimento orizzontali per A e B
  line((5.0, 1.0), (8.5, 1.0), stroke: (thickness: 0.6pt))
  line((3.0, 2.0), (5.5, 2.0), stroke: (thickness: 0.6pt))
  
  // Linee dei Piani dei Carichi Idrostatici (PCI)
  line((0.5, 6.5), (7.0, 6.5), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((6.0, 7.5), (11.0, 7.5), stroke: (paint: c-aux, thickness: 0.6pt))
  
  // Frecce e quote
  line((4.8, 2.0), (4.8, 6.5), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: (thickness: 0.6pt))
  line((5.3, 1.0), (5.3, 2.0), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: (thickness: 0.6pt))
  line((6.5, 6.5), (6.5, 7.5), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: (thickness: 0.6pt))
  
  // Testi e formule
  content((2.75, 4.0), text(c-geo)[$gamma$])
  content((8.75, 4.0), text(c-geo)[$gamma$])
  
  content((2.2, 2.0), text(c-geo)[$B$], anchor: "east")
  content((9.3, 1.0), text(c-geo)[$A$], anchor: "west")
  
  content((5.1, 4.25), text(c-geo)[$b$])
  content((5.6, 1.5), text(c-geo)[$Delta$])
  content((6.8, 7.0), text(c-geo)[$delta$])
  
  content((0.4, 6.5), text(c-aux)[$"pci"_1$], anchor: "east")
  content((11.1, 7.5), text(c-aux)[$"pci"_2$], anchor: "west")
})
