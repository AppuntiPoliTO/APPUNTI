// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.75cm, {
  import draw: *

  // =========================================================================
  // PANNELLO 1 (Top-Left): Ghiera di bloccaggio e rosetta di sicurezza
  // =========================================================================
  // Sfondo cavità
  rect((0.50, 5.20), (3.60, 7.60), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore
  rect((0.50, 7.60), (3.60, 8.00), fill: rgb("#9aa2a8"), stroke: none)
  line((0.50, 7.60), (3.60, 7.60), stroke: 0.75pt + black)

  // Albero a 3 gradini: d1 (0.50..1.55, y=6.85), d2 (1.55..2.70, y=6.60), d3 filettato (2.70..3.60, y=6.35)
  rect((0.50, 5.20), (1.55, 6.85), fill: rgb("#90989e"), stroke: none)
  rect((0.50, 5.85), (1.55, 6.45), fill: rgb("#b8c0c6"), stroke: none)
  rect((0.50, 6.08), (1.55, 6.30), fill: rgb("#eef3f7"), stroke: none)

  rect((1.55, 5.20), (2.70, 6.60), fill: rgb("#90989e"), stroke: none)
  rect((1.55, 5.80), (2.70, 6.32), fill: rgb("#b8c0c6"), stroke: none)
  rect((1.55, 6.00), (2.70, 6.20), fill: rgb("#eef3f7"), stroke: none)

  rect((2.70, 5.20), (3.52, 6.35), fill: rgb("#90989e"), stroke: none)
  rect((2.70, 5.75), (3.52, 6.18), fill: rgb("#b8c0c6"), stroke: none)
  rect((2.70, 5.92), (3.52, 6.08), fill: rgb("#eef3f7"), stroke: none)
  line((3.52, 5.20), (3.52, 6.35), (3.60, 6.27), (3.60, 5.20), close: true, fill: rgb("#90989e"), stroke: none)

  // Contorni albero
  line((0.50, 6.85), (1.55, 6.85), (1.55, 5.20), stroke: 0.75pt + black)
  line((1.55, 6.60), (2.70, 6.60), (2.70, 5.20), stroke: 0.75pt + black)
  line((2.70, 6.35), (3.52, 6.35), (3.60, 6.27), (3.60, 5.20), stroke: 0.75pt + black)
  line((3.52, 6.35), (3.52, 5.20), stroke: 0.5pt + black)
  line((2.70, 6.26), (3.58, 6.26), stroke: 0.45pt + black)

  // Ghiera di bloccaggio (x=2.84..3.52, y=6.35..6.90) con alloggiamento linguetta
  line((2.84, 6.35), (2.84, 6.82), (3.15, 6.82), (3.15, 6.90), (3.44, 6.90), (3.52, 6.84), (3.52, 6.35), close: true, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  // Corpo esterno ghiera sopra la gola
  line((2.84, 6.82), (2.84, 6.90), (3.15, 6.90), stroke: 0.6pt + black)
  // Filettatura tra albero e ghiera
  line((2.84, 6.35), (2.90, 6.43), (2.96, 6.35), (3.02, 6.43), (3.08, 6.35), (3.14, 6.43), (3.20, 6.35), (3.26, 6.43), (3.32, 6.35), (3.38, 6.43), (3.44, 6.35), (3.50, 6.43), (3.52, 6.35), stroke: 0.55pt + black)

  // Rosetta di sicurezza (nera, tra x=2.77 e 2.84, con linguetta piegata nella cava della ghiera)
  line((2.77, 6.28), (2.84, 6.28), (2.84, 6.76), (3.12, 6.76), (3.12, 6.82), (2.77, 6.82), close: true, fill: black, stroke: 0.4pt + black)
  line((2.77, 6.82), (2.87, 6.98), (2.92, 6.95), (2.83, 6.82), close: true, fill: white, stroke: 0.55pt + black)

  // Cuscinetto a sfere radiale (x=1.55..2.77, y=6.60..7.60, centro sfera (2.16, 7.10), r=0.28)
  rect((1.55, 7.30), (2.77, 7.60), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((1.55, 6.60), (2.77, 6.90), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  // Gabbia
  rect((1.76, 6.96), (2.56, 7.24), radius: 0.03, fill: rgb("#d0d5da"), stroke: 0.6pt + black)
  rect((1.84, 7.01), (2.48, 7.19), fill: rgb("#dcdfe2"), stroke: 0.45pt + black)
  // Sfera + riflessi
  circle((2.16, 7.10), radius: 0.28, fill: rgb("#5c92c4"), stroke: none)
  circle((2.12, 7.14), radius: 0.20, fill: rgb("#a6c8e8"), stroke: none)
  circle((2.07, 7.19), radius: 0.10, fill: rgb("#eef6fc"), stroke: none)
  circle((2.16, 7.10), radius: 0.28, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordo sinistro
  line((0.50, 5.10), (0.50, 7.00), stroke: 0.65pt + black)
  line((0.35, 5.20), (3.70, 5.20), stroke: 0.65pt + black)


  // =========================================================================
  // PANNELLO 2 (Top-Center): Piastra terminale e coperchio esterno
  // =========================================================================
  // Sfondo cavità
  rect((5.10, 4.90), (8.00, 7.35), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore (x=5.10..7.62, y=7.35..8.25)
  rect((5.10, 7.35), (7.62, 8.25), fill: rgb("#9aa2a8"), stroke: none)
  line((5.10, 7.35), (7.62, 7.35), (7.62, 8.25), stroke: 0.75pt + black)

  // Coperchio esterno sagomato (x=7.50..8.50)
  line((7.62, 8.00), (7.98, 8.00), (8.02, 7.95), (8.02, 7.32), (8.42, 7.10), (8.50, 6.98), (8.50, 4.90), (8.02, 4.90), (8.02, 6.72), (7.96, 6.80), (7.50, 6.98), (7.50, 7.35), (7.62, 7.35), close: true, fill: rgb("#a5adb3"), stroke: 0.75pt + black)

  // Vite superiore coperchio (asse y=7.65)
  rect((7.00, 7.56), (8.02, 7.74), fill: rgb("#b8c0c6"), stroke: 0.55pt + black)
  line((7.00, 7.51), (7.62, 7.51), stroke: (dash: "dashed", thickness: 0.45pt))
  line((7.00, 7.79), (7.62, 7.79), stroke: (dash: "dashed", thickness: 0.45pt))
  line((7.00, 7.51), (7.00, 7.79), stroke: 0.5pt + black)
  line((6.92, 7.65), (7.00, 7.56), stroke: 0.5pt + black)
  line((6.92, 7.65), (7.00, 7.74), stroke: 0.5pt + black)
  // Testa esagonale vite superiore
  rect((8.02, 7.43), (8.22, 7.87), radius: 0.03, fill: rgb("#90989e"), stroke: 0.7pt + black)
  line((8.02, 7.54), (8.22, 7.54), stroke: 0.55pt + black)
  line((8.02, 7.76), (8.22, 7.76), stroke: 0.55pt + black)
  line((6.82, 7.65), (8.32, 7.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Albero a 2 gradini: d1 (5.10..6.15, y=6.45), d2 (6.15..7.30, y=6.25)
  rect((5.10, 4.90), (6.15, 6.45), fill: rgb("#90989e"), stroke: none)
  rect((5.10, 5.55), (6.15, 6.10), fill: rgb("#b8c0c6"), stroke: none)
  rect((5.10, 5.75), (6.15, 5.95), fill: rgb("#eef3f7"), stroke: none)

  rect((6.15, 4.90), (7.23, 6.25), fill: rgb("#90989e"), stroke: none)
  rect((6.15, 5.50), (7.23, 6.02), fill: rgb("#b8c0c6"), stroke: none)
  rect((6.15, 5.70), (7.23, 5.88), fill: rgb("#eef3f7"), stroke: none)
  line((7.23, 4.90), (7.23, 6.25), (7.30, 6.18), (7.30, 4.90), close: true, fill: rgb("#90989e"), stroke: none)

  line((5.10, 6.45), (6.15, 6.45), (6.15, 4.90), stroke: 0.75pt + black)
  line((6.15, 6.25), (7.23, 6.25), (7.30, 6.18), (7.30, 4.90), stroke: 0.75pt + black)
  line((7.23, 6.25), (7.23, 4.90), stroke: 0.5pt + black)

  // Piastra terminale sull'albero (x=7.30..7.58, y=4.90..6.35)
  line((7.30, 6.00), (7.37, 6.00), (7.37, 6.35), (7.58, 6.35), (7.58, 4.90), (7.30, 4.90), close: true, fill: rgb("#9aa2a8"), stroke: 0.75pt + black)

  // Vite inferiore piastra terminale (asse y=5.82)
  rect((6.60, 5.73), (7.66, 5.91), fill: rgb("#b8c0c6"), stroke: 0.55pt + black)
  line((6.60, 5.68), (7.30, 5.68), stroke: (dash: "dashed", thickness: 0.45pt))
  line((6.60, 5.96), (7.30, 5.96), stroke: (dash: "dashed", thickness: 0.45pt))
  line((6.60, 5.68), (6.60, 5.96), stroke: 0.5pt + black)
  line((6.52, 5.82), (6.60, 5.73), stroke: 0.5pt + black)
  line((6.52, 5.82), (6.60, 5.91), stroke: 0.5pt + black)
  // Rosetta e testa esagonale vite inferiore
  rect((7.58, 5.62), (7.66, 6.02), fill: rgb("#d0d5da"), stroke: 0.55pt + black)
  rect((7.66, 5.60), (7.86, 6.04), radius: 0.03, fill: rgb("#90989e"), stroke: 0.7pt + black)
  line((7.66, 5.71), (7.86, 5.71), stroke: 0.55pt + black)
  line((7.66, 5.93), (7.86, 5.93), stroke: 0.55pt + black)
  line((6.45, 5.82), (7.95, 5.82), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Cuscinetto a sfere radiale (x=6.15..7.37, y=6.25..7.35, centro sfera (6.76, 6.80), r=0.29)
  rect((6.15, 7.03), (7.37, 7.35), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((6.15, 6.25), (7.37, 6.57), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((6.36, 6.65), (7.16, 6.95), radius: 0.03, fill: rgb("#d0d5da"), stroke: 0.6pt + black)
  rect((6.44, 6.70), (7.08, 6.90), fill: rgb("#dcdfe2"), stroke: 0.45pt + black)
  circle((6.76, 6.80), radius: 0.29, fill: rgb("#5c92c4"), stroke: none)
  circle((6.72, 6.84), radius: 0.21, fill: rgb("#a6c8e8"), stroke: none)
  circle((6.67, 6.89), radius: 0.10, fill: rgb("#eef6fc"), stroke: none)
  circle((6.76, 6.80), radius: 0.29, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordo sinistro
  line((5.10, 4.80), (5.10, 6.60), stroke: 0.65pt + black)
  line((4.95, 4.90), (8.65, 4.90), stroke: 0.65pt + black)

  // Etichetta "piastra terminale"
  content((8.30, 4.50), text(size: 7.5pt)[piastra terminale], anchor: "center")
  line((7.82, 4.70), (7.50, 5.35), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)


  // =========================================================================
  // PANNELLO 3 (Top-Right): Coperchio terminale e collare distanziale
  // =========================================================================
  // Sfondo cavità
  rect((10.10, 4.90), (13.25, 7.35), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore con spallamento (x=10.10..11.15 a y=7.08, x=11.15..12.62 a y=7.35)
  line((10.10, 7.08), (11.15, 7.08), (11.15, 7.35), (12.62, 7.35), (12.62, 8.25), (10.10, 8.25), close: true, fill: rgb("#9aa2a8"), stroke: none)
  line((10.10, 7.08), (11.15, 7.08), (11.15, 7.35), (12.62, 7.35), (12.62, 8.25), stroke: 0.75pt + black)

  // Coperchio terminale (x=12.37..13.02)
  line((12.62, 8.12), (12.96, 8.12), (13.02, 8.06), (13.02, 6.52), (12.70, 6.52), (12.70, 7.05), (12.37, 7.05), (12.37, 7.35), (12.62, 7.35), close: true, fill: rgb("#a5adb3"), stroke: 0.75pt + black)
  rect((12.70, 6.45), (13.02, 6.52), fill: rgb("#dcdfe2"), stroke: 0.55pt + black)

  // Vite superiore coperchio terminale (asse y=7.65)
  rect((11.88, 7.53), (13.02, 7.77), fill: rgb("#b8c0c6"), stroke: 0.55pt + black)
  line((11.88, 7.47), (12.62, 7.47), stroke: (dash: "dashed", thickness: 0.45pt))
  line((11.88, 7.83), (12.62, 7.83), stroke: (dash: "dashed", thickness: 0.45pt))
  line((11.88, 7.47), (11.88, 7.83), stroke: 0.5pt + black)
  line((11.78, 7.65), (11.88, 7.53), stroke: 0.5pt + black)
  line((11.78, 7.65), (11.88, 7.77), stroke: 0.5pt + black)
  // Filettatura a zig-zag sulla vite
  line((12.02, 7.53), (12.06, 7.47), (12.10, 7.53), (12.14, 7.47), (12.18, 7.53), (12.22, 7.47), (12.26, 7.53), (12.30, 7.47), (12.34, 7.53), (12.38, 7.47), (12.42, 7.53), (12.46, 7.47), (12.50, 7.53), (12.54, 7.47), (12.58, 7.53), (12.62, 7.47), stroke: 0.45pt + black)
  line((12.02, 7.77), (12.06, 7.83), (12.10, 7.77), (12.14, 7.83), (12.18, 7.77), (12.22, 7.83), (12.26, 7.77), (12.30, 7.83), (12.34, 7.77), (12.38, 7.83), (12.42, 7.77), (12.46, 7.83), (12.50, 7.77), (12.54, 7.83), (12.58, 7.77), (12.62, 7.83), stroke: 0.45pt + black)
  // Testa esagonale vite
  rect((13.02, 7.36), (13.23, 7.94), radius: 0.03, fill: rgb("#90989e"), stroke: 0.7pt + black)
  line((13.02, 7.50), (13.23, 7.50), stroke: 0.55pt + black)
  line((13.02, 7.80), (13.23, 7.80), stroke: 0.55pt + black)
  line((11.68, 7.65), (13.34, 7.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Albero a 2 gradini + bussola distanziale destra
  rect((10.10, 4.90), (11.15, 6.45), fill: rgb("#90989e"), stroke: none)
  rect((10.10, 5.55), (11.15, 6.10), fill: rgb("#b8c0c6"), stroke: none)
  rect((10.10, 5.75), (11.15, 5.95), fill: rgb("#eef3f7"), stroke: none)

  rect((11.15, 4.90), (13.25, 6.25), fill: rgb("#90989e"), stroke: none)
  rect((11.15, 5.50), (13.25, 6.02), fill: rgb("#b8c0c6"), stroke: none)
  rect((11.15, 5.70), (13.25, 5.88), fill: rgb("#eef3f7"), stroke: none)

  line((10.10, 6.45), (11.15, 6.45), (11.15, 4.90), stroke: 0.75pt + black)
  line((11.15, 6.25), (13.25, 6.25), (13.25, 4.90), stroke: 0.75pt + black)

  // Collare distanziale destro sull'albero (x=12.37..13.25, y=6.25..6.45)
  rect((12.37, 6.25), (13.25, 6.45), fill: rgb("#9aa2a8"), stroke: 0.75pt + black)

  // Cuscinetto a sfere radiale (x=11.15..12.37, y=6.25..7.35, centro sfera (11.76, 6.80), r=0.29)
  rect((11.15, 7.03), (12.37, 7.35), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((11.15, 6.25), (12.37, 6.57), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((11.36, 6.65), (12.16, 6.95), radius: 0.03, fill: rgb("#d0d5da"), stroke: 0.6pt + black)
  rect((11.44, 6.70), (12.08, 6.90), fill: rgb("#dcdfe2"), stroke: 0.45pt + black)
  circle((11.76, 6.80), radius: 0.29, fill: rgb("#5c92c4"), stroke: none)
  circle((11.72, 6.84), radius: 0.21, fill: rgb("#a6c8e8"), stroke: none)
  circle((11.67, 6.89), radius: 0.10, fill: rgb("#eef6fc"), stroke: none)
  circle((11.76, 6.80), radius: 0.29, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordi
  line((10.10, 4.80), (10.10, 6.60), stroke: 0.65pt + black)
  line((13.25, 4.80), (13.25, 6.60), stroke: 0.65pt + black)
  line((9.95, 4.90), (13.40, 4.90), stroke: 0.65pt + black)

  // Etichetta "coperchio terminale"
  content((12.65, 8.70), text(size: 7.5pt)[coperchio terminale], anchor: "center")
  line((12.58, 8.52), (12.74, 8.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)


  // =========================================================================
  // PANNELLO 4 (Bottom-Left): Cuscinetto a rulli conici e anello filettato
  // =========================================================================
  // Sfondo cavità
  rect((0.05, 0.65), (4.05, 3.25), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore (x=0.05..3.68, y=3.25..4.50) con tratto filettato (x=3.02..3.68)
  line((0.05, 3.25), (2.92, 3.25), (2.92, 3.40), (3.02, 3.40), (3.02, 3.32), (3.08, 3.38), (3.14, 3.32), (3.20, 3.38), (3.26, 3.32), (3.32, 3.38), (3.38, 3.32), (3.44, 3.38), (3.50, 3.32), (3.56, 3.38), (3.62, 3.32), (3.68, 3.38), (3.68, 4.50), (0.05, 4.50), close: true, fill: rgb("#9aa2a8"), stroke: none)
  line((0.05, 3.25), (2.92, 3.25), (2.92, 3.40), (3.02, 3.40), (3.02, 3.32), (3.08, 3.38), (3.14, 3.32), (3.20, 3.38), (3.26, 3.32), (3.32, 3.38), (3.38, 3.32), (3.44, 3.38), (3.50, 3.32), (3.56, 3.38), (3.62, 3.32), (3.68, 3.38), (3.68, 4.50), stroke: 0.75pt + black)

  // Anello filettato nell'alloggiamento (x=3.02..3.68, y=2.12..3.35)
  line((3.02, 2.12), (3.42, 2.12), (3.42, 2.85), (3.68, 2.85), (3.68, 3.38), (3.62, 3.32), (3.56, 3.38), (3.50, 3.32), (3.44, 3.38), (3.38, 3.32), (3.32, 3.38), (3.26, 3.32), (3.20, 3.38), (3.14, 3.32), (3.08, 3.38), (3.02, 3.32), close: true, fill: rgb("#d0d5da"), stroke: 0.75pt + black)
  // Piastrina di fermo nera a L fissata con vite
  line((3.36, 2.98), (3.68, 2.98), (3.68, 4.08), (3.75, 4.08), (3.75, 2.92), (3.36, 2.92), close: true, fill: black, stroke: 0.45pt + black)
  line((3.02, 2.92), (3.36, 2.92), (3.36, 2.85), (3.68, 2.85), stroke: 0.6pt + black)

  // Vite di bloccaggio piastrina (asse y=3.72)
  rect((2.88, 3.63), (3.75, 3.81), fill: rgb("#b8c0c6"), stroke: 0.55pt + black)
  line((2.88, 3.58), (3.68, 3.58), stroke: (dash: "dashed", thickness: 0.45pt))
  line((2.88, 3.86), (3.68, 3.86), stroke: (dash: "dashed", thickness: 0.45pt))
  line((2.88, 3.58), (2.88, 3.86), stroke: 0.5pt + black)
  line((2.80, 3.72), (2.88, 3.63), stroke: 0.5pt + black)
  line((2.80, 3.72), (2.88, 3.81), stroke: 0.5pt + black)
  rect((3.75, 3.48), (3.96, 3.96), radius: 0.03, fill: rgb("#90989e"), stroke: 0.7pt + black)
  line((3.75, 3.60), (3.96, 3.60), stroke: 0.55pt + black)
  line((3.75, 3.84), (3.96, 3.84), stroke: 0.55pt + black)
  line((2.70, 3.72), (4.06, 3.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Albero a 2 gradini + bussola distanziale destra
  rect((0.05, 0.65), (1.12, 2.22), fill: rgb("#90989e"), stroke: none)
  rect((0.05, 1.30), (1.12, 1.88), fill: rgb("#b8c0c6"), stroke: none)
  rect((0.05, 1.50), (1.12, 1.70), fill: rgb("#eef3f7"), stroke: none)

  rect((1.12, 0.65), (4.05, 1.90), fill: rgb("#90989e"), stroke: none)
  rect((1.12, 1.25), (4.05, 1.72), fill: rgb("#b8c0c6"), stroke: none)
  rect((1.12, 1.43), (4.05, 1.60), fill: rgb("#eef3f7"), stroke: none)

  line((0.05, 2.22), (1.12, 2.22), (1.12, 0.65), stroke: 0.75pt + black)
  line((1.12, 1.90), (4.05, 1.90), (4.05, 0.65), stroke: 0.75pt + black)
  rect((3.02, 1.90), (4.05, 2.12), fill: rgb("#9aa2a8"), stroke: 0.75pt + black)

  // Cuscinetto a rulli conici (x=1.12..3.02, y=1.90..3.25)
  // Geometria esatta con φ = 15° (cos 15° = 0.966, sin 15° = 0.259):
  // u = (0.966, -0.259), n = (0.259, 0.966)
  // C = (2.150, 2.600), l = 1.30 => Cb = (1.522, 2.768), Cs = (2.778, 2.432)
  // Db = 0.56 (Db/2 = 0.28), Ds = 0.44 (Ds/2 = 0.22)
  // T1 = Cb + 0.28*n = (1.595, 3.038), T2 = Cs + 0.22*n = (2.835, 2.645)
  // B1 = Cb - 0.28*n = (1.450, 2.498), B2 = Cs - 0.22*n = (2.721, 2.219)
  // Pista esterna (cup) da x=1.50 a x=3.02 sulla retta T1-T2 (pendenza m = -0.317):
  // y(1.50) = 3.068, y(3.02) = 2.586
  line((1.50, 3.25), (3.02, 3.25), (3.02, 2.586), (1.50, 3.068), close: true, fill: rgb("#5c92c4"), stroke: 0.75pt + black)

  // Pista interna (cone) da x=1.12 a x=3.02 sulla retta B1-B2:
  // Orletto grande a sinistra (faccia ⊥ al rullo da B1 a Rb=(1.498, 2.680)), orletto piccolo a destra (da B2 a Rs=(2.752, 2.335))
  line((1.12, 1.90), (1.12, 2.56), (1.42, 2.56), (1.498, 2.680), (1.450, 2.498), (2.721, 2.219), (2.752, 2.335), (3.02, 2.15), (3.02, 1.90), close: true, fill: rgb("#5c92c4"), stroke: 0.75pt + black)

  // Gabbia rullo conico
  line((1.49, 2.88), (1.30, 2.94), (1.30, 2.82), (1.46, 2.77), close: true, fill: rgb("#7fa8d4"), stroke: 0.55pt + black)
  line((2.79, 2.51), (3.08, 2.42), (3.08, 2.18), (3.00, 2.18), (3.00, 2.34), (2.76, 2.41), close: true, fill: rgb("#7fa8d4"), stroke: 0.55pt + black)

  // Rullo conico (trapezio T1-T2-B2-B1 con facce esattamente ⊥ all'asse del rullo e Db > Ds)
  line((1.595, 3.038), (2.835, 2.645), (2.721, 2.219), (1.450, 2.498), close: true, fill: rgb("#5c92c4"), stroke: none)
  // Riflesso medio rullo
  line((1.522, 2.768), (2.778, 2.432), (2.821, 2.592), (1.577, 2.971), close: true, fill: rgb("#a6c8e8"), stroke: none)
  // Riflesso chiaro rullo
  line((1.545, 2.852), (2.796, 2.499), (2.815, 2.570), (1.569, 2.942), close: true, fill: rgb("#eef6fc"), stroke: none)
  // Contorno rullo conico
  line((1.595, 3.038), (2.835, 2.645), (2.721, 2.219), (1.450, 2.498), close: true, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordi
  line((0.05, 0.55), (0.05, 2.35), stroke: 0.65pt + black)
  line((4.05, 0.55), (4.05, 3.40), stroke: 0.65pt + black)
  line((0.00, 0.65), (4.20, 0.65), stroke: 0.65pt + black)

  // Etichetta "anello filettato"
  content((2.65, 0.30), text(size: 7.5pt)[anello filettato], anchor: "center")
  line((3.12, 0.50), (3.36, 3.22), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)


  // =========================================================================
  // PANNELLO 5 (Bottom-Center): Anelli di ancoraggio e collare di spallamento
  // =========================================================================
  // Sfondo cavità
  rect((5.30, 0.80), (8.90, 3.72), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore con due cave per anelli elastici (x=6.36..6.54 e x=8.26..8.44)
  line((5.30, 3.72), (6.36, 3.72), (6.36, 3.88), (6.54, 3.88), (6.54, 3.72), (8.26, 3.72), (8.26, 3.88), (8.44, 3.88), (8.44, 3.72), (8.90, 3.72), (8.90, 4.18), (5.30, 4.18), close: true, fill: rgb("#9aa2a8"), stroke: none)
  line((5.30, 3.72), (6.36, 3.72), (6.36, 3.88), (6.54, 3.88), (6.54, 3.72), (8.26, 3.72), (8.26, 3.88), (8.44, 3.88), (8.44, 3.72), (8.90, 3.72), stroke: 0.75pt + black)

  // Anello di ancoraggio sinistro (x=6.36..6.54, y=2.66..3.88) + collare di spallamento sinistro (x=6.54..6.80, y=2.66..3.72)
  rect((6.36, 3.30), (6.54, 3.88), fill: rgb("#a5adb3"), stroke: 0.7pt + black)
  rect((6.36, 2.66), (6.54, 3.30), fill: rgb("#c2c8cc"), stroke: 0.7pt + black)
  rect((6.54, 3.12), (6.80, 3.72), fill: rgb("#a5adb3"), stroke: 0.7pt + black)
  rect((6.54, 2.66), (6.80, 3.12), fill: rgb("#d0d5da"), stroke: 0.7pt + black)

  // Anello di ancoraggio destro (x=8.26..8.44, y=2.40..3.88)
  rect((8.26, 3.30), (8.44, 3.88), fill: rgb("#a5adb3"), stroke: 0.7pt + black)
  rect((8.26, 2.75), (8.44, 3.30), fill: rgb("#c2c8cc"), stroke: 0.7pt + black)
  rect((8.26, 2.40), (8.44, 2.75), fill: rgb("#a5adb3"), stroke: 0.7pt + black)

  // Albero con spallamento (x=5.30..6.80 a y=2.66, x=6.80..8.62 a y=2.40) e anello elastico destro
  rect((5.30, 0.80), (6.80, 2.66), fill: rgb("#90989e"), stroke: none)
  rect((5.30, 1.55), (6.80, 2.22), fill: rgb("#b8c0c6"), stroke: none)
  rect((5.30, 1.80), (6.80, 2.02), fill: rgb("#eef3f7"), stroke: none)

  rect((6.80, 0.80), (8.72, 2.40), fill: rgb("#90989e"), stroke: none)
  rect((6.80, 1.50), (8.72, 2.12), fill: rgb("#b8c0c6"), stroke: none)
  rect((6.80, 1.72), (8.72, 1.94), fill: rgb("#eef3f7"), stroke: none)
  line((8.72, 0.80), (8.72, 2.40), (8.90, 2.22), (8.90, 0.80), close: true, fill: rgb("#90989e"), stroke: none)

  line((5.30, 2.66), (6.80, 2.66), (6.80, 0.80), stroke: 0.75pt + black)
  line((6.80, 2.40), (8.44, 2.40), stroke: 0.75pt + black)
  // Anello elastico sull'albero (x=8.44..8.60, y=2.26..2.56)
  rect((8.44, 2.26), (8.60, 2.56), fill: rgb("#9aa2a8"), stroke: 0.7pt + black)
  line((8.44, 2.26), (8.44, 0.80), stroke: 0.5pt + black)
  line((8.60, 2.40), (8.72, 2.40), (8.90, 2.22), (8.90, 0.80), stroke: 0.75pt + black)
  line((8.60, 2.40), (8.60, 0.80), stroke: 0.5pt + black)
  line((8.72, 2.40), (8.72, 0.80), stroke: 0.5pt + black)

  // Cuscinetto a sfere radiale (x=6.80..8.26, y=2.40..3.72, centro sfera (7.53, 3.06), r=0.38)
  rect((6.80, 3.36), (8.26, 3.72), radius: 0.06, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((6.80, 2.40), (8.26, 2.80), radius: 0.06, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((7.02, 2.88), (8.04, 3.24), radius: 0.04, fill: rgb("#5c92c4"), stroke: 0.6pt + black)
  circle((7.53, 3.06), radius: 0.38, fill: rgb("#0e76b8"), stroke: none)
  circle((7.47, 3.12), radius: 0.27, fill: rgb("#7bb8de"), stroke: none)
  circle((7.40, 3.19), radius: 0.14, fill: rgb("#eef6fc"), stroke: none)
  circle((7.53, 3.06), radius: 0.38, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordi
  line((5.30, 0.70), (5.30, 2.80), stroke: 0.65pt + black)
  line((5.15, 0.80), (9.00, 0.80), stroke: 0.65pt + black)

  // Etichette "anello di ancoraggio" e "collare di spallamento"
  content((5.25, 0.22), text(size: 7.5pt)[anello di ancoraggio], anchor: "center")
  line((5.80, 0.38), (6.45, 3.52), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)

  content((8.50, 0.50), text(size: 7.5pt)[collare di spallamento], anchor: "center")
  line((7.18, 0.70), (6.68, 3.52), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)


  // =========================================================================
  // PANNELLO 6 (Bottom-Right): Anello di ancoraggio e bussola distanziale
  // =========================================================================
  // Sfondo cavità
  rect((10.05, 0.82), (13.60, 3.25), fill: rgb("#dcdfe2"), stroke: none)

  // Alloggiamento superiore (x=11.15..12.02, y=3.25..4.02)
  rect((11.15, 3.25), (12.02, 4.02), fill: rgb("#9aa2a8"), stroke: none)
  line((11.15, 4.02), (11.15, 3.25), (12.02, 3.25), (12.02, 4.02), stroke: 0.75pt + black)

  // Anello di ancoraggio inserito nella cava dell'anello esterno (x=12.08..12.16, y=3.14..3.38)
  rect((12.02, 3.25), (12.22, 3.44), fill: rgb("#dcdfe2"), stroke: 0.55pt + black)

  // Coperchio esterno sagomato (x=12.02..13.86)
  line((12.02, 4.02), (12.42, 4.02), (12.66, 3.30), (13.50, 3.05), (13.78, 2.82), (13.86, 2.55), (13.86, 0.82), (13.54, 0.82), (13.54, 2.48), (13.45, 2.66), (13.30, 2.76), (12.38, 2.98), (12.38, 3.25), (12.22, 3.25), (12.22, 3.44), (12.02, 3.44), close: true, fill: rgb("#a5adb3"), stroke: 0.75pt + black)
  // Testa bullone superiore sul coperchio
  rect((12.76, 3.46), (12.96, 3.96), radius: 0.03, fill: rgb("#90989e"), stroke: 0.7pt + black)
  line((12.76, 3.58), (12.96, 3.58), stroke: 0.55pt + black)
  line((12.76, 3.84), (12.96, 3.84), stroke: 0.55pt + black)

  // Organo a sinistra sull'albero + bussola o collare distanziale a L (x=10.66..11.15)
  line((10.05, 2.15), (10.66, 2.15), (10.66, 3.16), (10.56, 3.26), (10.05, 3.26), close: true, fill: rgb("#9aa2a8"), stroke: 0.75pt + black)
  line((9.95, 3.18), (10.66, 3.18), stroke: 0.6pt + black)
  // Bussola o collare distanziale a L
  line((10.66, 2.15), (11.15, 2.15), (11.15, 2.40), (10.78, 2.40), (10.78, 2.68), (10.66, 2.68), close: true, fill: rgb("#a5adb3"), stroke: 0.75pt + black)

  // Albero (x=10.05..12.44 a y=2.15, x=12.44..13.30 filettato a y=1.96)
  rect((10.05, 0.82), (12.44, 2.15), fill: rgb("#90989e"), stroke: none)
  rect((10.05, 1.45), (12.44, 1.92), fill: rgb("#b8c0c6"), stroke: none)
  rect((10.05, 1.64), (12.44, 1.80), fill: rgb("#eef3f7"), stroke: none)

  rect((12.44, 0.82), (13.22, 1.96), fill: rgb("#90989e"), stroke: none)
  rect((12.44, 1.40), (13.22, 1.80), fill: rgb("#b8c0c6"), stroke: none)
  rect((12.44, 1.56), (13.22, 1.70), fill: rgb("#eef3f7"), stroke: none)
  line((13.22, 0.82), (13.22, 1.96), (13.30, 1.88), (13.30, 0.82), close: true, fill: rgb("#90989e"), stroke: none)

  line((10.05, 2.15), (12.44, 2.15), (12.44, 0.82), stroke: 0.75pt + black)
  line((12.44, 1.96), (13.22, 1.96), (13.30, 1.88), (13.30, 0.82), stroke: 0.75pt + black)
  line((13.22, 1.96), (13.22, 0.82), stroke: 0.5pt + black)
  line((12.44, 1.88), (13.28, 1.88), stroke: 0.45pt + black)

  // Ghiera e rosetta di bloccaggio a destra (x=12.56..13.22, y=1.96..2.46)
  line((12.56, 1.96), (12.56, 2.38), (12.86, 2.38), (12.86, 2.46), (13.15, 2.46), (13.22, 2.40), (13.22, 1.96), close: true, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  line((12.56, 2.38), (12.56, 2.46), (12.86, 2.46), stroke: 0.6pt + black)
  line((12.56, 1.96), (12.62, 2.03), (12.68, 1.96), (12.74, 2.03), (12.80, 1.96), (12.86, 2.03), (12.92, 1.96), (12.98, 2.03), (13.04, 1.96), (13.10, 2.03), (13.16, 1.96), (13.22, 2.03), stroke: 0.55pt + black)
  // Rosetta di sicurezza nera
  line((12.49, 1.90), (12.56, 1.90), (12.56, 2.33), (12.84, 2.33), (12.84, 2.38), (12.49, 2.38), close: true, fill: black, stroke: 0.4pt + black)
  line((12.49, 2.38), (12.58, 2.52), (12.63, 2.49), (12.55, 2.38), close: true, fill: white, stroke: 0.55pt + black)

  // Cuscinetto a sfere radiale con cava per anello di ancoraggio (x=11.15..12.37, y=2.15..3.25)
  rect((11.15, 2.93), (12.37, 3.25), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  // Anello di ancoraggio nella cava dell'anello esterno
  rect((12.08, 3.12), (12.16, 3.38), fill: rgb("#c2c8cc"), stroke: 0.65pt + black)
  rect((11.15, 2.15), (12.37, 2.47), radius: 0.05, fill: rgb("#5c92c4"), stroke: 0.75pt + black)
  rect((11.36, 2.55), (12.16, 2.85), radius: 0.03, fill: rgb("#d0d5da"), stroke: 0.6pt + black)
  rect((11.44, 2.60), (12.08, 2.80), fill: rgb("#dcdfe2"), stroke: 0.45pt + black)
  circle((11.76, 2.70), radius: 0.29, fill: rgb("#5c92c4"), stroke: none)
  circle((11.72, 2.74), radius: 0.21, fill: rgb("#a6c8e8"), stroke: none)
  circle((11.67, 2.79), radius: 0.10, fill: rgb("#eef6fc"), stroke: none)
  circle((11.76, 2.70), radius: 0.29, fill: none, stroke: 0.85pt + black)

  // Linee d'asse e bordi
  line((10.05, 0.70), (10.05, 3.40), stroke: 0.65pt + black)
  line((9.90, 0.82), (14.00, 0.82), stroke: 0.65pt + black)

  // Etichette "anello di ancoraggio" e "bussola o collare distanziale"
  content((12.95, 4.42), text(size: 7.5pt)[anello di ancoraggio], anchor: "center")
  line((12.32, 4.22), (12.15, 3.42), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)

  content((12.15, 0.35), text(size: 7.5pt)[bussola o collare distanziale], anchor: "center")
  line((11.35, 0.55), (10.82, 2.38), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.55pt + black)
})
