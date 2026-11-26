// Figura estratta da fatica.typ (riga 2519) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  // BBox: x in [0.0, 15.6] (dx=15.6), y in [-0.2, 5.6], length=1.0cm -> larghezza = 15.6 cm <= 17.0 cm
  import draw: *

  // Schema superiore del carico P e larghezza h
  line((6.1, 5.25), (7.1, 5.25), stroke: 1pt)
  arc((7.5, 5.25), start: 180deg, stop: 360deg, radius: 0.40, anchor: "origin", stroke: 1pt)
  line((7.9, 5.25), (8.9, 5.25), stroke: 1pt)
  line((6.1, 3.85), (7.1, 3.85), stroke: 1pt)
  arc((7.5, 3.85), start: 0deg, stop: 180deg, radius: 0.40, anchor: "origin", stroke: 1pt)
  line((7.9, 3.85), (8.9, 3.85), stroke: 1pt)
  line((6.1, 3.85), (6.1, 5.25), stroke: 1pt)
  line((8.9, 3.85), (8.9, 5.25), stroke: 1pt)
  // Frecce P
  line((6.1, 4.55), (5.2, 4.55), stroke: 1.2pt, mark: (end: ">", scale: 0.7))
  line((8.9, 4.55), (9.8, 4.55), stroke: 1.2pt, mark: (end: ">", scale: 0.7))
  content((5.55, 4.88), [#text(size: 8pt, weight: "bold")[$P$]], anchor: "center")
  content((9.45, 4.88), [#text(size: 8pt, weight: "bold")[$P$]], anchor: "center")
  // Quota h
  line((7.5, 4.25), (7.5, 4.85), stroke: 0.55pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
  content((7.68, 4.55), [#text(size: 8pt)[$h$]], anchor: "west")
  // Freccia P crescente
  line((10.5, 4.55), (14.8, 4.55), stroke: (thickness: 0.75pt, paint: blue), mark: (end: ">", scale: 0.6))
  content((12.65, 4.85), [#text(size: 7.5pt, fill: blue)[Carico assiale $P$ crescente]], anchor: "center")

  // 4 pannelli orizzontali: (a), (b), (c), (d)
  let x0s = (0.35, 4.25, 8.15, 12.05)
  let labels = ("(a) Elastico", "(b) Snervamento in A", "(c) Zona B snerva", "(d) Cerniera plastica (C)")

  for idx in range(4) {
    let x0 = x0s.at(idx)
    let xsec = x0 + 0.85
    let xbase = x0 + 1.55
    let xreh = xbase + 1.15

    // Titolo pannello
    content((x0 + 1.55, 3.45), [#text(size: 7.5pt, weight: "bold")[#labels.at(idx)]], anchor: "center")

    // Geometria lastra con due intagli semicircolari (altezza sezione netta: y in [0.75, 2.75])
    line((x0, 3.10), (xsec - 0.35, 3.10), stroke: 0.9pt)
    arc((xsec, 3.10), start: 180deg, stop: 360deg, radius: 0.35, anchor: "origin", stroke: 0.9pt)
    line((xsec + 0.35, 3.10), (x0 + 1.35, 3.10), stroke: 0.9pt)

    line((x0, 0.40), (xsec - 0.35, 0.40), stroke: 0.9pt)
    arc((xsec, 0.40), start: 0deg, stop: 180deg, radius: 0.35, anchor: "origin", stroke: 0.9pt)
    line((xsec + 0.35, 0.40), (x0 + 1.35, 0.40), stroke: 0.9pt)

    // Linea asse sezione minima
    line((xsec, 0.75), (xsec, 2.75), stroke: (dash: "dotted", thickness: 0.5pt))

    // Linee di riferimento orizzontali dei bordi netti
    line((xsec, 2.75), (xreh + 0.15, 2.75), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(60%)))
    line((xsec, 0.75), (xreh + 0.15, 0.75), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(60%)))

    // Asse base tensioni (sigma = 0) e soglia R_eH
    line((xbase, 0.55), (xbase, 2.95), stroke: 0.8pt)
    line((xreh, 0.55), (xreh, 2.95), stroke: (dash: "dashed", thickness: 0.7pt, paint: red.transparentize(15%)))
    content((xreh, 0.25), [#text(size: 7pt, fill: red.transparentize(10%))[$R_"eH"$]], anchor: "center")

    // Profili di tensione per i 4 stadi
    if idx == 0 {
      // (a) Elastico: orecchie di gatto < R_eH
      let pts = ()
      for k in range(25) {
        let t = k / 24.0
        let yy = 0.75 + 2.0 * t
        let dy = calc.abs(t - 0.5) * 2.0
        let sig = 0.28 + 0.55 * calc.pow(dy, 2.6)
        pts.push((xbase + sig, yy))
      }
      line(..pts, stroke: (thickness: 1.1pt, paint: blue))
      for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
        let dy = calc.abs((fy - 0.75) / 2.0 - 0.5) * 2.0
        let sig = 0.28 + 0.55 * calc.pow(dy, 2.6)
        line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
      }
      circle((xsec, 2.75), radius: 0.06, fill: red.transparentize(10%), stroke: 0.5pt)
      content((xsec - 0.20, 2.58), [#text(size: 7.5pt, weight: "bold", fill: red.transparentize(10%))[A]], anchor: "east")
    } else if idx == 1 {
      // (b) Primo snervamento in A (tocca esattamente R_eH)
      let pts = ()
      for k in range(25) {
        let t = k / 24.0
        let yy = 0.75 + 2.0 * t
        let dy = calc.abs(t - 0.5) * 2.0
        let sig = 0.46 + 0.69 * calc.pow(dy, 2.4)
        pts.push((xbase + sig, yy))
      }
      line(..pts, stroke: (thickness: 1.1pt, paint: blue))
      for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
        let dy = calc.abs((fy - 0.75) / 2.0 - 0.5) * 2.0
        let sig = 0.46 + 0.69 * calc.pow(dy, 2.4)
        line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
      }
      circle((xsec, 2.75), radius: 0.055, fill: red.transparentize(10%), stroke: 0.5pt)
      circle((xsec, 2.32), radius: 0.06, fill: black, stroke: 0.5pt)
      content((xsec - 0.20, 2.32), [#text(size: 7.5pt, weight: "bold")[B]], anchor: "east")
    } else if idx == 2 {
      // (c) Zona intermedia B plasticizzata (plateau a R_eH)
      rect((xbase, 2.30), (xreh, 2.75), fill: red.transparentize(84%), stroke: none)
      rect((xbase, 0.75), (xreh, 1.20), fill: red.transparentize(84%), stroke: none)
      line((xreh, 0.75), (xreh, 1.20), stroke: (thickness: 1.15pt, paint: red.transparentize(10%)))
      line((xreh, 2.30), (xreh, 2.75), stroke: (thickness: 1.15pt, paint: red.transparentize(10%)))
      let pts = ()
      for k in range(17) {
        let t = k / 16.0
        let yy = 1.20 + 1.10 * t
        let dy = calc.abs(t - 0.5) * 2.0
        let sig = 0.78 + 0.37 * calc.pow(dy, 1.9)
        pts.push((xbase + sig, yy))
      }
      line(..pts, stroke: (thickness: 1.1pt, paint: blue))
      for fy in (0.75, 1.20, 1.75, 2.30, 2.75) {
        let sig = if fy >= 2.29 or fy <= 1.21 { 1.15 } else { 0.78 }
        line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
      }
      circle((xsec, 1.75), radius: 0.06, fill: blue, stroke: 0.5pt)
      content((xsec - 0.20, 1.75), [#text(size: 7.5pt, weight: "bold", fill: blue)[C]], anchor: "east")
    } else {
      // (d) Completa plasticizzazione (cerniera plastica)
      rect((xbase, 0.75), (xreh, 2.75), fill: red.transparentize(84%), stroke: none)
      line((xreh, 0.75), (xreh, 2.75), stroke: (thickness: 1.2pt, paint: red.transparentize(10%)))
      for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
        line((xbase, fy), (xreh, fy), stroke: (thickness: 0.55pt, paint: red.transparentize(25%)), mark: (end: ">", scale: 0.4))
      }
      circle((xsec, 1.75), radius: 0.06, fill: red.transparentize(10%), stroke: 0.5pt)
      content((xsec - 0.20, 1.75), [#text(size: 7.5pt, weight: "bold", fill: red.transparentize(10%))[C]], anchor: "east")
    }
  }
})
