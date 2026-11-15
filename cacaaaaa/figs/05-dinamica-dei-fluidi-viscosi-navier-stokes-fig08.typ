// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 765) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.35cm, {
  let H = 2.5
  parete(0, 7.2, 0)
  parete(0, 7.2, H, sotto: false)

  // Asse verticale di riferimento (u = 0)
  draw.line((4.0, 0), (4.0, H), stroke: 0.6pt + c-aux)
  freccia((4.0, 0), (4.0, H + 0.5), sp: 0.8pt)
  etichetta((4.15, H + 0.5), $y$, anchor: "west")

  // Retta limite G = 0 (Couette puro)
  let pts0 = range(0, 41).map(i => (4.0 + 1.6 * (i / 40 - 1), H * i / 40))
  draw.line(..pts0, stroke: (paint: c-geo, thickness: 1.1pt, dash: "dashed"))

  // Richiamo pulito per G = 0 in zona libera da intersezioni
  let xm = 4.0 + 1.6 * (0.42 - 1)
  let ym = H * 0.42
  draw.line((xm, ym), (xm + 0.3, ym - 0.80), stroke: 0.5pt + c-aux)
  etichetta((xm + 0.2, ym - 0.85), $G = 0$, col: c-geo, anchor: "west", bg: white)

  // Famiglia di curve G > 0 (a sinistra della retta G = 0)
  for k in (1.2, 2.5) {
    let pts = range(0, 41).map(i => {
      let eta = i / 40
      (4.0 + 1.6 * (eta - 1) * (1 + k * eta), H * eta)
    })
    draw.line(..pts, stroke: 1.1pt + c-vel)
  }
  etichetta((1.35, 1.55), $G > 0$, col: c-vel)

  // Famiglia di curve G < 0 (a destra della retta G = 0)
  for k in (-1.5, -3.0) {
    let pts = range(0, 41).map(i => {
      let eta = i / 40
      (4.0 + 1.6 * (eta - 1) * (1 + k * eta), H * eta)
    })
    draw.line(..pts, stroke: (paint: c-norm, thickness: 1.1pt, dash: "densely-dash-dotted"))
  }
  etichetta((5.25, 1.55), $G < 0$, col: c-norm)

  // Condizione al contorno in y = 0
  freccia((4.0, 0), (2.4, 0), col: c-vel, sp: 1.1pt)
  etichetta((2.4, -0.38), $-U$, col: c-vel)
  etichetta((4.0, -0.38), $0$, col: c-geo)
})
