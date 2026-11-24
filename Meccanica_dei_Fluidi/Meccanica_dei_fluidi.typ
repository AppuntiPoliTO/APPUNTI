#import "template.typ": *

#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set figure(supplement: [Figura], gap: 0.8em)

// Numerazione: titoli fino al 3° livello, equazioni per capitolo (es. (5.12)); figure senza numero
#set heading(numbering: "1.1.1")
#show heading.where(level: 4): set heading(numbering: none)
#set math.equation(numbering: n => numbering("(1.1)", counter(heading).get().first(), n))
#set figure(numbering: none)

// Ogni capitolo: pagina nuova, contatori azzerati, titolo con etichetta "Capitolo N"
#show heading.where(level: 1): it => {
  if it.numbering == none { return it }   // titolo "Indice": niente etichetta né pagina nuova
  colbreak(weak: true)
  counter(math.equation).update(0)
  v(0.8cm)
  block(width: 100%, below: 1.2em, {
    text(size: 9.5pt, fill: luma(110), tracking: 0.08em)[CAPITOLO #context counter(heading).display("1")]
    v(0.2em)
    text(size: 18pt, weight: "bold", it.body)
    v(-0.2em)
    line(length: 100%, stroke: 0.6pt + luma(150))
  })
}
#show heading.where(level: 2): set text(size: 13pt)
#show heading.where(level: 2): set block(above: 1.7em, below: 0.9em)
#show heading.where(level: 3): set text(size: 11.5pt)
#show heading.where(level: 3): set block(above: 1.4em, below: 0.8em)
#show heading.where(level: 4): set text(size: 11pt, style: "italic", weight: "semibold")

// --- INTESTAZIONE ---
#align(center)[
  #v(0.5cm)
  #line(length: 100%, stroke: 1.5pt)
  #v(0.4cm, weak: true)
  #text(size: 20pt, weight: "bold", fill: black)[Apppunti di Meccanica dei Fluidi] \
  #v(0.4cm, weak: true)
  #text(size: 12pt, style: "italic")[Corso del Prof. Pietro Stefano Salizzoni] \
  #v(0.2cm, weak: true)
  #line(length: 100%, stroke: 0.5pt)
  #v(0.4cm, weak: true)
  
  #grid(
    columns: (1fr, 1fr),
    align(left)[
      *Autori:* \
      Marco Vicari \
      Federico Toro
    ],
    align(right)[
      *Istituzione:* \
      Politecnico di Torino \
      #text(size: 9pt)[Anno Accademico 2025/2026]
    ]
  )
  #v(1cm)
]

#set outline(
  depth: 2,
  title: [Indice],
  indent: 1.5em, 
)

// 3. Stile per le voci di Livello 1 (Grassetto, niente puntini, spazio sopra)
#show outline.entry.where(level: 1): it => {
  v(1.2em, weak: true) // Spaziatura verticale sopra ogni sezione principale
  strong(
    link(
      it.element.location(),
      // Ricostruisce la riga con fill: none per rimuovere i puntini solo al livello 1
      it.indented(it.prefix(), it.body() + h(1fr) + it.page()),
    )
  )
}

// 4. Spaziatura ravvicinata per i sottolivelli (Livello 2+)
#show outline.entry.where(level: 2): set block(above: 0.55em)

// Spazio sotto il titolo "Contents" prima della prima voce
#show outline: it => {
  show heading: set block(below: 2em)
  it
}

#outline()

#pagebreak()

#include "capitoli/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate.typ"
#include "capitoli/02-statica-dei-fluidi-idrostatica.typ"
#include "capitoli/03-cinematica-dei-fluidi-e-bilancio-di-massa.typ"
#include "capitoli/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli.typ"
#include "capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ"
#include "capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ"
#include "capitoli/cap7.typ"
#include "capitoli/cap9.typ"
