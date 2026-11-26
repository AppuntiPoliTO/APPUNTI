// Figura estratta da collegamenti filettati.typ (riga 322) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // =========================================================================
  // PANNELLO 1 (IN ALTO): FLUSSO DELLE LINEE DI FORZA TRA VITE E DADO A GOLE
  // Centrato orizzontalmente rispetto ai pannelli 2 e 3 (asse centrale x = 4.30)
  // =========================================================================

  // Elemento collegato (superiore)
  rect((4.15, 5.15), (7.25, 6.05), fill: luma(248), stroke: 1pt + black)
  content((5.70, 5.75), text(size: 8.5pt)[Elemento collegato], anchor: "center")

  // Corpo della Vite (sinistra)
  line(
    (1.35, 0.20), (3.95, 0.20),
    (3.35, 0.50), (3.35, 0.95),
    (3.95, 1.25), (3.95, 1.45), (3.35, 1.75),
    (3.35, 2.15),
    (3.95, 2.45), (3.95, 2.65), (3.35, 2.95),
    (3.35, 3.35),
    (3.95, 3.65), (3.95, 3.85), (3.35, 4.15),
    (3.35, 4.55),
    (3.95, 4.85), (3.95, 5.05), (3.35, 5.35),
    (3.00, 5.42), (2.65, 5.30), (2.30, 5.40), (1.95, 5.30), (1.65, 5.38), (1.35, 5.32),
    close: true,
    fill: luma(246),
    stroke: 1pt + black
  )

  // Corpo del Dado con gola di scarico (destra, ombreggiato)
  line(
    (3.38, 4.45), (4.50, 4.45), (4.90, 1.95),
    (4.97, 1.80), (5.07, 1.80), (5.15, 1.95),
    (5.15, 5.15), (6.40, 5.15),
    (6.53, 5.07), (6.57, 4.95),
    (6.57, 0.80), (6.53, 0.68), (6.40, 0.60),
    (3.38, 0.60), (3.38, 0.85),
    (4.01, 1.17), (4.01, 1.44),
    (3.38, 1.74), (3.38, 2.05),
    (4.01, 2.37), (4.01, 2.64),
    (3.38, 2.94), (3.38, 3.25),
    (4.01, 3.57), (4.01, 3.84),
    (3.38, 4.14), (3.38, 4.45),
    close: true,
    fill: luma(195),
    stroke: 1pt + black
  )

  // Frecce d'ingresso dall'elemento collegato nel colletto esterno del dado
  line((5.45, 5.48), (5.45, 5.05), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))
  line((5.75, 5.48), (5.75, 5.05), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))
  line((6.05, 5.48), (6.05, 5.05), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))

  // --- PERCORSO 1 (interno -> dente superiore del dado -> fianco sup. Dente 3 della vite) ---
  line((5.45, 5.12), (5.45, 2.10), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((5.45, 2.10), (4.70, 2.15), (5.45, 1.42), (4.82, 1.42), stroke: 1.25pt + rgb("#1f4e78"))
  line((4.70, 2.15), (4.27, 4.05), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((4.27, 4.05), (3.68, 3.99), (4.17, 4.35), (3.85, 4.25), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((3.68, 3.99), (3.00, 4.05), (3.48, 3.55), (3.00, 3.55), stroke: 1.25pt + rgb("#1f4e78"))
  line((3.00, 4.05), (3.00, 5.75), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))

  // --- PERCORSO 2 (medio -> dente centrale del dado -> fianco sup. Dente 2 della vite) ---
  line((5.75, 5.12), (5.75, 2.00), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((5.75, 2.00), (4.47, 2.05), (5.75, 1.08), (4.65, 1.15), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((4.47, 2.05), (3.68, 2.79), (4.25, 3.12), (3.88, 3.12), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((3.68, 2.79), (2.50, 2.90), (3.40, 2.20), (2.50, 2.20), stroke: 1.25pt + rgb("#1f4e78"))
  line((2.50, 2.90), (2.50, 5.75), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))

  // --- PERCORSO 3 (esterno -> dente inferiore del dado -> fianco sup. Dente 1 della vite) ---
  line((6.05, 5.12), (6.05, 1.90), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((6.05, 1.90), (4.40, 1.65), (6.05, 0.72), (4.80, 0.85), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((4.40, 1.65), (3.68, 1.59), (4.15, 1.98), (3.88, 1.90), stroke: 1.25pt + rgb("#1f4e78"))
  bezier((3.68, 1.59), (2.00, 1.80), (3.33, 0.78), (2.00, 0.78), stroke: 1.25pt + rgb("#1f4e78"))
  line((2.00, 1.80), (2.00, 5.75), stroke: 1.25pt + rgb("#1f4e78"), mark: (end: ">"))

  // Etichette Vite e Dado con cartiglio pulito
  rect((1.90, 0.32), (2.80, 0.68), fill: white, stroke: 0.4pt + luma(160))
  content((2.35, 0.50), text(size: 8.5pt)[*Vite*], anchor: "center")

  rect((4.90, 0.75), (5.80, 1.12), fill: white, stroke: 0.4pt + luma(140))
  content((5.35, 0.93), text(size: 8.5pt)[*Dado*], anchor: "center")


  // =========================================================================
  // PANNELLO 2 (AL CENTRO): DADO STANDARD (ACCIAIO / ACCIAIO) E GRAFICO
  // Ingombro laterale totale: da x ~ 0.65 a x = 7.95 (centro geometrico x = 4.30)
  // =========================================================================

  // Titolo di sezione / Materiali (centrato a x = 4.30)
  content((4.30, -0.45), text(size: 9pt)[*a) Dado standard* (Vite: acciaio — Dado: acciaio)], anchor: "center")

  // --- Grafico distribuzione del carico (sinistra) ---
  rect((2.2, -3.6), (5.0, -2.1), fill: luma(250), stroke: 0.9pt + black)

  // Linee verticali della griglia (30%, 20%, 10%)
  line((2.9, -3.6), (2.9, -2.1), stroke: 0.5pt + luma(120))
  line((3.6, -3.6), (3.6, -2.1), stroke: 0.5pt + luma(120))
  line((4.3, -3.6), (4.3, -2.1), stroke: 0.5pt + luma(120))

  // Linee orizzontali della griglia e raccordo ai filetti (filetti 1..6)
  line((2.2, -3.6), (6.1, -3.6), stroke: 0.55pt + luma(90))
  line((2.2, -3.3), (6.1, -3.3), stroke: 0.55pt + luma(90))
  line((2.2, -3.0), (6.1, -3.0), stroke: 0.55pt + luma(90))
  line((2.2, -2.7), (6.1, -2.7), stroke: 0.55pt + luma(90))
  line((2.2, -2.4), (6.1, -2.4), stroke: 0.55pt + luma(90))
  line((2.2, -2.1), (6.1, -2.1), stroke: 0.55pt + luma(90))

  // Curva di distribuzione del carico (35% al filetto 1 -> 6% al filetto 6)
  bezier(
    (2.55, -3.6), (4.58, -2.1),
    (3.65, -3.25), (4.42, -2.65),
    stroke: 1.3pt + rgb("#1f4e78")
  )

  // Punti sperimentali / nodi sui filetti 1..6
  circle((2.55, -3.6), radius: 0.065, fill: black, stroke: none)
  circle((3.28, -3.3), radius: 0.065, fill: black, stroke: none)
  circle((3.82, -3.0), radius: 0.065, fill: black, stroke: none)
  circle((4.18, -2.7), radius: 0.065, fill: black, stroke: none)
  circle((4.43, -2.4), radius: 0.065, fill: black, stroke: none)
  circle((4.58, -2.1), radius: 0.065, fill: black, stroke: none)

  // Annotazioni rosse 35% e 6% con frecce verticali
  content((2.55, -1.15), text(size: 8.5pt, fill: red)[*35%*], anchor: "south")
  line((2.55, -1.20), (2.55, -3.48), stroke: 0.9pt + red, mark: (end: ">"))

  content((4.58, -1.15), text(size: 8.5pt, fill: red)[*6%*], anchor: "south")
  line((4.58, -1.20), (4.58, -1.98), stroke: 0.9pt + red, mark: (end: ">"))

  // Etichette asse X (40, 30, 20, 10, 0 %)
  content((2.2, -3.72), text(size: 7.5pt)[40], anchor: "north")
  content((2.9, -3.72), text(size: 7.5pt)[30], anchor: "north")
  content((3.6, -3.72), text(size: 7.5pt)[20], anchor: "north")
  content((4.3, -3.72), text(size: 7.5pt)[10], anchor: "north")
  content((5.0, -3.72), text(size: 7.5pt)[0], anchor: "north")
  content((1.90, -3.72), text(size: 7.5pt)[*%*], anchor: "north")

  // Titolo asse X (tradotto in italiano, ben distanziato)
  content((3.6, -4.25), text(size: 7.5pt)[Quota di carico sui filetti], anchor: "north")
  content((3.6, -4.60), text(size: 7.5pt)[in presa (%)], anchor: "north")

  // Titolo asse Y (tradotto in italiano, a sinistra senza sovrapposizioni)
  content((1.85, -2.65), text(size: 7.5pt)[Filetto], anchor: "east")
  content((1.85, -3.00), text(size: 7.5pt)[in presa], anchor: "east")

  // --- Elemento fisico: Sezione Dado standard + Vite + Base (destra) ---
  line(
    (5.1, -4.55), (6.1, -4.55), (6.1, -5.45), (6.7, -5.45), (6.7, -3.95), (5.1, -3.95),
    close: true,
    fill: luma(242),
    stroke: none
  )
  line((5.1, -3.95), (6.7, -3.95), stroke: 1pt + black)
  line((6.7, -3.95), (6.7, -5.45), stroke: 1pt + black)
  line((5.1, -4.55), (6.1, -4.55), stroke: 0.8pt + black)
  line((6.1, -4.55), (6.1, -5.45), stroke: 0.8pt + black)

  // Tratteggio a 45° della piastra di base
  line((5.15, -4.35), (5.55, -3.95), stroke: 0.5pt + luma(80))
  line((5.30, -4.55), (5.90, -3.95), stroke: 0.5pt + luma(80))
  line((5.65, -4.55), (6.25, -3.95), stroke: 0.5pt + luma(80))
  line((6.00, -4.55), (6.60, -3.95), stroke: 0.5pt + luma(80))
  line((6.10, -4.80), (6.70, -4.20), stroke: 0.5pt + luma(80))
  line((6.10, -5.15), (6.70, -4.55), stroke: 0.5pt + luma(80))
  line((6.15, -5.45), (6.70, -4.90), stroke: 0.5pt + luma(80))

  // Sezione del Dado standard (con smusso esterno e 6 filetti in presa)
  line(
    (5.60, -3.82), (5.78, -3.95), (6.75, -3.95),
    (6.95, -3.75), (6.75, -3.60), (6.95, -3.45),
    (6.75, -3.30), (6.95, -3.15), (6.75, -3.00),
    (6.95, -2.85), (6.75, -2.70), (6.95, -2.55),
    (6.75, -2.40), (6.95, -2.25), (6.75, -2.10),
    (6.95, -1.95), (6.95, -1.90),
    (5.85, -1.90), (5.60, -2.05),
    close: true,
    fill: luma(205),
    stroke: 1pt + black
  )

  // Numeri dei filetti (1..6) su sfondo chiaro dentro il dado
  rect((6.12, -3.72), (6.38, -1.98), fill: luma(238), stroke: none)
  content((6.25, -3.60), text(size: 6.8pt)[*1*], anchor: "center")
  content((6.25, -3.30), text(size: 6.8pt)[*2*], anchor: "center")
  content((6.25, -3.00), text(size: 6.8pt)[*3*], anchor: "center")
  content((6.25, -2.70), text(size: 6.8pt)[*4*], anchor: "center")
  content((6.25, -2.40), text(size: 6.8pt)[*5*], anchor: "center")
  content((6.25, -2.10), text(size: 6.8pt)[*6*], anchor: "center")

  // Corpo della Vite (destra)
  line(
    (6.95, -1.45), (7.95, -1.45), (7.95, -5.15), (7.00, -5.15), (7.00, -3.85),
    (6.95, -3.75), (6.75, -3.60), (6.95, -3.45),
    (6.75, -3.30), (6.95, -3.15), (6.75, -3.00),
    (6.95, -2.85), (6.75, -2.70), (6.95, -2.55),
    (6.75, -2.40), (6.95, -2.25), (6.75, -2.10),
    (6.95, -1.95), (6.75, -1.80), (6.95, -1.65),
    close: true,
    fill: luma(248),
    stroke: 1pt + black
  )

  // Linee dei filetti sulla vite
  line((6.75, -3.60), (7.95, -3.52), stroke: 0.75pt + black)
  line((6.95, -3.45), (7.95, -3.38), stroke: 0.5pt + luma(80))
  line((6.75, -3.30), (7.95, -3.22), stroke: 0.75pt + black)
  line((6.95, -3.15), (7.95, -3.08), stroke: 0.5pt + luma(80))
  line((6.75, -3.00), (7.95, -2.92), stroke: 0.75pt + black)
  line((6.95, -2.85), (7.95, -2.78), stroke: 0.5pt + luma(80))
  line((6.75, -2.70), (7.95, -2.62), stroke: 0.75pt + black)
  line((6.95, -2.55), (7.95, -2.48), stroke: 0.5pt + luma(80))
  line((6.75, -2.40), (7.95, -2.32), stroke: 0.75pt + black)
  line((6.95, -2.25), (7.95, -2.18), stroke: 0.5pt + luma(80))
  line((6.75, -2.10), (7.95, -2.02), stroke: 0.75pt + black)
  line((6.95, -1.95), (7.95, -1.88), stroke: 0.5pt + luma(80))
  line((6.75, -1.80), (7.95, -1.72), stroke: 0.75pt + black)
  line((6.95, -1.65), (7.95, -1.58), stroke: 0.5pt + luma(80))
  line((7.00, -3.85), (7.95, -3.85), stroke: 0.6pt + black)

  // Asse di simmetria verticale della vite
  line((7.95, -1.25), (7.95, -5.45), stroke: (dash: "dash-dotted", thickness: 0.7pt, paint: black))


  // =========================================================================
  // PANNELLO 3 (IN BASSO): DADO CON GOLA DI SCARICO (TRAZIONE) E GRAFICO
  // Ingombro laterale totale: da x ~ 0.65 a x = 7.95 (centro geometrico x = 4.30)
  // =========================================================================

  // Titolo di sezione (centrato a x = 4.30)
  content((4.30, -6.15), text(size: 9pt)[*b) Dado con gola di scarico* (distribuzione uniforme del carico)], anchor: "center")

  // --- Grafico distribuzione del carico (sinistra) ---
  rect((2.2, -9.8), (5.0, -7.4), fill: luma(250), stroke: 0.9pt + black)

  // Linee verticali della griglia (30%, 20%, 10%)
  line((2.9, -9.8), (2.9, -7.4), stroke: 0.5pt + luma(120))
  line((3.6, -9.8), (3.6, -7.4), stroke: 0.5pt + luma(120))
  line((4.3, -9.8), (4.3, -7.4), stroke: 0.5pt + luma(120))

  // Linee orizzontali della griglia e raccordo ai filetti (1..3 e 4..9)
  line((2.2, -9.8), (5.5, -9.8), stroke: 0.55pt + luma(90))
  line((2.2, -9.5), (5.5, -9.5), stroke: 0.55pt + luma(90))
  line((2.2, -9.2), (5.5, -9.2), stroke: 0.55pt + luma(90))
  line((2.2, -8.9), (6.1, -8.9), stroke: 0.55pt + luma(90))
  line((2.2, -8.6), (6.1, -8.6), stroke: 0.55pt + luma(90))
  line((2.2, -8.3), (6.1, -8.3), stroke: 0.55pt + luma(90))
  line((2.2, -8.0), (6.1, -8.0), stroke: 0.55pt + luma(90))
  line((2.2, -7.7), (6.1, -7.7), stroke: 0.55pt + luma(90))
  line((2.2, -7.4), (6.1, -7.4), stroke: 0.55pt + luma(90))

  // Numeri dei filetti 1, 2, 3 nella zona intermedia prima della gola
  content((5.25, -9.8), text(size: 6.8pt)[*1*], anchor: "center")
  content((5.25, -9.5), text(size: 6.8pt)[*2*], anchor: "center")
  content((5.25, -9.2), text(size: 6.8pt)[*3*], anchor: "center")
  line((5.42, -9.8), (6.45, -9.8), stroke: 0.5pt + luma(90))
  line((5.42, -9.5), (6.45, -9.5), stroke: 0.5pt + luma(90))
  line((5.42, -9.2), (6.45, -9.2), stroke: 0.5pt + luma(90))

  // Curva di distribuzione del carico quasi uniforme (~10% - 15%)
  bezier(
    (3.92, -9.8), (4.15, -7.4),
    (4.32, -9.0), (4.35, -8.1),
    stroke: 1.3pt + rgb("#1f4e78")
  )

  // Etichette asse X (40, 30, 20, 10, 0 %)
  content((2.2, -9.92), text(size: 7.5pt)[40], anchor: "north")
  content((2.9, -9.92), text(size: 7.5pt)[30], anchor: "north")
  content((3.6, -9.92), text(size: 7.5pt)[20], anchor: "north")
  content((4.3, -9.92), text(size: 7.5pt)[10], anchor: "north")
  content((5.0, -9.92), text(size: 7.5pt)[0], anchor: "north")
  content((1.90, -9.92), text(size: 7.5pt)[*%*], anchor: "north")

  // Titolo asse X (tradotto in italiano)
  content((3.6, -10.45), text(size: 7.5pt)[Quota di carico sui filetti], anchor: "north")
  content((3.6, -10.80), text(size: 7.5pt)[in presa (%)], anchor: "north")

  // Titolo asse Y (tradotto in italiano)
  content((1.85, -8.40), text(size: 7.5pt)[Filetto], anchor: "east")
  content((1.85, -8.75), text(size: 7.5pt)[in presa], anchor: "east")

  // --- Elemento fisico: Sezione Dado con gola di scarico + Vite + Base (destra) ---
  line(
    (5.1, -10.75), (6.1, -10.75), (6.1, -11.65), (6.7, -11.65), (6.7, -10.15), (5.1, -10.15),
    close: true,
    fill: luma(242),
    stroke: none
  )
  line((5.1, -10.15), (6.7, -10.15), stroke: 1pt + black)
  line((6.7, -10.15), (6.7, -11.65), stroke: 1pt + black)
  line((5.1, -10.75), (6.1, -10.75), stroke: 0.8pt + black)
  line((6.1, -10.75), (6.1, -11.65), stroke: 0.8pt + black)

  // Tratteggio a 45° della piastra di base
  line((5.15, -10.55), (5.55, -10.15), stroke: 0.5pt + luma(80))
  line((5.30, -10.75), (5.90, -10.15), stroke: 0.5pt + luma(80))
  line((5.65, -10.75), (6.25, -10.15), stroke: 0.5pt + luma(80))
  line((6.00, -10.75), (6.60, -10.15), stroke: 0.5pt + luma(80))
  line((6.10, -11.00), (6.70, -10.40), stroke: 0.5pt + luma(80))
  line((6.10, -11.35), (6.70, -10.75), stroke: 0.5pt + luma(80))
  line((6.15, -11.65), (6.70, -11.10), stroke: 0.5pt + luma(80))

  // Sezione del Dado con gola di scarico (colletto esterno in appoggio + gola interna + 9 filetti)
  line(
    (5.55, -10.15), (6.00, -10.15),
    (6.00, -9.18), (6.06, -9.08), (6.18, -9.08), (6.25, -9.18),
    (6.50, -9.95), (6.75, -9.95),
    (6.95, -9.95), (6.75, -9.80), (6.95, -9.65),
    (6.75, -9.50), (6.95, -9.35), (6.75, -9.20),
    (6.95, -9.05), (6.75, -8.90), (6.95, -8.75),
    (6.75, -8.60), (6.95, -8.45), (6.75, -8.30),
    (6.95, -8.15), (6.75, -8.00), (6.95, -7.85),
    (6.75, -7.70), (6.95, -7.55), (6.75, -7.40),
    (6.95, -7.25), (6.95, -7.15),
    (5.95, -7.15), (5.70, -7.35),
    (5.70, -9.35), (5.55, -9.45),
    close: true,
    fill: luma(205),
    stroke: 1pt + black
  )

  // Numeri dei filetti 4..9 dentro la parte superiore del dado
  rect((6.12, -9.00), (6.38, -7.28), fill: luma(238), stroke: none)
  content((6.25, -8.90), text(size: 6.8pt)[*4*], anchor: "center")
  content((6.25, -8.60), text(size: 6.8pt)[*5*], anchor: "center")
  content((6.25, -8.30), text(size: 6.8pt)[*6*], anchor: "center")
  content((6.25, -8.00), text(size: 6.8pt)[*7*], anchor: "center")
  content((6.25, -7.70), text(size: 6.8pt)[*8*], anchor: "center")
  content((6.25, -7.40), text(size: 6.8pt)[*9*], anchor: "center")

  // Corpo della Vite (destra, con 9 filetti in presa)
  line(
    (6.95, -6.75), (7.95, -6.75), (7.95, -11.35), (7.00, -11.35), (7.00, -10.05),
    (6.95, -9.95), (6.75, -9.80), (6.95, -9.65),
    (6.75, -9.50), (6.95, -9.35), (6.75, -9.20),
    (6.95, -9.05), (6.75, -8.90), (6.95, -8.75),
    (6.75, -8.60), (6.95, -8.45), (6.75, -8.30),
    (6.95, -8.15), (6.75, -8.00), (6.95, -7.85),
    (6.75, -7.70), (6.95, -7.55), (6.75, -7.40),
    (6.95, -7.25), (6.75, -7.10), (6.95, -6.95),
    close: true,
    fill: luma(248),
    stroke: 1pt + black
  )

  // Linee dei filetti sulla vite (1..9 + superiori)
  line((6.75, -9.80), (7.95, -9.72), stroke: 0.75pt + black)
  line((6.95, -9.65), (7.95, -9.58), stroke: 0.5pt + luma(80))
  line((6.75, -9.50), (7.95, -9.42), stroke: 0.75pt + black)
  line((6.95, -9.35), (7.95, -9.28), stroke: 0.5pt + luma(80))
  line((6.75, -9.20), (7.95, -9.12), stroke: 0.75pt + black)
  line((6.95, -9.05), (7.95, -8.98), stroke: 0.5pt + luma(80))
  line((6.75, -8.90), (7.95, -8.82), stroke: 0.75pt + black)
  line((6.95, -8.75), (7.95, -8.68), stroke: 0.5pt + luma(80))
  line((6.75, -8.60), (7.95, -8.52), stroke: 0.75pt + black)
  line((6.95, -8.45), (7.95, -8.38), stroke: 0.5pt + luma(80))
  line((6.75, -8.30), (7.95, -8.22), stroke: 0.75pt + black)
  line((6.95, -8.15), (7.95, -8.08), stroke: 0.5pt + luma(80))
  line((6.75, -8.00), (7.95, -7.92), stroke: 0.75pt + black)
  line((6.95, -7.85), (7.95, -7.78), stroke: 0.5pt + luma(80))
  line((6.75, -7.70), (7.95, -7.62), stroke: 0.75pt + black)
  line((6.95, -7.55), (7.95, -7.48), stroke: 0.5pt + luma(80))
  line((6.75, -7.40), (7.95, -7.32), stroke: 0.75pt + black)
  line((6.95, -7.25), (7.95, -7.18), stroke: 0.5pt + luma(80))
  line((6.75, -7.10), (7.95, -7.02), stroke: 0.75pt + black)
  line((6.95, -6.95), (7.95, -6.88), stroke: 0.5pt + luma(80))
  line((7.00, -10.05), (7.95, -10.05), stroke: 0.6pt + black)

  // Asse di simmetria verticale della vite
  line((7.95, -6.55), (7.95, -11.65), stroke: (dash: "dash-dotted", thickness: 0.7pt, paint: black))
})
