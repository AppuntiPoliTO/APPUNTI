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

= *Molle*
== *Molle - Generalità e Barra di Torsione*
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

#include "figs/molle/molle-fig01.typ"

])


- #strong[Softening:] all'aumentare della forza applicata, la rigidezza della molla diminuisce. La molla diventa più cedevole e, a parità di forza, si ottiene una deformazione maggiore rispetto al caso lineare.
- #strong[Hardening:] all'aumentare della forza, la rigidezza aumenta. Il sistema subisce un irrigidimento progressivo nei confronti delle azioni applicate.

== Il Paradigma della Barra di Torsione
#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La forma di molla più vicina alla teoria classica della trave, utilizzata come paradigma per lo studio strutturale di molle più complesse (come quelle ad elica cilindrica), è la barra di torsione. Essa è costituita da un cilindro solido (una trave a sezione circolare) incastrato a un'estremità e libero all'altra. All'estremità libera è tipicamente collegato un braccio rigido (piattello o leva) a cui viene applicata una forza $F$. Il comportamento della barra è dominato dal momento torcente $M_t = F dot.op r$, dove $r$ è il braccio rigido. La tensione tangenziale massima $tau_(m a x)$ si calcola dividendo il momento torcente per il modulo di resistenza a torsione $w_t$:],[
#image("images/molle/barra di torsione.png",width:90%)
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
#include "figs/molle/molle-fig02.typ"
])

Nel passaggio dal diametro maggiore della porzione scanalata al diametro minore della parte centrale attiva della barra, è fondamentale inserire un ampio raggio di raccordo. Questo dettaglio costruttivo è necessario per mitigare l'effetto di concentrazione delle tensioni (intaglio) causato dalla variazione di sezione. Esistono anche soluzioni alternative per le estremità, come teste a profilo esagonale o poligonale, che offrono facce di riscontro adeguate per la trasmissione del momento pur consentendo lievi adattamenti assiali.

Un'applicazione classica della barra di torsione è la barra stabilizzatrice (o barra anti-rollio) nelle sospensioni automobilistiche. Durante la percorrenza di una curva, il veicolo è soggetto a forze inerziali centrifughe che causano un trasferimento di carico e una diversa aderenza tra le ruote interne ed esterne alla curva, innescando il fenomeno del rollio.

La barra di torsione viene montata trasversalmente per collegare i due bracci della sospensione. Quando le ruote subiscono spostamenti verticali asimmetrici (una si comprime, l'altra si estende), la barra subisce una torsione. La rigidezza torsionale della barra si oppone a questa differenza di escursione, moderando lo sbilanciamento dei carichi, riducendo l'angolo di rollio e migliorando sensibilmente la stabilità e la sicurezza del veicolo in curva, fungendo anche da elemento di smorzamento per eventuali vibrazioni innescate dalla manovra.



== Molle ad elica cilindrica
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Le molle a elica cilindrica sono assimilabili a barre di torsione avvolte a elica su un cilindro ideale. Dal punto di vista geometrico si identificano due elementi fondamentali: una geometria macroscopica determinata dalle dimensioni e dall'ingombro del cilindro ideale, di diametro $D = 2r$ (dove il raggio $r$ individua la distanza tra l'asse centrale del cilindro, lungo il quale agisce la risultante delle forze $F$ applicate ai piattelli o alle estremità, e il centro della sezione trasversale del filo), e una geometria locale legata al filo metallico avvolto, avente sezione trasversale circolare di diametro $d$. L'avvolgimento a elica è caratterizzato da un angolo di inclinazione $alpha$ e da un passo $p$. Quando la molla è a riposo, ovvero scarica e appoggiata su un piano in assenza di azioni esterne, presenta una lunghezza libera indicata con $L_0$.],[// FASE 
#include "figs/molle/molle-fig03.typ"
])

A seconda della direzione del carico $F$ lungo l'asse della molla, che tende a comprimerla o a estenderla nel suo complesso permettendo a una massa fissata a un'estremità di muoversi di moto traslatorio, queste molle sono dette impropriamente molle di trazione o molle di compressione. Tale terminologia genera un equivoco: macroscopicamente il corpo appare compresso o teso, ma dal punto di vista del comportamento elastico e meccanico del materiale la deformazione della molla è in gran parte dovuta alla torsione del filo. Il sistema si comporta infatti come una barra di torsione rettilinea estesa da una sezione vincolata (la base) fino alla sezione di applicazione del carico, ma avvolta in forma di elica. Poiché la barra di torsione è incurvata su se stessa, la curvatura altera la distribuzione di tensione nella sezione circolare del filo; è quindi indispensabile correggere i risultati della teoria di De Saint-Venant per la barra di torsione mediante opportuni coefficienti correttivi che tengano conto sia delle sollecitazioni di taglio sia di quelle dovute alla curvatura del filo.

L'evidenza sperimentale del fenomeno di torsione si osserva confrontando tre configurazioni di molle compresse assialmente:
1. Nella molla a elica cilindrica classica a un solo principio (un'unica elica che si estende da un'estremità all'altra), l'estremità appoggiata su un cuscinetto subisce una rotazione evidente per effetto della torsione del filo.
2. In una molla realizzata con un doppio principio, costituita da due fili avvolti in contrapposizione (un'elica destrorsa e una sinistrorsa), si verifica una compensazione relativa degli effetti di rotazione, determinando una torsione complessiva minore.
3. In una molla costituita da due eliche in serie separate da una porzione centrale a forma di anello, in cui il primo tratto è avvolto in forma sinistrorsa e il secondo tratto è costituito da un'elica gemella ma di verso opposto, la rotazione determinata dal primo tratto viene compensata dal secondo, annullando di fatto l'angolo di rotazione complessivo.

== Caratteristiche di sollecitazione e parametri geometrici
#grid(
  columns: (1.3fr, 1fr),
  column-gutter: -4em,
  align: (left + horizon, center + horizon),[Per determinare le tensioni nel materiale, si analizza una generica sezione trasversale circolare del filo (di diametro $d$), il cui centro si trova a distanza $r$ dalla retta d'azione della forza verticale $F$ applicata lungo l'asse centrale del cilindro dell'elica. Essendo la sezione trasversale inclinata dell'angolo $alpha$ caratteristico dell'elica, la forza risultante $F$ si scompone in una direzione normale e in una direzione tangenziale (nel piano della sezione trasversale). Trasportando tali azioni al centro della sezione trasversale del filo a distanza $r$, si generano quattro caratteristiche di sollecitazione:],[#include "figs/molle/molle-fig04.typ"]) 
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
$ N = F sin alpha tilde.eq 0 $],[#include "figs/molle/molle-fig05.typ"])


#grid(
  columns: (1.5fr, 1fr),
  column-gutter: -2em,
  align: (left + horizon, center + horizon),[Poiché l'angolo d'elica $alpha$ è piccolo, si ha $cos alpha tilde.eq 1$ e $sin alpha tilde.eq 0$. Di conseguenza, le azioni di momento flettente $M_f$ e di sforzo normale $N$ risultano pressoché nulle e vengono trascurate, mentre le caratteristiche di sollecitazione dominanti da considerare nel calcolo sono il momento torcente $M_t tilde.eq F r$ e l'azione di taglio $T tilde.eq F$.],[

#include "figs/molle/molle-fig06.typ"

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
#include "figs/molle/molle-fig07.typ"
],[  Di conseguenza, la distribuzione delle tensioni tangenziali lungo il diametro della sezione non è più lineare (rappresentata da una retta con valori simmetrici $tau = frac(T r, J)$ agli estremi), ma diventa non lineare, seguendo una legge di ordine superiore. Tale distribuzione risulta sbilanciata: sulle fibre più interne rispetto alla curvatura, dove la curvatura è più accentuata, si sviluppa un picco di tensione $tau > frac(T r, J)$, mentre sulle fibre esterne si raggiunge un valore inferiore $tau < frac(T r, J)$.],[#include "figs/molle/molle-fig08.typ"])

Scorporando i due contributi che compongono la tensione tangenziale massima nella molla, si ha:
- #strong[Effetto della curvatura:]
$ tau_(m a x, t o r s) = frac(4c - 1, 4c - 4) frac(F r, pi d^3 / 16) $
- #strong[Tensioni dovute al taglio:] l'azione tagliante sulla sezione circolare è proporzionale alla forza $F$ divisa per l'area $pi d^2 / 4$, corretta con un fattore $1.23$; esprimendo tale termine in funzione del parametro di progetto $c$, si ottiene il secondo addendo del coefficiente di Wahl:
$ tau_(m a x, t a g l i o) = 1.23 frac(F, pi d^2 / 4) = frac(0.615, c) frac(F r, pi d^3 / 16) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  rows:2,
  align: (left + horizon, center + horizon),[Sebbene l'approccio del coefficiente correttivo sembri analogo a quello del fattore di concentrazione delle tensioni $K_t = frac(sigma_(p e a k), sigma_(n o m i n a l))$ utilizzato per l'effetto di intaglio, i due fenomeni sono concettualmente e fisicamente molto diversi. Nell'effetto di intaglio la variazione brusca di sezione altera il gradiente in modo molto severo ma in una porzione di superficie estremamente localizzata e sottile, rendendo applicabili nei materiali duttili le considerazioni sulla plasticizzazione locale e sulla ridistribuzione delle tensioni (recovering).],[#include "figs/molle/molle-fig09.typ"],[ Nell'effetto di curvatura, invece, lo spostamento dell'asse neutro verso il raggio interno (ad esempio in una molla o in un gancio di un moschettone) altera la forma del gradiente su una porzione di sezione trasversale molto ampia e percentualmente dominante rispetto alla superficie resistente totale. Pertanto, la curvatura è molto dannosa, non consente di fare affidamento sulla ridistribuzione locale delle tensioni e l'intensificazione della tensione tangenziale va sempre inclusa nel calcolo.],[#include "figs/molle/molle-fig10.typ"])

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
#include "figs/molle/molle-fig11.typ"
])

=== Gioco residuo sotto carico massimo


#grid(
  columns: (1.4fr, 1fr),
  column-gutter: -2em,
  align: (left + horizon, center + horizon),[La lunghezza a pacco $L_b$ si ottiene quando, comprimendo la molla, tutte le spire vengono portate perfettamente a contatto l'una con l'altra. In questa condizione di impacchettamento si altera completamente il principio di funzionamento meccanico: le spire non lavorano più come barre di torsione sospese libere di ruotare elasticamente, ma diventano anelli adagiati uno sull'altro che trasmettono una pressione di contatto diretta, trasformando la molla in un blocco o tubetto rigido di metallo. ],[#include "figs/molle/molle-fig12.typ"
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
#include "figs/molle/molle-fig13.typ"
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
=== Acciaio per molle
#grid(
  columns: (1fr, 1.2fr),
  column-gutter: -0em,
  align: (left + horizon, center + horizon),[Gli acciai specifici per molle sono progettati dal punto di vista metallurgico per offrire non solo un'elevata resistenza meccanica, ma anche un campo di linearità elastica molto esteso. Confrontando la curva sforzo-deformazione ($sigma - epsilon.alt$) di un acciaio per molle con quella di un acciaio comune da costruzione, si osserva che nell'acciaio comune il limite elastico (pianerotto di snervamento) è basso rispetto a $R_m$, limitando l'energia assorbibile in campo elastico (area sottesa al tratto lineare).

],[
#include "figs/molle/molle-fig14.typ"])
 Nell'acciaio per molle, invece, $R_m$ è molto elevato e il limite elastico ($R_(p 0.2)$) è molto vicino a $R_m$; ciò garantisce un'area sottesa al tratto elastico lineare decisamente maggiore e spiega perché l'allungamento percentuale a rottura $A_"%"$ risulti relativamente contenuto rispetto agli acciai comuni.
=== Verifica a fatica: caratterizzazione sperimentale e diagramma di Haigh
La caratterizzazione a fatica viene condotta sperimentalmente direttamente sul componente (molla) tramite prove ripetute di trazione e compressione, oppure di sola compressione, a seconda dello standard e dell'applicazione. Le macchine di prova permettono anche di variare la frequenza di applicazione del carico per valutarne la sensibilità del materiale e lo smorzamento interno, nonché di riprodurre profili di missione complessi riconducibili a curve cumulate di carico (regola di Miner).

I metodi di verifica a fatica possono essere quelli generali. I risultati sperimentali consentono di costruire un #strong[diagramma di Haigh stimato] adimensionalizzato, ponendo in ascissa la tensione tangenziale media normalizzata $tau_m / R_m$ e in ordinata la tensione tangenziale alternata normalizzata $tau_a / R_m$. Le rette di Goodman corrispondenti a diversi livelli di vita ($10^3$, $10^4$, $10^5$ e $10^6$ cicli, quest'ultima rappresentativa della vita illimitata) mostrano i rispettivi limiti sull'asse delle ordinate:
- per $10^6$ cicli: $tau_a / R_m = 0.29$, coerentemente con la relazione tra limite di fatica in torsione alternata e in flessione rotante ($tau_(D-1) tilde.eq 0.58 sigma_(D-1)$, con $sigma_(D-1) tilde.eq 0.5 R_m$, da cui $tau_(D-1) tilde.eq 0.29 R_m$);
- per numeri di cicli inferiori ($10^5$, $10^4$, $10^3$), ci si trova nella zona a termine della curva di Wöhler, per cui i rapporti sull'asse delle ordinate salgono rispettivamente a $0.39$, $0.54$ e $0.72$.

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: -3em,
  align: (left + horizon, center + horizon),[Contrariamente al criterio di Sines (secondo cui in presenza di sole tensioni tangenziali non vi sarebbe dipendenza della resistenza a fatica dalla tensione media), nelle molle si osserva sperimentalmente una marcata dipendenza da $tau_m$: tutte le rette scendono verso l'asse delle ascisse intersecandolo al valore $tau_m / R_m = 0.8$ (dove il fattore $0.8$ anziché $1$ tiene conto di un coefficiente di sicurezza/incertezza su $R_m$). Nel diagramma è inoltre tracciata la retta centrale di parità ($tau_a / R_m = tau_m / R_m$, corrispondente al carico pulsante dallo zero).],[#include "figs/molle/molle-fig15.typ"])

=== Processo ed effetto della pallinatura (#emph[shot peening])
La resistenza a fatica dipende in modo decisivo dal processo di produzione e dai trattamenti superficiali. La #strong[pallinatura] (#emph[shot peening]) consiste nel proiettare un getto calibrato di micropallini sulla superficie esterna del filo della molla già formata, tramite una o più giranti centrifughe in rotazione. Le molle avanzano su una guida spinte da appositi pulsori attraverso la zona investita dal flusso dei pallini.

L'impatto di ciascun pallino provoca una deformazione plastica localissima (microcratere) che genera un campo di #strong[tensioni residue di compressione] sulla superficie del filo. Poiché sulla sezione circolare del filo soggetto a torsione la tensione tangenziale è distribuita linearmente con massimo alla superficie esterna, le tensioni residue di compressione fanno sì che la sollecitazione applicata debba prima compensare tale stato residuo prima di raggiungere valori di trazione/taglio critici. Sul diagramma di resistenza a fatica a vita infinita ($tau_(m i n)$ in ascissa, $tau_(m a x)$ in ordinata, per oltre $2 dot.op 10^6$ cicli), l'effetto della pallinatura si manifesta in un netto innalzamento del limite di resistenza.


=== Verifica a fatica secondo le normative DIN
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

$ F_("crit") = k L_0 K_L $],[#include "figs/molle/molle-fig16.typ"])



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


$ f = f_1 = f_2, quad quad F = F_1 + F_2 $

$ F = k f = (k_1 + k_2) f arrow.r.double k = k_1 + k_2 $ In generale, per $N$ molle in parallelo:

$ k = sum_(i=1)^N k_i $],[
#include "figs/molle/molle-fig17.typ"

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

$ frac(1, k) = sum_(i=1)^N frac(1, k_i), quad quad delta = sum_(i=1)^N delta_i $],[
#include "figs/molle/molle-fig18.typ"
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
#include "figs/molle/molle-fig19.typ"
// FASE 3 - VERIFICA: arc (anchor: "origin", start < stop) per raccordi spire, occhiello (r1=0.66, r3=0.92, punta 168..348deg) e gomito (r2=0.35, r4=0.61); line per tratti rettilinei, quote e assi. Nessuna parola vietata.
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
#include "figs/molle/molle-fig20.typ"
// FASE 3 - VERIFICA: arc (anchor: "origin", start < stop) per i raccordi delle spire, line per bordi, assi, inviluppo e frecce. Nessuna parola vietata.
])
== Molle a lamina
=== Generalità, applicazioni e confronto con le molle a elica cilindrica
#grid(
  columns: (1.2fr, 1.2fr),
  column-gutter: 1em,
  align: (center + horizon, left + horizon),
  [
    Le molle a lamina rappresentano una tipologia di elementi elastici largamente impiegata nella pratica ingegneristica in alternativa alle molle a elica cilindrica. Esse ricorrono a lamine che possono essere impacchettate tra loro e fissate alle estremità in modo da inflettersi sotto l'azione di carichi dinamici. Nella configurazione a balestra, costituita da più foglie collegate mediante dispositivi di serraggio e fissaggio, trovano frequente impiego alla base dei convogli merci ferroviari, nei veicoli industriali pesanti e negli autocarri.
Rispetto alle sospensioni tradizionali basate su molle a elica cilindrica e ammortizzatori, le molle a lamina e a balestra presentano specifici vantaggi e svantaggi progettuali.
  ],
  [#include "figs/molle/molle-fig21.typ"]
)


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
#pagebreak()
=== Fattore di utilizzazione
#align(center, grid(
  columns: 2,
  column-gutter: 0.6cm,
  align: center + horizon,
  include "figs/molle/molle-fig22.typ",
  include "figs/molle/molle-fig23.typ"
))

Per valutare la capacità di conversione dell'energia meccanica applicata in energia di deformazione elastica si introduce il #strong[fattore di utilizzazione] della molla, definito come il rapporto tra l'energia immagazzinabile dalla molla e l'energia immagazzinabile da una barra in trazione dello stesso volume soggetta alla medesima tensione massima che si verifica nella molla. Esso costituisce un indice che esprime il livello di utilizzo del materiale.

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

=== Molla a lamina con pianta rettangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 0em,
  align: (left + horizon, center + horizon),[Considerando una trave a mensola incastrata a un'estremità e caricata all'estremo libero da una forza verticale $F$, avente pianta rettangolare di larghezza costante $b_0$, spessore $h$ e lunghezza $l$, la tensione normale varia lungo l'asse della trave in funzione dell'ascissa $x$ misurata dall'estremità libera. Poiché il momento flettente $M_f = F x$ ha andamento triangolare (nullo all'estremo libero e massimo all'incastro), la tensione normale alla coordinata $x$ e la rotazione elementare $d alpha$ risultano:],[#include "figs/molle/molle-fig24.typ"
])



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

=== Solidi di uniforme resistenza: alternative progettuali
Per imporre che la tensione massima sia costante lungo tutta la trave:

$ sigma = frac(F x, b h^2 / 6) = "cost" $

si presentano due possibili alternative geometriche (non potendo agire né sulla forza $F$ né sulla lunghezza $l$):
1. #strong[Variare lo spessore (molla parabolica)] mantenendo costante la larghezza della pianta, imponendo una legge quadratica dello spessore rispetto all'ascissa:
   $h^2 = x$ \
   In tal modo la vista laterale assume un profilo parabolico crescente dall'estremità libera verso l'incastro.
2. #strong[Variare la larghezza in pianta (pianta triangolare)] mantenendo costante lo spessore:
   $b = x$\

La seconda alternativa è solitamente preferita dal punto di vista tecnologico poiché comporta minori problemi costruttivi rispetto alla realizzazione accurata di uno spessore variabile con profilo parabolico.

=== Molla a lamina con pianta triangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Adottando una pianta triangolare di larghezza $b_0$ all'incastro, larghezza nulla al punto di applicazione della forza $F$ e spessore costante $h$, la larghezza locale $b$ varia linearmente con l'ascissa $x$ misurata dalla punta:

$ b = b_0 frac(x, l) $
Sostituendo l'espressione della larghezza nella formula della tensione massima si verifica che la tensione rimane rigorosamente costante in ogni sezione lungo tutta la lunghezza della molla:],[#include "figs/molle/molle-fig25.typ"
])


$ sigma = frac(F x, b h^2 / 6) = frac(F x, b_0 frac(x, l) h^2 / 6) = frac(F l, b_0 h^2 / 6) = "cost" = sigma_(m a x) $

Il momento d'inerzia locale varia lungo l'asse secondo $I(x) = frac(1, 12) dot.op b(x) dot.op h^3$. Calcolando la curvatura $frac(1, r)$ tramite l'equazione della linea elastica, si osserva che essa è costante su tutta la lunghezza:

$ frac(1, r) = frac(M, E I) = frac(F x, E dot.op b_0 frac(x, l) h^3 / 12) = frac(12 dot.op F dot.op l, E dot.op b_0 dot.op h^3) = "cost" $

Poiché il raggio di curvatura $r$ è costante, la deformata della lamina a pianta triangolare è esattamente un #strong[arco di circonferenza]. La freccia all'estremità libera $f$ e la rigidezza $k$ (espresse in funzione del momento d'inerzia all'incastro $I$) valgono:

$ f = frac(F l^3, 2 E I) $

$ k = frac(2 E I, l^3), quad I = frac(b_0 h^3, 12) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + top),[Recuperando la perdita dovuta alla variazione del momento flettente lungo la linea d'asse, la molla utilizza meglio il materiale e il fattore di utilizzazione ritorna pari a:

$ U = frac(1, 3) $ Dal punto di vista pratico e costruttivo, tuttavia, un'estremità appuntita non permette un'agevole applicazione del carico né un comodo collegamento con gli altri organi della macchina.
],[#include "figs/molle/molle-fig26.typ"])
Lo stesso problema emerge ad esempio nei recuperatori di energia piezoelettrici (lamine in alluminio incastrate rivestite con strati piezoceramici dotati di elettrodi per convertire l'energia delle vibrazioni in energia elettrica), dove una punta stretta impedisce di sfruttare fino in fondo la superficie utile del materiale piezoceramico. Per questo motivo si adotta una soluzione di compromesso: la #strong[molla con pianta trapezia].
#pagebreak()

=== Molla a lamina con pianta trapezia
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + top, center + horizon),
  [
    Nella molla a pianta trapezia la larghezza varia linearmente da una base maggiore $b_0$ all'incastro fino a una base minore finita $b_0'$ all'estremità libera, così da consentire l'applicazione del carico o del vincolo.

La rastremazione della trave è caratterizzata dal fattore adimensionale $alpha$:
$ alpha = frac(3, 2 + b_0' / b_0) = frac(3 b_0, 2 b_0 + b_0') $
  ],
  [#include "figs/molle/molle-fig27.typ"]
)




La tensione nella generica sezione, la tensione massima all'incastro, la freccia $f$ e la rigidezza $k$ risultano:

$ sigma = frac(F x, b h^2 / 6), quad sigma_(m a x) = frac(F l, b_0 h^2 / 6) $

$ f = alpha frac(F l^3, 3 E I) $

$ k = frac(3 E I, alpha l^3), quad I = frac(b_0 h^3, 12) $

Il fattore di utilizzazione della molla a pianta trapezia è espresso da:

$ U = frac(2 alpha b_0, 9(b_0 + b_0')) $

Si osserva che al limite per $b_0' arrow.r 0$ (ritornando alla pianta triangolare) $alpha arrow.r 3/2$ e il fattore di utilizzazione tende a $1/3$; viceversa, al crescere di $b_0'$ verso $b_0$ ci si avvicina alla pianta rettangolare e il fattore di utilizzazione scende verso $1/9$.

=== Molla a balestra


#grid(
  columns: (1fr, 1fr),
  column-gutter: 0em,
  align: (left + top, center + bottom),[Per realizzare una molla completa avente punti di ancoraggio alle due estremità e punto di applicazione del carico nella sezione centrale (che per simmetria si comporta come un incastro per ciascuna delle due metà), occorrerebbe unire due molle a pianta trapezia per la base maggiore. Una foglia unica a doppio trapezio risulterebbe però di ingombro trasversale eccessivo per poter essere installata sotto il telaio di un veicolo. La #strong[molla a balestra] risolve tale problema riducendo l'ingombro trasversale: essa equivale all'unione di due molle a pianta trapezia unite per la base maggiore, ma sezionate longitudinalmente in listelle sovrapposte le une alle altre invece che affiancate sullo stesso piano.],[#include "figs/molle/molle-fig28.typ"
])

Le caratteristiche geometriche e costruttive principali della molla a balestra sono:
- Equivale all'unione di 2 molle a pianta trapezia unite per la base maggiore.
- È formata da #strong[foglie] sovrapposte di diversa lunghezza e uguale larghezza $b_0'$.
- Ogni foglia è l'unione di due mezze foglie longitudinali opposte rispetto alla mezzeria (tranne la lamina centrale).
- La prima foglia, di lunghezza maggiore $2 l$ e dotata in genere di occhielli alle estremità per l'ancoraggio al telaio, è detta #strong[foglia madre].
- Le foglie non sono incollate tra loro, bensì tenute insieme da fasce o cavallotti (ad esempio attacchi a U o fascette di serraggio) e da un perno di unione centrale; ciò consente alle foglie di flettersi e scorrere moderatamente le une rispetto alle altre.

Durante la flessione si verifica #strong[strisciamento tra lamina e lamina]; per ridurre le forze di attrito e la conseguente usura si fa uso di #strong[lubrificante a base di grafite].

=== Equivalenza tra molla a balestra e molla trapezia
Poiché per una molla a pianta triangolare la linea elastica appartiene a un arco di circonferenza, è ragionevole assumere che tutte le foglie della balestra, obbligate a mantenersi a contatto dai dispositivi di serraggio e quindi ad avere all'incirca la stessa linea elastica, lavorino in modo analogo a quando erano affiancate nella molla a pianta trapezia originale. Nell'ipotesi di attrito nullo tra le foglie e di carico e momento all'incastro ripartiti equamente tra le $n$ foglie, il momento totale all'incastro vale:

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
#pagebreak() 
=== Molla a balestra a profilo parabolico
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + top, center + horizon),[Come visto per il solido di uniforme resistenza, per ottenere $sigma_(m a x) = "cost"$ in ogni sezione si può scegliere tra variare la larghezza in pianta (molla a pianta triangolare, con $b = b_0 dot.op frac(x, l)$) oppure variare lo spessore mantenendo costante la larghezza $b$ (#strong[molla a profilo parabolico]):

$ h = sqrt(frac(x, L)) dot.op h_0 $

dove $h_0$ è lo spessore all'incastro (sezione centrale della balestra) e $L$ è la semilunghezza.],[#include "figs/molle/molle-fig29.typ"])

La soluzione a profilo parabolico permette di avere in ogni sezione trasversale la stessa tensione massima di flessione presente nella sezione centrale di incastro, ottimizzando l'impiego del materiale lungo la linea d'asse. Pur richiedendo processi tecnologici più complessi e precisi rispetto alla sagomatura in pianta per ottenere la variazione quadratica di spessore, trova effettiva applicazione pratica sia in configurazione #strong[monolama] (spessore decrescente dal centro verso gli occhielli) sia in configurazione #strong[bilama]. Oggi tale geometria risulta particolarmente agevole da realizzare mediante l'impiego di #strong[materiali compositi], nei quali il processo di stratificazione consente naturalmente di variare lo spessore secondo il profilo parabolico desiderato.
== Molle – Altre tipologie e assorbimento degli urti
=== Panoramica delle tipologie di molle
Nella pratica della costruzione degli elementi delle macchine si impiegano diverse architetture di molle oltre a quelle elicoidali tradizionali, tra cui molle elicoidali di compressione, di estensione, coniche, a serpentina, di torsione, a balestra (laminate), a disco o Belleville e molle ricavate di macchina.

=== Uso delle molle per l'assorbimento degli urti
#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + top, center + horizon),[Uno degli obiettivi fondamentali dell'impiego delle molle nelle macchine è l'assorbimento degli urti. In un primo caso si considera l'assorbimento dell'energia cinetica posseduta da un corpo in movimento di massa $m$ e velocità di traslazione (velocità d'impatto) $v$:

$ W_s = frac(1, 2) dot.op m dot.op v^2 $

Nella maggior parte delle applicazioni è necessario trasformare questa energia cinetica in energia di deformazione elastica e/o plastica ($W$) entro uno spazio relativamente contenuto, azzerando la velocità di spostamento del corpo e contenendolo all'interno di un volume definito. Il dimensionamento della molla si basa quindi sulla conversione dell'energia: note la massa da fermare e la velocità massima al momento dell'impatto, occorre tarare la forza massima rispetto alla freccia $f$ sviluppata dal sistema.

L'energia di deformazione è pari all'area sottesa dalla curva caratteristica forza–spostamento (o momento–rotazione):

$ W = integral F dot.op d f $

],[#include "figs/molle/molle-fig30.typ"])
#pagebreak()
Nel caso di comportamento elastico lineare, l'energia immagazzinata corrisponde all'area del triangolo sotteso dalla retta caratteristica e vale:

$ W = frac(1, 2) F f = frac(1, 2) k f^2 $

Più è grande l'area sottesa dalla curva forza–spostamento, più è elevata la capacità della molla di assorbire urti. Confrontando le aree, a parità di energia da contenere, è possibile individuare diverse soluzioni caratterizzate da differenti rapporti tra forza massima e freccia (ad esempio triangoli diversi aventi la stessa area).
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un secondo tipo di contenimento riguarda la caduta di un grave su una molla, in cui la sospensione deve assorbire l'impatto al suolo. In questo caso conviene valutare direttamente l'energia potenziale gravitazionale associata alla massa $m$ soggetta all'accelerazione di gravità $g$ (sia sulla Terra sia in ambienti spaziali con diversa costante gravitazionale) e uguagliarla all'energia immagazzinabile dalla molla. Il percorso totale del grave è dato dalla somma dell'altezza di caduta libera $h$ e della freccia $f$ sviluppata dalla molla fino all'arresto del moto ($v = 0$):],[#include "figs/molle/molle-fig31.typ"])
$ W_p = m dot.op g dot.op (h + f) = W = frac(1, 2) F dot.op f = frac(1, 2) k dot.op f^2 arrow.r.double f $

Non è necessario passare attraverso il calcolo della velocità d'impatto e dell'energia cinetica, poiché l'uguaglianza diretta tra energia potenziale gravitazionale ed energia di deformazione elastica consente di determinare la freccia $f$ e i requisiti di rigidezza $k$, esattamente come nel confronto per aree sulla caratteristica della molla. Nota la freccia, si calcola la forza corrispondente tramite la relazione lineare:

$ F = k dot.op f $
=== Molle Belleville (a disco conico, a tazza)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle a disco conico o a tazza, comunemente note come molle Belleville, sono costituite da un corpo troncoconico caratterizzato dal diametro esterno $D$, dal diametro interno $d$, dallo spessore $t$ e dall'altezza conica $h$. Caricate nella direzione dell'asse, esse subiscono una flessione della sezione trasversale.

],[#include "figs/molle/molle-fig32.typ"])
Come già accade per le molle ad elica troncoconica o conica, la geometria conferisce una curva caratteristica non perfettamente lineare: la rigidezza varia con lo spostamento, sebbene spesso venga assunta costante e pari al valore del primo tratto della curva caratteristica. Una singola molla Belleville è molto rigida ed è pertanto indicata quando occorre sviluppare una reazione particolarmente importante in uno spazio assiale molto limitato.
Per rendere più cedevole il sistema e modularne la rigidezza si possono praticare degli intagli radiali, riducendo così la capacità di contenimento trasversale del materiale e il richiamo elastico, oppure si possono disporre più molle in serie e/o in parallelo. #grid(
  columns: 2,
  gutter: 1em,
  [Nel caso di disposizione in parallelo (molle sovrapposte con le facce superiori a contatto nello stesso verso) o in serie (molle speculari rispetto al piano medio), la rigidezza totale risulta rispettivamente dalla somma delle rigidezze o dall'inverso della somma dei reciproci.],
  [#include "figs/molle/molle-fig33.typ"],
)

Le molle Belleville senza intagli trovano impiego come elementi singoli o impilati, mentre le configurazioni con intagli sono frequentemente usate per ottenere un effetto antisvitamento, antiscorrimento o di blocco della rotazione relativa tra elementi fissati tra loro, esercitando una reazione elastica su un componente sotto tiro.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Unendo più molle Belleville a pacchi o a colonne mediante un perno guida centrale è possibile ottenere le caratteristiche elastiche desiderate, combinando disposizioni in serie e in parallelo a seconda che le facce delle molle adiacenti siano a contatto nello stesso verso oppure speculari rispetto al piano medio.],[#include "figs/molle/molle-fig34.typ"])

=== Tensioni nelle molle Belleville e molle con intagli radiali
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il calcolo delle tensioni nelle molle a tazza è complesso e fa riferimento alla teoria dei gusci e dei solidi assialsimmetrici, anche se nella pratica si ricorre frequentemente a soluzioni numeriche, specialmente in presenza di intagli. La distribuzione delle tensioni nella sezione troncoconica resistente è fortemente non lineare. La tensione maggiormente sollecitante è la tensione circonferenziale ($sigma_c$), la cui espressione analitica è complessa e dipende dai diametri $D$ e $d$, dallo spessore $t$, dalla freccia $f$, dal modulo di Young $E$ e dal coefficiente di Poisson $nu$.

],[#include "figs/molle/molle-fig35.typ"])
 Isolando idealmente un settore della molla caratterizzato dai vertici $"I-II-III-IV"$ sulla sezione trasversale, il lato $"I-IV"$ risulta compresso con il valore massimo della tensione nel punto $I$, mentre dal punto $II$ al punto $"III"$ non si riscontra una sensibile variazione del valore della tensione di trazione. Sull'elemento infinitesimale agiscono forze circonferenziali di azione e reazione scambiate con la parte rimanente del solido.
#grid(
  columns: (1.4fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Praticando degli intagli radiali parziali sulla superficie troncoconica si riduce la capacità di cerchiamento e di contenimento laterale reciproco tra gli elementi del materiale. Poiché le tensioni circonferenziali sono quelle predominanti, tale alleggerimento fa sì che le porzioni sporgenti lavorino essenzialmente a flessione senza richiamo elastico circonferenziale, conferendo alla molla una maggiore elasticità e una curva caratteristica molto meno pronunciata. Nella curva caratteristica sperimentale riportata per una molla a tazza con intagli, si osserva che con un incremento moderato di forza si ottiene uno spostamento significativo: in particolare, al passaggio della freccia da $2 "mm"$ a $7,5 "mm"$, la forza subisce una variazione molto ridotta (mantenendosi prossima a $600 "N"$).],[#include "figs/molle/molle-fig36.typ"])

=== Molla per frizione
#grid(
  columns: (1.4fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Estremizzando il concetto degli intagli radiali si ottiene la molla per frizione (molla a diaframma), derivata dalla molla a tazza Belleville ma caratterizzata da intagli molto lunghi che si estendono fin quasi alla circonferenza esterna. In questo modo il tronco di cono non agisce più come un corpo unico con richiamo elastico circonferenziale, ma diventa un insieme di lamine incastrate a un'estremità che lavorano singolarmente ed essialmente a flessione.

],[
#include "figs/molle/molle-fig37.typ"])
La rigidezza risulta così molto inferiore e consente di ottenere un disinnesto rapido e agevole. Questa soluzione ha sostituito le molle elicoidali negli innesti a frizione degli autoveicoli, rendendo l'architettura più robusta e semplificando le operazioni di montaggio.
=== Molle a elica di torsione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (left + horizon, center + horizon),[Esistono molle, diffuse ad esempio nelle apparecchiature domestiche e negli elettrodomestici, che hanno una configurazione simile a quella delle molle ad elica cilindrica ma lavorano macroscopicamente a torsione per contenere l'angolo relativo $phi.alt$ tra due leve o perni di estremità caricati nel piano. È opportuno chiarire che, a livello locale nella sezione trasversale del filo, queste molle lavorano a #strong[flessione] e non a torsione (in modo analogo e duale alle molle elicoidali di trazione/compressione, che lavorano macroscopicamente a sforzo assiale ma localmente a torsione).

],[#include "figs/molle/molle-fig38.typ"])
Durante il montaggio tali molle possono inflettersi lateralmente; per limitare l'inflessione si inserisce un perno in corrispondenza dell'asse. Tra la molla e il perno deve tuttavia sussistere un gioco radiale, perché all'aumentare della forza applicata la molla si avvolge e il diametro interno diminuisce.

Trascurando gli attriti e la flessibilità dei bracci, per l'equilibrio il momento flettente agente sulla spira è determinato dalle forze applicate alle estremità e dai rispettivi bracci di leva $a$ e $b$:

$ M = F_1 dot.op a = F_2 dot.op b $

La tensione normale di flessione $sigma$ si calcola in modo proporzionale a quella di una trave diritta, introducendo un fattore di forma $K_i$ dipendente dalla curvatura (analogo al fattore di tipo Wahl usato per la torsione):

- Sezione circolare di diametro $d$:
  $ sigma = K_i frac(32 M, pi d^3) $
- Sezione rettangolare di lati $b$ e $h$:
  $ sigma = K_i frac(6 M, b h^2) $

L'angolo di rotazione relativo $phi.alt$ tra le due estremità è direttamente proporzionale al momento flettente e alla lunghezza complessiva $L$ del filo (pari al prodotto del numero di spire $n$ per la circonferenza della singola spira), e inversamente proporzionale alla rigidezza flessionale $E dot.op J$ della sezione trasversale:

$ phi.alt = frac(M, E dot.op J) dot.op L quad "con" quad L = n pi D $
=== Molle ad anelli a forza normale
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La molla ad anelli a forza normale è costituita da una serie di anelli interni e da una seconda serie avvolgente di anelli esterni accoppiati tra loro lungo superfici coniche. Gli anelli accoppiati sono di due tipi:
1. in un tipo la superficie interna è cilindrica e quella esterna consiste di due tronchi di cono;
2. nell'altro tipo la superficie esterna è cilindrica mentre quella interna è costituita da due tronchi di cono.],[#include "figs/molle/molle-fig39.typ"])

#grid(
  columns: 2,
  gutter: 1em,
  [Quando agisce una forza assiale di compressione $F$, lo scorrimento relativo tra gli anelli genera un effetto cuneo lungo la conicità delle superfici a contatto (analogo a quello dell'accoppiamento di un codolo troncoconico di un albero nel mozzo) e produce una forte pressione di contatto normale alla superficie. Per la particolare geometria, tale pressione dilata gli anelli esterni (azione cerchiante) e contrae quelli interni. All'aumentare dello spostamento relativo assiale, la pressione di contatto cresce sempre più; il piccolo spostamento assiale tra una coppia di anelli si somma per tutto il numero di anelli presenti, fornendo la freccia complessiva del pacco. Dal punto di vista strutturale, ciascun anello può essere analizzato mediante le formule dei solidi assialsimmetrici, essendo assimilabile a due tronchi di cono sovrapposti specularmente rispetto al piano medio; la tensione più importante che si sviluppa in tutti gli anelli è la tensione circonferenziale.],
  [#include "figs/molle/molle-fig40.typ"],
)
Durante lo strisciamento relativo tra le superfici a contatto si sviluppano anche importanti azioni di attrito, che uniscono all'accumulo elastico una significativa dissipazione di energia. Per questo motivo, una volta compressa lungo il tratto $O A$ del diagramma forza–spostamento, la molla non ritorna immediatamente nella posizione iniziale indeformata al diminuire della forza: i due anelli restano compatti finché la forza $F$ non scende al valore corrispondente al punto $B$ sul diagramma di scarico. Perché gli anelli possano effettivamente rilasciarsi e ritornare nella posizione indeformata al ridursi di $F$, è necessario che l'angolo di inclinazione delle superfici coniche $alpha$ sia maggiore dell'angolo di attrito $phi.alt$ (la cui tangente è pari al coefficiente di attrito tra le superfici):

$ alpha > phi.alt $

L'area del triangolo $O A B$ compresa tra la curva di carico e quella di scarico rappresenta il ciclo di isteresi della molla e corrisponde all'energia dissipata per attrito.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Grazie all'elevata capacità di dissipare energia, queste molle costituiscono ottimi respingenti e vengono impiegate in presenza di forze impulsive, come nei respingenti delle vetture ferroviarie o nel supporto di grossi ganci soggetti a carico e scarico di pesi elevati. Sotto carico gli anelli tendono ad avvicinarsi fino a poter eventualmente arrivare all'impacchettamento. ],[#include "figs/molle/molle-fig41.typ"])
Oltre alla configurazione cilindrica (con anelli aventi tutti lo stesso diametro), esiste una configurazione a doppia conicità in cui gli anelli hanno dimensioni e diametri decrescenti uno rispetto all'altro, sfruttando così un ulteriore principio di conicità oltre a quello delle superfici laterali di contatto.