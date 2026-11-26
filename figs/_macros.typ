// Macro CeTZ 0.3.4 condivise per Appunti Typst Studio
// Installato in figs/_macros.typ — importabile nelle figure con: #import "_macros.typ": *
#import "@preview/cetz:0.3.4": canvas, draw

// Assi cartesiani 2D puliti con frecce ed etichette
#let axes-2d(
  x-min: -0.5,
  x-max: 5.0,
  y-min: -0.5,
  y-max: 3.5,
  x-label: [$x$],
  y-label: [$y$],
  stroke-style: 0.75pt,
) = {
  import draw: *
  line((x-min, 0), (x-max, 0), mark: (end: ">"), stroke: stroke-style)
  line((0, y-min), (0, y-max), mark: (end: ">"), stroke: stroke-style)
  content((x-max + 0.15, 0), text(size: 8pt)[#x-label], anchor: "west")
  content((0, y-max + 0.15), text(size: 8pt)[#y-label], anchor: "south")
}

// Terna assonometrica 3D pulita (z verticale, x in basso a sinistra, y a destra)
#let axes-3d(
  origin: (0, 0),
  len: 2.0,
  lx: [$x$],
  ly: [$y$],
  lz: [$z$],
  stroke-style: 0.75pt,
) = {
  import draw: *
  let (ox, oy) = origin
  let dx = -0.65 * len
  let dy = -0.45 * len
  line((ox, oy), (ox, oy + len), mark: (end: ">"), stroke: stroke-style)
  line((ox, oy), (ox + len, oy), mark: (end: ">"), stroke: stroke-style)
  line((ox, oy), (ox + dx, oy + dy), mark: (end: ">"), stroke: stroke-style)
  content((ox, oy + len + 0.15), text(size: 8pt)[#lz], anchor: "south")
  content((ox + len + 0.15, oy), text(size: 8pt)[#ly], anchor: "west")
  content((ox + dx - 0.12, oy + dy - 0.10), text(size: 8pt)[#lx], anchor: "north-east")
}

// Quota tecnica orizzontale o verticale con linee di richiamo e frecce a triangolo
#let dim-line(
  a,
  b,
  label,
  offset: 0.45,
  vertical: false,
) = {
  import draw: *
  let (ax, ay) = a
  let (bx, by) = b
  if vertical {
    let xq = ax + offset
    line((ax, ay), (xq, ay), stroke: (thickness: 0.5pt, paint: luma(90)))
    line((bx, by), (xq, by), stroke: (thickness: 0.5pt, paint: luma(90)))
    line(
      (xq, ay),
      (xq, by),
      mark: (start: "triangle", end: "triangle", fill: white, scale: 0.65),
      stroke: 0.6pt,
    )
    let anc = if offset >= 0 { "west" } else { "east" }
    let pad = if offset >= 0 { 0.12 } else { -0.12 }
    content((xq + pad, (ay + by) / 2), text(size: 7.5pt)[#label], anchor: anc)
  } else {
    let yq = ay + offset
    line((ax, ay), (ax, yq), stroke: (thickness: 0.5pt, paint: luma(90)))
    line((bx, by), (bx, yq), stroke: (thickness: 0.5pt, paint: luma(90)))
    line(
      (ax, yq),
      (bx, yq),
      mark: (start: "triangle", end: "triangle", fill: white, scale: 0.65),
      stroke: 0.6pt,
    )
    let anc = if offset >= 0 { "south" } else { "north" }
    let pad = if offset >= 0 { 0.12 } else { -0.12 }
    content(((ax + bx) / 2, yq + pad), text(size: 7.5pt)[#label], anchor: anc)
  }
}

// Tratteggio da incastro/parete lungo un segmento orizzontale o verticale
#let ground-hatch(
  a,
  b,
  count: 8,
  depth: 0.25,
  side: -1,
) = {
  import draw: *
  let (ax, ay) = a
  let (bx, by) = b
  line(a, b, stroke: 1.0pt)
  let dx = bx - ax
  let dy = by - ay
  let vertical = calc.abs(dy) > calc.abs(dx)
  for i in range(0, count + 1) {
    let t = i / count
    let px = ax + dx * t
    let py = ay + dy * t
    if vertical {
      line((px, py), (px + side * depth, py - depth * 0.8), stroke: 0.55pt)
    } else {
      line((px, py), (px - depth * 0.7, py + side * depth), stroke: 0.55pt)
    }
  }
}

// Asse di simmetria tratto-punto
#let center-line(a, b, color: luma(90)) = {
  import draw: *
  line(a, b, stroke: (dash: "dash-dotted", thickness: 0.65pt, paint: color))
}

// Vettore forza/coppia con colore e etichetta pulita
#let force-vec(
  start,
  end,
  label,
  color: red.darken(10%),
  label-anchor: "south",
  pad: (0.0, 0.12),
) = {
  import draw: *
  line(start, end, mark: (end: ">"), stroke: (thickness: 1.1pt, paint: color))
  let (ex, ey) = end
  let (px, py) = pad
  content((ex + px, ey + py), text(size: 8pt, fill: color)[#label], anchor: label-anchor)
}

// Cilindro 3D verticale con ellisse posteriore tratteggiata
#let cyl-3d(
  cx: 0,
  y-bot: -1.2,
  y-top: 1.2,
  rx: 1.2,
  ry: 0.36,
  fill-color: blue.transparentize(86%),
) = {
  import draw: *
  circle((cx, y-top), radius: (rx, ry), fill: fill-color, stroke: none)
  line((cx - rx, y-bot), (cx - rx, y-top), stroke: 1pt)
  line((cx + rx, y-bot), (cx + rx, y-top), stroke: 1pt)
  arc((cx, y-bot), start: 0deg, stop: 180deg, radius: (rx, ry), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((cx, y-bot), start: 180deg, stop: 360deg, radius: (rx, ry), anchor: "origin", stroke: 1pt)
  circle((cx, y-top), radius: (rx, ry), stroke: 1pt)
}
