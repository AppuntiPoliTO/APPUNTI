// Figura estratta da molle.typ (riga 555) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Campitura e tratteggio della sezione circolare inclinata in O = (0, 0)
  bezier((0.146, -0.065), (0.171, 0.384), (0.240, 0.147), (0.252, 0.348), fill: black.transparentize(86%), stroke: none)
  bezier((0.171, 0.384), (-0.146, 0.065), (0.090, 0.420), (-0.052, 0.277), fill: black.transparentize(86%), stroke: none)
  bezier((-0.146, 0.065), (-0.171, -0.384), (-0.240, -0.147), (-0.252, -0.348), fill: black.transparentize(86%), stroke: none)
  bezier((-0.171, -0.384), (0.146, -0.065), (-0.090, -0.420), (0.052, -0.277), fill: black.transparentize(86%), stroke: none)
  line((0.146, -0.065), (0.171, 0.384), (-0.146, 0.065), (-0.171, -0.384), close: true, fill: black.transparentize(86%), stroke: none)

  // Tratteggio a 45deg dentro la sezione e nella chiusura a S in cima
  line((-0.17, -0.22), (0.12, 0.07), stroke: 0.5pt)
  line((-0.14, -0.04), (0.17, 0.27), stroke: 0.5pt)
  line((-0.07, 0.17), (0.16, 0.40), stroke: 0.5pt)
  line((-0.11, -0.33), (0.08, -0.14), stroke: 0.5pt)
  bezier((-1.148, 3.534), (-0.784, 3.324), (-1.250, 3.380), (-1.020, 3.220), fill: black.transparentize(84%), stroke: none)
  bezier((-1.148, 3.534), (-0.784, 3.324), (-0.980, 3.560), (-0.750, 3.440), fill: black.transparentize(84%), stroke: none)

  // Assi di riferimento (asse verticale della molla, verticale per O, braccio r, asse elicoidale del filo)
  line((3.00, -1.25), (3.00, 3.75), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -1.25), (0, 1.35), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, 0), (3.00, 3.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  arc((1.017, 2.284), start: 150deg, stop: 246deg, radius: 2.50, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Contorni della spira elicoidale e rottura convenzionale in cima
  arc((1.017, 2.284), start: 150deg, stop: 246deg, radius: 2.92, anchor: "origin", stroke: 1pt)
  arc((1.017, 2.284), start: 150deg, stop: 246deg, radius: 2.08, anchor: "origin", stroke: 1pt)
  bezier((-1.512, 3.744), (-1.148, 3.534), (-1.280, 3.840), (-1.050, 3.680), stroke: 0.9pt)
  bezier((-1.148, 3.534), (-0.784, 3.324), (-1.250, 3.380), (-1.020, 3.220), stroke: 0.9pt)
  bezier((-1.148, 3.534), (-0.784, 3.324), (-0.980, 3.560), (-0.750, 3.440), stroke: 0.9pt)

  // Contorno della sezione circolare tagliata in O = (0, 0)
  bezier((0.146, -0.065), (0.171, 0.384), (0.240, 0.147), (0.252, 0.348), stroke: 1pt)
  bezier((0.171, 0.384), (-0.146, 0.065), (0.090, 0.420), (-0.052, 0.277), stroke: 1pt)
  bezier((-0.146, 0.065), (-0.171, -0.384), (-0.240, -0.147), (-0.252, -0.348), stroke: 1pt)
  bezier((-0.171, -0.384), (0.146, -0.065), (-0.090, -0.420), (0.052, -0.277), stroke: 1pt)

  // Arco di quota angolo alpha (tra direzione T e verticale inferiore)
  arc((0, 0), start: 246deg, stop: 270deg, radius: 0.85, anchor: "origin", stroke: 0.7pt)

  // Momenti M_t (torcente attorno all'asse di N) e M_f (flettente sopra la sezione)
  arc((0.44, -0.20), start: -75deg, stop: 80deg, radius: (0.28, 0.44), anchor: "origin", mark: (start: ">"), stroke: 1pt)
  arc((0.25, 1.52), start: 205deg, stop: 295deg, radius: 0.56, anchor: "origin", mark: (end: ">"), stroke: 1pt)

  // Forze sulla sezione: taglio T (rosso) e sforzo normale N (teal)
  line((0, 0), (-0.508, -1.142), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((0, 0), (0.685, -0.305), mark: (end: ">"), stroke: (paint: rgb("#008080"), thickness: 1.5pt))

  // Scomposizione della forza assiale F sull'asse della molla
  line((2.424, 1.706), (3.00, 3.00), stroke: (dash: "dashed", paint: red, thickness: 0.8pt))
  line((3.576, 2.743), (3.00, 3.00), stroke: (dash: "dashed", paint: red, thickness: 0.8pt))
  line((3.00, 1.45), (3.00, 3.00), mark: (end: ">"), stroke: 1.5pt)
  line((3.00, 1.45), (3.576, 2.743), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((3.00, 1.45), (2.424, 1.706), mark: (end: ">"), stroke: (paint: rgb("#008080"), thickness: 1.5pt))

  // Etichette
  content((-0.20, -0.92), [$alpha$], anchor: "north")
  content((-0.55, -1.18), text(fill: red)[$T$], anchor: "north")
  content((0.76, -0.32), text(fill: rgb("#008080"))[$N$], anchor: "west")
  content((0.78, 0.14), [$M_t$], anchor: "west")
  content((0.52, 1.38), [$M_f$], anchor: "west")
  content((1.48, 1.65), [$r$], anchor: "south-east")
  content((3.00, 3.10), [$F$], anchor: "south")
  content((3.36, 1.98), text(fill: red)[$F cos alpha$], anchor: "west")
  content((2.65, 1.38), text(fill: rgb("#008080"))[$F "sen" alpha$], anchor: "north-east")
})
