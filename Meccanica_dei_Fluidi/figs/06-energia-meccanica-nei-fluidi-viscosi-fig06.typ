// 3. Sforzo viscoso tau_rz = G r / 2: nullo sull'asse, lineare fino a parete
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 1.3cm, {
  import draw: *
  let tw = 1.6                 // |tau_rz| a parete, in scala
  let (x0, x1) = (-3.3, 1.8)

  hatch-wall((x0, 1), (x1, 1), side: 1)
  hatch-wall((x0, -1), (x1, -1), side: -1)
  axis-line((x0 - 0.2, 0), (x1 + 0.3, 0))
  line((0, -1.3), (0, 1.5), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, 1.5), $r$, anchor: "south", pad: 0.06)

  // distribuzione lineare (G < 0: verso opposto al moto), simmetrica rispetto all'asse
  for s in (1, -1) {
    line((0, 0), (-tw, s), stroke: sp-vec + c-forza)
    for k in range(1, 7) {
      let y = k / 6
      line((0, s * y), (-tw * y, s * y), stroke: sp-aux + c-forza, mark: punta(c-forza))
    }
  }
  lab((-tw, 1.22), $tau_(r z)(R) = (G R) / 2$, col: c-forza, anchor: "south", pad: 0.04)
  lab((0, 0), $tau_(r z) = 0$, col: c-forza, anchor: "north-west", pad: 0.08, bg: true)

  vettore((0.6, 0.45), (1.5, 0.45), col: c-vel)
  lab((1.05, 0.45), text(fill: c-vel)[moto], anchor: "south", pad: 0.06)
})
