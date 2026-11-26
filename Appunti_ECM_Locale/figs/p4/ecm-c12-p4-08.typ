#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Riempimento rosa della campana esterna (sezione)
  line((-1.85, 1.05), (-0.75, 1.82), (0.72, 1.82), (0.85, 1.72), (0.85, 1.48), (0.40, 1.48), (-0.45, 1.48), (-1.15, 1.10), (-1.48, 0.45), (-1.48, -0.45), (-1.15, -1.10), (-0.45, -1.48), (0.40, -1.48), (0.85, -1.48), (0.85, -1.72), (0.72, -1.82), (-0.75, -1.82), (-1.85, -1.05), close: true, fill: rgb("#f46aa8"), stroke: none)

  // Contorno albero scanalato sinistro e campana esterna
  line((-4.50, 0.52), (-2.45, 0.52), (-2.45, 0.85), (-2.15, 0.85), (-2.15, 1.05), (-1.85, 1.05), (-0.75, 1.82), (0.72, 1.82), (0.85, 1.72), (0.85, 1.48), stroke: 0.9pt)
  line((-4.50, -0.52), (-2.45, -0.52), (-2.45, -0.85), (-2.15, -0.85), (-2.15, -1.05), (-1.85, -1.05), (-0.75, -1.82), (0.72, -1.82), (0.85, -1.72), (0.85, -1.48), stroke: 0.9pt)
  line((-2.15, 0.85), (-2.15, -0.85), stroke: 0.6pt)
  line((-1.85, 1.05), (-1.85, -1.05), stroke: 0.6pt)

  // Scanalature albero sinistro
  line((-4.50, 0.40), (-2.85, 0.40), stroke: 0.6pt)
  line((-4.50, 0.27), (-2.85, 0.27), stroke: 0.6pt)
  line((-4.50, 0.14), (-2.85, 0.14), stroke: 0.6pt)
  line((-4.50, -0.14), (-2.85, -0.14), stroke: 0.6pt)
  line((-4.50, -0.27), (-2.85, -0.27), stroke: 0.6pt)
  line((-4.50, -0.40), (-2.85, -0.40), stroke: 0.6pt)
  line((-2.85, 0.52), (-2.85, -0.52), stroke: 0.7pt)

  // Parete interna della campana
  bezier((-1.48, 0.0), (0.85, 1.48), (-1.48, 0.95), (-0.45, 1.48), stroke: 0.9pt)
  bezier((-1.48, 0.0), (0.85, -1.48), (-1.48, -0.95), (-0.45, -1.48), stroke: 0.9pt)
  line((0.85, 1.48), (0.85, -1.48), stroke: 0.6pt)

  // Gabbia (ciano)
  line((-0.551, 0.882), (-0.657, 1.052), (-0.258, 1.213), (-0.216, 1.017), close: true, fill: rgb("#4dd0e1"), stroke: 0.75pt)
  line((0.582, 0.862), (0.693, 1.028), (0.977, 0.763), (0.820, 0.640), close: true, fill: rgb("#4dd0e1"), stroke: 0.75pt)
  line((-0.820, -0.640), (-0.977, -0.763), (-0.693, -1.028), (-0.582, -0.862), close: true, fill: rgb("#4dd0e1"), stroke: 0.75pt)
  line((0.216, -1.017), (0.258, -1.213), (0.657, -1.052), (0.551, -0.882), close: true, fill: rgb("#4dd0e1"), stroke: 0.75pt)

  // Mozzo interno (giallo)
  arc((0, 0), start: 13.3deg, stop: 122.7deg, radius: 0.90, anchor: "origin", mode: "CLOSE", fill: rgb("#e8dc28"), stroke: 0.85pt)
  arc((0, 0), start: 193.3deg, stop: 302.7deg, radius: 0.90, anchor: "origin", mode: "CLOSE", fill: rgb("#e8dc28"), stroke: 0.85pt)

  // Albero interno (arancione + prolungamento bianco)
  line((-0.593, 0.802), (1.215, 0.072), (0.825, -0.892), (-0.983, -0.162), close: true, fill: rgb("#ff7b29"), stroke: none)
  line((-0.593, 0.802), (2.373, -0.396), (1.983, -1.360), (-0.983, -0.162), close: true, stroke: 0.9pt)
  // Anelli elastici di ritegno
  rect((0.40, 0.25), (0.50, 0.42), fill: gray, stroke: 0.6pt)
  rect((0.02, -0.68), (0.12, -0.51), fill: gray, stroke: 0.6pt)

  // Sfere (superiore e inferiore nel piano bisettore a 79 gradi)
  circle((0.229, 1.178), radius: 0.34, fill: white, stroke: 0.9pt)
  circle((-0.229, -1.178), radius: 0.34, fill: white, stroke: 0.9pt)

  // Assi e linee di costruzione
  line((-4.60, 0.0), (3.45, 0.0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.0, 0.0), (3.245, -1.313), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.229, 1.178), (-0.18, 0.0), stroke: 0.45pt)
  line((0.229, 1.178), (0.18, 0.0), stroke: 0.45pt)

  // Punti O, A, B e richiami
  circle((0.0, 0.0), radius: 0.035, fill: black, stroke: none)
  circle((-0.18, 0.04), radius: 0.03, fill: black, stroke: none)
  circle((0.18, -0.02), radius: 0.03, fill: black, stroke: none)

  line((-0.18, 0.04), (2.28, 0.32), stroke: 0.5pt)
  circle((2.46, 0.32), radius: 0.17, fill: white, stroke: 0.55pt)
  content((2.46, 0.32), text(size: 7.5pt)[$A$], anchor: "center")

  line((0.18, -0.02), (2.37, -0.18), stroke: 0.5pt)
  circle((2.55, -0.18), radius: 0.17, fill: white, stroke: 0.55pt)
  content((2.55, -0.18), text(size: 7.5pt)[$B$], anchor: "center")

  line((-0.88, -1.08), (-1.45, -1.85), (-1.80, -1.85), stroke: 0.5pt)
  content((-1.62, -1.78), text(size: 8pt)[$O$], anchor: "south")

  // Angolo alpha
  arc((0.0, 0.0), start: -22deg, stop: 0deg, radius: 3.10, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((3.22, -0.62), text(size: 8.5pt)[$alpha$], anchor: "west")
})
