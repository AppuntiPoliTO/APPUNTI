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
  // PARTE SUPERIORE: VISTA ESPLOSA DEL GIUNTO OMOCINETICO (RZEppa / CON PERNO)
  // =========================================================================

  // --- 1. CAMPANA ESTERNA GIALLA (Sinistra) ---
  // Codolo posteriore sporgente a sinistra
  line((-3.85, 2.38), (-3.55, 2.45), (-3.45, 2.08), (-3.75, 2.01), close: true, fill: rgb(180, 165, 20), stroke: (paint: rgb(110, 100, 10), thickness: 0.7pt))
  circle((-3.8, 2.2), radius: (0.08, 0.19), fill: rgb(150, 138, 15), stroke: (paint: rgb(110, 100, 10), thickness: 0.7pt))

  // Corpo esterno della campana (fascia laterale 3D)
  bezier((-2.55, 3.68), (-3.15, 3.55), (-2.85, 3.65), (-3.0, 3.6), stroke: none)
  line((-2.45, 3.67), (-2.95, 3.56), (-3.48, 2.95), (-3.58, 2.2), (-3.32, 1.45), (-2.75, 1.02), (-2.22, 1.13), close: true, fill: rgb(195, 180, 15), stroke: none)
  arc((-2.58, 2.35), start: 100deg, stop: 260deg, radius: (1.02, 1.32), anchor: "origin", fill: rgb(195, 180, 15), stroke: (paint: rgb(120, 110, 10), thickness: 1pt))
  line((-2.76, 3.65), (-2.26, 3.57), stroke: (paint: rgb(120, 110, 10), thickness: 1pt))
  line((-2.76, 1.05), (-2.26, 1.13), stroke: (paint: rgb(120, 110, 10), thickness: 1pt))

  // Bocca frontale della campana
  circle((-2.25, 2.35), radius: (1.05, 1.32), fill: rgb(230, 215, 35), stroke: (paint: rgb(130, 118, 12), thickness: 1pt))
  // Cavità interna sferica (scura sul fondo, più chiara al centro)
  circle((-2.18, 2.35), radius: (0.86, 1.10), fill: rgb(155, 142, 12), stroke: (paint: rgb(115, 105, 10), thickness: 0.8pt))
  circle((-2.25, 2.35), radius: (0.68, 0.88), fill: rgb(215, 200, 30), stroke: (paint: rgb(140, 128, 15), thickness: 0.6pt))

  // 6 Gole / Piste meridiane interne e sfere gialle alloggiate
  // Sfera 1 (alta)
  circle((-2.22, 3.22), radius: (0.18, 0.14), fill: rgb(185, 170, 20), stroke: (paint: rgb(115, 105, 10), thickness: 0.6pt))
  // Sfera 2 (alta-destra)
  circle((-1.62, 2.82), radius: 0.21, fill: rgb(245, 232, 65), stroke: (paint: rgb(130, 118, 12), thickness: 0.75pt))
  circle((-1.56, 2.86), radius: 0.07, fill: rgb(255, 250, 170), stroke: none)
  // Sfera 3 (bassa-destra)
  circle((-1.66, 1.88), radius: 0.21, fill: rgb(245, 232, 65), stroke: (paint: rgb(130, 118, 12), thickness: 0.75pt))
  circle((-1.60, 1.92), radius: 0.07, fill: rgb(255, 250, 170), stroke: none)
  // Sfera 4 (bassa)
  circle((-2.28, 1.48), radius: (0.18, 0.14), fill: rgb(185, 170, 20), stroke: (paint: rgb(115, 105, 10), thickness: 0.6pt))
  // Sfera 5 (bassa-sinistra)
  circle((-2.78, 1.92), radius: 0.19, fill: rgb(205, 190, 25), stroke: (paint: rgb(120, 110, 10), thickness: 0.7pt))
  // Sfera 6 (alta-sinistra)
  circle((-2.75, 2.80), radius: 0.19, fill: rgb(205, 190, 25), stroke: (paint: rgb(120, 110, 10), thickness: 0.7pt))

  // Sede conica centrale interna della campana
  circle((-2.45, 2.35), radius: (0.34, 0.42), fill: rgb(240, 228, 55), stroke: (paint: rgb(140, 128, 15), thickness: 0.7pt))
  line((-2.45, 2.77), (-2.88, 2.43), (-2.88, 2.27), (-2.45, 1.93), close: true, fill: rgb(225, 210, 40), stroke: (paint: rgb(140, 128, 15), thickness: 0.7pt))
  circle((-2.88, 2.35), radius: (0.07, 0.09), fill: rgb(130, 118, 12), stroke: none)

  // --- 2. PERNO DI CENTRAGGIO ROSSO (Sotto-sinistra) ---
  // Asta cilindrica inclinata da (-1.85, 1.05) a (-0.65, 0.45)
  line((-1.82, 1.11), (-0.62, 0.51), (-0.68, 0.39), (-1.88, 0.99), close: true, fill: rgb(215, 45, 25), stroke: (paint: rgb(135, 20, 10), thickness: 0.7pt))
  // Sfera piccola superiore-sinistra
  circle((-1.85, 1.05), radius: 0.15, fill: rgb(230, 50, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.75pt))
  circle((-1.89, 1.09), radius: 0.045, fill: rgb(255, 160, 140), stroke: none)
  // Sfera centrale intermedia più grande
  circle((-0.98, 0.62), radius: 0.18, fill: rgb(230, 50, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.75pt))
  circle((-1.03, 0.67), radius: 0.055, fill: rgb(255, 160, 140), stroke: none)
  // Sfera finale inferiore-destra
  circle((-0.65, 0.45), radius: 0.145, fill: rgb(230, 50, 30), stroke: (paint: rgb(135, 20, 10), thickness: 0.75pt))
  circle((-0.69, 0.49), radius: 0.04, fill: rgb(255, 160, 140), stroke: none)

  // --- 3. GABBIA SFERICA FORATA BLU (Centro) ---
  // Centrata in (0.15, 2.22), raggio ~1.12
  // Archi posteriori della gabbia (blu più scuro)
  arc((0.15, 2.22), start: 0deg, stop: 360deg, radius: (1.10, 0.52), anchor: "origin", stroke: (paint: rgb(15, 65, 155), thickness: 3.2pt))
  arc((0.15, 2.22), start: 0deg, stop: 360deg, radius: (0.52, 1.10), anchor: "origin", stroke: (paint: rgb(15, 65, 155), thickness: 3.2pt))

  // Raggi meridiani interni posteriori
  line((-0.78, 2.75), (1.08, 1.69), stroke: (paint: rgb(15, 65, 155), thickness: 2.8pt))
  line((-0.78, 1.69), (1.08, 2.75), stroke: (paint: rgb(15, 65, 155), thickness: 2.8pt))

  // Contorno sferico esterno della gabbia e nervature frontali
  circle((0.15, 2.22), radius: 1.12, stroke: (paint: rgb(20, 95, 210), thickness: 4.5pt))
  // Meridiani frontali incrociati nel polo anteriore (0.58, 2.02)
  bezier((-0.55, 3.08), (0.58, 2.02), (-0.10, 2.80), (0.30, 2.38), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))
  bezier((0.58, 2.02), (0.98, 1.48), (0.75, 1.82), (0.88, 1.65), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))
  bezier((-0.95, 2.08), (0.58, 2.02), (-0.45, 2.00), (0.15, 2.00), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))
  bezier((0.58, 2.02), (1.24, 2.32), (0.85, 2.08), (1.10, 2.20), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))
  bezier((0.32, 3.32), (0.58, 2.02), (0.52, 2.95), (0.60, 2.45), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))
  bezier((0.58, 2.02), (0.05, 1.12), (0.52, 1.65), (0.32, 1.32), stroke: (paint: rgb(25, 105, 225), thickness: 4.2pt))

  // Anello equatoriale che unisce le finestre delle sfere
  circle((0.02, 2.28), radius: (0.88, 0.96), stroke: (paint: rgb(30, 115, 235), thickness: 3.8pt))

  // Finestre circolari/ellittiche per le sfere (bordo blu + interno bianco)
  circle((-0.58, 2.82), radius: (0.20, 0.27), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))
  circle((-0.82, 1.98), radius: (0.16, 0.26), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))
  circle((-0.18, 1.32), radius: (0.26, 0.16), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))
  circle((0.35, 3.12), radius: (0.26, 0.15), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))
  circle((1.05, 2.52), radius: (0.16, 0.25), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))
  circle((0.85, 1.55), radius: (0.22, 0.18), fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 2.2pt))

  // Mozzo polare con piccolo foro centrale bianco
  circle((0.58, 2.02), radius: 0.24, fill: rgb(25, 105, 225), stroke: none)
  circle((0.58, 2.02), radius: 0.11, fill: white, stroke: (paint: rgb(15, 75, 175), thickness: 1pt))

  // --- 4. MOZZO INTERNO SCANALATO E ALBERO VERDE-GRIGIO (Destra) ---
  // Albero cilindrico intermedio (da x=2.6 a x=3.6)
  line((2.55, 2.58), (3.58, 2.75), (3.65, 2.25), (2.62, 2.08), close: true, fill: rgb(165, 195, 170), stroke: (paint: rgb(85, 105, 90), thickness: 0.8pt))
  line((2.58, 2.48), (3.60, 2.65), stroke: (paint: rgb(210, 230, 215), thickness: 1.5pt))

  // Estremità dell'albero scanalata (spline da x=3.55 a x=4.35)
  line((3.52, 2.80), (4.28, 2.92), (4.38, 2.78), (4.42, 2.48), (4.35, 2.28), (3.60, 2.16), close: true, fill: rgb(140, 170, 145), stroke: (paint: rgb(75, 95, 80), thickness: 0.85pt))
  circle((3.56, 2.48), radius: (0.10, 0.32), fill: rgb(155, 185, 160), stroke: (paint: rgb(75, 95, 80), thickness: 0.75pt))
  // Scanalature longitudinali sull'estremità destra
  line((3.58, 2.74), (4.32, 2.86), stroke: (paint: rgb(70, 90, 75), thickness: 0.8pt))
  line((3.62, 2.64), (4.37, 2.76), stroke: (paint: rgb(70, 90, 75), thickness: 0.8pt))
  line((3.64, 2.52), (4.39, 2.64), stroke: (paint: rgb(70, 90, 75), thickness: 0.8pt))
  line((3.63, 2.40), (4.38, 2.52), stroke: (paint: rgb(70, 90, 75), thickness: 0.8pt))
  line((3.60, 2.28), (4.35, 2.40), stroke: (paint: rgb(70, 90, 75), thickness: 0.8pt))

  // Noce / Mozzo sferico scanalato (centrato in (2.25, 2.32))
  // Base corpo sferico con 6 nervature e 6 piste
  circle((2.28, 2.32), radius: (0.78, 0.96), fill: rgb(160, 190, 165), stroke: (paint: rgb(80, 100, 85), thickness: 0.9pt))

  // Pista superiore
  bezier((1.65, 2.95), (2.55, 3.25), (1.95, 3.20), (2.30, 3.28), stroke: (paint: rgb(75, 95, 80), thickness: 0.85pt))
  // Pista medio-alta (illuminata)
  line((1.75, 2.72), (2.75, 2.88), (2.98, 2.52), (1.92, 2.36), close: true, fill: rgb(200, 225, 205), stroke: (paint: rgb(80, 100, 85), thickness: 0.8pt))
  // Pista centrale-bassa (in ombra concava)
  line((1.92, 2.36), (2.98, 2.52), (2.95, 2.12), (1.90, 1.96), close: true, fill: rgb(130, 160, 138), stroke: (paint: rgb(80, 100, 85), thickness: 0.8pt))
  // Nervatura centrale sporgente chiara
  line((1.88, 2.38), (2.98, 2.54), (3.00, 2.42), (1.90, 2.26), close: true, fill: rgb(225, 242, 228), stroke: (paint: rgb(85, 105, 90), thickness: 0.7pt))
  // Pista inferiore
  line((1.90, 1.96), (2.95, 2.12), (2.78, 1.62), (1.78, 1.52), close: true, fill: rgb(175, 205, 180), stroke: (paint: rgb(80, 100, 85), thickness: 0.8pt))
  // Nervatura inferiore sporgente
  line((1.88, 1.98), (2.95, 2.14), (2.96, 2.02), (1.89, 1.86), close: true, fill: rgb(215, 235, 218), stroke: (paint: rgb(85, 105, 90), thickness: 0.7pt))
  // Base inferiore in ombra
  line((1.78, 1.52), (2.78, 1.62), (2.45, 1.36), (1.62, 1.38), close: true, fill: rgb(115, 145, 122), stroke: (paint: rgb(75, 95, 80), thickness: 0.8pt))

  // Faccia anteriore sinistra della noce (con petali radiali e foro centrale per il perno)
  circle((1.72, 2.22), radius: (0.32, 0.52), fill: rgb(150, 180, 155), stroke: (paint: rgb(80, 100, 85), thickness: 0.8pt))
  circle((1.58, 2.18), radius: (0.16, 0.28), fill: rgb(175, 205, 180), stroke: (paint: rgb(80, 100, 85), thickness: 0.75pt))
  circle((1.54, 2.17), radius: (0.06, 0.11), fill: rgb(75, 95, 80), stroke: none)

  // Piccolo cursore a freccia bianca visibile sopra la noce nell'immagine originale
  line((1.88, 2.58), (1.88, 2.25), (1.96, 2.33), (2.04, 2.18), (2.10, 2.21), (2.02, 2.36), (2.12, 2.38), close: true, fill: white, stroke: (paint: rgb(60, 60, 60), thickness: 0.6pt))


  // =========================================================================
  // PARTE INFERIORE: GIUNTO ASSEMBLATO IN SEZIONE SEMITRASPARENTE
  // =========================================================================

  // --- 1. ALBERO SINISTRO GIALLO (Solidale alla campana) ---
  // Estremità sinistra scanalata (da x=-3.75 a x=-2.25)
  line((-3.75, -1.62), (-2.35, -1.28), (-2.18, -2.02), (-3.58, -2.38), close: true, fill: rgb(185, 172, 35), stroke: (paint: rgb(115, 105, 15), thickness: 0.85pt))
  circle((-3.66, -2.00), radius: (0.12, 0.38), fill: rgb(160, 148, 25), stroke: (paint: rgb(115, 105, 15), thickness: 0.8pt))
  // Scanalature sull'estremità sinistra
  line((-3.70, -1.70), (-2.30, -1.36), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.67, -1.82), (-2.27, -1.48), stroke: (paint: rgb(235, 225, 95), thickness: 1.1pt))
  line((-3.65, -1.92), (-2.25, -1.58), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.62, -2.05), (-2.22, -1.71), stroke: (paint: rgb(115, 105, 15), thickness: 0.75pt))
  line((-3.60, -2.18), (-2.20, -1.84), stroke: (paint: rgb(105, 95, 12), thickness: 0.85pt))
  line((-3.58, -2.28), (-2.18, -1.94), stroke: (paint: rgb(105, 95, 12), thickness: 0.85pt))

  // Tratto cilindrico liscio dell'albero sinistro (da x=-2.30 a x=-1.10)
  line((-2.32, -1.36), (-1.12, -1.06), (-0.96, -1.68), (-2.16, -1.98), close: true, fill: rgb(205, 195, 85).transparentize(20%), stroke: (paint: rgb(130, 120, 30), thickness: 0.8pt))
  line((-2.28, -1.46), (-1.08, -1.16), stroke: (paint: rgb(245, 240, 150), thickness: 1.5pt))

  // Collo cilindrico di raccordo della campana (da x=-1.15 a x=-0.10)
  line((-1.15, -0.85), (-0.15, -0.58), (0.08, -1.58), (-0.92, -1.85), close: true, fill: rgb(195, 182, 55).transparentize(35%), stroke: (paint: rgb(130, 120, 30), thickness: 0.8pt))
  circle((-1.03, -1.35), radius: (0.16, 0.50), fill: rgb(180, 168, 45).transparentize(40%), stroke: (paint: rgb(130, 120, 30), thickness: 0.75pt))

  // Cono interno dorato con punta a sinistra e sede per il perno rosso
  line((-1.32, -1.42), (-0.82, -1.15), (-0.75, -1.52), close: true, fill: rgb(195, 175, 20).transparentize(25%), stroke: (paint: rgb(140, 125, 15), thickness: 0.65pt))
  line((-0.82, -1.15), (-0.05, -0.45), (0.15, -1.52), (-0.75, -1.52), close: true, fill: rgb(185, 165, 15).transparentize(30%), stroke: (paint: rgb(140, 125, 15), thickness: 0.65pt))

  // --- 2. ALBERO DESTRO VERDE-GRIGIO (Inclinato verso il basso a destra) ---
  // Tratto cilindrico liscio che esce dal giunto (da x=2.15 a x=3.25)
  line((2.15, -0.82), (3.22, -1.10), (3.08, -1.68), (2.00, -1.40), close: true, fill: rgb(165, 195, 170), stroke: (paint: rgb(85, 105, 90), thickness: 0.8pt))
  line((2.18, -0.92), (3.20, -1.18), stroke: (paint: rgb(215, 235, 220), thickness: 1.4pt))

  // Estremità destra scanalata (da x=3.15 a x=4.45)
  line((3.22, -1.00), (4.38, -1.28), (4.46, -1.42), (4.38, -1.78), (4.22, -1.92), (3.06, -1.64), close: true, fill: rgb(140, 170, 145), stroke: (paint: rgb(70, 90, 75), thickness: 0.85pt))
  circle((3.14, -1.32), radius: (0.11, 0.33), fill: rgb(155, 185, 160), stroke: (paint: rgb(75, 95, 80), thickness: 0.75pt))
  // Scanalature longitudinali sull'albero destro
  line((3.24, -1.08), (4.42, -1.36), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.22, -1.20), (4.40, -1.48), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.19, -1.32), (4.37, -1.60), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.15, -1.44), (4.33, -1.72), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))
  line((3.11, -1.55), (4.29, -1.83), stroke: (paint: rgb(65, 85, 70), thickness: 0.8pt))

  // --- 3. ELEMENTI INTERNI ASSEMBLATI (Visibili in trasparenza) ---
  // Mozzo / Noce interna verde-gialla (centrata in (1.12, -0.82))
  circle((1.12, -0.82), radius: 0.92, fill: rgb(185, 200, 95), stroke: (paint: rgb(105, 120, 50), thickness: 0.85pt))
  // Nervature della noce interna
  bezier((0.35, -0.45), (1.75, -0.35), (0.80, -0.20), (1.35, -0.20), stroke: (paint: rgb(115, 130, 55), thickness: 1.2pt))
  bezier((0.25, -0.85), (1.95, -0.78), (0.80, -0.72), (1.45, -0.72), stroke: (paint: rgb(225, 235, 140), thickness: 2.2pt))
  bezier((0.25, -0.92), (1.95, -0.85), (0.80, -0.80), (1.45, -0.80), stroke: (paint: rgb(105, 120, 50), thickness: 1pt))
  bezier((0.40, -1.35), (1.82, -1.28), (0.85, -1.42), (1.40, -1.42), stroke: (paint: rgb(105, 120, 50), thickness: 1.2pt))

  // Perno di centraggio rosso-arancio inserito obliquamente
  line((-0.65, -1.32), (0.48, -0.58), (0.54, -0.68), (-0.59, -1.42), close: true, fill: rgb(210, 85, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.7pt))
  circle((-0.62, -1.37), radius: 0.15, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))
  circle((0.12, -0.88), radius: 0.17, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))
  circle((0.52, -0.62), radius: 0.14, fill: rgb(215, 75, 15), stroke: (paint: rgb(140, 45, 5), thickness: 0.75pt))

  // Gabbia blu-verde scura che avvolge la noce interna
  circle((1.12, -0.82), radius: 1.05, stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  // Fasce meridiane della gabbia assemblata
  bezier((0.10, -0.65), (1.45, -1.05), (0.55, -0.85), (1.05, -0.98), stroke: (paint: rgb(45, 95, 85), thickness: 5.5pt))
  bezier((0.18, -0.35), (1.42, 0.12), (0.65, -0.02), (1.10, 0.10), stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  bezier((0.25, -1.35), (1.35, -1.82), (0.65, -1.65), (1.05, -1.78), stroke: (paint: rgb(45, 95, 85), thickness: 4.5pt))
  arc((1.35, -0.82), start: -80deg, stop: 80deg, radius: (0.42, 1.02), anchor: "origin", stroke: (paint: rgb(45, 95, 85), thickness: 5.5pt))

  // Sfere alloggiate nelle finestre della gabbia (color ambra/arancio-giallo)
  // Sfera superiore
  circle((1.42, 0.02), radius: 0.30, fill: rgb(215, 175, 85), stroke: (paint: rgb(95, 85, 45), thickness: 1pt))
  circle((1.36, 0.08), radius: 0.10, fill: rgb(245, 220, 145), stroke: none)
  // Sfera centrale in primo piano
  circle((1.45, -1.02), radius: 0.32, fill: rgb(210, 168, 82), stroke: (paint: rgb(85, 80, 45), thickness: 1.2pt))
  circle((1.38, -0.95), radius: 0.11, fill: rgb(240, 212, 138), stroke: none)
  // Sfera inferiore
  circle((1.18, -1.92), radius: (0.28, 0.18), fill: rgb(175, 125, 55), stroke: (paint: rgb(85, 70, 35), thickness: 0.9pt))

  // --- 4. INVOLUCRO ESTERNO DELLA CAMPANA GIALLA SEMITRASPARENTE ---
  // Profilo avvolgente della campana (da x=-0.15 a x=2.35)
  bezier((-0.15, -0.58), (1.35, 0.45), (0.05, 0.25), (0.75, 0.48), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))
  bezier((1.35, 0.45), (2.35, -1.75), (2.15, 0.40), (2.52, -0.85), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))
  bezier((2.35, -1.75), (0.08, -1.58), (2.10, -2.35), (0.45, -2.32), stroke: (paint: rgb(155, 142, 35), thickness: 1.1pt))

  // Riempimento semitrasparente giallo-ambra sopra il gruppo sferico per l'effetto vetro/plastica
  line((-0.15, -0.58), (0.12, 0.05), (0.65, 0.40), (1.35, 0.45), (1.92, 0.25), (2.28, -0.35), (2.42, -1.05), (2.35, -1.75), (1.85, -2.18), (1.15, -2.25), (0.52, -2.05), (0.08, -1.58), close: true, fill: rgb(205, 188, 45).transparentize(62%), stroke: none)

  // Riflessi e bordi della bocca destra della campana semitrasparente
  arc((1.95, -0.92), start: -75deg, stop: 78deg, radius: (0.45, 1.15), anchor: "origin", stroke: (paint: rgb(165, 152, 40).transparentize(30%), thickness: 1pt))
  arc((0.12, -1.08), start: 105deg, stop: 255deg, radius: (0.25, 0.55), anchor: "origin", stroke: (paint: rgb(155, 142, 35).transparentize(25%), thickness: 0.9pt))
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
