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
#image("trave curva a.png", width:70%)
],[  Di conseguenza, la distribuzione delle tensioni tangenziali lungo il diametro della sezione non è più lineare (rappresentata da una retta con valori simmetrici $tau = frac(T r, J)$ agli estremi), ma diventa non lineare, seguendo una legge di ordine superiore. Tale distribuzione risulta sbilanciata: sulle fibre più interne rispetto alla curvatura, dove la curvatura è più accentuata, si sviluppa un picco di tensione $tau > frac(T r, J)$, mentre sulle fibre esterne si raggiunge un valore inferiore $tau < frac(T r, J)$.],[#image("trave curva b.png", width:55%)])

Scorporando i due contributi che compongono la tensione tangenziale massima nella molla, si ha:
- #strong[Effetto della curvatura:]
$ tau_(m a x, t o r s) = frac(4c - 1, 4c - 4) frac(F r, pi d^3 / 16) $
- #strong[Tensioni dovute al taglio:] l'azione tagliante sulla sezione circolare è proporzionale alla forza $F$ divisa per l'area $pi d^2 / 4$, corretta con un fattore $1.23$; esprimendo tale termine in funzione del parametro di progetto $c$, si ottiene il secondo addendo del coefficiente di Wahl:
$ tau_(m a x, t a g l i o) = 1.23 frac(F, pi d^2 / 4) = frac(0.615, c) frac(F r, pi d^3 / 16) $

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 0em,
  rows:2,
  align: (left + horizon, center + horizon),[Sebbene l'approccio del coefficiente correttivo sembri analogo a quello del fattore di concentrazione delle tensioni $K_t = frac(sigma_(p e a k), sigma_(n o m i n a l))$ utilizzato per l'effetto di intaglio, i due fenomeni sono concettualmente e fisicamente molto diversi. Nell'effetto di intaglio la variazione brusca di sezione altera il gradiente in modo molto severo ma in una porzione di superficie estremamente localizzata e sottile, rendendo applicabili nei materiali duttili le considerazioni sulla plasticizzazione locale e sulla ridistribuzione delle tensioni (recovering).],[#image("effetto intaglio.png")],[ Nell'effetto di curvatura, invece, lo spostamento dell'asse neutro verso il raggio interno (ad esempio in una molla o in un gancio di un moschettone) altera la forma del gradiente su una porzione di sezione trasversale molto ampia e percentualmente dominante rispetto alla superficie resistente totale. Pertanto, la curvatura è molto dannosa, non consente di fare affidamento sulla ridistribuzione locale delle tensioni e l'intensificazione della tensione tangenziale va sempre inclusa nel calcolo.],[#image("effetto curvatura.png", width:75%)])

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
=== Caratteristiche metallurgiche dell'acciaio per molle
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Gli acciai impiegati per la realizzazione delle molle sono formulati a livello siderurgico e metallurgico per garantire sia un'elevatissima resistenza meccanica sia un campo di linearità elastica estremamente esteso. L'obiettivo funzionale della molla è infatti quello di immagazzinare energia elastica, la quale corrisponde geometricamente all'area del triangolo sotteso al tratto lineare elastico della curva tensione-deformazione ($sigma$-$epsilon.alt$).

Confrontando un comune acciaio da costruzione con un acciaio specifico per molle, si osserva che nell'acciaio comune il limite elastico (snervamento $R_(e H)$, caratterizzato da un evidente pianerottolo di snervamento, o $R_(p 0.2)$) è piuttosto basso rispetto al carico di rottura $R_m$ (punto a tangente orizzontale della curva); di conseguenza, l'energia elastica assorbibile in campo lineare (area rossa) è ridotta, mentre la curva si estende ampiamente fino al punto finale di decoesione frontale del provino, giustificando un allungamento percentuale a rottura elevato.

Nell'acciaio per molle, al contrario, la curva raggiunge un carico di rottura $R_m$ molto elevato (compreso tra $1500$ e $2400 "MPa"$ a seconda della composizione chimica e del diametro del filo, secondo la normativa di riferimento UNI-EN 10270-2 per filo di acciaio per molle meccaniche) e presenta un limite elastico $R_(p 0.2)$ molto prossimo a $R_m$. Questa vicinanza tra snervamento e rottura massimizza l'area sottesa al tratto elastico lineare (area verde), garantendo un'elevata capacità di assorbimento energetico, ma comporta una ridotta estensione plastica della curva prima della rottura finale, spiegando i modesti valori di allungamento percentuale a rottura (come i confronti tabulati di $R_m = 1200 "MPa"$ con $R_(p 0.2) = 1050 "MPa"$, $1300 "MPa"$ con $1050 "MPa"$, o $1400 "MPa"$ con $1250 "MPa"$). Esempi tipici di acciai per filo per molle sono le leghe $"VDSiCrV"$ e $"FDSiCrV"$; in particolare, l'aggiunta di silicio ($"Si"$) in lega ha la funzione di innalzare sia il limite elastico sia il carico di rottura $R_m$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[])

=== Verifica a fatica: sperimentazione e diagramma di Haigh
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La caratterizzazione a fatica delle molle viene condotta mediante prove sperimentali direttamente sul componente reale, applicando cicli ripetuti di trazione-compressione o di sola compressione a seconda dello standard e dell'applicazione (ad esempio in ambito automobilistico e dei veicoli terrestri). Le prove vengono eseguite tramite attuatori a diverse frequenze di carico per indagare la sensibilità del materiale alla frequenza e gli effetti dello smorzamento interno. È inoltre possibile sottoporre la molla a blocchi di cicli a frequenze e ampiezze variabili ($sigma_1, sigma_2, sigma_3, dots.h$) rappresentativi di uno specifico profilo di missione, traducibile in una curva cumulata di carico ed elaborabile mediante la regola di Miner.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografia di un banco di prova sperimentale a fatica (laboratorio dell'Università di Padova) in cui una molla ad elica cilindrica rossa è montata orizzontalmente e sollecitata assialmente da un attuatore con cella di carico]])

Dalla sperimentazione si ricava un diagramma di Haigh stimato e adimensionalizzato rispetto al carico unitario di rottura statico $R_m$, nel quale si riporta in ordinata il rapporto relativo alla tensione tangenziale alternata ($tau_a / R_m$) e in ascissa il rapporto relativo alla tensione tangenziale media ($tau_m / R_m$), essendo il momento torcente l'azione interna dominante sul filo. Il diagramma presenta un fascio di rette di Goodman corrispondenti a diversi livelli di durata: la retta rossa per vita illimitata a $10^6$ cicli (che racchiude la regione di sicurezza più ristretta) e le rette per vita a termine a $10^5$, $10^4$ e $10^3$ cicli, a cui corrispondono aree di sicurezza progressivamente più ampie. La retta tratteggiata inclinata a $45 degree$ uscente dall'origine rappresenta la condizione di parità $tau_a = tau_m$.

I valori numerici delle intercette sull'asse delle ordinate ($0.29$ per $10^6$ cicli, $0.39$ per $10^5$ cicli, $0.54$ per $10^4$ cicli e $0.72$ per $10^3$ cicli) trovano giustificazione teorica nelle relazioni di scala della fatica: sapendo che il limite di fatica in torsione alternata $tau_(D - 1)$ è legato al limite di fatica in flessione rotante $sigma_(D - 1)$ da un fattore di scala pari a circa $0.58$, e che secondo il criterio di Bach vale $sigma_(D - 1) tilde.eq 0.5 R_m$, si ottiene:

$ tau_(D - 1) tilde.eq 0.58 sigma_(D - 1) tilde.eq 0.58 dot.op (0.5 R_m) = 0.29 R_m $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per durate inferiori ($10^5, 10^4, 10^3$ cicli) ci si sposta a sinistra nella zona 2 della curva di Wöhler (il tratto fortemente pendente che risale verso $0.9 R_m$), per cui la resistenza a fatica locale cresce rispetto a $tau_(D - 1)$, generando le intercette superiori ($0.39$, $0.54$ e $0.72$).

È importante notare come, contrariamente alla teoria di Sines (secondo cui una componente media puramente tangenziale $tau_m$ non dovrebbe alterare la resistenza a fatica), il comportamento sperimentale delle molle mostri una marcata dipendenza dalla tensione tangenziale media: tutte le rette sono fortemente inclinate e convergono sull'asse delle ascisse in corrispondenza del valore $tau_m / R_m = 0.8$ (valore ridotto rispetto all'unità per via di un coefficiente di sicurezza introdotto dalla normativa sulla determinazione di $R_m$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Grafico intitolato "Verifica a fatica - Diagramma di Haigh stimato". Asse orizzontale: $tau_m / R_m$ (da 0 a 1); asse verticale: $tau_a / R_m$ (da 0 a 0.8). Dal punto (0.8, 0) sull'asse orizzontale partono quattro rette che intersecano l'asse verticale rispettivamente a 0.29 (1E+06 cicli, linea rossa), 0.39 (1E+05 cicli, linea verde), 0.54 (1E+04 cicli, linea viola) e 0.72 (1E+03 cicli, linea blu), con prolungamento tratteggiato nel tratto superiore alla bisettrice uscente dall'origine. In basso a sinistra è presente la nota: $tau_(D - 1) tilde.eq 0.58 sigma_(D - 1) (sigma_(D - 1) tilde.eq 0.5 R_m) = 0.29 dots.h$]])

=== Processo di pallinatura ed effetto sulla resistenza a fatica
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per incrementare la resistenza a fatica delle molle si ricorre al processo meccanico di pallinatura (#emph[shot peening]) sulla superficie esterna del filo della molla già formata. Nelle applicazioni industriali (ad esempio mediante macchine pallinatrici a turbine in linea tipo PNE-2M della Pangborn Group, capaci di trattare $900 "pezzi/h"$ con $2$ turbine), le molle vengono adagiate su una guida e spinte da appositi pulsori ad attraversare un flusso calibrato di micro-pallini proiettati ad alta velocità da giranti centrifughe in rotazione.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Slide "Processo di pallinatura" contenente due immagini relative alla macchina pallinatrice a turbine tipo PNE-2M della Pangborn Group: in alto una fotografia interna del tunnel di lavorazione con una molla elicoidale su guida; in basso uno schema tridimensionale con la guida inferiore marrone su cui scorrono tre molle elicoidali investite da due getti conici verdi di pallini lanciati dall'alto da due giranti centrifughe rosse]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Illustrazione schematica intitolato "Shot peening" che mostra una molla ad elica cilindrica investita lateralmente da un getto denso di micro-pallini sferici]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'impatto di ciascun pallino provoca una debole indentazione locale sulla superficie del filo, creando un micro-cratere circondato da una zona deformata plasticamente in cui si instaura uno stato di tensione residua di compressione. Poiché in esercizio la sezione circolare del filo è soggetta a torsione (con un gradiente lineare di tensione tangenziale che raggiunge il valore massimo lungo tutto il bordo circonferenziale esterno), la presenza di tensioni residue di compressione fa sì che la sollecitazione esterna debba prima compensare ("recuperare") lo stato compressivo locale prima di poter sollecitare effettivamente a trazione gli strati superficiali.

L'effetto benefico di questo trattamento è evidente osservando il diagramma di fatica (curva #emph[master] o diagramma di tipo Smith) che riporta in ascissa la tensione minima $tau_("min")$ e in ordinata la tensione massima $tau_("max")$: in questo piano la bisettrice del primo quadrante (linea di carico statico) rappresenta l'asse delle tensioni medie $tau_m$ del diagramma di Haigh, mentre la direzione ortogonale a $45 degree$ rappresenta l'asse delle tensioni alternate $tau_a$. Considerando una condizione di vita infinita (oltre $2 dot.op 10^6$ cicli), la retta limite di Goodman per una molla non pallinata parte da un valore di $510 "MPa"$ sull'asse verticale e converge al punto $(862, 862) "MPa"$; a seguito della pallinatura, la retta limite si innalza sensibilmente partendo da $689 "MPa"$ fino a $(965, 965) "MPa"$, arretrando di fatto il punto di lavoro efficace e ampliando il margine di sicurezza del componente.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Grafico cartesiano intitolato "Effetto della pallinatura". Asse orizzontale: $tau_("min")$ (MPa) da 0 a 1000; asse verticale: $tau_("max")$ (MPa) da 0 a 1000. È tracciata la bisettrice uscente dall'origine indicata come "(Linea di carico statico)". Sopra di essa sono tracciate due spezzate: la curva inferiore "Vita infinita senza pallinatura" parte da 510 MPa sull'asse verticale e arriva al punto (862, 862) sulla bisettrice; la curva superiore "Vita infinita con pallinatura" parte da 689 MPa sull'asse verticale e arriva al punto (965, 965) sulla bisettrice]])

=== Verifica a fatica secondo la normativa tedesca DIN
La normativa tedesca affronta la verifica a fatica in modo analogo al caso statico, sostituendo però ai valori puntuali gli intervalli di escursione nel ciclo (indicati con $Delta$, differenza tra valore massimo e valore minimo), e distinguendo nuovamente tra molle formate a freddo e molle formate a caldo.

Per le #strong[molle formate a freddo] (norma DIN 17223), la disuguaglianza di verifica è:

$ Delta tau_("nom") = lambda' Delta F frac(8 D, pi d^3) lt.eq Delta tau_("amm") $

dove $Delta F = F_("max") - F_("min")$ è l'intervallo di forza applicata e $lambda'$ è il coefficiente di Wahl. L'intervallo di tensione tangenziale ammissibile $Delta tau_("amm")$ viene costruito analiticamente mediante la formula:

$ Delta tau_("amm") = b_d Delta tau_0 - b_tau tau_("min") $

in cui:
- $Delta tau_0$ è il valore limite di riferimento di escursione della tensione tangenziale, tabulato per classe di materiale e condizione superficiale (pallinato o non pallinato);
- $b_d$ è il coefficiente correttivo tabulato che declina l'effetto scala in funzione del diametro del filo $d$;
- $b_tau$ è il coefficiente correttivo tabulato che tiene conto dell'effetto di #emph[bias] legato al livello della tensione minima;
- $tau_("min")$ è la tensione tangenziale minima del ciclo, calcolata come:

$ tau_("min") = lambda''' frac(8 F_("min") D, pi d^3), quad "con " lambda''' = 1 + frac(0.5, c) $

dove $lambda'''$ è un coefficiente di Wahl modificato specifico di questa normativa, che introduce la sola correzione dovuta agli effetti del taglio per valutare l'effetto di #emph[bias] sulla tensione minima.

I parametri tabulati dalla norma DIN 17223 per le tre classi di materiali — #strong[(1)] Acciai non legati per alte sollecitazioni, #strong[(2)] Acciai per molle bonificati, #strong[(3)] Acciai per molle da valvola — sono riportati nella seguente tabella:

// NOTA: usato il simbolo div di sym per \div
#table(
  columns: 7,
  align: center,
  [Parametro / $d " [mm]"$], [(1) Non pallinato], [(1) Pallinato], [(2) Non pallinato], [(2) Pallinato], [(3) Non pallinato], [(3) Pallinato],
  [$Delta tau_0 " [MPa]"$], [$390$], [$490$], [$315$], [$410$], [$450$], [$570$],
  [$b_tau$], [$0.22$], [$0.20$], [$0.20$], [$0.18$], [$0.27$], [$0.26$],
  [#strong[$d " [mm]"$]], [#strong[$b_d$ (1)]], [#strong[$b_d$ (1)]], [#strong[$b_d$ (2)]], [#strong[$b_d$ (2)]], [#strong[$b_d$ (3)]], [#strong[$b_d$ (3)]],
  [$1 div 5$], [$1$], [$1$], [$1$], [$1$], [$1$], [$1$],
  [$6$], [$0.95$], [$0.95$], [$1$], [$1$], [$1$], [$1$],
  [$7$], [$0.91$], [$0.91$], [$0.97$], [$0.97$], [$0.97$], [$0.97$],
  [$8$], [$0.88$], [$0.88$], [$0.92$], [$0.92$], [$-$], [$-$],
  [$10$], [$0.83$], [$0.83$], [$0.89$], [$0.89$], [$-$], [$-$],
  [$12$], [$0.78$], [$0.78$], [$0.89$], [$0.89$], [$-$], [$-$],
  [$14$], [$0.75$], [$0.75$], [$0.89$], [$0.89$], [$-$], [$-$],
  [$17$], [$0.69$], [$0.69$], [$-$], [$-$], [$-$], [$-$],
)

Per le #strong[molle formate a caldo] (norma DIN 17221), l'equazione di verifica mantiene la medesima struttura:

$ Delta tau_("nom") = lambda' Delta F frac(8 D, pi d^3) lt.eq Delta tau_("amm") $

con $Delta F = F_("max") - F_("min")$ e $lambda'$ coefficiente di Wahl. In questo caso la normativa fornisce direttamente in tabella il valore limite $Delta tau_("amm")$ in funzione del diametro del filo $d$ e della finitura/trattamento superficiale — #strong[(1)] Acciaio laminato, #strong[(2)] Acciaio rettificato, #strong[(3)] Acciaio rettificato e pallinato — sotto l'ipotesi di #strong[fatica all'origine] ($F_("min") = 0$, ovvero molla che parte da una condizione di quiete a tensione nulla, viene compressa fino a una tensione massima e ritorna a zero). Qualora la molla sia impiegata in sistemi di attuazione in cui subisce sollecitazioni alternate di estensione e compressione ($tau_m = 0$, corrispondente all'asse delle ordinate nel diagramma di Haigh), l'utilizzo dei valori tabulati per fatica all'origine ($tau_m > 0$) risulta comunque accettabile e cautelativo, poiché rappresenta una condizione di lavoro più critica rispetto al ciclo puramente alternato.

#table(
  columns: 4,
  align: center,
  [$d " [mm]"$], [$Delta tau_("amm") " [MPa]"$ (1)], [$Delta tau_("amm") " [MPa]"$ (2)], [$Delta tau_("amm") " [MPa]"$ (3)],
  [$10$], [$120$], [$320$], [$380$],
  [$20$], [$110$], [$290$], [$345$],
  [$30$], [$100$], [$260$], [$310$],
  [$40$], [$90$], [$230$], [$275$],
  [$50$], [$80$], [$200$], [$240$],
)

=== Fenomeni secondari: ingobbamento e sfarfallamento
Oltre alle verifiche di resistenza del filo, nella progettazione delle molle ad elica cilindrica occorre considerare due fenomeni di instabilità elastica e dinamica che riguardano la molla nel suo insieme.

Il primo fenomeno è l'#strong[ingobbamento] (#emph[buckling]), del tutto analogo all'instabilità elastica per carico di punta nelle travi snelle compresse. Quando una molla di compressione non è guidata lateralmente e presenta una lunghezza libera $L_0$ elevata rispetto al diametro medio dell'elica $D$, l'applicazione di un carico assiale insistente esalta eventuali piccole eccentricità geometriche o costruttive; pur continuando il filo a lavorare localmente a torsione, la molla nel suo complesso subisce un effetto di momento flettente macroscopico che la porta a inflettersi lateralmente, piegandosi in due e rischiando di fuoriuscire dalla propria sede. Il carico critico di compressione $F_("crit")$ che innesca l'instabilità vale:

$ F_("crit") = k L_0 K_L $

dove $k$ è la rigidezza caratteristica della molla, $L_0$ è la lunghezza a riposo della molla scarica e $K_L$ è un coefficiente adimensionale dipendente dal rapporto di snellezza $L_0 / D$ e dalle condizioni di vincolo delle spire terminali (estremi incernierati, liberi di ruotare rispetto agli appoggi, oppure estremi incastrati, saldamente ancorati alla macchina senza possibilità di rotazione):

#table(
  columns: 4,
  align: center,
  [$L_0 / D$ (Estremi incernierati)], [$K_L$ (Estremi incernierati)], [$L_0 / D$ (Estremi incastrati)], [$K_L$ (Estremi incastrati)],
  [$1$], [$0.72$], [$1$], [$0.72$],
  [$2$], [$0.63$], [$2$], [$0.71$],
  [$3$], [$0.38$], [$3$], [$0.68$],
  [$4$], [$0.20$], [$4$], [$0.63$],
  [$5$], [$0.11$], [$5$], [$0.53$],
  [$6$], [$0.07$], [$6$], [$0.38$],
  [$7$], [$0.05$], [$7$], [$0.26$],
  [$8$], [$0.04$], [$8$], [$0.19$],
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per contrastare l'ingobbamento si alloggia solitamente la molla all'interno di sedi dotate di pareti laterali di guida, le quali offrono una reazione di contenimento che innalza il limite di criticità del sistema (fermo restando che, per carichi estremi, l'instabilità può comunque manifestarsi localmente tra le singole spire).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografia di una molla ad elica cilindrica di compressione non guidata sottoposta a un carico assiale verticale (indicato da una freccia bianca rivolta verso il basso), che mostra una marcata deformazione laterale di instabilità (ingobbamento)]])

Il secondo fenomeno è lo #strong[sfarfallamento], ovvero la risonanza meccanica delle spire che si verifica quando una molla è sottoposta a carichi dinamici alternati aventi frequenza prossima alla frequenza propria della molla stessa. In condizioni di risonanza, secondo i modi propri di vibrazione della struttura, alcune spire possono apparire quasi ferme (nodi) mentre altre oscillano con ampiezze che crescono in modo incontrollato (apparendo visivamente sfocate), sovrasollecitando la sezione trasversale fino alla distruzione del componente. Per evitare lo sfarfallamento, si prescrive che la prima frequenza propria della molla ($lambda_(1, "molla")$) sia almeno $20$ volte superiore alla frequenza della sollecitazione dinamica applicata ($lambda_("carico")$):

$ lambda_(1, "molla") gt.eq 20 dot.op lambda_("carico") $

dove la prima frequenza propria della molla è espressa dalla relazione:

$ lambda_(1, "molla") = frac(d, D l_("eq")) sqrt(frac(G, 8 rho)), quad "con " l_("eq") = pi D i $

essendo $d$ il diametro del filo, $D$ il diametro dell'elica, $l_("eq")$ la lunghezza equivalente del filo, $i$ il numero di spire efficaci, $G$ il modulo di elasticità tangenziale e $rho$ la densità del materiale.

=== Procedura di calcolo iterativo per le molle ad elica
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il dimensionamento e la verifica delle molle ad elica cilindrica (il cui filo è sollecitato a torsione) seguono una procedura di calcolo iterativa: a partire dai vincoli di progetto si effettua una scelta di tentativo, si eseguono le verifiche strutturali e funzionali e, in caso di esito negativo, si apportano modifiche ai parametri geometrici o al materiale ripetendo il ciclo fino a convergenza.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di flusso logico del calcolo iterativo: blocco "scelta di tentativo" -> freccia verso il blocco romboidale "verifica" -> se "SI" termina; se "NO" va al blocco "modifiche" e ritorna alla freccia di ingresso di "verifica"]])

I dati generalmente noti a priori come vincoli di progetto sono:
- L'#strong[ingombro massimo] laterale disponibile ($tilde.eq D$, diametro dell'elica), imposto dai limiti volumetrici della sede in cui la molla deve essere alloggiata.
- La #strong[freccia massima] $f_("max")$ e il #strong[carico massimo] $F_("max")$ (oppure la rigidezza caratteristica $k$ e uno degli altri due parametri), legati tra loro dalla relazione:

$ k = frac(Delta F, Delta f) = frac(F_("max"), f_("max")) $

- Talvolta è assegnata anche la #strong[lunghezza sotto carico massimo] $L_(F "max")$, necessaria per impedire sia l'impacchettamento della molla sia l'interferenza meccanica o l'urto tra gli organi movimentati alle estremità della molla o tra il contorno degli elementi mobili e il terreno/telaio fisso.

La sequenza operativa della procedura di calcolo si articola nei seguenti passaggi:
1. #strong[Scelta del diametro del filo di tentativo e del materiale:] si seleziona un diametro unificato del filo nell'intervallo consigliato $d = D / 7 div D / 12$ (in modo che la sezione trasversale sia ben proporzionata rispetto al diametro dell'elica), si sceglie il materiale ($R_m, R_(p 0.2)$) e si definisce il processo di formatura della molla (a freddo o a caldo).
2. #strong[Calcolo del coefficiente di avvolgimento:] si determina l'indice della molla $c = D / d$.
3. #strong[Calcolo della massima tensione statica:] utilizzando il coefficiente correttivo di Wahl $lambda'$, si calcola la tensione tangenziale massima:

$ tau_("max") = lambda' frac(8 F_("max") D, pi d^3) = lambda' frac(8 F_("max") c, pi d^2) $

4. #strong[Verifica statica:] si confronta $tau_("max")$ con la tensione ammissibile $tau_("amm")$ (utilizzando la formula per molla formata a freddo oppure a caldo). Se la verifica non è soddisfatta, si modifica in prima battuta il diametro $d$ (aumentando la sezione resistente del filo) oppure, qualora le dimensioni escano dai limiti costruttivi, si sceglie un materiale più resistente, ritornando al punto 2.
5. #strong[Verifica a fatica (se necessaria):] si esegue la verifica a fatica secondo la normativa di riferimento; in caso di mancata verifica, si modifica nuovamente il diametro $d$ o il materiale e si ritorna al punto 2.
6. #strong[Calcolo del numero di spire efficaci:] superate le verifiche di resistenza, si ricava il numero di spire attive $i$:

$ i = frac(G d, 8 c^3 k) $

7. #strong[Calcolo della lunghezza a pacco:] si determina la lunghezza di impacchettamento $L_b$ mediante le tabelle costruttive in funzione della configurazione delle spire terminali.
8. #strong[Calcolo della lunghezza sotto carico massimo:] si impone che la lunghezza sotto il carico massimo $L_(F "max")$ garantisca un adeguato gioco residuo $g_("res")$ tra le spire (generalmente assunto pari a $d / 4$ o fissato da specifica):

$ L_(F "max") gt.eq L_b + g_("res") i $

9. #strong[Calcolo della lunghezza libera:] si determina la lunghezza effettiva della molla a riposo (scarica) sommando alla lunghezza sotto carico massimo la freccia massima:

$ L_0 = L_(F "max") + f_("max") $

10. #strong[Eventuale verifica a sfarfallamento:] in presenza di carichi dinamici, si verifica che la frequenza propria della molla sia almeno $20$ volte superiore alla frequenza della sollecitazione (o alla prima risonanza del sistema massa-molla, legata a $sqrt(k / m)$), intervenendo eventualmente sulla rigidezza $k$.
11. #strong[Eventuale verifica a ingobbamento:] se la molla risulta particolarmente snella ($L_0$ elevata rispetto a $D$), si calcola il carico critico $F_("crit")$ e si verifica che risulti sempre superiore alla forza massima di esercizio ($F_("max") < F_("crit")$).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un esempio applicativo classico di questi componenti in ambito automobilistico è la sospensione MacPherson, nella quale la molla ad elica cilindrica è avvolta coassialmente attorno all'ammortizzatore ed è interposta tra la connessione superiore al telaio e il braccio inferiore collegato al mozzo ruota.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Slide "Esempio di utilizzo di molla a elica - Sospensione automobilistica con molla elicoidale" contenente tre illustrazioni: a sinistra uno "Schema di applicazione" con ruota, asse e gruppo molla-ammortizzatore; al centro e a destra lo schema dettagliato di una "Sospensione MacPherson" con indicazione di: connessione al telaio, ammortizzatore, molla a elica, cerniere rispetto al telaio e connessione al mozzo ruota]])

=== Complessi di molle: configurazioni in parallelo e in serie
Nelle applicazioni ingegneristiche si ricorre frequentemente a sistemi composti da più molle che lavorano simultaneamente in parallelo oppure in serie. Per determinare la rigidezza equivalente del complesso occorre individuare la grandezza cinematica o statica comune alle singole molle.

In un complesso di #strong[molle in parallelo] (realizzato ad esempio mediante due molle concentriche, poste l'una dentro l'altra e caricate da un unico piattello rigido superiore), tutte le molle subiscono il #strong[medesimo spostamento (freccia)], mentre la forza totale applicata si ripartisce tra di esse:

$ f = f_1 = f_2, quad F = F_1 + F_2 $

Ricordando la legge elastica $F = k f$, la forza complessiva risulta:

$ F = (k_1 + k_2) f arrow.r.double k = k_1 + k_2 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Estendendo il risultato a un sistema generico di $N$ molle in parallelo, la rigidezza complessiva è pari alla somma delle rigidezze delle singole molle:

$ k = sum_(i=1)^N k_i $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema meccanico di due molle elicoidali concentriche in parallelo ("molla 1" esterna e "molla 2" interna), poggiate su una base fissa inferiore e compresse superiormente da un unico piattello orizzontale su cui agisce la forza verticale F con spostamento verticale f]])

In un complesso di #strong[molle in serie] (realizzato disponendo le molle in sequenza lungo il medesimo asse, separate da un piattello intermedio di interfaccia), tutte le molle sopportano il #strong[medesimo carico (forza)], mentre la freccia totale del sistema è data dalla somma delle frecce parziali:

$ F = F_1 = F_2, quad f = f_1 + f_2 $

Esprimendo ciascuna freccia come rapporto tra forza e rigidezza, si ottiene:

$ f = frac(F, k) = frac(F_1, k_1) + frac(F_2, k_2) = F (frac(1, k_1) + frac(1, k_2)) arrow.r.double frac(1, k) = frac(1, k_1) + frac(1, k_2) = delta $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[dove il reciproco della rigidezza $delta = 1 / k$ prende il nome di #strong[deformabilità] (o cedevolezza) della molla. In generale, per $N$ molle disposte in serie, il reciproco della rigidezza equivalente è pari alla somma dei reciproci delle singole rigidezze, ovvero la deformabilità totale è la somma delle deformabilità parziali:

$ frac(1, k) = sum_(i=1)^N frac(1, k_i), quad delta = sum_(i=1)^N delta_i $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema meccanico di due molle elicoidali sovrapposte assialmente in serie ("molla 1" superiore e "molla 2" inferiore), separate da un piattello intermedio e compresse superiormente da un piattello su cui agisce la forza verticale F con spostamento verticale complessivo f]])

Confrontando questi risultati con la teoria delle reti elettriche, si instaura una diretta #strong[analogia elettromeccanica] tra la resistenza elettrica $R$ e la #strong[deformabilità meccanica] $delta = 1 / k$ (mentre la rigidezza $k$ presenta un comportamento duale rispetto alla resistenza):
- #strong[Collegamento in serie:] nelle molle in serie si sommano le deformabilità ($delta = sum_(i=1)^N delta_i$, ossia $frac(1, k) = sum_(i=1)^N frac(1, k_i)$), esattamente come nelle resistenze in serie si sommano le singole resistenze ($R = sum_(i=1)^N R_i$).
- #strong[Collegamento in parallelo:] nelle molle in parallelo si sommano i reciproci delle deformabilità ($frac(1, delta) = sum_(i=1)^N frac(1, delta_i)$, ossia $k = sum_(i=1)^N k_i$), esattamente come nelle resistenze in parallelo si sommano i reciproci delle resistenze ($frac(1, R) = sum_(i=1)^N frac(1, R_i)$).

=== Molle a elica cilindrica in trazione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nelle molle ad elica cilindrica progettate per lavorare a trazione, le spire terminali vengono ripiegate (ruotate di $90 degree$ rispetto alla giacitura delle spire ordinarie) per formare gli anelli o ganci di collegamento attraverso cui viene applicato il carico esterno. Proprio l'anello terminale costituisce l'elemento strutturalmente più critico dell'intero componente: la rottura in esercizio si verifica infatti tipicamente alle estremità a causa del complesso stato tensionale e dei severi effetti di intaglio generati dai piccoli raggi di curvatura utilizzati per sagomare il gancio (che richiedono, per una trattazione analitica rigorosa, l'impiego della teoria della trave curva).

Nello specifico, poiché la forza di trazione $F$ agisce lungo l'asse centrale del cilindro dell'elica, la sezione maggiormente sollecitata del gancio è la sezione $"A-A"$ situata alla massima distanza dall'asse di carico: su tale sezione agiscono contemporaneamente uno sforzo normale di trazione e un elevato momento flettente (prodotto dalla forza $F$ moltiplicata per il braccio rispetto al baricentro della sezione stessa), componente flettente che invece risulta trascurabile nelle spire ordinarie della molla. Una seconda sezione critica da controllare nei riguardi della curvatura di raccordo è la sezione $"B-B"$ alla radice della piegatura dell'anello.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Disegno tecnico quotato in due viste ortogonali dell'estremità a gancio di una molla a elica cilindrica di trazione (diametro filo d, diametro elica D) sottoposta alla forza assiale F, affiancato dalla fotografia di una molla di trazione reale con spire a contatto. Nella vista frontale del gancio sono indicati il raggio medio $r_1$, il raggio interno $r_3$ e la sezione orizzontale critica A-A posta sul fianco dell'anello a distanza D/2 dall'asse; nella vista laterale piegata sono indicati il raggio medio $r_2$, il raggio interno $r_4$ e la sezione critica B-B nella curva di raccordo tra l'ultima spira e il gancio]])

Dal punto di vista costruttivo e funzionale, le molle di trazione vengono avvolte con le spire a contatto diretto tra loro e precaricate già durante la fabbricazione; di conseguenza, esse richiedono l'applicazione di un "tiro" iniziale (forza di precarico $F_0$) prima che le spire inizino a distaccarsi e a produrre una deformazione elastica misurabile. La forza di precarico $F_0$ viene determinata imponendo una tensione tangenziale iniziale di precarico $tau_i$ pari a:

$ tau_i = (0.4 div 0.8) dot.op frac(d, D) dot.op R_m $

Ricordando la relazione generale di torsione $tau_("max") = frac(8 F c, pi d^2)$ (da cui $F = frac(pi d^2, 8 c) tau_("max")$), la forza di precarico iniziale vale:

$ F_0 = frac(pi dot.op d^2, 8 c) tau_i = frac(pi dot.op d^3, 8 D) tau_i $

La lunghezza a riposo della molla $L_0$, misurata all'interno degli occhielli terminali (indicando con $D_i$ il diametro interno dell'elica), è espressa da:

$ L_0 = (i + 1) d + 2 dot.op 0.8 dot.op D_i $

Pertanto, la forza totale $F$ necessaria in esercizio per ottenere una determinata freccia $f$ è data dalla somma dell'aliquota elastica lineare e del precarico iniziale $F_0$:

$ F = frac(G dot.op d dot.op f, 8 dot.op c^3 dot.op i) + F_0 $

== Molle a passo variabile e molle coniche
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Qualora l'applicazione richieda una caratteristica elastica forza-spostamento #strong[non lineare], si ricorre all'impiego di molle a passo variabile oppure di molle ad elica coniche (aventi geometria tronco-conica, largamente diffuse anche in piccoli dispositivi di uso comune come i contatti dei vani portapile).

Nelle molle coniche il diametro dell'elica decresce progressivamente da un'estremità all'altra. Quando viene applicata una forza assiale di compressione, iniziano a deformarsi rapidamente le spire di diametro maggiore, le quali presentano una rigidezza inferiore (sono più cedevoli poiché caratterizzate da un rapporto $c = D / d$ più alto). A mano a mano che il carico aumenta e le spire più larghe arrivano a fine corsa o si impacchettano cessando di contribuire alla deformazione, entrano progressivamente in azione le spire di diametro più piccolo, che risultano molto più rigide.

Di conseguenza, il legame tra forza e freccia non è più rettilineo ma segue una curva irrigidente (#emph[hardening]): la molla oppone una reazione modesta per piccoli spostamenti, ma sviluppa una forza di reazione sempre più intensa al crescere dell'insistenza del carico. Inoltre, la configurazione tronco-conica offre un'eccellente stabilità geometrica che previene efficacemente il fenomeno dell'ingobbamento (#emph[buckling]), poiché l'ampia base d'appoggio stabilizza la struttura e, in caso di schiacciamento completo, le spire di diametro decrescente possono compenetrarsi disponendosi quasi come anelli concentrici sul piano di base.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Tre illustrazioni affiancate: a sinistra lo schema di una molla cilindrica a passo variabile sottoposta a compressione assiale; al centro lo schema di una molla tronco-conica sottoposta a compressione assiale; a destra la fotografia di una molla ad elica tronco-conica metallica]])

== Molle a lamina
=== Introduzione, caratteristiche generali e ambiti di applicazione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle a elica cilindrica non esauriscono tutte le applicazioni classiche della meccanica. Un'altra tipologia largamente impiegata è costituita dalle molle di flessione a lamina (e dalla loro configurazione impacchettata detta molla a balestra), le quali fanno ricorso a una o più lamine metalliche fissate agli estremi e sollecitate a flessione sotto l'azione dei carichi dinamici. Queste soluzioni trovano frequente impiego nei convogli ferroviari merci, nei veicoli industriali pesanti e negli autocarri.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografie di pacchi di molle a lamina impacchettate e applicazioni su assali automobilistici, carrelli ferroviari e sospensioni di veicoli industriali pesanti]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema tridimensionale di un assale con sospensione a balestra (Leaf Spring Suspension)]])

Dal confronto funzionale e costruttivo tra le molle a lamina (o a balestra) e i gruppi sospensione costituiti da molle a elica cilindrica e ammortizzatori emergono specifici vantaggi e svantaggi:

1. #strong[Vantaggi delle molle a lamina]: presentano una geometria semplice e bassi costi di produzione. La configurazione più elementare è la molla monolama (#emph[mono leaf spring]), detta anche molla parabolica, costituita da una singola lamina che si rastrema dallo spessore centrale verso le estremità per distribuire correttamente il carico verticale. Nelle configurazioni multilamina, grazie all'elevato numero di strati metallici uniti in una struttura compatta, le balestre forniscono un notevole supporto strutturale tra ruote, assali e telaio (#emph[chassis]), riuscendo a sopportare carichi verticali molto elevati nel settore dei veicoli industriali pesanti. Inoltre, la molla a lamina consente di distribuire il carico verticale su una regione ampia del telaio anziché concentrarlo in un singolo punto di sospensione, evitando forze concentrate eccessive.
2. #strong[Svantaggi delle molle a lamina]: offrono scarse possibilità di regolazione dell'assetto della sospensione, aspetto invece fondamentale nelle applicazioni automobilistiche ad alte prestazioni (dove si preferiscono molle elicoidali e ammortizzatori). Poiché le estremità della lamina sono vincolate direttamente al telaio, vi è poco margine per accorciare o estendere le foglie e si può intervenire unicamente sulle proprietà di resistenza e flessibilità del materiale. Inoltre, essendo le foglie strettamente serrate tra loro e imbullonate al telaio, esse consentono quasi esclusivamente il movimento verticale, a differenza del gruppo molla elicoidale-ammortizzatore che permette un campo di moto più ampio; questa rigidità cinematica può causare una forte usura sui giunti e sulle connessioni. Per tali ragioni, il loro impiego nelle autovetture è diminuito drasticamente, pur rimanendo lo standard nei veicoli pesanti.

In sintesi, le molle di flessione a lamina vengono adottate quando l'elemento elastico deve operare in spazi limitati in direzione verticale: mentre una molla a elica cilindrica soggetta a forze elevate richiederebbe uno sviluppo verticale e diametrale considerevole, la molla a lamina distribuisce l'ingombro in direzione longitudinale lungo l'asse del veicolo, richiedendo di contro punti di ancoraggio relativamente distanti tra loro. Gli schemi elementari di studio di questi componenti si basano sul modello della lamina incastrata sollecitata a flessione; a seconda della geometria adottata per la pianta (rettangolare, triangolare o trapezia), esse presentano diversi fattori di utilizzazione.

=== Fattore di utilizzazione
Per valutare l'efficienza con cui una molla converte il lavoro meccanico applicato in energia potenziale elastica, si introduce il #strong[fattore di utilizzazione] $U$. Esso è definito come il rapporto tra l'energia di deformazione elastica immagazzinabile dalla molla e l'energia immagazzinabile da una barra in trazione (o compressione) avente lo stesso volume e soggetta alla medesima tensione massima che si raggiunge nella molla. Il fattore di utilizzazione rappresenta dunque un indice che esprime il livello di sfruttamento del materiale.

In generale, l'energia di deformazione elastica $E$ immagazzinata in un solido di volume $V$ è data dall'integrale esteso all'intero volume della densità di energia locale del cubetto infinitesimo:

$ E = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per calcolare il fattore di utilizzazione di una trave a sezione rettangolare costante (di spessore $h$, larghezza $b$, lunghezza $l$ e volume $V = h dot.op b dot.op l$), si confrontano i due casi di sollecitazione elementare:],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schemi di confronto per il calcolo del fattore di utilizzazione. A sinistra: trave di lunghezza l e altezza h nel piano xy soggetta a trazione-compressione con distribuzione rettangolare uniforme di tensione normale costante. A destra: stessa trave soggetta a flessione uniforme tramite momenti M alle estremità, con distribuzione lineare a farfalla delle tensioni normali e valore massimo alle fibre estreme]])

1. #strong[Trazione o compressione semplice]: la trave è soggetta a sforzo normale costante. La distribuzione delle tensioni normali nella sezione trasversale è uniforme in tutti i punti e pari a $sigma = overline(sigma)$, cui corrisponde una deformazione anch'essa costante $epsilon.alt = overline(epsilon.alt) = frac(overline(sigma), E)$ (dove $E$ al denominatore indica il modulo di Young del materiale). L'energia di deformazione elastica a trazione $E^t$ risulta:
  $ E^t = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V = frac(1, 2) dot.op overline(sigma) dot.op overline(epsilon.alt) dot.op h dot.op b dot.op l = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op h dot.op b dot.op l $
2. #strong[Flessione uniforme]: la stessa trave è soggetta a un momento flettente $M$ costante lungo tutta la linea d'asse. Dalla teoria elementare della trave di De Saint-Venant, la distribuzione delle tensioni normali nella sezione trasversale è lineare, nulla sull'asse neutro ($y = 0$) e pari al valore massimo $overline(sigma)$ alle fibre estreme poste a quota $y = plus.minus h / 2$:
  $ sigma = frac(overline(sigma), h / 2) dot.op y $
  Sostituendo tale distribuzione nell'integrale dell'energia di deformazione elastica a flessione $E^f$ (con $epsilon.alt = sigma / E$ e $d V = d x dot.op d y dot.op d z$), si ottiene:
  $ E^f = integral_V frac(1, 2) dot.op sigma dot.op epsilon.alt dot.op d V = integral_V frac(1, 2) dot.op frac(sigma^2, E) dot.op d V = integral_V frac(1, 2) dot.op frac(1, E) (frac(overline(sigma), h / 2) dot.op y)^2 d x dot.op d y dot.op d z $
  $ E^f = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op frac(4, h^2) integral_(-h / 2)^(h / 2) y^2 d y = frac(1, 2) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op frac(4, h^2) dot.op 2 dot.op frac(1, 3) frac(h^3, 8) = frac(1, 6) dot.op frac(overline(sigma)^2, E) dot.op b dot.op l dot.op h $

Confrontando le due espressioni a parità di volume e di tensione massima $overline(sigma)$, si ricava il fattore di utilizzazione per la flessione uniforme:

$ U = frac(E^f, E^t) = frac(1, 3) $

Il passaggio dallo sforzo normale alla flessione uniforme comporta quindi la perdita di due terzi della capacità di immagazzinare energia elastica: mentre in trazione tutto il materiale è sollecitato uniformemente al livello massimo $overline(sigma)$, nella flessione solo le fibre più esterne raggiungono la tensione massima, mentre il resto della sezione lavora a livelli di tensione inferiori.

=== Molla a lamina con pianta rettangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Si analizza ora il comportamento di una molla a lamina reale schematizzata come una trave a pianta rettangolare (di larghezza costante $b_0$, spessore costante $h$ e lunghezza $l$), incastrata a un'estremità e caricata all'estremo libero da una forza verticale concentrata $F$. Si assume l'ascissa $x$ lungo la linea d'asse a partire dall'estremo libero ($x = 0$) fino alla sezione di incastro ($x = l$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema assonometrico di una molla a lamina incastrata con pianta rettangolare di larghezza costante b0, spessore h e lunghezza l, soggetta a una forza verticale F all'estremo libero, con coordinata x misurata dall'estremo libero ed elemento infinitesimo dx, affiancato da una fotografia del componente reale]])

A differenza del caso di flessione uniforme, la forza $F$ genera un momento flettente $M_f = F x$ variabile linearmente lungo l'asse della trave (diagramma triangolare, nullo all'estremo libero e massimo all'incastro). Di conseguenza, anche la tensione massima in ciascuna sezione trasversale varia con la coordinata $x$:

$ sigma = frac(M_f, w_f) = frac(F x, b_0 h^2 / 6) $

dove $w_f = frac(b_0 h^2, 6)$ è il modulo di resistenza a flessione della sezione rettangolare. Dalla teoria della linea elastica, la rotazione elementare $d alpha$ di un tronco infinitesimo $d x$ è data da:

$ d alpha = frac(M_f, E I) d x = frac(F x, E I) d x $

Integrando sull'intera lunghezza $l$ della lamina, si ottiene la freccia $f$ all'estremità libera:

$ f = integral_0^l x frac(F x, E I) d x = frac(F l^3, 3 E I) $

La rigidezza flessionale $k$ della lamina e il momento d'inerzia (del secondo ordine) $I$ della sezione trasversale valgono rispettivamente:

$ k = frac(3 E I, l^3), quad I = frac(b_0 h^3, 12) $

Valutando l'energia elastica immagazzinata sull'intero volume, il fattore di utilizzazione della molla a lamina con pianta rettangolare risulta:

$ U = frac(E^f, E^t) = frac(1, 9) $

Il valore $U = frac(1, 9) = frac(1, 3) dot.op frac(1, 3)$ è il risultato di due penalizzazioni simultanee rispetto alla barra in trazione pura: un primo fattore $1 / 3$ è dovuto alla distribuzione triangolare (lineare) delle tensioni all'interno della singola sezione trasversale per effetto della flessione; un secondo fattore $1 / 3$ è causato dal fatto che il momento flettente varia linearmente lungo l'asse $x$, per cui la tensione non raggiunge il valore massimo ammissibile in tutte le sezioni della trave, ma esclusivamente nella sezione di incastro ($x = l$):

$ sigma_(m a x) = frac(F l, b_0 h^2 / 6) $

Poiché la molla a pianta rettangolare sfrutta in modo molto ridotto il materiale ($U = 1 / 9$), conviene progettare una forma di molla #strong[di uniforme resistenza], ossia sagomata in modo tale che la tensione massima risulti costante lungo l'intera lunghezza $l$ della trave ($sigma_(m a x) = "cost"$).

Per imporre la condizione di uniforme resistenza $sigma = frac(F x, b h^2 / 6) = "cost"$ al variare di $x$ (non potendo modificare la forza $F$ né la lunghezza $l$), si può intervenire sulla geometria della sezione attraverso due alternative:

1. #strong[Variare lo spessore mantenendo costante la larghezza della pianta (molla parabolica)]: poiché lo spessore compare al quadrato al denominatore, per compensare la variazione lineare di $x$ al numeratore è necessario far variare lo spessore con legge parabolica crescente dall'estremo libero verso l'incastro ($h^2 = x$).
2. #strong[Variare la larghezza in pianta mantenendo costante lo spessore (pianta triangolare)]: poiché la larghezza $b$ compare linearmente al denominatore, è sufficiente farla variare linearmente con l'ascissa $x$ ($b = x$).

La seconda alternativa è tradizionalmente preferita perché presenta minori problemi costruttivi: realizzare una variazione lineare della larghezza in pianta è tecnologicamente più semplice ed economico rispetto a sagomare con precisione uno spessore variabile con legge parabolica.

=== Molla a lamina con pianta triangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Adottando una pianta triangolare di spessore costante $h$ e larghezza $b$ variabile linearmente da zero (all'estremo libero $x = 0$) fino al valore $b_0$ (all'incastro $x = l$), la legge di variazione della larghezza è:

$ b = b_0 frac(x, l) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema assonometrico di una molla a lamina incastrata con pianta triangolare di larghezza b0 all'incastro e vertice nell'estremo libero dove agisce la forza verticale F, spessore costante h, lunghezza l, ascissa x ed elemento infinitesimo dx]])

Sostituendo tale espressione nella relazione della tensione flessionale, la dipendenza dalla coordinata $x$ si elide e la tensione risulta costante e pari al valore massimo in tutte le sezioni trasversali della lamina:

$ sigma = frac(F x, b h^2 / 6) = frac(F x, b_0 frac(x, l) h^2 / 6) = frac(F l, b_0 h^2 / 6) = sigma_(m a x) = "cost" $

Per effetto della maggiore cedevolezza verso la punta, la freccia $f$ all'estremo libero, la rigidezza $k$ e il momento d'inerzia all'incastro $I$ assumono le seguenti espressioni (con il coefficiente $2$ in luogo di $3$):

$ f = frac(F l^3, 2 E I), quad k = frac(2 E I, l^3), quad I = frac(b_0 h^3, 12) $

Esaminando la linea elastica della lamina triangolare, il momento d'inerzia di una generica sezione a distanza $x$ dall'estremo libero vale:

$ I(x) = frac(1, 12) dot.op b(x) dot.op h^3 $

Sostituendo $I(x)$ nell'equazione della curvatura $frac(1, r)$ della trave inflessa, si ottiene:

$ frac(1, r) = frac(M, E I) = frac(F x, E dot.op b_0 frac(x, l) h^3 / 12) = frac(12 dot.op F dot.op l, E dot.op b_0 dot.op h^3) = "cost" $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Poiché il raggio di curvatura $r$ è costante lungo tutto lo sviluppo longitudinale, #strong[la deformata della molla a pianta triangolare è un arco di circonferenza].],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Disegno tecnico costruttivo in vista laterale e in pianta di una molla a lamina con pianta triangolare di lunghezza L, spessore h e larghezza variabile b(x) fino a b0 all'incastro, con freccia delta all'estremità libera dove è applicato il carico F tramite un attacco sagomato]])

Avendo eliminato il gradiente di tensione lungo l'asse longitudinale della trave, si recupera interamente il secondo fattore $1 / 3$ di penalizzazione e il #strong[fattore di utilizzazione] risale a:

$ U = frac(1, 3) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un esempio applicativo dell'ottimizzazione della pianta si riscontra nei convertitori di energia vibratoria (#emph[energy harvester] piezoelettrici), costituiti da una lamina metallica di alluminio incastrata su cui viene depositato uno strato piezoceramico: quando la struttura è soggetta a vibrazioni, la deformazione flessionale del substrato e del materiale piezoceramico genera per effetto piezoelettrico una distribuzione di carica elettrica prelevabile tramite elettrodi. In tali dispositivi, la lamina rettangolare offre prestazioni ridotte ($U = 1 / 9$), mentre quella triangolare ($U = 1 / 3$) non consente di estendere il materiale piezoceramico fino all'estremità appuntita. Anche nelle applicazioni meccaniche generali, infatti, l'estremità a punta della pianta triangolare non permette un'agevole applicazione del carico $F$ né la realizzazione pratica di un vincolo. Per superare questo limite costruttivo è necessario mantenere una larghezza finita all'estremità libera, passando così alla #strong[molla con pianta trapezia].],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografia di prototipi di lamine incastrate per energy harvester piezoelettrici con confronto visivo tra la configurazione a pianta rettangolare con U = 1/9 e le configurazioni rastremate a pianta triangolare/trapezia con U = 1/3]])

=== Molla a lamina con pianta trapezia
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella molla a lamina con pianta trapezia lo spessore $h$ è costante, mentre la larghezza varia linearmente dalla base maggiore $b_0$ (in corrispondenza dell'incastro) alla base minore $b_0'$ (in corrispondenza dell'estremo libero su cui agisce il carico $F$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema assonometrico di una molla a lamina incastrata con pianta trapezia avente base maggiore b0 all'incastro, base minore b0' all'estremo libero caricato dalla forza F, spessore costante h, lunghezza l, ascissa x ed elemento dx]])

Il comportamento meccanico ed elastico della lamina trapezia è descritto introducendo il fattore adimensionale di rastremazione $alpha$:

$ alpha = frac(3, 2 + b_0' / b_0) = frac(3 b_0, 2 b_0 + b_0') $

La tensione in una generica sezione $sigma$ (che tende a mantenersi prossima all'uniformità, pur non essendo rigorosamente costante) e la tensione massima all'incastro $sigma_(m a x)$ sono date da:

$ sigma = frac(F x, b h^2 / 6), quad sigma_(m a x) = frac(F l, b_0 h^2 / 6) $

La freccia all'estremo libero $f$, la rigidezza flessionale $k$ e il momento d'inerzia nella sezione d'incastro $I$ si esprimono correggendo le formule della trave rettangolare mediante il coefficiente $alpha$:

$ f = alpha frac(F l^3, 3 E I), quad k = frac(3 E I, alpha l^3), quad I = frac(b_0 h^3, 12) $

Il #strong[fattore di utilizzazione] della molla con pianta trapezia è pari a:

$ U = frac(2 alpha b_0, 9 (b_0 + b_0')) $

Quando la base minore $b_0' arrow.r 0$, ci si riconduce al caso limite della pianta triangolare ($alpha arrow.r 3 / 2$) e il fattore di utilizzazione tende al valore ottimale $U = 1 / 3$; viceversa, quanto più $b_0'$ si avvicina a $b_0$, tanto più il trapezio approssima la pianta rettangolare ($alpha arrow.r 1$) e il fattore di utilizzazione scende verso il valore $U = 1 / 9$.

=== Molla a balestra
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per realizzare una sospensione ancorata alle due estremità e collegata centralmente alla massa sospesa, la configurazione teorica ottimale sarebbe costituita dall'unione di #strong[due molle a pianta trapezia unite per la base maggiore] (una lamina unica a doppio trapezio simmetrica rispetto al piano mediano, di lunghezza complessiva $2 l$). Per simmetria, infatti, ciascuna delle due metà si comporta rispetto alla sezione centrale esattamente come una lamina incastrata. Tuttavia, un'unica foglia così larga comporterebbe un ingombro trasversale eccessivo e incompatibile con gli spazi disponibili sotto il telaio di un veicolo.

La #strong[molla a balestra] consente di ridurre l'ingombro trasversale mantenendo le proprietà della pianta trapezia: si immagina di sezionare idealmente la lamina a doppio trapezio in tante strisce longitudinali e di sovrapporle al listello rettangolare centrale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema geometrico di derivazione della molla a balestra: in alto, lamina piana a doppio trapezio di spessore h suddivisa in strisce longitudinali (a, b/2, c/2, d/2, e/2, f/2); in basso, sovrapposizione delle foglie di uguale larghezza b0' e lunghezza decrescente fino alla lunghezza massima 2l della foglia madre a]])

Dal punto di vista geometrico e costruttivo, la molla a balestra presenta le seguenti caratteristiche:

1. Equivale all'unione di due molle a pianta trapezia unite per la base maggiore.
2. È formata da #strong[foglie] sovrapposte di diversa lunghezza e uguale larghezza $b_0'$.
3. Ogni foglia è l'unione di due mezze foglie longitudinali (ciascuna di larghezza $b_0' / 2$ nello schema del doppio trapezio) opposte rispetto alla mezzeria.
4. La prima foglia (indicata con $a$, la più lunga e dotata di occhielli alle estremità per il vincolo al telaio) è detta #strong[foglia madre]. Nella realizzazione pratica, le estremità delle foglie non conservano gli spigoli vivi del taglio teorico ma vengono opportunamente smussate e rastremate.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Disegno tecnico complessivo di una molla a balestra: schema di taglio delle foglie dal profilo romboidale/trapezoidale, vista frontale della balestra montata su supporti di estremità con staffa centrale nella sezione A-A, freccia f e carico F, e dettagli costruttivi delle estremità delle lamine]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le diverse foglie non sono incollate tra loro, bensì impacchettate e strette al centro mediante una staffa metallica (attacco a U) o un perno di unione. In questo modo le lamine restano solidali nel pacco ma sono libere di inflettersi e di scorrere longitudinalmente l'una rispetto all'altra durante la deformazione elastica. Poiché durante la flessione si verifica uno #strong[strisciamento relativo tra lamina e lamina] sotto l'azione della pressione di contatto, si generano forze di attrito che vengono ridotte interponendo un #strong[lubrificante a base di grafite].],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Illustrazione di una molla a balestra inserita in una sospensione automobilistica con indicazione di ruota, asse, ammortizzatore e attacco a U, affiancata dal confronto visivo della balestra a riposo e sotto carico]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografie di molle a balestra reali installate su veicoli pesanti e dettagli dei pacchi multilamina con staffe di serraggio, perno centrale e singola foglia madre con occhielli]])

=== Equivalenza tra molla a balestra e molla trapezia
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La possibilità di dimensionare la molla a balestra utilizzando il modello analitico della molla a pianta trapezia si fonda sull'osservazione della deformata: poiché per la molla a pianta triangolare la linea elastica è un arco di circonferenza a curvatura costante, tutte le foglie ricavate per sezionamento e sovrapposte nella balestra, essendo obbligate a mantenersi a contatto e ad avere all'incirca la stessa linea elastica, lavorano nelle medesime condizioni in cui lavoravano quando erano affiancate nel piano.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di equivalenza tra metà molla a pianta trapezia (base maggiore b0, base minore b0', spessore h, forza F) e metà molla a balestra impacchettata all'incastro (foglie di larghezza b0/n, lunghezza L, forza F e momento d'incastro M)]])

Considerando per simmetria metà balestra di lunghezza $L$ (o $l$) costituita da $n$ foglie di spessore $h$ e larghezza $b_0' = b_0 / n$, sotto le ipotesi di #strong[attrito nullo] tra le foglie e di ripartizione uniforme del carico e del momento all'incastro tra le varie foglie, il momento flettente totale all'incastro vale:

$ M = F dot.op L $

Su ciascuna delle $n$ foglie all'incastro agisce una frazione del momento totale pari a:

$ M_("foglia") = frac(M, n) $

Il modulo di resistenza a flessione della singola foglia di larghezza $b_0 / n$ è $W_("foglia") = frac((b_0 / n) dot.op h^2, 6)$. Di conseguenza, la tensione massima di flessione in ogni foglia nella sezione di incastro risulta:

$ sigma = frac(M_("foglia"), W_("foglia")) = frac((M / n) dot.op 6, (b_0 / n) dot.op h^2) = frac(F dot.op L dot.op 6, b_0 dot.op h^2) $

Si dimostra così che la tensione in ogni foglia all'incastro è esattamente pari alla tensione che si sviluppa all'incastro nella molla a pianta trapezia equivalente.

Nella realtà fisica sussistono #strong[due sostanziali differenze] tra il comportamento della molla a balestra e quello della molla trapezia piana:

1. Nella balestra è presente #strong[attrito] dovuto allo scorrimento relativo tra le foglie, il quale dissipa parte dell'energia.
2. L'#strong[inflessione delle lamine della balestra non avviene nello stesso piano] dell'originale molla trapezia: essendo le foglie sovrapposte, esse giacciono su piani distinti e possiedono assi neutri non coincidenti tra loro.

L'esperienza garantisce tuttavia una buona attendibilità dei risultati forniti dal modello ideale. In prima approssimazione, pertanto, il calcolo della freccia, della tensione massima e della rigidezza di una balestra a $n$ foglie si effettua direttamente con le formule della molla a pianta trapezia equivalente:

$ alpha = frac(3, 2 + b_0' / b_0), quad frac(b_0', b_0) = frac(1, n) arrow.r b_0 = n b_0', quad I = frac(b_0 h^3, 12) $

$ f = alpha frac(F l^3, 3 E I), quad sigma_(m a x) = frac(F l, b_0 h^2 / 6), quad k = frac(3 E I, alpha l^3) $

L'errore introdotto da questa approssimazione è #strong[a favore di sicurezza], poiché trascurare l'attrito e lo sfalsamento dei piani porta a una leggera #strong[sovrastima sia della freccia sia della tensione], rendendo il dimensionamento conservativo sia nei riguardi della resistenza strutturale sia nella verifica degli ingombri cinematici.

=== La molla a balestra a profilo parabolico
Come alternativa alla variazione della larghezza in pianta, la condizione di uniforme resistenza ($sigma_(m a x) = "cost"$ in ogni sezione) può essere ottenuta mantenendo costante la larghezza della lamina e variandone lo spessore con legge parabolica. Si riassumono le due leggi geometriche che realizzano l'uniforme resistenza:

1. #strong[Molla a pianta triangolare] (spessore costante, larghezza variabile linearmente):
  $ b = b_0 dot.op frac(x, l) $
2. #strong[Molla a profilo parabolico] (larghezza costante, spessore variabile con la radice quadrata dell'ascissa $x$ rispetto allo spessore massimo $h_0$ all'incastro):
  $ h = sqrt(frac(x, L)) dot.op h_0 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Confronto assonometrico tra una molla a pianta triangolare (larghezza variabile b(x), spessore costante h, forza F) e una molla a profilo parabolico (larghezza costante b, spessore variabile h(x) su lunghezza L, forza F)]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Sebbene la realizzazione di un profilo parabolico richieda processi tecnologici più complessi e precisi per sagomare lo spessore (massimo nella zona centrale di incastro e progressivamente decrescente verso gli estremi), questa soluzione è effettivamente impiegata nella pratica industriale sia in configurazione #strong[monolama] sia in configurazione #strong[bilama] (due lamine paraboliche sovrapposte). Inoltre, l'introduzione dei #strong[materiali compositi] ha reso molto più agevole la fabbazione di balestre a profilo parabolico, in quanto il processo di stratificazione delle fibre si presta naturalmente a modulare lo spessore lungo l'asse della lamina.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Rappresentazione assonometrica di una molla a balestra a profilo parabolico monolama e di una molla a balestra a profilo parabolico bilama]])

#pagebreak()

=== Esercizi

=== Esercizio 1: Applicazione di molle a balestra a profilo parabolico su un veicolo «Ducato» medio
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Si consideri l'applicazione industriale di molle a balestra a profilo parabolico bilama installate sull'assale posteriore di un veicolo commerciale «Ducato» medio. Sul veicolo agisce un carico complessivo $C = 2 P$, ripartito in modo che sull'assale gravi un carico verticale $P$. Ciascuna delle due balestre posteriori sopporta un carico pari a $P / 2$, che si divide in due forze $F = P / 2$ applicate agli estremi della balestra secondo lo schema di carico del telaio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema dell'autotelaio di un veicolo Ducato medio con indicazione dei carichi C = 2P, carico sull'asse P e forze P/2 = F sulla balestra posteriore, affiancato dal disegno della balestra parabolica bilama e dalla tabella dei dati di funzionamento]])

#strong[Svolgimento:]
I valori operativi di carico e di inflessione elastica (freccia) rilevati per il veicolo «Ducato» medio nelle diverse condizioni di esercizio sono riportati di seguito:

- #strong[Condizione a vuoto]:
  - Carico sull'asse: $100 quad [k g]$
  - Carico su ogni balestra: $50 quad [k g]$
  - Freccia: $9 quad [m m]$
- #strong[Condizione di carico dinamico]:
  - Carico sull'asse: $2094 quad [k g]$
  - Carico su ogni balestra: $1047 quad [k g]$
  - Freccia: $178 quad [m m]$
- #strong[Condizione di carico statico massimo]:
  - Carico sull'asse: $2906 quad [k g]$
  - Carico su ogni balestra: $1453 quad [k g]$
  - Freccia: $247 quad [m m]$
  == Lezione 09_5: Molle – Altre tipologie e assorbimento degli urti

=== Teoria

=== Panoramica sulle ulteriori tipologie di molle
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Accanto alle configurazioni classiche, nella pratica costruttiva degli elementi delle macchine si impiegano diverse architetture alternative di molle, ciascuna caratterizzata da specifici modelli analitici di progettazione e comportamenti meccanici mirati a particolari esigenze di carico, ingombro e dissipazione.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Panoramica fotografica di diverse tipologie di molle: molla elicoidale di compressione (Helical Compression Spring), molla elicoidale di trazione (Helical Extension Spring), molla conica (Conical Spring), molla a serpentina (Serpentine Spring), molla di torsione (Torsion Spring), molla a balestra (Laminated or Leaf Spring), molla a tazza (Disc or Belleville Spring) e molla lavorata dal pieno (Machined Spring)]])

=== Uso delle molle per l'assorbimento degli urti
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Uno degli obiettivi fondamentali dell'impiego delle molle nelle macchine è l'assorbimento degli urti, ovvero il contenimento dell'energia cinetica posseduta da un corpo in movimento. Quando una massa $m$ dotata di una velocità di impatto $v$ (ad esempio in traslazione) urta contro un arresto elastico, si richiede generalmente di azzerare la velocità di spostamento del corpo all'interno di uno spazio relativamente contenuto e di un volume definito, trasformando l'energia cinetica posseduta dal corpo impattante ($W_s$) in energia di deformazione elastica e/o plastica ($W$) della molla.

L'energia cinetica del corpo al momento dell'impatto è proporzionale alla sua massa e al quadrato della velocità:

$ W_s = frac(1, 2) dot.op m dot.op v^2 $

L'energia di deformazione immagazzinata sull'intero volume della molla corrisponde geometricamente all'area sottesa dalla curva caratteristica della molla, ovvero dal diagramma che correla la forza applicata $F$ con la freccia $f$ (o, in modo analogo, il momento torcente o flettente con la rotazione che si manifesta nel sistema):

$ W = integral F dot.op d f $

Nel caso di comportamento elastico lineare della molla, l'energia di deformazione assume l'espressione:

$ W = frac(1, 2) F f = frac(1, 2) k f^2 $

Più è grande l'area sottesa dalla curva forza-spostamento, più è elevata la capacità del sistema di assorbire urti. In fase di dimensionamento, nota la massa da fermare e la velocità massima al momento dell'impatto, si effettua un bilancio energetico facendo corrispondere l'area totale sottesa dalla caratteristica elastica alla quantità di energia da contenere. A parità di energia assorbita (e quindi di area sottesa), è possibile individuare diverse soluzioni progettuali tarando differentemente il rapporto tra la forza massima sviluppata e la freccia massima, come evidenziato dal confronto tra triangoli di uguale area ma diversa pendenza nel diagramma lineare.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Due diagrammi forza-spostamento con la freccia f in ascissa e la forza F in ordinata. A sinistra è rappresentata una curva caratteristica generica non lineare con l'area sottesa tratteggiata verticalmente. A destra, per il caso elastico lineare, sono rappresentate due rette uscenti dall'origine con pendenze differenti che definiscono due triangoli (uno più alto e stretto con tratteggio verticale, uno più basso e largo con tratteggio orizzontale) aventi la medesima area sottesa]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un secondo caso di contenimento energetico riguarda la caduta di un grave su una molla, in cui la sospensione deve assorbire l'impatto arrestando la massa fino a velocità nulla ($v = 0$). In questa configurazione non è necessario passare esplicitamente attraverso il calcolo della velocità di impatto e dell'energia cinetica, poiché è possibile determinare direttamente l'energia potenziale gravitazionale $W_p$ associata al grave e uguagliarla all'energia di deformazione elastica lineare immagazzinabile dalla molla.

Detta $g$ l'accelerazione di gravità dell'ambiente operativo (terrestre o spaziale con diversa costante gravitazionale), il peso associato alla massa è pari a $m dot.op g$, mentre il percorso totale compiuto dal grave fino all'arresto risulta dalla somma dell'altezza di caduta libera $h$ e della freccia $f$ sviluppata dalla molla durante la compressione. Uguagliando l'energia potenziale gravitazionale all'energia di deformazione elastica si ottiene:

$ W_p = m dot.op g dot.op (h + f) = W = frac(1, 2) F dot.op f = frac(1, 2) k dot.op f^2 arrow.r.double f $

Dalla relazione energetica si ricavano i requisiti sulla rigidezza $k$ e sulla freccia $f$; una volta nota la freccia, si calcola la forza massima agente sulla molla tramite la relazione lineare:

$ F = k dot.op f $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema meccanico della caduta di un grave di massa m soggetto al campo di gravità g diretto verso il basso. La massa cade da un'altezza libera h rispetto all'estremità superiore di una molla scarica vincolata a terra e la comprime di una freccia ulteriore f fino a raggiungere la condizione di arresto con velocità v = 0]])

=== Molle Belleville (a disco conico o a tazza)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle Belleville, denominate anche molle a disco conico o a tazza, sono costituite da un corpo anulare troncoconico caricato assialmente. L'applicazione del carico lungo la direzione dell'asse determina una deformazione per flessione e rotazione della sezione trasversale nel piano meridiano.

A causa della geometria troncoconica (analogamente a quanto avviene nelle molle a elica conica o troncoconica), la curva caratteristica forza-spostamento non è lineare: la rigidezza della molla varia sensibilmente con lo spostamento, sebbene nelle applicazioni pratiche venga spesso assunta come approssimativamente costante e pari al valore corrispondente al primo tratto della curva caratteristica. Una singola molla a tazza presenta una rigidezza estremamente elevata, rendendola ideale nei casi in cui sia necessario fornire una reazione elastica molto intensa in uno spazio assiale fortemente limitato.

Per ridurre la rigidezza e rendere la molla più cedevole è possibile realizzare degli intagli radiali, oppure disporre più molle combinate in serie e/o in parallelo.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: A sinistra, sezione meridiana di una molla Belleville troncoconica quotata con diametro interno d, diametro esterno D, spessore della lamina t e altezza interna del tronco di cono h. Al centro, diagramma adimensionale con il rapporto freccia su altezza (delta/h) in ascissa (da 0 a 1) e il rapporto di forza $F / F_h$ in ordinata (da 0 a 1,4), riportante le curve caratteristiche per diversi rapporti geometrici (h/t = 1, h/t = 1,5, h/t = 2 e andamento lineare). In basso, confronto schematico in sezione tra due molle disposte in parallelo (sovrapposte con lo stesso orientamento di conicità) e due molle disposte in serie (affacciate in modo speculare rispetto al piano orizzontale medio)]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella configurazione liscia (priva di intagli), le molle a tazza trovano frequente impiego anche come elementi di sicurezza con funzione di antisvitamento, antiscorrimento o per impedire la rotazione relativa tra organi fissati tra loro, esercitando una reazione elastica assiale continua su collegamenti filettati sotto tiro.

Unendo più molle Belleville a pacchi (in parallelo, con le superfici coniche congruenti a contatto diretto) o a colonne (in serie, con gli elementi disposti in modo speculare rispetto al piano medio di contatto), oppure combinando serie di pacchi in parallelo, si ottengono le caratteristiche di rigidezza e corsa desiderate: nella disposizione in parallelo le rigidezze si sommano, mentre nella disposizione in serie il reciproco della rigidezza equivalente è dato dalla somma dei reciproci delle singole rigidezze.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Fotografie di molle a tazza lisce singole, impilate in colonna e applicate sotto la testa di un organo di collegamento filettato, accompagnate da due disegni tecnici in sezione di complessi di molle Belleville guidati su un perno centrale: a sinistra una colonna di singole molle disposte tutte in serie (orientamento alternato), a destra una colonna mista composta da pacchi di due molle in parallelo disposti in serie tra loro]])

==== Stato tensionale nelle molle Belleville
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'analisi analitica dello stato di sollecitazione nelle molle a tazza è complessa e si basa sulla teoria dei gusci (solidi assialsimmetrici). La distribuzione delle tensioni lungo la superficie troncoconica e all'interno della sezione resistente è fortemente non lineare.

Le sollecitazioni predominanti sono le tensioni circonferenziali $sigma_c$, le quali presentano espressioni analitiche articolate in funzione del diametro esterno $D$, del diametro interno $d$, dello spessore $t$, della freccia, del modulo di elasticità longitudinale (di Young) $E$ e del coefficiente di Poisson $nu$. Isolando idealmente un settore infinitesimo della molla, sulle facce meridiani si manifestano per il principio di azione e reazione le tensioni circonferenziali scambiate con la parte restante del solido:
1. Il lato interno della sezione trasversale, individuato dal segmento $I"-"I V$, è sollecitato a compressione ($sigma_c^-$), raggiungendo il valore massimo della tensione nel punto superiore interno $I$.
2. Il lato esterno della sezione, compreso tra i punti $I I$ e $I I I$, è sollecitato a trazione ($sigma_c^+$) e lungo tale tratto non si riscontra una sensibile variazione del valore della tensione di trazione.

Accanto alla formulazione analitica derivata dalla teoria dei gusci assialsimmetrici, nella pratica progettuale si ricorre frequentemente a modelli numerici, indispensabili soprattutto quando la geometria viene modificata mediante intagli.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: A sinistra, spaccato assonometrico di un settore di molla a tazza con la sezione trasversale rettangolare inclinata di vertici I (spigolo interno superiore), II (spigolo esterno superiore), III (spigolo esterno inferiore) e IV (spigolo interno inferiore). A destra, vista in pianta di un settore anulare con la rappresentazione vettoriale della distribuzione non lineare delle tensioni circonferenziali di compressione $sigma_c^-$ sul bordo interno e di trazione $sigma_c^+$ sul bordo esterno]])

==== Molla a tazza con intagli e molla per frizione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La realizzazione di intagli radiali parziali sul bordo interno della superficie troncoconica conferisce alla molla a tazza una maggiore elasticità, riducendone la rigidezza complessiva. Poiché le tensioni circonferenziali sono le principali responsabili della rigidezza del disco, l'asportazione di materiale tramite gli intagli interrompe la continuità anulare interna: le porzioni sporgenti non possono più esercitare un'interazione reciproca di cerchiamento (richiamo elastico laterale circonferenziale) e lavorano essenzialmente a flessione come mensole caricate all'estremità.

Di conseguenza, a parità di incremento di forza si ottiene un'inflessione decisamente maggiore e una pendenza della curva caratteristica molto meno pronunciata. Nella curva caratteristica sperimentale di una molla a tazza con intagli si osserva infatti una ridotta variazione della forza (compresa tra circa $600 "N"$ e $700 "N"$) mentre la freccia compie un'ampia escursione passando da $2 "mm"$ a $7.5 "mm"$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: A sinistra, vista laterale in sezione e vista in pianta di una molla a tazza dotata di intagli radiali interni sagomati. A destra, diagramma sperimentale forza-spostamento con la freccia in millimetri in ascissa (da 0 a 10 mm) e la forza in Newton in ordinata (da 0 a 800 N), mostrante un tratto quasi orizzontale a pendenza ridotta tra 2 mm e 7,5 mm di freccia]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Estremizzando il concetto della molla a tazza intagliata si ottiene la molla a diaframma per frizione, ampiamente impiegata in campo automobilistico negli innesti a frizione che operano per attrito. In questo componente i lunghi intagli radiali si estendono quasi fino alla corona circolare di base: il tronco di cono risulta così suddiviso in una serie di lamine radiali incastrate a un'estremità, il cui comportamento meccanico è analogo a quello delle molle a lamina (a balestra) sollecitate essenzialmente a flessione. L'assenza del richiamo elastico circonferenziale nella zona centrale abbatte la rigidezza, consentendo un disinnesto rapido e agevole; questa architettura ha sostituito le tradizionali molle elicoidali negli innesti a frizione degli autoveicoli, garantendo una maggiore robustezza costruttiva e una notevole semplificazione delle operazioni di montaggio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Disegno assonometrico di una molla a diaframma per frizione automobilistica, costituita da un anello periferico continuo da cui convergono verso il centro numerose lamine radiali separate da profondi intagli con fori di scarico alla base]])

=== Molle a elica di torsione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le molle a elica di torsione, largamente utilizzate nelle apparecchiature domestiche e negli elettrodomestici, presentano una conformazione geometrica simile alle molle a elica cilindrica, ma sono dotate di due bracci di estremità sollecitati da forze laterali giacenti nel piano trasversale all'asse dell'elica. Macroscopicamente la molla reagisce a una coppia torcente esterna contenendo la rotazione relativa $phi.alt$ di avvicinamento o allontanamento tra le due leve di estremità; tuttavia, a livello locale nella sezione trasversale del filo, la sollecitazione dominante non è la torsione (come accadeva nelle molle elicoidali di trazione e compressione), bensì la flessione.

Durante il funzionamento, le spire possono inflettersi lateralmente; per limitare tale inflessione in fase di montaggio si dispone un perno di guida in corrispondenza dell'asse longitudinale della molla. Tra il diametro interno della molla e il perno deve necessariamente sussistere un gioco radiale, poiché all'aumentare della forza applicata la molla tende a chiudersi e il suo diametro interno diminuisce.

Trascurando gli attriti e la flessibilità propria dei bracci di estremità, il momento flettente $M$ agente sulla sezione del filo si determina per equilibrio valutando le forze $F_1$ e $F_2$ applicate alle due estremità per i rispettivi bracci di leva $a$ e $b$:

$ M = F_1 dot.op a = F_2 dot.op b $

La tensione normale massima di flessione $sigma$ nella sezione trasversale del filo è proporzionale a quella di una trave rettilinea soggetta a flessione, corretta mediante un fattore di forma $K_i$ dipendente dalla curvatura della spira (concettualmente analogo al coefficiente di Wahl utilizzato a torsione):
- Per filo a sezione circolare di diametro $d$:

$ sigma = K_i frac(32 M, pi d^3) $

- Per filo a sezione rettangolare di larghezza assiale $b$ e spessore radiale $h$:

$ sigma = K_i frac(6 M, b h^2) $

L'angolo di rotazione elastica relativa $phi.alt$ tra le estremità è direttamente proporzionale al momento flettente $M$ e alla lunghezza sviluppata complessiva del filo $L$, ed è inversamente proporzionale alla rigidezza flessionale $E dot.op J$ della sezione trasversale (dove $E$ è il modulo di Young, $J$ il momento di inerzia flessionale della sezione, $n$ il numero di spire e $D$ il diametro medio dell'elica):

$ phi.alt = frac(M, E dot.op J) dot.op L quad "con" quad L = n pi D $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Vista laterale e vista frontale di una molla a elica cilindrica di torsione. Nella vista frontale sono indicati i due bracci rettilinei di estremità caricati rispettivamente dalla forza $F_1$ con braccio di leva a e dalla forza $F_2$ con braccio di leva b rispetto all'asse della molla, oltre all'angolo di deformazione relativa phi]])

=== Molla ad anelli a forza normale
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La molla ad anelli lavora in direzione dello sforzo normale assiale ed è costituita da una successione alternata di anelli interni e di anelli esterni avvolgenti, accoppiati tra loro lungo superfici coniche secondo due geometrie complementari:
1. Negli anelli interni la superficie interna è cilindrica, mentre la superficie esterna è costituita da due tronchi di cono contrapposti e speculari rispetto al piano medio.
2. Negli anelli esterni la superficie esterna è cilindrica, mentre la superficie interna è costituita da due tronchi di cono. Gli anelli interni ed esterni sono a reciproco contatto lungo le rispettive superfici coniche.

Quando il pacco di anelli è sottoposto a una forza assiale di compressione $F$, si genera un effetto cuneo (analogo a quello degli accoppiamenti troncoconici albero-mozzo) che produce una forte pressione di contatto distribuita normalmente alle superfici coniche di interfaccia. Per effetto di tale geometria, la pressione di contatto dilata radialmente gli anelli esterni (che esercitano un'azione cerchiante) e contrae radialmente gli anelli interni. Grazie a questa deformazione radiale, gli anelli scorrono assialmente gli uni sugli altri; i piccoli spostamenti assiali relativi si sommano lungo l'intero numero di elementi componendo lo spostamento totale assiale, ossia la freccia complessiva del pacco di anelli. Ciascun anello si comporta strutturalmente come un solido assialsimmetrico e la sollecitazione principale che si sviluppa in tutti gli elementi è la tensione circonferenziale (di trazione negli anelli esterni e di compressione in quelli interni).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Sezione longitudinale di una molla ad anelli sottoposta a una forza di compressione assiale F, affiancata da un dettaglio ingrandito dell'interfaccia di contatto biconica tra gli anelli esterni (a dorso cilindrico esterno) e gli anelli interni (a foro cilindrico interno)]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Oltre alla reazione puramente elastica legata alla deformazione circonferenziale degli anelli, lo strisciamento relativo lungo le superfici coniche genera importanti azioni tangenziali di attrito, introducendo un marcato fenomeno di dissipazione energetica (isteresi meccanica).

Analizzando il diagramma forza-spostamento della molla:
- Durante la fase di compressione, all'aumentare della forza $F$ gli anelli si avvicinano seguendo la retta di carico $O A$, con una pendenza superiore rispetto a quella che si avrebbe in assenza di attrito.
- Una volta raggiunta la massima compressione nel punto $A$, la molla non ritorna immediatamente verso la posizione iniziale indeformata non appena il carico inizia a diminuire: gli anelli rimangono compatti e bloccati fino a quando la forza esterna $F$ non viene ridotta al valore inferiore corrispondente al punto $B$, in corrispondenza del quale si inverte il moto relativo vincendo l'attrito in direzione opposta e percorrendo il tratto di scarico $B O$.

Affinché il sistema sia reversibile e gli anelli possano ritornare spontaneamente nella configurazione iniziale indeformata riducendo la forza $F$ (evitando l'impuntamento o autobloccaggio del cono), è necessario che il semiangolo di inclinazione delle superfici coniche $alpha$ sia strettamente maggiore dell'angolo di attrito $phi.alt$ (la cui tangente è pari al coefficiente di attrito tra le superfici a contatto):

$ alpha > phi.alt $

L'area racchiusa dal ciclo di isteresi triangolare $O A B$ nel diagramma forza-spostamento rappresenta l'energia meccanica dissipata per attrito durante il ciclo di carico e scarico. Grazie all'elevata capacità di assorbire e dissipare energia impulsiva, le molle ad anelli sono impiegate d'elezione nei respingenti delle vetture ferroviarie e nei supporti di grossi ganci soggetti a operazioni gravose di carico e scarico di pesi elevati.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: A sinistra, sezione longitudinale del pacco di anelli compresso dalla forza F; in alto al centro, dettaglio geometrico del contatto conico con indicazione del semiangolo di conicità alfa; al centro, diagramma forza-spostamento (forza F in ordinata, spostamento delta in ascissa) che mostra il ciclo di isteresi triangolare O-A-B-O (con area OAB tratteggiata verticalmente e punto C sull'asse delle ascisse in corrispondenza della freccia massima), confrontato con la retta tratteggiata intermedia relativa al comportamento ideale privo di attrito]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Dal punto di vista costruttivo, i respingenti ad anelli vengono realizzati secondo due varianti principali:
1. #strong[Configurazione cilindrica]: tutti gli anelli interni ed esterni hanno rispettivamente le medesime dimensioni diametrali lungo l'intero sviluppo assiale della colonna. Sotto carico gli anelli interni si avvicinano scorrendo dentro quelli esterni fino all'eventuale impacchettamento.
2. #strong[Configurazione a doppia conicità]: oltre alla conicità locale delle superfici di contatto di ciascun anello, i diametri medi degli anelli variano progressivamente da un'estremità all'altra della molla, conferendo all'intero pacco un profilo esterno troncoconico che rinforza ulteriormente il principio di conicità.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: In alto a sinistra, fotografia di una molla ad anelli a struttura cilindrica parzialmente sezionata; in alto a destra, fotografia di molle ad anelli a doppia conicità (profilo esterno troncoconico); al centro, schema funzionale di un modulo composto da un anello esterno (SMA outer ring) e due semianelli interni (HSS inner ring) confrontato nella condizione scarica (unloaded) e sotto carico (loaded); in basso, fotografia dei respingenti su locomotori ferroviari affiancata dai disegni costruttivi in sezione di un respingente ferroviario con molla ad anelli a struttura conica (in basso a sinistra) e di un respingente con molla ad anelli a struttura cilindrica (in basso a destra)]])