// Figura estratta da fatica.typ (riga 5287) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.58cm, {
  // BBox: x in [-1.6, 26.8] (dx=28.4), y in [-3.8, 5.5], length=0.58cm -> larghezza = 16.47 cm <= 17.0 cm
  import draw: line, circle, content

  let ym(v) = v / 100.0 * 1.35
  let raw-pts = (
    (0, 300), (1, 0), (2, 200), (3, -200), (4, 200),
    (5, -150), (6, 100), (7, 0), (8, 100), (9, -100), (10, 300),
  )

  // --- Helper di griglia per un pannello ---
  let draw-grid(x0) = {
    for v in (-200, -150, -100, -50, 0, 50, 100, 150, 200, 250, 300) {
      let yy = ym(v)
      let is-major = calc.rem(v, 100) == 0
      if is-major {
        let p-col = if v == 0 { luma(165) } else { luma(215) }
        line((x0, yy), (x0 + 10, yy), stroke: (paint: p-col, thickness: 0.45pt))
        content((x0 - 0.18, yy), anchor: "east", text(size: 7pt)[#v])
      } else {
        line((x0, yy), (x0 + 10, yy), stroke: (paint: luma(230), thickness: 0.35pt, dash: "dotted"))
      }
    }
    for gx in range(1, 11) {
      line((x0 + gx, ym(-200)), (x0 + gx, ym(300)), stroke: (paint: luma(222), thickness: 0.35pt, dash: "dotted"))
    }
    line((x0, ym(-200)), (x0, ym(348)), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
    line((x0, ym(-200)), (x0 + 10.25, ym(-200)), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
    content((x0 - 0.15, ym(352)), anchor: "east", text(size: 7pt)[$sigma$ (MPa)])
    content((x0 + 10.05, ym(-212)), anchor: "north", text(size: 7pt)[$t$])
  }

  // --- Pannello (a): Bacino colmo (300 MPa) e ciclo 1 ---
  draw-grid(0)
  let pts-a = raw-pts.map(p => (p.at(0), ym(p.at(1))))
  line(..pts-a, close: true, fill: rgb("#1f77b4").transparentize(84%), stroke: none)
  line((0, ym(300)), (10, ym(300)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))
  line(..pts-a, stroke: (paint: black, thickness: 1.05pt))

  // Valvola 1
  circle((3, ym(-200)), radius: 0.095, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
  line((3, ym(-200) - 0.10), (3, ym(-258)), mark: (end: ">", scale: 0.5), stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
  content((3, ym(-266)), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[Ciclo 1])

  // Quota Delta sigma_1
  line((3, ym(-200)), (10.75, ym(-200)), stroke: (paint: luma(120), thickness: 0.5pt, dash: "dotted"))
  line((10, ym(300)), (10.75, ym(300)), stroke: (paint: luma(120), thickness: 0.5pt, dash: "dotted"))
  line((10.62, ym(-200)), (10.62, ym(300)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5), stroke: 0.65pt)
  content((10.78, ym(55)), anchor: "west", text(size: 7pt)[$Delta sigma_1$ \ 500])

  content((5.0, ym(368)), anchor: "south", text(size: 7.5pt, weight: "bold")[(a) Bacino colmo e scarico principale])

  // --- Pannello (b): Svuotamento delle sacche residue (cicli 2-5) ---
  let xb = 13.8
  draw-grid(xb)

  // Sacca 2 (200 -> 0)
  line((xb + 0.333, ym(200)), (xb + 1, ym(0)), (xb + 2, ym(200)), close: true, fill: rgb("#1f77b4").transparentize(78%), stroke: none)
  line((xb + 0.333, ym(200)), (xb + 2, ym(200)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))

  // Sacca 3 (200 -> -150)
  line((xb + 4, ym(200)), (xb + 5, ym(-150)), (xb + 6, ym(100)), (xb + 7, ym(0)), (xb + 8, ym(100)), (xb + 9, ym(-100)), (xb + 9.75, ym(200)), close: true, fill: rgb("#1f77b4").transparentize(89%), stroke: none)
  line((xb + 4, ym(200)), (xb + 9.75, ym(200)), stroke: (paint: rgb("#1f77b4"), thickness: 0.8pt, dash: "dashed"))

  // Sacca 4 (100 -> 0) e Sacca 5 (100 -> -100)
  line((xb + 6, ym(100)), (xb + 7, ym(0)), (xb + 8, ym(100)), close: true, fill: rgb("#1f77b4").transparentize(66%), stroke: none)
  line((xb + 6, ym(100)), (xb + 8, ym(100)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))
  line((xb + 8, ym(100)), (xb + 9, ym(-100)), (xb + 9.5, ym(100)), close: true, fill: rgb("#1f77b4").transparentize(66%), stroke: none)
  line((xb + 8, ym(100)), (xb + 9.5, ym(100)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))

  // Profilo spezzato
  let pts-b = raw-pts.map(p => (xb + p.at(0), ym(p.at(1))))
  line(..pts-b, stroke: (paint: black, thickness: 1.05pt))

  // Valvole 2..5 (con valvola 3 portata sotto quota -200 per zero collisioni)
  for vpair in ((1, 0, "Ciclo 2"), (5, -150, "Ciclo 3"), (7, 0, "Ciclo 4"), (9, -100, "Ciclo 5")) {
    let vx = xb + vpair.at(0)
    let vy = ym(vpair.at(1))
    let lbl = vpair.at(2)
    circle((vx, vy), radius: 0.09, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
    if lbl == "Ciclo 3" {
      line((vx, vy - 0.10), (vx, ym(-258)), mark: (end: ">", scale: 0.5), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
      content((vx, ym(-266)), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[#lbl])
    } else {
      line((vx, vy - 0.10), (vx, vy - 0.68), mark: (end: ">", scale: 0.48), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
      content((vx, vy - 0.74), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[#lbl])
    }
  }

  // Quota Delta sigma_2 (0..200) centrata sulla sacca 2 senza toccare i versanti
  line((xb + 1.0, ym(0) + 0.11), (xb + 1.0, ym(200)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.44), stroke: 0.6pt)
  content((xb + 0.80, ym(216)), anchor: "south-west", text(size: 7pt)[$Delta sigma_2 = 200$])

  // Quota Delta sigma_4 (0..100) lungo la verticale della valvola 4 senza intersecare il versante
  line((xb + 7.0, ym(0) + 0.11), (xb + 7.0, ym(100)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42), stroke: 0.6pt)
  content((xb + 7.0, ym(116)), anchor: "south", text(size: 7pt)[$Delta sigma_4 = 100$])

  // Quota interna Delta sigma_5 (-100..100)
  line((xb + 9.15, ym(-100)), (xb + 10.55, ym(-100)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
  line((xb + 9.50, ym(100)), (xb + 10.55, ym(100)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
  line((xb + 10.45, ym(-100)), (xb + 10.45, ym(100)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.48), stroke: 0.6pt)
  content((xb + 10.60, ym(0)), anchor: "west", text(size: 7pt)[$Delta sigma_5$ \ 200])

  // Quota esterna Delta sigma_3 (-150..200) senza incroci con quote interne
  line((xb + 5.15, ym(-150)), (xb + 11.95, ym(-150)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
  line((xb + 9.75, ym(200)), (xb + 11.95, ym(200)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
  line((xb + 11.82, ym(-150)), (xb + 11.82, ym(200)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.48), stroke: 0.6pt)
  content((xb + 11.96, ym(135)), anchor: "west", text(size: 7pt)[$Delta sigma_3$ \ 350])

  content((xb + 5.0, ym(368)), anchor: "south", text(size: 7.5pt, weight: "bold")[(b) Svuotamento delle sacche residue])
})
