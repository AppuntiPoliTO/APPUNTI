#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 1.5cm, numbering: "1", number-align: bottom + right)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)
#let circ = sym.degree
#let varphi = $phi$

#set heading(numbering: "1.")
#set figure(numbering: none)
#show figure.caption: it => it.body

#include "_parts/giunti/p1.typ"
#include "_parts/giunti/p2.typ"

#include "_parts/giunti/p3.typ"

#include "_parts/giunti/p4.typ"
