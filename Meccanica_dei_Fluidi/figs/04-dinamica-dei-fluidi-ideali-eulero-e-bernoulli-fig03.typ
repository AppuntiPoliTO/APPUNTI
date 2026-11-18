// 1. Condotto convergente: condizione di impermeabilità u · n = 0
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 0.6cm, {
  import draw: *
  let L = 8.0     // lunghezza del condotto
  let b1 = 2.3    // raggio della sezione d'ingresso
  let b2 = 0.85   // raggio della sezione d'uscita
  let k = 0.32    // schiacciamento prospettico delle sezioni (asse orizzontale / verticale)
  // profilo della parete: raccordo a coseno, pendenza nulla agli estremi
  // -> tangente alle ellissi nei loro punti più alto e più basso
  let R(x) = b2 + (b1 - b2) * (1 + calc.cos(calc.pi * x / L)) / 2
  let dR(x) = -(b1 - b2) * calc.pi / (2 * L) * calc.sin(calc.pi * x / L)

  axis-line((-k * b1 - 0.7, 0), (L + k * b2 + 0.7, 0))
  circle((0, 0), radius: (k * b1, b1), stroke: sp-geo + c-geo)
  circle((L, 0), radius: (k * b2, b2), stroke: sp-geo + c-geo)
  line(..campiona(x => (x, R(x)), 0, L), stroke: sp-geo + c-geo)
  line(..campiona(x => (x, -R(x)), 0, L), stroke: sp-geo + c-geo)

  // punto P sulla parete inferiore: tangente t e normale n entrante nel fluido
  let xp = 0.42 * L
  let P = (xp, -R(xp))
  let t = v-unit((1, -dR(xp)))
  let n = v-perp(t)
  let q = 0.24
  line(v-add(P, v-mul(t, q)), v-add(v-add(P, v-mul(t, q)), v-mul(n, q)), v-add(P, v-mul(n, q)),
    stroke: sp-aux + c-aux)
  let ln = 1.1
  let lu = 1.9
  vettore(P, v-add(P, v-mul(n, ln)), col: c-norm)
  vettore(P, v-add(P, v-mul(t, lu)), col: c-vel)
  circle(P, radius: 0.07, fill: c-geo, stroke: none)
  lab(v-add(P, v-mul(n, ln)), $arrow(n)$, col: c-norm, anchor: "east", pad: 0.1)
  lab(v-add(v-add(P, v-mul(t, lu)), v-mul(n, 0.12)), $arrow(u)$, col: c-vel, anchor: "south", pad: 0.06)
})
