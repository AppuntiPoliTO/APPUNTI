#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

= *Innesti*

== Innesti a denti e a frizione

=== Funzione, classificazione e requisiti di progetto

A differenza dei giunti, che richiedono l'arresto della macchina per collegare o scollegare gli alberi, gli *innesti* vengono azionati *in esercizio* per interrompere o ripristinare il flusso di potenza tra motore e utilizzatore. Il comando può essere *esterno* (manuale, meccanico, idraulico, pneumatico o elettromagnetico — quest'ultimo più rapido perché il segnale si propaga come corrente elettrica) oppure *autonomo* (al superamento di una coppia limite, di una velocità critica o all'inversione del moto).

Dal punto di vista del principio fisico di trasmissione della coppia, gli innesti si classificano in:
- *A contatto:* per *accoppiamento di forma* o azione meccanica positiva (innesti a denti o a dentini) oppure per *attrito* tra superfici solide (innesti a frizione piani, conici o a tamburo).
- *Senza contatto:* mediante *fenomeni elettromeccanici* (isteresi magnetica, correnti parassite, particelle magnetiche) oppure *attrito fluido* (giunti idraulici / fluidodinamici).

Il transitorio critico è la *sincronizzazione*, cioè l'uguagliamento delle velocità angolari tra albero motore e albero condotto:
- *Inserimento troppo rapido:* produce elevati gradienti di velocità con picchi di coppia e urti (colpi d'ariete) dannosi per la trasmissione e l'utenza.
- *Inserimento troppo lento:* ritarda la messa a regime e, negli innesti dissipativi, protrae lo strisciamento convertendo energia meccanica in calore, con deformazioni locali e degrado dei materiali.

#nota[
  *Funzioni secondarie e requisiti termici di progetto.* Oltre a durata, prontezza, gradualità d'inserimento e invarianza delle prestazioni nel tempo (controllo puntuale di usura e giochi), gli innesti possono regolare il flusso di energia, introdurre *elasticità o smorzamento* nella trasmissione oppure *dissipare energia* in calore. La dissipazione è particolarmente esasperata nei *freni*, che riprendono molte architetture degli innesti a frizione per convertire rapidamente energia cinetica in calore. Il progetto termico dipende quindi dal ciclo di lavoro: negli *inserimenti prolungati* (es. frenatura in discesa) occorre massimizzare la *trasmissione di calore verso l'ambiente*; negli *inserimenti saltuari* ad alta energia seguiti da fasi di raffreddamento (es. freni aeronautici) è prioritaria un'elevata *capacità termica* per contenere la temperatura di picco.
]

=== Innesto a denti

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'*innesto a denti* trasferisce la coppia tramite un *accoppiamento di forma* tra due flange frontali dotate di profili coniugati. Una leva agente su un collare spinge assialmente la flangia scorrevole fino a impegnare i fianchi dei denti, realizzando un collegamento rigido privo di slittamento a regime.    L'inserimento è ammesso solo a macchina ferma o a *moto lento*, così che i denti trovino la fase corretta senza urti distruttivi; le superfici inclinate agevolano l'imbocco. Durante il disinserimento sotto carico occorre vincere l'attrito generato dalla pressione sui fianchi: l'inclinazione del profilo può favorire oppure ostacolare l'apertura.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-4.20, 0.00), (-3.15, 0.00), stroke: 0.55pt)
  line((-3.02, 0.00), (-2.90, 0.00), stroke: 0.55pt)
  line((-2.77, 0.00), (-1.65, 0.00), stroke: 0.55pt)
  line((-1.52, 0.00), (-1.40, 0.00), stroke: 0.55pt)
  line((-1.27, 0.00), (-0.15, 0.00), stroke: 0.55pt)
  line((-0.02, 0.00), (0.10, 0.00), stroke: 0.55pt)
  line((0.23, 0.00), (1.35, 0.00), stroke: 0.55pt)
  line((1.48, 0.00), (1.60, 0.00), stroke: 0.55pt)
  line((1.73, 0.00), (2.85, 0.00), stroke: 0.55pt)
  line((2.98, 0.00), (3.10, 0.00), stroke: 0.55pt)
  line((3.23, 0.00), (4.70, 0.00), stroke: 0.55pt)

  line((1.72, -0.40), (1.72, 0.45), stroke: 0.55pt)
  line((1.72, 0.55), (1.72, 0.65), stroke: 0.55pt)
  line((1.72, 0.75), (1.72, 1.55), stroke: 0.55pt)
  line((1.72, 1.65), (1.72, 1.75), stroke: 0.55pt)
  line((1.72, 1.85), (1.72, 2.25), stroke: 0.55pt)

  line((-3.90, 0.60), (-3.00, 0.60), stroke: 1.05pt)
  line((-3.90, -0.60), (-3.00, -0.60), stroke: 1.05pt)
  bezier((-3.90, 0.60), (-3.90, 0.00), (-3.99, 0.42), (-3.99, 0.18), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.99, -0.18), (-3.99, -0.42), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.81, -0.18), (-3.81, -0.42), stroke: 0.85pt)
  line((-3.95, -0.14), (-3.85, -0.06), stroke: 0.45pt)
  line((-3.97, -0.26), (-3.83, -0.16), stroke: 0.45pt)
  line((-3.97, -0.38), (-3.83, -0.28), stroke: 0.45pt)
  line((-3.95, -0.50), (-3.85, -0.40), stroke: 0.45pt)

  line((-3.85, 0.52), (-3.05, 0.52), stroke: 0.45pt)
  line((-3.85, -0.52), (-3.05, -0.52), stroke: 0.45pt)
  line((-3.82, -0.42), (-3.05, -0.42), stroke: 0.45pt)

  line((-3.00, -1.00), (-3.00, 1.00), stroke: 1.05pt)
  arc((-2.88, 1.00), start: 98deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((-2.88, -1.00), start: 180deg, stop: 262deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((-2.90, 1.12), (-1.52, 1.32), stroke: 1.05pt)
  line((-2.90, -1.12), (-1.52, -1.32), stroke: 1.05pt)
  arc((-1.52, 1.42), start: 278deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)
  arc((-1.52, -1.42), start: 0deg, stop: 82deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)

  line((-2.85, -1.03), (-1.58, -1.22), stroke: 0.45pt)
  line((-2.85, -0.93), (-1.58, -1.10), stroke: 0.45pt)

  line((-2.70, 0.15), (-1.12, 0.15), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-2.70, -0.13), (-1.12, -0.13), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-2.70, 0.01), start: 90deg, stop: 270deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-1.12, 0.01), start: 270deg, stop: 450deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((-1.42, -1.95), (-1.42, 1.95), stroke: 1.05pt)
  arc((-1.27, 1.95), start: 90deg, stop: 180deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  arc((-1.27, -1.95), start: 180deg, stop: 270deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((-1.27, 2.10), (-0.20, 2.10), stroke: 1.05pt)
  line((-1.27, -2.10), (-0.20, -2.10), stroke: 1.05pt)

  line((-1.32, -1.58), (-0.82, -1.58), stroke: 0.45pt)

  line((-0.20, 2.10), (-0.20, 1.54), stroke: 1.05pt)
  bezier((-0.20, 1.82), (-0.80, 0.85), (-0.52, 1.66), (-0.78, 1.25), stroke: 1.05pt)
  bezier((-0.20, 1.54), (-0.80, 0.85), (-0.48, 1.42), (-0.72, 1.14), stroke: 1.05pt)
  line((-0.80, 0.85), (-0.80, 0.00), stroke: 1.05pt)
  line((-0.80, 0.00), (-0.20, 0.00), stroke: 1.05pt)

  bezier((-0.32, 1.43), (-0.20, 0.55), (-0.23, 1.18), (-0.20, 0.85), stroke: 0.9pt)
  line((-0.20, 0.55), (-0.20, 0.00), stroke: 0.9pt)
  line((-0.44, 1.32), (-0.28, 1.32), stroke: 0.5pt)
  line((-0.53, 1.22), (-0.26, 1.22), stroke: 0.5pt)
  line((-0.62, 1.10), (-0.24, 1.10), stroke: 0.5pt)
  line((-0.68, 0.98), (-0.23, 0.98), stroke: 0.5pt)
  line((-0.75, 0.85), (-0.22, 0.85), stroke: 0.5pt)

  line((-0.80, 0.60), (-0.45, 0.60), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.36, 0.50), stroke: 0.85pt)
  line((-0.36, 0.50), (-0.36, 0.00), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.45, 0.00), stroke: 0.75pt)
  line((-0.36, 0.42), (-0.20, 0.42), stroke: 0.5pt)
  line((-0.36, 0.32), (-0.20, 0.32), stroke: 0.5pt)
  line((-0.36, 0.22), (-0.20, 0.22), stroke: 0.5pt)
  line((-0.36, 0.12), (-0.20, 0.12), stroke: 0.5pt)

  line((-0.20, -2.10), (-0.20, -1.46), stroke: 1.05pt)
  line((-0.20, -1.46), (-0.40, -1.46), stroke: 1.05pt)
  line((-0.80, -2.10), (-0.80, -1.82), stroke: 1.05pt)
  bezier((-0.80, -1.82), (-0.20, -0.85), (-0.48, -1.68), (-0.22, -1.25), stroke: 1.05pt)
  line((-0.20, -0.85), (-0.20, 0.00), stroke: 1.05pt)

  line((-0.08, -0.60), (-0.08, 0.50), stroke: 0.85pt)
  line((-0.08, 0.50), (-0.01, 0.56), stroke: 0.85pt)
  line((-0.08, -0.60), (-0.01, -0.66), stroke: 0.85pt)
  line((-0.01, -0.75), (-0.01, 0.68), stroke: 0.9pt)
  line((-0.01, 0.68), (0.10, 0.68), stroke: 0.9pt)
  line((-0.01, -0.75), (0.70, -0.75), stroke: 1.05pt)
  line((0.02, -0.45), (0.68, -0.45), stroke: 0.5pt)
  line((0.02, -0.58), (0.68, -0.58), stroke: 0.5pt)

  line((0.10, 2.10), (1.20, 2.10), stroke: 1.05pt)
  arc((1.20, 1.95), start: 0deg, stop: 90deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((0.10, 2.10), (0.10, 1.46), stroke: 1.05pt)
  line((0.10, 1.46), (0.30, 1.46), stroke: 1.05pt)
  line((0.70, 2.10), (0.70, 1.82), stroke: 1.05pt)
  bezier((0.70, 1.82), (0.10, 0.85), (0.38, 1.68), (0.12, 1.25), stroke: 1.05pt)
  line((0.10, 0.85), (0.10, 0.00), stroke: 1.05pt)
  line((0.10, 0.00), (0.70, 0.00), stroke: 1.05pt)
  line((0.70, 0.00), (0.70, -0.75), stroke: 1.05pt)

  bezier((0.70, -0.75), (0.10, -1.52), (0.62, -1.12), (0.36, -1.38), stroke: 1.05pt)
  bezier((0.70, -0.75), (0.10, -1.82), (0.68, -1.30), (0.42, -1.68), stroke: 1.05pt)
  bezier((0.20, -0.75), (0.36, -1.35), (0.20, -1.02), (0.26, -1.22), stroke: 0.95pt)
  line((0.22, -0.86), (0.64, -0.86), stroke: 0.5pt)
  line((0.23, -0.96), (0.60, -0.96), stroke: 0.5pt)
  line((0.25, -1.08), (0.54, -1.08), stroke: 0.5pt)
  line((0.29, -1.20), (0.46, -1.20), stroke: 0.5pt)

  line((0.10, -1.52), (0.10, -2.10), stroke: 1.05pt)
  line((0.10, -2.10), (1.20, -2.10), stroke: 1.05pt)
  arc((1.20, -1.95), start: 270deg, stop: 360deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((1.35, -1.95), (1.35, 1.95), stroke: 1.05pt)

  line((0.25, -1.78), (1.26, -1.78), stroke: 0.45pt)
  line((0.18, -1.96), (1.26, -1.96), stroke: 0.45pt)

  line((1.35, 1.24), (1.42, 1.24), stroke: 0.9pt)
  line((1.35, -1.24), (1.42, -1.24), stroke: 0.9pt)
  line((2.02, 1.24), (2.08, 1.24), stroke: 0.9pt)
  line((2.02, -1.24), (2.08, -1.24), stroke: 0.9pt)

  line((1.42, -1.48), (1.42, 1.48), stroke: 1.05pt)
  line((2.02, -1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.42, -1.48), (2.02, -1.48), stroke: 1.05pt)
  line((1.42, 1.48), (1.48, 1.48), stroke: 1.05pt)
  line((1.96, 1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.46, -1.38), (1.98, -1.38), stroke: 0.45pt)

  circle((1.72, 0.00), radius: 0.18, stroke: 0.95pt)
  circle((1.72, 0.00), radius: 0.28, stroke: 1.05pt)

  line((1.53, 0.21), (1.44, 2.75), stroke: 1.05pt)
  line((1.91, 0.21), (2.00, 2.75), stroke: 1.05pt)
  bezier((1.44, 2.75), (1.72, 2.75), (1.53, 2.78), (1.63, 2.72), stroke: 1.05pt)
  bezier((1.72, 2.75), (2.00, 2.75), (1.81, 2.78), (1.91, 2.72), stroke: 1.05pt)

  rect((2.08, -1.52), (2.30, 1.52), stroke: 1.05pt)
  line((2.12, 1.42), (2.26, 1.42), stroke: 0.45pt)
  line((2.12, -1.36), (2.26, -1.36), stroke: 0.45pt)
  line((2.12, -1.44), (2.26, -1.44), stroke: 0.45pt)

  arc((2.38, 1.23), start: 180deg, stop: 262deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  arc((2.38, -1.23), start: 98deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  line((2.38, 1.15), (3.43, 0.98), stroke: 1.05pt)
  line((2.38, -1.15), (3.43, -0.98), stroke: 1.05pt)
  arc((3.43, 0.86), start: 0deg, stop: 82deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((3.43, -0.86), start: 278deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((3.55, -0.86), (3.55, 0.86), stroke: 1.05pt)

  line((2.42, -1.07), (3.40, -0.91), stroke: 0.45pt)
  line((2.42, -0.96), (3.40, -0.81), stroke: 0.45pt)

  line((0.10, 0.68), (1.42, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.68), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.10, 0.48), (1.42, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.48), (3.30, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, 0.48), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))

  line((0.70, -0.48), (1.42, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.48), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.70, -0.68), (1.42, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.68), (3.30, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, -0.68), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))

  line((3.55, 0.60), (4.42, 0.60), stroke: 1.05pt)
  line((3.55, -0.60), (4.42, -0.60), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.51, 0.42), (4.51, 0.18), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.33, 0.42), (4.33, 0.18), stroke: 0.85pt)
  bezier((4.42, 0.00), (4.42, -0.60), (4.51, -0.18), (4.51, -0.42), stroke: 1.05pt)
  line((4.37, 0.46), (4.47, 0.54), stroke: 0.45pt)
  line((4.35, 0.34), (4.49, 0.44), stroke: 0.45pt)
  line((4.35, 0.22), (4.49, 0.32), stroke: 0.45pt)
  line((4.37, 0.10), (4.47, 0.20), stroke: 0.45pt)

  line((3.60, 0.53), (4.36, 0.53), stroke: 0.45pt)
  line((3.60, -0.53), (4.40, -0.53), stroke: 0.45pt)
  line((3.60, -0.42), (4.40, -0.42), stroke: 0.45pt)

  circle((1.62, 2.18), radius: 0.04, fill: black, stroke: none)
  line((1.62, 2.18), (0.82, 2.78), stroke: 0.6pt)
  line((0.82, 2.78), (0.64, 2.78), stroke: 0.6pt)
  content((0.55, 2.78), text(size: 8.5pt, style: "italic")[leva], anchor: "east")

  circle((1.72, -1.08), radius: 0.04, fill: black, stroke: none)
  line((1.72, -1.08), (1.96, -2.02), stroke: 0.6pt)
  line((1.96, -2.02), (2.14, -2.02), stroke: 0.6pt)
  content((2.23, -2.02), text(size: 8.5pt, style: "italic")[collare], anchor: "west")
})

],
)



 
=== Innesti a frizione

Negli *innesti a frizione* la coppia viene trasmessa per *attrito* tra due o più superfici premute da una forza assiale $F$. Le geometrie principali impiegano superfici piane a *corona circolare*, superfici *troncoconiche* (dove l'effetto cuneo amplifica la pressione normale a parità di spinta assiale) oppure superfici cilindriche *a tamburo*.

#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0, 0), (14.4, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.8, -1.8), (1.8, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((12.6, -1.8), (12.6, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  circle((1.8, 0), radius: 1.5, stroke: 1pt)
  circle((1.8, 0), radius: 0.88, stroke: 1pt)
  circle((1.8, 0), radius: 0.22, stroke: 0.9pt)
  rect((1.51, -0.06), (1.59, 0.06), fill: white, stroke: 0.8pt)
  arc((1.8, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  line((4.8, 0.22), (4.8, 0.6), (5.15, 0.6), (5.15, 1.5), (5.55, 1.5), (5.55, 0.22), close: true, stroke: 1pt)
  line((5.15, 1.35), (5.3, 1.5), stroke: 0.5pt)
  line((5.15, 1.15), (5.5, 1.5), stroke: 0.5pt)
  line((5.15, 0.95), (5.55, 1.35), stroke: 0.5pt)
  line((5.15, 0.75), (5.55, 1.15), stroke: 0.5pt)
  line((4.8, 0.4), (5.0, 0.6), stroke: 0.5pt)
  line((4.8, 0.22), (5.55, 0.97), stroke: 0.5pt)
  line((5.0, 0.22), (5.55, 0.77), stroke: 0.5pt)
  line((5.2, 0.22), (5.55, 0.57), stroke: 0.5pt)
  line((5.4, 0.22), (5.55, 0.37), stroke: 0.5pt)

  line((4.8, -0.22), (4.8, -0.6), (5.15, -0.6), (5.15, -1.5), (5.55, -1.5), (5.55, -0.22), close: true, stroke: 1pt)
  line((4.8, -0.42), (4.98, -0.22), stroke: 0.5pt)
  line((4.82, -0.6), (5.18, -0.22), stroke: 0.5pt)
  line((5.02, -0.6), (5.38, -0.22), stroke: 0.5pt)
  line((5.15, -0.67), (5.55, -0.27), stroke: 0.5pt)
  line((5.15, -0.87), (5.55, -0.47), stroke: 0.5pt)
  line((5.15, -1.07), (5.55, -0.67), stroke: 0.5pt)
  line((5.15, -1.27), (5.55, -0.87), stroke: 0.5pt)
  line((5.15, -1.47), (5.55, -1.07), stroke: 0.5pt)
  line((5.32, -1.5), (5.55, -1.27), stroke: 0.5pt)

  line((5.58, 0.88), (5.58, 1.5), (6.0, 1.5), (6.0, 0.6), (6.35, 0.6), (6.35, 0.22), (5.65, 0.22), (5.65, 0.88), close: true, stroke: 1pt)
  line((5.8, 1.5), (6.0, 1.3), stroke: 0.5pt)
  line((5.6, 1.5), (6.0, 1.1), stroke: 0.5pt)
  line((5.58, 1.32), (6.0, 0.9), stroke: 0.5pt)
  line((6.1, 0.6), (6.35, 0.35), stroke: 0.5pt)
  line((5.58, 1.12), (6.3, 0.4), stroke: 0.5pt)
  line((5.58, 0.92), (6.28, 0.22), stroke: 0.5pt)
  line((5.65, 0.65), (6.08, 0.22), stroke: 0.5pt)
  line((5.65, 0.45), (5.88, 0.22), stroke: 0.5pt)

  line((5.58, -0.88), (5.58, -1.5), (6.0, -1.5), (6.0, -0.6), (6.35, -0.6), (6.35, -0.22), (5.65, -0.22), (5.65, -0.88), close: true, stroke: 1pt)
  line((6.15, -0.22), (6.35, -0.42), stroke: 0.5pt)
  line((5.95, -0.22), (6.33, -0.6), stroke: 0.5pt)
  line((5.75, -0.22), (6.13, -0.6), stroke: 0.5pt)
  line((5.65, -0.32), (6.0, -0.67), stroke: 0.5pt)
  line((5.65, -0.52), (6.0, -0.87), stroke: 0.5pt)
  line((5.65, -0.72), (6.0, -1.07), stroke: 0.5pt)
  line((5.58, -0.85), (6.0, -1.27), stroke: 0.5pt)
  line((5.58, -1.05), (6.0, -1.47), stroke: 0.5pt)
  line((5.58, -1.25), (5.83, -1.5), stroke: 0.5pt)
  line((5.58, -1.45), (5.63, -1.5), stroke: 0.5pt)

  line((5.55, 0.88), (5.65, 0.88), stroke: 0.8pt)
  line((5.55, -0.88), (5.65, -0.88), stroke: 0.8pt)
  line((5.6, -0.88), (5.6, 0.88), stroke: 0.7pt)

  line((5.565, 0.88), (5.565, 1.5), stroke: (paint: red, thickness: 2.2pt))
  line((5.565, -1.5), (5.565, -0.88), stroke: (paint: red, thickness: 2.2pt))

  line((4.45, 0.22), (4.8, 0.22), stroke: 0.9pt)
  line((4.45, -0.22), (4.8, -0.22), stroke: 0.9pt)
  line((5.55, -0.22), (5.55, 0.22), stroke: 0.9pt)
  line((5.65, 0.22), (6.7, 0.22), stroke: 0.9pt)
  line((5.65, -0.22), (6.7, -0.22), stroke: 0.9pt)
  line((5.65, -0.22), (5.65, 0.22), stroke: 0.9pt)

  rect((4.85, -0.04), (5.38, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((5.75, -0.04), (6.52, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((6.85, 0.44), (6.42, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((6.85, -0.44), (6.42, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  line((7.7, 0.22), (7.7, 0.6), (8.05, 0.6), (8.05, 1.5), (8.85, 1.5), (8.85, 1.38), (8.25, 1.29), (8.25, 0.92), (8.42, 0.92), (8.42, 0.22), close: true, stroke: 1pt)
  line((8.05, 1.35), (8.2, 1.5), stroke: 0.5pt)
  line((8.05, 1.15), (8.4, 1.5), stroke: 0.5pt)
  line((8.42, 1.32), (8.6, 1.5), stroke: 0.5pt)
  line((8.62, 1.35), (8.77, 1.5), stroke: 0.5pt)
  line((8.05, 0.95), (8.25, 1.15), stroke: 0.5pt)
  line((8.05, 0.75), (8.25, 0.95), stroke: 0.5pt)
  line((7.7, 0.4), (7.9, 0.6), stroke: 0.5pt)
  line((7.7, 0.22), (8.4, 0.92), stroke: 0.5pt)
  line((7.9, 0.22), (8.42, 0.74), stroke: 0.5pt)
  line((8.1, 0.22), (8.42, 0.54), stroke: 0.5pt)
  line((8.3, 0.22), (8.42, 0.34), stroke: 0.5pt)

  line((7.7, -0.22), (7.7, -0.6), (8.05, -0.6), (8.05, -1.5), (8.85, -1.5), (8.85, -1.38), (8.25, -1.29), (8.25, -0.92), (8.42, -0.92), (8.42, -0.22), close: true, stroke: 1pt)
  line((7.7, -0.42), (7.88, -0.22), stroke: 0.5pt)
  line((7.72, -0.6), (8.08, -0.22), stroke: 0.5pt)
  line((7.92, -0.6), (8.28, -0.22), stroke: 0.5pt)
  line((8.05, -0.67), (8.42, -0.3), stroke: 0.5pt)
  line((8.05, -0.87), (8.42, -0.5), stroke: 0.5pt)
  line((8.05, -1.07), (8.42, -0.7), stroke: 0.5pt)
  line((8.05, -1.27), (8.25, -1.07), stroke: 0.5pt)
  line((8.38, -0.92), (8.42, -0.88), stroke: 0.5pt)
  line((8.05, -1.47), (8.25, -1.27), stroke: 0.5pt)
  line((8.22, -1.5), (8.4, -1.32), stroke: 0.5pt)
  line((8.42, -1.5), (8.58, -1.34), stroke: 0.5pt)
  line((8.62, -1.5), (8.75, -1.37), stroke: 0.5pt)

  line((8.28, 1.08), (8.28, 1.26), (8.85, 1.34), (8.85, 0.6), (9.25, 0.6), (9.25, 0.22), (8.55, 0.22), (8.55, 0.6), (8.7, 0.6), (8.7, 1.08), close: true, stroke: 1pt)
  line((8.65, 1.31), (8.85, 1.11), stroke: 0.5pt)
  line((8.42, 1.28), (8.85, 0.85), stroke: 0.5pt)
  line((8.28, 1.22), (8.42, 1.08), stroke: 0.5pt)
  line((8.7, 1.0), (9.1, 0.6), stroke: 0.5pt)
  line((8.7, 0.8), (9.25, 0.25), stroke: 0.5pt)
  line((8.7, 0.6), (9.08, 0.22), stroke: 0.5pt)
  line((8.55, 0.55), (8.88, 0.22), stroke: 0.5pt)
  line((8.55, 0.35), (8.68, 0.22), stroke: 0.5pt)

  line((8.28, -1.08), (8.28, -1.26), (8.85, -1.34), (8.85, -0.6), (9.25, -0.6), (9.25, -0.22), (8.55, -0.22), (8.55, -0.6), (8.7, -0.6), (8.7, -1.08), close: true, stroke: 1pt)
  line((9.05, -0.22), (9.25, -0.42), stroke: 0.5pt)
  line((8.85, -0.22), (9.23, -0.6), stroke: 0.5pt)
  line((8.65, -0.22), (9.03, -0.6), stroke: 0.5pt)
  line((8.55, -0.32), (8.85, -0.62), stroke: 0.5pt)
  line((8.55, -0.52), (8.85, -0.82), stroke: 0.5pt)
  line((8.7, -0.87), (8.85, -1.02), stroke: 0.5pt)
  line((8.7, -1.07), (8.85, -1.22), stroke: 0.5pt)
  line((8.52, -1.08), (8.76, -1.32), stroke: 0.5pt)
  line((8.32, -1.08), (8.53, -1.29), stroke: 0.5pt)

  line((8.25, -1.29), (8.25, 1.29), stroke: 0.7pt)
  line((8.28, -1.08), (8.28, 1.08), stroke: 0.7pt)
  line((8.42, -0.92), (8.42, 0.92), stroke: 0.7pt)
  line((8.55, -0.6), (8.55, 0.6), stroke: 0.7pt)
  line((8.85, -1.34), (8.85, -1.38), stroke: 0.8pt)
  line((8.85, 1.34), (8.85, 1.38), stroke: 0.8pt)

  line((8.26, 1.275), (8.85, 1.36), stroke: (paint: red, thickness: 2.2pt))
  line((8.26, -1.275), (8.85, -1.36), stroke: (paint: red, thickness: 2.2pt))

  line((7.35, 0.22), (7.7, 0.22), stroke: 0.9pt)
  line((7.35, -0.22), (7.7, -0.22), stroke: 0.9pt)
  line((8.55, 0.22), (9.6, 0.22), stroke: 0.9pt)
  line((8.55, -0.22), (9.6, -0.22), stroke: 0.9pt)

  rect((7.75, -0.04), (8.28, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((8.65, -0.04), (9.42, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((9.75, 0.44), (9.32, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((9.75, -0.44), (9.32, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  // --- Vista a destra: ganasce centrifughe ---
  circle((12.6, 0), radius: 1.5, stroke: 1pt)
  circle((12.6, 0), radius: 1.4, stroke: 0.9pt)
  circle((12.6, 0), radius: 0.22, stroke: 0.9pt)
  rect((12.33, -0.05), (12.40, 0.05), fill: white, stroke: 0.8pt)
  arc((12.6, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  // Mozzo a stella (6 guide radiali)
  arc((12.6, 0), start: 38.4deg, stop: 81.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 98.4deg, stop: 141.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 158.4deg, stop: 201.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 218.4deg, stop: 261.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 278.4deg, stop: 321.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 338.4deg, stop: 381.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)

  // Pareti delle 6 guide radiali (dalla radice r=0.62 fino all'anello esterno r=1.4)
  line((12.50, 0.612), (12.50, 1.396), stroke: 0.9pt)
  line((12.70, 0.612), (12.70, 1.396), stroke: 0.9pt)

  line((12.50, -0.612), (12.50, -1.396), stroke: 0.9pt)
  line((12.70, -0.612), (12.70, -1.396), stroke: 0.9pt)

  line((13.08, 0.393), (13.759, 0.785), stroke: 0.9pt)
  line((13.18, 0.219), (13.859, 0.611), stroke: 0.9pt)

  line((12.12, 0.393), (11.441, 0.785), stroke: 0.9pt)
  line((12.02, 0.219), (11.341, 0.611), stroke: 0.9pt)

  line((12.12, -0.393), (11.441, -0.785), stroke: 0.9pt)
  line((12.02, -0.219), (11.341, -0.611), stroke: 0.9pt)

  line((13.08, -0.393), (13.759, -0.785), stroke: 0.9pt)
  line((13.18, -0.219), (13.859, -0.611), stroke: 0.9pt)

  // Chiusure delle estremità delle 6 guide (a r=1.28)
  line((12.50, 1.28), (12.70, 1.28), stroke: 0.8pt)
  line((12.50, -1.28), (12.70, -1.28), stroke: 0.8pt)
  line((13.658, 0.727), (13.758, 0.553), stroke: 0.8pt)
  line((11.542, 0.727), (11.442, 0.553), stroke: 0.8pt)
  line((11.542, -0.727), (11.442, -0.553), stroke: 0.8pt)
  line((13.658, -0.727), (13.758, -0.553), stroke: 0.8pt)

  // 6 settori / spicchi espansibili (archi interni r=0.74 e fianchi tra guide)
  arc((12.6, 0), start: 37.8deg, stop: 82.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, 0.733), (12.70, 1.396), stroke: 0.9pt)
  line((13.185, 0.453), (13.759, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 97.8deg, stop: 142.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.50, 0.733), (12.50, 1.396), stroke: 0.9pt)
  line((12.015, 0.453), (11.441, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 157.8deg, stop: 202.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((11.915, 0.279), (11.341, 0.611), stroke: 0.9pt)
  line((11.915, -0.279), (11.341, -0.611), stroke: 0.9pt)

  arc((12.6, 0), start: 217.8deg, stop: 262.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.015, -0.453), (11.441, -0.785), stroke: 0.9pt)
  line((12.50, -0.733), (12.50, -1.396), stroke: 0.9pt)

  arc((12.6, 0), start: 277.8deg, stop: 322.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, -0.733), (12.70, -1.396), stroke: 0.9pt)
  line((13.185, -0.453), (13.759, -0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 337.8deg, stop: 382.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((13.285, -0.279), (13.859, -0.611), stroke: 0.9pt)
  line((13.285, 0.279), (13.859, 0.611), stroke: 0.9pt)

  // Arco blu d'attrito sullo spicchio superiore sinistro (da 94° a 146°)
  arc((12.6, 0), start: 94.1deg, stop: 145.9deg, radius: 1.4, anchor: "origin", stroke: (paint: blue.lighten(20%), thickness: 2.2pt))

  // Freccia curva di rotazione attorno al mozzo
  arc((12.6, 0), start: 18deg, stop: 245deg, radius: 0.42, anchor: "origin", stroke: 0.75pt)
  line((12.999, 0.130), (12.82, 0.30), stroke: 0.75pt)
  line((12.999, 0.130), (12.92, 0.38), stroke: 0.75pt)

  // 6 frecce centrifughe al centro dei 6 spicchi (0°, 60°, 120°, 180°, 240°, 300°)
  line((13.48, 0), (13.88, 0), stroke: 0.8pt)
  line((13.68, 0.08), (13.88, 0), (13.68, -0.08), stroke: 0.8pt)

  line((11.72, 0), (11.32, 0), stroke: 0.8pt)
  line((11.52, 0.08), (11.32, 0), (11.52, -0.08), stroke: 0.8pt)

  line((13.04, 0.762), (13.24, 1.109), stroke: 0.8pt)
  line((13.071, 0.975), (13.24, 1.109), (13.209, 0.895), stroke: 0.8pt)

  line((12.16, 0.762), (11.96, 1.109), stroke: 0.8pt)
  line((11.991, 0.895), (11.96, 1.109), (12.129, 0.975), stroke: 0.8pt)

  line((12.16, -0.762), (11.96, -1.109), stroke: 0.8pt)
  line((12.129, -0.975), (11.96, -1.109), (11.991, -0.895), stroke: 0.8pt)

  line((13.04, -0.762), (13.24, -1.109), stroke: 0.8pt)
  line((13.209, -0.895), (13.24, -1.109), (13.071, -0.975), stroke: 0.8pt)
})


La spinta $F$ può essere generata da leve meccaniche, attuatori idraulici o elettromagnetici, oppure da un organo elastico opportunamente registrato antagonista al comando di disinnesto. Nelle frizioni automobilistiche si impiega tipicamente una *molla a diaframma* — derivata dalla molla a tazza troncoconica e intagliata radialmente in lamine trapezoidali per aumentarne la flessibilità — vincolata su una circonferenza di fulcro: premendone la parte centrale tramite il comando di disinnesto (es. circuito idraulico del pedale), il bordo esterno arretra allontanando lo spingidisco e interrompendo la trasmissione; al rilascio la molla riapplica il precarico di chiusura.

I valori del *coefficiente d'attrito* (sia statico sia cinetico) dipendono da cinque fattori principali: *materiali* accoppiati, *natura dell'ambiente* (umidità, contaminazione), *pressione di contatto*, *velocità di slittamento* e *temperatura*. Il ciclo operativo attraversa tre fasi distinte:
1. *Inserimento:* le superfici slittano reciprocamente, si riscaldano e si usurano.
2. *Sincronismo:* cessato lo strisciamento, l'innesto si comporta come un *giunto torsionalmente più o meno rigido*.
3. *Disinserimento:* si verifica un nuovo slittamento; in posizione aperta occorre limitare o *azzerare la coppia d'attrito parassita a vuoto*, che altrimenti provoca perdite di potenza, riscaldamento e usura continua.

Per un funzionamento corretto sono essenziali:
- *Centratura assiale e rigidezza dei supporti*, per garantire una pressione di contatto uniforme senza rotazioni relative delle superfici.
- *Solchi radiali tra le guarnizioni*, per evacuare i detriti d'usura e le sostanze estranee.
- *Superfici di contatto anulari* con rapporto tra raggio esterno ed interno scelto in modo da massimizzare l'*efficacia* dell'innesto, ossia il rapporto tra coppia d'attrito sviluppata e forza assiale $F$ di accostamento.

==== Innesto monodisco

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella configurazione *monodisco*, la flangia motrice (volano) $A$ e lo *spingidisco* $B$ serrano il disco condotto $D$, scorrevole assialmente sul mozzo scanalato e rivestito su entrambe le facce con guarnizioni ad alto attrito. Il pacchetto è racchiuso in una *campana* di guida e ventilazione; le superfici attive di attrito sono *due* ($A$–$D$ e $B$–$D$).
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // ==================== VISTA FRONTALE (SINISTRA) ====================
  // Sfondo campana e mozzo sezionati
  circle((0, 0), radius: 2.40, fill: gray.transparentize(88%), stroke: none)
  circle((0, 0), radius: 2.20, fill: white, stroke: none)
  circle((0, 0), radius: 0.65, fill: gray.transparentize(86%), stroke: none)

  // Tratteggio sezione campana esterna (anello R = 2.20 .. 2.40)
  line((-2.36, 0.42), (-2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, 0.82), (-2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, 1.20), (-1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, 1.54), (-1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, 1.84), (-1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, 2.08), (-1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, 2.25), (-0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, 2.36), (-0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, 2.40), (0.00, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((0.42, 2.36), (0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.82, 2.25), (0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((1.20, 2.08), (1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((1.54, 1.84), (1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.84, 1.54), (1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((2.08, 1.20), (1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((2.25, 0.82), (2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.36, 0.42), (2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.40, 0.00), (2.20, 0.00), stroke: 0.45pt + gray.darken(45%))
  line((2.36, -0.42), (2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.25, -0.82), (2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.08, -1.20), (1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((1.84, -1.54), (1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((1.54, -1.84), (1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.20, -2.08), (1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((0.82, -2.25), (0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((0.42, -2.36), (0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, -2.40), (0.00, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, -2.36), (-0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, -2.25), (-0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, -2.08), (-1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, -1.84), (-1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, -1.54), (-1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, -1.20), (-1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, -0.82), (-2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.36, -0.42), (-2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.40, 0.00), (-2.20, 0.00), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio mozzo centrale (R = 0.28 .. 0.65, inclinato a 135 gradi)
  line((-0.25, 0.60), (-0.60, 0.25), stroke: 0.45pt + gray.darken(45%))
  line((0.02, 0.65), (-0.65, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.28, 0.58), (-0.02, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((-0.28, 0.02), (-0.58, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((0.46, 0.46), (0.18, 0.18), stroke: 0.45pt + gray.darken(45%))
  line((-0.18, -0.18), (-0.46, -0.46), stroke: 0.45pt + gray.darken(45%))
  line((0.58, 0.28), (0.28, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.02, -0.28), (-0.28, -0.58), stroke: 0.45pt + gray.darken(45%))
  line((0.65, 0.02), (-0.02, -0.65), stroke: 0.45pt + gray.darken(45%))
  line((0.60, -0.25), (0.25, -0.60), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio albero interno (R = 0.28, inclinato a 45 gradi)
  line((-0.20, -0.20), (0.20, 0.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.26, -0.08), (0.08, 0.26), stroke: 0.45pt + gray.darken(45%))
  line((-0.08, -0.26), (0.26, 0.08), stroke: 0.45pt + gray.darken(45%))

  // Circonferenze vista frontale
  circle((0, 0), radius: 2.40, stroke: 1pt)
  circle((0, 0), radius: 2.20, stroke: 1pt)
  circle((0, 0), radius: 2.13, stroke: 0.65pt)
  circle((0, 0), radius: 1.35, stroke: 0.85pt)
  circle((0, 0), radius: 0.65, stroke: 1pt)
  circle((0, 0), radius: 0.28, stroke: 1pt)

  // Linguetta vista frontale
  rect((-0.34, -0.06), (-0.23, 0.06), fill: white, stroke: 0.85pt)


  // ==================== VISTA SEZIONATA (DESTRA) ====================
  // Riempimenti di fondo per i corpi sezionati
  // Campana superiore e inferiore
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, 1.35), (5.45, 1.65), fill: gray.transparentize(86%), stroke: none)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, -1.65), (5.45, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Corpo A (sopra e sotto)
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, fill: gray.transparentize(88%), stroke: none)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, fill: gray.transparentize(88%), stroke: none)

  // Spingidisco B (sopra e sotto)
  rect((4.58, 1.35), (4.95, 2.15), fill: gray.transparentize(86%), stroke: none)
  rect((4.58, -2.15), (4.95, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Mozzo e disco D (con guarnizioni d'attrito)
  rect((4.25, 0.28), (4.63, 0.65), fill: gray.transparentize(86%), stroke: none)
  rect((4.25, -0.65), (4.63, -0.28), fill: gray.transparentize(86%), stroke: none)
  rect((4.40, 0.65), (4.48, 2.13), fill: gray.transparentize(75%), stroke: none)
  rect((4.40, -2.13), (4.48, -0.65), fill: gray.transparentize(75%), stroke: none)
  rect((4.30, 1.35), (4.40, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, 1.35), (4.58, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.30, -2.13), (4.40, -1.35), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, -2.13), (4.58, -1.35), fill: gray.transparentize(65%), stroke: none)

  // Tratteggio Corpo A superiore (inclinato a 135 gradi: dx = -dy)
  line((4.05, 2.20), (4.30, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((3.80, 2.20), (4.30, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 2.05), (4.30, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.80), (4.15, 1.35), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.55), (4.08, 1.17), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.30), (4.08, 0.92), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.05), (4.08, 0.67), stroke: 0.45pt + gray.darken(45%))
  line((3.65, 0.85), (4.08, 0.42), stroke: 0.45pt + gray.darken(45%))
  line((3.40, 0.85), (3.97, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.75), (3.72, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.50), (3.47, 0.28), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Corpo A inferiore (inclinato a 135 gradi: dx = -dy)
  line((3.80, -0.28), (4.08, -0.56), stroke: 0.45pt + gray.darken(45%))
  line((3.55, -0.28), (4.08, -0.81), stroke: 0.45pt + gray.darken(45%))
  line((3.30, -0.28), (4.08, -1.06), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.48), (4.08, -1.31), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.73), (3.37, -0.85), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -0.93), (4.30, -1.53), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.18), (4.30, -1.78), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.43), (4.30, -2.03), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.68), (4.22, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.93), (3.97, -2.20), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Campana superiore e inferiore (inclinato a 45 gradi: dx = dy)
  line((3.70, 2.20), (3.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((3.95, 2.20), (4.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.20, 2.20), (4.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.45, 2.20), (4.65, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.70, 2.20), (4.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.95, 2.20), (5.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.20, 2.20), (5.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 2.00), (5.45, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 1.45), (5.45, 1.65), stroke: 0.45pt + gray.darken(45%))
  line((5.30, 1.35), (5.45, 1.50), stroke: 0.45pt + gray.darken(45%))

  line((3.70, -2.40), (3.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.95, -2.40), (4.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.20, -2.40), (4.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.45, -2.40), (4.65, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.70, -2.40), (4.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.95, -2.40), (5.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.20, -2.40), (5.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -2.15), (5.45, -1.95), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -1.65), (5.45, -1.45), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Spingidisco B (sopra e sotto, inclinato a 135 gradi: dx = -dy)
  line((4.75, 2.15), (4.95, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 2.07), (4.95, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.82), (4.95, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.57), (4.80, 1.35), stroke: 0.45pt + gray.darken(45%))

  line((4.75, -1.35), (4.95, -1.55), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.43), (4.95, -1.80), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.68), (4.95, -2.05), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.93), (4.80, -2.15), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Mozzo D (sopra e sotto, inclinato a 45 gradi: dx = dy)
  line((4.25, 0.45), (4.45, 0.65), stroke: 0.45pt + gray.darken(45%))
  line((4.28, 0.28), (4.63, 0.63), stroke: 0.45pt + gray.darken(45%))
  line((4.48, 0.28), (4.63, 0.43), stroke: 0.45pt + gray.darken(45%))

  line((4.25, -0.47), (4.44, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((4.28, -0.65), (4.63, -0.30), stroke: 0.45pt + gray.darken(45%))
  line((4.48, -0.65), (4.63, -0.50), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio guarnizioni d'attrito
  line((4.30, 1.45), (4.40, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.65), (4.40, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.85), (4.40, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 2.03), (4.40, 2.13), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.45), (4.58, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.65), (4.58, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.85), (4.58, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 2.03), (4.58, 2.13), stroke: 0.45pt + gray.darken(55%))

  line((4.30, -2.03), (4.40, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.85), (4.40, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.65), (4.40, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.45), (4.40, -1.35), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -2.03), (4.58, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.85), (4.58, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.65), (4.58, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.45), (4.58, -1.35), stroke: 0.45pt + gray.darken(55%))

  // ==================== CONTORNI PRINCIPALI VISTA DESTRA ====================
  // Albero sinistro
  line((2.88, 0.28), (4.14, 0.28), (4.14, -0.28), (2.88, -0.28), stroke: 1pt)
  bezier((2.88, 0.28), (2.88, 0.00), (2.82, 0.18), (2.94, 0.10), stroke: 0.85pt)
  bezier((2.88, 0.00), (2.88, -0.28), (2.82, -0.10), (2.94, -0.18), stroke: 0.85pt)
  // Cava linguetta albero sinistro
  line((3.35, 0.05), (3.92, 0.05), stroke: 0.8pt)
  line((3.35, -0.05), (3.92, -0.05), stroke: 0.8pt)
  arc((3.35, 0.00), start: 90deg, stop: 270deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)
  arc((3.92, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Albero destro
  line((5.55, 0.28), (4.20, 0.28), (4.20, -0.28), (5.55, -0.28), stroke: 1pt)
  bezier((5.55, 0.28), (5.55, 0.00), (5.61, 0.18), (5.49, 0.10), stroke: 0.85pt)
  bezier((5.55, 0.00), (5.55, -0.28), (5.61, -0.10), (5.49, -0.18), stroke: 0.85pt)
  // Cava linguetta albero destro
  line((4.20, 0.05), (4.98, 0.05), stroke: 0.8pt)
  line((4.20, -0.05), (4.98, -0.05), stroke: 0.8pt)
  arc((4.98, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Contorno Corpo A
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, stroke: 1pt)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, stroke: 1pt)
  line((4.08, 0.28), (4.08, -0.28), stroke: 0.8pt)

  // Contorno Campana
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, stroke: 1pt)
  rect((5.25, 1.35), (5.45, 1.65), stroke: 1pt)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, stroke: 1pt)
  rect((5.25, -1.65), (5.45, -1.35), stroke: 1pt)
  // Spigoli interni campana in vista
  line((5.25, 1.35), (5.25, 0.28), stroke: 0.8pt)
  line((5.45, 1.35), (5.45, 0.28), stroke: 0.8pt)
  line((5.25, -1.35), (5.25, -0.28), stroke: 0.8pt)
  line((5.45, -1.35), (5.45, -0.28), stroke: 0.8pt)

  // Contorno Disco e Mozzo D
  rect((4.25, 0.28), (4.63, 0.65), stroke: 1pt)
  rect((4.25, -0.65), (4.63, -0.28), stroke: 1pt)
  rect((4.40, 0.65), (4.48, 2.13), stroke: 0.9pt)
  rect((4.40, -2.13), (4.48, -0.65), stroke: 0.9pt)
  rect((4.30, 1.35), (4.40, 2.13), stroke: 0.9pt)
  rect((4.48, 1.35), (4.58, 2.13), stroke: 0.9pt)
  rect((4.30, -2.13), (4.40, -1.35), stroke: 0.9pt)
  rect((4.48, -2.13), (4.58, -1.35), stroke: 0.9pt)
  line((4.30, 1.35), (4.30, -1.35), stroke: 0.75pt)

  // Contorno Spingidisco B e perni di guida
  rect((4.58, 1.35), (4.95, 2.15), stroke: 1pt)
  rect((4.58, -2.15), (4.95, -1.35), stroke: 1pt)
  line((4.95, 1.35), (4.95, 0.28), stroke: 0.8pt)
  line((4.95, -1.35), (4.95, -0.28), stroke: 0.8pt)
  // Perni guida
  rect((4.95, 1.65), (5.60, 1.88), fill: white, stroke: 0.9pt)
  rect((4.95, -1.88), (5.60, -1.65), fill: white, stroke: 0.9pt)

  // Frecce forza molle spingidisco
  line((5.25, 2.03), (4.97, 2.03), mark: (end: ">", fill: black), stroke: 1pt)
  line((5.25, 1.48), (4.97, 1.48), mark: (end: ">", fill: black), stroke: 1pt)
  line((5.25, -1.48), (4.97, -1.48), mark: (end: ">", fill: black), stroke: 1pt)
  line((5.25, -2.03), (4.97, -2.03), mark: (end: ">", fill: black), stroke: 1pt)

  // ==================== ASSI DI SIMMETRIA ====================
  // Asse orizzontale principale
  line((-2.70, 0), (5.95, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale vista frontale
  line((0, -2.75), (0, 2.95), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale mediano disco D
  line((4.44, -2.75), (4.44, 2.75), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Assi perni spingidisco
  line((4.80, 1.765), (5.75, 1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.80, -1.765), (5.75, -1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // ==================== ETICHETTE E RICHIAMI ====================
  // Etichette componenti principali con fondino per massima leggibilità
  rect((3.84, 1.62), (4.16, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.00, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*A*])

  rect((4.61, 1.62), (4.92, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.765, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*B*])

  rect((4.28, 0.31), (4.60, 0.62), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.44, 0.465), text(size: 11.5pt, fill: rgb("#e60000"))[*D*])

  // Richiamo "campana"
  line((4.95, 2.32), (6.10, 2.68), stroke: 0.6pt)
  content((6.18, 2.70), text(size: 10pt)[_campana_], anchor: "west")

  // Richiamo "spingidisco"
  line((4.82, -1.55), (6.00, -2.35), stroke: 0.6pt)
  content((6.08, -2.38), text(size: 10pt)[_spingidisco_], anchor: "west")
})
],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il disco presenta una modesta *deformazione elastica fuori dal piano*: all'avvicinamento dello spingidisco l'area di contatto cresce progressivamente rendendo l'inserimento graduale, mentre al rilascio il ritorno elastico favorisce il distacco netto. L'ampia superficie esterna rispetto al volume agevola lo smaltimento termico verso l'ambiente.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-05.typ", max-h: 3.3cm)],
)

#v(0.5em)

Per assorbire le brusche variazioni di coppia e filtrare le *vibrazioni torsionali*, il disco è collegato all'albero tramite un *parastrappi* (fino alla soluzione a *doppio volano*). Le molle elicoidali circonferenziali — spesso abbinate a uno smorzatore ad attrito — rendono l'innesto simile a un *giunto elastico torsionalmente cedevole*. Nel doppio volano la massa secondaria agisce da *smorzatore dinamico*: in analogia al sistema traslazionale a due masse collegate da molla e smorzatore, la massa secondaria oscilla in *controfase* rispetto a quella principale, opponendo una forza inerziale che sposta la frequenza critica e sdoppia la risonanza principale in due picchi laterali di ampiezza fortemente ridotta.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-06.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi su disco frizione])],
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-07.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi in un doppio volano])]
)

#v(0.4em)
#fig-safe(include "../../figs/innesti/ecm-c13-p1-smorzatore.typ", max-h: 3.9cm, caption: text(size: 8.5pt, fill: luma(80))[Principio dello smorzatore dinamico (analogia traslazionale → doppio volano torsionale).])

==== Innesto multidisco

Per trasmettere coppie elevate a parità di ingombro senza accrescere eccessivamente il diametro del disco (che diventerebbe ingombrante e flessibile), si affiancano più superfici in un *pacco dischi* (in genere non oltre 12 dischi). I dischi condotti (rivestiti in fibra di carbonio, bronzo sinterizzato o grafite) sono montati su un *mozzo scanalato scorrevole sotto carico, centrato sui fianchi*, alternati a dischi conduttori in acciaio vincolati alla campana esterna. In ambito motociclistico il pacco è tipicamente serrato da molle elicoidali agenti su una piastra e aperto da un'asta spingidisco contrapposta.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Alternando dischi piani e dischi predeformati a *onda sinusoidale* si migliorano gradualità d'innesto e distacco a vuoto. La compattezza riduce però lo smaltimento termico verso l'esterno causando *surriscaldamento locale* nei tipi a secco; il limite si supera nei modelli a immersione o a circolazione d'olio. L'attuazione può avvenire con comandi manuali, pneumatici, idraulici oppure con *elettromagnete* in chiusura e molle di richiamo in apertura.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-09.typ")],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel *comando meccanico a leva* (sezioni $A$–$A$ e $B$–$B$), una forcella esterna impegna la gola di una slitta facendola scorrere assialmente lungo l'albero. L'estremità di una leva fulcrata risale il profilo curvilineo raccordato della slitta, ruotando attorno al perno e premendo con il proprio piede sullo spingidisco fino a serrare il pacco dischi; arretrando la slitta, la leva rientra nella sede liberando i dischi.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-10.typ")],
)
