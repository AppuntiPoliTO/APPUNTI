// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1335) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  let R_V = 3.1
  let R_If = 2.1
  let gcol = rgb("#777777")

  // Tensioni concatenate a +30, -90, +150 gradi
  let aV12 = 30deg
  let aV23 = -90deg
  let aV31 = 150deg

  // Correnti di fase sfasate di phi = 30 gradi (quindi a 0, -120, +120 gradi)
  let aI12 = 0deg
  let aI23 = -120deg
  let aI31 = 120deg

  let p0 = (0, 0)
  let pI12 = (R_If * calc.cos(aI12), R_If * calc.sin(aI12))
  let pI23 = (R_If * calc.cos(aI23), R_If * calc.sin(aI23))
  let pI31 = (R_If * calc.cos(aI31), R_If * calc.sin(aI31))

  // Archi angolo phi
  arc((0.75, 0), start: 0deg, stop: 30deg, radius: 0.75, stroke: 0.75pt)
  content((0.85, 0.25), anchor: "west", $varphi$)

  arc((0, -0.75), start: -90deg, stop: -120deg, radius: 0.75, stroke: 0.75pt)
  content((-0.2, -0.95), anchor: "north", $varphi$)

  arc((0.75 * calc.cos(120deg), 0.75 * calc.sin(120deg)), start: 120deg, stop: 150deg, radius: 0.75, stroke: 0.75pt)
  content((-0.55, 0.7), anchor: "east", $varphi$)

  // Fasori V_12, V_23, V_31 (nero)
  line(p0, (R_V * calc.cos(aV12), R_V * calc.sin(aV12)), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, (R_V * calc.cos(aV23), R_V * calc.sin(aV23)), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, (R_V * calc.cos(aV31), R_V * calc.sin(aV31)), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))

  // Fasori I_12, I_23, I_31 (grigio scuro)
  line(p0, pI12, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p0, pI23, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p0, pI31, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  // Triangolo delle correnti di linea I_1, I_2, I_3
  line(pI31, pI12, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(pI12, pI23, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(pI23, pI31, stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  content((R_V * calc.cos(aV12) + 0.1, R_V * calc.sin(aV12) - 0.25), anchor: "west", $overline(V)_(1 2)$)
  content((0.2, -R_V + 0.15), anchor: "west", $overline(V)_(2 3)$)
  content((R_V * calc.cos(aV31) - 0.1, R_V * calc.sin(aV31) - 0.25), anchor: "east", $overline(V)_(3 1)$)

  content((1.2, -0.22), anchor: "north", text(fill: gcol)[$overline(I)_(1 2)$])
  content((-0.45, -0.7), anchor: "east", text(fill: gcol)[$overline(I)_(2 3)$])
  content((-0.1, 1.25), anchor: "east", text(fill: gcol)[$overline(I)_(3 1)$])

  content((1.75, 0.55), anchor: "west", text(fill: gcol)[$overline(I)_1$])
  content((-0.35, -1.85), anchor: "west", text(fill: gcol)[$overline(I)_2$])
  content((-1.15, 1.55), anchor: "east", text(fill: gcol)[$overline(I)_3$])
})
