// lib.typ - preambolo condiviso degli appunti di Elettrotecnica
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

// Distingue automaticamente tra #line/#rect/#circle di Typst e quelli dei circuiti CeTZ:
#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }



// === IMPOSTAZIONI GLOBALI COMPONENTI ===
// Cambia qui "ieee" (zig-zag) o "iec" (rettangolo) per modificare TUTTI i circuiti!
#let resistor = zap.resistor.with(variant: "ieee")
#let rheostat = zap.rheostat.with(variant: "ieee")
#let potentiometer = zap.potentiometer.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec") // "iec" = cerchio con linea, "ieee" = cerchio con +/-
#let isource = zap.isource.with(variant: "iec")

// === RIQUADRI ===
#let nota(body) = block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  stroke: (left: 3pt + luma(120)),
  body
)
// Stessi colori del formulario
#let formula(title, body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#eef4fa"), stroke: (left: 2.5pt + rgb("#1f4e79")),
  [#text(weight: "bold", fill: rgb("#1f4e79"), title) #parbreak() #body],
)
#let esempio(body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#f6f6ee"), stroke: (left: 2.5pt + rgb("#8a7a2a")),
  [#text(weight: "bold", fill: rgb("#8a7a2a"))[Esempio.] #body],
)
#let attenzione(body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#fbeeee"), stroke: (left: 2.5pt + rgb("#a03030")),
  [#text(weight: "bold", fill: rgb("#a03030"))[Attenzione.] #body],
)

// === FUNZIONI E MACRO ===
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ("Liberation Sans", "Arial", "Helvetica", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

// Circuito Zap ridotto in scala (senza toccare le coordinate)
#let fig-scala(body, s: 75%) = align(center, scale(s, reflow: true, zap.circuit(body)))

// ATTENZIONE: nei capitoli `circ` e' il simbolo di grado (#circ); non e' il wrapper di scala.
#let circ = sym.degree
#let varphi = $phi$

// === IMPOSTAZIONI PAGINA E TESTO (uso: #show: appunti) ===
#let appunti(body) = {
  set page(
    paper: "a4",
    margin: 1.5cm,
    numbering: "1",
    number-align: bottom + right,
  )
  set text(lang: "it", size: 11pt)
  set par(justify: true)
  set heading(numbering: "1.")
  body
}
