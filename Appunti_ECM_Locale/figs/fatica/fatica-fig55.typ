// Figura estratta da fatica.typ (riga 3411) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.96cm, {
  // BBox: x in [-0.80, 6.90] (dx=7.70), y in [-0.50, 4.95], length=0.96cm -> larghezza = 7.39 cm <= 8.2 cm
  import draw: *

  let x-start = 1.10
  let y-start = 4.10
  let x-knee = 4.07
  let y-prov = 2.15
  let y-comp = 1.35
  let x-end = 4.85
  let x-no = 2.35
  let y-no = 2.94
  let y-a = 1.90
  let x-nl = 3.48
  let red-col = red.transparentize(10%)

  // Linee guida geometriche (a 10^3 e al ginocchio 2*10^6)
  line((0, y-start), (x-start, y-start), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))
  line((x-start, 0), (x-start, y-start), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))
  line((x-knee, 0), (x-knee, y-prov), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))

  // Assi logaritmici
  line((0, 0), (5.05, 0), stroke: 0.8pt, mark: (end: ">", scale: 0.5, fill: black))
  line((0, 0), (0, 4.90), stroke: 0.8pt, mark: (end: ">", scale: 0.5, fill: black))

  // Tacche logaritmiche sull'asse N (decadi 10^2 .. 10^7, passo 0.90)
  let labels-n = ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$)
  for d in range(0, 6) {
    let xd = 0.20 + d * 0.90
    line((xd, 0), (xd, 0.13), stroke: 0.7pt)
    content((xd, -0.15), text(size: 7pt)[#labels-n.at(d)], anchor: "north")
    if d < 5 {
      for s in (2, 3, 4, 5, 6, 7, 8, 9) {
        let xs = xd + 0.90 * calc.log(s, base: 10)
        line((xs, 0), (xs, 0.06), stroke: 0.45pt)
      }
    }
  }

  // Curve SN: provetta (tratteggiata) vs componente (continua)
  line((x-start, y-start), (x-knee, y-prov), (x-end, y-prov), stroke: (dash: "dashed", thickness: 0.9pt, paint: black.transparentize(30%)))
  line((x-start, y-start), (x-knee, y-comp), (x-end, y-comp), stroke: 1.15pt)
  circle((x-start, y-start), radius: 0.045, fill: black)

  // Costruzione verifica a vita limitata (punto P, verifica in tensione e in durata)
  line((x-no, 0), (x-no, y-a), stroke: (dash: "dashed", thickness: 0.65pt, paint: red-col))
  line((0, y-a), (x-no, y-a), stroke: (dash: "dashed", thickness: 0.65pt, paint: red-col))
  line((x-no, y-a), (x-no, y-no), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
  line((x-no, y-no), (0, y-no), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
  line((x-no, y-a), (x-nl, y-a), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
  line((x-nl, y-a), (x-nl, 0), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
  circle((x-no, y-a), radius: 0.055, fill: red-col, stroke: none)

  // Etichette assi e livelli
  content((-0.12, 4.82), text(size: 8pt)[$sigma_a$], anchor: "east")
  content((5.15, 0), text(size: 8pt)[$N$], anchor: "west")
  content((0.14, y-start + 0.14), text(size: 7.5pt)[$0.9(R_m - sigma_m)$], anchor: "south-west")
  content((4.85, 4.35), text(size: 7.5pt)[$sigma_m = "cost."$], anchor: "east")

  // Etichette ginocchio e curve
  content((2.65, 3.25), text(size: 7pt, fill: black.transparentize(25%))[Provetta], anchor: "south-west")
  content((4.46, 1.18), text(size: 7pt)[Componente], anchor: "north")
  line((x-knee, 2.55), (x-knee, y-prov + 0.08), stroke: (thickness: 0.55pt, paint: black.transparentize(40%)), mark: (end: ">", scale: 0.45, fill: black.transparentize(40%)))
  content((x-knee, 2.62), text(size: 7pt)[$2 dot 10^6$], anchor: "south")

  content((x-end + 0.08, y-prov), text(size: 7.5pt)[$sigma_"D,provetta"$], anchor: "west")
  content((x-end + 0.08, y-comp), text(size: 7.5pt)[$sigma_"D,componente"$], anchor: "west")

  // Etichette verifica a vita limitata (rosso)
  content((-0.12, y-no), text(size: 7.5pt, fill: red-col)[$sigma_"No"$], anchor: "east")
  content((-0.12, y-a), text(size: 7.5pt, fill: red-col)[$sigma_a$], anchor: "east")
  content((x-no + 0.08, 0.22), text(size: 7.5pt, fill: red-col)[$N_o$], anchor: "south-west")
  content((x-nl + 0.08, 0.22), text(size: 7.5pt, fill: red-col)[$N_L$], anchor: "south-west")
  content((x-no - 0.08, y-a - 0.10), text(size: 7.5pt, fill: red-col)[$P$], anchor: "north-east")
})
