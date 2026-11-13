#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)
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
#image("grafico molla 1.png", width:90%)
])


- #strong[Softening:] all'aumentare della forza applicata, la rigidezza della molla diminuisce. La molla diventa più cedevole e, a parità di forza, si ottiene una deformazione maggiore rispetto al caso lineare.
- #strong[Hardening:] all'aumentare della forza, la rigidezza aumenta. Il sistema subisce un irrigidimento progressivo nei confronti delle azioni applicate.

== Il Paradigma della Barra di Torsione
#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La forma di molla più vicina alla teoria classica della trave, utilizzata come paradigma per lo studio strutturale di molle più complesse (come quelle ad elica cilindrica), è la barra di torsione. Essa è costituita da un cilindro solido (una trave a sezione circolare) incastrato a un'estremità e libero all'altra. All'estremità libera è tipicamente collegato un braccio rigido (piattello o leva) a cui viene applicata una forza $F$. Il comportamento della barra è dominato dal momento torcente $M_t = F dot.op r$, dove $r$ è il braccio rigido. La tensione tangenziale massima $tau_(m a x)$ si calcola dividendo il momento torcente per il modulo di resistenza a torsione $w_t$:],[
#image("barra di torsione.png",width:90%)
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
#image("dettaglio barra di torsione.png", width:75%)
])

Nel passaggio dal diametro maggiore della porzione scanalata al diametro minore della parte centrale attiva della barra, è fondamentale inserire un ampio raggio di raccordo. Questo dettaglio costruttivo è necessario per mitigare l'effetto di concentrazione delle tensioni (intaglio) causato dalla variazione di sezione. Esistono anche soluzioni alternative per le estremità, come teste a profilo esagonale o poligonale, che offrono facce di riscontro adeguate per la trasmissione del momento pur consentendo lievi adattamenti assiali.

Un'applicazione classica della barra di torsione è la barra stabilizzatrice (o barra anti-rollio) nelle sospensioni automobilistiche. Durante la percorrenza di una curva, il veicolo è soggetto a forze inerziali centrifughe che causano un trasferimento di carico e una diversa aderenza tra le ruote interne ed esterne alla curva, innescando il fenomeno del rollio.

La barra di torsione viene montata trasversalmente per collegare i due bracci della sospensione. Quando le ruote subiscono spostamenti verticali asimmetrici (una si comprime, l'altra si estende), la barra subisce una torsione. La rigidezza torsionale della barra si oppone a questa differenza di escursione, moderando lo sbilanciamento dei carichi, riducendo l'angolo di rollio e migliorando sensibilmente la stabilità e la sicurezza del veicolo in curva, fungendo anche da elemento di smorzamento per eventuali vibrazioni innescate dalla manovra.

// NOTA: L'errore "unexpected argument" in Typst è causato dalla virgola nei numeri decimali (es. 0,615) dentro frac(a, b), che viene interpretata come separatore di un terzo argomento. Nei numeri decimali dentro funzioni matematiche Typst va usato il punto (0.615) o il numero va racchiuso tra virgolette ("0,615"). Di seguito il codice completo corretto.

== Molle ad elica cilindrica
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Le molle a elica cilindrica sono assimilabili a barre di torsione avvolte a elica su un cilindro ideale. Dal punto di vista geometrico si identificano due elementi fondamentali: una geometria macroscopica determinata dalle dimensioni e dall'ingombro del cilindro ideale, di diametro $D = 2r$ (dove il raggio $r$ individua la distanza tra l'asse centrale del cilindro, lungo il quale agisce la risultante delle forze $F$ applicate ai piattelli o alle estremità, e il centro della sezione trasversale del filo), e una geometria locale legata al filo metallico avvolto, avente sezione trasversale circolare di diametro $d$. L'avvolgimento a elica è caratterizzato da un angolo di inclinazione $alpha$ e da un passo $p$. Quando la molla è a riposo, ovvero scarica e appoggiata su un piano in assenza di azioni esterne, presenta una lunghezza libera indicata con $L_0$.],[#image("schema molla elica cilindrica.png", width:50%)])

A seconda della direzione del carico $F$ lungo l'asse della molla, che tende a comprimerla o a estenderla nel suo complesso permettendo a una massa fissata a un'estremità di muoversi di moto traslatorio, queste molle sono dette impropriamente molle di trazione o molle di compressione. Tale terminologia genera un equivoco: macroscopicamente il corpo appare compresso o teso, ma dal punto di vista del comportamento elastico e meccanico del materiale la deformazione della molla è in gran parte dovuta alla torsione del filo. Il sistema si comporta infatti come una barra di torsione rettilinea estesa da una sezione vincolata (la base) fino alla sezione di applicazione del carico, ma avvolta in forma di elica. Poiché la barra di torsione è incurvata su se stessa, la curvatura altera la distribuzione di tensione nella sezione circolare del filo; è quindi indispensabile correggere i risultati della teoria di De Saint-Venant per la barra di torsione mediante opportuni coefficienti correttivi che tengano conto sia delle sollecitazioni di taglio sia di quelle dovute alla curvatura del filo.

L'evidenza sperimentale del fenomeno di torsione si osserva confrontando tre configurazioni di molle compresse assialmente:
1. Nella molla a elica cilindrica classica a un solo principio (un'unica elica che si estende da un'estremità all'altra), l'estremità appoggiata su un cuscinetto subisce una rotazione evidente per effetto della torsione del filo.
2. In una molla realizzata con un doppio principio, costituita da due fili avvolti in contrapposizione (un'elica destrorsa e una sinistrorsa), si verifica una compensazione relativa degli effetti di rotazione, determinando una torsione complessiva minore.
3. In una molla costituita da due eliche in serie separate da una porzione centrale a forma di anello, in cui il primo tratto è avvolto in forma sinistrorsa e il secondo tratto è costituito da un'elica gemella ma di verso opposto, la rotazione determinata dal primo tratto viene compensata dal secondo, annullando di fatto l'angolo di rotazione complessivo.

== Caratteristiche di sollecitazione e parametri geometrici
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -4em,
  align: (left + horizon, center + horizon),[Per determinare le tensioni nel materiale, si analizza una generica sezione trasversale circolare del filo (di diametro $d$), il cui centro si trova a distanza $r$ dalla retta d'azione della forza verticale $F$ applicata lungo l'asse centrale del cilindro dell'elica. Essendo la sezione trasversale inclinata dell'angolo $alpha$ caratteristico dell'elica, la forza risultante $F$ si scompone in una direzione normale e in una direzione tangenziale (nel piano della sezione trasversale). Trasportando tali azioni al centro della sezione trasversale del filo a distanza $r$, si generano quattro caratteristiche di sollecitazione:],[#image("molla forze.png", width:45%)]) 
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
$ N = F sin alpha tilde.eq 0 $],[#image("forze elica.png",width:70%)])


#grid(
  columns: (1.5fr, 1fr),
  column-gutter: -2em,
  align: (left + horizon, center + horizon),[Poiché l'angolo d'elica $alpha$ è piccolo, si ha $cos alpha tilde.eq 1$ e $sin alpha tilde.eq 0$. Di conseguenza, le azioni di momento flettente $M_f$ e di sforzo normale $N$ risultano pressoché nulle e vengono trascurate, mentre le caratteristiche di sollecitazione dominanti da considerare nel calcolo sono il momento torcente $M_t tilde.eq F r$ e l'azione di taglio $T tilde.eq F$.],[
#image("sezione frontale.png",width:45%)
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
#image("pacco.png",width:50%)
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
#image("grafico impacchettamento molle.png",width:90%)
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



==== Fenomeni secondari: ingobbamento e sfarfallamento
Nelle molle di compressione particolarmente snelle (lunghezza libera $L_0$ elevata rispetto al diametro dell'elica $D$) e non guidate lateralmente, può manifestarsi un fenomeno di instabilità elastica per carico di punta macroscopico detto #strong[ingobbamento] (#emph[buckling]), analogo a quello delle travi compresse. Il carico critico che porta all'ingobbamento vale:

$ F_("crit") = k L_0 K_L $

dove $k$ è la rigidezza della molla, $L_0$ la lunghezza libera a riposo e $K_L$ un coefficiente tabulato in funzione del rapporto $L_0 / D$ e delle condizioni di vincolo alle estremità (estremi incernierati, liberi di ruotare sull'appoggio, oppure estremi incastrati, saldamente ancorati). Per evitare l'instabilità, il carico massimo d'esercizio deve rimanere inferiore a $F_("crit")$; inoltre, costruttivamente si può contrastare il fenomeno guidando la molla all'interno di pareti o sedi che forniscano una reazione laterale.
#canvas(length: 0.75cm, {
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
})

#canvas(length: 0.65cm, {
  import draw: *

  // --- ASSE CENTRALE SUL FONDO ---
  line((0.0, 0.20), (0.0, 4.35), stroke: (dash: "dash-dotted", thickness: 0.7pt))

  // --- SPIRA 1: METÀ POSTERIORE (sale da sinistra a destra) ---
  bezier((-1.75, 1.35), (1.75, 2.05), (-1.75, 2.25), (1.75, 2.95), stroke: 1.1pt)
  bezier((-1.75, 0.65), (1.75, 1.35), (-1.75, 1.55), (1.75, 2.25), stroke: 1.1pt)

  // Copertura bianca per la metà anteriore della Spira 1
  line(
    (-2.45, 1.35), (-2.30, 0.75), (-1.50, 0.32), (0.0, 0.22), (1.50, 0.55), (2.35, 1.10), (2.45, 1.70),
    (1.75, 1.70), (1.20, 1.15), (0.0, 0.92), (-1.20, 0.98), (-1.75, 1.35),
    close: true, fill: white, stroke: none
  )

  // --- SPIRA 1: METÀ ANTERIORE (scende e gira davanti) ---
  bezier((-2.45, 1.65), (-2.45, 1.25), (-2.55, 1.50), (-2.55, 1.35), stroke: 1.1pt)
  bezier((-2.45, 1.25), (2.45, 1.70), (-2.45, -0.15), (2.45, 0.30), stroke: 1.1pt)
  bezier((2.45, 1.70), (2.45, 2.15), (2.55, 1.85), (2.55, 2.00), stroke: 1.1pt)
  bezier((-1.75, 1.35), (1.75, 1.70), (-1.75, 0.65), (1.75, 1.00), stroke: 1.1pt)


  // --- SPIRA 2: METÀ POSTERIORE (sale da sinistra a destra) ---
  bezier((-1.75, 2.75), (1.75, 3.45), (-1.75, 3.65), (1.75, 4.35), stroke: 1.1pt)
  bezier((-1.75, 2.05), (1.75, 2.75), (-1.75, 2.95), (1.75, 3.65), stroke: 1.1pt)

  // Copertura bianca per la metà anteriore della Spira 2
  line(
    (-2.45, 2.75), (-2.30, 2.15), (-1.50, 1.72), (0.0, 1.62), (1.50, 1.95), (2.35, 2.50), (2.45, 3.10),
    (1.75, 3.10), (1.20, 2.55), (0.0, 2.32), (-1.20, 2.38), (-1.75, 2.75),
    close: true, fill: white, stroke: none
  )

  // --- SPIRA 2: METÀ ANTERIORE (scende e gira davanti) ---
  bezier((-2.45, 3.05), (-2.45, 2.65), (-2.55, 2.90), (-2.55, 2.75), stroke: 1.1pt)
  bezier((-2.45, 2.65), (2.45, 3.10), (-2.45, 1.25), (2.45, 1.70), stroke: 1.1pt)
  bezier((2.45, 3.10), (2.45, 3.55), (2.55, 3.25), (2.55, 3.40), stroke: 1.1pt)
  bezier((-1.75, 2.75), (1.75, 3.10), (-1.75, 2.05), (1.75, 2.40), stroke: 1.1pt)


  // --- SPIRA 3 (SUPERIORE): GIRA DIETRO E TERMINA NELLA SEZIONE A ---
  // Copertura bianca per la parte anteriore sinistra della Spira 3 (dove c'è la sezione A)
  line(
    (-2.45, 4.15), (-2.40, 3.45), (-1.65, 2.86), (-1.35, 3.54), (-1.75, 3.85), (-1.75, 4.15),
    close: true, fill: white, stroke: none
  )

  // Bordo esterno superiore (da destra sale al colmo e scende a sinistra fino alla base di A)
  bezier((2.45, 3.55), (0.0, 5.05), (2.45, 4.55), (1.35, 5.05), stroke: 1.1pt)
  bezier((0.0, 5.05), (-2.45, 4.05), (-1.35, 5.05), (-2.45, 4.60), stroke: 1.1pt)
  bezier((-2.45, 4.05), (-1.62, 2.86), (-2.45, 3.45), (-2.05, 3.00), stroke: 1.1pt)

  // Bordo interno superiore (da destra sale al colmo interno e scende fino alla cima di A)
  bezier((1.75, 3.45), (0.0, 4.35), (1.75, 4.05), (0.95, 4.35), stroke: 1.1pt)
  bezier((0.0, 4.35), (-1.75, 3.90), (-0.95, 4.35), (-1.75, 4.15), stroke: 1.1pt)
  bezier((-1.75, 3.90), (-1.38, 3.54), (-1.75, 3.70), (-1.58, 3.58), stroke: 1.1pt)


  // --- SEZIONE TRASVERSALE A (ELLISSE CAMPITA E TRATTEGGIATA) ---
  // Centro sezione: C_A = (-1.50, 3.20)
  line(
    (-1.38, 3.54), (-1.26, 3.45), (-1.22, 3.26), (-1.28, 3.04),
    (-1.42, 2.89), (-1.62, 2.86), (-1.74, 2.96), (-1.78, 3.15),
    (-1.70, 3.37), (-1.55, 3.51),
    close: true, fill: black.transparentize(72%), stroke: 1.1pt
  )

  // Tratteggio interno alla sezione A
  line((-1.72, 3.30), (-1.45, 3.52), stroke: 0.5pt)
  line((-1.77, 3.12), (-1.30, 3.48), stroke: 0.5pt)
  line((-1.72, 2.96), (-1.23, 3.34), stroke: 0.5pt)
  line((-1.58, 2.87), (-1.25, 3.12), stroke: 0.5pt)

  content((-1.90, 3.50), [#text(size: 8pt)[$A$]], anchor: "east")


  // --- FORZA ASSIALE F ---
  line((0.0, -1.35), (0.0, 0.55), mark: (end: ">"), stroke: 1.6pt)
  content((0.28, -1.05), [#text(size: 9pt)[$F$]], anchor: "west")


  // --- TERNA LOCALE (x, y, z) CENTRATA IN (-1.50, 3.20) ---
  // Asse z (verticale)
  line((-1.50, 3.20), (-1.50, 4.05), mark: (end: ">"), stroke: 0.8pt)
  content((-1.35, 4.08), [#text(size: 8pt)[$z$]], anchor: "west")

  // Asse x (radiale verso l'esterno/basso-sinistra)
  line((-1.50, 3.20), (-2.25, 2.82), mark: (end: ">"), stroke: 0.8pt)
  content((-2.32, 2.75), [#text(size: 8pt)[$x$]], anchor: "north")

  // Asse y (orizzontale verso destra)
  line((-1.50, 3.20), (-0.70, 3.20), mark: (end: ">"), stroke: 0.8pt)
  content((-0.62, 3.32), [#text(size: 8pt)[$y$]], anchor: "south")


  // --- VETTORI AZIONI INTERNE N E T (IN ROSSO) ---
  // Vettore T (taglio, verso il basso-sinistra)
  line((-1.50, 3.20), (-2.05, 2.10), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-1.62, 2.25), [#text(fill: red, size: 8pt)[$T$]], anchor: "west")

  // Vettore N (normale alla sezione, verso il basso-destra)
  line((-1.50, 3.20), (-0.05, 2.75), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-0.25, 2.98), [#text(fill: red, size: 8pt)[$N$]], anchor: "south")
})

In presenza di carichi dinamici alternati con frequenza prossima alla frequenza propria della molla si verifica il fenomeno della risonanza, detto #strong[sfarfallamento] delle spire: l'ampiezza di vibrazione cresce in modo incontrollato (con alcune spire che oscillano fortemente e altre che appaiono ferme in corrispondenza dei nodi dei modi di vibrazione), portando a sovrasollecitazione e rottura del filo. Per evitarlo si impone che la prima frequenza propria della molla sia almeno $20$ volte superiore alla frequenza del carico applicato:

$ lambda_(1, "molla") = frac(d, D l_(e q)) sqrt(frac(G, 8 rho)), quad quad l_(e q) = pi D i $

$ lambda_(1, "molla") gt.eq 20 dot.op lambda_("carico") $

==== Procedura di calcolo per molle di torsione (ad elica cilindrica)
Il dimensionamento di una molla ad elica cilindrica (lavorante a torsione del filo) è un #strong[calcolo iterativo di verifica]. Sono generalmente noti l'ingombro disponibile ($tilde.eq D$), la freccia e il carico massimi (oppure la rigidezza $k$ e uno dei due parametri, legati da $k = frac(Delta F, Delta f) = frac(F_(m a x), f_(m a x))$), e talvolta la lunghezza sotto carico massimo $L_(F_(m a x))$ (dettati da vincoli di ingombro e dall'esigenza di evitare interferenze o contatti con altre parti).

La sequenza operativa prevede i seguenti passi:
1. Scelta di un diametro del filo unificato di tentativo $d = D/7 div D/12$ (in modo che il rapporto $c$ risulti proporzionato), del materiale ($R_m$, $R_(p 0.2}$) e del tipo di formatura (a freddo o a caldo).
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

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma a blocchi del calcolo iterativo di verifica ("scelta di tentativo" $arrow.r$ "verifica": se "SI" termina, se "NO" passa a "modifiche" e ritorna a "verifica")]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un esempio classico di applicazione è la sospensione automobilistica con molla elicoidale, in particolare nella configurazione #strong[sospensione MacPherson], in cui la molla a elica è montata direttamente attorno all'ammortizzatore tra connessione al telaio e connessione al mozzo ruota (con cerniere rispetto al telaio).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di applicazione di una sospensione automobilistica su ruota con asse, ammortizzatore e molla elicoidale, affiancato dallo schema e dalla vista di una sospensione MacPherson con indicate connessione al telaio, ammortizzatore, molla a elica, cerniere rispetto al telaio e connessione al mozzo ruota]])

==== Complessi di molle: collegamento in parallelo e in serie
Nelle applicazioni in cui più molle lavorano simultaneamente, la rigidezza equivalente dipende dal modo in cui sono collegate.

Nel collegamento #strong[in parallelo] (ad esempio due molle concentriche poste tra gli stessi piani d'appoggio), le molle subiscono lo stesso spostamento (freccia), mentre la forza totale è la somma delle forze sostenute dalle singole molle:

// NOTA: \implies convertito in arrow.r.double
$ f = f_1 = f_2, quad quad F = F_1 + F_2 $

$ F = k f = (k_1 + k_2) f arrow.r.double k = k_1 + k_2 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In generale, per $N$ molle in parallelo:

$ k = sum_(i=1)^N k_i $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di due molle concentriche in parallelo (molla 1 esterna e molla 2 interna) compresse tra una base fissa e un piattello superiore su cui agisce la forza $F$ con freccia $f$]])

Nel collegamento #strong[in serie] (molle poste in sequenza lungo l'asse con un piattello intermedio di interfaccia), le molle sopportano lo stesso carico, mentre la freccia totale è la somma delle frecce parziali:

$ F = F_1 = F_2, quad quad f = f_1 + f_2 $

$ f = frac(F, k) = frac(F_1, k_1) + frac(F_2, k_2) = F (frac(1, k_1) + frac(1, k_2)) $

Introducendo la #strong[deformabilità] $delta = frac(1, k)$, si ottiene:

$ frac(1, k) = frac(1, k_1) + frac(1, k_2) = delta $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In generale, per $N$ molle in serie:

$ frac(1, k) = sum_(i=1)^N frac(1, k_i), quad quad delta = sum_(i=1)^N delta_i $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di due molle in serie (molla 1 superiore e molla 2 inferiore separate da un piattello intermedio) appoggiate su una base fissa e caricate dall'alto con forza $F$ e spostamento totale $f$]])

Sussiste un'analogia elettromeccanica con la resistenza elettrica $R$, associando alla resistenza elettrica non la rigidezza $k$ bensì la deformabilità $delta = 1/k$:

#table(
  columns: 3,
  align: (left, center, center),
  [#strong[Configurazione]], [#strong[Molle (rigidezza $k$ e deformabilità $delta = 1/k$)]], [#strong[Resistenze elettriche ($R$)]],
  [#strong[In serie]], [$frac(1, k) = sum_(i=1)^N frac(1, k_i), quad delta = sum_(i=1)^N delta_i$], [$R = sum_(i=1)^N R_i$],
  [#strong[In parallelo]], [$frac(1, delta) = sum_(i=1)^N frac(1, delta_i), quad k = sum_(i=1)^N k_i$], [$frac(1, R) = sum_(i=1)^N frac(1, R_i)$],
)

==== Molle a elica cilindrica "in trazione"
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per le molle elicoidali di trazione il punto critico è l'anello terminale (gancio di collegamento). Poiché il gancio è ruotato di $90 degree$ rispetto alle spire normali e la forza $F$ è applicata lungo l'asse dell'elica, nelle estremità si instaura uno stato tensionale complesso (modellabile come trave curva) dovuto all'accoppiamento tra forza normale, momento flettente (prodotto dal braccio della forza $F$ rispetto alla sezione critica) ed effetti di intaglio legati ai piccoli raggi di curvatura ($r_1, r_2, r_3, r_4$). La verifica critica si concentra in particolare sulla sezione trasversale esposta al massimo momento flettente (sezione A-A o B-B).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: due schemi di estremità a gancio per molle di trazione con carico assiale $F$, diametro filo $d$, diametro elica $D$, raggi di curvatura $r_1, r_3$ (sezione critica A-A) e $r_2, r_4$ (sezione critica B-B), affiancati dalla fotografia di una molla cilindrica di trazione con occhielli terminali]])

Le molle di trazione vengono realizzate con le spire a contatto e precaricate durante la costruzione; richiedono pertanto un "tiro" iniziale $F_0$ prima di iniziare a deformarsi. Il carico di precarico $F_0$ si calcola imponendo una tensione iniziale $tau_i$:

$ tau_i = (0.4 - 0.8) dot.op frac(d, D) dot.op R_m $

$ F_0 = frac(pi dot.op d^2, 8 c) tau_i = frac(pi dot.op d^3, 8 D) tau_i $

La lunghezza libera all'interno degli occhielli vale:

$ L_0 = (i + 1) d + 2 dot.op 0.8 dot.op D_i $

e la forza necessaria per ottenere una freccia $f$ voluta risulta quindi:

$ F = frac(G dot.op d dot.op f, 8 dot.op c^3 dot.op i) + F_0 $

(con la relazione tra carico e tensione tangenziale massima $tau_(m a x) = frac(8 F c, pi d^2)$, ovvero $F = frac(pi d^2, 8 c) dot.op tau_(m a x)$).

==== Molle a passo variabile e molle coniche
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle a passo variabile e le molle coniche (ad elica tronco-conica, utilizzate ad esempio nei vani batterie di dispositivi domestici) vengono impiegate per ottenere #strong[caratteristiche forza-spostamento non lineari] di tipo #emph[hardening] (irrigidimento progressivo). Nelle molle coniche, all'applicare del carico si deformano per prime le spire di diametro maggiore, più docili e cedevoli; quando queste arrivano a contatto o si impacchettano, entrano progressivamente in gioco le spire più piccole e rigide, aumentando la rigidezza complessiva del sistema. Questa geometria offre inoltre il vantaggio di evitare o ridurre drasticamente il problema dell'ingobbamento (#emph[buckling]) e consente talvolta alle spire di annidarsi quasi concentricamente.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di una molla cilindrica a passo variabile, schema di una molla conica sotto carico assiale di compressione e fotografia di una molla elicoidale conica]])