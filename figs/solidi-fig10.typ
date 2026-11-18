// Figura estratta da solidi.typ (riga 707) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *
  
  // Riempimenti
  circle((0, 0), radius: 1.5, fill: rgb("dcded0"), stroke: none)
  line((-0.174, 1.992), (-0.218, 2.490), (-0.647, 2.415), (-1.057, 2.266), (-0.845, 1.813), (-0.518, 1.932), close: true, fill: rgb("989b9d"), stroke: none)

  // Contorni base
  circle((0, 0), radius: 3.0, stroke: 1pt + black)
  circle((0, 0), radius: 1.5, stroke: 1pt + black)
  
  // Mirino centrale
  line((-0.7, 0), (0.7, 0), stroke: (paint: black, thickness: 1.5pt, dash: "dash-dotted"))
  line((0, -0.7), (0, 0.7), stroke: (paint: black, thickness: 1.5pt, dash: "dash-dotted"))

  // Linee radiali tratteggiate (cuneo)
  line((0, 0), (-0.262, 2.989), stroke: (paint: rgb("45525e"), thickness: 1.5pt, dash: "dotted"))
  line((0, 0), (-1.268, 2.719), stroke: (paint: rgb("45525e"), thickness: 1.5pt, dash: "dotted"))

  // Vettori esterni (p_e)
  // Tratteggiati
  line((4.136, 0.729), (2.954, 0.521), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt, dash: "dotted"))
  // Continui
  line((0.366, 4.184), (0.262, 2.989), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((1.436, 3.947), (1.026, 2.819), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((2.409, 3.441), (1.721, 2.458), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((3.217, 2.700), (2.298, 1.928), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((3.806, 1.775), (2.719, 1.268), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))

  // Vettori interni (p_i)
  // Tratteggiati
  line((-1.149, 0.964), (-1.762, 1.478), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt, dash: "dotted"))
  line((-1.149, -0.964), (-1.762, -1.478), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt, dash: "dotted"))
  // Continui
  line((-1.410, 0.513), (-2.161, 0.787), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((-1.500, 0.000), (-2.300, 0.000), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))
  line((-1.410, -0.513), (-2.161, -0.787), mark: (end: ">"), stroke: (paint: rgb("45525e"), thickness: 1.5pt))

  // Linee di riferimento e quote
  // Quota D_i
  line((-1.5, -1.6), (-1.5, -4.0), stroke: 1pt + rgb("45525e"))
  line((1.5, -1.6), (1.5, -4.0), stroke: 1pt + rgb("45525e"))
  line((-1.5, -3.8), (1.5, -3.8), mark: (start: ">", end: ">"), stroke: 1.5pt + rgb("45525e"))
  content((0, -3.4), text(fill: rgb("45525e"), size: 12pt)[$bold(D)_bold(i)$])

  // Quota D_e
  line((-3.0, -0.5), (-3.0, -5.2), stroke: 1pt + rgb("45525e"))
  line((3.0, -0.5), (3.0, -5.2), stroke: 1pt + rgb("45525e"))
  line((-3.0, -5.0), (3.0, -5.0), mark: (start: ">", end: ">"), stroke: 1.5pt + rgb("45525e"))
  content((0, -4.5), text(fill: rgb("45525e"), size: 12pt)[$bold(D)_bold(e)$])

  // Etichette pressioni
  content((3.8, 2.2), text(fill: rgb("45525e"), size: 12pt)[$bold(p)_bold(e)$])
  content((0.0, -1.0), text(fill: rgb("45525e"), size: 12pt)[$bold(p)_bold(i)$])
})
