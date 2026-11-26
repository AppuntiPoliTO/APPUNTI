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

  // =========================================================================
  // PARTE SUPERIORE: VISTA ESPLOSA COASSIALE DEL GIUNTO OMOCINETICO RZEPPA
  // Asse di montaggio esploso inclinato di ~10°: da (-3.8, 1.98) a (4.5, 2.75)
  // =========================================================================

  // Linea d'asse di montaggio tratteggiata (sottile, sullo sfondo)
  line((-4.1, 1.95), (4.6, 2.76), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt, dash: "dashed"))

  // --- 1. CAMPANA ESTERNA GIALLA CON CAVITÀ SFERICA E 6 PISTE MERIDIANE ---
  // Codolo posteriore a sinistra
  line((-3.88, 2.24), (-3.52, 2.28), (-3.45, 1.82), (-3.81, 1.78), close: true, fill: rgb(185, 170, 20), stroke: (paint: rgb(115, 105, 12), thickness: 0.8pt))
  circle((-3.85, 2.01), radius: (0.09, 0.23), fill: rgb(155, 142, 15), stroke: (paint: rgb(115, 105, 12), thickness: 0.75pt))

  // Calotta cilindrico-sferica esterna della campana
  line((-2.82, 3.46), (-2.25, 3.52), (-2.05, 0.90), (-2.62, 0.84), close: true, fill: rgb(200, 185, 20), stroke: none)
  arc((-2.68, 2.15), start: 95deg, stop: 265deg, radius: (0.98, 1.32), anchor: "origin", fill: rgb(200, 185, 20), stroke: (paint: rgb(120, 110, 10), thickness: 1.05pt))
  line((-2.76, 3.46), (-2.18, 3.51), stroke: (paint: rgb(120, 110, 10), thickness: 1.05pt))
  line((-2.60, 0.84), (-2.02, 0.89), stroke: (paint: rgb(120, 110, 10), thickness: 1.05pt))

  // Faccia anulare frontale della campana
  circle((-2.15, 2.20), radius: (0.98, 1.32), fill: rgb(235, 220, 40), stroke: (paint: rgb(125, 115, 12), thickness: 1.05pt))

  // Cavità sferica interna con piste eccentriche meridiane
  circle((-2.12, 2.20), radius: (0.82, 1.12), fill: rgb(155, 142, 14), stroke: (paint: rgb(110, 100, 10), thickness: 0.9pt))
  circle((-2.20, 2.20), radius: (0.66, 0.90), fill: rgb(210, 195, 28), stroke: (paint: rgb(135, 122, 15), thickness: 0.65pt))

  // Piste meridiane scavate nella cavità interna (archi eccentrici)
  bezier((-2.52, 2.20), (-2.05, 3.30), (-2.42, 2.82), (-2.22, 3.18), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))
  bezier((-2.52, 2.20), (-1.35, 2.75), (-2.15, 2.52), (-1.70, 2.68), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))
  bezier((-2.52, 2.20), (-1.38, 1.62), (-2.15, 1.88), (-1.72, 1.70), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))
  bezier((-2.52, 2.20), (-2.12, 1.08), (-2.42, 1.58), (-2.25, 1.22), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))
  bezier((-2.52, 2.20), (-2.82, 1.65), (-2.72, 1.95), (-2.78, 1.78), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))
  bezier((-2.52, 2.20), (-2.78, 2.78), (-2.70, 2.48), (-2.75, 2.65), stroke: (paint: rgb(115, 105, 10), thickness: 2.2pt))

  // 6 Sfere d'acciaio (dorate nella vista esplosa dentro le piste della campana)
  // Sfera 1 (alta)
  circle((-2.12, 3.12), radius: (0.19, 0.15), fill: rgb(225, 210, 45), stroke: (paint: rgb(115, 105, 10), thickness: 0.75pt))
  // Sfera 2 (alta-destra, in primo piano)
  circle((-1.54, 2.68), radius: 0.22, fill: rgb(248, 235, 70), stroke: (paint: rgb(125, 112, 12), thickness: 0.85pt))
  circle((-1.48, 2.74), radius: 0.07, fill: rgb(255, 252, 185), stroke: none)
  // Sfera 3 (bassa-destra, in primo piano)
  circle((-1.56, 1.72), radius: 0.22, fill: rgb(248, 235, 70), stroke: (paint: rgb(125, 112, 12), thickness: 0.85pt))
  circle((-1.50, 1.78), radius: 0.07, fill: rgb(255, 252, 185), stroke: none)
  // Sfera 4 (bassa)
  circle((-2.18, 1.28), radius: (0.19, 0.15), fill: rgb(225, 210, 45), stroke: (paint: rgb(115, 105, 10), thickness: 0.75pt))
  // Sfera 5 (bassa-sinistra)
  circle((-2.72, 1.74), radius: 0.20, fill: rgb(210, 195, 32), stroke: (paint: rgb(115, 105, 10), thickness: 0.75pt))
  circle((-2.67, 1.79), radius: 0.055, fill: rgb(250, 242, 140), stroke: none)
  // Sfera 6 (alta-sinistra)
  circle((-2.68, 2.66), radius: 0.20, fill: rgb(210, 195, 32), stroke: (paint: rgb(115, 105, 10), thickness: 0.75pt))
  circle((-2.63, 2.71), radius: 0.055, fill: rgb(250, 242, 140), stroke: none)

  // Sede conica centrale di guida del perno
  circle((-2.38, 2.20), radius: (0.32, 0.42), fill: rgb(242, 228, 58), stroke: (paint: rgb(135, 122, 15), thickness: 0.75pt))
  line((-2.38, 2.62), (-2.82, 2.28), (-2.82, 2.12), (-2.38, 1.78), close: true, fill: rgb(228, 212, 42), stroke: (paint: rgb(135, 122, 15), thickness: 0.75pt))
  circle((-2.82, 2.20), radius: (0.06, 0.09), fill: rgb(115, 105, 10), stroke: none)

  // --- 2. PERNO DI GUIDA / CENTRAGGIO DEL PIANO OMOCINETICO (Rosso) ---
  line((-1.80, 0.96), (-0.60, 0.36), (-0.66, 0.24), (-1.86, 0.84), close: true, fill: rgb(220, 45, 25), stroke: (paint: rgb(135, 20, 10), thickness: 0.75pt))
  circle((-1.83, 0.90), radius: 0.15, fill: rgb(235, 52, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.8pt))
  circle((-1.87, 0.94), radius: 0.045, fill: rgb(255, 175, 155), stroke: none)
  circle((-0.96, 0.47), radius: 0.185, fill: rgb(235, 52, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.8pt))
  circle((-1.01, 0.52), radius: 0.055, fill: rgb(255, 175, 155), stroke: none)
  circle((-0.63, 0.30), radius: 0.145, fill: rgb(235, 52, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.8pt))
  circle((-0.67, 0.34), radius: 0.04, fill: rgb(255, 175, 155), stroke: none)

  // --- 3. GABBIA SFERICA BLU (Trattiene le 6 sfere sul piano bisettore) ---
  // Nervature posteriori (in secondo piano, blu più scuro)
  arc((0.15, 2.28), start: 0deg, stop: 360deg, radius: (1.08, 0.48), anchor: "origin", stroke: (paint: rgb(15, 65, 155), thickness: 2.8pt))
  arc((0.15, 2.28), start: 0deg, stop: 360deg, radius: (0.48, 1.08), anchor: "origin", stroke: (paint: rgb(15, 65, 155), thickness: 2.8pt))
  line((-0.76, 2.80), (1.06, 1.76), stroke: (paint: rgb(15, 65, 155), thickness: 2.5pt))
  line((-0.76, 1.76), (1.06, 2.80), stroke: (paint: rgb(15, 65, 155), thickness: 2.5pt))

  // Calotta sferica della gabbia e meridiani anteriori
  circle((0.15, 2.28), radius: 1.10, stroke: (paint: rgb(22, 98, 215), thickness: 4.2pt))
  bezier((-0.55, 3.12), (0.55, 2.10), (-0.12, 2.84), (0.28, 2.44), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))
  bezier((0.55, 2.10), (0.96, 1.54), (0.72, 1.88), (0.86, 1.70), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))
  bezier((-0.93, 2.14), (0.55, 2.10), (-0.45, 2.06), (0.15, 2.06), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))
  bezier((0.55, 2.10), (1.22, 2.38), (0.82, 2.16), (1.08, 2.26), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))
  bezier((0.32, 3.36), (0.55, 2.10), (0.50, 2.98), (0.58, 2.50), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))
  bezier((0.55, 2.10), (0.04, 1.20), (0.50, 1.72), (0.30, 1.38), stroke: (paint: rgb(28, 108, 228), thickness: 4pt))

  // Fascia equatoriale con le 6 finestre di guida delle sfere
  circle((0.02, 2.34), radius: (0.86, 0.94), stroke: (paint: rgb(32, 118, 238), thickness: 3.6pt))
  circle((-0.56, 2.86), radius: (0.19, 0.26), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))
  circle((-0.80, 2.04), radius: (0.15, 0.25), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))
  circle((-0.18, 1.38), radius: (0.25, 0.15), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))
  circle((0.34, 3.16), radius: (0.25, 0.15), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))
  circle((1.03, 2.56), radius: (0.15, 0.24), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))
  circle((0.83, 1.62), radius: (0.21, 0.17), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.1pt))

  // Polo anteriore forato della gabbia
  circle((0.55, 2.10), radius: 0.22, fill: rgb(28, 108, 228), stroke: none)
  circle((0.55, 2.10), radius: 0.10, fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 1pt))

  // --- 4. NUCLEO (ANELLO) INTERNO SFERICO CON 6 PISTE E ALBERO CONDOTTO ---
  // Albero cilindrico intermedio
  line((2.55, 2.66), (3.58, 2.82), (3.65, 2.32), (2.62, 2.16), close: true, fill: rgb(165, 195, 170), stroke: (paint: rgb(80, 100, 85), thickness: 0.85pt))
  line((2.58, 2.56), (3.60, 2.72), stroke: (paint: rgb(215, 235, 220), thickness: 1.5pt))

  // Estremità scanalata destra (mille-righe)
  line((3.52, 2.87), (4.30, 2.99), (4.40, 2.85), (4.44, 2.55), (4.36, 2.35), (3.60, 2.23), close: true, fill: rgb(140, 170, 145), stroke: (paint: rgb(70, 90, 75), thickness: 0.85pt))
  circle((3.56, 2.55), radius: (0.10, 0.32), fill: rgb(155, 185, 160), stroke: (paint: rgb(70, 90, 75), thickness: 0.75pt))
  line((3.58, 2.81), (4.34, 2.93), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.62, 2.71), (4.39, 2.83), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.64, 2.59), (4.41, 2.71), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.63, 2.47), (4.40, 2.59), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.60, 2.35), (4.37, 2.47), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))

  // Nucleo sferico interno con 6 piste meridiane (senza cursore del mouse!)
  circle((2.28, 2.38), radius: (0.76, 0.95), fill: rgb(160, 190, 165), stroke: (paint: rgb(75, 95, 80), thickness: 0.95pt))
  // Pista superiore e nervatura alta
  line((1.68, 2.96), (2.58, 3.26), (2.76, 2.94), (1.76, 2.76), close: true, fill: rgb(180, 208, 185), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))
  // Pista medio-alta illuminata
  line((1.76, 2.76), (2.76, 2.94), (2.98, 2.58), (1.92, 2.42), close: true, fill: rgb(205, 228, 210), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))
  // Pista centrale concava (gola per la sfera)
  line((1.92, 2.42), (2.98, 2.58), (2.95, 2.18), (1.90, 2.02), close: true, fill: rgb(128, 158, 135), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))
  // Nervatura centrale sferica tra le piste
  line((1.88, 2.44), (2.98, 2.60), (3.00, 2.48), (1.90, 2.32), close: true, fill: rgb(228, 244, 230), stroke: (paint: rgb(80, 100, 85), thickness: 0.7pt))
  // Pista inferiore concava
  line((1.90, 2.02), (2.95, 2.18), (2.78, 1.68), (1.78, 1.58), close: true, fill: rgb(172, 202, 178), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))
  // Nervatura inferiore sferica
  line((1.88, 2.04), (2.95, 2.20), (2.96, 2.08), (1.89, 1.92), close: true, fill: rgb(215, 235, 218), stroke: (paint: rgb(80, 100, 85), thickness: 0.7pt))
  // Gola inferiore in ombra
  line((1.78, 1.58), (2.78, 1.68), (2.45, 1.42), (1.62, 1.44), close: true, fill: rgb(115, 145, 122), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))

  // Faccia frontale sinistra del nucleo con cavità sferica per il perno rosso
  circle((1.72, 2.28), radius: (0.30, 0.50), fill: rgb(150, 180, 155), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))
  circle((1.60, 2.24), radius: (0.15, 0.26), fill: rgb(178, 208, 182), stroke: (paint: rgb(75, 95, 80), thickness: 0.75pt))
  circle((1.56, 2.23), radius: (0.06, 0.11), fill: rgb(70, 90, 75), stroke: none)


  // =========================================================================
  // PARTE INFERIORE: GIUNTO RZEPPA ASSEMBLATO E ANGOLATO (VISTA SEMITRASPARENTE)
  // Centro del giunto O = (1.12, -0.82)
  // Asse albero 1 (sinistro): +14°  |  Asse albero 2 (destro): -14°
  // Piano omocinetico (bisettore): verticale per O, con angolo metà alpha/2
  // =========================================================================

  // --- 0. CUFFIA CONICA PROTETTIVA IN GOMMA (In sezione semitrasparente grigia) ---
  // Avvolge l'imboccatura destra della campana fino all'albero verde-grigio
  line((1.98, 0.22), (2.32, 0.08), (2.48, 0.14), (2.68, -0.15), (2.82, -0.10), (3.08, -0.95), (2.85, -1.78), (2.58, -1.92), (2.42, -2.08), (2.18, -1.98), (1.92, -2.12), close: true, fill: rgb(90, 95, 100).transparentize(78%), stroke: none)
  // Profilo superiore soffietto in gomma
  bezier((1.98, 0.22), (2.32, 0.02), (2.12, 0.30), (2.25, 0.18), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))
  bezier((2.32, 0.02), (2.65, -0.28), (2.48, 0.15), (2.60, -0.05), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))
  bezier((2.65, -0.28), (3.05, -0.98), (2.82, -0.20), (2.98, -0.65), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))
  // Profilo inferiore soffietto in gomma
  bezier((1.92, -2.12), (2.32, -1.95), (2.08, -2.22), (2.22, -2.08), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))
  bezier((2.32, -1.95), (2.65, -1.75), (2.48, -2.05), (2.58, -1.90), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))
  bezier((2.65, -1.75), (2.90, -1.56), (2.78, -1.82), (2.86, -1.70), stroke: (paint: rgb(80, 85, 90), thickness: 0.9pt, dash: "dashed"))

  // --- 1. ALBERO SINISTRO GIALLO (Solidale alla campana esterna) ---
  // Estremità scanalata sinistra
  line((-3.75, -1.62), (-2.35, -1.28), (-2.18, -2.02), (-3.58, -2.38), close: true, fill: rgb(185, 172, 35), stroke: (paint: rgb(115, 105, 15), thickness: 0.85pt))
  circle((-3.66, -2.00), radius: (0.12, 0.38), fill: rgb(160, 148, 25), stroke: (paint: rgb(115, 105, 15), thickness: 0.8pt))
  line((-3.70, -1.70), (-2.30, -1.36), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.67, -1.82), (-2.27, -1.48), stroke: (paint: rgb(235, 225, 95), thickness: 1.1pt))
  line((-3.65, -1.92), (-2.25, -1.58), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.62, -2.05), (-2.22, -1.71), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.60, -2.18), (-2.20, -1.84), stroke: (paint: rgb(105, 95, 12), thickness: 0.85pt))
  line((-3.58, -2.28), (-2.18, -1.94), stroke: (paint: rgb(105, 95, 12), thickness: 0.85pt))

  // Tratto cilindrico dell'albero sinistro
  line((-2.32, -1.36), (-1.12, -1.06), (-0.96, -1.68), (-2.16, -1.98), close: true, fill: rgb(205, 195, 85).transparentize(20%), stroke: (paint: rgb(130, 120, 30), thickness: 0.8pt))
  line((-2.28, -1.46), (-1.08, -1.16), stroke: (paint: rgb(245, 240, 150), thickness: 1.5pt))

  // Collo cilindrico della campana (alloggia l'estremità sinistra del perno rosso)
  line((-1.15, -0.85), (-0.15, -0.58), (0.08, -1.58), (-0.92, -1.85), close: true, fill: rgb(195, 182, 55).transparentize(35%), stroke: (paint: rgb(130, 120, 30), thickness: 0.8pt))
  circle((-1.03, -1.35), radius: (0.16, 0.50), fill: rgb(180, 168, 45).transparentize(40%), stroke: (paint: rgb(130, 120, 30), thickness: 0.75pt))

  // Sede conica interna di reazione per il perno di guida
  line((-1.32, -1.42), (-0.82, -1.15), (-0.75, -1.52), close: true, fill: rgb(195, 175, 20).transparentize(25%), stroke: (paint: rgb(140, 125, 15), thickness: 0.65pt))
  line((-0.82, -1.15), (-0.05, -0.45), (0.15, -1.52), (-0.75, -1.52), close: true, fill: rgb(185, 165, 15).transparentize(30%), stroke: (paint: rgb(140, 125, 15), thickness: 0.65pt))

  // --- 2. ALBERO DESTRO VERDE-GRIGIO (Solidale al nucleo interno, inclinato) ---
  line((2.15, -0.82), (3.22, -1.10), (3.08, -1.68), (2.00, -1.40), close: true, fill: rgb(165, 195, 170), stroke: (paint: rgb(85, 105, 90), thickness: 0.8pt))
  line((2.18, -0.92), (3.20, -1.18), stroke: (paint: rgb(215, 235, 220), thickness: 1.4pt))

  // Estremità scanalata destra
  line((3.22, -1.00), (4.38, -1.28), (4.46, -1.42), (4.38, -1.78), (4.22, -1.92), (3.06, -1.64), close: true, fill: rgb(140, 170, 145), stroke: (paint: rgb(70, 90, 75), thickness: 0.85pt))
  circle((3.14, -1.32), radius: (0.11, 0.33), fill: rgb(155, 185, 160), stroke: (paint: rgb(75, 95, 80), thickness: 0.75pt))
  line((3.24, -1.08), (4.42, -1.36), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.22, -1.20), (4.40, -1.48), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.19, -1.32), (4.37, -1.60), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.15, -1.44), (4.33, -1.72), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.11, -1.55), (4.29, -1.83), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))

  // --- 3. NUCLEO INTERNO, PERNO, GABBIA E SFERE SUL PIANO OMOCINETICO ---
  // Nucleo interno sferico verde-giallo
  circle((1.12, -0.82), radius: 0.92, fill: rgb(185, 200, 95), stroke: (paint: rgb(105, 120, 50), thickness: 0.85pt))
  bezier((0.35, -0.45), (1.75, -0.35), (0.80, -0.20), (1.35, -0.20), stroke: (paint: rgb(115, 130, 55), thickness: 1.2pt))
  bezier((0.25, -0.85), (1.95, -0.78), (0.80, -0.72), (1.45, -0.72), stroke: (paint: rgb(225, 235, 140), thickness: 2.2pt))
  bezier((0.25, -0.92), (1.95, -0.85), (0.80, -0.80), (1.45, -0.80), stroke: (paint: rgb(105, 120, 50), thickness: 1pt))
  bezier((0.40, -1.35), (1.82, -1.28), (0.85, -1.42), (1.40, -1.42), stroke: (paint: rgb(105, 120, 50), thickness: 1.2pt))

  // Perno di centraggio rosso: bascula inclinando la gabbia esattamente dell'angolo metà
  line((-0.65, -1.32), (0.48, -0.58), (0.54, -0.68), (-0.59, -1.42), close: true, fill: rgb(210, 85, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.7pt))
  circle((-0.62, -1.37), radius: 0.15, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))
  circle((0.12, -0.88), radius: 0.17, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))
  circle((0.52, -0.62), radius: 0.14, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))

  // Gabbia blu-verde assemblata (orientata secondo il piano bisettore)
  circle((1.12, -0.82), radius: 1.05, stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  bezier((0.10, -0.65), (1.45, -1.05), (0.55, -0.85), (1.05, -0.98), stroke: (paint: rgb(45, 95, 85), thickness: 5.5pt))
  bezier((0.18, -0.35), (1.42, 0.12), (0.65, -0.02), (1.10, 0.10), stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  bezier((0.25, -1.35), (1.35, -1.82), (0.65, -1.65), (1.05, -1.78), stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  arc((1.35, -0.82), start: -82deg, stop: 82deg, radius: (0.42, 1.02), anchor: "origin", stroke: (paint: rgb(45, 95, 85), thickness: 5.5pt))

  // Sfere d'acciaio complanari sul piano omocinetico (bisettore)
  // Sfera superiore sul piano bisettore
  circle((1.38, 0.04), radius: 0.30, fill: rgb(215, 175, 85), stroke: (paint: rgb(95, 85, 45), thickness: 1pt))
  circle((1.32, 0.10), radius: 0.10, fill: rgb(245, 220, 145), stroke: none)
  // Sfera centrale anteriore sul piano bisettore
  circle((1.44, -1.00), radius: 0.32, fill: rgb(210, 168, 82), stroke: (paint: rgb(85, 80, 45), thickness: 1.2pt))
  circle((1.37, -0.93), radius: 0.11, fill: rgb(240, 212, 138), stroke: none)
  // Sfera inferiore sul piano bisettore
  circle((1.22, -1.90), radius: (0.28, 0.18), fill: rgb(175, 125, 55), stroke: (paint: rgb(85, 70, 35), thickness: 0.9pt))

  // --- 4. CAMPANA ESTERNA GIALLA SEMITRASPARENTE ---
  bezier((-0.15, -0.58), (1.35, 0.45), (0.05, 0.25), (0.75, 0.48), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))
  bezier((1.35, 0.45), (2.35, -1.75), (2.15, 0.40), (2.52, -0.85), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))
  bezier((2.35, -1.75), (0.08, -1.58), (2.10, -2.35), (0.45, -2.32), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))

  line((-0.15, -0.58), (0.12, 0.05), (0.65, 0.40), (1.35, 0.45), (1.92, 0.25), (2.28, -0.35), (2.42, -1.05), (2.35, -1.75), (1.85, -2.18), (1.15, -2.25), (0.52, -2.05), (0.08, -1.58), close: true, fill: rgb(205, 188, 45).transparentize(64%), stroke: none)

  arc((1.95, -0.92), start: -75deg, stop: 78deg, radius: (0.45, 1.15), anchor: "origin", stroke: (paint: rgb(165, 152, 40).transparentize(30%), thickness: 1pt))
  arc((0.12, -1.08), start: 105deg, stop: 255deg, radius: (0.25, 0.55), anchor: "origin", stroke: (paint: rgb(155, 142, 35).transparentize(25%), thickness: 0.9pt))

  // --- 5. GEOMETRIA FISICA DELL'OMOCINETICITÀ (ASSI E PIANO BISETTORE) ---
  // Asse dell'albero motore (sinistro) passante per il centro O(1.12, -0.82)
  line((-4.05, -2.11), (1.85, -0.64), stroke: (paint: rgb(135, 115, 10), thickness: 0.7pt, dash: "dashed"))
  // Asse dell'albero condotto (destro) passante per il centro O(1.12, -0.82)
  line((0.40, -0.64), (4.65, -1.70), stroke: (paint: rgb(55, 95, 70), thickness: 0.7pt, dash: "dashed"))
  // Centro geometrico del giunto O
  circle((1.12, -0.82), radius: 0.055, fill: rgb(180, 20, 20), stroke: white)

  // Traccia del Piano Omocinetico (piano bisettore degli assi dei due alberi)
  line((1.48, 0.78), (1.02, -2.55), stroke: (paint: rgb(20, 85, 195), thickness: 0.9pt, dash: "dashed"))


  // =========================================================================
  // ETICHETTE E RICHIAMI (FISICA E COMPONENTI DEL GIUNTO RZEPPA)
  // =========================================================================

  // Etichette vista esplosa superiore
  line((-2.55, 3.48), (-2.85, 3.92), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((-2.85, 3.98), text(size: 7.2pt)[*Campana esterna* (piste eccentriche)], anchor: "south")

  line((-1.42, 2.75), (-1.05, 3.55), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((-1.05, 3.60), text(size: 7.2pt)[*Sfere d'acciaio*], anchor: "south")

  line((0.25, 3.35), (0.45, 3.92), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((0.45, 3.98), text(size: 7.2pt)[*Gabbia sferica*], anchor: "south")

  line((2.35, 3.22), (2.75, 3.75), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((2.75, 3.80), text(size: 7.2pt)[*Nucleo interno* (piste eccentriche)], anchor: "south")

  line((-1.25, 0.58), (-1.75, 0.15), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((-1.80, 0.12), text(size: 7pt)[*Perno di guida*], anchor: "north")

  // Etichette vista assemblata inferiore
  content((1.52, 0.85), text(size: 7.2pt, fill: rgb(15, 70, 170))[*Piano omocinetico* (bisettore)], anchor: "south")

  line((2.72, -0.25), (3.35, 0.35), stroke: (paint: rgb(100, 100, 100), thickness: 0.55pt))
  content((3.40, 0.40), text(size: 7.2pt)[*Cuffia conica in gomma*], anchor: "south")

  content((-3.15, -2.52), text(size: 7pt)[Albero motore ($omega_1$)], anchor: "north")
  content((3.75, -2.10), text(size: 7pt)[Albero condotto ($omega_2 = omega_1$)], anchor: "north")
})
  ],
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
