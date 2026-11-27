// Figura estratta da ruote dentate.typ (riga 2246) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. RIEMPIMENTI GRIGI DEI DENTI ELICOIDALI
  // Ombreggiatura di base sotto i denti
  line((0.12, 1.25), (0.35, 1.48), (1.72, 2.25), (2.58, 1.52), (2.52, 1.12), (1.45, 0.50), (0.85, 0.68), (0.35, 1.02), close: true, fill: gray.transparentize(55%), stroke: none)

  // Dente 1 (superiore-sinistro)
  line((0.32, 1.28), (0.44, 1.52), (1.66, 2.28), (1.82, 2.24), (1.84, 2.04), (0.64, 1.24), (0.45, 1.22), close: true, fill: gray.transparentize(40%), stroke: none)
  // Dente 2 (centrale)
  line((0.78, 1.02), (0.92, 1.26), (2.14, 2.02), (2.28, 1.98), (2.30, 1.78), (1.10, 0.98), (0.92, 0.96), close: true, fill: gray.transparentize(40%), stroke: none)
  // Dente 3 (inferiore-destro)
  line((1.22, 0.68), (1.36, 0.92), (2.56, 1.68), (2.66, 1.62), (2.64, 1.44), (1.46, 0.64), (1.32, 0.62), close: true, fill: gray.transparentize(40%), stroke: none)

  // 2. CILINDRO PRIMITIVO E ASSI CARTESIANI
  // Cerchio anteriore (tratto-punto)
  circle((0.00, 0.00), radius: 1.68, stroke: (dash: "dash-dotted", thickness: 0.65pt))
  // Arco posteriore (tratto-punto)
  arc((0.93, 0.93), start: -45deg, stop: 48deg, radius: 1.68, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.65pt))
  arc((0.93, 0.93), start: 82deg, stop: 135deg, radius: 1.68, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.65pt))
  // Generatrici esterne del cilindro
  line((-1.19, 1.19), (-0.26, 2.12), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((1.19, -1.19), (2.12, -0.26), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Assi x, y, z al centro del cilindro
  line((-2.02, 0.00), (-0.22, 0.00), stroke: 0.65pt)
  line((-0.12, 0.00), (0.12, 0.00), stroke: 0.65pt)
  line((0.22, 0.00), (1.95, 0.00), stroke: 0.65pt)

  line((0.00, -1.98), (0.00, -0.22), stroke: 0.65pt)
  line((0.00, -0.12), (0.00, 0.12), stroke: 0.65pt)
  line((0.00, 0.22), (0.00, 1.42), stroke: 0.65pt)

  line((-0.08, -0.08), (-0.82, -0.82), stroke: 0.65pt)

  // 3. CONTORNI DEI DENTI ELICOIDALI
  // Dente 1: profilo frontale, cresta e fianco
  line((0.32, 1.28), (0.44, 1.52), (0.55, 1.48), (0.64, 1.24), (0.78, 1.02), stroke: 0.75pt)
  line((0.44, 1.52), (1.66, 2.28), (1.82, 2.24), (1.84, 2.04), stroke: 0.75pt)
  line((0.55, 1.48), (1.82, 2.24), stroke: 0.65pt)
  line((0.64, 1.24), (1.84, 2.04), stroke: 0.75pt)

  // Dente 2: profilo frontale, cresta e fianco
  line((0.78, 1.02), (0.92, 1.26), (1.02, 1.22), (1.10, 0.98), (1.22, 0.68), stroke: 0.75pt)
  line((0.92, 1.26), (2.14, 2.02), (2.28, 1.98), (2.30, 1.78), stroke: 0.75pt)
  line((1.02, 1.22), (2.28, 1.98), stroke: 0.65pt)
  line((1.10, 0.98), (2.30, 1.78), stroke: 0.75pt)

  // Dente 3: profilo frontale, cresta e fianco
  line((1.22, 0.68), (1.36, 0.92), (1.46, 0.86), (1.46, 0.64), (1.46, 0.45), stroke: 0.75pt)
  line((1.36, 0.92), (2.56, 1.68), (2.66, 1.62), (2.64, 1.44), stroke: 0.75pt)
  line((1.46, 0.86), (2.66, 1.62), stroke: 0.65pt)
  line((1.46, 0.64), (2.64, 1.44), stroke: 0.75pt)

  // 4. ELEMENTO DEL DENTE E ANGOLO D'ELICA SUL CILINDRO
  // Generatrice assiale passante per P (0.45, 1.62) a -135deg e linea dell'elemento del dente
  line((0.45, 1.62), (-0.45, 0.72), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.45, 1.62), (-0.82, 0.90), stroke: 0.65pt)
  line((0.45, 1.62), (1.15, 2.02), stroke: 0.65pt)
  line((-0.88, 1.02), (-0.70, 0.84), stroke: 0.6pt)

  // Frecce per l'angolo psi sull'elemento del dente
  arc((0.45, 1.62), start: 204deg, stop: 210deg, radius: 1.35, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, length: 0.16, width: 0.09))
  arc((0.45, 1.62), start: 225deg, stop: 242deg, radius: 1.15, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, length: 0.16, width: 0.09))

  // 5. PARALLELEPIPEDO DELLE FORZE
  // Spigoli continui (faccia anteriore, superiore e laterale destra)
  line((-4.85, 1.62), (-4.85, 3.10), (0.45, 3.10), stroke: 0.65pt)
  line((-4.85, 3.10), (-3.18, 4.77), (2.12, 4.77), (0.45, 3.10), stroke: 0.65pt)
  line((2.12, 4.77), (2.12, 3.29), stroke: 0.65pt)

  // Spigoli tratteggiati (nascosti)
  line((-3.18, 3.29), (-3.18, 4.77), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-3.18, 3.29), (-4.85, 1.62), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-3.18, 3.29), (2.12, 3.29), stroke: (dash: "dashed", thickness: 0.65pt))

  // Diagonali delle facce (tratti lunghi)
  line((-4.85, 3.10), (0.45, 1.62), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-3.18, 3.29), (0.45, 1.62), stroke: (dash: "dashed", thickness: 0.65pt))

  // 6. VETTORI FORZA (spessi, convergenti in P = (0.45, 1.62))
  // W_t (tangenziale)
  line((-4.85, 1.62), (0.45, 1.62), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.26, width: 0.16))
  // W_r (radiale)
  line((0.45, 3.10), (0.45, 1.62), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.26, width: 0.16))
  // W_a (assiale)
  line((2.12, 3.29), (0.45, 1.62), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.26, width: 0.16))
  // W (risultante totale)
  line((-3.18, 4.77), (0.45, 1.62), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.28, width: 0.17))

  // 7. ARCHI DEGLI ANGOLI (phi_t, psi, phi_n) E FRECCE DI RICHIAMO
  // Angolo phi_t (centro P = (0.45, 1.62), r = 3.98, tra 164.4deg e 180deg)
  arc((0.45, 1.62), start: 164.4deg, stop: 168.5deg, radius: 3.98, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, length: 0.18, width: 0.10))
  arc((0.45, 1.62), start: 174.5deg, stop: 180.0deg, radius: 3.98, anchor: "origin", stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.18, width: 0.10))

  // Angolo psi (centro P = (0.45, 1.62), r = 2.50, tra 155.3deg e 180deg)
  arc((0.45, 1.62), start: 155.3deg, stop: 162.5deg, radius: 2.50, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, length: 0.18, width: 0.10))
  arc((0.45, 1.62), start: 171.5deg, stop: 180.0deg, radius: 2.50, anchor: "origin", stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.18, width: 0.10))

  // Angolo phi_n (centro P = (0.45, 1.62), r = 2.95, tra 139.0deg e 155.3deg)
  arc((0.45, 1.62), start: 139.0deg, stop: 144.2deg, radius: 2.95, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, length: 0.18, width: 0.10))
  arc((0.45, 1.62), start: 150.2deg, stop: 155.3deg, radius: 2.95, anchor: "origin", stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.18, width: 0.10))

  // Freccia di richiamo "Elemento del dente"
  line((-0.98, 1.45), (0.02, 1.45), stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.18, width: 0.10))

  // Freccia di richiamo "Cilindro primitivo"
  line((2.08, -0.70), (1.76, -0.18), stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.18, width: 0.10))

  // 8. ETICHETTE
  content((-2.02, 3.85), text(size: 7pt)[$W$], anchor: "south-west")
  content((-2.18, 2.75), text(size: 7pt)[$phi_n$], anchor: "center")
  content((-3.45, 1.98), text(size: 7pt)[$phi_t$], anchor: "center")
  content((-2.08, 1.88), text(size: 7pt)[$psi$], anchor: "center")
  content((-4.18, 1.35), text(size: 7pt)[$W_t$], anchor: "center")
  content((0.72, 2.52), text(size: 7pt)[$W_r$], anchor: "west")
  content((1.98, 2.40), text(size: 7pt)[$W_a$], anchor: "west")
  content((-1.05, 1.45), text(size: 7pt)[Elemento del dente], anchor: "east")
  content((-0.62, 1.02), text(size: 7pt)[$psi$], anchor: "center")
  content((0.20, 1.02), text(size: 7pt)[$y$], anchor: "west")
  content((2.02, 0.00), text(size: 7pt)[$x$], anchor: "west")
  content((-0.95, -0.95), text(size: 7pt)[$z$], anchor: "north-east")
  content((2.18, -0.88), text(size: 7pt)[Cilindro], anchor: "west")
  content((2.18, -1.22), text(size: 7pt)[primitivo], anchor: "west")
})
