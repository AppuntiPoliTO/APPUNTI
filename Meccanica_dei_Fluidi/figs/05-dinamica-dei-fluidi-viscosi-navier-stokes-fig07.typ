// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 744) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.25cm, {
  caso-gradiente(0, 0, 2, [$G > 0$: sostiene il trascinamento], -1)
  caso-gradiente(6.4, 0, -3, [$G < 0$: si oppone al trascinamento], 1)
})
