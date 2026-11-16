// Figura non inclusa nel capitolo (conservata).
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

// 2. Profilo alare NACA 2412 e linee di corrente
#let naca-yc(xb, m, p) = if xb < p { m / (p * p) * (2 * p * xb - xb * xb) } else {
  m / ((1 - p) * (1 - p)) * ((1 - 2 * p) + 2 * p * xb - xb * xb)
}
#let naca-dyc(xb, m, p) = if xb < p { 2 * m / (p * p) * (p - xb) } else {
  2 * m / ((1 - p) * (1 - p)) * (p - xb)
}
#let naca-yt(xb, tt) = 5 * tt * (
  0.2969 * calc.sqrt(xb) - 0.1260 * xb - 0.3516 * xb * xb + 0.2843 * xb * xb * xb - 0.1036 * xb * xb * xb * xb
)

#canvas(length: 1cm, {
  import draw: *
  let c = 4.0                    // corda
  let (m, p, tt) = (0.02, 0.4, 0.12)   // NACA 2412
  let N = 70
  // punti del profilo (spaziatura a coseno), dorso e ventre
  let dorso = ()
  let ventre = ()
  for i in range(N + 1) {
    let xb = (1 - calc.cos(calc.pi * i / N)) / 2
    let yc = naca-yc(xb, m, p)
    let th = calc.atan(naca-dyc(xb, m, p))
    let yt = naca-yt(xb, tt)
    dorso.push((c * (xb - yt * calc.sin(th)), c * (yc + yt * calc.cos(th))))
    ventre.push((c * (xb + yt * calc.sin(th)), c * (yc - yt * calc.cos(th))))
  }
  let contorno = dorso + ventre.rev()

  // linee di corrente: quota asintotica y0, spostamento che segue il profilo e decade
  // con la distanza; sopra si addensano (fattore 1 - a·phi), sotto si diradano (1 + b·phi)
  let lam = 0.6
  let phi(x) = calc.exp(-calc.pow((x - 1.3) / 1.7, 2))
  let gu(x) = 0.32 * calc.exp(-calc.pow((x - 1.3) / 1.35, 2))   // inviluppo del dorso
  let gl(x) = -0.17 * calc.exp(-calc.pow((x - 1.1) / 1.25, 2))  // inviluppo del ventre
  let sopra(y0) = x => (x, y0 * (1 - 0.32 * phi(x)) + calc.exp(-y0 / lam) * gu(x))
  let sotto(y0) = x => (x, y0 * (1 + 0.22 * phi(x)) + calc.exp(y0 / lam) * gl(x))
  let (xa, xb) = (-1.6, 5.9)
  let y-sopra = (0.34, 0.7, 1.08)
  let y-sotto = (-0.34, -0.7, -1.08)
  for y0 in y-sopra {
    line(..campiona(sopra(y0), xa, xb, n: 90), stroke: sp-vec + c-vel, mark: punta(c-vel))
  }
  for y0 in y-sotto {
    line(..campiona(sotto(y0), xa, xb, n: 90), stroke: sp-vec + c-vel, mark: punta(c-vel))
  }

  line(..contorno, close: true, fill: c-riemp, stroke: sp-geo + c-geo)

  // portanza dal centro di pressione (~25% della corda)
  let xcp = 0.25 * c
  let pcp = (xcp, c * naca-yc(0.25, m, p))
  vettore(pcp, (xcp, 2.05), col: c-forza)
  lab((xcp, 2.05), $F_i$, col: c-forza, anchor: "south", pad: 0.08)

  // annotazioni fuori dal campo di moto, richiami che arrivano sulla linea più esterna
  let xs = 2.9
  let ytop = sopra(y-sopra.last())(xs).at(1)
  let ybot = sotto(y-sotto.last())(xs).at(1)
  leader((3.7, 1.85), (xs, ytop + 0.07), [$u$ cresce, $p$ diminuisce], anchor: "west")
  leader((3.7, -1.95), (xs, ybot - 0.07), [$u$ diminuisce, $p$ aumenta], anchor: "west")
})
