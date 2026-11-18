// Figura estratta da molle.typ (riga 1521) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Tratteggio verde (triangolo limite elastico superiore)
  line((1.078, 3.375), (1.15, 3.417), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.984, 3.081), (1.15, 3.177), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.890, 2.786), (1.15, 2.937), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.796, 2.492), (1.15, 2.697), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.702, 2.197), (1.15, 2.457), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.608, 1.903), (1.15, 2.217), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.514, 1.608), (1.15, 1.977), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.420, 1.313), (1.15, 1.737), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.325, 1.019), (1.15, 1.497), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.231, 0.724), (1.15, 1.257), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.137, 0.430), (1.15, 1.017), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.043, 0.135), (1.15, 0.777), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.224, 0.000), (1.15, 0.537), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.638, 0.000), (1.15, 0.297), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((1.052, 0.000), (1.15, 0.057), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((1.15, 0), (1.15, 3.60), stroke: (paint: rgb("#006600"), thickness: 1pt))

  // Tratteggio rosso (triangolo limite elastico inferiore)
  line((0.620, 1.840), (0.71, 1.880), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.520, 1.614), (0.71, 1.700), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.448, 1.402), (0.71, 1.520), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.381, 1.191), (0.71, 1.340), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.313, 0.981), (0.71, 1.160), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.246, 0.771), (0.71, 0.980), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.179, 0.561), (0.71, 0.800), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.112, 0.350), (0.71, 0.620), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.045, 0.140), (0.71, 0.440), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.133, 0.000), (0.71, 0.260), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.533, 0.000), (0.71, 0.080), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.71, 0), (0.71, 2.00), stroke: (paint: rgb("#e60000"), thickness: 1pt))

  // Assi coordinati
  line((0, 0), (0, 4.75), mark: (end: ">", size: 0.28, fill: rgb("#000000")), stroke: (paint: rgb("#000000"), thickness: 2pt))
  line((0, 0), (4.60, 0), mark: (end: ">", size: 0.28, fill: rgb("#000000")), stroke: (paint: rgb("#000000"), thickness: 2pt))

  // Curve sforzo-deformazione
  line((0, 0), (1.15, 3.60), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  arc((1.44, 3.63), start: 16deg, stop: 186deg, radius: 0.29, anchor: "origin", stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.511, 1.60), (0.71, 2.00), (0.56, 1.75), (0.65, 1.92), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.71, 2.00), (0.97, 2.09), (0.78, 2.11), (0.91, 2.14), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.97, 2.09), (1.10, 2.08), (1.02, 2.048), (1.06, 2.04), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((1.10, 2.08), (1.276, 2.061), (1.14, 2.12), (1.236, 2.019), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  arc((3.29, 0.13), start: 48.6deg, stop: 136.2deg, radius: 2.79, anchor: "origin", stroke: (paint: rgb("#222899"), thickness: 1.4pt))

  // Frecce tratteggiate verso "Limite elastico"
  line((1.08, 3.60), (0.02, 3.60), mark: (end: ">", size: 0.14, fill: rgb("#222899")), stroke: (paint: rgb("#222899"), dash: "dashed", thickness: 1pt))
  line((0.64, 2.00), (0.02, 2.00), mark: (end: ">", size: 0.14, fill: rgb("#222899")), stroke: (paint: rgb("#222899"), dash: "dashed", thickness: 1pt))

  // Punti notevoli
  circle((1.15, 3.60), radius: 0.065, fill: rgb("#00ccff"), stroke: (paint: rgb("#222899"), thickness: 1pt))
  circle((0.71, 2.00), radius: 0.065, fill: rgb("#00cc99"), stroke: (paint: rgb("#222899"), thickness: 1pt))
  circle((1.40, 3.97), radius: 0.06, fill: rgb("#e60000"), stroke: none)

  // Etichette e riquadri auto-adattanti
  content((-0.18, 4.55), [$sigma$], anchor: "east")
  content((4.72, -0.05), [$epsilon$], anchor: "north-west")
  content((1.40, 4.10), [#text(size: 0.85em)[$upright(R)_"m"$]], anchor: "south")
  content((-0.08, 3.60), [#text(size: 0.72em)[_Limite elastico_]], anchor: "east", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((-0.08, 2.00), [#text(size: 0.72em)[_Limite elastico_]], anchor: "east", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((1.85, 3.82), [#text(size: 0.72em)[_Acciaio per molle_]], anchor: "west", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((4.25, 1.85), [#text(size: 0.72em)[_Acciaio comune_]], anchor: "west", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
})
