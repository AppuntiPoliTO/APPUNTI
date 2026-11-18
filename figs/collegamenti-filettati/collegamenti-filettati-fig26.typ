// Figura estratta da collegamenti filettati.typ (riga 706) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *
  rect((-4.8, 4.7), (4.8, 6.7), stroke: 0.85pt)
  rect((0.7, 4.85), (4.65, 6.55), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((-4.6, 6.35), text(size: 8.5pt)[Scelta iniziali:], anchor: "west")
  content((-4.6, 5.95), text(size: 8pt)[• numero viti ($C = F_("tot") / "n°viti"$)], anchor: "west")
  content((-4.6, 5.55), text(size: 8pt)[• classe (materiale), tipo], anchor: "west")
  content((-4.6, 5.15), text(size: 8pt)[• dimensione], anchor: "west")
  content((2.675, 6.25), text(size: 8pt)[in prima approssimazione])
  content((2.675, 5.45), text(size: 8.5pt)[$A_("min") = (3 div 4) (C "max") / R_("p0.2")$])

  rect((-4.2, 4.05), (-1.7, 4.55), stroke: 0.85pt)
  content((-2.95, 4.3), text(size: 8pt)[Cambiamenti....])

  rect((-3.9, 3.1), (3.9, 3.65), stroke: 0.85pt)
  content((0, 3.375), text(size: 8pt)[Calcolo di $k - F_(v,"lim") - M_T - delta_v - delta_p - Delta F_v - Delta C_v - Delta C_p$])

  rect((-3.1, 1.3), (3.1, 2.7), stroke: 0.85pt)
  content((-2.9, 2.35), text(size: 8pt)[• Verifica statica], anchor: "west")
  content((-2.9, 2.0), text(size: 8pt)[• Verifica del carico minimo di serraggio], anchor: "west")
  content((-2.9, 1.65), text(size: 8pt)[• Verifica a fatica della vite], anchor: "west")

  line((0, 0.95), (0.25, 0.75), (0, 0.55), (-0.25, 0.75), close: true, stroke: 0.85pt)

  rect((-1.0, -0.45), (1.0, 0.15), radius: 0.3, stroke: 0.85pt)
  content((0, -0.15), text(size: 8.5pt)[Fine])

  line((0, 4.7), (0, 3.65), mark: (end: ">"), stroke: 0.75pt)
  line((-1.95, 4.05), (-1.95, 3.65), mark: (end: ">"), stroke: 0.75pt)
  line((0, 3.1), (0, 2.7), mark: (end: ">"), stroke: 0.75pt)
  line((0, 1.3), (0, 0.95), mark: (end: ">"), stroke: 0.75pt)
  line((0, 0.55), (0, 0.15), mark: (end: ">"), stroke: 0.75pt)
  line((-0.25, 0.75), (-4.8, 0.75), (-4.8, 4.3), (-4.2, 4.3), mark: (end: ">"), stroke: 0.75pt)

  content((-0.55, 0.83), text(size: 8pt)[No], anchor: "south")
  content((0.15, 0.35), text(size: 8pt)[Si], anchor: "west")
})
