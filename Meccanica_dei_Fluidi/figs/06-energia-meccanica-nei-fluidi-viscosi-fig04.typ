// 1. Condotta circolare: coordinate, raggio R, lunghezza L, portata Q_v
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#let tratt = (paint: c-aux, thickness: sp-aux, dash: "dashed")

#canvas(length: 0.95cm, {
  import draw: *
  let (L, R, e) = (5.5, 1.0, 0.3)   // lunghezza, raggio, semiasse prospettico delle sezioni

  axis-line((-e - 0.5, 0), (L + e + 0.6, 0))
  line((0, R), (L, R), stroke: sp-geo + c-geo)
  line((0, -R), (L, -R), stroke: sp-geo + c-geo)
  circle((0, 0), radius: (e, R), stroke: sp-geo + c-geo)
  arc((L, 0), start: -90deg, stop: 90deg, radius: (e, R), anchor: "origin", stroke: sp-geo + c-geo)
  arc((L, 0), start: 90deg, stop: 270deg, radius: (e, R), anchor: "origin", stroke: tratt)

  // assi z (lungo l'asse) e r
  vettore((0, 0), (1.2, 0), col: c-geo)
  lab((1.2, 0), $z$, anchor: "south-west", pad: 0.06)
  vettore((0, 0), (0, R + 0.6), col: c-geo)
  lab((0, R + 0.6), $r$, anchor: "south", pad: 0.06)

  // raggio e lunghezza
  let xr = 0.66 * L
  line((xr, 0), (xr, R), stroke: sp-aux + c-geo, mark: punte(c-geo))
  lab((xr, R / 2), $R$, anchor: "west", pad: 0.08)
  dim((0, -R), (L, -R), [], off: -0.5, bg: false)
  lab((L / 2, -R - 0.5), $L$, anchor: "north", pad: 0.08)

  // portata
  vettore((0.36 * L, -0.45), (0.55 * L, -0.45), col: c-vel)
  lab((0.455 * L, -0.45), $Q_v$, col: c-vel, anchor: "north", pad: 0.08)
})
