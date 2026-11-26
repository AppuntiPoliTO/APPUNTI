// Figura estratta da fatica.typ (riga 2084) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.77cm, {
  // BBox: x in [0.0, 10.55] (dx=10.55), y in [0.0, 6.45], length=0.77cm -> larghezza = 8.12 cm <= 10.0 cm
  import draw: *

  let map-x(rm) = 1.35 + ((rm - 200.0) / 100.0) * 0.56
  let map-y(cf) = 1.00 + ((cf - 0.40) / 0.10) * 0.85

  // Griglia cartesiana fedele a Slide 11: Rm in [200, 1500] (passo 100), CF in [0.4, 1.0] (passo 0.1)
  for i in range(0, 14) {
    let x = map-x(200 + i * 100)
    line((x, 1.00), (x, 6.10), stroke: (paint: luma(195), thickness: 0.45pt))
  }
  for j in range(0, 7) {
    let y = 1.00 + j * 0.85
    line((1.35, y), (8.63, y), stroke: (paint: luma(195), thickness: 0.45pt))
  }
  rect((1.35, 1.00), (8.63, 6.10), stroke: (thickness: 0.9pt))

  // Tacche ed etichette asse Y (CF)
  let cf_vals = ("0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1.0")
  for j in range(0, 7) {
    let y = 1.00 + j * 0.85
    content((1.20, y), text(size: 7pt)[#cf_vals.at(j)], anchor: "east")
  }
  content((0.35, 3.55), text(size: 8.5pt, weight: "bold")[$C_F$], anchor: "center")

  // Etichette asse X (Rm ogni 200 MPa da 200 a 1400; bordo destro a 1500 MPa)
  for k in range(0, 7) {
    let rm = 200 + k * 200
    content((map-x(rm), 0.82), text(size: 7pt)[#rm], anchor: "north")
  }
  content((4.99, 0.25), text(size: 8pt)[$R_m$ (MPa)], anchor: "center")

  // Curve sperimentali CF(Rm, Ra) campionate ogni 100 MPa su [200, 1500]
  let rms = (200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500)
  let draw-cf(vals, st) = {
    let pts = ()
    for idx in range(0, rms.len()) {
      pts.push((map-x(rms.at(idx)), map-y(vals.at(idx))))
    }
    line(..pts, stroke: st)
  }

  draw-cf((1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000), (paint: blue, thickness: 1.15pt))
  draw-cf((1.000, 0.990, 0.980, 0.973, 0.970, 0.967, 0.964, 0.961, 0.958, 0.955, 0.955, 0.955, 0.955, 0.955), (thickness: 0.95pt))
  draw-cf((1.000, 0.984, 0.968, 0.953, 0.941, 0.932, 0.925, 0.920, 0.917, 0.915, 0.914, 0.913, 0.913, 0.913), (thickness: 0.95pt))
  draw-cf((0.984, 0.965, 0.945, 0.927, 0.912, 0.901, 0.892, 0.884, 0.878, 0.872, 0.866, 0.863, 0.861, 0.860), (thickness: 0.95pt))
  draw-cf((0.980, 0.950, 0.920, 0.892, 0.866, 0.843, 0.822, 0.804, 0.788, 0.774, 0.763, 0.755, 0.750, 0.750), (thickness: 0.95pt))
  draw-cf((0.975, 0.932, 0.888, 0.845, 0.804, 0.768, 0.736, 0.707, 0.682, 0.663, 0.648, 0.637, 0.629, 0.623), (thickness: 0.95pt))
  draw-cf((0.950, 0.900, 0.850, 0.802, 0.756, 0.716, 0.678, 0.645, 0.613, 0.582, 0.552, 0.525, 0.500, 0.478), (paint: red.transparentize(10%), thickness: 1.15pt))

  // Etichette rugosità Ra sul bordo destro (x = 1500 MPa -> 8.63)
  content((8.80, map-y(1.000)), text(size: 6.8pt, fill: blue, weight: "bold")[0.8], anchor: "west")
  content((8.80, map-y(0.955)), text(size: 6.8pt)[1.6], anchor: "west")
  content((8.80, map-y(0.913)), text(size: 6.8pt)[3.2], anchor: "west")
  content((8.80, map-y(0.860)), text(size: 6.8pt)[6.3], anchor: "west")
  content((8.80, map-y(0.750)), text(size: 6.8pt)[10], anchor: "west")
  content((8.80, map-y(0.623)), text(size: 6.8pt)[40], anchor: "west")
  content((8.80, map-y(0.478)), text(size: 6.8pt, fill: red.transparentize(10%), weight: "bold")[160], anchor: "west")

  content((10.10, 3.55), text(size: 7.5pt)[Rugosità $R_a$ ($mu"m"$)], angle: 90deg, anchor: "center")
})
