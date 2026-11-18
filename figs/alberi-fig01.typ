// Figura estratta da alberi.typ (riga 44) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  
  // Assi di riferimento (tratto-punto)
  line((-0.5, 0), (14.5, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.0, -1.3), (1.0, 1.3), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((6.8, -0.7), (6.8, 0.7), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((7.7, -0.7), (7.7, 0.7), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // ----------------------------------------------------
  // SEZIONE 1: Sede sinistra (x: 0 -> 2.5)
  // ----------------------------------------------------
  // Faccia sinistra e smussi
  line((0, 0.8), (0, -0.8), stroke: 1pt)
  line((0, 0.8), (0.1, 1.0), stroke: 1pt)
  line((0, -0.8), (0.1, -1.0), stroke: 1pt)
  // Profilo esterno
  line((0.1, 1.0), (2.5, 1.0), stroke: 1pt)
  line((0.1, -1.0), (2.5, -1.0), stroke: 1pt)
  // Scanalatura superiore (cava per linguetta)
  line((0, 0.6), (1.4, 0.6), stroke: 1pt)
  arc((1.4, 1.0), start: -90deg, stop: 0deg, radius: 0.4, anchor: "origin", stroke: 1pt)
  // Foro cieco interno (tratteggiato)
  line((0, 0.35), (1.5, 0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.5, 0.35), (1.8, 0), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.8, 0), (1.5, -0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.5, -0.35), (0, -0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  // Proiezione larghezza scanalatura (tratteggiata)
  line((0, 0.8), (1.4, 0.8), stroke: (dash: "dashed", thickness: 0.8pt))
  // Parete di cambio sezione
  line((2.5, 1.0), (2.5, -1.0), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 2: Perno intermedio (x: 2.5 -> 4.0)
  // ----------------------------------------------------
  line((2.5, 0.5), (4.0, 0.5), stroke: 1pt)
  line((2.5, -0.5), (4.0, -0.5), stroke: 1pt)
  line((4.0, 1.1), (4.0, -1.1), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 3: Fusto (x: 4.0 -> 6.5)
  // ----------------------------------------------------
  line((4.0, 1.1), (6.5, 1.1), stroke: 1pt)
  line((4.0, -1.1), (6.5, -1.1), stroke: 1pt)
  line((6.5, 1.1), (6.5, -1.1), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 4: Sede centrale con asola (x: 6.5 -> 8.0)
  // ----------------------------------------------------
  line((6.5, 1.1), (8.0, 1.1), stroke: 1pt)
  line((6.5, -1.1), (8.0, -1.1), stroke: 1pt)
  line((8.0, 1.1), (8.0, -1.1), stroke: 1pt)
  // Asola
  line((6.8, 0.3), (7.7, 0.3), stroke: 1pt)
  line((6.8, -0.3), (7.7, -0.3), stroke: 1pt)
  arc((6.8, 0), start: 90deg, stop: 270deg, radius: 0.3, anchor: "origin", stroke: 1pt)
  arc((7.7, 0), start: -90deg, stop: 90deg, radius: 0.3, anchor: "origin", stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 5: Fusto rastremato (x: 8.0 -> 11.5)
  // ----------------------------------------------------
  line((8.0, 1.1), (11.5, 0.9), stroke: 1pt)
  line((8.0, -1.1), (11.5, -0.9), stroke: 1pt)
  line((11.5, 0.9), (11.5, -0.9), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 6: Perno estremità (x: 11.5 -> 13.8)
  // ----------------------------------------------------
  // Primo gradino
  line((11.5, 0.75), (12.5, 0.75), stroke: 1pt)
  line((11.5, -0.75), (12.5, -0.75), stroke: 1pt)
  line((12.5, 0.75), (12.5, -0.75), stroke: 1pt)
  // Secondo gradino (parte filettata esterna)
  line((12.5, 0.55), (13.6, 0.55), stroke: 1pt)
  line((12.5, -0.55), (13.6, -0.55), stroke: 1pt)
  // Linee di filettatura interne (sottili)
  line((12.5, 0.45), (13.8, 0.45), stroke: 0.6pt)
  line((12.5, -0.45), (13.8, -0.45), stroke: 0.6pt)
  // Smusso finale e faccia destra
  line((13.6, 0.55), (13.8, 0.45), stroke: 1pt)
  line((13.6, -0.55), (13.8, -0.45), stroke: 1pt)
  line((13.8, 0.45), (13.8, -0.45), stroke: 1pt)

  // ----------------------------------------------------
  // ANNOTAZIONI (Frecce e Testi)
  // ----------------------------------------------------
  // Sede sx
  line((1.8, -1.9), (1.4, -1.1), mark: (end: ">"), stroke: red)
  content((1.8, -2.1), [Sede], anchor: "north")
  
  // Perno intermedio
  line((3.5, -1.9), (3.1, -0.6), mark: (end: ">"), stroke: red)
  content((3.5, -2.1), [Perno\ intermedio], anchor: "north")
  
  // Fusto sx
  line((5.3, -1.9), (4.9, -1.2), mark: (end: ">"), stroke: red)
  content((5.3, -2.1), [Fusto], anchor: "north")
  
  // Sede centrale
  line((7.5, -1.9), (7.1, -1.2), mark: (end: ">"), stroke: red)
  content((7.5, -2.1), [Sede], anchor: "north")
  
  // Fusto dx rastremato
  line((9.8, -1.9), (9.4, -1.0), mark: (end: ">"), stroke: red)
  content((9.8, -2.1), [Fusto], anchor: "north")
  
  // Perno estremità dx
  line((12.8, -1.9), (12.3, -0.8), mark: (end: ">"), stroke: red)
  content((12.8, -2.1), [Perno\ estremità], anchor: "north")


})
