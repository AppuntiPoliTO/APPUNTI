// Figura estratta da solidi.typ (riga 195) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ================= SCHEMA PRINCIPALE =================

  // --- Contorni base e linee longitudinali ---
  // Piastra base frontale
  line((-2.5, 0), (2.5, 0), stroke: 1pt) // Bordo superiore (superficie di taglio fluido)
  line((-2.5, -0.4), (2.5, -0.4), stroke: 1pt) // Bordo inferiore
  line((-2.5, 0), (-2.5, -0.4), stroke: 1pt) // Spigolo sinistro
  line((2.5, 0), (2.5, -0.4), stroke: 1pt) // Spigolo destro

  // Piastra base prospettiva
  line((2.5, 0), (6.5, 1.5), stroke: 1pt) // Bordo destro superiore
  line((2.5, -0.4), (6.5, 1.1), stroke: 1pt) // Bordo destro inferiore
  line((6.5, 1.1), (6.5, 1.5), stroke: 1pt) // Spigolo posteriore verticale

  // Cilindro prospettiva
  line((-0.88, 2.34), (3.12, 3.84), stroke: 1pt) // Silhouette superiore

  // --- Archi cilindrici ---
  // Archi frontali
  arc((0,0), start: 0deg, stop: 180deg, radius: 2.5, anchor: "origin", stroke: 1pt) // Esterno
  arc((0,0), start: 0deg, stop: 180deg, radius: 2.0, anchor: "origin", stroke: 1pt) // Interno

  // Arco posteriore (da angolo 0 della prospettiva fino alla tangenza)
  arc((4.0, 1.5), start: 0deg, stop: 110.6deg, radius: 2.5, anchor: "origin", stroke: 1pt)

  // --- Frecce Pressione (p_i) ---
  // Frecce radiali
  line((0.91, 0.42), (1.63, 0.76), mark: (end: ">"), stroke: 1pt) // 25 deg
  line((0.50, 0.87), (0.90, 1.56), mark: (end: ">"), stroke: 1pt) // 60 deg
  line((0, 1.0), (0, 1.8), mark: (end: ">"), stroke: 1pt)         // 90 deg
  line((-0.50, 0.87), (-0.90, 1.56), mark: (end: ">"), stroke: 1pt) // 120 deg
  line((-0.91, 0.42), (-1.63, 0.76), mark: (end: ">"), stroke: 1pt) // 155 deg

  // Frecce verticali verso il basso
  line((-1.5, 0.8), (-1.5, 0.1), mark: (end: ">"), stroke: 1pt)
  line((-1.0, 0.8), (-1.0, 0.1), mark: (end: ">"), stroke: 1pt)
  line((-0.5, 0.8), (-0.5, 0.1), mark: (end: ">"), stroke: 1pt)
  line((0, 0.8), (0, 0.1), mark: (end: ">"), stroke: 1pt)
  line((0.5, 0.8), (0.5, 0.1), mark: (end: ">"), stroke: 1pt)
  line((1.0, 0.8), (1.0, 0.1), mark: (end: ">"), stroke: 1pt)
  line((1.5, 0.8), (1.5, 0.1), mark: (end: ">"), stroke: 1pt)

  // Etichetta p_i
  content((-0.2, 0.7), [$p_i$])

  // --- Quote e Dimensioni ---
  // Linee di estensione verticali
  line((-2.5, -0.6), (-2.5, -1.6), stroke: 0.6pt)
  line((-2.0, -0.2), (-2.0, -1.6), stroke: 0.6pt)
  line((2.0, -0.2), (2.0, -1.6), stroke: 0.6pt)
  line((2.5, -0.6), (2.5, -1.6), stroke: 0.6pt)

  // Linea di quota orizzontale principale
  line((-3.0, -1.2), (3.0, -1.2), stroke: 0.6pt)

  // Marcatori (Punti e Croci)
  circle((-2.5, -1.2), radius: 0.04, fill: black, stroke: none)
  line((-2.08, -1.12), (-1.92, -1.28), stroke: 0.6pt) // Croce sx
  line((-2.08, -1.28), (-1.92, -1.12), stroke: 0.6pt)
  line((1.92, -1.12), (2.08, -1.28), stroke: 0.6pt) // Croce dx
  line((1.92, -1.28), (2.08, -1.12), stroke: 0.6pt)
  circle((2.5, -1.2), radius: 0.04, fill: black, stroke: none)

  // Etichette quote
  content((-2.25, -0.9), [$s$])
  content((0, -0.9), [$D_i$])
  content((2.25, -0.9), [$s$])


  // ================= DETTAGLIO (Destra) =================
  
  // Parete curva superiore (archi da 0 a 25 gradi, centro a x=5.5)
  arc((5.5, 0), start: 0deg, stop: 25deg, radius: 2.0, anchor: "origin", stroke: 1pt) // Interno (7.5 -> 7.31)
  arc((5.5, 0), start: 0deg, stop: 25deg, radius: 2.4, anchor: "origin", stroke: 1pt) // Esterno (7.9 -> 7.67)
  line((7.5, 0), (7.9, 0), stroke: 1pt) // Bordo inferiore parete curva

  // Piastra base inferiore (forma a gradino)
  line((6.8, -0.6), (7.9, -0.6), stroke: 1pt) // Bordo superiore piastra
  line((7.9, -0.6), (7.9, -1.0), stroke: 1pt) // Faccia esterna verticale
  line((7.9, -1.0), (6.8, -1.0), stroke: 1pt) // Bordo inferiore piastra

  // Frecce di tensione sigma_c (doppia punta)
  line((7.6, 0), (7.6, -0.6), mark: (start: ">", end: ">"), stroke: 1pt)
  line((7.8, 0), (7.8, -0.6), mark: (start: ">", end: ">"), stroke: 1pt)

  // Etichetta sigma_c
  content((8.3, -0.3), [$sigma_c$])

})
