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
    #canvas(length: 1cm, {
  import draw: *

  line((-4.35, 2.22), (4.80, 3.34), stroke: (paint: rgb(145, 145, 145), thickness: 0.55pt, dash: "dashed"))

  line((-4.05, 2.45), (-3.55, 2.51), (-3.55, 2.11), (-4.05, 2.05), close: true, fill: rgb(188, 172, 22), stroke: (paint: rgb(110, 98, 12), thickness: 0.8pt))
  line((-4.04, 2.36), (-3.58, 2.42), stroke: (paint: rgb(115, 102, 12), thickness: 0.65pt))
  line((-4.04, 2.25), (-3.58, 2.31), stroke: (paint: rgb(235, 222, 95), thickness: 0.9pt))
  line((-4.04, 2.14), (-3.58, 2.20), stroke: (paint: rgb(105, 92, 10), thickness: 0.65pt))
  circle((-4.05, 2.25), radius: (0.07, 0.20), fill: rgb(158, 144, 18), stroke: (paint: rgb(110, 98, 12), thickness: 0.75pt))

  circle((-2.90, 2.40), radius: (0.78, 1.12), fill: rgb(208, 192, 24), stroke: none)
  line((-2.97, 3.52), (-2.37, 3.59), (-2.23, 1.35), (-2.83, 1.28), close: true, fill: rgb(208, 192, 24), stroke: none)
  arc((-2.90, 2.40), start: 94.9deg, stop: 274.9deg, radius: (0.78, 1.12), anchor: "origin", stroke: (paint: rgb(118, 106, 12), thickness: 1pt))
  line((-2.97, 3.52), (-2.37, 3.59), stroke: (paint: rgb(118, 106, 12), thickness: 1pt))
  line((-2.83, 1.28), (-2.23, 1.35), stroke: (paint: rgb(118, 106, 12), thickness: 1pt))

  circle((-2.30, 2.47), radius: (0.78, 1.12), fill: rgb(240, 226, 52), stroke: (paint: rgb(120, 108, 12), thickness: 1pt))
  circle((-2.30, 2.47), radius: (0.64, 0.92), fill: rgb(166, 152, 18), stroke: (paint: rgb(110, 98, 10), thickness: 0.85pt))
  circle((-2.42, 2.46), radius: (0.50, 0.72), fill: rgb(214, 198, 32), stroke: (paint: rgb(138, 124, 15), thickness: 0.6pt))

  bezier((-2.52, 2.45), (-2.30, 3.39), (-2.46, 2.95), (-2.38, 3.24), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))
  bezier((-2.52, 2.45), (-1.75, 2.93), (-2.20, 2.66), (-1.94, 2.82), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))
  bezier((-2.52, 2.45), (-1.75, 2.01), (-2.20, 2.24), (-1.94, 2.10), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))
  bezier((-2.52, 2.45), (-2.30, 1.55), (-2.46, 1.96), (-2.38, 1.68), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))
  bezier((-2.52, 2.45), (-2.85, 2.01), (-2.72, 2.24), (-2.80, 2.10), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))
  bezier((-2.52, 2.45), (-2.85, 2.93), (-2.72, 2.66), (-2.80, 2.82), stroke: (paint: rgb(115, 102, 10), thickness: 2.1pt))

  circle((-2.32, 3.19), radius: (0.17, 0.14), fill: rgb(228, 214, 48), stroke: (paint: rgb(115, 102, 10), thickness: 0.75pt))
  circle((-2.36, 3.23), radius: 0.045, fill: rgb(255, 250, 175), stroke: none)
  circle((-1.89, 2.83), radius: 0.19, fill: rgb(248, 236, 74), stroke: (paint: rgb(118, 106, 12), thickness: 0.85pt))
  circle((-1.95, 2.89), radius: 0.06, fill: rgb(255, 252, 195), stroke: none)
  circle((-1.89, 2.11), radius: 0.19, fill: rgb(248, 236, 74), stroke: (paint: rgb(118, 106, 12), thickness: 0.85pt))
  circle((-1.95, 2.17), radius: 0.06, fill: rgb(255, 252, 195), stroke: none)
  circle((-2.32, 1.75), radius: (0.17, 0.14), fill: rgb(224, 210, 44), stroke: (paint: rgb(115, 102, 10), thickness: 0.75pt))
  circle((-2.74, 2.11), radius: 0.17, fill: rgb(212, 196, 36), stroke: (paint: rgb(115, 102, 10), thickness: 0.75pt))
  circle((-2.79, 2.16), radius: 0.05, fill: rgb(252, 245, 150), stroke: none)
  circle((-2.74, 2.83), radius: 0.17, fill: rgb(212, 196, 36), stroke: (paint: rgb(115, 102, 10), thickness: 0.75pt))
  circle((-2.79, 2.88), radius: 0.05, fill: rgb(252, 245, 150), stroke: none)

  circle((-2.45, 2.46), radius: (0.24, 0.34), fill: rgb(242, 228, 60), stroke: (paint: rgb(130, 118, 14), thickness: 0.75pt))
  line((-2.45, 2.80), (-2.84, 2.52), (-2.84, 2.38), (-2.45, 2.12), close: true, fill: rgb(228, 214, 46), stroke: (paint: rgb(130, 118, 14), thickness: 0.75pt))
  line((-2.48, 2.66), (-2.82, 2.49), stroke: (paint: rgb(252, 244, 145), thickness: 1pt))
  circle((-2.84, 2.45), radius: (0.05, 0.07), fill: rgb(115, 102, 10), stroke: none)

  line((-1.73, 1.36), (-0.63, 0.84), (-0.67, 0.76), (-1.77, 1.28), close: true, fill: rgb(222, 46, 26), stroke: (paint: rgb(132, 18, 10), thickness: 0.75pt))
  circle((-1.75, 1.32), radius: 0.135, fill: rgb(235, 52, 30), stroke: (paint: rgb(132, 18, 10), thickness: 0.8pt))
  circle((-1.79, 1.36), radius: 0.04, fill: rgb(255, 182, 162), stroke: none)
  circle((-0.96, 0.95), radius: 0.165, fill: rgb(235, 52, 30), stroke: (paint: rgb(132, 18, 10), thickness: 0.8pt))
  circle((-1.01, 1.00), radius: 0.05, fill: rgb(255, 182, 162), stroke: none)
  circle((-0.65, 0.80), radius: 0.125, fill: rgb(235, 52, 30), stroke: (paint: rgb(132, 18, 10), thickness: 0.8pt))
  circle((-0.69, 0.84), radius: 0.038, fill: rgb(255, 182, 162), stroke: none)

  circle((-0.11, 2.87), radius: (0.73, 0.79), stroke: (paint: rgb(18, 70, 158), thickness: 2.8pt))
  arc((0.11, 2.78), start: -80deg, stop: 80deg, radius: (0.92, 1.00), anchor: "origin", stroke: (paint: rgb(18, 70, 158), thickness: 2.8pt))
  line((0.62, 2.87), (1.03, 2.78), stroke: (paint: rgb(18, 70, 158), thickness: 2.8pt))
  line((0.20, 2.19), (0.50, 1.91), stroke: (paint: rgb(18, 70, 158), thickness: 2.8pt))

  circle((0.15, 2.76), radius: 1.02, stroke: (paint: rgb(24, 96, 212), thickness: 3.4pt))
  arc((0.11, 2.78), start: 80deg, stop: 280deg, radius: (0.92, 1.00), anchor: "origin", stroke: (paint: rgb(30, 112, 232), thickness: 3.4pt))
  line((0.31, 3.55), (0.64, 3.65), stroke: (paint: rgb(28, 106, 224), thickness: 3.2pt))
  line((-0.42, 3.55), (-0.28, 3.65), stroke: (paint: rgb(32, 116, 236), thickness: 3.4pt))
  line((-0.84, 2.87), (-0.81, 2.78), stroke: (paint: rgb(32, 116, 236), thickness: 3.4pt))
  line((-0.53, 2.19), (-0.42, 1.91), stroke: (paint: rgb(32, 116, 236), thickness: 3.4pt))

  bezier((1.03, 2.78), (0.58, 2.58), (1.16, 2.70), (0.92, 2.60), stroke: (paint: rgb(24, 96, 212), thickness: 3.3pt))
  bezier((0.64, 3.65), (0.58, 2.58), (0.88, 3.34), (0.80, 2.94), stroke: (paint: rgb(28, 108, 228), thickness: 3.5pt))
  bezier((-0.28, 3.65), (0.58, 2.58), (0.10, 3.40), (0.38, 3.00), stroke: (paint: rgb(32, 116, 236), thickness: 3.6pt))
  bezier((-0.81, 2.78), (0.58, 2.58), (-0.34, 2.64), (0.15, 2.58), stroke: (paint: rgb(32, 116, 236), thickness: 3.6pt))
  bezier((-0.42, 1.91), (0.58, 2.58), (-0.04, 1.96), (0.32, 2.24), stroke: (paint: rgb(32, 116, 236), thickness: 3.6pt))
  bezier((0.50, 1.91), (0.58, 2.58), (0.78, 2.04), (0.78, 2.34), stroke: (paint: rgb(26, 102, 220), thickness: 3.4pt))

  bezier((-0.28, 3.65), (0.58, 2.58), (0.10, 3.40), (0.38, 3.00), stroke: (paint: rgb(115, 178, 255), thickness: 0.7pt))
  bezier((-0.81, 2.78), (0.58, 2.58), (-0.34, 2.64), (0.15, 2.58), stroke: (paint: rgb(115, 178, 255), thickness: 0.7pt))
  circle((0.58, 2.58), radius: 0.17, fill: rgb(28, 108, 228), stroke: (paint: rgb(15, 65, 155), thickness: 0.8pt))
  circle((0.58, 2.58), radius: 0.075, fill: white, stroke: (paint: rgb(15, 65, 155), thickness: 0.85pt))

  line((2.92, 3.35), (3.71, 3.45), (3.77, 2.97), (2.98, 2.87), close: true, fill: rgb(168, 198, 174), stroke: (paint: rgb(72, 94, 78), thickness: 0.85pt))
  line((2.94, 3.26), (3.72, 3.36), stroke: (paint: rgb(220, 238, 224), thickness: 1.4pt))

  line((3.67, 3.51), (4.49, 3.61), (4.60, 3.48), (4.62, 3.16), (4.57, 2.99), (3.75, 2.89), close: true, fill: rgb(144, 174, 150), stroke: (paint: rgb(65, 86, 70), thickness: 0.85pt))
  circle((3.71, 3.20), radius: (0.09, 0.31), fill: rgb(158, 188, 164), stroke: (paint: rgb(65, 86, 70), thickness: 0.75pt))
  line((3.76, 3.42), (4.57, 3.52), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.78, 3.31), (4.59, 3.41), stroke: (paint: rgb(212, 232, 216), thickness: 0.9pt))
  line((3.79, 3.20), (4.60, 3.30), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.79, 3.09), (4.60, 3.19), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.78, 2.98), (4.59, 3.08), stroke: (paint: rgb(58, 76, 62), thickness: 0.8pt))

  circle((2.32, 3.03), radius: (0.76, 0.88), fill: rgb(156, 186, 162), stroke: (paint: rgb(65, 88, 72), thickness: 0.95pt))
  line((1.84, 3.64), (2.42, 3.88), (2.82, 3.68), (2.94, 3.42), (1.96, 3.30), close: true, fill: rgb(192, 218, 196), stroke: (paint: rgb(68, 90, 74), thickness: 0.75pt))
  line((1.96, 3.30), (2.94, 3.42), (3.06, 3.12), (2.02, 3.00), close: true, fill: rgb(126, 156, 134), stroke: (paint: rgb(68, 90, 74), thickness: 0.75pt))
  line((1.98, 3.36), (2.98, 3.48), (3.02, 3.34), (2.00, 3.22), close: true, fill: rgb(224, 242, 228), stroke: (paint: rgb(72, 94, 78), thickness: 0.65pt))
  line((2.02, 3.00), (3.06, 3.12), (2.96, 2.66), (1.94, 2.54), close: true, fill: rgb(184, 212, 188), stroke: (paint: rgb(68, 90, 74), thickness: 0.75pt))
  line((2.00, 3.04), (3.06, 3.16), (3.05, 3.02), (2.00, 2.90), close: true, fill: rgb(216, 236, 220), stroke: (paint: rgb(72, 94, 78), thickness: 0.65pt))
  line((1.94, 2.54), (2.96, 2.66), (2.68, 2.26), (1.82, 2.30), close: true, fill: rgb(116, 146, 124), stroke: (paint: rgb(68, 90, 74), thickness: 0.75pt))

  circle((1.75, 2.96), radius: (0.28, 0.46), fill: rgb(166, 196, 172), stroke: (paint: rgb(65, 88, 72), thickness: 0.85pt))
  circle((1.66, 2.95), radius: (0.15, 0.25), fill: rgb(198, 224, 202), stroke: (paint: rgb(65, 88, 72), thickness: 0.75pt))
  circle((1.62, 2.94), radius: (0.06, 0.11), fill: rgb(58, 78, 64), stroke: none)

  line((1.62, -0.14), (1.86, -0.22), (2.06, -0.62), (2.32, -0.66), (2.52, -1.08), (2.78, -1.14), (3.14, -1.62), (3.03, -2.10), (2.90, -2.24), (2.76, -2.15), (2.62, -2.30), (2.44, -2.18), (2.28, -2.34), (2.11, -2.20), close: true, fill: rgb(95, 105, 115).transparentize(84%), stroke: none)

  line((-3.54, -2.14), (-2.28, -1.83), (-2.12, -2.49), (-3.38, -2.80), close: true, fill: rgb(188, 174, 36), stroke: (paint: rgb(112, 102, 14), thickness: 0.85pt))
  bezier((-3.54, -2.14), (-3.38, -2.80), (-3.67, -2.17), (-3.51, -2.83), stroke: (paint: rgb(112, 102, 14), thickness: 0.85pt))
  bezier((-3.54, -2.14), (-3.38, -2.80), (-3.41, -2.11), (-3.25, -2.77), stroke: (paint: rgb(112, 102, 14), thickness: 0.75pt))
  line((-3.52, -2.25), (-2.26, -1.94), stroke: (paint: rgb(112, 102, 14), thickness: 0.75pt))
  line((-3.49, -2.35), (-2.23, -2.04), stroke: (paint: rgb(238, 228, 102), thickness: 1.1pt))
  line((-3.46, -2.47), (-2.20, -2.16), stroke: (paint: rgb(112, 102, 14), thickness: 0.75pt))
  line((-3.43, -2.59), (-2.17, -2.28), stroke: (paint: rgb(105, 95, 12), thickness: 0.75pt))
  line((-3.40, -2.69), (-2.14, -2.38), stroke: (paint: rgb(100, 90, 12), thickness: 0.8pt))

  line((-2.26, -1.92), (-1.14, -1.64), (-1.02, -2.12), (-2.14, -2.40), close: true, fill: rgb(206, 194, 78).transparentize(22%), stroke: (paint: rgb(128, 118, 28), thickness: 0.8pt))
  line((-2.23, -2.02), (-1.11, -1.74), stroke: (paint: rgb(246, 240, 152), thickness: 1.4pt))

  line((-1.19, -1.45), (-0.27, -1.22), (-0.05, -2.08), (-0.97, -2.31), close: true, fill: rgb(198, 184, 52).transparentize(40%), stroke: (paint: rgb(130, 118, 28), thickness: 0.8pt))
  bezier((-1.19, -1.45), (-0.97, -2.31), (-1.34, -1.49), (-1.12, -2.35), stroke: (paint: rgb(130, 118, 28), thickness: 0.75pt))
  bezier((-1.19, -1.45), (-0.97, -2.31), (-1.04, -1.41), (-0.82, -2.27), stroke: (paint: rgb(130, 118, 28), thickness: 0.65pt))

  line((-1.04, -1.87), (-0.27, -1.22), (-0.05, -2.08), close: true, fill: rgb(188, 170, 22).transparentize(55%), stroke: (paint: rgb(142, 128, 18), thickness: 0.6pt))

  line((2.13, -1.37), (3.29, -1.66), (3.17, -2.12), (2.01, -1.83), close: true, fill: rgb(168, 198, 174), stroke: (paint: rgb(76, 98, 82), thickness: 0.8pt))
  line((2.15, -1.46), (3.27, -1.74), stroke: (paint: rgb(218, 236, 222), thickness: 1.3pt))

  line((3.28, -1.58), (4.48, -1.87), (4.56, -2.02), (4.48, -2.36), (4.32, -2.49), (3.12, -2.20), close: true, fill: rgb(144, 174, 150), stroke: (paint: rgb(65, 86, 70), thickness: 0.85pt))
  bezier((3.28, -1.58), (3.12, -2.20), (3.16, -1.55), (3.00, -2.17), stroke: (paint: rgb(65, 86, 70), thickness: 0.75pt))
  line((3.25, -1.67), (4.44, -1.97), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.23, -1.78), (4.42, -2.08), stroke: (paint: rgb(212, 232, 216), thickness: 0.9pt))
  line((3.20, -1.89), (4.39, -2.19), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.17, -2.00), (4.36, -2.30), stroke: (paint: rgb(62, 82, 68), thickness: 0.75pt))
  line((3.15, -2.10), (4.34, -2.40), stroke: (paint: rgb(58, 76, 62), thickness: 0.8pt))

  circle((1.05, -1.35), radius: 0.84, fill: rgb(186, 204, 108), stroke: (paint: rgb(96, 114, 48), thickness: 0.85pt))
  bezier((0.36, -0.96), (1.68, -0.88), (0.78, -0.74), (1.30, -0.74), stroke: (paint: rgb(105, 122, 52), thickness: 1.1pt))
  bezier((0.26, -1.33), (1.84, -1.32), (0.76, -1.24), (1.36, -1.24), stroke: (paint: rgb(228, 238, 152), thickness: 2pt))
  bezier((0.26, -1.40), (1.84, -1.39), (0.76, -1.32), (1.36, -1.32), stroke: (paint: rgb(96, 114, 48), thickness: 0.95pt))
  bezier((0.38, -1.78), (1.70, -1.74), (0.80, -1.92), (1.32, -1.90), stroke: (paint: rgb(96, 114, 48), thickness: 1.1pt))

  line((-0.65, -1.81), (0.35, -1.15), (0.41, -1.23), (-0.59, -1.89), close: true, fill: rgb(216, 74, 18), stroke: (paint: rgb(138, 38, 8), thickness: 0.7pt))
  circle((-0.62, -1.85), radius: 0.13, fill: rgb(224, 68, 18), stroke: (paint: rgb(138, 38, 8), thickness: 0.75pt))
  circle((0.02, -1.43), radius: 0.15, fill: rgb(224, 68, 18), stroke: (paint: rgb(138, 38, 8), thickness: 0.75pt))
  circle((0.38, -1.19), radius: 0.12, fill: rgb(224, 68, 18), stroke: (paint: rgb(138, 38, 8), thickness: 0.75pt))

  circle((1.05, -1.35), radius: 0.96, stroke: (paint: rgb(35, 92, 102), thickness: 3.8pt))
  arc((0.93, -1.35), start: -84deg, stop: 84deg, radius: (0.36, 0.96), anchor: "origin", stroke: (paint: rgb(35, 92, 102), thickness: 4pt))
  arc((1.17, -1.35), start: -84deg, stop: 84deg, radius: (0.36, 0.96), anchor: "origin", stroke: (paint: rgb(35, 92, 102), thickness: 4pt))
  bezier((0.12, -1.18), (1.36, -0.87), (0.55, -0.88), (1.02, -0.84), stroke: (paint: rgb(35, 92, 102), thickness: 3.8pt))
  bezier((0.12, -1.52), (1.36, -1.83), (0.55, -1.82), (1.02, -1.86), stroke: (paint: rgb(35, 92, 102), thickness: 3.8pt))

  circle((1.23, -0.52), radius: 0.27, fill: rgb(218, 178, 86), stroke: (paint: rgb(92, 82, 42), thickness: 0.95pt))
  circle((1.16, -0.45), radius: 0.09, fill: rgb(248, 224, 152), stroke: none)
  circle((1.41, -1.35), radius: 0.29, fill: rgb(214, 172, 82), stroke: (paint: rgb(88, 78, 40), thickness: 1.05pt))
  circle((1.34, -1.27), radius: 0.10, fill: rgb(246, 220, 148), stroke: none)
  circle((1.23, -2.18), radius: 0.25, fill: rgb(186, 140, 64), stroke: (paint: rgb(85, 70, 35), thickness: 0.9pt))
  circle((1.17, -2.12), radius: 0.075, fill: rgb(228, 192, 118), stroke: none)

  line((-0.27, -1.22), (-0.10, -0.73), (0.12, -0.39), (0.41, -0.20), (0.75, -0.13), (1.22, -0.12), (1.59, -0.10), (1.98, -0.43), (2.21, -0.97), (2.27, -1.60), (2.11, -2.20), (1.77, -2.46), (1.35, -2.57), (0.83, -2.52), (0.33, -2.33), (-0.05, -2.08), close: true, fill: rgb(208, 190, 44).transparentize(66%), stroke: none)

  bezier((-0.27, -1.22), (0.75, -0.13), (-0.08, -0.45), (0.25, -0.14), stroke: (paint: rgb(148, 134, 30), thickness: 1pt))
  bezier((0.75, -0.13), (1.59, -0.10), (1.08, -0.12), (1.38, -0.12), stroke: (paint: rgb(148, 134, 30), thickness: 1pt))
  bezier((1.59, -0.10), (2.11, -2.20), (2.18, -0.35), (2.48, -1.48), stroke: (paint: rgb(148, 134, 30), thickness: 1pt))
  bezier((1.59, -0.10), (2.11, -2.20), (1.32, -0.60), (1.58, -1.78), stroke: (paint: rgb(148, 134, 30).transparentize(45%), thickness: 0.75pt, dash: "dashed"))
  bezier((2.11, -2.20), (1.35, -2.57), (1.92, -2.42), (1.65, -2.55), stroke: (paint: rgb(148, 134, 30), thickness: 1pt))
  bezier((1.35, -2.57), (-0.05, -2.08), (0.85, -2.60), (0.35, -2.40), stroke: (paint: rgb(148, 134, 30), thickness: 1pt))

  bezier((1.62, -0.14), (2.06, -0.62), (1.84, -0.12), (1.98, -0.35), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  bezier((2.06, -0.62), (2.52, -1.08), (2.30, -0.58), (2.44, -0.82), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  bezier((2.52, -1.08), (3.14, -1.62), (2.78, -1.06), (2.96, -1.36), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  bezier((2.11, -2.20), (2.44, -2.18), (2.24, -2.38), (2.36, -2.32), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  bezier((2.44, -2.18), (2.76, -2.15), (2.58, -2.34), (2.68, -2.28), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  bezier((2.76, -2.15), (3.03, -2.10), (2.88, -2.28), (2.97, -2.22), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))
  line((3.14, -1.62), (3.03, -2.10), stroke: (paint: rgb(78, 84, 92), thickness: 0.8pt, dash: "dashed"))

  line((-3.90, -2.58), (1.92, -1.13), stroke: (paint: rgb(138, 118, 12), thickness: 0.7pt, dash: "dashed"))
  line((0.18, -1.13), (4.74, -2.27), stroke: (paint: rgb(52, 95, 68), thickness: 0.7pt, dash: "dashed"))
  line((1.05, 0.25), (1.05, -2.85), stroke: (paint: rgb(20, 82, 195), thickness: 0.85pt, dash: "dashed"))
  circle((1.05, -1.35), radius: 0.055, fill: rgb(195, 25, 25), stroke: (paint: white, thickness: 0.5pt))

  line((-2.62, 3.56), (-2.90, 4.18), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((-2.90, 4.24), text(size: 7pt)[*Campana esterna* \ (piste eccentriche)], anchor: "south")

  line((-1.80, 2.95), (-1.35, 3.80), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((-1.35, 3.85), text(size: 7pt)[*Sfere* \ *d'acciaio*], anchor: "south")

  line((0.30, 3.77), (0.45, 4.26), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((0.45, 4.32), text(size: 7pt)[*Gabbia sferica*], anchor: "south")

  line((2.46, 3.88), (2.90, 4.22), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((2.90, 4.28), text(size: 7pt)[*Nucleo interno* \ (piste eccentriche)], anchor: "south")

  line((-1.35, 1.10), (-2.15, 0.72), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((-2.20, 0.72), text(size: 7pt)[*Perno di guida*], anchor: "east")

  content((1.05, 0.30), text(size: 7pt, fill: rgb(15, 68, 172))[*Piano omocinetico* (bisettore)], anchor: "south")

  line((2.48, -0.82), (3.10, -0.35), stroke: (paint: rgb(105, 105, 105), thickness: 0.55pt))
  content((3.15, -0.35), text(size: 7pt)[*Cuffia conica* \ *in gomma*], anchor: "west")

  content((-2.90, -2.95), text(size: 7pt)[Albero motore ($omega_1$)], anchor: "north")
  content((3.55, -2.65), text(size: 7pt)[Albero condotto ($omega_2 = omega_1$)], anchor: "north")
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
