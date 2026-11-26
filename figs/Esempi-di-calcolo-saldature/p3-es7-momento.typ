// Esempio 7: Momento flettente concentrato puro M_e sui due cordoni longitudinali (Slide 25)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Supporto
  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.022), stroke: 1pt)
  line((3.344, 5.822), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  // Piattabanda
  line((0.528, 2.264), (0.528, 3.764), stroke: 0.9pt)
  line((0.528, 2.264), (1.012, 2.022), stroke: 0.9pt)
  line((0.528, 3.764), (1.012, 3.522), stroke: 0.9pt)
  line((1.012, 2.022), (1.012, 3.522), (5.412, 5.722), (5.412, 4.222), close: true, fill: white, stroke: 1pt)
  line((3.621, 5.311), (4.928, 5.964), (5.412, 5.722), stroke: 1pt)

  // Cordoni superiore e inferiore
  line((0.528, 3.764), (0.528, 4.414), (1.012, 3.522), stroke: 0.85pt)
  line((0.528, 4.414), (3.344, 5.822), (3.828, 4.930), stroke: 0.85pt)
  line((0.528, 2.264), (0.528, 1.614), (1.012, 2.022), stroke: 0.85pt)
  line((0.528, 1.614), (3.344, 3.022), (3.828, 3.430), stroke: 0.85pt)

  // Momento concentrato esterno M_e (archetto curvo orario sulla faccia della piattabanda)
  arc((3.65, 4.15), start: 145deg, stop: -35deg, radius: 0.62, anchor: "origin", mark: (end: ">", fill: black, scale: 0.55), stroke: 1.05pt)
  content((3.72, 4.08), text(size: 11.5pt, weight: "bold")[$M_e$], anchor: "center")

  // Coppia di reazioni F (parallele ai cordoni, versi opposti!)
  // Cordone superiore: verso sinistra-basso (oppure opposta al momento orario -> verso sinistra-basso in alto? Momento orario tira in alto verso dx -> reazione verso sx-basso!)
  line((1.20, 4.10), (-0.15, 3.425), mark: (end: ">", fill: red.darken(15%), scale: 0.6), stroke: 1.1pt + red.darken(15%))
  content((-0.05, 4.00), text(size: 11.5pt, fill: red.darken(15%))[$F$], anchor: "south")

  // Cordone inferiore: verso destra-alto
  line((0.20, 1.65), (1.55, 2.325), mark: (end: ">", fill: red.darken(15%), scale: 0.6), stroke: 1.1pt + red.darken(15%))
  content((0.30, 1.45), text(size: 11.5pt, fill: red.darken(15%))[$F$], anchor: "north")

  // Quota L (lunghezza dei cordoni)
  line((1.012, 1.55), (3.828, 2.958), mark: (start: ">", end: ">", scale: 0.5, fill: black), stroke: 0.65pt)
  content((2.60, 2.05), text(size: 11.5pt, weight: "bold")[$L$], anchor: "north-west")

  // Quota h (distanza tra i due cordoni)
  line((4.95, 4.10), (4.95, 5.55), mark: (start: ">", end: ">", scale: 0.48, fill: black), stroke: 0.65pt)
  content((4.80, 4.82), text(size: 11.5pt, weight: "bold")[$h$], anchor: "east")

  // Richiamo 2 cordoni
  content((1.65, 6.75), text(size: 10.5pt, weight: "bold")[2 cordoni], anchor: "center")
  line((1.65, 6.50), (1.95, 5.15), stroke: 0.5pt)
})
