// Figura estratta da fatica.typ (riga 4486) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.84cm, {
  // BBox: x in [0.0, 20.0] (dx=20.0), y in [0.0, 9.4], length=0.74cm -> larghezza = 14.80 cm <= 17.0 cm
  import draw: *

  let draw-cell(ox, oy, label, mode) = {
    rect(
      (ox, oy),
      (ox + 9.5, oy + 4.4),
      stroke: (paint: black.transparentize(78%), thickness: 0.6pt),
      radius: 0.15,
    )
    content((ox + 0.30, oy + 4.18), anchor: "north-west", [#text(size: 8.5pt, weight: "bold")[#label]])

    // Provino cilindrico 2D a sinistra
    let yc = oy + 2.55
    line(
      (ox + 0.25, yc),
      (ox + 3.20, yc),
      stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(50%)),
    )
    line(
      (ox + 0.45, yc + 0.44), (ox + 0.90, yc + 0.44), (ox + 1.20, yc + 0.27),
      (ox + 2.25, yc + 0.27), (ox + 2.55, yc + 0.44), (ox + 3.00, yc + 0.44),
      (ox + 3.00, yc - 0.44), (ox + 2.55, yc - 0.44), (ox + 2.25, yc - 0.27),
      (ox + 1.20, yc - 0.27), (ox + 0.90, yc - 0.44), (ox + 0.45, yc - 0.44),
      close: true,
      fill: black.transparentize(88%),
      stroke: 0.95pt,
    )

    // Vettori di carico applicati (blu: tensione media, rosso: alternata)
    if mode == "a" {
      line((ox + 3.30, yc + 0.36), (ox + 4.30, yc + 0.36), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.7))
      content((ox + 3.80, yc + 0.54), anchor: "south", [#text(size: 7.5pt, fill: blue)[$sigma_m$]])
      line((ox + 3.30, yc - 0.36), (ox + 4.30, yc - 0.36), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.7))
      content((ox + 3.80, yc - 0.54), anchor: "north", [#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_a$]])
    } else if mode == "b" {
      line((ox + 3.30, yc + 0.42), (ox + 4.30, yc + 0.42), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.7))
      content((ox + 3.80, yc + 0.60), anchor: "south", [#text(size: 7.5pt, fill: blue)[$sigma_m$]])
      arc((ox + 3.55, yc - 0.42), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.48))
      content((ox + 4.02, yc - 0.42), anchor: "west", [#text(size: 7.5pt, fill: red.transparentize(10%))[$tau_a$]])
    } else if mode == "c" {
      arc((ox + 3.55, yc + 0.45), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.48))
      content((ox + 4.02, yc + 0.45), anchor: "west", [#text(size: 7.5pt, fill: blue)[$tau_m$]])
      arc((ox + 3.55, yc - 0.45), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.48))
      content((ox + 4.02, yc - 0.45), anchor: "west", [#text(size: 7.5pt, fill: red.transparentize(10%))[$tau_a$]])
    } else {
      arc((ox + 3.55, yc + 0.46), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.48))
      content((ox + 4.02, yc + 0.46), anchor: "west", [#text(size: 7.5pt, fill: blue)[$tau_m$]])
      line((ox + 3.30, yc - 0.42), (ox + 4.30, yc - 0.42), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.7))
      content((ox + 3.80, yc - 0.58), anchor: "north", [#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_a$]])
    }

    // Condizione sulle tensioni medie principali
    let cond = if mode == "a" or mode == "b" {
      $sigma_(m,1) + sigma_(m,2) != 0$
    } else {
      $sigma_(m,1) + sigma_(m,2) = 0$
    }
    content((ox + 1.75, oy + 0.72), anchor: "center", [#text(size: 7.5pt)[#cond]])

    // Diagramma qualitativo a destra
    let ax0 = ox + 5.75
    let ay0 = oy + 0.95
    line((ax0 - 0.35, ay0), (ax0 + 3.15, ay0), stroke: 0.75pt, mark: (end: ">", scale: 0.65))
    line((ax0, ay0 - 0.10), (ax0, ay0 + 2.65), stroke: 0.75pt, mark: (end: ">", scale: 0.65))

    let xlabel = if mode == "a" or mode == "b" { $sigma_m$ } else { $tau_m$ }
    let ylabel = if mode == "a" or mode == "d" { $sigma_a$ } else { $tau_a$ }
    content((ax0 + 3.15, ay0 - 0.16), anchor: "north-east", [#text(size: 7.5pt)[#xlabel]])
    content((ax0 - 0.12, ay0 + 2.55), anchor: "east", [#text(size: 7.5pt)[#ylabel]])

    if mode == "a" or mode == "b" {
      line((ax0 - 0.25, ay0 + 2.25), (ax0 + 2.60, ay0 + 0.35), stroke: (paint: rgb("#1f77b4"), thickness: 1.15pt))
    } else {
      line((ax0 - 0.25, ay0 + 1.55), (ax0 + 2.60, ay0 + 1.55), stroke: (paint: rgb("#1f77b4"), thickness: 1.15pt))
    }
  }

  draw-cell(0.0, 5.0, "a)", "a")
  draw-cell(10.5, 5.0, "b)", "b")
  draw-cell(0.0, 0.0, "c)", "c")
  draw-cell(10.5, 0.0, "d)", "d")
})
