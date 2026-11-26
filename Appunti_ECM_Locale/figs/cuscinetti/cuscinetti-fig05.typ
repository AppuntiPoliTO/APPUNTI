// Figura estratta da cuscinetti.typ (riga 440) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // =========================================================================
  // PANNELLO 1 (ALTO SINISTRA): Cuscinetto con carico distribuito sull'interno
  // Centro O1 = (0, 0)
  // =========================================================================

  // 12 sfere (disegnate per prime; le calotte vengono coperte dagli anelli)
  circle(( 0.900,  0.000), radius: 0.16, stroke: 0.5pt)
  circle(( 0.779,  0.450), radius: 0.16, stroke: 0.5pt)
  circle(( 0.450,  0.779), radius: 0.16, stroke: 0.5pt)
  circle(( 0.000,  0.900), radius: 0.16, stroke: 0.5pt)
  circle((-0.450,  0.779), radius: 0.16, stroke: 0.5pt)
  circle((-0.779,  0.450), radius: 0.16, stroke: 0.5pt)
  circle((-0.900,  0.000), radius: 0.16, stroke: 0.5pt)
  circle((-0.779, -0.450), radius: 0.16, stroke: 0.5pt)
  circle((-0.450, -0.779), radius: 0.16, stroke: 0.5pt)
  circle(( 0.000, -0.900), radius: 0.16, stroke: 0.5pt)
  circle(( 0.450, -0.779), radius: 0.16, stroke: 0.5pt)
  circle(( 0.779, -0.450), radius: 0.16, stroke: 0.5pt)

  // Maschere bianche per gli anelli (anello esterno tra r=1.04 e r=1.25; anello interno tra r=0.56 e r=0.76)
  circle((0, 0), radius: 1.145, stroke: (paint: white, thickness: 5.5pt))
  circle((0, 0), radius: 0.660, fill: white, stroke: (paint: white, thickness: 5.2pt))

  // Circonferenze degli anelli
  circle((0, 0), radius: 1.25, stroke: 0.6pt)
  circle((0, 0), radius: 1.04, stroke: 0.6pt)
  circle((0, 0), radius: 0.76, stroke: 0.6pt)
  circle((0, 0), radius: 0.56, stroke: 0.6pt)

  // Freccia curva di rotazione sull'anello interno
  arc((0, 0), start: 62deg, stop: 118deg, radius: 0.66, anchor: "origin", mark: (start: ">", size: 0.08), stroke: 0.5pt)

  // Freccia azzurra grande centrale
  line((0, 0.22), (0, -0.54), mark: (end: ">", size: 0.18), stroke: (paint: rgb(0, 150, 215), thickness: 2.4pt))

  // Piccole frecce azzurre radiali interne (da r = 0.38 a r = 0.54)
  for i in range(16) {
    if i != 12 {
      let angle = i * 22.5deg
      line(
        (angle, 0.38),
        (angle, 0.54),
        mark: (end: ">", length: 0.065, width: 0.05),
        stroke: (paint: rgb(0, 150, 215), thickness: 0.65pt)
      )
    }
  }

  // 5 frecce azzurre esterne nella zona di carico inferiore
  line(( 0.00, -1.92), ( 0.00, -1.27), mark: (end: ">", size: 0.12), stroke: (paint: rgb(0, 150, 215), thickness: 1.0pt))
  line((-1.05, -1.42), (-0.74, -1.03), mark: (end: ">", size: 0.10), stroke: (paint: rgb(0, 150, 215), thickness: 0.9pt))
  line(( 1.05, -1.42), ( 0.74, -1.03), mark: (end: ">", size: 0.10), stroke: (paint: rgb(0, 150, 215), thickness: 0.9pt))
  line((-1.48, -0.42), (-1.22, -0.34), mark: (end: ">", size: 0.09), stroke: (paint: rgb(0, 150, 215), thickness: 0.8pt))
  line(( 1.48, -0.42), ( 1.22, -0.34), mark: (end: ">", size: 0.09), stroke: (paint: rgb(0, 150, 215), thickness: 0.8pt))


  // =========================================================================
  // PANNELLO 2 (ALTO DESTRA): Anello interno cerchiato in rosso + esterno
  // =========================================================================

  // Anello interno in prospettiva (centro faccia destra in (3.62, -0.02))
  // Bordo sinistro (spalla posteriore)
  arc((3.04, -0.02), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  arc((3.18, -0.02), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  line((3.04,  0.92), (3.18,  0.92), stroke: 0.5pt)
  line((3.04, -0.96), (3.18, -0.96), stroke: 0.5pt)

  // Gola centrale con traccia di usura (tratteggiata/punteggiata)
  arc((3.27, -0.02), start: 95deg, stop: 265deg, radius: (0.24, 0.84), anchor: "origin", stroke: (dash: "densely-dotted", thickness: 1.8pt, paint: luma(140)))
  arc((3.32, -0.02), start: 95deg, stop: 265deg, radius: (0.24, 0.84), anchor: "origin", stroke: (dash: "dotted", thickness: 1.0pt, paint: luma(90)))
  // Raccordi della gola in alto e in basso
  arc((3.26,  0.92), start: 180deg, stop: 360deg, radius: (0.08, 0.10), anchor: "origin", stroke: 0.5pt)
  arc((3.26, -0.96), start: 0deg, stop: 180deg, radius: (0.08, 0.10), anchor: "origin", stroke: 0.5pt)

  // Spalla destra e faccia anteriore dell'anello interno
  arc((3.34, -0.02), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  line((3.34,  0.92), (3.52,  0.92), stroke: 0.5pt)
  line((3.34, -0.96), (3.52, -0.96), stroke: 0.5pt)
  circle((3.52, -0.02), radius: (0.28, 0.94), fill: white, stroke: 0.5pt)
  circle((3.52, -0.02), radius: (0.18, 0.64), stroke: 0.5pt)
  arc((3.58, -0.02), start: 115deg, stop: 245deg, radius: (0.18, 0.64), anchor: "origin", stroke: 0.5pt)

  // Metà anello esterno sezionato (a destra, centro (4.65, 0.00))
  // Archi principali dalla cima al fondo (start: -90deg, stop: 90deg)
  arc((4.38, 0.00), start: -90deg, stop: 90deg, radius: (0.36, 1.14), anchor: "origin", stroke: 0.5pt)
  arc((4.48, 0.00), start: -90deg, stop: 90deg, radius: (0.38, 1.20), anchor: "origin", stroke: 0.5pt)
  // Fascia di usura sulla pista concava interna
  arc((4.58, 0.00), start: -80deg, stop: 80deg, radius: (0.40, 1.22), anchor: "origin", stroke: (dash: "densely-dotted", thickness: 2.2pt, paint: luma(140)))
  arc((4.63, 0.00), start: -85deg, stop: 85deg, radius: (0.40, 1.22), anchor: "origin", stroke: (dash: "dotted", thickness: 1.2pt, paint: luma(80)))
  // Bordo esterno anteriore e posteriore
  arc((4.78, 0.00), start: -90deg, stop: 90deg, radius: (0.44, 1.38), anchor: "origin", stroke: 0.5pt)
  arc((4.88, 0.00), start: -90deg, stop: 90deg, radius: (0.44, 1.38), anchor: "origin", stroke: 0.5pt)
  // Chiusure delle sezioni in alto e in basso
  line((4.38,  1.14), (4.26,  1.20), (4.26,  1.38), (4.88,  1.38), stroke: 0.5pt)
  line((4.38,  1.14), (4.48,  1.20), (4.68,  1.20), (4.78,  1.14), (4.78,  1.38), stroke: 0.5pt)
  line((4.38, -1.14), (4.26, -1.20), (4.26, -1.38), (4.88, -1.38), stroke: 0.5pt)
  line((4.38, -1.14), (4.48, -1.20), (4.68, -1.20), (4.78, -1.14), (4.78, -1.38), stroke: 0.5pt)

  // Cerchio/ellisse rossa attorno all'anello interno
  circle((3.28, -0.02), radius: (1.16, 1.28), stroke: (paint: red, thickness: 1.0pt))


  // =========================================================================
  // PANNELLO 3 (BASSO SINISTRA): Cuscinetto con carico fisso verticale
  // Centro O3 = (0, -3.55)
  // =========================================================================

  // 12 sfere
  circle(( 0.900, -3.550), radius: 0.16, stroke: 0.5pt)
  circle(( 0.779, -3.100), radius: 0.16, stroke: 0.5pt)
  circle(( 0.450, -2.771), radius: 0.16, stroke: 0.5pt)
  circle(( 0.000, -2.650), radius: 0.16, stroke: 0.5pt)
  circle((-0.450, -2.771), radius: 0.16, stroke: 0.5pt)
  circle((-0.779, -3.100), radius: 0.16, stroke: 0.5pt)
  circle((-0.900, -3.550), radius: 0.16, stroke: 0.5pt)
  circle((-0.779, -4.000), radius: 0.16, stroke: 0.5pt)
  circle((-0.450, -4.329), radius: 0.16, stroke: 0.5pt)
  circle(( 0.000, -4.450), radius: 0.16, stroke: 0.5pt)
  circle(( 0.450, -4.329), radius: 0.16, stroke: 0.5pt)
  circle(( 0.779, -4.000), radius: 0.16, stroke: 0.5pt)

  // Maschere bianche per gli anelli
  circle((0, -3.55), radius: 1.145, stroke: (paint: white, thickness: 5.5pt))
  circle((0, -3.55), radius: 0.660, fill: white, stroke: (paint: white, thickness: 5.2pt))

  // Circonferenze degli anelli
  circle((0, -3.55), radius: 1.25, stroke: 0.6pt)
  circle((0, -3.55), radius: 1.04, stroke: 0.6pt)
  circle((0, -3.55), radius: 0.76, stroke: 0.6pt)
  circle((0, -3.55), radius: 0.56, stroke: 0.6pt)

  // Freccia curva di rotazione sull'anello interno
  arc((0, -3.55), start: 62deg, stop: 118deg, radius: 0.66, anchor: "origin", mark: (start: ">", size: 0.08), stroke: 0.5pt)

  // Due frecce azzurre spesse contrapposte (alto e basso)
  line((0, -1.78), (0, -2.28), mark: (end: ">", size: 0.18), stroke: (paint: rgb(0, 150, 215), thickness: 2.6pt))
  line((0, -5.32), (0, -4.82), mark: (end: ">", size: 0.18), stroke: (paint: rgb(0, 150, 215), thickness: 2.6pt))


  // =========================================================================
  // PANNELLO 4 (BASSO DESTRA): Anello esterno cerchiato in rosso
  // =========================================================================

  // Anello interno in prospettiva (centro faccia destra in (3.78, -3.55))
  arc((3.20, -3.55), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  arc((3.34, -3.55), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  line((3.20, -2.61), (3.34, -2.61), stroke: 0.5pt)
  line((3.20, -4.49), (3.34, -4.49), stroke: 0.5pt)

  // Gola centrale con traccia di usura
  arc((3.43, -3.55), start: 95deg, stop: 265deg, radius: (0.24, 0.84), anchor: "origin", stroke: (dash: "densely-dotted", thickness: 1.5pt, paint: luma(140)))
  arc((3.48, -3.55), start: 95deg, stop: 265deg, radius: (0.24, 0.84), anchor: "origin", stroke: (dash: "dotted", thickness: 0.9pt, paint: luma(90)))
  arc((3.42, -2.61), start: 180deg, stop: 360deg, radius: (0.08, 0.10), anchor: "origin", stroke: 0.5pt)
  arc((3.42, -4.49), start: 0deg, stop: 180deg, radius: (0.08, 0.10), anchor: "origin", stroke: 0.5pt)

  // Spalla destra e faccia anteriore dell'anello interno
  arc((3.50, -3.55), start: 90deg, stop: 270deg, radius: (0.28, 0.94), anchor: "origin", stroke: 0.5pt)
  line((3.50, -2.61), (3.68, -2.61), stroke: 0.5pt)
  line((3.50, -4.49), (3.68, -4.49), stroke: 0.5pt)
  circle((3.68, -3.55), radius: (0.28, 0.94), fill: white, stroke: 0.5pt)
  circle((3.68, -3.55), radius: (0.18, 0.64), stroke: 0.5pt)
  arc((3.74, -3.55), start: 115deg, stop: 245deg, radius: (0.18, 0.64), anchor: "origin", stroke: 0.5pt)

  // Metà anello esterno sezionato (a destra, centro (4.85, -3.55))
  arc((4.58, -3.55), start: -90deg, stop: 90deg, radius: (0.36, 1.14), anchor: "origin", stroke: 0.5pt)
  arc((4.68, -3.55), start: -90deg, stop: 90deg, radius: (0.38, 1.20), anchor: "origin", stroke: 0.5pt)
  // Traccia di usura localizzata in alto e in basso sulla pista esterna
  arc((4.78, -3.55), start: 40deg, stop: 82deg, radius: (0.40, 1.22), anchor: "origin", stroke: (dash: "densely-dotted", thickness: 2.0pt, paint: luma(130)))
  arc((4.78, -3.55), start: -82deg, stop: -40deg, radius: (0.40, 1.22), anchor: "origin", stroke: (dash: "densely-dotted", thickness: 2.0pt, paint: luma(130)))
  arc((4.83, -3.55), start: -88deg, stop: 88deg, radius: (0.40, 1.22), anchor: "origin", stroke: 0.4pt)
  // Bordo esterno anteriore e posteriore
  arc((4.98, -3.55), start: -90deg, stop: 90deg, radius: (0.44, 1.38), anchor: "origin", stroke: 0.5pt)
  arc((5.08, -3.55), start: -90deg, stop: 90deg, radius: (0.44, 1.38), anchor: "origin", stroke: 0.5pt)
  // Chiusure delle sezioni in alto e in basso
  line((4.58, -2.41), (4.46, -2.35), (4.46, -2.17), (5.08, -2.17), stroke: 0.5pt)
  line((4.58, -2.41), (4.68, -2.35), (4.88, -2.35), (4.98, -2.41), (4.98, -2.17), stroke: 0.5pt)
  line((4.58, -4.69), (4.46, -4.75), (4.46, -4.93), (5.08, -4.93), stroke: 0.5pt)
  line((4.58, -4.69), (4.68, -4.75), (4.88, -4.75), (4.98, -4.69), (4.98, -4.93), stroke: 0.5pt)

  // Ellisse rossa attorno alla metà dell'anello esterno
  circle((4.95, -3.55), radius: (0.72, 1.88), stroke: (paint: red, thickness: 1.0pt))
})
