// Figura estratta da fatica.typ (riga 2637) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.6cm, {
  import draw: *
  
  // Sfondo grigio
  rect((-1.5, -4.5), (17.5, 6.5), fill: rgb("F3F3F3"), stroke: none)
  
  // Griglia orizzontale
  line((0, -4), (16.5, -4), stroke: 0.5pt + rgb("00FF00"))
  line((0, -3), (16.5, -3), stroke: 0.5pt + rgb("00FF00"))
  line((0, -2), (16.5, -2), stroke: 0.5pt + rgb("00FF00"))
  line((0, -1), (16.5, -1), stroke: 0.5pt + rgb("00FF00"))
  line((0, 0), (16.5, 0), stroke: 0.5pt + rgb("00FF00"))
  line((0, 1), (16.5, 1), stroke: 0.5pt + rgb("00FF00"))
  line((0, 2), (16.5, 2), stroke: 0.5pt + rgb("00FF00"))
  line((0, 3), (16.5, 3), stroke: 0.5pt + rgb("00FF00"))
  line((0, 4), (16.5, 4), stroke: 0.5pt + rgb("00FF00"))
  line((0, 5), (16.5, 5), stroke: 0.5pt + rgb("00FF00"))
  line((0, 6), (16.5, 6), stroke: 0.5pt + rgb("00FF00"))
  
  // Griglia verticale (scritta estesa per rispettare le regole)
  line((0.0, -4), (0.0, 6), stroke: 0.5pt + rgb("00FF00")); line((0.3, -4), (0.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((0.6, -4), (0.6, 6), stroke: 0.5pt + rgb("00FF00")); line((0.9, -4), (0.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((1.2, -4), (1.2, 6), stroke: 0.5pt + rgb("00FF00")); line((1.5, -4), (1.5, 6), stroke: 0.5pt + rgb("00FF00"))
  line((1.8, -4), (1.8, 6), stroke: 0.5pt + rgb("00FF00")); line((2.1, -4), (2.1, 6), stroke: 0.5pt + rgb("00FF00"))
  line((2.4, -4), (2.4, 6), stroke: 0.5pt + rgb("00FF00")); line((2.7, -4), (2.7, 6), stroke: 0.5pt + rgb("00FF00"))
  line((3.0, -4), (3.0, 6), stroke: 0.5pt + rgb("00FF00")); line((3.3, -4), (3.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((3.6, -4), (3.6, 6), stroke: 0.5pt + rgb("00FF00")); line((3.9, -4), (3.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((4.2, -4), (4.2, 6), stroke: 0.5pt + rgb("00FF00")); line((4.5, -4), (4.5, 6), stroke: 0.5pt + rgb("00FF00"))
  line((4.8, -4), (4.8, 6), stroke: 0.5pt + rgb("00FF00")); line((5.1, -4), (5.1, 6), stroke: 0.5pt + rgb("00FF00"))
  line((5.4, -4), (5.4, 6), stroke: 0.5pt + rgb("00FF00")); line((5.7, -4), (5.7, 6), stroke: 0.5pt + rgb("00FF00"))
  line((6.0, -4), (6.0, 6), stroke: 0.5pt + rgb("00FF00")); line((6.3, -4), (6.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((6.6, -4), (6.6, 6), stroke: 0.5pt + rgb("00FF00")); line((6.9, -4), (6.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((7.2, -4), (7.2, 6), stroke: 0.5pt + rgb("00FF00")); line((7.5, -4), (7.5, 6), stroke: 0.5pt + rgb("00FF00"))
  line((7.8, -4), (7.8, 6), stroke: 0.5pt + rgb("00FF00")); line((8.1, -4), (8.1, 6), stroke: 0.5pt + rgb("00FF00"))
  line((8.4, -4), (8.4, 6), stroke: 0.5pt + rgb("00FF00")); line((8.7, -4), (8.7, 6), stroke: 0.5pt + rgb("00FF00"))
  line((9.0, -4), (9.0, 6), stroke: 0.5pt + rgb("00FF00")); line((9.3, -4), (9.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((9.6, -4), (9.6, 6), stroke: 0.5pt + rgb("00FF00")); line((9.9, -4), (9.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((10.2, -4), (10.2, 6), stroke: 0.5pt + rgb("00FF00")); line((10.5, -4), (10.5, 6), stroke: 0.5pt + rgb("00FF00"))
  line((10.8, -4), (10.8, 6), stroke: 0.5pt + rgb("00FF00")); line((11.1, -4), (11.1, 6), stroke: 0.5pt + rgb("00FF00"))
  line((11.4, -4), (11.4, 6), stroke: 0.5pt + rgb("00FF00")); line((11.7, -4), (11.7, 6), stroke: 0.5pt + rgb("00FF00"))
  line((12.0, -4), (12.0, 6), stroke: 0.5pt + rgb("00FF00")); line((12.3, -4), (12.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((12.6, -4), (12.6, 6), stroke: 0.5pt + rgb("00FF00")); line((12.9, -4), (12.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((13.2, -4), (13.2, 6), stroke: 0.5pt + rgb("00FF00")); line((13.5, -4), (13.5, 6), stroke: 0.5pt + rgb("00FF00"))
  line((13.8, -4), (13.8, 6), stroke: 0.5pt + rgb("00FF00")); line((14.1, -4), (14.1, 6), stroke: 0.5pt + rgb("00FF00"))
  line((14.4, -4), (14.4, 6), stroke: 0.5pt + rgb("00FF00")); line((14.7, -4), (14.7, 6), stroke: 0.5pt + rgb("00FF00"))
  line((15.0, -4), (15.0, 6), stroke: 0.5pt + rgb("00FF00")); line((15.3, -4), (15.3, 6), stroke: 0.5pt + rgb("00FF00"))
  line((15.6, -4), (15.6, 6), stroke: 0.5pt + rgb("00FF00")); line((15.9, -4), (15.9, 6), stroke: 0.5pt + rgb("00FF00"))
  line((16.2, -4), (16.2, 6), stroke: 0.5pt + rgb("00FF00")); line((16.5, -4), (16.5, 6), stroke: 0.5pt + rgb("00FF00"))
  
  // Segnale di carico
  line((0.0,6), (0.3,0), (0.6,4), (0.9,-1), (1.2,2), (1.5,-2), (1.8,1), (2.1,-1), (2.4,2), (2.7,-3), (3.0,1), (3.3,-2), (3.6,2), (3.9,-1), (4.2,0), (4.5,-3), (4.8,1), (5.1,-1), (5.4,4), (5.7,0), (6.0,2), (6.3,-2), (6.6,1), (6.9,-2), (7.2,2), (7.5,0), (7.8,-3), (8.1,0), (8.4,-4), (8.7,2), (9.0,-2), (9.3,3), (9.6,0), (9.9,4), (10.2,1), (10.5,3), (10.8,2), (11.1,5), (11.4,1), (11.7,4), (12.0,-1), (12.3,3), (12.6,-1), (12.9,5), (13.2,0), (13.5,3), (13.8,-2), (14.1,2), (14.4,0), (14.7,4), (15.0,1), (15.3,3), (15.6,0), (15.9,5), (16.2,2), (16.5,6), stroke: 1.5pt)
  
  // Testi interni
  content((0.4, 5.5), [$sigma$ (MPa)], anchor: "west")
  content((15.5, -3.5), [$t$], anchor: "east")
  
  // Etichette asse sinistro
  content((-0.2, 6), [300], anchor: "east")
  content((-0.2, 5), [250], anchor: "east")
  content((-0.2, 4), [200], anchor: "east")
  content((-0.2, 3), [150], anchor: "east")
  content((-0.2, 2), [100], anchor: "east")
  content((-0.2, 1), [50], anchor: "east")
  content((-0.2, 0), [0], anchor: "east")
  content((-0.2, -1), [-50], anchor: "east")
  content((-0.2, -2), [-100], anchor: "east")
  content((-0.2, -3), [-150], anchor: "east")
  content((-0.2, -4), [-200], anchor: "east")
  
  // Etichette asse destro
  content((16.7, 6), [1], anchor: "west")
  content((16.7, 5), [4], anchor: "west")
  content((16.7, 4), [9], anchor: "west")
  content((16.7, 3), [14], anchor: "west")
  content((16.7, 2), [21], anchor: "west")
  content((16.7, 1), [23], anchor: "west")
  content((16.7, 0), [21], anchor: "west")
  content((16.7, -1), [14], anchor: "west")
  content((16.7, -2), [9], anchor: "west")
  content((16.7, -3), [4], anchor: "west")
  content((16.7, -4), [1], anchor: "west")
})
