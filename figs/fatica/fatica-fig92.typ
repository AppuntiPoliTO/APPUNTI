// Figura estratta da fatica.typ (riga 2443) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  // BBox: x in [-0.6, 6.8] (dx=7.4), y in [-0.1, 6.8], length=1.0cm -> larghezza = 7.4 cm <= 8.2 cm
  import draw: *

  // Griglia parametrica: x in [0.6, 5.1] -> r/d in [0, 0.3], y in [0.9, 6.1] -> K_t in [1.0, 3.0]
  for rd in (0.1, 0.2, 0.3) {
    let xx = 0.6 + (rd / 0.3) * 4.5
    line((xx, 0.9), (xx, 6.1), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(75%)))
    line((xx, 0.9), (xx, 0.78), stroke: 0.7pt)
    content((xx, 0.58), text(size: 7.5pt)[#rd], anchor: "center")
  }
  content((0.6, 0.58), text(size: 7.5pt)[0], anchor: "center")
  content((5.62, 0.58), text(size: 8pt)[$r / d$], anchor: "center")

  for kt in (1.0, 1.5, 2.0, 2.5, 3.0) {
    let yy = 0.9 + (kt - 1.0) * 2.6
    if kt > 1.0 {
      line((0.6, yy), (5.1, yy), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(75%)))
    }
    line((0.6, yy), (0.48, yy), stroke: 0.7pt)
    content((0.40, yy), text(size: 7.5pt)[#kt], anchor: "east")
  }
  content((-0.25, 3.5), text(size: 8pt)[$K_t$], anchor: "east")

  // Assi
  line((0.6, 0.9), (5.38, 0.9), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
  line((0.6, 0.9), (0.6, 6.45), stroke: 0.9pt, mark: (end: ">", scale: 0.6))

  // Limite D/d -> 1 (richiamo inferiore senza alcuna collisione con la curva 1.02)
  line((0.6, 0.9), (5.1, 0.9), stroke: (dash: "dashed", thickness: 0.8pt, paint: blue))
  line((2.85, 0.36), (2.85, 0.88), stroke: (thickness: 0.55pt, paint: blue), mark: (end: ">", scale: 0.45))
  content((2.85, 0.30), text(size: 7pt, fill: blue)[Limite $D\/d -> 1$ ($K_t = 1$)], anchor: "north")

  // Asintoto elastico r/d -> 0
  line((0.98, 6.38), (0.68, 6.08), stroke: (thickness: 0.55pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.48))
  content((1.04, 6.42), text(size: 7pt, fill: red.transparentize(10%))[Singolarità elastica $r\/d -> 0$ ($K_t -> oo$)], anchor: "west")

  // Soglia fisica di snervamento locale (smussamento)
  line((0.6, 4.95), (2.25, 4.95), stroke: (dash: "dashed", thickness: 0.75pt, paint: rgb("#1f77b4")))
  content((2.32, 4.98), text(size: 6.8pt, fill: rgb("#1f77b4"))[Limite reale per \ snervamento locale], anchor: "west")

  let curves = (
    (label: [$D\/d = 2.0$], c: 0.30, p: 0.50, rmin: 0.022, col: red.transparentize(15%)),
    (label: [$1.5$], c: 0.22, p: 0.48, rmin: 0.015, col: black),
    (label: [$1.15$], c: 0.13, p: 0.45, rmin: 0.010, col: black),
    (label: [$1.02$], c: 0.070, p: 0.42, rmin: 0.008, col: black.transparentize(30%)),
  )
  for cv in curves {
    let pts = ()
    let nsteps = 28
    for i in range(nsteps + 1) {
      let rd = cv.rmin + (0.30 - cv.rmin) * (i / nsteps)
      let kt = 1.0 + cv.c / calc.pow(rd, cv.p)
      if kt <= 3.0 {
        let xx = 0.6 + (rd / 0.3) * 4.5
        let yy = 0.9 + (kt - 1.0) * 2.6
        pts.push((xx, yy))
      }
    }
    line(..pts, stroke: (thickness: 1.05pt, paint: cv.col))
    let last = pts.last()
    content((last.at(0) + 0.12, last.at(1)), text(size: 7pt, fill: cv.col)[#cv.label], anchor: "west")
  }
})
