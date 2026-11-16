// Figura estratta da 27-50_appunti.typ (riga 1071) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))
#let circ = sym.degree

#canvas(length: 1cm, {
  import draw: *
  // Assi e riquadro del grafico (x: 0..8 -> eps 0..0.24, y: 0..5.4 -> sigma 0..1800)
  rect((1.0, 0.6), (9.0, 6.0), stroke: 0.8pt)

  // Tacche asse x (Deformazione)
  line((2.33, 0.6), (2.33, 0.72), stroke: 0.6pt)
  line((3.67, 0.6), (3.67, 0.72), stroke: 0.6pt)
  line((5.0, 0.6), (5.0, 0.72), stroke: 0.6pt)
  line((6.33, 0.6), (6.33, 0.72), stroke: 0.6pt)
  line((7.67, 0.6), (7.67, 0.72), stroke: 0.6pt)
  content((1.0, 0.35), text(size: 7pt)[$0$])
  content((2.33, 0.35), text(size: 7pt)[$0.04$])
  content((3.67, 0.35), text(size: 7pt)[$0.08$])
  content((5.0, 0.35), text(size: 7pt)[$0.12$])
  content((6.33, 0.35), text(size: 7pt)[$0.16$])
  content((7.67, 0.35), text(size: 7pt)[$0.20$])
  content((9.0, 0.35), text(size: 7pt)[$0.24$])
  content((5.0, 0.0), text(size: 7pt)[$"Deformazione" epsilon, "mm"/"mm"$])

  // Tacche asse y (Sforzo MPa)
  line((1.0, 1.2), (1.12, 1.2), stroke: 0.6pt)
  line((1.0, 1.8), (1.12, 1.8), stroke: 0.6pt)
  line((1.0, 2.4), (1.12, 2.4), stroke: 0.6pt)
  line((1.0, 3.0), (1.12, 3.0), stroke: 0.6pt)
  line((1.0, 3.6), (1.12, 3.6), stroke: 0.6pt)
  line((1.0, 4.2), (1.12, 4.2), stroke: 0.6pt)
  line((1.0, 4.8), (1.12, 4.8), stroke: 0.6pt)
  line((1.0, 5.4), (1.12, 5.4), stroke: 0.6pt)
  content((0.9, 0.6), text(size: 7pt)[$0$], anchor: "east")
  content((0.9, 1.2), text(size: 7pt)[$200$], anchor: "east")
  content((0.9, 1.8), text(size: 7pt)[$400$], anchor: "east")
  content((0.9, 2.4), text(size: 7pt)[$600$], anchor: "east")
  content((0.9, 3.0), text(size: 7pt)[$800$], anchor: "east")
  content((0.9, 3.6), text(size: 7pt)[$1000$], anchor: "east")
  content((0.9, 4.2), text(size: 7pt)[$1200$], anchor: "east")
  content((0.9, 4.8), text(size: 7pt)[$1400$], anchor: "east")
  content((0.9, 5.4), text(size: 7pt)[$1600$], anchor: "east")
  content((0.9, 6.0), text(size: 7pt)[$1800$], anchor: "east")
  content((0.3, 6.25), text(size: 7pt)[$"Sforzo, MPa"$], anchor: "west")

  // 1. Acciaio SAE 1340 temprato e rinvenuto a 370 °C
  line((1.0, 0.6), (1.2, 5.1), stroke: 1.1pt)
  bezier((1.2, 5.1), (6.0, 5.3), (1.4, 5.55), (4.0, 5.45), stroke: 1.1pt)
  content((6.1, 5.3), text(size: 7pt)[Acciaio SAE 1340 temprato e rinvenuto a $370 circ"C"$], anchor: "west")

  // 2. Acciaio legato al nichel (alta resistenza)
  line((1.0, 0.6), (1.3, 3.6), stroke: 0.6pt)
  bezier((1.3, 3.6), (3.1, 4.8), (2.2, 5.8), (2.7, 5.5), stroke: 0.6pt)
  content((3.0, 5.1), text(size: 7pt)[Acciaio legato al nichel], anchor: "west")

  // 3. Acciaio inossidabile 17-7PH
  line((1.0, 0.6), (1.3, 4.6), stroke: 0.8pt)
  bezier((1.3, 4.6), (2.7, 4.2), (1.6, 4.95), (2.3, 4.7), stroke: 0.8pt)
  line((2.7, 4.2), (3.7, 2.7), stroke: (dash: "dashed", thickness: 0.8pt))
  content((2.7, 4.45), text(size: 7pt)[Acciaio inossidabile 17-7PH], anchor: "west")

  // 4. Acciaio inossidabile (18-8)
  line((1.0, 0.6), (1.3, 3.0), stroke: 1.1pt)
  bezier((1.3, 3.0), (5.0, 3.7), (2.5, 4.5), (4.0, 4.4), stroke: 1.1pt)
  content((4.5, 4.15), text(size: 7pt)[Acciaio inossidabile (18-8)], anchor: "west")

  // 5. Lega di titanio solubilizzato (Ti-6Al-4V)
  line((1.0, 0.6), (1.4, 3.1), stroke: 0.8pt)
  bezier((1.4, 3.1), (4.5, 3.1), (2.2, 3.65), (3.8, 3.65), stroke: 0.8pt)
  line((4.5, 3.1), (5.0, 1.9), stroke: (dash: "dashed", thickness: 0.8pt))
  content((5.1, 3.7), text(size: 7pt)[Lega di titanio solubilizzato (Ti-6Al-4V)], anchor: "west")
  line((5.05, 3.65), (4.4, 3.3), mark: (end: ">"), stroke: 0.5pt)

  // 6. Acciaio legato al nichel (media resistenza)
  line((1.0, 0.6), (1.25, 2.4), stroke: 0.6pt)
  bezier((1.25, 2.4), (5.5, 2.6), (2.8, 3.2), (4.2, 3.1), stroke: 0.6pt)
  content((5.0, 3.3), text(size: 7pt)[Acciaio legato al nichel], anchor: "west")
  line((4.95, 3.25), (4.3, 2.95), mark: (end: ">"), stroke: 0.5pt)

  // 7. Lega N-155 solubilizzata
  line((1.0, 0.6), (1.3, 2.1), stroke: 1.1pt)
  bezier((1.3, 2.1), (8.4, 2.75), (2.5, 3.05), (5.5, 3.0), stroke: 1.1pt)
  content((6.0, 3.0), text(size: 7pt)[Lega N-155 solubilizzata], anchor: "west")

  // 8. Lega di alluminio (2024-T81)
  line((1.0, 0.6), (1.25, 1.8), stroke: 0.7pt)
  bezier((1.25, 1.8), (3.0, 1.8), (1.6, 2.15), (2.4, 2.0), stroke: 0.7pt)
  line((3.0, 1.8), (3.5, 1.55), stroke: (dash: "dashed", thickness: 0.7pt))
  content((5.1, 2.45), text(size: 7pt)[Lega di alluminio (2024-T81)], anchor: "west")
  line((5.05, 2.45), (2.6, 1.95), mark: (end: ">"), stroke: 0.5pt)

  // 9. Alcoa 27ST
  line((1.0, 0.6), (1.2, 1.65), stroke: 0.8pt)
  bezier((1.2, 1.65), (4.8, 1.88), (2.2, 1.65), (3.5, 1.88), stroke: 0.8pt)
  content((3.6, 2.02), text(size: 7pt)[Alcoa 27ST], anchor: "west")

  // 10. Acciaio strutturale
  line((1.0, 0.6), (1.15, 1.38), stroke: 1.1pt)
  bezier((1.15, 1.38), (8.5, 1.36), (3.5, 1.68), (6.0, 1.55), stroke: 1.1pt)
  content((7.1, 1.6), text(size: 7pt)[Acciaio strutturale], anchor: "west")

  // 11. Magnesio
  line((1.0, 0.6), (1.15, 1.0), stroke: 0.6pt)
  bezier((1.15, 1.0), (4.7, 1.18), (2.3, 1.35), (3.6, 1.32), stroke: 0.6pt)
  content((4.75, 1.15), text(size: 7pt)[Magnesio], anchor: "west")
})
