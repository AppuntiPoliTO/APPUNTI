// Figura estratta da fatica.typ (riga 745) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.96cm, {
  // BBox: x in [-0.10, 9.60] (dx=9.70), y in [0.00, 6.20], length=0.96cm -> larghezza = 9.31 cm <= 10.0 cm
  import draw: *

  let x_e1 = 0.0
  let x_e0 = 0.55
  let x_sig = 1.10
  let x_p0 = 1.95
  let pw = 0.50
  let x_end = x_p0 + 15 * pw // 9.45

  // Griglia principale stair-case (y da 2.75 a 6.05)
  let rows_y = (6.05, 5.60, 5.15, 4.77, 4.37, 3.97, 3.57, 3.17, 2.75)

  // Campiture righe intestazione e totali
  rect((0, 5.60), (x_end, 6.05), fill: black.transparentize(92%), stroke: none)
  rect((0, 4.77), (x_end, 5.60), fill: black.transparentize(95%), stroke: none)
  rect((0, 2.75), (x_end, 3.17), fill: black.transparentize(92%), stroke: none)

  // Linee orizzontali
  for yv in rows_y {
    line((0, yv), (x_end, yv), stroke: 0.65pt)
  }
  // Linee verticali principali
  line((0, 2.75), (0, 6.05), stroke: 0.8pt)
  line((x_e0, 2.75), (x_e0, 5.15), stroke: 0.6pt)
  line((x_sig, 2.75), (x_sig, 5.60), stroke: 0.75pt)
  line((x_p0, 2.75), (x_p0, 5.60), stroke: 0.8pt)
  line((x_end, 2.75), (x_end, 6.05), stroke: 0.8pt)

  // Linee verticali provini 1..15 (separate per header numeri 1..15 e celle dati)
  for k in range(1, 15) {
    let xk = x_p0 + k * pw
    line((xk, 5.15), (xk, 5.60), stroke: 0.45pt + black.transparentize(30%))
    line((xk, 3.17), (xk, 4.77), stroke: 0.45pt + black.transparentize(30%))
  }

  // Testata
  content((x_end / 2, 5.825), anchor: "center", text(size: 7pt, weight: "bold")[
    M8 "senza difetti" #h(0.8em) $sigma_m = 400$ MPa #h(0.8em) $d = 10$ MPa #h(0.8em) $N = 5 dot.op 10^6$
  ])
  content((x_sig / 2, 5.375), anchor: "center", text(size: 6.8pt, weight: "bold")[esito])
  content(((x_sig + x_p0) / 2, 5.375), anchor: "center", text(size: 7pt, weight: "bold")[$sigma_a$])
  content((0.275, 4.96), anchor: "center", text(size: 7pt, fill: rgb("#b02a2a"), weight: "bold")[1])
  content((0.825, 4.96), anchor: "center", text(size: 7pt, fill: rgb("#1f77b4"), weight: "bold")[0])
  content(((x_sig + x_p0) / 2, 4.96), anchor: "center", text(size: 6.8pt)[MPa])
  content(((x_p0 + x_end) / 2, 4.96), anchor: "center", text(size: 6.5pt)[1 = Rotta ; #h(0.5em) 0 = Non rotta])

  for p in range(1, 16) {
    let xp = x_p0 + (p - 0.5) * pw
    content((xp, 5.375), anchor: "center", text(size: 6.8pt)[#p])
  }

  // Livelli di tensione e totali per riga
  let row_data = (
    (4.57, "3", "0", "60"),
    (4.17, "4", "3", "50"),
    (3.77, "1", "3", "40"),
    (3.37, "0", "1", "30"),
  )
  for (yc, c1, c0, sig) in row_data {
    content((0.275, yc), anchor: "center", text(size: 7pt)[#c1])
    content((0.825, yc), anchor: "center", text(size: 7pt)[#c0])
    content(((x_sig + x_p0) / 2, yc), anchor: "center", text(size: 7pt, weight: "bold")[#sig])
  }

  // Sequenza stair-case (provino 1..15)
  let seq = (
    (1, 4.17, 1), (2, 3.77, 0), (3, 4.17, 1), (4, 3.77, 1), (5, 3.37, 0),
    (6, 3.77, 0), (7, 4.17, 1), (8, 3.77, 0), (9, 4.17, 0), (10, 4.57, 1),
    (11, 4.17, 0), (12, 4.57, 1), (13, 4.17, 0), (14, 4.57, 1), (15, 4.17, 1),
  )
  let pts = ()
  for (p, yc, val) in seq {
    pts.push((x_p0 + (p - 0.5) * pw, yc))
  }
  line(..pts, stroke: (paint: black.transparentize(72%), thickness: 0.7pt))

  for (p, yc, val) in seq {
    let xp = x_p0 + (p - 0.5) * pw
    let col = if val == 1 { rgb("#b02a2a") } else { rgb("#1f77b4") }
    content((xp, yc), anchor: "center", text(size: 7pt, fill: col, weight: "bold")[#val])
  }

  // Riga totali
  content((0.275, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[8])
  content((0.825, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[7])
  content(((x_sig + x_p0) / 2, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[tot])
  content(((x_p0 + x_end) / 2, 2.96), anchor: "center", text(size: 7pt)[
    Evento meno frequente: #text(fill: rgb("#1f77b4"), weight: "bold")[Non rotta (0)]
  ])

  // Blocco inferiore sinistro: sintesi somme
  rect((0, 0.20), (4.45, 2.25), fill: black.transparentize(96%), stroke: 0.65pt)
  content((0.22, 1.92), anchor: "west", text(size: 7pt, weight: "bold")[Riepilogo evento meno frequente])
  content((0.22, 1.48), anchor: "west", text(size: 7pt)[Esiti non rotti: $N = sum n_i = 7$])
  content((0.22, 1.02), anchor: "west", text(size: 7pt)[Momento primo: $A = sum i n_i = 9$])
  content((0.22, 0.56), anchor: "west", text(size: 7pt)[Momento secondo: $B = sum i^2 n_i = 15$])

  // Blocco inferiore destro: tabella i, n, i*n, i^2*n
  let tx = (4.85, 5.80, 6.70, 7.60, 8.50, 9.45)
  let ty = (2.25, 1.84, 1.43, 1.02, 0.61, 0.20)
  rect((tx.at(0), ty.at(1)), (tx.at(5), ty.at(0)), fill: black.transparentize(92%), stroke: none)
  for yv in ty {
    line((tx.at(0), yv), (tx.at(5), yv), stroke: 0.65pt)
  }
  for xv in tx {
    line((xv, ty.at(5)), (xv, ty.at(0)), stroke: 0.65pt)
  }

  let headers = ($sigma_a$, $i$, $n$, $i n$, $i^2 n$)
  for idx in range(5) {
    let xc = (tx.at(idx) + tx.at(idx + 1)) / 2
    content((xc, 2.045), anchor: "center", text(size: 7pt, weight: "bold")[#headers.at(idx)])
  }

  let sum_rows = (
    ("60", "3", "0", "0", "0"),
    ("50", "2", "3", "6", "12"),
    ("40", "1", "3", "3", "3"),
    ("30", "0", "1", "0", "0"),
  )
  for r in range(4) {
    let yc = (ty.at(r + 1) + ty.at(r + 2)) / 2
    for c in range(5) {
      let xc = (tx.at(c) + tx.at(c + 1)) / 2
      content((xc, yc), anchor: "center", text(size: 7pt)[#sum_rows.at(r).at(c)])
    }
  }
})
