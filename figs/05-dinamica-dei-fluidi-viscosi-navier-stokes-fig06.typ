// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 715) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.15cm, {
  let H = 1.75
  let k = -3
  let pannello(x0, f, nome) = {
    parete(x0, x0 + 3.2, 0)
    parete(x0, x0 + 3.2, H, sotto: false)
    profilo(x0 + 1.9, 0, f, H: H, s: 1.1)
    etichetta((x0 + 1.6, -0.52), nome)
  }
  pannello(0, eta => k * eta * (eta - 1), [parabolica])
  draw.content((3.6, H / 2), text(size: 12pt)[$+$])
  pannello(4.0, eta => eta - 1, [lineare])
  draw.content((7.6, H / 2), text(size: 12pt)[$=$])
  pannello(8.0, eta => (eta - 1) * (1 + k * eta), [$u(y)$])
})
