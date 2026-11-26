#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

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
    #fig-safe(include "../../figs/p4/ecm-c12-p4-02.typ", max-h: 4.8cm)
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
    #fig-safe(include "../../figs/p4/p4-fig01.typ", max-h: 6cm)
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
    #fig-safe(include "../../figs/p4/ecm-c12-p4-03.typ", max-h: 5cm)
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
    #fig-safe(include "../../figs/p4/p4-fig02.typ", max-h: 4.4cm)
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
    #fig-safe(include "../../figs/p4/p4-fig03.typ", max-h: 7.2cm)
  ],
  [
    #fig-safe(include "../../figs/p4/p4-fig04.typ", max-h: 7.2cm)
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
    #fig-safe(include "../../figs/p4/p4-fig05.typ", max-h: 4.4cm)
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
  [
    #fig-safe(include "../../figs/p4/ecm-c12-p4-06.typ", max-h: 5.2cm)
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
    #fig-safe(image("../../figs/ecm-c12-p4-07.jpg"), max-h: 5.2cm)
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
  [
    #fig-safe(include "../../figs/p4/ecm-c12-p4-08.typ", max-h: 5.2cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/p4/p4-fig06.typ", max-h: 4.8cm)
  ],
  [
    #fig-safe(image("../../figs/ecm-c12-p4-rzeppa-3d.jpg"), max-h: 4.1cm)
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
    #fig-safe(include "../../figs/p4/ecm-c12-p4-09.typ", max-h: 4.8cm)
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
    #fig-safe(include "../../figs/p4/ecm-c12-p4-10.typ", max-h: 4.2cm)
  ],
  [
    #fig-safe(include "../../figs/p4/ecm-c12-p4-11.typ", max-h: 4.2cm)
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
    #fig-safe(image("../../figs/ecm-c12-p4-12.jpg"), max-h: 4.3cm)
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
    #fig-safe(include "../../figs/p4/ecm-c12-p4-13.typ", max-h: 5.2cm)
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
    #fig-safe(image("../../figs/ecm-c12-p4-14.jpg"), max-h: 4.0cm)
  ],
)

== Giunti di sicurezza

#grid(
  columns: (0.98fr, 1.02fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto di sicurezza* (limitatore di coppia) impedisce la trasmissione di coppie superiori a un valore di taratura prefissato. Lo schema tipico ricalca una *frizione multidisco*: una *campana a profilo scanalato interno* (gialla in sezione) ospita dischi sottili a dentatura esterna, alternati a dischi a dentatura interna montati su un *albero scanalato* (verde). Una *molla* precaricata da una *ghiera filettata* spinge uno *spingidisco* che compatta il pacco dischi.
  ],
  [
    #fig-safe(include "../../figs/p4/ecm-c12-p4-15.typ", max-h: 5.4cm)
  ],
)

In esercizio normale la coppia si trasmette *per attrito* attraverso tutte le interfacce anulari tra i dischi. Superata la coppia limite, i dischi *slittano* vincendo l'azione della molla e disaccoppiando i due alberi; al rientro del carico nei limiti ammissibili, la molla richiude automaticamente il collegamento. La coppia di taratura si regola a macchina ferma tramite la *ghiera di precarico* (esistono diverse varianti per tipologia e disposizione della molla).

#v(0.2em)

#nota[
  *Natura ibrida e criticità termica:* tarato a macchina ferma e privo di comando esterno volontario (quindi *giunto*), si apre e richiude in moto sotto sovraccarico (avvicinandosi agli *innesti di sicurezza*). Durante lo slittamento l'attrito genera intensa *dissipazione termica* e usura: richiede adeguata capacità termica e deve intervenire solo in eventi eccezionali e rari (negli *innesti*, azionati frequentemente, occorrono invece apposite vie di fuga per smaltire il calore).
]

== Riepilogo delle diverse tipologie di giunti

I giunti collegano due alberi per *trasmettere potenza* ($P = M dot Omega$) e si suddividono in quattro macro-classi:
- *Giunti rigidi:* solo per alberi *perfettamente allineati* (manicotto, gusci, dischi/flange); forzamenti di montaggio generano sovrasollecitazioni dannose. Protezione affidata a un elemento sacrificale.
- *Giunti elastici metallici:* nastri o pacchi di lamine (*Bibby* torsionalmente elastico, *Arpex* torsionalmente rigido con elasticità flessionale). Compensano piccoli disallineamenti, sopportano alte temperature, richiedono lubrificazione e offrono smorzamento minore.
- *Giunti elastici ad elastomeri:* elementi polimerici (*Norton*, *Steckflex*, *Periflex*). Elevato smorzamento interno, nessuna lubrificazione, limiti termici inferiori e caratterizzazione sperimentale. In tutti i giunti elastici occorre considerare sovraccarichi nei transitori e *instabilità dinamica da smorzamento rotante*: a differenza della *velocità critica* di risonanza (attraversabile rapidamente verso il campo supercritico), la *velocità limite di instabilità dinamica non deve mai essere raggiunta*, poiché oltre essa il moto a spirale divergente si manifesta sempre.
- *Giunti articolati:* spostamenti assiali, radiali o angolari di ampia entità tramite *cinematismo rigido*; si distinguono in *non omocinetici* (*Cardano semplice*) e *omocinetici* (*doppio Cardano* con $beta_2 = plus.minus beta_1$, *Rzeppa*, *tripode*).
- *Giunti di sicurezza:* limitano la coppia massima tramite attrito e precarico elastico tarabile, aprendosi e richiudendosi autonomamente senza comando esterno.
