#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)



#set heading(numbering: "1.")

= Molle - Generalità e Barra di Torsione
== Funzioni e Applicazioni delle Molle
Le molle sono elementi di macchine caratterizzati da un'elevata capacità di deformarsi elasticamente sotto l'azione di un carico e di riassumere la loro conformazione originaria al cessare dell'applicazione del carico stesso. Questa caratteristica fondamentale permette il collegamento tra le parti di un sistema garantendo una sospensione elastica e adattativa. 

Affinché la molla possa svolgere correttamente il proprio ruolo, è imperativo che operi esclusivamente in campo elastico: le tensioni applicate non devono mai generare condizioni di plasticizzazione, le quali comprometterebbero la funzionalità del componente e la sua capacità di ritornare all'estensione iniziale in modo ripetitivo.

Le molle sono in grado di immagazzinare energia sotto forma di energia potenziale elastica, per poi restituirla. Grazie a queste proprietà, esse trovano svariati campi di applicazione:
- #strong[Sospensioni automobilistiche e motociclistiche:] conferiscono rigidezza al sistema, filtrano le vibrazioni e contengono gli scuotimenti e i movimenti di rollio del veicolo, garantendo comfort e stabilità.
- #strong[Macchine industriali:] isolano le parti sospese dagli impulsi provenienti dal terreno o da effetti sismici.
- #strong[Attuatori e sistemi di automazione:] contengono lo spostamento degli elementi o forniscono una forza di richiamo elastico (es. ritorno di un pistone).
- #strong[Trasduttori e strumenti di misura:] nei dinamometri, l'estensione della molla sotto l'azione di una forza permette di misurare l'intensità della forza stessa, sfruttando le caratteristiche note dell'elemento elastico.

== Caratteristica della Molla ed Energia Immagazzinata
Il comportamento di una molla è descritto dalla sua curva caratteristica, che rappresenta la relazione tra l'azione applicata (forza o momento) e la deformazione prodotta (spostamento o rotazione). 

Nella maggior parte delle applicazioni industriali si ricerca un comportamento lineare. In questo caso, il parametro fondamentale è la costante elastica o rigidezza $k$, che definisce il fattore di proporzionalità della relazione:
- Per una molla di traslazione: $F = k dot.op f$
- Per una molla di rotazione: $M = k dot.op theta$

dove $F$ e $M$ sono rispettivamente la forza in Newton e il momento in Newton-metro; $f$ e $theta$ sono lo spostamento (o freccia) in metri e la rotazione in radianti; $k$ è la rigidezza, espressa in N/m o Nm/rad.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'energia complessiva immagazzinata dalla molla corrisponde all'area sottesa alla curva caratteristica. Nel caso di una caratteristica lineare, tale area è un triangolo, pertanto l'energia potenziale elastica $W$ vale:

$ W = frac(F f, 2) $ A seconda della legge di variazione della rigidezza, la caratteristica può deviare dal comportamento lineare, presentando due tipologie di non linearità:],[
#image("images/grafico molla 1.png", width:90%)
])


- #strong[Softening:] all'aumentare della forza applicata, la rigidezza della molla diminuisce. La molla diventa più cedevole e, a parità di forza, si ottiene una deformazione maggiore rispetto al caso lineare.
- #strong[Hardening:] all'aumentare della forza, la rigidezza aumenta. Il sistema subisce un irrigidimento progressivo nei confronti delle azioni applicate.

== Il Paradigma della Barra di Torsione
#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La forma di molla più vicina alla teoria classica della trave, utilizzata come paradigma per lo studio strutturale di molle più complesse (come quelle ad elica cilindrica), è la barra di torsione. Essa è costituita da un cilindro solido (una trave a sezione circolare) incastrato a un'estremità e libero all'altra. All'estremità libera è tipicamente collegato un braccio rigido (piattello o leva) a cui viene applicata una forza $F$. Il comportamento della barra è dominato dal momento torcente $M_t = F dot.op r$, dove $r$ è il braccio rigido. La tensione tangenziale massima $tau_(m a x)$ si calcola dividendo il momento torcente per il modulo di resistenza a torsione $w_t$:],[
#image("images/barra di torsione.png",width:90%)
])
$ tau_(m a x) = frac(M_t, w_t) = frac(F r, pi d^3 / 16) $

L'angolo di torsione $theta$ subito dalla sezione libera rispetto all'incastro si ottiene integrando la deformazione lungo la lunghezza $l$ della barra, in funzione del modulo di elasticità tangenziale $G$ e del momento d'inerzia polare $I_p$:

$ theta = frac(M_t l, G I_p) = frac(F r l, G pi d^4 / 32) $

Lo spostamento verticale (freccia $f$) del punto di applicazione della forza $F$ è dato dall'arco di circonferenza descritto dal braccio $r$ che ruota di un angolo $theta$:

$ f = theta r = frac(32 F r^2 l, pi d^4 G) $

Dalla relazione lineare tra forza e freccia, si ricava la rigidezza $k$ della barra di torsione:

$ k = frac(F, f) = frac(pi G d^4, 32 r^2 l) $

Si ricorda che il modulo di elasticità tangenziale $G$ è legato al modulo di Young $E$ e al coefficiente di Poisson $nu$ dalla relazione:

$ G = frac(E, 2(1+nu)) $

== Dettagli Costruttivi e Applicazioni della Barra di Torsione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella realizzazione pratica di una barra di torsione, le estremità destinate al vincolo richiedono particolari accorgimenti. Il collegamento viene spesso realizzato tramite un profilo scanalato. Questa soluzione permette di trasmettere efficacemente il momento torcente e le reazioni vincolari, consentendo al contempo un minimo grado di libertà in direzione assiale per compensare eventuali elongazioni termiche o disturbi assiali.],[
#image("images/dettaglio barra di torsione.png", width:75%)
])

Nel passaggio dal diametro maggiore della porzione scanalata al diametro minore della parte centrale attiva della barra, è fondamentale inserire un ampio raggio di raccordo. Questo dettaglio costruttivo è necessario per mitigare l'effetto di concentrazione delle tensioni (intaglio) causato dalla variazione di sezione. Esistono anche soluzioni alternative per le estremità, come teste a profilo esagonale o poligonale, che offrono facce di riscontro adeguate per la trasmissione del momento pur consentendo lievi adattamenti assiali.

Un'applicazione classica della barra di torsione è la barra stabilizzatrice (o barra anti-rollio) nelle sospensioni automobilistiche. Durante la percorrenza di una curva, il veicolo è soggetto a forze inerziali centrifughe che causano un trasferimento di carico e una diversa aderenza tra le ruote interne ed esterne alla curva, innescando il fenomeno del rollio.

La barra di torsione viene montata trasversalmente per collegare i due bracci della sospensione. Quando le ruote subiscono spostamenti verticali asimmetrici (una si comprime, l'altra si estende), la barra subisce una torsione. La rigidezza torsionale della barra si oppone a questa differenza di escursione, moderando lo sbilanciamento dei carichi, riducendo l'angolo di rollio e migliorando sensibilmente la stabilità e la sicurezza del veicolo in curva, fungendo anche da elemento di smorzamento per eventuali vibrazioni innescate dalla manovra.

// NOTA: L'errore "unexpected argument" in Typst è causato dalla virgola nei numeri decimali (es. 0,615) dentro frac(a, b), che viene interpretata come separatore di un terzo argomento. Nei numeri decimali dentro funzioni matematiche Typst va usato il punto (0.615) o il numero va racchiuso tra virgolette ("0,615"). Di seguito il codice completo corretto.

== Molle ad elica cilindrica
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Le molle a elica cilindrica sono assimilabili a barre di torsione avvolte a elica su un cilindro ideale. Dal punto di vista geometrico si identificano due elementi fondamentali: una geometria macroscopica determinata dalle dimensioni e dall'ingombro del cilindro ideale, di diametro $D = 2r$ (dove il raggio $r$ individua la distanza tra l'asse centrale del cilindro, lungo il quale agisce la risultante delle forze $F$ applicate ai piattelli o alle estremità, e il centro della sezione trasversale del filo), e una geometria locale legata al filo metallico avvolto, avente sezione trasversale circolare di diametro $d$. L'avvolgimento a elica è caratterizzato da un angolo di inclinazione $alpha$ e da un passo $p$. Quando la molla è a riposo, ovvero scarica e appoggiata su un piano in assenza di azioni esterne, presenta una lunghezza libera indicata con $L_0$.],[#image("images/schema molla elica cilindrica.png", width:50%)])

A seconda della direzione del carico $F$ lungo l'asse della molla, che tende a comprimerla o a estenderla nel suo complesso permettendo a una massa fissata a un'estremità di muoversi di moto traslatorio, queste molle sono dette impropriamente molle di trazione o molle di compressione. Tale terminologia genera un equivoco: macroscopicamente il corpo appare compresso o teso, ma dal punto di vista del comportamento elastico e meccanico del materiale la deformazione della molla è in gran parte dovuta alla torsione del filo. Il sistema si comporta infatti come una barra di torsione rettilinea estesa da una sezione vincolata (la base) fino alla sezione di applicazione del carico, ma avvolta in forma di elica. Poiché la barra di torsione è incurvata su se stessa, la curvatura altera la distribuzione di tensione nella sezione circolare del filo; è quindi indispensabile correggere i risultati della teoria di De Saint-Venant per la barra di torsione mediante opportuni coefficienti correttivi che tengano conto sia delle sollecitazioni di taglio sia di quelle dovute alla curvatura del filo.

L'evidenza sperimentale del fenomeno di torsione si osserva confrontando tre configurazioni di molle compresse assialmente:
1. Nella molla a elica cilindrica classica a un solo principio (un'unica elica che si estende da un'estremità all'altra), l'estremità appoggiata su un cuscinetto subisce una rotazione evidente per effetto della torsione del filo.
2. In una molla realizzata con un doppio principio, costituita da due fili avvolti in contrapposizione (un'elica destrorsa e una sinistrorsa), si verifica una compensazione relativa degli effetti di rotazione, determinando una torsione complessiva minore.
3. In una molla costituita da due eliche in serie separate da una porzione centrale a forma di anello, in cui il primo tratto è avvolto in forma sinistrorsa e il secondo tratto è costituito da un'elica gemella ma di verso opposto, la rotazione determinata dal primo tratto viene compensata dal secondo, annullando di fatto l'angolo di rotazione complessivo.

== Caratteristiche di sollecitazione e parametri geometrici
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -4em,
  align: (left + horizon, center + horizon),[Per determinare le tensioni nel materiale, si analizza una generica sezione trasversale circolare del filo (di diametro $d$), il cui centro si trova a distanza $r$ dalla retta d'azione della forza verticale $F$ applicata lungo l'asse centrale del cilindro dell'elica. Essendo la sezione trasversale inclinata dell'angolo $alpha$ caratteristico dell'elica, la forza risultante $F$ si scompone in una direzione normale e in una direzione tangenziale (nel piano della sezione trasversale). Trasportando tali azioni al centro della sezione trasversale del filo a distanza $r$, si generano quattro caratteristiche di sollecitazione:],[#image("images/molla forze.png", width:45%)]) 
  #grid(
  columns: (1.4fr, 1fr),
  column-gutter: -4em,
  align: (left + horizon, center + horizon),[- Una componente di momento torcente:
$ M_t = F cos alpha dot.op r tilde.eq F r $
- Una componente di taglio nel piano della sezione:
$ T = F cos alpha tilde.eq F $
- Una componente di momento flettente:
$ M_f = F sin alpha dot.op r tilde.eq 0 $
- Una componente di sforzo normale alla superficie trasversale:
$ N = F sin alpha tilde.eq 0 $],[#image("images/forze elica.png",width:70%)])


#grid(
  columns: (1.5fr, 1fr),
  column-gutter: -2em,
  align: (left + horizon, center + horizon),[Poiché l'angolo d'elica $alpha$ è piccolo, si ha $cos alpha tilde.eq 1$ e $sin alpha tilde.eq 0$. Di conseguenza, le azioni di momento flettente $M_f$ e di sforzo normale $N$ risultano pressoché nulle e vengono trascurate, mentre le caratteristiche di sollecitazione dominanti da considerare nel calcolo sono il momento torcente $M_t tilde.eq F r$ e l'azione di taglio $T tilde.eq F$.],[
#image("images/sezione frontale.png",width:45%)
])

Dal punto di vista geometrico e progettuale si definiscono i seguenti parametri:
- #strong[Lunghezza equivalente ($l_(e q)$):] rappresenta la lunghezza totale sviluppata del filo che lavora, pari alla circonferenza $2 pi r$ divisa per $cos alpha$ e moltiplicata per il numero di spire $i$:
$ l_(e q) = frac(2 pi r, cos alpha) i tilde.eq pi D i $
- #strong[Rapporto caratteristico ($c$):] è il rapporto di scala tra il diametro del cilindro dell'elica e il diametro della sezione trasversale del filo:
$ c = frac(D, d) $
Nella progettazione questo rapporto viene mantenuto in un intervallo ottimale $c = 7 div 12$, in analogia concettuale al proporzionamento tra larghezza di fascia e modulo nelle ruote dentate.
- #strong[Numero di spire efficaci ($i$):] rappresenta il numero di spire che concorrono effettivamente alla deformabilità elastica e alla freccia della molla, escludendo le cosiddette spire morte vincolate agli attacchi. Se le spire alle estremità sono incomplete, ancorate, saldate o costrette, esse non sono libere di subire rotazione per torsione ma fungono solo da elementi di fissaggio; pertanto, il numero di spire efficaci può differire dal numero di anelli contati visivamente sul fianco della molla.

=== Calcolo della tensione massima e della freccia (Coefficiente di Wahl)
Nella barra di torsione rettilinea di lunghezza $l$, applicando la teoria di De Saint-Venant, la tensione tangenziale massima e la freccia (spostamento trasversale correlato all'angolo di torsione $theta$) sono espresse da:
$ tau_(m a x) = frac(M_t, W_t) = frac(F r, pi d^3 / 16) $
$ f = theta r = frac(32 F r^2 l, pi d^4 G) $

Nel caso della molla a elica cilindrica, poiché la struttura non è una trave dritta ma presenta una curvatura che altera sia la distribuzione della torsione sia quella del taglio, invece di utilizzare due formule analitiche distinte per le trave curve si ricorre ancora al paradigma di De Saint-Venant correggendolo mediante i coefficienti correttivi $lambda'$ e $lambda''$:
$ tau_(m a x) = lambda' frac(F r, pi d^3 / 16) = lambda' frac(8 F D, pi d^3) = lambda' frac(8 F c, pi d^2) $
$ f = lambda'' frac(F r^2 l_(e q), pi d^4 G / 32) = lambda'' frac(8 F D^3 i, G d^4) = lambda'' frac(8 F c^3 i, G d) $

Per un rapporto caratteristico nell'intervallo ottimale $c = 7 div 12$, i coefficienti assumono le seguenti espressioni (con $lambda'$ noto come coefficiente di Wahl):
$ lambda' = frac(4c - 1, 4c - 4) + frac(0.615, c) quad "(Wahl)" $
$ lambda'' = 1 $

Nel coefficiente di Wahl $lambda'$, il primo addendo $frac(4c - 1, 4c - 4)$ tiene conto dell'effetto della curvatura sulla torsione, mentre il secondo addendo $frac(0.615, c)$ tiene conto dell'effetto tagliante.
Dal punto di vista fisico e progettuale, il valore del rapporto $c = D/d$ governa il comportamento della molla:
- Se $c < 7$ (diametro del filo $d$ importante rispetto al diametro dell'elica $D$, ovvero spira stretta e filo grosso), la molla è molto rigida e fortemente sollecitata.
- Se $c > 12$ (diametro dell'elica $D$ molto ampio rispetto a un filo sottile $d$), la molla è molto flessibile, presenta frecce pronunciate ed è poco utilizzata.
#pagebreak()
== Effetto della curvatura, taglio e confronto con l'effetto di intaglio
#grid(
  columns: (1fr, 1fr),
  rows:2,
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Nella teoria della trave curva (sia a flessione che a torsione), a differenza della barra ad asse rettilineo, quando interviene una curvatura importante l'asse neutro (luogo dei punti a deformazione e tensione nulla) non coincide più con la linea d'asse geometrica passante per il centro della sezione, ma si sposta verso l'interno del raggio di curvatura. 
],[
#canvas(length: 0.8cm, {
  import draw: *

  line((-2.60, 0.75), (2.60, 0.75), stroke: 1pt)
  line((-2.60, -0.75), (2.60, -0.75), stroke: 1pt)

  bezier((-2.60, 0.75), (-2.60, 0.0), (-2.82, 0.50), (-2.75, 0.20), stroke: 0.9pt)
  bezier((-2.60, 0.0), (-2.60, -0.75), (-2.45, -0.20), (-2.42, -0.55), stroke: 0.9pt)
  bezier((-2.60, 0.0), (-2.60, -0.75), (-2.85, -0.25), (-2.85, -0.65), stroke: 0.9pt)

  bezier((2.60, 0.75), (2.60, 0.0), (2.80, 0.50), (2.75, 0.20), stroke: 0.9pt)
  bezier((2.60, 0.0), (2.60, -0.75), (2.45, -0.20), (2.42, -0.55), stroke: 0.9pt)
  bezier((2.60, 0.0), (2.60, -0.75), (2.85, -0.25), (2.85, -0.65), stroke: 0.9pt)

  line((-3.40, 0.0), (-2.45, 0.0), stroke: 0.8pt)
  line((-2.30, 0.0), (0.20, 0.0), stroke: 0.8pt)
  line((0.35, 0.0), (2.45, 0.0), stroke: 0.8pt)
  line((2.60, 0.0), (3.40, 0.0), stroke: 0.8pt)

  line((0.0, -0.75), (0.0, 0.75), stroke: 0.8pt)
  content((0.0, 0.95), [#text(size: 8pt)[$0$]], anchor: "south")
  content((0.0, -0.95), [#text(size: 8pt)[$0$]], anchor: "north")

  line((-1.15, -0.75), (1.15, 0.75), stroke: (paint: red, thickness: 1.8pt))

  content((1.15, 1.55), [#text(size: 8pt)[$tau = display((T c) / J)$]], anchor: "center")
  content((-1.05, -1.55), [#text(size: 8pt)[$tau = display((T c) / J)$]], anchor: "center")

  arc((-5.15, 0.0), start: -24deg, stop: 24deg, radius: 3.20, anchor: "origin", mark: (start: ">"), stroke: 1.5pt)
  content((-2.35, -1.55), [#text(size: 8pt)[$T$]], anchor: "north")

  arc((-0.95, 0.0), start: -22deg, stop: 24deg, radius: 3.20, anchor: "origin", mark: (end: ">"), stroke: 1.5pt)
  content((2.20, 1.55), [#text(size: 8pt)[$T$]], anchor: "south")

  content((0.0, -2.65), [#text(size: 8pt)[(a)]], anchor: "center")
  content((0.0, -3.35), [#text(size: 8pt)[Barra di torsione ad asse rettilineo]], anchor: "center")
})
],[  Di conseguenza, la distribuzione delle tensioni tangenziali lungo il diametro della sezione non è più lineare (rappresentata da una retta con valori simmetrici $tau = frac(T r, J)$ agli estremi), ma diventa non lineare, seguendo una legge di ordine superiore. Tale distribuzione risulta sbilanciata: sulle fibre più interne rispetto alla curvatura, dove la curvatura è più accentuata, si sviluppa un picco di tensione $tau > frac(T r, J)$, mentre sulle fibre esterne si raggiunge un valore inferiore $tau < frac(T r, J)$.],[#canvas(length: 0.8cm, {
  import draw: *

  line((-1.05, 0.0), (-0.15, 0.0), stroke: 0.7pt)
  line((0.15, 0.0), (1.05, 0.0), stroke: 0.7pt)
  line((-0.08, 0.0), (0.08, 0.0), stroke: 0.7pt)
  line((0.0, -0.45), (0.0, 0.12), stroke: 0.7pt)

  line((0.0, 0.22), (0.0, 4.90), stroke: 0.7pt)
  line((0.0, 5.05), (0.0, 6.20), stroke: 0.7pt)
  content((0.12, 5.95), [#text(size: 8pt)[Piano m]], anchor: "west")

  line((0.0, 0.22), (-0.85, 4.82), stroke: 0.7pt)
  line((-0.88, 4.98), (-1.08, 6.12), stroke: 0.7pt)
  content((-1.15, 5.75), [#text(size: 8pt)[Piano n]], anchor: "east")

  arc((0.0, 0.0), start: 52deg, stop: 126deg, radius: 4.60, anchor: "origin", stroke: 1pt)
  arc((0.0, 0.0), start: 52deg, stop: 126deg, radius: 3.20, anchor: "origin", stroke: 1pt)

  arc((0.0, 0.0), start: 45deg, stop: 62deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 65deg, stop: 112deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 115deg, stop: 123deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 126deg, stop: 136deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)

  bezier((-2.70, 3.72), (-2.29, 3.16), (-2.92, 3.52), (-2.50, 3.25), stroke: 0.9pt)
  bezier((-2.29, 3.16), (-1.88, 2.59), (-2.08, 3.07), (-1.75, 2.75), stroke: 0.9pt)
  bezier((-2.29, 3.16), (-1.88, 2.59), (-2.52, 2.92), (-2.12, 2.45), stroke: 0.9pt)

  bezier((2.83, 3.62), (2.40, 3.07), (3.02, 3.42), (2.60, 3.18), stroke: 0.9pt)
  bezier((2.40, 3.07), (1.97, 2.52), (2.20, 2.96), (1.85, 2.68), stroke: 0.9pt)
  bezier((2.40, 3.07), (1.97, 2.52), (2.62, 2.84), (2.20, 2.38), stroke: 0.9pt)

  circle((-0.56, 3.15), radius: 0.06, fill: black, stroke: none)
  circle((0.0, 3.20), radius: 0.06, fill: black, stroke: none)
  circle((-0.80, 4.53), radius: 0.06, fill: black, stroke: none)
  circle((0.0, 4.60), radius: 0.06, fill: black, stroke: none)

  content((-0.68, 2.85), [#text(size: 8pt)[$a$]], anchor: "east")
  content((0.15, 2.85), [#text(size: 8pt)[$b$]], anchor: "west")
  content((-0.92, 4.82), [#text(size: 8pt)[$c$]], anchor: "east")
  content((0.15, 4.85), [#text(size: 8pt)[$d$]], anchor: "west")

  line((0.0, 3.20), (-1.55, 3.20), stroke: 0.9pt)
  line((0.0, 4.60), (0.95, 4.50), stroke: 0.9pt)

  arc((-1.788, 6.712), start: -86.12deg, stop: -38.93deg, radius: 3.520, anchor: "origin", stroke: (paint: red, thickness: 1.8pt))

  line((-1.25, 2.35), (-1.52, 3.12), mark: (end: ">"), stroke: 0.6pt)
  content((-1.15, 1.75), [#text(size: 8pt)[$tau > display((T c) / J)$]], anchor: "center")
  content((1.45, 5.15), [#text(size: 8pt)[$tau < display((T c) / J)$]], anchor: "west")

  arc((-3.55, 2.45), start: -12deg, stop: 62deg, radius: 1.80, anchor: "origin", mark: (start: ">"), stroke: 1.5pt)
  content((-2.05, 1.75), [#text(size: 8pt)[$T$]], anchor: "north")

  arc((0.55, 4.20), start: -56deg, stop: 5deg, radius: 1.95, anchor: "origin", mark: (end: ">"), stroke: 1.5pt)
  content((2.60, 4.55), [#text(size: 8pt)[$T$]], anchor: "south")

  content((0.0, -0.95), [#text(size: 8pt)[(b)]], anchor: "center")
  content((0.0, -1.65), [#text(size: 8pt)[Barra di torsione ad asse curvo]], anchor: "center")
})])

Scorporando i due contributi che compongono la tensione tangenziale massima nella molla, si ha:
- #strong[Effetto della curvatura:]
$ tau_(m a x, t o r s) = frac(4c - 1, 4c - 4) frac(F r, pi d^3 / 16) $
- #strong[Tensioni dovute al taglio:] l'azione tagliante sulla sezione circolare è proporzionale alla forza $F$ divisa per l'area $pi d^2 / 4$, corretta con un fattore $1.23$; esprimendo tale termine in funzione del parametro di progetto $c$, si ottiene il secondo addendo del coefficiente di Wahl:
$ tau_(m a x, t a g l i o) = 1.23 frac(F, pi d^2 / 4) = frac(0.615, c) frac(F r, pi d^3 / 16) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  rows:2,
  align: (left + horizon, center + horizon),[Sebbene l'approccio del coefficiente correttivo sembri analogo a quello del fattore di concentrazione delle tensioni $K_t = frac(sigma_(p e a k), sigma_(n o m i n a l))$ utilizzato per l'effetto di intaglio, i due fenomeni sono concettualmente e fisicamente molto diversi. Nell'effetto di intaglio la variazione brusca di sezione altera il gradiente in modo molto severo ma in una porzione di superficie estremamente localizzata e sottile, rendendo applicabili nei materiali duttili le considerazioni sulla plasticizzazione locale e sulla ridistribuzione delle tensioni (recovering).],[#canvas(length: 1cm, {
  import draw: *

  // --- RIEMPIMENTI (ZONA CAMPITA DEL DIAGRAMMA) ---
  // Poligono approssimante l'area sottesa dalle curve di Bezier per la campitura grigia
  line(
    (0.0, 0.0), (0.08, 0.25), (0.18, 0.50), (0.36, 0.68), (0.60, 0.80), (0.95, 0.87), (1.35, 0.90), (0.0, 0.90),
    close: true, fill: black.transparentize(82%), stroke: none
  )
  line(
    (0.0, 0.0), (-0.08, -0.25), (-0.18, -0.50), (-0.36, -0.68), (-0.60, -0.80), (-0.95, -0.87), (-1.35, -0.90), (0.0, -0.90),
    close: true, fill: black.transparentize(82%), stroke: none
  )

  // --- CONTORNO DELLA PIASTRA CON INTAGLI ---
  // Parte superiore sinistra e destra
  line((-0.25, 1.15), (-3.2, 1.15), (-3.2, -1.15), (-0.25, -1.15), stroke: 1pt)
  line((0.25, 1.15), (3.2, 1.15), (3.2, -1.15), (0.25, -1.15), stroke: 1pt)

  // Intagli semicircolari
  arc((0.0, 1.15), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 1pt)
  arc((0.0, -1.15), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 1pt)

  // --- DIAGRAMMA DELLE TENSIONI ---
  // Asse verticale e basi
  line((-1.35, -0.90), (0.0, -0.90), (0.0, 0.90), (1.35, 0.90), stroke: 0.9pt)

  // Profilo curvo delle tensioni (2 Bezier raccordati nel flesso (0,0))
  bezier((-1.35, -0.90), (0.0, 0.0), (-0.55, -0.90), (-0.22, -0.78), stroke: 1pt)
  bezier((0.0, 0.0), (1.35, 0.90), (0.22, 0.78), (0.55, 0.90), stroke: 1pt)

  // Retta tensione nominale tratteggiata
  line((-0.65, -0.90), (0.65, 0.90), stroke: (dash: "dashed", thickness: 0.8pt))

  // Vettore tensione generica sigma_y e richiamo
  line((0.0, 0.68), (0.36, 0.68), mark: (end: ">"), stroke: 0.9pt)
  line((0.22, 0.68), (0.52, 0.42), stroke: 0.7pt)
  content((0.55, 0.38), [$sigma_y$], anchor: "west")

  // Asse x locale
  line((-0.33, 0.0), (-0.17, 0.0), stroke: 0.9pt)
  line((-0.25, 0.0), (-0.25, 0.38), mark: (end: ">"), stroke: 0.8pt)
  content((-0.35, 0.28), [$x$], anchor: "east")

  // --- QUOTE E MOMENTI ---
  // Quota h a destra
  line((1.55, 0.90), (1.90, 0.90), stroke: 0.8pt)
  line((0.20, -0.90), (1.90, -0.90), stroke: 0.8pt)
  line((1.75, -0.90), (1.75, 0.90), mark: (start: ">", end: ">"), stroke: 0.8pt)
  content((1.88, 0.0), [$h$], anchor: "west")

  // Quote inferiori sigma_nominal e sigma_peak
  line((0.0, -1.22), (0.0, -2.05), stroke: 0.7pt)
  line((-0.65, -0.95), (-0.65, -1.62), stroke: 0.7pt)
  line((-1.35, -0.95), (-1.35, -2.05), stroke: 0.7pt)

  // Freccia sigma_nominal
  line((-0.65, -1.52), (0.0, -1.52), mark: (start: ">", end: ">"), stroke: 0.8pt)
  line((-0.32, -1.52), (-0.32, -1.66), (0.08, -1.66), stroke: 0.7pt)
  content((0.12, -1.66), [$sigma_"nominal"$], anchor: "west")

  // Freccia sigma_peak
  line((-1.35, -1.95), (0.0, -1.95), mark: (start: ">", end: ">"), stroke: 0.8pt)
  content((-0.68, -2.02), [$sigma_"peak"$], anchor: "north")

  // Momenti flettenti M alle estremita
  // Sinistra
  arc((-2.85, 0.0), start: 135deg, stop: 225deg, radius: 1.05, anchor: "origin", mark: (end: ">"), stroke: 0.9pt)
  // Destra
  arc((2.85, 0.0), start: -45deg, stop: 45deg, radius: 1.05, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)
  content((4.02, 0.0), [$M$], anchor: "west")

  // Formula K_t in basso a destra
  content((4.1, -1.85), [$K_t = display(sigma_"peak" / sigma_"nominal")$], anchor: "center")
})],[ Nell'effetto di curvatura, invece, lo spostamento dell'asse neutro verso il raggio interno (ad esempio in una molla o in un gancio di un moschettone) altera la forma del gradiente su una porzione di sezione trasversale molto ampia e percentualmente dominante rispetto alla superficie resistente totale. Pertanto, la curvatura è molto dannosa, non consente di fare affidamento sulla ridistribuzione locale delle tensioni e l'intensificazione della tensione tangenziale va sempre inclusa nel calcolo.],[#canvas(length: 1cm, {
  import draw: *

  // --- PARTE SINISTRA: DIAGRAMMA DELLE TENSIONI ---
  // Contorno principale spesso
  line((1.0, 1.3), (0.0, 1.3), (0.0, -1.3), (-1.4, -1.3), stroke: 1.8pt)

  // Curva della tensione (arco di cerchio)
  arc((-3.345, 2.903), start: -65.17deg, stop: -20.25deg, radius: 4.631, anchor: "origin", stroke: 1pt)

  // Distribuzione lineare tratteggiata
  line((-1.1, -1.3), (1.1, 1.3), stroke: (dash: "dashed", thickness: 0.9pt))

  // Tratteggio orizzontale del diagramma
  line((0.0, 1.0), (0.86, 1.0), stroke: 0.8pt)
  line((0.0, 0.65), (0.68, 0.65), stroke: 0.8pt)
  line((0.0, 0.3), (0.47, 0.3), stroke: 0.8pt)
  line((0.0, -0.4), (-0.10, -0.4), stroke: 0.8pt)
  line((0.0, -0.7), (-0.42, -0.7), stroke: 0.8pt)
  line((0.0, -1.0), (-0.85, -1.0), stroke: 0.8pt)

  // Quota superiore f_{b,o}
  line((0.0, 1.45), (0.0, 1.95), stroke: 0.8pt)
  line((1.0, 1.45), (1.0, 1.95), stroke: 0.8pt)
  line((-0.05, 1.80), (1.05, 1.80), stroke: 0.8pt)
  line((-0.08, 1.72), (0.08, 1.88), stroke: 0.8pt)
  line((0.92, 1.72), (1.08, 1.88), stroke: 0.8pt)
  content((0.5, 1.88), [$f_("b,o")$], anchor: "south")

  // Quote inferiori f_b e f_{b,i}
  line((0.0, -1.45), (0.0, -2.55), stroke: 0.8pt)
  line((-1.1, -1.45), (-1.1, -2.05), stroke: 0.8pt)
  line((-1.4, -1.45), (-1.4, -2.55), stroke: 0.8pt)

  // Linea quota f_b
  line((-1.15, -1.90), (0.05, -1.90), stroke: 0.8pt)
  line((-1.18, -1.98), (-1.02, -1.82), stroke: 0.8pt)
  line((-0.08, -1.98), (0.08, -1.82), stroke: 0.8pt)
  content((-0.55, -1.86), [$f_"b"$], anchor: "south")

  // Linea quota f_{b,i}
  line((-1.45, -2.40), (0.05, -2.40), stroke: 0.8pt)
  line((-1.48, -2.48), (-1.32, -2.32), stroke: 0.8pt)
  line((-0.08, -2.48), (0.08, -2.32), stroke: 0.8pt)
  content((-0.70, -2.36), [$f_("b,i")$], anchor: "south")


  // --- ASSI DI COLLEGAMENTO (BARICENTRICO E NEUTRO) ---
  // Asse baricentrico (superiore, y = 0.0)
  line((-1.45, 0.0), (3.0, 0.0), stroke: (dash: "dash-dotted", thickness: 0.9pt))
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 23.0, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.9pt))

  // Asse neutro (inferiore, y = -0.30, piu marcato al centro)
  line((-0.25, -0.30), (3.35, -0.30), stroke: (dash: "dash-dotted", thickness: 1.4pt))
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 22.7, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.9pt))


  // --- PARTE DESTRA: CONCIO DI TRAVE CURVA ---
  // Estradosso e intradosso (archi spessi)
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 24.3, anchor: "origin", stroke: 2.2pt)
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 21.7, anchor: "origin", stroke: 2.2pt)

  // Sezione sinistra indeformata e deformata
  line((3.0, -1.3), (3.0, 1.3), stroke: (dash: "dashed", thickness: 0.9pt))
  line((2.15, -1.3), (4.36, 1.28), stroke: (dash: "dashed", thickness: 0.9pt))
  line((2.15, -1.3), (3.0, -1.3), stroke: (dash: "dashed", thickness: 0.9pt))

  // Sezione destra
  line((5.50, -1.60), (5.90, 1.80), stroke: (dash: "dashed", thickness: 0.9pt))

  // Quota superiore Delta l_o
  line((3.0, 1.40), (3.0, 2.35), stroke: 0.8pt)
  line((4.38, 1.85), (4.38, 2.35), stroke: 0.8pt)
  line((2.95, 2.20), (4.43, 2.20), stroke: 0.8pt)
  line((2.92, 2.12), (3.08, 2.28), stroke: 0.8pt)
  line((4.30, 2.12), (4.46, 2.28), stroke: 0.8pt)
  content((3.69, 2.25), [$Delta l_"o"$], anchor: "south")

  // Quota inferiore Delta l_i
  line((2.15, -1.45), (2.15, -2.05), stroke: 0.8pt)
  line((3.0, -1.45), (3.0, -2.05), stroke: 0.8pt)
  line((2.10, -1.90), (3.05, -1.90), stroke: 0.8pt)
  line((2.07, -1.98), (2.23, -1.82), stroke: 0.8pt)
  line((2.92, -1.98), (3.08, -1.82), stroke: 0.8pt)
  content((2.58, -1.85), [$Delta l_"i"$], anchor: "south")

  // Quota l_o
  line((4.25, 1.75), (3.05, 1.80), mark: (end: ">"), stroke: 0.7pt)
  line((4.75, 1.72), (5.84, 1.60), mark: (end: ">"), stroke: 0.7pt)
  content((4.52, 1.73), [$l_"o"$], anchor: "center")

  // Quota l_i
  line((4.05, -0.95), (3.05, -0.90), mark: (end: ">"), stroke: 0.7pt)
  line((4.55, -0.98), (5.52, -1.10), mark: (end: ">"), stroke: 0.7pt)
  content((4.32, -0.96), [$l_"i"$], anchor: "center")

  // Momenti flettenti M
  // Sinistra (orario)
  arc((2.65, -0.05), start: 130deg, stop: 245deg, radius: 0.42, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)
  content((2.15, 0.30), [$M$], anchor: "east")

  // Destra (antiorario)
  arc((5.98, -0.15), start: -55deg, stop: 55deg, radius: 0.42, anchor: "origin", mark: (end: ">"), stroke: 0.9pt)
  content((6.45, -0.15), [$M$], anchor: "west")
})])

=== Determinazione delle spire efficaci, lunghezza libera e lunghezza a pacco
Nota la rigidezza $k$ della molla, il numero di spire efficaci $i$ che partecipano effettivamente alla deformazione elastica si calcola a partire dall'espressione della freccia:
$ f = lambda'' frac(8 F c^3 i, G d) = frac(F, k) $
Scegliendo il rapporto caratteristico nell'intervallo $c = 7 div 12$, si ha $lambda'' = 1$ e quindi:
$ i = frac(G d, 8 c^3 k) $

Il legame tra il numero di spire efficaci $i$, il numero di spire totali $n$ (contate visivamente sul fianco della molla), la lunghezza libera a riposo $L_0$ (dipendente dal passo $p$, definito come la distanza lungo l'asse dell'elica tra due punti omologhi su spire successive, esattamente come nel caso dei `[?]`) e la lunghezza a pacco $L_b$ dipende dal tipo di realizzazione e vincolamento delle estremità della molla:
1. #strong[Estremità semplice (1):] il filo inizia e termina in corrispondenza dello stesso punto formando anelli completi, lasciati nella posizione di costruzione e debolmente vincolati all'esterno senza irrigidimenti (configurazione tipica dei dinamometri). Tutte le spire contate lavorano a torsione.
2. #strong[Estremità semplice e molata (2):] le estremità vengono molate per asportazione di materiale al fine di creare una superficie piana di appoggio. Il vincolamento irrigidisce le porzioni terminali per effetto dell'incastro, riducendo di un'unità le spire efficaci rispetto a quelle totali.
3. #strong[Estremità troncata (3):] le spire terminali vengono piegate (introducendo una mini-plasticizzazione locale) per portarle in battuta piana, generando un vincolamento esteso che blocca le prime porzioni; solo le spire centrali si deformano, per cui le spire totali sono due in più rispetto a quelle efficaci.
4. #strong[Estremità troncata e molata (4):] le spire terminali sono sia piegate sia molate, producendo un vincolamento molto insistente analogo al caso precedente, con una differenza di due unità tra spire totali e spire efficaci.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le relazioni analitiche per le quattro configurazioni sono riassunte nella seguente tabella:

#table(
  columns: 4,
  align: (left, center, center, center),
  [Tipo di estremità], [$n$ ], [$L_0$], [$L_b$],
  [#strong[Semplice]], [$i$], [$i p + d$], [$(i + 1) d$],
  [#strong[Semplice e Molata]], [$i + 1$], [$p(i + 1)$], [$d(i + 1)$],
  [#strong[Troncata]], [$i + 2$], [$i p + 3d$], [$(i + 3) d$],
  [#strong[Troncata e Molata]], [$i + 2$], [$i p + 2d$], [$(i + 2) d$],
)],[
#canvas(length: 1cm, {
  import draw: *

  // =======================================================
  // RIEMPIMENTI (grigio chiaro come nell'illustrazione)
  // =======================================================
  // Viste dall'alto - corone circolari
  circle((0.00, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((0.00, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((2.40, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((2.40, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((4.80, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((4.80, 0.00), radius: 0.55, fill: white, stroke: none)
  circle((7.20, 0.00), radius: 0.75, fill: black.transparentize(85%), stroke: none)
  circle((7.20, 0.00), radius: 0.55, fill: white, stroke: none)

  // Riempimenti spire - Colonna 1
  line((-0.65, -1.54), (-0.07, -1.62), (0.65, -1.72), (0.65, -1.52), (-0.05, -1.42), (-0.65, -1.34), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -1.90), (-0.07, -1.98), (0.65, -2.08), (0.65, -1.88), (0.07, -1.80), (-0.65, -1.70), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.26), (-0.07, -2.34), (0.65, -2.44), (0.65, -2.24), (0.07, -2.16), (-0.65, -2.06), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.62), (-0.07, -2.70), (0.65, -2.80), (0.65, -2.60), (0.07, -2.52), (-0.65, -2.42), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -2.98), (0.05, -3.08), (0.65, -3.16), (0.65, -2.96), (0.07, -2.88), (-0.65, -2.78), close: true, fill: black.transparentize(75%), stroke: none)
  line((-0.65, -1.34), (-0.07, -1.26), (-0.04, -1.46), (-0.65, -1.54), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -1.70), (0.65, -1.52), (0.65, -1.72), (-0.65, -1.90), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.06), (0.65, -1.88), (0.65, -2.08), (-0.65, -2.26), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.42), (0.65, -2.24), (0.65, -2.44), (-0.65, -2.62), close: true, fill: black.transparentize(86%), stroke: none)
  line((-0.65, -2.78), (0.65, -2.60), (0.65, -2.80), (-0.65, -2.98), close: true, fill: black.transparentize(86%), stroke: none)
  line((0.04, -3.04), (0.65, -2.96), (0.65, -3.16), (0.07, -3.24), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 2
  line((1.75, -1.40), (3.05, -1.40), (3.05, -1.50), (2.33, -1.52), (1.75, -1.52), close: true, fill: black.transparentize(80%), stroke: none)
  line((1.75, -1.78), (2.33, -1.86), (3.05, -1.96), (3.05, -1.76), (2.47, -1.68), (1.75, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.14), (2.33, -2.22), (3.05, -2.32), (3.05, -2.12), (2.47, -2.04), (1.75, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.50), (2.33, -2.58), (3.05, -2.68), (3.05, -2.48), (2.47, -2.40), (1.75, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -2.86), (2.33, -2.94), (3.05, -3.04), (3.05, -2.84), (2.47, -2.76), (1.75, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((1.75, -3.22), (3.05, -3.22), (3.05, -3.10), (2.47, -3.10), (1.75, -3.12), close: true, fill: black.transparentize(80%), stroke: none)
  line((1.75, -1.58), (3.05, -1.40), (3.05, -1.60), (1.75, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -1.94), (3.05, -1.76), (3.05, -1.96), (1.75, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -2.30), (3.05, -2.12), (3.05, -2.32), (1.75, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -2.66), (3.05, -2.48), (3.05, -2.68), (1.75, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((1.75, -3.02), (3.05, -2.84), (3.05, -3.04), (1.75, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 3
  line((4.15, -1.22), (4.80, -1.22), (4.80, -1.31), (5.45, -1.40), (5.45, -1.50), (4.15, -1.42), close: true, fill: black.transparentize(80%), stroke: none)
  line((4.15, -1.78), (4.73, -1.86), (5.45, -1.96), (5.45, -1.76), (4.87, -1.68), (4.15, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.14), (4.73, -2.22), (5.45, -2.32), (5.45, -2.12), (4.87, -2.04), (4.15, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.50), (4.73, -2.58), (5.45, -2.68), (5.45, -2.48), (4.87, -2.40), (4.15, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -2.86), (4.73, -2.94), (5.45, -3.04), (5.45, -2.84), (4.87, -2.76), (4.15, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((4.15, -3.22), (4.80, -3.31), (4.80, -3.40), (5.45, -3.40), (5.45, -3.20), (4.15, -3.12), close: true, fill: black.transparentize(80%), stroke: none)
  line((4.15, -1.58), (5.45, -1.40), (5.45, -1.60), (4.15, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -1.94), (5.45, -1.76), (5.45, -1.96), (4.15, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -2.30), (5.45, -2.12), (5.45, -2.32), (4.15, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -2.66), (5.45, -2.48), (5.45, -2.68), (4.15, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((4.15, -3.02), (5.45, -2.84), (5.45, -3.04), (4.15, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // Riempimenti spire - Colonna 4
  line((6.55, -1.32), (7.95, -1.32), (7.13, -1.49), (6.55, -1.46), close: true, fill: black.transparentize(80%), stroke: none)
  line((6.55, -1.78), (7.13, -1.86), (7.85, -1.96), (7.85, -1.76), (7.27, -1.68), (6.55, -1.58), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.14), (7.13, -2.22), (7.85, -2.32), (7.85, -2.12), (7.27, -2.04), (6.55, -1.94), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.50), (7.13, -2.58), (7.85, -2.68), (7.85, -2.48), (7.27, -2.40), (6.55, -2.30), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.55, -2.86), (7.13, -2.94), (7.85, -3.04), (7.85, -2.84), (7.27, -2.76), (6.55, -2.66), close: true, fill: black.transparentize(75%), stroke: none)
  line((6.45, -3.30), (7.85, -3.30), (7.85, -3.16), (7.27, -3.13), close: true, fill: black.transparentize(80%), stroke: none)
  line((6.55, -1.58), (7.85, -1.40), (7.85, -1.60), (6.55, -1.78), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -1.94), (7.85, -1.76), (7.85, -1.96), (6.55, -2.14), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -2.30), (7.85, -2.12), (7.85, -2.32), (6.55, -2.50), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -2.66), (7.85, -2.48), (7.85, -2.68), (6.55, -2.86), close: true, fill: black.transparentize(86%), stroke: none)
  line((6.55, -3.02), (7.85, -2.84), (7.85, -3.04), (6.55, -3.22), close: true, fill: black.transparentize(86%), stroke: none)

  // =======================================================
  // VISTE DALL'ALTO (RIGA SUPERIORE, y = 0)
  // =======================================================
  // 1. Estremita semplice
  circle((0.00, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((0.00, 0.00), radius: 0.55, stroke: 1.2pt)
  circle((0.00, -0.65), radius: (0.03, 0.10), fill: white, stroke: 1pt)

  // 2. Estremita semplice e molata
  circle((2.40, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((2.40, 0.00), radius: 0.55, stroke: 1.2pt)
  arc((2.40, -0.65), start: -90deg, stop: 90deg, radius: (0.08, 0.10), anchor: "origin", stroke: 1pt)
  arc((3.05, 0.00), start: 180deg, stop: 360deg, radius: (0.10, 0.08), anchor: "origin", stroke: 1pt)

  // 3. Estremita troncata
  circle((4.80, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((4.80, 0.00), radius: 0.55, stroke: 1.2pt)
  line((4.80, -0.75), (4.80, -0.55), stroke: 1.2pt)

  // 4. Estremita troncata e molata
  circle((7.20, 0.00), radius: 0.75, stroke: 1.2pt)
  circle((7.20, 0.00), radius: 0.55, stroke: 1.2pt)
  arc((6.60, 0.16), start: -10deg, stop: 170deg, radius: (0.10, 0.08), anchor: "origin", stroke: 1pt)
  arc((7.48, 0.57), start: 115deg, stop: 245deg, radius: (0.12, 0.10), anchor: "origin", stroke: 1pt)

  // =======================================================
  // VISTE LATERALI - COLONNA 1: ESTREMITA SEMPLICE (x_c = 0.00)
  // =======================================================
  // Mezza spira superiore (con sezione di taglio al centro)
  arc((-0.65, -1.44), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -1.34), (-0.07, -1.26), (-0.04, -1.46), (-0.65, -1.54), stroke: 1.2pt)
  // Spira posteriore 1
  line((-0.65, -1.54), (-0.07, -1.62), stroke: 1pt)
  line((-0.05, -1.42), (0.65, -1.52), stroke: 1.2pt)

  // Spira anteriore 1
  arc((-0.65, -1.80), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -1.62), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -1.70), (0.65, -1.52), stroke: 1.2pt)
  line((-0.65, -1.90), (0.65, -1.72), stroke: 1.2pt)
  // Spira posteriore 2
  line((-0.65, -1.90), (-0.07, -1.98), stroke: 1pt)
  line((0.07, -1.80), (0.65, -1.88), stroke: 1pt)

  // Spira anteriore 2
  arc((-0.65, -2.16), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -1.98), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.06), (0.65, -1.88), stroke: 1.2pt)
  line((-0.65, -2.26), (0.65, -2.08), stroke: 1.2pt)
  // Spira posteriore 3
  line((-0.65, -2.26), (-0.07, -2.34), stroke: 1pt)
  line((0.07, -2.16), (0.65, -2.24), stroke: 1pt)

  // Spira anteriore 3
  arc((-0.65, -2.52), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -2.34), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.42), (0.65, -2.24), stroke: 1.2pt)
  line((-0.65, -2.62), (0.65, -2.44), stroke: 1.2pt)
  // Spira posteriore 4
  line((-0.65, -2.62), (-0.07, -2.70), stroke: 1pt)
  line((0.07, -2.52), (0.65, -2.60), stroke: 1pt)

  // Spira anteriore 4
  arc((-0.65, -2.88), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((0.65, -2.70), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((-0.65, -2.78), (0.65, -2.60), stroke: 1.2pt)
  line((-0.65, -2.98), (0.65, -2.80), stroke: 1.2pt)
  // Spira posteriore 5
  line((-0.65, -2.98), (0.05, -3.08), stroke: 1.2pt)
  line((0.07, -2.88), (0.65, -2.96), stroke: 1pt)

  // Mezza spira inferiore (con sezione di taglio al centro)
  arc((0.65, -3.06), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((0.65, -2.96), (0.04, -3.04), (0.07, -3.24), (0.65, -3.16), stroke: 1.2pt)

  // =======================================================
  // VISTE LATERALI - COLONNA 2: ESTREMITA SEMPLICE E MOLATA (x_c = 2.40)
  // =======================================================
  // Estremita superiore molata piana
  line((1.75, -1.40), (3.05, -1.40), stroke: 1.2pt)
  arc((1.75, -1.46), start: 90deg, stop: 270deg, radius: 0.06, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.52), (2.62, -1.40), stroke: 1.2pt)
  line((2.04, -1.48), (2.33, -1.52), stroke: 1pt)

  // Spira anteriore 1
  arc((1.75, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.58), (3.05, -1.40), stroke: 1.2pt)
  line((1.75, -1.78), (3.05, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((1.75, -1.78), (2.33, -1.86), stroke: 1pt)
  line((2.47, -1.68), (3.05, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((1.75, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -1.94), (3.05, -1.76), stroke: 1.2pt)
  line((1.75, -2.14), (3.05, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((1.75, -2.14), (2.33, -2.22), stroke: 1pt)
  line((2.47, -2.04), (3.05, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((1.75, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -2.30), (3.05, -2.12), stroke: 1.2pt)
  line((1.75, -2.50), (3.05, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((1.75, -2.50), (2.33, -2.58), stroke: 1pt)
  line((2.47, -2.40), (3.05, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((1.75, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -2.66), (3.05, -2.48), stroke: 1.2pt)
  line((1.75, -2.86), (3.05, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((1.75, -2.86), (2.33, -2.94), stroke: 1pt)
  line((2.47, -2.76), (3.05, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((1.75, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((3.05, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((1.75, -3.02), (3.05, -2.84), stroke: 1.2pt)
  line((1.75, -3.22), (3.05, -3.04), stroke: 1.2pt)

  // Estremita inferiore molata piana
  line((1.75, -3.22), (3.05, -3.22), stroke: 1.2pt)
  arc((3.05, -3.16), start: -90deg, stop: 90deg, radius: 0.06, anchor: "origin", stroke: 1.2pt)
  line((2.18, -3.22), (3.05, -3.10), stroke: 1.2pt)
  line((2.47, -3.12), (2.76, -3.16), stroke: 1pt)

  // =======================================================
  // VISTE LATERALI - COLONNA 3: ESTREMITA TRONCATA (x_c = 4.80)
  // =======================================================
  // Mezza spira superiore piegata orizzontalmente
  arc((4.15, -1.32), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.22), (4.80, -1.22), (4.80, -1.42), (4.15, -1.42), stroke: 1.2pt)
  line((4.80, -1.31), (5.45, -1.40), stroke: 1.2pt)
  line((4.50, -1.42), (4.73, -1.45), stroke: 1pt)

  // Spira anteriore 1
  arc((4.15, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.58), (5.45, -1.40), stroke: 1.2pt)
  line((4.15, -1.78), (5.45, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((4.15, -1.78), (4.73, -1.86), stroke: 1pt)
  line((4.87, -1.68), (5.45, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((4.15, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -1.94), (5.45, -1.76), stroke: 1.2pt)
  line((4.15, -2.14), (5.45, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((4.15, -2.14), (4.73, -2.22), stroke: 1pt)
  line((4.87, -2.04), (5.45, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((4.15, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -2.30), (5.45, -2.12), stroke: 1.2pt)
  line((4.15, -2.50), (5.45, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((4.15, -2.50), (4.73, -2.58), stroke: 1pt)
  line((4.87, -2.40), (5.45, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((4.15, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -2.66), (5.45, -2.48), stroke: 1.2pt)
  line((4.15, -2.86), (5.45, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((4.15, -2.86), (4.73, -2.94), stroke: 1pt)
  line((4.87, -2.76), (5.45, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((4.15, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((5.45, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((4.15, -3.02), (5.45, -2.84), stroke: 1.2pt)
  line((4.15, -3.22), (5.45, -3.04), stroke: 1.2pt)

  // Mezza spira inferiore piegata orizzontalmente
  line((4.15, -3.22), (4.80, -3.31), stroke: 1.2pt)
  line((4.87, -3.17), (5.10, -3.20), stroke: 1pt)
  arc((5.45, -3.30), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((5.45, -3.20), (4.80, -3.20), (4.80, -3.40), (5.45, -3.40), stroke: 1.2pt)

  // =======================================================
  // VISTE LATERALI - COLONNA 4: ESTREMITA TRONCATA E MOLATA (x_c = 7.20)
  // =======================================================
  // Estremita superiore piegata e molata a cuneo completo
  line((6.55, -1.32), (7.95, -1.32), stroke: 1.2pt)
  arc((6.55, -1.39), start: 90deg, stop: 270deg, radius: 0.07, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.46), (7.95, -1.32), stroke: 1.2pt)
  line((6.75, -1.44), (7.13, -1.49), stroke: 1pt)

  // Spira anteriore 1
  arc((6.55, -1.68), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -1.50), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.58), (7.85, -1.40), stroke: 1.2pt)
  line((6.55, -1.78), (7.85, -1.60), stroke: 1.2pt)
  // Spira posteriore 1
  line((6.55, -1.78), (7.13, -1.86), stroke: 1pt)
  line((7.27, -1.68), (7.85, -1.76), stroke: 1pt)

  // Spira anteriore 2
  arc((6.55, -2.04), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -1.86), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -1.94), (7.85, -1.76), stroke: 1.2pt)
  line((6.55, -2.14), (7.85, -1.96), stroke: 1.2pt)
  // Spira posteriore 2
  line((6.55, -2.14), (7.13, -2.22), stroke: 1pt)
  line((7.27, -2.04), (7.85, -2.12), stroke: 1pt)

  // Spira anteriore 3
  arc((6.55, -2.40), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.22), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -2.30), (7.85, -2.12), stroke: 1.2pt)
  line((6.55, -2.50), (7.85, -2.32), stroke: 1.2pt)
  // Spira posteriore 3
  line((6.55, -2.50), (7.13, -2.58), stroke: 1pt)
  line((7.27, -2.40), (7.85, -2.48), stroke: 1pt)

  // Spira anteriore 4
  arc((6.55, -2.76), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.58), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -2.66), (7.85, -2.48), stroke: 1.2pt)
  line((6.55, -2.86), (7.85, -2.68), stroke: 1.2pt)
  // Spira posteriore 4
  line((6.55, -2.86), (7.13, -2.94), stroke: 1pt)
  line((7.27, -2.76), (7.85, -2.84), stroke: 1pt)

  // Spira anteriore 5
  arc((6.55, -3.12), start: 90deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  arc((7.85, -2.94), start: -90deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 1.2pt)
  line((6.55, -3.02), (7.85, -2.84), stroke: 1.2pt)
  line((6.55, -3.22), (7.85, -3.04), stroke: 1.2pt)

  // Estremita inferiore piegata e molata a cuneo completo
  line((6.45, -3.30), (7.85, -3.30), stroke: 1.2pt)
  arc((7.85, -3.23), start: -90deg, stop: 90deg, radius: 0.07, anchor: "origin", stroke: 1.2pt)
  line((6.45, -3.30), (7.85, -3.16), stroke: 1.2pt)
  line((7.27, -3.13), (7.65, -3.18), stroke: 1pt)
})
])

=== Gioco residuo sotto carico massimo


#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -2em,
  align: (left + horizon, center + horizon),[La lunghezza a pacco $L_b$ si ottiene quando, comprimendo la molla, tutte le spire vengono portate perfettamente a contatto l'una con l'altra. In questa condizione di impacchettamento si altera completamente il principio di funzionamento meccanico: le spire non lavorano più come barre di torsione sospese libere di ruotare elasticamente, ma diventano anelli adagiati uno sull'altro che trasmettono una pressione di contatto diretta, trasformando la molla in un blocco o tubetto rigido di metallo. ],[
#image("images/pacco.png",width:50%)
])
Affinché la molla svolga la propria funzione (restituire forza elastica e assorbire gli urti), l'azione elastica deve essere garantita anche sotto l'azione del carico massimo di esercizio $F_(m a x)$. Bisogna quindi imporre come condizione al contorno di progettazione che con carico massimo la molla non vada completamente "a pacco", garantendo che la lunghezza della molla sotto carico massimo $L_(F m a x)$ soddisfi la disuguaglianza:
$ L_(F m a x) gt.eq L_b + g_(r e s) i $
dove $g_(r e s)$ è il gioco residuo (luce minima residua) che deve rimanere tra una spira efficace e l'altra, stimato indicativamente (a seconda dell'applicazione e della normativa) come:
$ g_(r e s) tilde.eq frac(d, 4) $
Fissate la lunghezza sotto carico massimo $L_(F m a x)$ e la freccia massima $f_(m a x)$, risulta determinata la lunghezza libera $L_0$ e di conseguenza viene determinato anche il passo $p$ della molla.
#grid(
  columns: (0.6fr, 1fr),
  column-gutter: 0em,
  align: (left + horizon, center + horizon),[Il funzionamento complessivo della molla nell'intervallo di missione (tra una forza minima $F_(m i n)$ e una forza massima $F_(m a x)$), noti i dati di progetto $d$, $i$ e $k$, viene rappresentato mediante uno schema classico di officina che mette in relazione le diverse lunghezze caratteristiche e le frecce corrispondenti:],[
#image("images/grafico impacchettamento molle.png",width:90%)
])
- A carico nullo la molla presenta la lunghezza libera $L_0$.
- Sotto il carico minimo $F_(m i n)$ la molla subisce una prima freccia, riducendo la sua altezza alla lunghezza $L_(F m i n) < L_0$.
- Sotto il carico massimo $F_(m a x)$ la molla subisce la freccia massima, portandosi alla lunghezza $L_(F m a x) < L_(F m i n)$.
- La condizione limite di impacchettamento corrisponde all'altezza minima $L_b$, rispetto alla quale la lunghezza $L_(F m a x)$ deve mantenersi superiore almeno della quantità complessiva $i dot.op g_(r e s)$.
== Processi di lavorazione, Verifiche di resistenza e Complessi di molle

=== Processi di lavorazione delle molle a elica
Le molle possono essere formate a caldo oppure a freddo. Nel processo di formatura a caldo, il filo metallico subisce inizialmente un trattamento termico ad alta temperatura ($900 degree "C"$) e viene successivamente avvolto su tornio mentre si trova ancora a temperatura elevata, condizione che facilita l'operazione di deformazione plastica per ottenere la geometria del cilindro ideale dell'elica con il diametro e l'inclinazione desiderati. Una volta formata, la molla viene sottoposta a tempra in olio e a successivo rinvenimento. Seguono quindi le operazioni di finitura e collaudo: un assestamento a pacco, una pallinatura superficiale, la verniciatura (effettuata con vernice a polvere e successivo riscaldamento in forno per prevenire la corrosione) e infine la taratura, che permette di rilevare l'esatta corrispondenza tra forza applicata e freccia, determinando così la caratteristica elastica della molla in esercizio.

Nel processo di formatura a freddo, invece, il materiale di partenza viene fornito già in configurazione bonificata. Il filo viene avvolto a freddo e guidato direttamente verso la troncatura di uscita per formare la molla; segue un trattamento termico a $400 degree "C"$ per $30$ minuti avente prevalentemente funzione di distensione, dopodiché il ciclo prosegue con le operazioni viste per il processo a caldo (assestamento a pacco, pallinatura, verniciatura e taratura). Poiché le condizioni metallurgiche e tecnologiche dei due processi sono sostanzialmente differenti, la normativa tecnica prevede due approcci distinti e formule specifiche per le verifiche di resistenza.

=== Resistenza statica in esercizio: molle formate a freddo e a caldo
Nella normativa tecnica, la verifica statica confronta la tensione tangenziale nominale in esercizio nella sezione trasversale del filo ($tau_("nom")$) — calcolata tramite il modello della barra di torsione corretto con il coefficiente di Wahl $lambda'$ — con la tensione tangenziale ammissibile del materiale ($tau_("amm")$):

$ tau_("nom") = lambda' frac(8 F D, pi d^3) lt.eq tau_("amm") $

La disuguaglianza rimane formalmente identica sia per le molle formate a freddo sia per quelle formate a caldo; a variare è invece il criterio con cui viene definita $tau_("amm")$.

Nel caso delle #strong[molle formate a freddo], si assume come riferimento il carico unitario di rottura $R_m$. Questi materiali mostrano infatti resistenze molto elevate, un comportamento tendenzialmente fragile e un calo di resistenza all'aumentare del diametro del filo $d$ dovuto all'effetto scala del processo produttivo. La tensione tangenziale ammissibile è fissata direttamente come:

$ tau_("amm") = 0.5 R_m $

Il fattore $0.5$ traduce il passaggio dalla tensione normale a quella tangenziale (analogamente alla rappresentazione del cerchio di Mohr). Sebbene manchi un coefficiente di sicurezza esplicito, le incertezze legate a materiale e processo sono già assorbite in modo cautelativo nei valori puntuali di $R_m$ tabulati dalla normativa.

Per le #strong[molle formate a caldo] (acciai temprati e rinvenuti), il parametro di riferimento diventa invece il carico unitario di scostamento dalla proporzionalità $R_(p 0.2)$. Sebbene i bassi valori di allungamento percentuale a rottura ($A_%$) collochino questi acciai al limite del comportamento duttile, $R_(p 0.2)$ risulta molto elevato e prossimo a $R_m$; in ottica conservativa ci si riferisce pertanto al primo livello di resistenza, corrispondente all'insorgenza dei fenomeni plastici:

$ tau_("amm") = 0.9 frac(R_(p 0.2), sqrt(3)) $

In questa espressione compaiono due coefficienti distinti:
1. Il fattore $0.9$ introduce un modesto ma significativo margine di sicurezza per coprire le incertezze sul comportamento effettivo del materiale, poiché le tabelle normative forniscono i parametri per tipologia di acciaio senza declinarli puntualmente in base alla scala del diametro del filo.
2. Il divisore $sqrt(3)$ rende omogenea la tensione normale $R_(p 0.2)$ con una tensione tangenziale secondo il criterio di cedimento di Von Mises per materiali duttili ($sigma_("id") = sqrt(sigma^2 + 3 tau^2)$), in cui $sqrt(3)$ costituisce proprio il fattore moltiplicativo del termine tangenziale.
==== Acciaio per molle
#grid(
  columns: (1fr, 1.2fr),
  column-gutter: -0em,
  align: (left + horizon, center + horizon),[Gli acciai specifici per molle sono progettati dal punto di vista metallurgico per offrire non solo un'elevata resistenza meccanica, ma anche un campo di linearità elastica molto esteso. Confrontando la curva sforzo-deformazione ($sigma - epsilon.alt$) di un acciaio per molle con quella di un acciaio comune da costruzione, si osserva che nell'acciaio comune il limite elastico (pianerotto di snervamento) è basso rispetto a $R_m$, limitando l'energia assorbibile in campo elastico (area sottesa al tratto lineare).

],[
#canvas(length: 1cm, {
  import draw: *

  // Tratteggio verde (triangolo limite elastico superiore)
  line((1.078, 3.375), (1.15, 3.417), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.984, 3.081), (1.15, 3.177), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.890, 2.786), (1.15, 2.937), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.796, 2.492), (1.15, 2.697), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.702, 2.197), (1.15, 2.457), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.608, 1.903), (1.15, 2.217), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.514, 1.608), (1.15, 1.977), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.420, 1.313), (1.15, 1.737), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.325, 1.019), (1.15, 1.497), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.231, 0.724), (1.15, 1.257), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.137, 0.430), (1.15, 1.017), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.043, 0.135), (1.15, 0.777), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.224, 0.000), (1.15, 0.537), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((0.638, 0.000), (1.15, 0.297), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((1.052, 0.000), (1.15, 0.057), stroke: (paint: rgb("#006600"), thickness: 0.9pt))
  line((1.15, 0), (1.15, 3.60), stroke: (paint: rgb("#006600"), thickness: 1pt))

  // Tratteggio rosso (triangolo limite elastico inferiore)
  line((0.620, 1.840), (0.71, 1.880), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.520, 1.614), (0.71, 1.700), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.448, 1.402), (0.71, 1.520), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.381, 1.191), (0.71, 1.340), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.313, 0.981), (0.71, 1.160), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.246, 0.771), (0.71, 0.980), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.179, 0.561), (0.71, 0.800), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.112, 0.350), (0.71, 0.620), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.045, 0.140), (0.71, 0.440), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.133, 0.000), (0.71, 0.260), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.533, 0.000), (0.71, 0.080), stroke: (paint: rgb("#e60000"), thickness: 0.9pt))
  line((0.71, 0), (0.71, 2.00), stroke: (paint: rgb("#e60000"), thickness: 1pt))

  // Assi coordinati
  line((0, 0), (0, 4.75), mark: (end: ">", size: 0.28, fill: orange), stroke: (paint: orange, thickness: 2pt))
  line((0, 0), (4.60, 0), mark: (end: ">", size: 0.28, fill: orange), stroke: (paint: orange, thickness: 2pt))

  // Curve sforzo-deformazione
  line((0, 0), (1.15, 3.60), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  arc((1.44, 3.63), start: 16deg, stop: 186deg, radius: 0.29, anchor: "origin", stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.511, 1.60), (0.71, 2.00), (0.56, 1.75), (0.65, 1.92), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.71, 2.00), (0.97, 2.09), (0.78, 2.11), (0.91, 2.14), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((0.97, 2.09), (1.10, 2.08), (1.02, 2.048), (1.06, 2.04), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  bezier((1.10, 2.08), (1.276, 2.061), (1.14, 2.12), (1.236, 2.019), stroke: (paint: rgb("#222899"), thickness: 1.4pt))
  arc((3.29, 0.13), start: 48.6deg, stop: 136.2deg, radius: 2.79, anchor: "origin", stroke: (paint: rgb("#222899"), thickness: 1.4pt))

  // Frecce tratteggiate verso "Limite elastico"
  line((1.08, 3.60), (0.02, 3.60), mark: (end: ">", size: 0.14, fill: rgb("#222899")), stroke: (paint: rgb("#222899"), dash: "dashed", thickness: 1pt))
  line((0.64, 2.00), (0.02, 2.00), mark: (end: ">", size: 0.14, fill: rgb("#222899")), stroke: (paint: rgb("#222899"), dash: "dashed", thickness: 1pt))

  // Punti notevoli
  circle((1.15, 3.60), radius: 0.065, fill: rgb("#00ccff"), stroke: (paint: rgb("#222899"), thickness: 1pt))
  circle((0.71, 2.00), radius: 0.065, fill: rgb("#00cc99"), stroke: (paint: rgb("#222899"), thickness: 1pt))
  circle((1.40, 3.97), radius: 0.06, fill: rgb("#e60000"), stroke: none)

  // Etichette e riquadri auto-adattanti
  content((-0.18, 4.55), [$sigma$], anchor: "east")
  content((4.72, -0.05), [$epsilon$], anchor: "north-west")
  content((1.40, 4.10), [#text(size: 0.85em)[$upright(R)_"m"$]], anchor: "south")
  content((-0.08, 3.60), [#text(size: 0.72em)[_Limite elastico_]], anchor: "east", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((-0.08, 2.00), [#text(size: 0.72em)[_Limite elastico_]], anchor: "east", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((1.85, 3.82), [#text(size: 0.72em)[_Acciaio per molle_]], anchor: "west", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
  content((4.25, 1.85), [#text(size: 0.72em)[_Acciaio comune_]], anchor: "west", frame: "rect", padding: 0.08, fill: white, stroke: (paint: rgb("#99a0c8"), thickness: 0.8pt))
})])
 Nell'acciaio per molle, invece, $R_m$ è molto elevato e il limite elastico ($R_(p 0.2)$) è molto vicino a $R_m$; ciò garantisce un'area sottesa al tratto elastico lineare decisamente maggiore e spiega perché l'allungamento percentuale a rottura $A_"%"$ risulti relativamente contenuto rispetto agli acciai comuni.
=== Verifica a fatica: caratterizzazione sperimentale e diagramma di Haigh
La caratterizzazione a fatica viene condotta sperimentalmente direttamente sul componente (molla) tramite prove ripetute di trazione e compressione, oppure di sola compressione, a seconda dello standard e dell'applicazione. Le macchine di prova permettono anche di variare la frequenza di applicazione del carico per valutarne la sensibilità del materiale e lo smorzamento interno, nonché di riprodurre profili di missione complessi riconducibili a curve cumulate di carico (regola di Miner).

I metodi di verifica a fatica possono essere quelli generali. I risultati sperimentali consentono di costruire un #strong[diagramma di Haigh stimato] adimensionalizzato, ponendo in ascissa la tensione tangenziale media normalizzata $tau_m / R_m$ e in ordinata la tensione tangenziale alternata normalizzata $tau_a / R_m$. Le rette di Goodman corrispondenti a diversi livelli di vita ($10^3$, $10^4$, $10^5$ e $10^6$ cicli, quest'ultima rappresentativa della vita illimitata) mostrano i rispettivi limiti sull'asse delle ordinate:
- per $10^6$ cicli: $tau_a / R_m = 0.29$, coerentemente con la relazione tra limite di fatica in torsione alternata e in flessione rotante ($tau_(D-1) tilde.eq 0.58 sigma_(D-1)$, con $sigma_(D-1) tilde.eq 0.5 R_m$, da cui $tau_(D-1) tilde.eq 0.29 R_m$);
- per numeri di cicli inferiori ($10^5$, $10^4$, $10^3$), ci si trova nella zona a termine della curva di Wöhler, per cui i rapporti sull'asse delle ordinate salgono rispettivamente a $0.39$, $0.54$ e $0.72$.

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Contrariamente al criterio di Sines (secondo cui in presenza di sole tensioni tangenziali non vi sarebbe dipendenza della resistenza a fatica dalla tensione media), nelle molle si osserva sperimentalmente una marcata dipendenza da $tau_m$: tutte le rette scendono verso l'asse delle ascisse intersecandolo al valore $tau_m / R_m = 0.8$ (dove il fattore $0.8$ anziché $1$ tiene conto di un coefficiente di sicurezza/incertezza su $R_m$). Nel diagramma è inoltre tracciata la retta centrale di parità ($tau_a / R_m = tau_m / R_m$, corrispondente al carico pulsante dallo zero).],[#canvas(length: 1.1cm, {
  import draw: *

  // Linee verticali della griglia e tacche asse X
  line((0.0, -0.10), (0.0, 4.80), stroke: (paint: rgb("#555555"), thickness: 0.6pt))
  line((1.2, -0.10), (1.2, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((2.4, -0.10), (2.4, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((3.6, -0.10), (3.6, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((4.8, -0.10), (4.8, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((6.0, -0.10), (6.0, 4.80), stroke: (paint: rgb("#888888"), thickness: 0.5pt))

  // Linee orizzontali della griglia e tacche asse Y
  line((-0.10, 0.0), (6.0, 0.0), stroke: (paint: rgb("#555555"), thickness: 0.6pt))
  line((-0.10, 0.6), (6.0, 0.6), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 1.2), (6.0, 1.2), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 1.8), (6.0, 1.8), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 2.4), (6.0, 2.4), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 3.0), (6.0, 3.0), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 3.6), (6.0, 3.6), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 4.2), (6.0, 4.2), stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  line((-0.10, 4.8), (6.0, 4.8), stroke: (paint: rgb("#888888"), thickness: 0.5pt))

  // Retta bisettrice tau_a = tau_m
  line((0.0, 0.0), (3.60, 3.60), stroke: (paint: black, thickness: 0.7pt))

  // Rette di fatica: tratto tratteggiato (a sinistra della bisettrice) e tratto continuo (a destra)
  // 1E+03 (Y0 = 0.72)
  line((0.0, 4.32), (2.274, 2.274), stroke: (paint: rgb("#000080"), dash: "dashed", thickness: 1.5pt))
  line((2.274, 2.274), (4.80, 0.0), stroke: (paint: rgb("#000080"), thickness: 1.5pt))

  // 1E+04 (Y0 = 0.54)
  line((0.0, 3.24), (1.934, 1.934), stroke: (paint: rgb("#ff00ff"), dash: "dashed", thickness: 1.5pt))
  line((1.934, 1.934), (4.80, 0.0), stroke: (paint: rgb("#ff00ff"), thickness: 1.5pt))

  // 1E+05 (Y0 = 0.39)
  line((0.0, 2.34), (1.573, 1.573), stroke: (paint: rgb("#99cc00"), dash: "dashed", thickness: 1.5pt))
  line((1.573, 1.573), (4.80, 0.0), stroke: (paint: rgb("#99cc00"), thickness: 1.5pt))

  // 1E+06 (Y0 = 0.29)
  line((0.0, 1.74), (1.277, 1.277), stroke: (paint: rgb("#ff0000"), dash: "dashed", thickness: 1.5pt))
  line((1.277, 1.277), (4.80, 0.0), stroke: (paint: rgb("#ff0000"), thickness: 1.5pt))

  // Titolo con sfondo bianco (copre localmente la linea di griglia Y = 0.7)
  content((3.55, 4.32), [#text(size: 0.80em)[Diagramma di Haigh stimato]], frame: "rect", padding: 0.08, fill: white, stroke: none)

  // Riquadro legenda e voci
  rect((3.90, 1.17), (5.38, 3.00), fill: white, stroke: (paint: rgb("#888888"), thickness: 0.5pt))
  content((3.95, 3.28), [#text(size: 0.75em)[Cicli]], anchor: "west")

  line((3.98, 2.77), (4.24, 2.77), stroke: (paint: rgb("#000080"), thickness: 1.5pt))
  content((4.30, 2.77), [#text(size: 0.70em)[1E+03]], anchor: "west")

  line((3.98, 2.32), (4.24, 2.32), stroke: (paint: rgb("#ff00ff"), thickness: 1.5pt))
  content((4.30, 2.32), [#text(size: 0.70em)[1E+04]], anchor: "west")

  line((3.98, 1.87), (4.24, 1.87), stroke: (paint: rgb("#99cc00"), thickness: 1.5pt))
  content((4.30, 1.87), [#text(size: 0.70em)[1E+05]], anchor: "west")

  line((3.98, 1.42), (4.24, 1.42), stroke: (paint: rgb("#ff0000"), thickness: 1.5pt))
  content((4.30, 1.42), [#text(size: 0.70em)[1E+06]], anchor: "west")

  // Valori delle intercette sull'asse verticale
  content((0.22, 4.42), [#text(size: 0.72em)[0.72]], anchor: "west")
  content((0.18, 3.30), [#text(size: 0.72em)[0.54]], anchor: "west")
  content((0.18, 2.52), [#text(size: 0.72em)[0.39]], anchor: "west")
  content((0.14, 1.36), [#text(size: 0.72em)[0.29]], anchor: "west")

  // Valori graduati asse X
  content((0.0, -0.16), [#text(size: 0.72em)[0]], anchor: "north")
  content((1.2, -0.16), [#text(size: 0.72em)[0.2]], anchor: "north")
  content((2.4, -0.16), [#text(size: 0.72em)[0.4]], anchor: "north")
  content((3.6, -0.16), [#text(size: 0.72em)[0.6]], anchor: "north")
  content((4.8, -0.16), [#text(size: 0.72em)[0.8]], anchor: "north")
  content((6.0, -0.16), [#text(size: 0.72em)[1]], anchor: "north")

  // Valori graduati asse Y
  content((-0.16, 0.0), [#text(size: 0.72em)[0]], anchor: "east")
  content((-0.16, 0.6), [#text(size: 0.72em)[0.1]], anchor: "east")
  content((-0.16, 1.2), [#text(size: 0.72em)[0.2]], anchor: "east")
  content((-0.16, 1.8), [#text(size: 0.72em)[0.3]], anchor: "east")
  content((-0.16, 2.4), [#text(size: 0.72em)[0.4]], anchor: "east")
  content((-0.16, 3.0), [#text(size: 0.72em)[0.5]], anchor: "east")
  content((-0.16, 3.6), [#text(size: 0.72em)[0.6]], anchor: "east")
  content((-0.16, 4.2), [#text(size: 0.72em)[0.7]], anchor: "east")
  content((-0.16, 4.8), [#text(size: 0.72em)[0.8]], anchor: "east")

  // Etichette degli assi
  content((4.15, -0.62), [#text(size: 0.80em)[$tau_"m" \/ R_"m"$]], anchor: "north")
  content((-0.82, 2.45), [#text(size: 0.80em)[$tau_a \/ R_"m"$]], angle: 90deg)
})])

=== Processo ed effetto della pallinatura (#emph[shot peening])
La resistenza a fatica dipende in modo decisivo dal processo di produzione e dai trattamenti superficiali. La #strong[pallinatura] (#emph[shot peening]) consiste nel proiettare un getto calibrato di micropallini sulla superficie esterna del filo della molla già formata, tramite una o più giranti centrifughe in rotazione. Le molle avanzano su una guida spinte da appositi pulsori attraverso la zona investita dal flusso dei pallini.

L'impatto di ciascun pallino provoca una deformazione plastica localissima (microcratere) che genera un campo di #strong[tensioni residue di compressione] sulla superficie del filo. Poiché sulla sezione circolare del filo soggetto a torsione la tensione tangenziale è distribuita linearmente con massimo alla superficie esterna, le tensioni residue di compressione fanno sì che la sollecitazione applicata debba prima compensare tale stato residuo prima di raggiungere valori di trazione/taglio critici. Sul diagramma di resistenza a fatica a vita infinita ($tau_(m i n)$ in ascissa, $tau_(m a x)$ in ordinata, per oltre $2 dot.op 10^6$ cicli), l'effetto della pallinatura si manifesta in un netto innalzamento del limite di resistenza.


==== Verifica a fatica secondo le normative DIN
La verifica a fatica secondo normativa tedesca confronta l'escursione nominale della tensione tangenziale nel ciclo ($Delta tau_("nom")$), legata all'escursione di forza $Delta F = F_(m a x) - F_(m i n)$, con un'escursione ammissibile $Delta tau_("amm")$.

Per le #strong[molle formate a freddo (DIN 17223)]:

$ Delta tau_("nom") = lambda' Delta F frac(8 D, pi d^3) lt.eq Delta tau_("amm") $

$ Delta tau_("amm") = b_d Delta tau_0 - b_tau tau_(m i n) $

dove $lambda'$ è il coefficiente di Wahl, $Delta tau_0$, $b_d$ e $b_tau$ sono coefficienti tabulati dalla norma ($b_d$ tiene conto dell'effetto scala sul diametro del filo $d$, mentre $b_tau$ pesa l'effetto della tensione media/minima), e la tensione tangenziale minima $tau_(m i n)$ è calcolata includendo un coefficiente correttivo specifico per gli effetti del taglio $lambda'''$:

$ tau_(m i n) = lambda''' frac(8 F_(m i n) D, pi d^3), quad quad lambda''' = 1 + frac(0.5, c) $

I valori per le tre classi di acciaio (con distinzione tra molla non pallinata e pallinata) sono tabulati ma gli autori degli appunti evitano di inserire tabelle essendo fornite per eventuali esercizi



Per le #strong[molle formate a caldo (DIN 17221)], la verifica mantiene la stessa espressione per $Delta tau_("nom")$:

$ Delta tau_("nom") = lambda' Delta F frac(8 D, pi d^3) lt.eq Delta tau_("amm") $

con $Delta F = F_(m a x) - F_(m i n)$ e $lambda'$ coefficiente di Wahl, ma $Delta tau_("amm")$ è fornito direttamente in tabella come valore limite per fatica all'origine ($F_(m i n) = 0$), in funzione del diametro $d$ e del trattamento superficiale. L'ipotesi di fatica all'origine (carico pulsante da zero, quindi con $tau_m eq.not 0$) risulta generalmente più gravosa rispetto a una sollecitazione puramente alternata ($tau_m = 0$) sul diagramma di Haigh, rendendo tale riferimento utilizzabile in via cautelativa anche qualora il componente operi in regime alternato (come in alcuni attuatori).



=== Fenomeni secondari: ingobbamento e sfarfallamento
#grid(
  columns: (1fr, 1fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Nelle molle di compressione particolarmente snelle (lunghezza libera $L_0$ elevata rispetto al diametro dell'elica $D$) e non guidate lateralmente, può manifestarsi un fenomeno di instabilità elastica per carico di punta macroscopico detto #strong[ingobbamento] (#emph[buckling]), analogo a quello delle travi compresse. Il carico critico che porta all'ingobbamento vale:

$ F_("crit") = k L_0 K_L $],[#canvas(length: 0.60cm, {
  import draw: *

  // --- PIASTRA DI COMPRESSIONE SUPERIORE E STELO ---
  // Faccia superiore in prospettiva
  line((-2.25, 0.0), (2.25, 0.0), (1.90, 0.45), (-1.90, 0.45), close: true, fill: luma(185), stroke: 0.9pt)
  // Faccia anteriore spessa
  rect((-2.25, -0.35), (2.25, 0.0), fill: luma(145), stroke: 0.9pt)

  // Stelo cilindrico centrale
  rect((-0.42, 0.22), (0.42, 1.15), fill: luma(165), stroke: 0.9pt)
  arc((0.0, 0.22), start: 180deg, stop: 360deg, radius: (0.42, 0.10), anchor: "origin", fill: luma(165), stroke: 0.9pt)
  line((-0.42, 0.22), (-0.42, 1.15), stroke: 0.9pt)
  line((0.42, 0.22), (0.42, 1.15), stroke: 0.9pt)

  // --- FRECCIA DI SCHIACCIAMENTO A SINISTRA ---
  line((-1.45, -0.75), (-1.45, -2.05), mark: (end: ">"), stroke: 1.6pt)

  // --- ASSE DEFORMATO DELLA MOLLA (INGOBBAMENTO / BUCKLING) ---
  bezier((0.0, -0.35), (1.15, -3.55), (0.0, -1.55), (1.15, -2.25), stroke: (dash: "dash-dotted", thickness: 0.6pt, paint: luma(120)))
  bezier((1.15, -3.55), (0.15, -6.75), (1.15, -4.85), (0.15, -5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt, paint: luma(120)))

  // --- TRATTI POSTERIORI DELLE SPIRE (SCURI, DIETRO) ---
  line((0.85, -0.50), (-0.77, -1.25), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.03, -0.85), (-0.54, -1.80), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.29, -1.25), (-0.28, -2.35), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.57, -1.68), (0.01, -2.92), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.82, -2.18), (0.20, -3.45), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.98, -2.72), (0.29, -3.95), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((2.05, -3.28), (0.22, -4.45), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((2.01, -3.88), (0.04, -4.92), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.86, -4.50), (-0.21, -5.38), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.62, -5.12), (-0.45, -5.85), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.35, -5.70), (-0.64, -6.30), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.10, -6.22), (-0.70, -6.62), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))

  // --- TRATTI ANTERIORI DELLE SPIRE (BORDO NERO + ANIMA RAME CHIARO) ---
  // Spira 0 (appoggio superiore piatto)
  line((-0.85, -0.50), (0.85, -0.50), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.85, -0.50), (0.85, -0.50), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 1
  line((-0.77, -1.25), (1.03, -0.85), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.77, -1.25), (1.03, -0.85), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 2
  line((-0.54, -1.80), (1.29, -1.25), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.54, -1.80), (1.29, -1.25), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 3
  line((-0.28, -2.35), (1.57, -1.68), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.28, -2.35), (1.57, -1.68), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 4
  line((0.01, -2.92), (1.82, -2.18), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.01, -2.92), (1.82, -2.18), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 5
  line((0.20, -3.45), (1.98, -2.72), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.20, -3.45), (1.98, -2.72), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 6 (massima inflessione laterale)
  line((0.29, -3.95), (2.05, -3.28), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.29, -3.95), (2.05, -3.28), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 7
  line((0.22, -4.45), (2.01, -3.88), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.22, -4.45), (2.01, -3.88), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 8
  line((0.04, -4.92), (1.86, -4.50), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.04, -4.92), (1.86, -4.50), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 9
  line((-0.21, -5.38), (1.62, -5.12), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.21, -5.38), (1.62, -5.12), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 10
  line((-0.45, -5.85), (1.35, -5.70), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.45, -5.85), (1.35, -5.70), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 11
  line((-0.64, -6.30), (1.10, -6.22), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.64, -6.30), (1.10, -6.22), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 12 (base inferiore piatta)
  line((-0.70, -6.62), (1.00, -6.62), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.70, -6.62), (1.00, -6.62), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))
})])



dove $k$ è la rigidezza della molla, $L_0$ la lunghezza libera a riposo e $K_L$ un coefficiente tabulato in funzione del rapporto $L_0 / D$ e delle condizioni di vincolo alle estremità (estremi incernierati, liberi di ruotare sull'appoggio, oppure estremi incastrati, saldamente ancorati). Per evitare l'instabilità, il carico massimo d'esercizio deve rimanere inferiore a $F_("crit")$; inoltre, costruttivamente si può contrastare il fenomeno guidando la molla all'interno di pareti o sedi che forniscano una reazione laterale.



In presenza di carichi dinamici alternati con frequenza prossima alla frequenza propria della molla si verifica il fenomeno della risonanza, detto #strong[sfarfallamento] delle spire: l'ampiezza di vibrazione cresce in modo incontrollato (con alcune spire che oscillano fortemente e altre che appaiono ferme in corrispondenza dei nodi dei modi di vibrazione), portando a sovrasollecitazione e rottura del filo. Per evitarlo si impone che la prima frequenza propria della molla sia almeno $20$ volte superiore alla frequenza del carico applicato:

$ lambda_(1, "molla") = frac(d, D l_(e q)) sqrt(frac(G, 8 rho)), quad quad l_(e q) = pi D i $

$ lambda_(1, "molla") gt.eq 20 dot.op lambda_("carico") $

=== Procedura di calcolo per molle di torsione (ad elica cilindrica)
Il dimensionamento di una molla ad elica cilindrica (lavorante a torsione del filo) è un #strong[calcolo iterativo di verifica]. Sono generalmente noti l'ingombro disponibile ($tilde.eq D$), la freccia e il carico massimi (oppure la rigidezza $k$ e uno dei due parametri, legati da $k = frac(Delta F, Delta f) = frac(F_(m a x), f_(m a x))$), e talvolta la lunghezza sotto carico massimo $L_(F_(m a x))$ (dettati da vincoli di ingombro e dall'esigenza di evitare interferenze o contatti con altre parti).

La sequenza operativa prevede i seguenti passi:
1. Scelta di un diametro del filo unificato di tentativo $d = D/7 div D/12$ (in modo che il rapporto $c$ risulti proporzionato), del materiale ($R_m$, $R_"p0.2"$) e del tipo di formatura (a freddo o a caldo).
2. Calcolo del coefficiente $c = D/d$.
3. Calcolo della massima tensione statica:
   $ tau_(m a x) = lambda' frac(8 F_(m a x) D, pi d^3) = lambda' frac(8 F_(m a x) c, pi d^2) $
4. Verifica statica (secondo la formula per molle a freddo o a caldo): se non soddisfatta, aumentare $d$ o cambiare materiale e tornare al punto 2.
5. Verifica a fatica (se necessaria): se non soddisfatta, cambiare $d$ o materiale e tornare al punto 2.
6. Calcolo del numero di spire efficaci:
   $ i = frac(G d, 8 c^3 k) $
7. Calcolo della lunghezza a pacco $L_b$ (con apposita tabella).
8. Calcolo della lunghezza sotto carico massimo (o verifica del gioco residuo tra le spire, generalmente $g_(r e s) = d/4$ o da specifica):
   $ L_(F_(m a x)) gt.eq L_b + g_(r e s) i $
9. Calcolo della lunghezza libera a riposo:
   $ L_0 = L_(F_(m a x)) + f_(m a x) $
10. Eventuale verifica a sfarfallamento (agendo eventualmente sulla rigidezza $k$).
11. Eventuale verifica a ingobbamento ($F_(m a x) < F_("crit")$).

Un esempio classico di applicazione è la sospensione automobilistica con molla elicoidale, in particolare nella configurazione #strong[sospensione MacPherson], in cui la molla a elica è montata direttamente attorno all'ammortizzatore tra connessione al telaio e connessione al mozzo ruota (con cerniere rispetto al telaio).
#pagebreak()
=== Complessi di molle: collegamento in parallelo e in serie


#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nelle applicazioni in cui più molle lavorano simultaneamente, la rigidezza equivalente dipende dal modo in cui sono collegate.

Nel collegamento #strong[in parallelo] (ad esempio due molle concentriche poste tra gli stessi piani d'appoggio), le molle subiscono lo stesso spostamento (freccia), mentre la forza totale è la somma delle forze sostenute dalle singole molle:

// NOTA: \implies convertito in arrow.r.double
$ f = f_1 = f_2, quad quad F = F_1 + F_2 $

$ F = k f = (k_1 + k_2) f arrow.r.double k = k_1 + k_2 $ In generale, per $N$ molle in parallelo:

$ k = sum_(i=1)^N k_i $],[// FASE 1 - ANALISI (Figura 1: molle coassiali in parallelo)
// 1. PANNELLO E SCALA: un pannello, origine O = intersezione tra asse verticale e piano di base (0, 0).
//    Larghezza piastra = 4.04 cm (x da -2.02 a +2.02), altezza tra base e piastra = 4.41 cm.
// 2. ELEMENTI:
//    - Piano di base y = 0, x da -2.20 a +2.25, con 11 tratti di tratteggio obliquo sotto.
//    - Piastra superiore: x da -2.02 a +2.02, y da 4.41 a 4.86.
//    - Molla 2 (esterna): raggio filo r2 = 0.27, centri a x = +-1.74, passo P2 = 0.98 (4.5 spire).
//      Visibili tratti posteriori in discesa da sinistra a destra (coperti al centro da molla 1), tratteggio -60 deg (\).
//    - Molla 1 (interna): raggio filo r1 = 0.12, centri a x = +-1.12, passo P1 = 0.4642 (9.5 spire).
//      9 tratti posteriori (discesa) e 10 tratti anteriori (salita), tratteggio +60 deg (/).
//    - Asse verticale tratto-punto in x = 0 da y = 0 a y = 4.86. Forza F verso (0, 4.86), freccia f a destra, richiami "molla 1" e "molla 2".
// 3. CLASSIFICAZIONE CURVE: circle e arc (semicerchi), tratti rettilinei con line, piastra con rect. Nessuna bezier.

// FASE 2 - COSTRUZIONE
#canvas(length: 1cm, {
  import draw: *

  // --- Molla 2: tratti posteriori (in discesa da sinistra a destra) ---
  line((-1.70, 0.76), (1.78, 0.27), (1.70, 0.00), (-1.78, 0.22), close: true, fill: white, stroke: none)
  line((-1.70, 0.76), (1.78, 0.27), stroke: 1.2pt)
  line((-1.78, 0.22), (-0.22, 0.00), stroke: 1.2pt)

  line((-1.70, 1.74), (1.78, 1.25), (1.70, 0.71), (-1.78, 1.20), close: true, fill: white, stroke: none)
  line((-1.70, 1.74), (1.78, 1.25), stroke: 1.2pt)
  line((-1.78, 1.20), (1.70, 0.71), stroke: 1.2pt)

  line((-1.70, 2.72), (1.78, 2.23), (1.70, 1.69), (-1.78, 2.18), close: true, fill: white, stroke: none)
  line((-1.70, 2.72), (1.78, 2.23), stroke: 1.2pt)
  line((-1.78, 2.18), (1.70, 1.69), stroke: 1.2pt)

  line((-1.70, 3.70), (1.78, 3.21), (1.70, 2.67), (-1.78, 3.16), close: true, fill: white, stroke: none)
  line((-1.70, 3.70), (1.78, 3.21), stroke: 1.2pt)
  line((-1.78, 3.16), (1.70, 2.67), stroke: 1.2pt)

  line((-1.74, 4.41), (0.22, 4.41), (1.78, 4.19), (1.70, 3.65), (-1.78, 4.14), close: true, fill: white, stroke: none)
  line((0.22, 4.41), (1.78, 4.19), stroke: 1.2pt)
  line((-1.78, 4.14), (1.70, 3.65), stroke: 1.2pt)

  // --- Maschera bianca dietro molla 1 ---
  line((-1.24, 0.00), (1.24, 0.00), (1.24, 4.41), (-1.24, 4.41), close: true, fill: white, stroke: none)

  // --- Molla 2: sezioni circolari e semicerchi con tratteggio (-60 deg) ---
  arc((1.74, 0.00), start: 0deg, stop: 180deg, radius: 0.27, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.532, 0.000), (1.483, 0.084), stroke: 0.5pt)
  line((1.636, 0.000), (1.535, 0.175), stroke: 0.5pt)
  line((1.740, 0.000), (1.605, 0.234), stroke: 0.5pt)
  line((1.844, 0.000), (1.691, 0.265), stroke: 0.5pt)
  line((1.948, 0.000), (1.795, 0.264), stroke: 0.5pt)

  circle((-1.74, 0.49), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 0.574), (-1.795, 0.226), stroke: 0.5pt)
  line((-1.945, 0.665), (-1.691, 0.225), stroke: 0.5pt)
  line((-1.875, 0.724), (-1.605, 0.256), stroke: 0.5pt)
  line((-1.789, 0.755), (-1.535, 0.315), stroke: 0.5pt)
  line((-1.685, 0.754), (-1.483, 0.406), stroke: 0.5pt)

  circle((1.74, 0.98), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 1.064), (1.685, 0.716), stroke: 0.5pt)
  line((1.535, 1.155), (1.789, 0.715), stroke: 0.5pt)
  line((1.605, 1.214), (1.875, 0.746), stroke: 0.5pt)
  line((1.691, 1.245), (1.945, 0.805), stroke: 0.5pt)
  line((1.795, 1.244), (1.997, 0.896), stroke: 0.5pt)

  circle((-1.74, 1.47), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 1.554), (-1.795, 1.206), stroke: 0.5pt)
  line((-1.945, 1.645), (-1.691, 1.205), stroke: 0.5pt)
  line((-1.875, 1.704), (-1.605, 1.236), stroke: 0.5pt)
  line((-1.789, 1.735), (-1.535, 1.295), stroke: 0.5pt)
  line((-1.685, 1.734), (-1.483, 1.386), stroke: 0.5pt)

  circle((1.74, 1.96), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 2.044), (1.685, 1.696), stroke: 0.5pt)
  line((1.535, 2.135), (1.789, 1.695), stroke: 0.5pt)
  line((1.605, 2.194), (1.875, 1.726), stroke: 0.5pt)
  line((1.691, 2.225), (1.945, 1.785), stroke: 0.5pt)
  line((1.795, 2.224), (1.997, 1.876), stroke: 0.5pt)

  circle((-1.74, 2.45), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 2.534), (-1.795, 2.186), stroke: 0.5pt)
  line((-1.945, 2.625), (-1.691, 2.185), stroke: 0.5pt)
  line((-1.875, 2.684), (-1.605, 2.216), stroke: 0.5pt)
  line((-1.789, 2.715), (-1.535, 2.275), stroke: 0.5pt)
  line((-1.685, 2.714), (-1.483, 2.366), stroke: 0.5pt)

  circle((1.74, 2.94), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 3.024), (1.685, 2.676), stroke: 0.5pt)
  line((1.535, 3.115), (1.789, 2.675), stroke: 0.5pt)
  line((1.605, 3.174), (1.875, 2.706), stroke: 0.5pt)
  line((1.691, 3.205), (1.945, 2.765), stroke: 0.5pt)
  line((1.795, 3.204), (1.997, 2.856), stroke: 0.5pt)

  circle((-1.74, 3.43), radius: 0.27, fill: white, stroke: 1.2pt)
  line((-1.997, 3.514), (-1.795, 3.166), stroke: 0.5pt)
  line((-1.945, 3.605), (-1.691, 3.165), stroke: 0.5pt)
  line((-1.875, 3.664), (-1.605, 3.196), stroke: 0.5pt)
  line((-1.789, 3.695), (-1.535, 3.255), stroke: 0.5pt)
  line((-1.685, 3.694), (-1.483, 3.346), stroke: 0.5pt)

  circle((1.74, 3.92), radius: 0.27, fill: white, stroke: 1.2pt)
  line((1.483, 4.004), (1.685, 3.656), stroke: 0.5pt)
  line((1.535, 4.095), (1.789, 3.655), stroke: 0.5pt)
  line((1.605, 4.154), (1.875, 3.686), stroke: 0.5pt)
  line((1.691, 4.185), (1.945, 3.745), stroke: 0.5pt)
  line((1.795, 4.184), (1.997, 3.836), stroke: 0.5pt)

  arc((-1.74, 4.41), start: 180deg, stop: 360deg, radius: 0.27, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.948, 4.410), (-1.795, 4.146), stroke: 0.5pt)
  line((-1.844, 4.410), (-1.691, 4.145), stroke: 0.5pt)
  line((-1.740, 4.410), (-1.605, 4.176), stroke: 0.5pt)
  line((-1.636, 4.410), (-1.535, 4.235), stroke: 0.5pt)
  line((-1.532, 4.410), (-1.483, 4.326), stroke: 0.5pt)

  // --- Molla 1: tratti posteriori (9 tratti) ---
  line((-1.108, 0.583), (1.132, 0.351), (1.108, 0.113), (-1.132, 0.345), close: true, fill: white, stroke: none)
  line((-1.108, 0.583), (1.132, 0.351), stroke: 1.2pt)
  line((-1.132, 0.345), (1.108, 0.113), stroke: 1.2pt)

  line((-1.108, 1.047), (1.132, 0.815), (1.108, 0.577), (-1.132, 0.809), close: true, fill: white, stroke: none)
  line((-1.108, 1.047), (1.132, 0.815), stroke: 1.2pt)
  line((-1.132, 0.809), (1.108, 0.577), stroke: 1.2pt)

  line((-1.108, 1.512), (1.132, 1.280), (1.108, 1.042), (-1.132, 1.274), close: true, fill: white, stroke: none)
  line((-1.108, 1.512), (1.132, 1.280), stroke: 1.2pt)
  line((-1.132, 1.274), (1.108, 1.042), stroke: 1.2pt)

  line((-1.108, 1.976), (1.132, 1.744), (1.108, 1.506), (-1.132, 1.738), close: true, fill: white, stroke: none)
  line((-1.108, 1.976), (1.132, 1.744), stroke: 1.2pt)
  line((-1.132, 1.738), (1.108, 1.506), stroke: 1.2pt)

  line((-1.108, 2.440), (1.132, 2.208), (1.108, 1.970), (-1.132, 2.202), close: true, fill: white, stroke: none)
  line((-1.108, 2.440), (1.132, 2.208), stroke: 1.2pt)
  line((-1.132, 2.202), (1.108, 1.970), stroke: 1.2pt)

  line((-1.108, 2.904), (1.132, 2.672), (1.108, 2.434), (-1.132, 2.666), close: true, fill: white, stroke: none)
  line((-1.108, 2.904), (1.132, 2.672), stroke: 1.2pt)
  line((-1.132, 2.666), (1.108, 2.434), stroke: 1.2pt)

  line((-1.108, 3.368), (1.132, 3.136), (1.108, 2.898), (-1.132, 3.130), close: true, fill: white, stroke: none)
  line((-1.108, 3.368), (1.132, 3.136), stroke: 1.2pt)
  line((-1.132, 3.130), (1.108, 2.898), stroke: 1.2pt)

  line((-1.108, 3.833), (1.132, 3.601), (1.108, 3.363), (-1.132, 3.595), close: true, fill: white, stroke: none)
  line((-1.108, 3.833), (1.132, 3.601), stroke: 1.2pt)
  line((-1.132, 3.595), (1.108, 3.363), stroke: 1.2pt)

  line((-1.108, 4.297), (1.132, 4.065), (1.108, 3.827), (-1.132, 4.059), close: true, fill: white, stroke: none)
  line((-1.108, 4.297), (1.132, 4.065), stroke: 1.2pt)
  line((-1.132, 4.059), (1.108, 3.827), stroke: 1.2pt)

  // --- Molla 1: tratti anteriori (10 tratti) ---
  line((-1.132, 0.119), (1.108, 0.351), (1.132, 0.113), (0.041, 0.000), (-1.120, 0.000), close: true, fill: white, stroke: none)
  line((-1.132, 0.119), (1.108, 0.351), stroke: 1.2pt)
  line((0.041, 0.000), (1.132, 0.113), stroke: 1.2pt)

  line((-1.132, 0.583), (1.108, 0.815), (1.132, 0.577), (-1.108, 0.345), close: true, fill: white, stroke: none)
  line((-1.132, 0.583), (1.108, 0.815), stroke: 1.2pt)
  line((-1.108, 0.345), (1.132, 0.577), stroke: 1.2pt)

  line((-1.132, 1.047), (1.108, 1.280), (1.132, 1.042), (-1.108, 0.809), close: true, fill: white, stroke: none)
  line((-1.132, 1.047), (1.108, 1.280), stroke: 1.2pt)
  line((-1.108, 0.809), (1.132, 1.042), stroke: 1.2pt)

  line((-1.132, 1.512), (1.108, 1.744), (1.132, 1.506), (-1.108, 1.274), close: true, fill: white, stroke: none)
  line((-1.132, 1.512), (1.108, 1.744), stroke: 1.2pt)
  line((-1.108, 1.274), (1.132, 1.506), stroke: 1.2pt)

  line((-1.132, 1.976), (1.108, 2.208), (1.132, 1.970), (-1.108, 1.738), close: true, fill: white, stroke: none)
  line((-1.132, 1.976), (1.108, 2.208), stroke: 1.2pt)
  line((-1.108, 1.738), (1.132, 1.970), stroke: 1.2pt)

  line((-1.132, 2.440), (1.108, 2.672), (1.132, 2.434), (-1.108, 2.202), close: true, fill: white, stroke: none)
  line((-1.132, 2.440), (1.108, 2.672), stroke: 1.2pt)
  line((-1.108, 2.202), (1.132, 2.434), stroke: 1.2pt)

  line((-1.132, 2.904), (1.108, 3.136), (1.132, 2.898), (-1.108, 2.666), close: true, fill: white, stroke: none)
  line((-1.132, 2.904), (1.108, 3.136), stroke: 1.2pt)
  line((-1.108, 2.666), (1.132, 2.898), stroke: 1.2pt)

  line((-1.132, 3.368), (1.108, 3.601), (1.132, 3.363), (-1.108, 3.130), close: true, fill: white, stroke: none)
  line((-1.132, 3.368), (1.108, 3.601), stroke: 1.2pt)
  line((-1.108, 3.130), (1.132, 3.363), stroke: 1.2pt)

  line((-1.132, 3.833), (1.108, 4.065), (1.132, 3.827), (-1.108, 3.595), close: true, fill: white, stroke: none)
  line((-1.132, 3.833), (1.108, 4.065), stroke: 1.2pt)
  line((-1.108, 3.595), (1.132, 3.827), stroke: 1.2pt)

  line((-1.132, 4.297), (-0.041, 4.410), (1.120, 4.410), (1.132, 4.291), (-1.108, 4.059), close: true, fill: white, stroke: none)
  line((-1.132, 4.297), (-0.041, 4.410), stroke: 1.2pt)
  line((-1.108, 4.059), (1.132, 4.291), stroke: 1.2pt)

  // --- Molla 1: sezioni circolari e semicerchi con tratteggio (+60 deg) ---
  arc((-1.12, 0.000), start: 0deg, stop: 180deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.189, 0.000), (-1.120, 0.120), stroke: 0.5pt)
  line((-1.120, 0.000), (-1.060, 0.104), stroke: 0.5pt)
  line((-1.051, 0.000), (-1.016, 0.060), stroke: 0.5pt)

  circle((1.12, 0.232), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 0.172), (1.120, 0.352), stroke: 0.5pt)
  line((1.060, 0.128), (1.180, 0.336), stroke: 0.5pt)
  line((1.120, 0.112), (1.224, 0.292), stroke: 0.5pt)

  circle((-1.12, 0.464), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 0.404), (-1.120, 0.584), stroke: 0.5pt)
  line((-1.180, 0.360), (-1.060, 0.568), stroke: 0.5pt)
  line((-1.120, 0.344), (-1.016, 0.524), stroke: 0.5pt)

  circle((1.12, 0.696), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 0.636), (1.120, 0.816), stroke: 0.5pt)
  line((1.060, 0.592), (1.180, 0.800), stroke: 0.5pt)
  line((1.120, 0.576), (1.224, 0.756), stroke: 0.5pt)

  circle((-1.12, 0.928), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 0.868), (-1.120, 1.048), stroke: 0.5pt)
  line((-1.180, 0.824), (-1.060, 1.032), stroke: 0.5pt)
  line((-1.120, 0.808), (-1.016, 0.988), stroke: 0.5pt)

  circle((1.12, 1.161), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 1.101), (1.120, 1.281), stroke: 0.5pt)
  line((1.060, 1.057), (1.180, 1.265), stroke: 0.5pt)
  line((1.120, 1.041), (1.224, 1.221), stroke: 0.5pt)

  circle((-1.12, 1.393), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 1.333), (-1.120, 1.513), stroke: 0.5pt)
  line((-1.180, 1.289), (-1.060, 1.497), stroke: 0.5pt)
  line((-1.120, 1.273), (-1.016, 1.453), stroke: 0.5pt)

  circle((1.12, 1.625), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 1.565), (1.120, 1.745), stroke: 0.5pt)
  line((1.060, 1.521), (1.180, 1.729), stroke: 0.5pt)
  line((1.120, 1.505), (1.224, 1.685), stroke: 0.5pt)

  circle((-1.12, 1.857), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 1.797), (-1.120, 1.977), stroke: 0.5pt)
  line((-1.180, 1.753), (-1.060, 1.961), stroke: 0.5pt)
  line((-1.120, 1.737), (-1.016, 1.917), stroke: 0.5pt)

  circle((1.12, 2.089), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.029), (1.120, 2.209), stroke: 0.5pt)
  line((1.060, 1.985), (1.180, 2.193), stroke: 0.5pt)
  line((1.120, 1.969), (1.224, 2.149), stroke: 0.5pt)

  circle((-1.12, 2.321), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 2.261), (-1.120, 2.441), stroke: 0.5pt)
  line((-1.180, 2.217), (-1.060, 2.425), stroke: 0.5pt)
  line((-1.120, 2.201), (-1.016, 2.381), stroke: 0.5pt)

  circle((1.12, 2.553), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.493), (1.120, 2.673), stroke: 0.5pt)
  line((1.060, 2.449), (1.180, 2.657), stroke: 0.5pt)
  line((1.120, 2.433), (1.224, 2.613), stroke: 0.5pt)

  circle((-1.12, 2.785), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 2.725), (-1.120, 2.905), stroke: 0.5pt)
  line((-1.180, 2.681), (-1.060, 2.889), stroke: 0.5pt)
  line((-1.120, 2.665), (-1.016, 2.845), stroke: 0.5pt)

  circle((1.12, 3.017), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 2.957), (1.120, 3.137), stroke: 0.5pt)
  line((1.060, 2.913), (1.180, 3.121), stroke: 0.5pt)
  line((1.120, 2.897), (1.224, 3.077), stroke: 0.5pt)

  circle((-1.12, 3.249), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 3.189), (-1.120, 3.369), stroke: 0.5pt)
  line((-1.180, 3.145), (-1.060, 3.353), stroke: 0.5pt)
  line((-1.120, 3.129), (-1.016, 3.309), stroke: 0.5pt)

  circle((1.12, 3.482), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 3.422), (1.120, 3.602), stroke: 0.5pt)
  line((1.060, 3.378), (1.180, 3.586), stroke: 0.5pt)
  line((1.120, 3.362), (1.224, 3.542), stroke: 0.5pt)

  circle((-1.12, 3.714), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 3.654), (-1.120, 3.834), stroke: 0.5pt)
  line((-1.180, 3.610), (-1.060, 3.818), stroke: 0.5pt)
  line((-1.120, 3.594), (-1.016, 3.774), stroke: 0.5pt)

  circle((1.12, 3.946), radius: 0.12, fill: white, stroke: 1.2pt)
  line((1.016, 3.886), (1.120, 4.066), stroke: 0.5pt)
  line((1.060, 3.842), (1.180, 4.050), stroke: 0.5pt)
  line((1.120, 3.826), (1.224, 4.006), stroke: 0.5pt)

  circle((-1.12, 4.178), radius: 0.12, fill: white, stroke: 1.2pt)
  line((-1.224, 4.118), (-1.120, 4.298), stroke: 0.5pt)
  line((-1.180, 4.074), (-1.060, 4.282), stroke: 0.5pt)
  line((-1.120, 4.058), (-1.016, 4.238), stroke: 0.5pt)

  arc((1.12, 4.410), start: 180deg, stop: 360deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.016, 4.350), (1.051, 4.410), stroke: 0.5pt)
  line((1.060, 4.306), (1.120, 4.410), stroke: 0.5pt)
  line((1.120, 4.290), (1.189, 4.410), stroke: 0.5pt)

  // --- Piano di base e tratteggio ---
  line((-2.20, 0.00), (2.25, 0.00), stroke: 1.3pt)
  line((-1.90, 0.00), (-2.12, -0.34), stroke: 0.6pt)
  line((-1.50, 0.00), (-1.72, -0.34), stroke: 0.6pt)
  line((-1.10, 0.00), (-1.32, -0.34), stroke: 0.6pt)
  line((-0.70, 0.00), (-0.92, -0.34), stroke: 0.6pt)
  line((-0.30, 0.00), (-0.52, -0.34), stroke: 0.6pt)
  line((0.10, 0.00), (-0.12, -0.34), stroke: 0.6pt)
  line((0.50, 0.00), (0.28, -0.34), stroke: 0.6pt)
  line((0.90, 0.00), (0.68, -0.34), stroke: 0.6pt)
  line((1.30, 0.00), (1.08, -0.34), stroke: 0.6pt)
  line((1.70, 0.00), (1.48, -0.34), stroke: 0.6pt)
  line((2.10, 0.00), (1.88, -0.34), stroke: 0.6pt)

  // --- Piastra superiore ---
  rect((-2.02, 4.41), (2.02, 4.86), fill: white, stroke: 1.3pt)

  // --- Asse di simmetria ---
  line((0.00, 0.00), (0.00, 4.86), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // --- Forza F ---
  line((0.00, 6.25), (0.00, 5.45), stroke: 2.2pt)
  line((-0.20, 5.45), (0.20, 5.45), (0.00, 4.86), close: true, fill: black, stroke: black)
  content((0.40, 5.75), [$F$], anchor: "west")

  // --- Spostamento f ---
  line((2.02, 4.41), (2.75, 4.41), stroke: 0.6pt)
  line((2.75, 4.41), (2.75, 3.65), mark: (end: ">"), stroke: 0.6pt)
  content((2.92, 3.75), [$f$], anchor: "west")

  // --- Richiami ed etichette ---
  line((1.12, 2.089), (2.68, 1.52), stroke: 0.6pt)
  content((2.73, 1.48), [molla 1], anchor: "west")

  line((1.74, 0.980), (2.68, 0.52), stroke: 0.6pt)
  content((2.73, 0.48), [molla 2], anchor: "west")
})
// FASE 3 - VERIFICA: circle e arc (anchor: "origin", start < stop) per sezioni, line per tratti elicoidali/base/asse/F/f, rect per piastra. Nessuna parola vietata.
])

#v(2em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel collegamento #strong[in serie] (molle poste in sequenza lungo l'asse con un piattello intermedio di interfaccia), le molle sopportano lo stesso carico, mentre la freccia totale è la somma delle frecce parziali:

$ F = F_1 = F_2, quad quad f = f_1 + f_2 $

$ f = frac(F, k) = frac(F_1, k_1) + frac(F_2, k_2) = F (frac(1, k_1) + frac(1, k_2)) $

Introducendo la #strong[deformabilità] $delta = frac(1, k)$, si ottiene:

$ frac(1, k) = frac(1, k_1) + frac(1, k_2) = delta $
 In generale, per $N$ molle in serie:

$ frac(1, k) = sum_(i=1)^N frac(1, k_i), quad quad delta = sum_(i=1)^N delta_i $],[// FASE 1 - ANALISI (Figura 2: molle in serie)
// 1. PANNELLO E SCALA: un pannello, origine O = intersezione tra asse verticale e piano di base (0, 0).
//    Larghezza piastre = 4.00 cm (x da -2.00 a +2.00). Piastra intermedia y = 3.26..3.69, piastra superiore y = 6.40..6.83.
// 2. ELEMENTI:
//    - Piano di base y = 0, x da -2.20 a +2.25, con 11 tratti di tratteggio obliquo sotto.
//    - Molla 2 (inferiore): raggio filo r2 = 0.25, centri a x = +-1.63, passo P2 = 0.9314 (3.5 spire).
//      4 tratti anteriori in discesa da sinistra a destra; tratteggio -60 deg (\).
//    - Molla 1 (superiore): raggio filo r1 = 0.14, centri a x = +-1.06, passo P1 = 0.4927 (5.5 spire).
//      6 tratti anteriori in salita da sinistra a destra; tratteggio +60 deg (/).
//    - Asse verticale tratto-punto in x = 0 da y = 0 a y = 6.83. Forza F verso (0, 6.83), freccia f a destra, richiami "molla 1" e "molla 2".
// 3. CLASSIFICAZIONE CURVE: circle e arc (semicerchi), tratti rettilinei con line, piastre con rect. Nessuna bezier.

// FASE 2 - COSTRUZIONE
#canvas(length: 1cm, {
  import draw: *

  // --- Molla 2 (inferiore): 4 tratti anteriori in discesa da sinistra a destra ---
  line((-1.595, 0.714), (1.665, 0.248), (1.630, 0.000), (-0.140, 0.000), (-1.665, 0.218), close: true, fill: white, stroke: none)
  line((-1.595, 0.714), (1.665, 0.248), stroke: 1.2pt)
  line((-1.665, 0.218), (-0.140, 0.000), stroke: 1.2pt)

  line((-1.595, 1.645), (1.665, 1.179), (1.595, 0.683), (-1.665, 1.149), close: true, fill: white, stroke: none)
  line((-1.595, 1.645), (1.665, 1.179), stroke: 1.2pt)
  line((-1.665, 1.149), (1.595, 0.683), stroke: 1.2pt)

  line((-1.595, 2.577), (1.665, 2.111), (1.595, 1.615), (-1.665, 2.081), close: true, fill: white, stroke: none)
  line((-1.595, 2.577), (1.665, 2.111), stroke: 1.2pt)
  line((-1.665, 2.081), (1.595, 1.615), stroke: 1.2pt)

  line((-1.630, 3.260), (0.140, 3.260), (1.665, 3.042), (1.595, 2.546), (-1.665, 3.012), close: true, fill: white, stroke: none)
  line((0.140, 3.260), (1.665, 3.042), stroke: 1.2pt)
  line((-1.665, 3.012), (1.595, 2.546), stroke: 1.2pt)

  // --- Molla 2: sezioni circolari e semicerchi con tratteggio (-60 deg) ---
  arc((1.63, 0.000), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", fill: white, stroke: 1.2pt)
  line((1.445, 0.000), (1.395, 0.086), stroke: 0.5pt)
  line((1.538, 0.000), (1.442, 0.165), stroke: 0.5pt)
  line((1.630, 0.000), (1.505, 0.217), stroke: 0.5pt)
  line((1.722, 0.000), (1.581, 0.245), stroke: 0.5pt)
  line((1.815, 0.000), (1.673, 0.246), stroke: 0.5pt)

  circle((-1.63, 0.466), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 0.552), (-1.673, 0.220), stroke: 0.5pt)
  line((-1.818, 0.631), (-1.581, 0.221), stroke: 0.5pt)
  line((-1.755, 0.683), (-1.505, 0.249), stroke: 0.5pt)
  line((-1.679, 0.711), (-1.442, 0.301), stroke: 0.5pt)
  line((-1.587, 0.712), (-1.395, 0.380), stroke: 0.5pt)

  circle((1.63, 0.931), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 1.017), (1.587, 0.685), stroke: 0.5pt)
  line((1.442, 1.096), (1.679, 0.686), stroke: 0.5pt)
  line((1.505, 1.148), (1.755, 0.714), stroke: 0.5pt)
  line((1.581, 1.176), (1.818, 0.766), stroke: 0.5pt)
  line((1.673, 1.177), (1.865, 0.845), stroke: 0.5pt)

  circle((-1.63, 1.397), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 1.483), (-1.673, 1.151), stroke: 0.5pt)
  line((-1.818, 1.562), (-1.581, 1.152), stroke: 0.5pt)
  line((-1.755, 1.614), (-1.505, 1.180), stroke: 0.5pt)
  line((-1.679, 1.642), (-1.442, 1.232), stroke: 0.5pt)
  line((-1.587, 1.643), (-1.395, 1.311), stroke: 0.5pt)

  circle((1.63, 1.863), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 1.949), (1.587, 1.617), stroke: 0.5pt)
  line((1.442, 2.028), (1.679, 1.618), stroke: 0.5pt)
  line((1.505, 2.080), (1.755, 1.646), stroke: 0.5pt)
  line((1.581, 2.108), (1.818, 1.698), stroke: 0.5pt)
  line((1.673, 2.109), (1.865, 1.777), stroke: 0.5pt)

  circle((-1.63, 2.329), radius: 0.25, fill: white, stroke: 1.2pt)
  line((-1.865, 2.415), (-1.673, 2.083), stroke: 0.5pt)
  line((-1.818, 2.494), (-1.581, 2.084), stroke: 0.5pt)
  line((-1.755, 2.546), (-1.505, 2.112), stroke: 0.5pt)
  line((-1.679, 2.574), (-1.442, 2.164), stroke: 0.5pt)
  line((-1.587, 2.575), (-1.395, 2.243), stroke: 0.5pt)

  circle((1.63, 2.794), radius: 0.25, fill: white, stroke: 1.2pt)
  line((1.395, 2.880), (1.587, 2.548), stroke: 0.5pt)
  line((1.442, 2.959), (1.679, 2.549), stroke: 0.5pt)
  line((1.505, 3.011), (1.755, 2.577), stroke: 0.5pt)
  line((1.581, 3.039), (1.818, 2.629), stroke: 0.5pt)
  line((1.673, 3.040), (1.865, 2.708), stroke: 0.5pt)

  arc((-1.63, 3.260), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.815, 3.260), (-1.673, 3.014), stroke: 0.5pt)
  line((-1.722, 3.260), (-1.581, 3.015), stroke: 0.5pt)
  line((-1.630, 3.260), (-1.505, 3.043), stroke: 0.5pt)
  line((-1.538, 3.260), (-1.442, 3.095), stroke: 0.5pt)
  line((-1.445, 3.260), (-1.395, 3.174), stroke: 0.5pt)

  // --- Molla 1 (superiore): 6 tratti anteriori in salita da sinistra a destra ---
  line((-1.076, 3.829), (1.044, 4.075), (1.076, 3.797), (0.154, 3.690), (-1.060, 3.690), close: true, fill: white, stroke: none)
  line((-1.076, 3.829), (1.044, 4.075), stroke: 1.2pt)
  line((0.154, 3.690), (1.076, 3.797), stroke: 1.2pt)

  line((-1.076, 4.322), (1.044, 4.568), (1.076, 4.290), (-1.044, 4.044), close: true, fill: white, stroke: none)
  line((-1.076, 4.322), (1.044, 4.568), stroke: 1.2pt)
  line((-1.044, 4.044), (1.076, 4.290), stroke: 1.2pt)

  line((-1.076, 4.814), (1.044, 5.061), (1.076, 4.783), (-1.044, 4.536), close: true, fill: white, stroke: none)
  line((-1.076, 4.814), (1.044, 5.061), stroke: 1.2pt)
  line((-1.044, 4.536), (1.076, 4.783), stroke: 1.2pt)

  line((-1.076, 5.307), (1.044, 5.554), (1.076, 5.276), (-1.044, 5.029), close: true, fill: white, stroke: none)
  line((-1.076, 5.307), (1.044, 5.554), stroke: 1.2pt)
  line((-1.044, 5.029), (1.076, 5.276), stroke: 1.2pt)

  line((-1.076, 5.800), (1.044, 6.046), (1.076, 5.768), (-1.044, 5.522), close: true, fill: white, stroke: none)
  line((-1.076, 5.800), (1.044, 6.046), stroke: 1.2pt)
  line((-1.044, 5.522), (1.076, 5.768), stroke: 1.2pt)

  line((-1.076, 6.293), (-0.154, 6.400), (1.060, 6.400), (1.076, 6.261), (-1.044, 6.015), close: true, fill: white, stroke: none)
  line((-1.076, 6.293), (-0.154, 6.400), stroke: 1.2pt)
  line((-1.044, 6.015), (1.076, 6.261), stroke: 1.2pt)

  // --- Molla 1: sezioni circolari e semicerchi con tratteggio (+60 deg) ---
  arc((-1.06, 3.690), start: 0deg, stop: 180deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.2pt)
  line((-1.141, 3.690), (-1.060, 3.830), stroke: 0.5pt)
  line((-1.060, 3.690), (-0.990, 3.811), stroke: 0.5pt)
  line((-0.979, 3.690), (-0.939, 3.760), stroke: 0.5pt)

  circle((1.06, 3.936), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 3.866), (1.060, 4.076), stroke: 0.5pt)
  line((0.990, 3.815), (1.130, 4.057), stroke: 0.5pt)
  line((1.060, 3.796), (1.181, 4.006), stroke: 0.5pt)

  circle((-1.06, 4.183), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 4.113), (-1.060, 4.323), stroke: 0.5pt)
  line((-1.130, 4.062), (-0.990, 4.304), stroke: 0.5pt)
  line((-1.060, 4.043), (-0.939, 4.253), stroke: 0.5pt)

  circle((1.06, 4.429), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 4.359), (1.060, 4.569), stroke: 0.5pt)
  line((0.990, 4.308), (1.130, 4.550), stroke: 0.5pt)
  line((1.060, 4.289), (1.181, 4.499), stroke: 0.5pt)

  circle((-1.06, 4.675), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 4.605), (-1.060, 4.815), stroke: 0.5pt)
  line((-1.130, 4.554), (-0.990, 4.796), stroke: 0.5pt)
  line((-1.060, 4.535), (-0.939, 4.745), stroke: 0.5pt)

  circle((1.06, 4.922), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 4.852), (1.060, 5.062), stroke: 0.5pt)
  line((0.990, 4.801), (1.130, 5.043), stroke: 0.5pt)
  line((1.060, 4.782), (1.181, 4.992), stroke: 0.5pt)

  circle((-1.06, 5.168), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 5.098), (-1.060, 5.308), stroke: 0.5pt)
  line((-1.130, 5.047), (-0.990, 5.289), stroke: 0.5pt)
  line((-1.060, 5.028), (-0.939, 5.238), stroke: 0.5pt)

  circle((1.06, 5.415), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 5.345), (1.060, 5.555), stroke: 0.5pt)
  line((0.990, 5.294), (1.130, 5.536), stroke: 0.5pt)
  line((1.060, 5.275), (1.181, 5.485), stroke: 0.5pt)

  circle((-1.06, 5.661), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 5.591), (-1.060, 5.801), stroke: 0.5pt)
  line((-1.130, 5.540), (-0.990, 5.782), stroke: 0.5pt)
  line((-1.060, 5.521), (-0.939, 5.731), stroke: 0.5pt)

  circle((1.06, 5.907), radius: 0.14, fill: white, stroke: 1.2pt)
  line((0.939, 5.837), (1.060, 6.047), stroke: 0.5pt)
  line((0.990, 5.786), (1.130, 6.028), stroke: 0.5pt)
  line((1.060, 5.767), (1.181, 5.977), stroke: 0.5pt)

  circle((-1.06, 6.154), radius: 0.14, fill: white, stroke: 1.2pt)
  line((-1.181, 6.084), (-1.060, 6.294), stroke: 0.5pt)
  line((-1.130, 6.033), (-0.990, 6.275), stroke: 0.5pt)
  line((-1.060, 6.014), (-0.939, 6.224), stroke: 0.5pt)

  arc((1.06, 6.400), start: 180deg, stop: 360deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.2pt)
  line((0.939, 6.330), (0.979, 6.400), stroke: 0.5pt)
  line((0.990, 6.279), (1.060, 6.400), stroke: 0.5pt)
  line((1.060, 6.260), (1.141, 6.400), stroke: 0.5pt)

  // --- Piano di base e tratteggio ---
  line((-2.20, 0.00), (2.25, 0.00), stroke: 1.3pt)
  line((-1.90, 0.00), (-2.12, -0.34), stroke: 0.6pt)
  line((-1.50, 0.00), (-1.72, -0.34), stroke: 0.6pt)
  line((-1.10, 0.00), (-1.32, -0.34), stroke: 0.6pt)
  line((-0.70, 0.00), (-0.92, -0.34), stroke: 0.6pt)
  line((-0.30, 0.00), (-0.52, -0.34), stroke: 0.6pt)
  line((0.10, 0.00), (-0.12, -0.34), stroke: 0.6pt)
  line((0.50, 0.00), (0.28, -0.34), stroke: 0.6pt)
  line((0.90, 0.00), (0.68, -0.34), stroke: 0.6pt)
  line((1.30, 0.00), (1.08, -0.34), stroke: 0.6pt)
  line((1.70, 0.00), (1.48, -0.34), stroke: 0.6pt)
  line((2.10, 0.00), (1.88, -0.34), stroke: 0.6pt)

  // --- Piastra intermedia e piastra superiore ---
  rect((-2.00, 3.26), (2.00, 3.69), fill: white, stroke: 1.3pt)
  rect((-2.00, 6.40), (2.00, 6.83), fill: white, stroke: 1.3pt)

  // --- Asse di simmetria ---
  line((0.00, 0.00), (0.00, 6.83), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // --- Forza F ---
  line((0.00, 8.20), (0.00, 7.40), stroke: 2.2pt)
  line((-0.20, 7.40), (0.20, 7.40), (0.00, 6.83), close: true, fill: black, stroke: black)
  content((0.40, 7.70), [$F$], anchor: "west")

  // --- Spostamento f ---
  line((2.00, 6.40), (2.72, 6.40), stroke: 0.6pt)
  line((2.72, 6.40), (2.72, 5.65), mark: (end: ">"), stroke: 0.6pt)
  content((2.88, 5.75), [$f$], anchor: "west")

  // --- Richiami ed etichette ---
  line((1.06, 4.922), (2.08, 4.46), stroke: 0.6pt)
  content((2.12, 4.42), [molla 1], anchor: "west")

  line((0.08, 2.08), (2.08, 1.44), stroke: 0.6pt)
  content((2.12, 1.40), [molla 2], anchor: "west")
})
])

Sussiste un'analogia elettromeccanica con la resistenza elettrica $R$, associando alla resistenza elettrica non la rigidezza $k$ bensì la deformabilità $delta = 1/k$:

#table(
  columns: 3,
  align: (left, center, center),
  [#strong[Configurazione]], [#strong[Molle (rigidezza $k$ e deformabilità $delta = 1/k$)]], [#strong[Resistenze elettriche ($R$)]],
  [#strong[In serie]], [$frac(1, k) = sum_(i=1)^N frac(1, k_i), quad delta = sum_(i=1)^N delta_i$], [$R = sum_(i=1)^N R_i$],
  [#strong[In parallelo]], [$frac(1, delta) = sum_(i=1)^N frac(1, delta_i), quad k = sum_(i=1)^N k_i$], [$frac(1, R) = sum_(i=1)^N frac(1, R_i)$],
)

=== Molle a elica cilindrica "in trazione"
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per le molle elicoidali di trazione il punto critico è l'anello terminale (gancio di collegamento). Poiché il gancio è ruotato di $90 degree$ rispetto alle spire normali e la forza $F$ è applicata lungo l'asse dell'elica, nelle estremità si instaura uno stato tensionale complesso (modellabile come trave curva) dovuto all'accoppiamento tra forza normale, momento flettente (prodotto dal braccio della forza $F$ rispetto alla sezione critica) ed effetti di intaglio legati ai piccoli raggi di curvatura ($r_1, r_2, r_3, r_4$). La verifica critica si concentra in particolare sulla sezione trasversale esposta al massimo momento flettente (sezione A-A o B-B).],[
])

Le molle di trazione vengono realizzate con le spire a contatto e precaricate durante la costruzione; richiedono pertanto un "tiro" iniziale $F_0$ prima di iniziare a deformarsi. Il carico di precarico $F_0$ si calcola imponendo una tensione iniziale $tau_i$:

$ tau_i = (0.4 - 0.8) dot.op frac(d, D) dot.op R_m $

$ F_0 = frac(pi dot.op d^2, 8 c) tau_i = frac(pi dot.op d^3, 8 D) tau_i $

La lunghezza libera all'interno degli occhielli vale:

$ L_0 = (i + 1) d + 2 dot.op 0.8 dot.op D_i $

e la forza necessaria per ottenere una freccia $f$ voluta risulta quindi:

$ F = frac(G dot.op d dot.op f, 8 dot.op c^3 dot.op i) + F_0 $

(con la relazione tra carico e tensione tangenziale massima $tau_(m a x) = frac(8 F c, pi d^2)$, ovvero $F = frac(pi d^2, 8 c) dot.op tau_(m a x)$).

=== Molle a passo variabile e molle coniche
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle a passo variabile e le molle coniche (ad elica tronco-conica, utilizzate ad esempio nei vani batterie di dispositivi domestici) vengono impiegate per ottenere #strong[caratteristiche forza-spostamento non lineari] di tipo #emph[hardening] (irrigidimento progressivo). Nelle molle coniche, all'applicare del carico si deformano per prime le spire di diametro maggiore, più docili e cedevoli; quando queste arrivano a contatto o si impacchettano, entrano progressivamente in gioco le spire più piccole e rigide, aumentando la rigidezza complessiva del sistema. Questa geometria offre inoltre il vantaggio di evitare o ridurre drasticamente il problema dell'ingobbamento (#emph[buckling]) e consente talvolta alle spire di annidarsi quasi concentricamente.],[// FASE 1 - ANALISI (Script 1: molla cilindrica e molla conica a compressione)
// 1. PANNELLI E SCALA:
//    Due molle affiancate, scala unica 100 px = 8.0 cm (larghezza totale ~ 7.6 cm, altezza ~ 5.2 cm).
//    - Molla cilindrica (sinistra): centrata su x = 0.00, larghezza esterna = 2.40 cm (x in [-1.20, 1.20]),
//      altezza tra piani di appoggio = 3.44 cm (y in [0.00, 3.44]), raggio filo r = 0.14 cm, passo P = 0.632 cm.
//      6 raccordi a sinistra (L1..L6), 5 raccordi a destra (R1..R5), 5 spire posteriori (+8.5 deg) e 5 anteriori (-8.5 deg),
//      piu due estremita molate in piano (inferiore e superiore).
//    - Molla conica (destra): centrata su x = 4.24, base inferiore y = 0.00 (semilarghezza esterna 2.167 cm),
//      base superiore y = 3.12 (semilarghezza esterna 1.067 cm), raggio filo r = 0.12 cm.
//      5 raccordi a sinistra (L1..L5) e 4 a destra (R1..R4), 4 tratti anteriori e 4 posteriori,
//      piu due estremita molate in piano e inviluppo conico tratto-punto inclinato di +-19.4 deg rispetto alla verticale.
//    - Assi verticali tratto-punto e frecce di carico assiali (superiore e inferiore) su entrambe le molle.
// 2. CLASSIFICAZIONE CURVE:
//    Ogni raccordo laterale di spira e descritto da un arco circolare esatto (arc, raggio 0.14 o 0.12)
//    tangente ai bordi rettilinei (line) dei tratti elicoidali. Nessuna bezier necessaria.

// FASE 2 - COSTRUZIONE
#canvas(length: 1cm, {
  import draw: *

  // ================= MOLLA CILINDRICA (x = 0) =================
  // Estremita inferiore molata (cuneo posteriore)
  line((-1.06, 0.000), (1.20, 0.000), (-1.06, 0.277), close: true, fill: white, stroke: none)
  line((-1.06, 0.000), (1.20, 0.000), stroke: 1.0pt)
  line((1.20, 0.000), (-1.06, 0.277), stroke: 1.0pt)

  // Tratti posteriori (5 tratti in salita da sinistra a destra: L_k -> R_k)
  // L1(-1.06, 0.140) -> R1(1.06, 0.456)
  line((-1.081, 0.278), (1.039, 0.594), (1.081, 0.318), (-1.039, 0.002), close: true, fill: white, stroke: none)
  line((-1.081, 0.278), (1.039, 0.594), stroke: 1.0pt)
  line((-1.039, 0.002), (1.081, 0.318), stroke: 1.0pt)

  // L2(-1.06, 0.772) -> R2(1.06, 1.088)
  line((-1.081, 0.910), (1.039, 1.226), (1.081, 0.950), (-1.039, 0.634), close: true, fill: white, stroke: none)
  line((-1.081, 0.910), (1.039, 1.226), stroke: 1.0pt)
  line((-1.039, 0.634), (1.081, 0.950), stroke: 1.0pt)

  // L3(-1.06, 1.404) -> R3(1.06, 1.720)
  line((-1.081, 1.542), (1.039, 1.858), (1.081, 1.582), (-1.039, 1.266), close: true, fill: white, stroke: none)
  line((-1.081, 1.542), (1.039, 1.858), stroke: 1.0pt)
  line((-1.039, 1.266), (1.081, 1.582), stroke: 1.0pt)

  // L4(-1.06, 2.036) -> R4(1.06, 2.352)
  line((-1.081, 2.174), (1.039, 2.490), (1.081, 2.214), (-1.039, 1.898), close: true, fill: white, stroke: none)
  line((-1.081, 2.174), (1.039, 2.490), stroke: 1.0pt)
  line((-1.039, 1.898), (1.081, 2.214), stroke: 1.0pt)

  // L5(-1.06, 2.668) -> R5(1.06, 2.984)
  line((-1.081, 2.806), (1.039, 3.122), (1.081, 2.846), (-1.039, 2.530), close: true, fill: white, stroke: none)
  line((-1.081, 2.806), (1.039, 3.122), stroke: 1.0pt)
  line((-1.039, 2.530), (1.081, 2.846), stroke: 1.0pt)

  // Estremita superiore molata (cuneo posteriore rispetto a L6 -> R5)
  line((-1.06, 3.440), (1.20, 3.440), (-1.06, 3.163), close: true, fill: white, stroke: none)
  line((-1.06, 3.440), (1.20, 3.440), stroke: 1.0pt)
  line((1.20, 3.440), (-1.06, 3.163), stroke: 1.0pt)

  // Raccordi laterali posteriori (per chiusura bordi esterni)
  arc((-1.06, 0.140), start: 98.5deg, stop: 270deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 0.772), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 1.404), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 2.036), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((-1.06, 2.668), start: 98.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)

  arc((1.06, 0.456), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.088), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.720), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.352), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.984), start: -81.5deg, stop: 98.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori (5 tratti in discesa da sinistra a destra: L_{k+1} -> R_k)
  // L2(-1.06, 0.772) -> R1(1.06, 0.456)
  line((-1.039, 0.910), (1.081, 0.594), (1.039, 0.318), (-1.081, 0.634), close: true, fill: white, stroke: none)
  arc((-1.06, 0.772), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 0.456), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 0.910), (1.081, 0.594), stroke: 1.0pt)
  line((-1.081, 0.634), (1.039, 0.318), stroke: 1.0pt)

  // L3(-1.06, 1.404) -> R2(1.06, 1.088)
  line((-1.039, 1.542), (1.081, 1.226), (1.039, 0.950), (-1.081, 1.266), close: true, fill: white, stroke: none)
  arc((-1.06, 1.404), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.088), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 1.542), (1.081, 1.226), stroke: 1.0pt)
  line((-1.081, 1.266), (1.039, 0.950), stroke: 1.0pt)

  // L4(-1.06, 2.036) -> R3(1.06, 1.720)
  line((-1.039, 2.174), (1.081, 1.858), (1.039, 1.582), (-1.081, 1.898), close: true, fill: white, stroke: none)
  arc((-1.06, 2.036), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 1.720), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 2.174), (1.081, 1.858), stroke: 1.0pt)
  line((-1.081, 1.898), (1.039, 1.582), stroke: 1.0pt)

  // L5(-1.06, 2.668) -> R4(1.06, 2.352)
  line((-1.039, 2.806), (1.081, 2.490), (1.039, 2.214), (-1.081, 2.530), close: true, fill: white, stroke: none)
  arc((-1.06, 2.668), start: 81.5deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.352), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 2.806), (1.081, 2.490), stroke: 1.0pt)
  line((-1.081, 2.530), (1.039, 2.214), stroke: 1.0pt)

  // L6(-1.06, 3.300) -> R5(1.06, 2.984)
  line((-1.039, 3.438), (1.081, 3.122), (1.039, 2.846), (-1.081, 3.162), close: true, fill: white, stroke: none)
  arc((-1.06, 3.300), start: 90deg, stop: 261.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((1.06, 2.984), start: -98.5deg, stop: 81.5deg, radius: 0.14, anchor: "origin", fill: white, stroke: 1.0pt)
  line((-1.039, 3.438), (1.081, 3.122), stroke: 1.0pt)
  line((-1.081, 3.162), (1.039, 2.846), stroke: 1.0pt)

  // Asse e frecce molla cilindrica
  line((0.00, 0.00), (0.00, 3.44), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0.00, 4.25), (0.00, 3.52), mark: (end: ">"), stroke: 0.8pt)
  line((0.00, -0.85), (0.00, -0.06), mark: (end: ">"), stroke: 0.8pt)

  // ================= MOLLA CONICA (x = 4.24) =================
  // Estremita inferiore molata (cuneo posteriore, punta a sinistra x = 2.073)
  line((2.073, 0.000), (6.238, 0.000), (6.238, 0.240), close: true, fill: white, stroke: none)
  line((2.073, 0.000), (6.238, 0.000), stroke: 1.0pt)
  line((2.073, 0.000), (6.238, 0.240), stroke: 1.0pt)

  // Tratti posteriori (4 tratti in discesa da sinistra a destra: L_{k+1} -> R_k)
  // L2(2.475, 0.78) -> R1(6.238, 0.12)
  line((2.496, 0.898), (6.259, 0.238), (6.217, 0.002), (2.454, 0.662), close: true, fill: white, stroke: none)
  line((2.496, 0.898), (6.259, 0.238), stroke: 1.0pt)
  line((2.454, 0.662), (6.217, 0.002), stroke: 1.0pt)

  // L3(2.722, 1.48) -> R2(5.934, 1.04)
  line((2.738, 1.599), (5.950, 1.159), (5.918, 0.921), (2.706, 1.361), close: true, fill: white, stroke: none)
  line((2.738, 1.599), (5.950, 1.159), stroke: 1.0pt)
  line((2.706, 1.361), (5.918, 0.921), stroke: 1.0pt)

  // L4(2.976, 2.20) -> R3(5.674, 1.76)
  line((2.995, 2.318), (5.693, 1.878), (5.655, 1.642), (2.957, 2.082), close: true, fill: white, stroke: none)
  line((2.995, 2.318), (5.693, 1.878), stroke: 1.0pt)
  line((2.957, 2.082), (5.655, 1.642), stroke: 1.0pt)

  // L5(3.258, 3.00) -> R4(5.413, 2.48)
  line((3.286, 3.117), (5.441, 2.597), (5.385, 2.363), (3.230, 2.883), close: true, fill: white, stroke: none)
  line((3.286, 3.117), (5.441, 2.597), stroke: 1.0pt)
  line((3.230, 2.883), (5.385, 2.363), stroke: 1.0pt)

  // Estremita superiore molata (punta a destra x = 5.307, y = 3.12)
  line((3.258, 3.120), (5.307, 3.120), (3.258, 2.880), close: true, fill: white, stroke: none)
  line((3.258, 3.120), (5.307, 3.120), stroke: 1.0pt)
  line((5.307, 3.120), (3.258, 2.880), stroke: 1.0pt)

  // Raccordi esterni posteriori (L5, R1)
  arc((3.258, 3.000), start: 90deg, stop: 256.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((6.238, 0.120), start: -90deg, stop: 80.1deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)

  // Tratti anteriori (4 tratti: L1->R1, L2->R2, L3->R3, L4->R4)
  // L1(2.278, 0.22) -> R1(6.238, 0.12)
  line((2.281, 0.340), (6.241, 0.240), (6.235, 0.000), (2.275, 0.100), close: true, fill: white, stroke: none)
  arc((2.278, 0.220), start: 88.6deg, stop: 268.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((6.238, 0.120), start: -91.4deg, stop: 88.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.281, 0.340), (6.241, 0.240), stroke: 1.0pt)
  line((2.275, 0.100), (6.235, 0.000), stroke: 1.0pt)

  // L2(2.475, 0.78) -> R2(5.934, 1.04)
  line((2.466, 0.900), (5.925, 1.160), (5.943, 0.920), (2.484, 0.660), close: true, fill: white, stroke: none)
  arc((2.475, 0.780), start: 94.3deg, stop: 274.3deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.934, 1.040), start: -85.7deg, stop: 94.3deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.466, 0.900), (5.925, 1.160), stroke: 1.0pt)
  line((2.484, 0.660), (5.943, 0.920), stroke: 1.0pt)

  // L3(2.722, 1.48) -> R3(5.674, 1.76)
  line((2.711, 1.599), (5.663, 1.879), (5.685, 1.641), (2.733, 1.361), close: true, fill: white, stroke: none)
  arc((2.722, 1.480), start: 95.4deg, stop: 275.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.674, 1.760), start: -84.6deg, stop: 95.4deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.711, 1.599), (5.663, 1.879), stroke: 1.0pt)
  line((2.733, 1.361), (5.685, 1.641), stroke: 1.0pt)

  // L4(2.976, 2.20) -> R4(5.413, 2.48)
  line((2.962, 2.319), (5.399, 2.599), (5.427, 2.361), (2.990, 2.081), close: true, fill: white, stroke: none)
  arc((2.976, 2.200), start: 96.6deg, stop: 276.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  arc((5.413, 2.480), start: -83.4deg, stop: 96.6deg, radius: 0.12, anchor: "origin", fill: white, stroke: 1.0pt)
  line((2.962, 2.319), (5.399, 2.599), stroke: 1.0pt)
  line((2.990, 2.081), (5.427, 2.361), stroke: 1.0pt)

  // Asse verticale, inviluppo conico e frecce molla conica
  line((4.24, 0.00), (4.24, 3.12), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.985, -0.25), (3.307, 3.50), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((6.495, -0.25), (5.173, 3.50), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((4.24, 4.25), (4.24, 3.25), mark: (end: ">"), stroke: 0.8pt)
  line((4.24, -0.85), (4.24, -0.06), mark: (end: ">"), stroke: 0.8pt)
})
// FASE 3 - VERIFICA: arc (anchor: "origin", start < stop) per i raccordi delle spire, line per bordi, assi, inviluppo e frecce. Nessuna parola vietata.
])
== Molle a lamina
=== Generalità, applicazioni e confronto con le molle a elica cilindrica
Le molle a lamina rappresentano una tipologia di elementi elastici largamente impiegata nella pratica ingegneristica in alternativa alle molle a elica cilindrica. Esse ricorrono a lamine che possono essere impacchettate tra loro e fissate alle estremità in modo da inflettersi sotto l'azione di carichi dinamici. Nella configurazione a balestra, costituita da più foglie collegate mediante dispositivi di serraggio e fissaggio, trovano frequente impiego alla base dei convogli merci ferroviari, nei veicoli industriali pesanti e negli autocarri.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: composizione introduttiva di immagini reali e schemi di molle a lamina e a balestra: pacchi di molle a balestra con occhielli alle estremità in officina, assale con sospensione a balestra, dettaglio di sospensione ferroviaria a balestra sopra la ruota su rotaia, assale automobilistico con due molle a balestra longitudinali (indicate come "Leaf springs") e dettaglio di balestra multi-foglia montata su ruota di veicolo pesante; più vista tridimensionale di un assale con sospensione a balestra ("Leaf Spring Suspension")]])

Rispetto alle sospensioni tradizionali basate su molle a elica cilindrica e ammortizzatori, le molle a lamina e a balestra presentano specifici vantaggi e svantaggi progettuali.

#strong[Vantaggi:]
- Semplicità costruttiva e costi di produzione contenuti; nella configurazione più semplice (molla monolama o parabolica), si utilizza una sola lamina che si rastrema dallo spessore centrale verso le estremità per distribuire opportunamente il carico verticale.
- Elevata capacità di supporto tra ruote, assi e telaio grazie alla struttura compatta a più strati metallici, idonea a sopportare carichi verticali molto elevati (motivo della loro persistente diffusione nei veicoli pesanti).
- Distribuzione del carico verticale lungo l'estensione della balestra anziché concentrazione in un unico punto, evitando forze localizzate eccessive che la sospensione potrebbe non tollerare.
- Riduzione dell'ingombro verticale: mentre una molla a elica cilindrica sottoposta a forze elevate richiederebbe uno sviluppo verticale importante, la molla a lamina distribuisce l'ingombro longitudinalmente lungo il veicolo o lungo l'asse.

#strong[Svantaggi:]
- Scarsa regolabilità della sospensione: poiché le estremità della balestra sono collegate al telaio, vi è pochissimo margine per accorciare o estendere le foglie, rendendo possibile agire quasi esclusivamente sulla resistenza e flessibilità del materiale. Ciò le rende poco adatte a impieghi automobilistici ad alte prestazioni dove è essenziale variare la taratura per diverse condizioni di guida.
- Gradi di libertà limitati: sono progettate essenzialmente per il movimento verticale, a differenza dell'accoppiamento molla elicoidale-ammortizzatore che consente un campo di movimento più ampio.
- Usura severa su giunti e connessioni bullonate dovuta al vincolo rigido di serraggio e fissaggio al telaio.
- Necessità di punti di ancoraggio distribuiti e relativamente distanti lungo l'asse o il telaio del veicolo, rendendole comunque ingombranti in senso longitudinale.

Dal punto di vista meccanico, pur presentando spesso in configurazione montata un profilo apparentemente semi-ellittico, le molle di flessione a lamina lavorano tipicamente #strong[a flessione]:
- Si utilizzano quando l'elemento elastico deve operare in spazi limitati.
- Gli schemi elementari di studio sono basati sulle lamine incastrate.
- A seconda della geometria adottata per la pianta (rettangolare, triangolare, trapezia), presentano diversi #strong[fattori di utilizzazione].

==== Fattore di utilizzazione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per valutare la capacità di conversione dell'energia meccanica applicata in energia di deformazione elastica si introduce il #strong[fattore di utilizzazione] della molla, definito come il rapporto tra l'energia immagazzinabile dalla molla e l'energia immagazzinabile da una barra in trazione dello stesso volume soggetta alla medesima tensione massima che si verifica nella molla. Esso costituisce un indice che esprime il livello di utilizzo del materiale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di confronto tra barra a sezione costante rettangolare (altezza $h$, profondità $b$, lunghezza $l$, sistema di assi $x$ orizzontale e $y$ verticale) soggetta a trazione-compressione con diagramma delle tensioni normale uniforme pari a $overline(sigma)$ e la stessa barra soggetta a flessione uniforme tramite coppia di momenti flettenti $M$ alle estremità con diagramma delle tensioni lineare a farfalla di valore massimo $overline(sigma)$ ai lembi superiore e inferiore]])

L'energia di deformazione elastica integrata sul volume $V$ è espressa in generale da:

$ E = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V $

Nel caso di #strong[trazione o compressione] su una barra a sezione costante soggetta a sforzo normale, la distribuzione delle tensioni normali sulla sezione trasversale è uniforme e costante lungo tutta la trave, pari a $sigma = overline(sigma)$ (con deformazione corrispondente $overline(epsilon.alt)$). L'energia immagazzinata $E^t$ vale:

$ E^t = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V = frac(1, 2) dot.op overline(sigma) dot.op overline(epsilon.alt) dot.op h dot.op b dot.op l = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op h dot.op b dot.op l $

dove $E$ è il modulo di Young del materiale e $h dot.op b dot.op l$ rappresenta il volume della trave.

Nel caso di #strong[flessione uniforme], secondo la teoria elementare della trave, la distribuzione delle tensioni normali dovute al momento flettente costante $M$ varia linearmente lungo l'altezza $h$ della sezione in funzione della distanza $y$ dall'asse neutro, raggiungendo il valore massimo $overline(sigma)$ in corrispondenza di $y = plus.minus h/2$:

$ sigma = frac(overline(sigma), h/2) dot.op y $

Sostituendo tale espressione nell'integrale dell'energia di deformazione elastica e integrando lungo lo spessore tra $-h/2$ e $+h/2$, si ottiene l'energia immagazzinata a flessione $E^f$:

$ E^f = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V = integral_V frac(1, 2) dot.op frac(sigma^2, E) dot.op d V = integral_V frac(1, 2) dot.op frac(1, E) dot.op (frac(overline(sigma), h/2) dot.op y)^2 d x dot.op d y dot.op d z $

$ E^f = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op frac(4, h^2) integral_(-h/2)^(h/2) y^2 d y = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op frac(4, h^2) dot.op 2 dot.op frac(1, 3) dot.op frac(h^3, 8) = frac(1, 6) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op h $

Confrontando i due risultati a parità di volume e di tensione massima $overline(sigma)$, si ottiene il fattore di utilizzazione per una trave soggetta a flessione uniforme:

$ U = frac(E^f, E^t) = frac(1, 3) $

La riduzione a un terzo deriva dal fatto che nella trazione pura tutto il materiale della sezione trasversale lavora alla tensione massima, mentre nella flessione solo i lembi esterni raggiungono $overline(sigma)$, con sfruttamento parziale delle fibre interne.

==== Molla a lamina con pianta rettangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Considerando una trave a mensola incastrata a un'estremità e caricata all'estremo libero da una forza verticale $F$, avente pianta rettangolare di larghezza costante $b_0$, spessore $h$ e lunghezza $l$, la tensione normale varia lungo l'asse della trave in funzione dell'ascissa $x$ misurata dall'estremità libera.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: vista tridimensionale di una molla a lamina incastrata a pianta rettangolare (larghezza $b_0$, spessore $h$, lunghezza $l$), con forza verticale $F$ applicata all'estremo libero, ascissa $x$ misurata dall'estremo libero ed elemento infinitesimo $d x$; affiancata a fotografia di una lamina rettangolare in alluminio incastrata con strato piezoceramico applicato]])

Poiché il momento flettente $M_f = F x$ ha andamento triangolare (nullo all'estremo libero e massimo all'incastro), la tensione normale alla coordinata $x$ e la rotazione elementare $d alpha$ risultano:

$ sigma = frac(M_f, w_f) = frac(F x, b_0 h^2 / 6) $

$ d alpha = frac(M_f, E I) d x = frac(F x, E I) d x $

Integrando lungo l'intera lunghezza $l$ della mensola si ottengono la freccia $f$ all'estremità libera, la rigidezza $k$ e il momento d'inerzia $I$ della sezione rettangolare:

$ f = integral_0^l x frac(F x, E I) d x = frac(F l^3, 3 E I) $

$ k = frac(3 E I, l^3), quad I = frac(b_0 h^3, 12) $

In questo caso il fattore di utilizzazione scende ulteriormente a:

$ U = frac(E^f, E^t) = frac(1, 9) $

Tale valore ($1/3$ di $1/3$) deriva da due penalizzazioni simultanee:
1. La distribuzione lineare (non uniforme) della tensione all'interno della singola sezione trasversale dovuta alla flessione (primo fattore $1/3$).
2. La variazione lineare (triangolare) del momento flettente lungo la linea d'asse, per cui la tensione non è uniformemente pari al valore massimo in tutte le sezioni, ma raggiunge il suo picco solo all'incastro ($x = l$):

$ sigma_(m a x) = frac(F l, b_0 h^2 / 6) $

La lamina rettangolare non utilizza quindi appieno il materiale. Per recuperare la perdita lungo l'asse conviene ricorrere a una #strong[molla di uniforme resistenza], progettata in modo da mantenere $sigma_(m a x) = "costante"$ lungo l'intera lunghezza.

==== Solidi di uniforme resistenza: alternative progettuali
Per imporre che la tensione massima sia costante lungo tutta la trave:

$ sigma = frac(F x, b h^2 / 6) = "cost" $

si presentano due possibili alternative geometriche (non potendo agire né sulla forza $F$ né sulla lunghezza $l$):
1. #strong[Variare lo spessore (molla parabolica)] mantenendo costante la larghezza della pianta, imponendo una legge quadratica dello spessore rispetto all'ascissa:
   $ h^2 = x $
   In tal modo la vista laterale assume un profilo parabolico crescente dall'estremità libera verso l'incastro.
2. #strong[Variare la larghezza in pianta (pianta triangolare)] mantenendo costante lo spessore:
   $ b = x $

La seconda alternativa è solitamente preferita dal punto di vista tecnologico poiché comporta minori problemi costruttivi rispetto alla realizzazione accurata di uno spessore variabile con profilo parabolico.

==== Molla a lamina con pianta triangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Adottando una pianta triangolare di larghezza $b_0$ all'incastro, larghezza nulla al punto di applicazione della forza $F$ e spessore costante $h$, la larghezza locale $b$ varia linearmente con l'ascissa $x$ misurata dalla punta:

$ b = b_0 frac(x, l) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: vista tridimensionale di una molla a lamina incastrata a pianta triangolare (larghezza alla base $b_0$, spessore $h$, lunghezza $l$), con forza verticale $F$ applicata alla punta, ascissa $x$ misurata dalla punta ed elemento infinitesimo $d x$]])

Sostituendo l'espressione della larghezza nella formula della tensione massima si verifica che la tensione rimane rigorosamente costante in ogni sezione lungo tutta la lunghezza della molla:

$ sigma = frac(F x, b h^2 / 6) = frac(F x, b_0 frac(x, l) h^2 / 6) = frac(F l, b_0 h^2 / 6) = "cost" = sigma_(m a x) $

Il momento d'inerzia locale varia lungo l'asse secondo $I(x) = frac(1, 12) dot.op b(x) dot.op h^3$. Calcolando la curvatura $frac(1, r)$ tramite l'equazione della linea elastica, si osserva che essa è costante su tutta la lunghezza:

$ frac(1, r) = frac(M, E I) = frac(F x, E dot.op b_0 frac(x, l) h^3 / 12) = frac(12 dot.op F dot.op l, E dot.op b_0 dot.op h^3) = "cost" $

Poiché il raggio di curvatura $r$ è costante, la deformata della lamina a pianta triangolare è esattamente un #strong[arco di circonferenza]. La freccia all'estremità libera $f$ e la rigidezza $k$ (espresse in funzione del momento d'inerzia all'incastro $I$) valgono:

$ f = frac(F l^3, 2 E I) $

$ k = frac(2 E I, l^3), quad I = frac(b_0 h^3, 12) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Recuperando la perdita dovuta alla variazione del momento flettente lungo la linea d'asse, la molla utilizza meglio il materiale e il fattore di utilizzazione ritorna pari a:

$ U = frac(1, 3) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: disegno costruttivo della molla a lamina con pianta triangolare comprendente vista laterale (con forza $F$, freccia $delta$, lunghezza $L$, spessore $h$, ascissa $x$), vista in pianta con sistema di incastro a piastra bullonata e raccordo d'estremità per l'applicazione del carico, e diagramma/sezione con larghezza variabile $b(x)$ fino a $b_0$; affiancato a fotografia di confronto di tre lamine con substrato in alluminio e strato piezoceramico (rettangolare con $U=1/9$, triangolare/rastremata con $U=1/3$, e una terza a pianta più ampia)]])

Dal punto di vista pratico e costruttivo, tuttavia, un'estremità appuntita non permette un'agevole applicazione del carico né un comodo collegamento con gli altri organi della macchina. Lo stesso problema emerge ad esempio nei recuperatori di energia piezoelettrici [?] (lamine in alluminio incastrate rivestite con strati piezoceramici dotati di elettrodi per convertire l'energia delle vibrazioni in energia elettrica), dove una punta stretta impedisce di sfruttare fino in fondo la superficie utile del materiale piezoceramico. Per questo motivo si adotta una soluzione di compromesso: la #strong[molla con pianta trapezia].

==== Molla a lamina con pianta trapezia
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella molla a pianta trapezia la larghezza varia linearmente da una base maggiore $b_0$ all'incastro fino a una base minore finita $b_0'$ all'estremità libera, così da consentire l'applicazione del carico o del vincolo.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: vista tridimensionale di una molla a lamina incastrata a pianta trapezia (base maggiore all'incastro $b_0$, base minore all'estremità libera $b_0'$, spessore $h$, lunghezza $l$), con forza verticale $F$ applicata all'estremo libero, ascissa $x$ ed elemento infinitesimo $d x$]])

La rastremazione della trave è caratterizzata dal fattore adimensionale $alpha$:

$ alpha = frac(3, 2 + b_0' / b_0) = frac(3 b_0, 2 b_0 + b_0') $

La tensione nella generica sezione, la tensione massima all'incastro, la freccia $f$ e la rigidezza $k$ risultano:

$ sigma = frac(F x, b h^2 / 6), quad sigma_(m a x) = frac(F l, b_0 h^2 / 6) $

$ f = alpha frac(F l^3, 3 E I) $

$ k = frac(3 E I, alpha l^3), quad I = frac(b_0 h^3, 12) $

Il fattore di utilizzazione della molla a pianta trapezia è espresso da:

$ U = frac(2 alpha b_0, 9(b_0 + b_0')) $

Si osserva che al limite per $b_0' arrow.r 0$ (ritornando alla pianta triangolare) $alpha arrow.r 3/2$ e il fattore di utilizzazione tende a $1/3$; viceversa, al crescere di $b_0'$ verso $b_0$ ci si avvicina alla pianta rettangolare e il fattore di utilizzazione scende verso $1/9$.

==== Molla a balestra
Per realizzare una molla completa avente punti di ancoraggio alle due estremità e punto di applicazione del carico nella sezione centrale (che per simmetria si comporta come un incastro per ciascuna delle due metà), occorrerebbe unire due molle a pianta trapezia per la base maggiore. Una foglia unica a doppio trapezio risulterebbe però di ingombro trasversale eccessivo per poter essere installata sotto il telaio di un veicolo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La #strong[molla a balestra] risolve tale problema riducendo l'ingombro trasversale: essa equivale all'unione di due molle a pianta trapezia unite per la base maggiore, ma sezionate longitudinalmente in listelle sovrapposte le une alle altre invece che affiancate sullo stesso piano.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di generazione della molla a balestra dalla doppia molla trapezia di lunghezza totale $2 l$, base centrale $b_0$, spessore $h$ ed estremità $b_0'$: suddivisione longitudinale in strisce simmetriche ($a$, $b/2$, $c/2$, $d/2$, $e/2$, $f/2$), ricomposizione delle coppie di mezze foglie in foglie intere di uguale larghezza $b_0'$ ($a, b, c, d, e, f$) e sovrapposizione a pacco con la foglia $a$ (foglia madre) in cima]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le caratteristiche geometriche e costruttive principali della molla a balestra sono:
- Equivale all'unione di 2 molle a pianta trapezia unite per la base maggiore.
- È formata da #strong[foglie] sovrapposte di diversa lunghezza e uguale larghezza $b_0'$.
- Ogni foglia è l'unione di due mezze foglie longitudinali opposte rispetto alla mezzeria (tranne la lamina centrale).
- La prima foglia ($a$ in figura), di lunghezza maggiore $2 l$ e dotata in genere di occhielli alle estremità per l'ancoraggio al telaio, è detta #strong[foglia madre].
- Le foglie non sono incollate tra loro, bensì tenute insieme da fasce o cavallotti (ad esempio attacchi a U o fascette di serraggio) e da un perno di unione centrale; ciò consente alle foglie di flettersi e scorrere moderatamente le une rispetto alle altre.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: disegno tecnico di molla a balestra montata (sezione longitudinale del pacco di foglie con occhielli d'estremità, carico centrale $F$, freccia $f$, fascette di collegamento e sezione trasversale $A-A$ del cavallotto, oltre ai dettagli $a, b, c$ delle forme terminali delle foglie); affiancato a schema applicativo in sospensione automobilistica con asse, ruota, ammortizzatore, attacco a U e stati "A riposo" e "Sotto carico", più fotografie reali dell'esploso delle foglie]])

Durante la flessione si verifica #strong[strisciamento tra lamina e lamina]; per ridurre le forze di attrito e la conseguente usura si fa uso di #strong[lubrificante a base di grafite].

==== Equivalenza tra molla a balestra e molla trapezia
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Poiché per una molla a pianta triangolare la linea elastica appartiene a un arco di circonferenza, è ragionevole assumere che tutte le foglie della balestra, obbligate a mantenersi a contatto dai dispositivi di serraggio e quindi ad avere all'incirca la stessa linea elastica, lavorino in modo analogo a quando erano affiancate nella molla a pianta trapezia originale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di confronto tra la mezza molla trapezia di lunghezza $L$, spessore $h$, base maggiore $b_0$ e base minore $b_0'$ caricata all'estremo da $F$, e la corrispondente molla a balestra vista lateralmente e in pianta di larghezza $b_0/n$ con momento all'incastro $M$ e forza $F$]])

Nell'ipotesi di attrito nullo tra le foglie e di carico e momento all'incastro ripartiti equamente tra le $n$ foglie, il momento totale all'incastro vale:

$ M = F dot.op L $

Su ciascuna delle $n$ foglie all'incastro agisce quindi un momento:

$ M_("foglia") = frac(M, n) $

Poiché la larghezza complessiva $b_0$ è stata suddivisa in $n$ foglie uguali di larghezza $b_0 / n$, la tensione di ogni foglia nella sezione di incastro risulta:

$ sigma = frac(M_("foglia"), W_("foglia")) = frac((M / n) dot.op 6, (b_0 / n) dot.op h^2) = frac(F dot.op L dot.op 6, b_0 dot.op h^2) $

La tensione di ogni foglia all'incastro è pertanto pari alla tensione della molla trapezia equivalente all'incastro.

In realtà sussistono due sostanziali differenze tra la molla a balestra reale e la molla trapezia equivalente:
1. Nella balestra esiste #strong[attrito] dovuto allo scorrimento relativo tra le lamine (compresse tra loro dalle fascette di collegamento), che dissipa energia.
2. L'inflessione delle lamine della balestra #strong[non avviene nello stesso piano] dell'originale molla trapezia (ciascuna foglia possiede un proprio asse neutro distinto).

Nonostante queste differenze, l'esperienza assicura una buona attendibilità dei risultati ottenuti con la schematizzazione a molla trapezia. In prima approssimazione, il calcolo della freccia e della tensione massima si effettua quindi utilizzando le formule della molla a pianta trapezia equivalente:

$ alpha = frac(3, 2 + b_0' / b_0), quad frac(b_0', b_0) = frac(1, n) arrow.r b_0 = n b_0', quad I = frac(b_0 h^3, 12) $

$ f = alpha frac(F l^3, 3 E I), quad sigma_(m a x) = frac(F l, b_0 h^2 / 6), quad k = frac(3 E I, alpha l^3) $

dove $n$ indica il numero di foglie. L'errore commesso con questa schematizzazione è in realtà #strong[a favore di sicurezza], poiché il calcolo approssimato porta alla sovrastima sia della freccia (utile per verificare eventuali interferenze con il telaio o il terreno) sia della tensione massima nel materiale.

==== Molla a balestra a profilo parabolico
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Come visto per il solido di uniforme resistenza, per ottenere $sigma_(m a x) = "cost"$ in ogni sezione si può scegliere tra variare la larghezza in pianta (molla a pianta triangolare, con $b = b_0 dot.op frac(x, l)$) oppure variare lo spessore mantenendo costante la larghezza $b$ (#strong[molla a profilo parabolico]):

$ h = sqrt(frac(x, L)) dot.op h_0 $

dove $h_0$ è lo spessore all'incastro (sezione centrale della balestra) e $L$ è la semilunghezza.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: confronto tridimensionale tra la molla a pianta triangolare (larghezza variabile $b(x) = b_0 dot.op x / l$, spessore costante $h$, forza $F$) e la molla a profilo parabolico (larghezza costante $b$, spessore variabile $h(x) = sqrt(x / L) dot.op h_0$, lunghezza $L$, forza $F$); affiancato alle viste di una molla a balestra a profilo parabolico monolama e di una molla a balestra a profilo parabolico bilama]])

La soluzione a profilo parabolico permette di avere in ogni sezione trasversale la stessa tensione massima di flessione presente nella sezione centrale di incastro, ottimizzando l'impiego del materiale lungo la linea d'asse. Pur richiedendo processi tecnologici più complessi e precisi rispetto alla sagomatura in pianta per ottenere la variazione quadratica di spessore, trova effettiva applicazione pratica sia in configurazione #strong[monolama] (spessore decrescente dal centro verso gli occhielli) sia in configurazione #strong[bilama]. Oggi tale geometria risulta particolarmente agevole da realizzare mediante l'impiego di #strong[materiali compositi], nei quali il processo di stratificazione consente naturalmente di variare lo spessore secondo il profilo parabolico desiderato.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un'applicazione automobilistica reale di molle a balestra a profilo parabolico bilama riguarda l'assale posteriore del veicolo #strong[Ducato medio], sul quale il carico complessivo $C = 2 P$ si ripartisce equamente sulle due balestre ($P / 2 = F$ per ciascuna semi-balestra), con i seguenti valori di esercizio:],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: vista prospettica dell'autotelaio posteriore di un veicolo Ducato medio con indicazione dei carichi sull'assale ($C = 2 P$, $P$ per lato, $P / 2 = F$) e dettaglio della molla a balestra bilama a profilo parabolico]])

#table(
  columns: 4,
  align: left,
  [#strong[Carico sull'asse [kg]]], [#strong[Carico su ogni balestra [kg]]], [#strong[Freccia [mm]]], [#strong[Tipo di carico]],
  [100], [50], [9], [A vuoto],
  [2094], [1047], [178], [Dinamico],
  [2906], [1453], [247], [Statico massimo],
)

=== Esercizi
Nessun esercizio presente nelle fonti fornite.