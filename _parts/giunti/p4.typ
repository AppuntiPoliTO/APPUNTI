#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag
#set page(margin: 1.5cm)
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)

== Giunti articolati

I *giunti articolati* collegano due alberi tramite un *cinematismo* di *componenti rigidi* (non elastici) accoppiati cinematicamente tra loro, consentendo spostamenti *paralleli* (trasversali), *angolari*, *assiali* o *combinati* di ampia entità anche durante il funzionamento.
    In base alla legge di trasmissione del moto si distinguono in:
    - *Non omocinetici:* la velocità angolare uscente fluttua periodicamente rispetto a quella entrante durante il giro (es. *Cardano semplice*).
    - *Omocinetici:* assicurano istante per istante la stessa velocità angolare ai due alberi ($Omega_2 = Omega_1$, es. *doppio Cardano*, *Rzeppa*, *Weiss*, *tripode*).
 
=== Giunto di Oldham

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto di Oldham* trasmette il moto tra *assi paralleli non coincidenti* (eccentricità $e$). È formato da due mozzi dotati di guide prismatiche diametrali ortogonali e da un *disco centrale rigido* (giallo in sezione) che porta sulle due facce opposte due risalti prismatici a $90 degree$ scorrevoli nelle rispettive guide.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-02.typ", max-h: 4.8cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Lo scorrimento nelle guide ortogonali rende il giunto *autoadattativo* ai disallineamenti radiali senza sovraccaricare i cuscinetti di supporto. A differenza dello *Steckflex*, il disco è *rigido* e non svolge azione smorzante. Tuttavia, lo spostamento del disco crea un'*eccentricità* ($e$) che genera *forze centrifughe*, precessioni e vibrazioni sui supporti: per questo il giunto di Oldham *non può essere impiegato per alte velocità di rotazione*.
  ],
  [
    #fig-safe(include "../../figs/giunti/p4-fig04.typ", max-h: 6cm)
  ],
)

=== Giunto di Cardano (o di Hooke)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto di Cardano* (o *di Hooke*) è un *quadrilatero articolato spaziale* che collega *due alberi con assi concorrenti* inclinati di un angolo $beta$, anche variabile in esercizio. È composto da due *forcelle* (motrice e condotta, in acciaio stampato per contenere le deformazioni elastiche e mantenere allineate le sedi) articolate attorno agli assi ortogonali $y$ e $z$ di una *crociera* centrale tramite *bronzine* o *cuscinetti a rullini*. Con forcelle standard l'angolo di lavoro non supera *$beta approx 35 degree$* in uso continuativo ($45 degree$ solo per brevi transitori).
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-03.typ", max-h: 5cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Cinematica e non omocineticità.* Il giunto cardanico semplice *non è omocinetico*. Dette $Omega_1$ e $Omega_2$ le velocità angolari dei due alberi e $theta_1$ la rotazione dell'albero $1$ attorno a $y$ rispetto alla posizione di zero (braccio forcella $1$ orizzontale), il rapporto di trasmissione istantaneo vale:

    $ frac(Omega_2, Omega_1) = frac(cos beta, 1 - sin^2 beta dot sin^2 theta_1) $
  ],
  [
    #fig-safe(include "../../figs/giunti/p4-fig06.typ", max-h: 4.4cm)
  ],
)

Trascurando le perdite per attrito ($M_1 Omega_1 = M_2 Omega_2$), il momento torcente sull'albero condotto risulta:

$ M_2 = M_1 dot frac(Omega_1, Omega_2) = M_1 dot frac(1 - sin^2 beta dot sin^2 theta_1, cos beta) $

Anche a $M_1$ e $Omega_1$ costanti, sia $Omega_2$ sia $M_2$ oscillano periodicamente due volte per giro, inducendo vibrazioni torsionali crescenti con $beta$.

#v(0.4em)

*Doppio giunto cardanico e variante telescopica.* Collegando in serie *due giunti cardanici* tramite un albero intermedio con forcelle opportunamente fasate, le fluttuazioni dei due giunti si compensano reciprocamente e il sistema diventa *omocinetico* purché gli assi siano *complanari* con *$beta_2 = plus.minus beta_1$* (*configurazioni a Z* e *a W*).

#grid(
  columns: (0.60fr, 1.40fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/giunti/p4-fig01.typ", max-h: 7.2cm)
  ],
  [
    #fig-safe(include "../../figs/giunti/p4-fig05.typ", max-h: 7.2cm)
  ],
)

#v(0.4em)

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Inserendo sull'albero intermedio un accoppiamento scanalato *telescopico* (es. alberi cardanici agricoli), il doppio giunto agevola il montaggio e compensa anche errori assiali, *dilatazioni termiche* e variazioni di distanza in esercizio.
  ],
  [
#fig-safe(include "../../figs/giunti/p4-fig02.typ", max-h: 4.4cm)
  ],
)

#v(0.4em)

*Calcolo delle forze e verifiche strutturali.* Nella posizione di riferimento *$theta_1 = 0$* (forcella $1$ orizzontale, forcella $2$ verticale), detta $h$ la distanza tra i centri dei vincoli della crociera, l'equilibrio alla rotazione della forcella $1$ fornisce $M_1 = F_1 dot h$ e l'equilibrio della crociera impone $P dot h = F_1 dot h$, da cui $P = F_1 = M_1 / h$.

#grid(
  columns: (0.8fr, 0.98fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Scomponendo $P$ secondo l'angolo $beta$ tra gli assi $1$ e $2$, si ottengono la componente tangenziale $F_2 = P dot cos beta$ (che genera $M_2 = F_2 dot h = P dot h dot cos beta$ sulla forcella $2$) e la componente assiale di compensazione $Q = P dot sin beta$. Le *forze agenti sui bracci delle forcelle e sulla crociera* sono quindi:

    $ F_1 = frac(M_1, h) , quad F_2 = frac(M_1, h) cos beta , quad Q = frac(M_1, h) sin beta $
  ],
  [// far capire cosa cazzo è h sistemare le proporzioni e far capire dove si trova beta meglio 
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-06.typ", max-h: 5.2cm)
  ],
)

Fissate le dimensioni (la crociera è l'elemento più critico e può fungere da fusibile meccanico), occorre verificare:
- la *rigidezza flessionale* dei bracci delle forcelle (per mantenere allineate le sedi dei vincoli);
- la *resistenza a fatica* (e statica) dei bracci delle forcelle e dei perni della crociera;
- la *resistenza e durata a fatica* delle bronzine o dei cuscinetti a rullini.

=== Giunto omocinetico Rzeppa

#grid(
  columns: (0.98fr, 1.02fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto Rzeppa* è un giunto sferico *omocinetico* compatto, formato da:
    - una *campana* esterna con cavità sferica provvista di piste ad asse circolare eccentriche rispetto alla superficie sferica;
    - un *anello (nucleo) interno* sferico con analoghe piste eccentriche;
    - *sfere d'acciaio* che trasmettono la coppia;
    - una *gabbia* che trattiene le sfere sul *piano omocinetico* (piano bisettore degli assi dei due alberi), assicurando l'omocineticità;
    - una *cuffia conica in gomma* che protegge il giunto e trattiene il grasso lubrificante.
  ],
  [
    #import "@preview/cetz:0.3.4": canvas, draw
   #canvas(length: 1.5cm, {
  import draw: *
  line((5.74, 2.98), (5.59, 3.04), (5.43, 3.07), (5.27, 3.08), (5.12, 3.07), (4.96, 3.05), (4.81, 3.00), (4.67, 2.94), (4.53, 2.86), (4.41, 2.76), (4.29, 2.65), (4.20, 2.53), (4.11, 2.39), (4.05, 2.25), (4.00, 2.10), (4.24, 1.02), (4.34, 0.90), (4.45, 0.80), (4.57, 0.72), (4.70, 0.64), (4.84, 0.59), (4.99, 0.55), (5.14, 0.52), (5.29, 0.52), (5.44, 0.53), (5.59, 0.57), (5.73, 0.61), (5.87, 0.68), (6.00, 0.76), (6.11, 0.85), (6.11, 0.86), (6.17, 0.91), (6.22, 0.97), (6.26, 1.06), (6.29, 1.16), (6.32, 1.27), (6.34, 1.39), (6.34, 1.52), (6.34, 1.66), (6.33, 1.80), (6.31, 1.94), (6.28, 2.09), (6.24, 2.23), (6.20, 2.36), (6.14, 2.49), (6.08, 2.61), (6.02, 2.71), (5.95, 2.80), (5.88, 2.88), (5.81, 2.94), (5.74, 2.98), close: true, fill: rgb("#d4b800").transparentize(80%), stroke: none)
  line((1.74, 0.81), (2.70, 1.01), (2.75, 1.01), (1.80, 0.81), close: true, fill: rgb("#aa9005").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.67, 1.35), (2.63, 1.55), (2.58, 1.51), (1.62, 1.31), close: true, fill: rgb("#f2dc4a").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.67, 0.79), (2.63, 0.98), (2.68, 0.92), (1.73, 0.72), close: true, fill: rgb("#d1b30d").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.57, 1.38), (2.52, 1.58), (2.51, 1.48), (1.55, 1.28), close: true, fill: rgb("#f8e456").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.59, 0.86), (2.54, 1.06), (2.58, 0.95), (1.62, 0.75), close: true, fill: rgb("#e8cf36").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.50, 1.28), (2.45, 1.48), (2.47, 1.37), (1.51, 1.17), close: true, fill: rgb("#f0da47").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.53, 0.89), (2.48, 1.09), (2.54, 1.06), (1.59, 0.86), close: true, fill: rgb("#bda109").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.51, 1.17), (2.47, 1.37), (2.44, 1.30), (1.48, 1.10), close: true, fill: rgb("#f7e253").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.53, 1.01), (2.48, 1.20), (2.48, 1.09), (1.53, 0.89), close: true, fill: rgb("#f6e151").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((1.48, 1.10), (2.44, 1.30), (2.48, 1.20), (1.53, 1.01), close: true, fill: rgb("#dec222").transparentize(22%), stroke: rgb("#6b5900") + 0.4pt)
  line((2.52, 1.58), (2.51, 1.48), (2.45, 1.48), (2.47, 1.37), (2.44, 1.30), (2.48, 1.20), (2.48, 1.09), (2.54, 1.06), (2.58, 0.95), (2.63, 0.98), (2.68, 0.92), (2.70, 1.01), (2.75, 1.01), (2.73, 1.13), (2.77, 1.20), (2.72, 1.29), (2.72, 1.40), (2.66, 1.44), (2.63, 1.55), (2.58, 1.51), close: true, fill: rgb("#d6b811").transparentize(22%), stroke: rgb("#6b5900") + 0.7pt)
  line((2.61, 1.00), (3.52, 1.19), (3.57, 1.18), (2.66, 0.99), close: true, fill: rgb("#ae9306").transparentize(45%), stroke: rgb("#ae9306").transparentize(45%) + 0.35pt)
  line((2.54, 1.50), (3.45, 1.69), (3.41, 1.65), (2.50, 1.46), close: true, fill: rgb("#f3de4c").transparentize(45%), stroke: rgb("#f3de4c").transparentize(45%) + 0.35pt)
  line((2.55, 1.06), (3.46, 1.25), (3.52, 1.19), (2.61, 1.00), close: true, fill: rgb("#caad0c").transparentize(45%), stroke: rgb("#caad0c").transparentize(45%) + 0.35pt)
  line((2.50, 1.46), (3.41, 1.65), (3.39, 1.56), (2.48, 1.37), close: true, fill: rgb("#f8e456").transparentize(45%), stroke: rgb("#f8e456").transparentize(45%) + 0.35pt)
  line((2.50, 1.15), (3.42, 1.34), (3.46, 1.25), (2.55, 1.06), close: true, fill: rgb("#dfc323").transparentize(45%), stroke: rgb("#dfc323").transparentize(45%) + 0.35pt)
  line((2.48, 1.37), (3.39, 1.56), (3.39, 1.45), (2.48, 1.26), close: true, fill: rgb("#f5e151").transparentize(45%), stroke: rgb("#f5e151").transparentize(45%) + 0.35pt)
  line((2.48, 1.26), (3.39, 1.45), (3.42, 1.34), (2.50, 1.15), close: true, fill: rgb("#ecd53f").transparentize(45%), stroke: rgb("#ecd53f").transparentize(45%) + 0.35pt)
  line((3.53, 1.02), (4.25, 1.11), (4.34, 1.10), (3.62, 1.01), close: true, fill: rgb("#ac9106").transparentize(55%), stroke: rgb("#ac9106").transparentize(55%) + 0.35pt)
  line((3.41, 1.86), (4.11, 2.07), (4.03, 2.00), (3.35, 1.81), close: true, fill: rgb("#f2dd4b").transparentize(55%), stroke: rgb("#f2dd4b").transparentize(55%) + 0.35pt)
  line((3.45, 1.09), (4.15, 1.19), (4.25, 1.11), (3.53, 1.02), close: true, fill: rgb("#c4a70b").transparentize(55%), stroke: rgb("#c4a70b").transparentize(55%) + 0.35pt)
  line((3.35, 1.81), (4.03, 2.00), (3.99, 1.87), (3.30, 1.69), close: true, fill: rgb("#f7e355").transparentize(55%), stroke: rgb("#f7e355").transparentize(55%) + 0.35pt)
  line((3.37, 1.21), (4.07, 1.33), (4.15, 1.19), (3.45, 1.09), close: true, fill: rgb("#d9bd19").transparentize(55%), stroke: rgb("#d9bd19").transparentize(55%) + 0.35pt)
  line((3.30, 1.69), (3.99, 1.87), (3.98, 1.70), (3.30, 1.54), close: true, fill: rgb("#f7e253").transparentize(55%), stroke: rgb("#f7e253").transparentize(55%) + 0.35pt)
  line((3.32, 1.37), (4.01, 1.51), (4.07, 1.33), (3.37, 1.21), close: true, fill: rgb("#e7ce33").transparentize(55%), stroke: rgb("#e7ce33").transparentize(55%) + 0.35pt)
  line((3.30, 1.54), (3.98, 1.70), (4.01, 1.51), (3.32, 1.37), close: true, fill: rgb("#f1db48").transparentize(55%), stroke: rgb("#f1db48").transparentize(55%) + 0.35pt)
  line((3.72, 1.43), (4.53, 1.70), stroke: rgb("#b81d1d") + 1.97pt)
  circle((3.72, 1.43), radius: 0.10, fill: rgb("#d92626").transparentize(45%), stroke: rgb("#7a1010") + 0.75pt)
  circle((3.69, 1.46), radius: 0.03, fill: rgb("#ffaaaa").transparentize(45%), stroke: none)
  circle((4.22, 1.60), radius: 0.13, fill: rgb("#d92626").transparentize(45%), stroke: rgb("#7a1010") + 0.75pt)
  circle((4.19, 1.63), radius: 0.04, fill: rgb("#ffaaaa").transparentize(45%), stroke: none)
  circle((4.53, 1.70), radius: 0.10, fill: rgb("#d92626").transparentize(45%), stroke: rgb("#7a1010") + 0.75pt)
  circle((4.50, 1.73), radius: 0.03, fill: rgb("#ffaaaa").transparentize(45%), stroke: none)
  line((5.36, 1.70), (5.38, 1.68), (5.40, 1.97), (5.38, 1.95), close: true, fill: rgb("#0c2870"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.38, 1.95), (5.40, 1.97), (5.38, 2.25), (5.36, 2.19), close: true, fill: rgb("#0c2972"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.17, 1.56), (5.33, 1.52), (5.37, 1.81), (5.21, 1.82), close: true, fill: rgb("#1a53c8"), stroke: rgb("#1a53c8") + 0.35pt)
  line((5.21, 1.82), (5.37, 1.81), (5.37, 2.09), (5.21, 2.08), close: true, fill: rgb("#184dbd"), stroke: rgb("#184dbd") + 0.35pt)
  line((5.36, 1.70), (5.38, 1.68), (5.92, 1.64), (5.83, 1.66), close: true, fill: rgb("#0c266c"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.09, 1.33), (5.25, 1.28), (5.33, 1.52), (5.17, 1.56), close: true, fill: rgb("#1b56cd"), stroke: rgb("#1b56cd") + 0.35pt)
  line((5.28, 1.36), (5.53, 1.32), (5.61, 1.67), (5.36, 1.70), close: true, fill: rgb("#1b57d1"), stroke: rgb("#1b57d1") + 0.35pt)
  line((5.21, 2.08), (5.37, 2.09), (5.33, 2.34), (5.17, 2.31), close: true, fill: rgb("#1545ae"), stroke: rgb("#1545ae") + 0.35pt)
  line((5.20, 1.18), (5.19, 1.08), (5.29, 1.30), (5.28, 1.36), close: true, fill: rgb("#0c276d"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.36, 2.19), (5.38, 2.25), (5.92, 2.20), (5.83, 2.15), close: true, fill: rgb("#1a55cc"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.28, 1.36), (5.29, 1.30), (5.83, 1.25), (5.75, 1.32), close: true, fill: rgb("#0e2d7b"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.83, 1.66), (5.92, 1.64), (5.94, 1.93), (5.85, 1.91), close: true, fill: rgb("#0f3287"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.53, 1.32), (5.75, 1.32), (5.83, 1.66), (5.61, 1.67), close: true, fill: rgb("#1c59d4"), stroke: rgb("#1c59d4") + 0.35pt)
  line((5.85, 1.91), (5.94, 1.93), (5.92, 2.20), (5.83, 2.15), close: true, fill: rgb("#0e2f81"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.36, 2.19), (5.61, 2.19), (5.53, 2.48), (5.28, 2.47), close: true, fill: rgb("#1442a8"), stroke: rgb("#1442a8") + 0.35pt)
  line((4.99, 1.16), (5.14, 1.10), (5.25, 1.28), (5.09, 1.33), close: true, fill: rgb("#1a55cc"), stroke: rgb("#1a55cc") + 0.35pt)
  line((5.17, 2.31), (5.33, 2.34), (5.25, 2.53), (5.09, 2.49), close: true, fill: rgb("#123c9c"), stroke: rgb("#123c9c") + 0.35pt)
  line((4.69, 0.98), (4.82, 0.97), (4.95, 1.07), (5.07, 1.26), (5.15, 1.52), (5.20, 1.82), (5.20, 2.12), (5.15, 2.39), (5.07, 2.59), (4.95, 2.70), (4.82, 2.70), stroke: rgb("#0a2259") + 0.7pt)
  line((5.80, 1.48), (5.91, 1.50), (5.95, 1.76), (5.84, 1.77), close: true, fill: rgb("#1b56ce"), stroke: rgb("#1b56ce") + 0.35pt)
  line((5.84, 1.77), (5.95, 1.76), (5.95, 2.02), (5.84, 2.05), close: true, fill: rgb("#1950c3"), stroke: rgb("#1950c3") + 0.35pt)
  line((5.09, 1.05), (5.07, 0.94), (5.19, 1.08), (5.20, 1.18), close: true, fill: rgb("#0c276e"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.61, 2.19), (5.83, 2.15), (5.75, 2.43), (5.53, 2.48), close: true, fill: rgb("#1443aa"), stroke: rgb("#1443aa") + 0.35pt)
  line((5.28, 2.47), (5.29, 2.57), (5.19, 2.71), (5.20, 2.59), close: true, fill: rgb("#0e2c7a"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.67, 1.14), (5.73, 1.04), (5.83, 1.25), (5.75, 1.32), close: true, fill: rgb("#10358c"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.28, 2.47), (5.29, 2.57), (5.83, 2.52), (5.75, 2.43), close: true, fill: rgb("#1c5ad5"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.72, 1.24), (5.84, 1.27), (5.91, 1.50), (5.80, 1.48), close: true, fill: rgb("#1c59d4"), stroke: rgb("#1c59d4") + 0.35pt)
  line((5.84, 2.05), (5.95, 2.02), (5.91, 2.25), (5.80, 2.30), close: true, fill: rgb("#1648b4"), stroke: rgb("#1648b4") + 0.35pt)
  line((4.88, 1.08), (5.01, 1.00), (5.14, 1.10), (4.99, 1.16), close: true, fill: rgb("#1951c5"), stroke: rgb("#1951c5") + 0.35pt)
  line((5.09, 2.49), (5.25, 2.53), (5.14, 2.63), (4.99, 2.58), close: true, fill: rgb("#0f3286"), stroke: rgb("#0f3286") + 0.35pt)
  line((5.81, 1.00), (5.93, 1.19), (6.01, 1.45), (6.06, 1.75), (6.06, 2.05), (6.01, 2.32), (5.93, 2.51), stroke: rgb("#0a2259") + 0.7pt)
  line((5.09, 1.05), (5.07, 0.94), (5.61, 0.89), (5.56, 1.01), close: true, fill: rgb("#1544aa"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.61, 1.06), (5.74, 1.10), (5.84, 1.27), (5.72, 1.24), close: true, fill: rgb("#1b58d3"), stroke: rgb("#1b58d3") + 0.35pt)
  line((5.56, 1.01), (5.61, 0.89), (5.73, 1.04), (5.67, 1.14), close: true, fill: rgb("#10348b"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.80, 2.30), (5.91, 2.25), (5.84, 2.42), (5.72, 2.49), close: true, fill: rgb("#133fa2"), stroke: rgb("#133fa2") + 0.35pt)
  line((5.20, 2.59), (5.19, 2.71), (5.07, 2.77), (5.09, 2.65), close: true, fill: rgb("#0e2e7e"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.75, 2.43), (5.83, 2.52), (5.73, 2.66), (5.67, 2.55), close: true, fill: rgb("#0d2b77"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.94, 0.99), (5.17, 0.93), (5.33, 0.99), (5.09, 1.05), close: true, fill: rgb("#1951c4"), stroke: rgb("#1951c4") + 0.35pt)
  line((4.76, 1.08), (4.89, 1.01), (5.01, 1.00), (4.88, 1.08), close: true, fill: rgb("#174bb9"), stroke: rgb("#174bb9") + 0.35pt)
  line((4.99, 2.58), (5.14, 2.63), (5.01, 2.64), (4.88, 2.58), close: true, fill: rgb("#0d2a73"), stroke: rgb("#0d2a73") + 0.35pt)
  line((5.49, 0.96), (5.62, 1.02), (5.74, 1.10), (5.61, 1.06), close: true, fill: rgb("#1a55cc"), stroke: rgb("#1a55cc") + 0.35pt)
  line((5.17, 0.93), (5.41, 0.95), (5.56, 1.01), (5.33, 0.99), close: true, fill: rgb("#1952c7"), stroke: rgb("#1952c7") + 0.35pt)
  line((5.72, 2.49), (5.84, 2.42), (5.74, 2.52), (5.61, 2.59), close: true, fill: rgb("#10368e"), stroke: rgb("#10368e") + 0.35pt)
  line((5.09, 2.65), (5.07, 2.77), (5.61, 2.73), (5.56, 2.61), close: true, fill: rgb("#1952c6"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.67, 2.55), (5.73, 2.66), (5.61, 2.73), (5.56, 2.61), close: true, fill: rgb("#0d2a74"), stroke: rgb("#0a2259") + 0.4pt)
  circle((5.66, 1.95), radius: 0.22, fill: rgb("#9e7438"), stroke: rgb("#593a12") + 0.7pt)
  circle((5.61, 2.00), radius: 0.07, fill: rgb("#d4b17a"), stroke: none)
  circle((5.46, 1.07), radius: 0.22, fill: rgb("#9e7438"), stroke: rgb("#593a12") + 0.7pt)
  circle((5.40, 1.12), radius: 0.07, fill: rgb("#d4b17a"), stroke: none)
  circle((5.46, 2.68), radius: 0.22, fill: rgb("#9e7438"), stroke: rgb("#593a12") + 0.7pt)
  circle((5.40, 2.73), radius: 0.07, fill: rgb("#d4b17a"), stroke: none)
  line((5.04, 2.36), (5.32, 2.41), (5.28, 2.38), (5.04, 2.33), close: true, fill: rgb("#92b49e"), stroke: rgb("#92b49e") + 0.35pt)
  line((5.47, 1.30), (5.64, 1.34), (5.78, 1.35), (5.59, 1.34), close: true, fill: rgb("#425d4c"), stroke: rgb("#425d4c") + 0.35pt)
  line((5.32, 2.41), (5.59, 2.36), (5.51, 2.35), (5.28, 2.38), close: true, fill: rgb("#8bab97"), stroke: rgb("#8bab97") + 0.35pt)
  line((4.63, 1.50), (4.78, 1.27), (4.82, 1.23), (4.64, 1.48), close: true, fill: rgb("#9ec0aa"), stroke: rgb("#9ec0aa") + 0.35pt)
  line((4.78, 1.27), (5.01, 1.12), (5.07, 1.07), (4.82, 1.23), close: true, fill: rgb("#87a893"), stroke: rgb("#87a893") + 0.35pt)
  line((5.87, 2.13), (6.01, 1.94), (5.94, 2.02), (5.81, 2.22), close: true, fill: rgb("#9bbda7"), stroke: rgb("#9bbda7") + 0.35pt)
  line((5.59, 2.36), (5.81, 2.22), (5.70, 2.23), (5.51, 2.35), close: true, fill: rgb("#85a591"), stroke: rgb("#85a591") + 0.35pt)
  line((4.68, 1.57), (4.80, 1.37), (4.78, 1.27), (4.63, 1.50), close: true, fill: rgb("#84a490"), stroke: rgb("#84a490") + 0.35pt)
  line((5.01, 1.12), (5.27, 1.08), (5.35, 1.03), (5.07, 1.07), close: true, fill: rgb("#7b9b87"), stroke: rgb("#7b9b87") + 0.35pt)
  line((5.81, 2.22), (5.94, 2.02), (5.82, 2.03), (5.70, 2.23), close: true, fill: rgb("#81a18d"), stroke: rgb("#81a18d") + 0.35pt)
  line((4.80, 1.37), (4.99, 1.25), (5.01, 1.12), (4.78, 1.27), close: true, fill: rgb("#779683"), stroke: rgb("#779683") + 0.35pt)
  line((5.27, 1.08), (5.53, 1.16), (5.61, 1.11), (5.35, 1.03), close: true, fill: rgb("#7a9a86"), stroke: rgb("#7a9a86") + 0.35pt)
  line((4.89, 2.49), (5.15, 2.57), (5.08, 2.47), (4.85, 2.40), close: true, fill: rgb("#e1f3e7"), stroke: rgb("#e1f3e7") + 0.35pt)
  line((4.99, 1.25), (5.22, 1.22), (5.27, 1.08), (5.01, 1.12), close: true, fill: rgb("#708e7c"), stroke: rgb("#708e7c") + 0.35pt)
  line((4.49, 1.66), (4.63, 1.47), (4.69, 1.38), (4.56, 1.58), close: true, fill: rgb("#96b7a2"), stroke: rgb("#96b7a2") + 0.35pt)
  line((5.49, 2.48), (5.72, 2.33), (5.68, 2.37), (5.43, 2.53), close: true, fill: rgb("#afcdba"), stroke: rgb("#afcdba") + 0.35pt)
  line((5.22, 1.22), (5.46, 1.27), (5.53, 1.16), (5.27, 1.08), close: true, fill: rgb("#6f8d7b"), stroke: rgb("#6f8d7b") + 0.35pt)
  line((4.85, 2.40), (5.08, 2.47), (5.03, 2.30), (4.86, 2.26), close: true, fill: rgb("#99bba5"), stroke: rgb("#99bba5") + 0.35pt)
  line((5.15, 2.57), (5.43, 2.53), (5.33, 2.42), (5.08, 2.47), close: true, fill: rgb("#dff1e5"), stroke: rgb("#dff1e5") + 0.35pt)
  line((5.72, 2.33), (5.87, 2.10), (5.86, 2.12), (5.68, 2.37), close: true, fill: rgb("#9fc0ab"), stroke: rgb("#9fc0ab") + 0.35pt)
  line((4.55, 1.77), (4.68, 1.63), (4.63, 1.47), (4.49, 1.66), close: true, fill: rgb("#d4e9dc"), stroke: rgb("#d4e9dc") + 0.35pt)
  line((4.67, 1.88), (4.79, 1.79), (4.68, 1.63), (4.55, 1.77), close: true, fill: rgb("#9bbda7"), stroke: rgb("#9bbda7") + 0.35pt)
  line((4.51, 1.57), (4.64, 1.35), (4.88, 1.20), (5.17, 1.15), (5.48, 1.20), stroke: rgb("#2e4537") + 0.6pt)
  line((5.08, 2.47), (5.33, 2.42), (5.24, 2.25), (5.03, 2.30), close: true, fill: rgb("#9bbda7"), stroke: rgb("#9bbda7") + 0.35pt)
  line((4.63, 1.47), (4.86, 1.33), (4.91, 1.24), (4.69, 1.38), close: true, fill: rgb("#95b7a1"), stroke: rgb("#95b7a1") + 0.35pt)
  line((5.43, 2.53), (5.68, 2.37), (5.57, 2.28), (5.33, 2.42), close: true, fill: rgb("#d5eadd"), stroke: rgb("#d5eadd") + 0.35pt)
  line((4.61, 2.02), (4.76, 1.95), (4.79, 1.79), (4.67, 1.88), close: true, fill: rgb("#799885"), stroke: rgb("#799885") + 0.35pt)
  line((4.83, 2.45), (5.07, 2.52), (5.34, 2.47), (5.60, 2.32), (5.80, 2.08), stroke: rgb("#2e4537") + 0.6pt)
  line((4.72, 2.25), (4.91, 2.26), (4.80, 2.14), (4.62, 2.16), close: true, fill: rgb("#dff1e5"), stroke: rgb("#dff1e5") + 0.35pt)
  line((5.68, 2.37), (5.86, 2.12), (5.76, 2.06), (5.57, 2.28), close: true, fill: rgb("#c7dfcf"), stroke: rgb("#c7dfcf") + 0.35pt)
  line((4.62, 2.16), (4.80, 2.14), (4.76, 1.95), (4.61, 2.02), close: true, fill: rgb("#d0e6d8"), stroke: rgb("#d0e6d8") + 0.35pt)
  line((5.33, 2.42), (5.57, 2.28), (5.45, 2.14), (5.24, 2.25), close: true, fill: rgb("#96b7a2"), stroke: rgb("#96b7a2") + 0.35pt)
  line((4.86, 1.33), (5.16, 1.27), (5.18, 1.19), (4.91, 1.24), close: true, fill: rgb("#8dae99"), stroke: rgb("#8dae99") + 0.35pt)
  line((5.03, 2.30), (5.24, 2.25), (5.14, 2.20), (4.91, 2.26), close: true, fill: rgb("#90b29c"), stroke: rgb("#90b29c") + 0.35pt)
  line((4.68, 1.63), (4.90, 1.52), (4.86, 1.33), (4.63, 1.47), close: true, fill: rgb("#cce3d4"), stroke: rgb("#cce3d4") + 0.35pt)
  line((5.57, 2.28), (5.76, 2.06), (5.63, 1.97), (5.45, 2.14), close: true, fill: rgb("#8dad99"), stroke: rgb("#8dad99") + 0.35pt)
  line((5.82, 1.84), (6.99, 1.40), (6.95, 1.40), (5.78, 1.85), close: true, fill: rgb("#bfd9c8"), stroke: rgb("#bfd9c8") + 0.35pt)
  line((5.16, 1.27), (5.47, 1.29), (5.46, 1.24), (5.18, 1.19), close: true, fill: rgb("#80a18c"), stroke: rgb("#80a18c") + 0.35pt)
  line((4.79, 1.79), (4.98, 1.70), (4.90, 1.52), (4.68, 1.63), close: true, fill: rgb("#99bba5"), stroke: rgb("#99bba5") + 0.35pt)
  line((5.60, 1.45), (6.78, 1.01), (6.80, 0.96), (5.62, 1.40), close: true, fill: rgb("#94b6a0"), stroke: rgb("#94b6a0") + 0.35pt)
  line((4.76, 1.95), (4.99, 1.87), (4.98, 1.70), (4.79, 1.79), close: true, fill: rgb("#7e9e8a"), stroke: rgb("#7e9e8a") + 0.35pt)
  line((5.24, 2.25), (5.45, 2.14), (5.40, 2.07), (5.14, 2.20), close: true, fill: rgb("#8cad98"), stroke: rgb("#8cad98") + 0.35pt)
  line((4.50, 1.77), (4.64, 1.61), (4.87, 1.49), (5.17, 1.41), (5.47, 1.40), stroke: rgb("#2e4537") + 0.6pt)
  line((5.45, 2.14), (5.63, 1.97), (5.63, 1.90), (5.40, 2.07), close: true, fill: rgb("#7f9f8b"), stroke: rgb("#7f9f8b") + 0.35pt)
  line((4.90, 1.52), (5.17, 1.45), (5.16, 1.27), (4.86, 1.33), close: true, fill: rgb("#c1dbca"), stroke: rgb("#c1dbca") + 0.35pt)
  line((5.78, 1.85), (6.95, 1.40), (6.90, 1.36), (5.73, 1.81), close: true, fill: rgb("#d5eadc"), stroke: rgb("#d5eadc") + 0.35pt)
  line((4.91, 2.26), (5.14, 2.20), (5.04, 2.06), (4.80, 2.14), close: true, fill: rgb("#e2f4e8"), stroke: rgb("#e2f4e8") + 0.35pt)
  line((4.68, 2.28), (4.88, 2.29), (5.13, 2.22), (5.41, 2.09), (5.66, 1.91), stroke: rgb("#2e4537") + 0.6pt)
  line((5.17, 1.45), (5.46, 1.43), (5.47, 1.29), (5.16, 1.27), close: true, fill: rgb("#b6d2c0"), stroke: rgb("#b6d2c0") + 0.35pt)
  line((4.98, 1.70), (5.21, 1.63), (5.17, 1.45), (4.90, 1.52), close: true, fill: rgb("#93b49f"), stroke: rgb("#93b49f") + 0.35pt)
  line((5.21, 1.63), (5.45, 1.59), (5.46, 1.43), (5.17, 1.45), close: true, fill: rgb("#8aaa96"), stroke: rgb("#8aaa96") + 0.35pt)
  line((4.80, 2.14), (5.04, 2.06), (4.99, 1.87), (4.76, 1.95), close: true, fill: rgb("#d5e9dc"), stroke: rgb("#d5e9dc") + 0.35pt)
  line((5.61, 1.54), (6.78, 1.09), (6.78, 1.01), (5.60, 1.45), close: true, fill: rgb("#b3d0bd"), stroke: rgb("#b3d0bd") + 0.35pt)
  line((5.25, 1.77), (5.52, 1.67), (5.45, 1.59), (5.21, 1.63), close: true, fill: rgb("#718f7d"), stroke: rgb("#718f7d") + 0.35pt)
  line((5.73, 1.81), (6.90, 1.36), (6.84, 1.29), (5.67, 1.73), close: true, fill: rgb("#e0f2e6"), stroke: rgb("#e0f2e6") + 0.35pt)
  line((4.99, 1.87), (5.25, 1.77), (5.21, 1.63), (4.98, 1.70), close: true, fill: rgb("#7b9a87"), stroke: rgb("#7b9a87") + 0.35pt)
  line((4.57, 2.04), (4.73, 1.97), (4.97, 1.88), (5.26, 1.77), (5.54, 1.67), stroke: rgb("#2e4537") + 0.6pt)
  line((5.63, 1.64), (6.80, 1.19), (6.78, 1.09), (5.61, 1.54), close: true, fill: rgb("#cde3d5"), stroke: rgb("#cde3d5") + 0.35pt)
  line((5.67, 1.73), (6.84, 1.29), (6.80, 1.19), (5.63, 1.64), close: true, fill: rgb("#ddefe3"), stroke: rgb("#ddefe3") + 0.35pt)
  line((5.14, 2.20), (5.40, 2.07), (5.33, 1.94), (5.04, 2.06), close: true, fill: rgb("#d9ede0"), stroke: rgb("#d9ede0") + 0.35pt)
  line((5.40, 2.07), (5.63, 1.90), (5.59, 1.79), (5.33, 1.94), close: true, fill: rgb("#c6dece"), stroke: rgb("#c6dece") + 0.35pt)
  line((5.66, 1.40), (6.84, 0.96), stroke: rgb("#2e4537") + 0.75pt)
  line((5.33, 1.94), (5.59, 1.79), (5.52, 1.67), (5.25, 1.77), close: true, fill: rgb("#bbd6c5"), stroke: rgb("#bbd6c5") + 0.35pt)
  line((5.04, 2.06), (5.33, 1.94), (5.25, 1.77), (4.99, 1.87), close: true, fill: rgb("#cde3d5"), stroke: rgb("#cde3d5") + 0.35pt)
  line((5.78, 1.85), (6.95, 1.40), stroke: rgb("#2e4537") + 0.75pt)
  line((7.03, 1.43), (8.07, 1.04), (8.02, 1.01), (6.98, 1.40), close: true, fill: rgb("#d2e7d9"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.81, 0.95), (7.85, 0.56), (7.86, 0.51), (6.82, 0.90), close: true, fill: rgb("#9cbea8"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.96, 1.46), (8.00, 1.06), (7.95, 0.99), (6.91, 1.38), close: true, fill: rgb("#e0f2e6"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.77, 1.02), (7.82, 0.62), (7.80, 0.53), (6.76, 0.93), close: true, fill: rgb("#c4dccd"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.91, 1.38), (7.95, 0.99), (7.91, 0.98), (6.87, 1.38), close: true, fill: rgb("#c4ddcd"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.75, 1.05), (7.79, 0.65), (7.82, 0.62), (6.77, 1.02), close: true, fill: rgb("#86a792"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.87, 1.38), (7.91, 0.98), (7.88, 0.89), (6.84, 1.28), close: true, fill: rgb("#d4e9dc"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.79, 1.14), (7.83, 0.75), (7.79, 0.65), (6.75, 1.05), close: true, fill: rgb("#ddefe3"), stroke: rgb("#2e4537") + 0.4pt)
  line((8.00, 1.06), (7.95, 0.99), (7.91, 0.98), (7.88, 0.89), (7.83, 0.83), (7.83, 0.75), (7.79, 0.65), (7.82, 0.62), (7.80, 0.53), (7.85, 0.56), (7.86, 0.51), (7.91, 0.58), (7.96, 0.59), (7.99, 0.68), (8.04, 0.74), (8.04, 0.82), (8.08, 0.92), (8.05, 0.95), (8.07, 1.04), (8.02, 1.01), close: true, fill: rgb("#81a18d"), stroke: rgb("#2e4537") + 0.7pt)
  line((6.84, 1.28), (7.88, 0.89), (7.83, 0.83), (6.79, 1.22), close: true, fill: rgb("#ddf0e3"), stroke: rgb("#2e4537") + 0.4pt)
  line((6.79, 1.22), (7.83, 0.83), (7.83, 0.75), (6.79, 1.14), close: true, fill: rgb("#b3d0bd"), stroke: rgb("#2e4537") + 0.4pt)
  line((4.83, 1.05), (4.77, 0.94), (4.89, 0.87), (4.94, 0.99), close: true, fill: rgb("#0d2a74"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.94, 0.99), (4.89, 0.87), (5.43, 0.83), (5.41, 0.95), close: true, fill: rgb("#1952c6"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.57, 1.09), (4.71, 1.01), (4.84, 0.89), (4.69, 0.98), close: true, fill: rgb("#1951c4"), stroke: rgb("#1951c4") + 0.35pt)
  line((5.07, 2.77), (5.34, 2.80), (5.16, 2.73), (4.89, 2.71), close: true, fill: rgb("#4483f0"), stroke: rgb("#4483f0") + 0.35pt)
  line((4.82, 2.70), (4.98, 2.76), (4.84, 2.65), (4.69, 2.60), close: true, fill: rgb("#4888f3"), stroke: rgb("#4888f3") + 0.35pt)
  line((5.38, 0.84), (5.55, 0.90), (5.68, 0.90), (5.52, 0.84), close: true, fill: rgb("#143fa1"), stroke: rgb("#143fa1") + 0.35pt)
  line((5.66, 2.71), (5.81, 2.62), (5.68, 2.63), (5.52, 2.72), close: true, fill: rgb("#3776e8"), stroke: rgb("#3776e8") + 0.35pt)
  line((5.34, 2.80), (5.61, 2.73), (5.43, 2.66), (5.16, 2.73), close: true, fill: rgb("#4181ef"), stroke: rgb("#4181ef") + 0.35pt)
  line((4.75, 1.17), (4.67, 1.08), (4.77, 0.94), (4.83, 1.05), close: true, fill: rgb("#0d2b77"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.81, 2.62), (5.68, 2.63), stroke: rgb("#0a2259") + 0.7pt)
  line((5.30, 1.01), (5.31, 0.89), (5.43, 0.83), (5.41, 0.95), close: true, fill: rgb("#0e2e7e"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.94, 2.59), (4.89, 2.71), (4.77, 2.56), (4.83, 2.46), close: true, fill: rgb("#10348b"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.94, 2.59), (4.89, 2.71), (5.43, 2.66), (5.41, 2.55), close: true, fill: rgb("#1544aa"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.49, 1.28), (4.62, 1.22), (4.71, 1.01), (4.57, 1.09), close: true, fill: rgb("#2260da"), stroke: rgb("#2260da") + 0.35pt)
  line((4.69, 2.60), (4.84, 2.65), (4.71, 2.45), (4.57, 2.41), close: true, fill: rgb("#4f8ff8"), stroke: rgb("#4f8ff8") + 0.35pt)
  line((5.25, 0.96), (5.43, 1.01), (5.55, 0.90), (5.38, 0.84), close: true, fill: rgb("#184cba"), stroke: rgb("#184cba") + 0.35pt)
  line((4.69, 2.60), (4.57, 2.41), (4.49, 2.15), (4.44, 1.85), (4.44, 1.55), (4.49, 1.28), (4.57, 1.09), stroke: rgb("#0a2259") + 0.7pt)
  line((5.52, 2.72), (5.68, 2.63), (5.55, 2.53), (5.38, 2.61), close: true, fill: rgb("#4282f0"), stroke: rgb("#4282f0") + 0.35pt)
  line((4.75, 1.17), (4.67, 1.08), (5.21, 1.03), (5.22, 1.13), close: true, fill: rgb("#1c5ad5"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.83, 2.46), (4.77, 2.56), (4.67, 2.35), (4.75, 2.28), close: true, fill: rgb("#10358c"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.22, 1.13), (5.21, 1.03), (5.31, 0.89), (5.30, 1.01), close: true, fill: rgb("#0e2c7a"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.44, 1.55), (4.57, 1.51), (4.62, 1.22), (4.49, 1.28), close: true, fill: rgb("#3271e5"), stroke: rgb("#3271e5") + 0.35pt)
  line((4.57, 2.41), (4.71, 2.45), (4.62, 2.16), (4.49, 2.15), close: true, fill: rgb("#5090f9"), stroke: rgb("#5090f9") + 0.35pt)
  line((5.41, 2.55), (5.43, 2.66), (5.31, 2.52), (5.30, 2.42), close: true, fill: rgb("#0c276e"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.58, 1.40), (4.83, 1.36), (4.93, 1.02), (4.67, 1.08), close: true, fill: rgb("#2968df"), stroke: rgb("#2968df") + 0.35pt)
  line((4.65, 1.69), (4.56, 1.67), (4.58, 1.40), (4.67, 1.45), close: true, fill: rgb("#0e2f81"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.44, 1.85), (4.57, 1.84), (4.57, 1.51), (4.44, 1.55), close: true, fill: rgb("#4180ee"), stroke: rgb("#4180ee") + 0.35pt)
  line((4.49, 2.15), (4.62, 2.16), (4.57, 1.84), (4.44, 1.85), close: true, fill: rgb("#4b8bf5"), stroke: rgb("#4b8bf5") + 0.35pt)
  line((4.67, 1.94), (4.58, 1.96), (4.56, 1.67), (4.65, 1.69), close: true, fill: rgb("#0f3287"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.16, 1.18), (5.35, 1.21), (5.43, 1.01), (5.25, 0.96), close: true, fill: rgb("#1c5ad6"), stroke: rgb("#1c5ad6") + 0.35pt)
  line((4.75, 2.28), (4.67, 2.35), (5.21, 2.30), (5.22, 2.24), close: true, fill: rgb("#0e2d7b"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.68, 2.63), (5.55, 2.53), (5.43, 2.34), (5.35, 2.08), (5.30, 1.78), (5.30, 1.48), (5.35, 1.21), (5.43, 1.01), (5.55, 0.90), (5.68, 0.90), stroke: rgb("#0a2259") + 0.7pt)
  line((5.38, 2.61), (5.55, 2.53), (5.43, 2.34), (5.25, 2.40), close: true, fill: rgb("#4989f4"), stroke: rgb("#4989f4") + 0.35pt)
  line((4.67, 1.45), (4.58, 1.40), (5.12, 1.35), (5.14, 1.41), close: true, fill: rgb("#1a55cc"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.83, 1.36), (5.12, 1.35), (5.21, 1.03), (4.93, 1.02), close: true, fill: rgb("#2765dd"), stroke: rgb("#2765dd") + 0.35pt)
  line((5.30, 2.42), (5.31, 2.52), (5.21, 2.30), (5.22, 2.24), close: true, fill: rgb("#0c276d"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.67, 2.35), (4.93, 2.35), (4.83, 1.95), (4.58, 1.96), close: true, fill: rgb("#5090f8"), stroke: rgb("#5090f8") + 0.35pt)
  line((4.67, 1.94), (4.58, 1.96), (5.12, 1.92), (5.14, 1.90), close: true, fill: rgb("#0c266c"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.11, 1.47), (5.30, 1.48), (5.35, 1.21), (5.16, 1.18), close: true, fill: rgb("#2c6be1"), stroke: rgb("#2c6be1") + 0.35pt)
  line((5.12, 1.65), (5.10, 1.63), (5.12, 1.35), (5.14, 1.41), close: true, fill: rgb("#0c2972"), stroke: rgb("#0a2259") + 0.4pt)
  line((4.93, 2.35), (5.21, 2.30), (5.12, 1.92), (4.83, 1.95), close: true, fill: rgb("#4d8df7"), stroke: rgb("#4d8df7") + 0.35pt)
  line((5.25, 2.40), (5.43, 2.34), (5.35, 2.08), (5.16, 2.12), close: true, fill: rgb("#4a8af5"), stroke: rgb("#4a8af5") + 0.35pt)
  line((5.14, 1.90), (5.12, 1.92), (5.10, 1.63), (5.12, 1.65), close: true, fill: rgb("#0c2870"), stroke: rgb("#0a2259") + 0.4pt)
  line((5.11, 1.79), (5.30, 1.78), (5.30, 1.48), (5.11, 1.47), close: true, fill: rgb("#3b7aeb"), stroke: rgb("#3b7aeb") + 0.35pt)
  line((5.16, 2.12), (5.35, 2.08), (5.30, 1.78), (5.11, 1.79), close: true, fill: rgb("#4585f1"), stroke: rgb("#4585f1") + 0.35pt)
  circle((5.04, 0.92), radius: 0.22, fill: rgb("#c98e42"), stroke: rgb("#5e3c10") + 0.85pt)
  circle((5.02, 0.95), radius: 0.17, fill: rgb("#e0aa5e"), stroke: none)
  circle((4.98, 0.99), radius: 0.07, fill: rgb("#fbe4c2"), stroke: none)
  circle((5.04, 2.53), radius: 0.22, fill: rgb("#c98e42"), stroke: rgb("#5e3c10") + 0.85pt)
  circle((5.02, 2.55), radius: 0.17, fill: rgb("#e0aa5e"), stroke: none)
  circle((4.98, 2.59), radius: 0.07, fill: rgb("#fbe4c2"), stroke: none)
  circle((4.84, 1.65), radius: 0.22, fill: rgb("#c98e42"), stroke: rgb("#5e3c10") + 0.85pt)
  circle((4.82, 1.68), radius: 0.17, fill: rgb("#e0aa5e"), stroke: none)
  circle((4.78, 1.71), radius: 0.07, fill: rgb("#fbe4c2"), stroke: none)
  line((5.74, 2.98), (5.59, 3.04), (5.43, 3.07), (5.27, 3.08), (5.12, 3.07), (4.96, 3.05), (4.81, 3.00), (4.67, 2.94), (4.53, 2.86), (4.41, 2.76), (4.29, 2.65), (4.20, 2.53), (4.11, 2.39), (4.05, 2.25), (4.00, 2.10), (4.24, 1.02), (4.34, 0.90), (4.45, 0.80), (4.57, 0.72), (4.70, 0.64), (4.84, 0.59), (4.99, 0.55), (5.14, 0.52), (5.29, 0.52), (5.44, 0.53), (5.59, 0.57), (5.73, 0.61), (5.87, 0.68), (6.00, 0.76), (6.11, 0.85), (6.11, 0.86), (6.05, 0.83), (5.98, 0.81), (5.91, 0.82), (5.84, 0.84), (5.77, 0.88), (5.70, 0.94), (5.63, 1.02), (5.56, 1.11), (5.49, 1.22), (5.43, 1.33), (5.38, 1.46), (5.34, 1.60), (5.30, 1.74), (5.27, 1.88), (5.25, 2.03), (5.24, 2.17), (5.23, 2.30), (5.24, 2.44), (5.26, 2.56), (5.28, 2.67), (5.32, 2.77), (5.36, 2.85), (5.41, 2.92), (5.47, 2.97), (5.53, 3.00), (5.59, 3.01), (5.66, 3.01), (5.74, 2.98), close: true, fill: rgb("#f2d830").transparentize(76%), stroke: none)
  line((2.54, 1.50), (3.45, 1.69), stroke: rgb("#6b5900") + 0.85pt)
  line((2.66, 0.99), (3.57, 1.18), stroke: rgb("#6b5900") + 0.85pt)
  line((3.41, 1.86), (4.11, 2.07), stroke: rgb("#6b5900") + 0.9pt)
  line((3.62, 1.01), (4.34, 1.10), stroke: rgb("#6b5900") + 0.9pt)
  line((5.74, 2.98), (5.59, 3.04), (5.43, 3.07), (5.27, 3.08), (5.12, 3.07), (4.96, 3.05), (4.81, 3.00), (4.67, 2.94), (4.53, 2.86), (4.41, 2.76), (4.29, 2.65), (4.20, 2.53), (4.11, 2.39), (4.05, 2.25), (4.00, 2.10), stroke: rgb("#6b5900") + 1.0pt)
  line((4.24, 1.02), (4.34, 0.90), (4.45, 0.80), (4.57, 0.72), (4.70, 0.64), (4.84, 0.59), (4.99, 0.55), (5.14, 0.52), (5.29, 0.52), (5.44, 0.53), (5.59, 0.57), (5.73, 0.61), (5.87, 0.68), (6.00, 0.76), (6.11, 0.85), stroke: rgb("#6b5900") + 1.0pt)
  line((6.11, 0.86), (6.17, 0.91), (6.22, 0.97), (6.26, 1.06), (6.29, 1.16), (6.32, 1.27), (6.34, 1.39), (6.34, 1.52), (6.34, 1.66), (6.33, 1.80), (6.31, 1.94), (6.28, 2.09), (6.24, 2.23), (6.20, 2.36), (6.14, 2.49), (6.08, 2.61), (6.02, 2.71), (5.95, 2.80), (5.88, 2.88), (5.81, 2.94), (5.74, 2.98), stroke: (paint: rgb("#6b5900"), thickness: 0.65pt, dash: "dashed"))
  line((5.74, 2.98), (5.66, 3.01), (5.59, 3.01), (5.53, 3.00), (5.47, 2.97), (5.41, 2.92), (5.36, 2.85), (5.32, 2.77), (5.28, 2.67), (5.26, 2.56), (5.24, 2.44), (5.23, 2.30), (5.24, 2.17), (5.25, 2.03), (5.27, 1.88), (5.30, 1.74), (5.34, 1.60), (5.38, 1.46), (5.43, 1.33), (5.49, 1.22), (5.56, 1.11), (5.63, 1.02), (5.70, 0.94), (5.77, 0.88), (5.84, 0.84), (5.91, 0.82), (5.98, 0.81), (6.05, 0.83), (6.11, 0.86), stroke: rgb("#6b5900") + 0.95pt)
})],
)

#v(0.4em)

#grid(
  columns: (1.02fr, 0.98fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Principio duale rispetto al cuscinetto volvente.* Le piste sono ricavate *longitudinalmente* anziché circonferenzialmente: in direzione assiale le sfere scorrono consentendo l'inclinazione $alpha$ ($beta$) tra gli alberi; in direzione circonferenziale i fianchi delle piste le bloccano lateralmente trasmettendo la coppia per contatto hertziano. Le piste possono avere sezione *circolare*, *ellittica* o ad *arco gotico* (cuspide centrale): i profili ellittico e ad arco gotico realizzano *quattro punti di contatto* caricando una retta d'azione o quella opposta a seconda del verso del moto.
  ],
  [//sistemare anche questa con "piste a sezione ellittica"
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-08.typ", max-h: 5.2cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/giunti/p4-fig03.typ", max-h: 6.8cm)
  ],
  [
    #fig-safe(image("../../images/giunti/ecm-c12-p4-rzeppa-3d.jpg"), max-h: 4.1cm)
  ],
)

*Verifica del momento trasmissibile.* La verifica a fatica è *più complessa* di quella dei cuscinetti perché il moto delle sfere *non è di puro rotolamento ma presenta anche strisciamento*. Assumendo che *tutte le sfere partecipino* alla trasmissione, il momento trasmissibile vale:

$ M = z dot k dot d^2 dot R_m $

dove $z$ è il numero di sfere, $k d^2$ è la forza di contatto hertziana sulla singola sfera e $R_m$ è la posizione radiale (braccio medio) dei centri delle sfere.

#v(0.3em)

#grid(
  columns: (1.02fr, 0.98fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Sollecitazioni sugli alberi.* Essendo omocinetico, i momenti entrante e uscente hanno pari modulo ($M_1 = M_2 = M$), ma sono inclinati dell'angolo $beta$. Per l'equilibrio vettoriale nasce un *momento di compensazione* $M_Q$:

    $ M_Q = 2 dot M dot sin(beta / 2) $
  ],
  [
 #fig-safe(include "../../figs/giunti/ecm-c12-p4-09.typ", max-h: 4.8cm)
  ],
)

Decomponendo $M_Q$ perpendicolarmente ai due assi si ottengono due *momenti flettenti* uguali che sollecitano entrambi gli alberi e i relativi supporti:

$ overline(M) = M dot tan(beta / 2) $

#v(0.3em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-10.typ", max-h: 4.2cm)
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-11.typ", max-h: 4.2cm)
  ],
)

#v(0.4em)

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Applicazioni:* compatto e adatto a elevati angoli di lavoro, è impiegato tipicamente nei *semiassi* degli autoveicoli a trazione anteriore (lato *mozzo ruota* sterzante e spesso lato *differenziale*) per assecondare sterzata ed escursione delle sospensioni.
  ],
  [
    #fig-safe(image("../../images/giunti/ecm-c12-p4-12.jpg"), max-h: 4.3cm)
  ],
)

=== Giunto a tripode

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto a tripode* è una soluzione omocinetica *più economica e compatta* dello Rzeppa, impiegata per *angoli di lavoro più piccoli* tra gli assi. *Tre perni* solidali all'albero motore (mozzo scanalato trattenuto da un anello *Seeger*), disposti simmetricamente a *$120 degree$*, sostengono *rulli sferici* montati su cuscinetti a rullini che scorrono entro *tre scanalature cilindriche longitudinali* nella campana dell'albero condotto.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-13.typ", max-h: 5.2cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    La rotazione dei rulli attorno ai tre assi a $120 degree$ consente l'inclinazione angolare relativa, mentre il loro scorrimento longitudinale lungo le piste permette anche moderati spostamenti assiali (impiego tipico in uscita dal differenziale automobilistico). L'insieme è protetto da una *cuffia elastomerica* di tenuta del lubrificante.
  ],
  [
    #fig-safe(image("../../images/giunti/ecm-c12-p4-14.jpg"), max-h: 4.0cm)
  ],
)

=== Giunti di sicurezza

#grid(
  columns: (0.98fr, 1.02fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto di sicurezza* (limitatore di coppia) impedisce la trasmissione di coppie superiori a un valore di taratura prefissato. Lo schema tipico ricalca una *frizione multidisco*: una *campana a profilo scanalato interno* (gialla in sezione) ospita dischi sottili a dentatura esterna, alternati a dischi a dentatura interna montati su un *albero scanalato* (verde). Una *molla* precaricata da una *ghiera filettata* spinge uno *spingidisco* che compatta il pacco dischi.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p4-15.typ", max-h: 5.4cm)
  ],
)

In esercizio normale la coppia si trasmette *per attrito* attraverso tutte le interfacce anulari tra i dischi. Superata la coppia limite, i dischi *slittano* vincendo l'azione della molla e disaccoppiando i due alberi; al rientro del carico nei limiti ammissibili, la molla richiude automaticamente il collegamento. La coppia di taratura si regola a macchina ferma tramite la *ghiera di precarico* (esistono diverse varianti per tipologia e disposizione della molla).

#v(0.2em)

#nota[
  *Natura ibrida e criticità termica:* tarato a macchina ferma e privo di comando esterno volontario (quindi *giunto*), si apre e richiude in moto sotto sovraccarico (avvicinandosi agli *innesti di sicurezza*). Durante lo slittamento l'attrito genera intensa *dissipazione termica* e usura: richiede adeguata capacità termica e deve intervenire solo in eventi eccezionali e rari (negli *innesti*, azionati frequentemente, occorrono invece apposite vie di fuga per smaltire il calore).
]

=== Riepilogo delle diverse tipologie di giunti

I giunti collegano due alberi per *trasmettere potenza* ($P = M dot Omega$) e si suddividono in quattro macro-classi:
- *Giunti rigidi:* solo per alberi *perfettamente allineati* (manicotto, gusci, dischi/flange); forzamenti di montaggio generano sovrasollecitazioni dannose. Protezione affidata a un elemento sacrificale.
- *Giunti elastici metallici:* nastri o pacchi di lamine (*Bibby* torsionalmente elastico, *Arpex* torsionalmente rigido con elasticità flessionale). Compensano piccoli disallineamenti, sopportano alte temperature, richiedono lubrificazione e offrono smorzamento minore.
- *Giunti elastici ad elastomeri:* elementi polimerici (*Norton*, *Steckflex*, *Periflex*). Elevato smorzamento interno, nessuna lubrificazione, limiti termici inferiori e caratterizzazione sperimentale. In tutti i giunti elastici occorre considerare sovraccarichi nei transitori e *instabilità dinamica da smorzamento rotante*: a differenza della *velocità critica* di risonanza (attraversabile rapidamente verso il campo supercritico), la *velocità limite di instabilità dinamica non deve mai essere raggiunta*, poiché oltre essa il moto a spirale divergente si manifesta sempre.
- *Giunti articolati:* spostamenti assiali, radiali o angolari di ampia entità tramite *cinematismo rigido*; si distinguono in *non omocinetici* (*Cardano semplice*) e *omocinetici* (*doppio Cardano* con $beta_2 = plus.minus beta_1$, *Rzeppa*, *tripode*).
- *Giunti di sicurezza:* limitano la coppia massima tramite attrito e precarico elastico tarabile, aprendosi e richiudendosi autonomamente senza comando esterno.
