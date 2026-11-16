#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw
#let canvas(..args) = align(center, cetz-canvas(..args))

#set page(paper: "a4", margin: 1.5cm, numbering: "1", number-align: bottom + right)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")

#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)

// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body
)
#let circ = sym.degree
#let varphi = $phi$
#let varepsilon = $epsilon$
#set heading(numbering: "1.")


= Caratteristiche di resistenza statica dei materiali

== Tensione e deformazione unitaria uniassiale

Se una trave è omogenea e risulta sottoposta a una sollecitazione semplice di trazione o compressione, tutte le fibre longitudinali subiscono un identico allungamento. Di conseguenza, le sezioni rette della trave si spostano mantenendosi tutte parallele a se stesse, determinando una distribuzione uniforme (ripartita) delle tensioni interne su tutta la generica sezione retta.

La tensione unitaria (uniassiale) $sigma_(x x)$ assume quindi il medesimo valore in tutti i punti della sezione. Indicando con $P$ il carico assiale applicato, con $N = P$ lo sforzo normale interno e con $A$ l'area della sezione retta, la tensione unitaria è definita dal rapporto:

$ sigma_(x x) = P / A $

#align(center)[
  #include "figs/27-50_appunti-fig01.typ"
]

Nella notazione a doppio indice di $sigma_(x x)$, il primo pedice indica la direzione della normale alla sezione rispetto alla quale la tensione è calcolata, mentre il secondo pedice individua la direzione della tensione stessa. Dal punto di vista dimensionale, esprimendo il carico in Newton ($"N"$) e l'area della sezione trasversale in millimetri quadrati ($"mm"^2$), l'unità di misura della tensione risulta essere:

$ "N" / "mm"^2 = "MPa" $

#nota[
  L'ipotesi di distribuzione uniforme delle tensioni interne cessa di essere valida localmente in corrispondenza:
  - dei "punti" di applicazione del carico;
  - di brusche variazioni della geometria della trave.
]


Sottoponendo una trave a uno stato di trazione, le sue dimensioni geometriche variano in funzione dell'intensità del carico applicato $P$. Se la trave possiede una lunghezza iniziale $l$, l'applicazione del carico ne determina un incremento longitudinale fino alla lunghezza finale $l + Delta l$.

#align(center)[
  #include "figs/27-50_appunti-fig02.typ"
]

La variazione di lunghezza $Delta l$ prende il nome di *allungamento assoluto* della trave. Il rapporto tra l'allungamento assoluto $Delta l$ e la lunghezza iniziale $l$ della trave è definito *allungamento relativo* o *deformazione unitaria* (uniassiale):

$ varepsilon_(x x) = (Delta l) / l $

== Prova di trazione statica

Tra le prove sperimentali impiegate per la caratterizzazione statica dei materiali, le più importanti e frequenti sono le prove di trazione e di compressione, le quali vengono eseguite mediante apposite macchine di prova di tipo idraulico oppure elettromeccanico.

In generale, le prove meccaniche consentono di classificare i lotti di materiale attenendosi alle prescrizioni delle normative tecniche nazionali e internazionali, come ad esempio la norma *UNI EN ISO 6895-3:2015* (_Materiali metallici - Prova di trazione - Metodo di prova a bassa temperatura_). Per finalità di ricerca e sviluppo o per la qualificazione di nuovi materiali, è inoltre possibile condurre prove sperimentali modificando le condizioni operative rispetto agli standard normativi, ad esempio variando la temperatura di esercizio e/o la storia di applicazione dei carichi.

=== Schema della macchina di prova e geometria dei provini

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [



La macchina è costituita dall'accoppiamento di una *struttura fissa* (8) e di una *struttura mobile* (4). Entrambe supportano le ganasce dedicate al bloccaggio del *provino* (5), la cui posizione iniziale può essere regolata tramite una *vite di manovra* (6).

*Principio di funzionamento (prova di trazione)*
+ Una *pompa* (2) invia olio in pressione all'interno di un *cilindro idraulico* (1), la cui pressione è costantemente monitorata da un *manometro* (7).
+ La pressione provoca la corsa verticale del *pistone* (3).
+ Poiché il pistone è solidale alla traversa della *struttura mobile* (4), il suo movimento trasferisce direttamente il carico assiale alla ganascia superiore, inducendo lo sforzo di trazione sul *provino* (5).],[#image("gransuconeidraulico.png", width:80%)])






La geometria dei provini varia in funzione della tipologia di sollecitazione applicata:
- per le prove di trazione si impiegano generalmente provini a *sezione circolare* caratterizzati da un rapporto tra la lunghezza utile iniziale $L_0$ e il diametro $d$ pari a circa $L_0 / d approx 15$;
- in alternativa, per le prove di trazione su laminati si utilizzano provini piatti a *sezione rettangolare* (di spessore $a$ e larghezza $b$, con sezione trasversale iniziale $S_0 = a b$);
- per le prove 

#align(center)[
  #include "figs/27-50_appunti-fig03.typ"
]



Nella figura precedente sono evidenziate la sezione iniziale $S_0$, la lunghezza utile iniziale tra i riferimenti $L_0$, la lunghezza del tratto calibrato $L_c$, la lunghezza totale del provino $L_t$ e, a rottura o strizione avvenuta, la sezione minima ristretta $S_u$ e la lunghezza utile finale $L_u$.

=== Modalità di esecuzione della prova

La prova di trazione viene preferibilmente condotta in *controllo di deformazione*. Poiché si tratta di una prova di caratterizzazione statica, la velocità di prova viene impostata in modo da sollecitare il provino lentamente e progressivamente, evitando effetti dinamici o inerziali.

Il valore della velocità di prova è prescritto dalle normative di riferimento e dipende dalle proprietà elastiche del provino in esame: per i materiali metallici si imposta tipicamente una velocità di deformazione compresa nell'intervallo tra $2,5 dot 10^(-4) "s"^(-1)$ e $2,5 dot 10^(-3) "s"^(-1)$. Dalle acquisizioni sperimentali si costruisce quindi il *diagramma tensione-deformazione* ($sigma$-$varepsilon$), stabilendo il legame costitutivo tra la forza agente sul provino e il corrispondente allungamento.

== Il diagramma tensione-deformazione ($sigma$-$varepsilon$)

Il diagramma $sigma$-$varepsilon$ ricavato da una prova di trazione viene convenzionalmente suddiviso in quattro zone caratteristiche: `O-A`, `A-B`, `B-C` e `C-D`.

#align(center)[
  #include "figs/27-50_appunti-fig04.typ"
]



L'analisi dettagliata dei quattro tratti evidenzia i seguenti comportamenti fisici:
+ *Tratto `O-A` (zona di elasticità)*: il materiale segue una legge costitutiva lineare ed esiste una diretta proporzionalità tra la tensione applicata e la deformazione prodotta.
+ *Tratto `A-B` (zona di snervamento)*: si manifesta una sensibile variazione di lunghezza del provino senza che vi sia una crescita apprezzabile del carico applicato. L'esistenza di una zona di snervamento ben distinta non costituisce una proprietà comune a tutti i materiali.
+ *Tratto `B-C` (zona di incrudimento)*: l'ulteriore allungamento del provino richiede un nuovo aumento del carico applicato fino al raggiungimento di un valore massimo in corrispondenza del punto $"C"$; tale incremento di tensione in funzione della deformazione risulta tuttavia molto più lento rispetto a quello osservato nella zona elastica.
+ *Tratto `C-D` (zona di snervamento locale)*: superato il punto di massimo carico $"C"$, in una specifica regione del provino la sezione trasversale comincia a restringersi sensibilmente dando luogo al fenomeno della *strizione*, il quale localizza la zona in cui si verificherà la rottura finale. In questa fase l'allungamento prosegue con una diminuzione del carico esterno fino al punto $"D"$, che corrisponde al *cedimento finale* del provino.

#nota[
  Nel tratto `C-D` il diagramma mostra una diminuzione apparente della tensione nonostante la tensione effettiva media nella sezione ristretta continui ad aumentare: ciò è dovuto al fatto che il diagramma fa riferimento ai *valori ingegneristici* (o nominali) della tensione $sigma = F / S_0$ e della deformazione $varepsilon = (Delta L) / L_0$, calcolati rapportando forza e allungamento all'area $S_0$ e alla lunghezza utile $L_0$ iniziali del provino.
]

=== Comportamento allo scarico e deformazione residua

Analizzando il comportamento del materiale qualora si interrompa la prova e si scarichi il provino a partire da diversi punti del diagramma $sigma$-$varepsilon$, si distinguono due regimi fondamentali:

- Se lo scarico avviene all'interno del tratto elastico `O-A`, il punto rappresentativo ripercorre esattamente la retta `O-A` in senso inverso fino all'origine $"O"$, annullando completamente la deformazione all'azzerarsi del carico.
- Se invece il provino viene caricato oltre il limite di snervamento fino a un generico punto $"K"$ appartenente alla zona di incrudimento e successivamente scaricato, il percorso di scarico segue una legge rettilinea `K-L` parallela al tratto elastico iniziale `O-A`.



#include "figs/27-50_appunti-fig05.typ"

Al termine dello scarico nel punto $"L"$ (a tensione nulla), la deformazione totale raggiunta nel punto $"M"$ sotto carico risulta scomposta nella somma di due contributi:
- l'aliquota *elastica* $varepsilon_"el"$ (segmento `L-M`), che viene integralmente recuperata durante la fase di scarico;
- l'aliquota *plastica* permanente $varepsilon_"pl"$ (segmento `O-L`), che rimane come deformazione residua irreversibile nel provino scarico. Qualora il provino venga nuovamente ricaricato a partire da $"L"$, esso risponderà elasticamente lungo la medesima retta `L-K` fino a raggiungere nuovamente la tensione corrispondente al punto $"K"$.


= Diagramma tensione-deformazione e limiti caratteristici

== Comportamento allo scarico e deformazione residua

Se durante l'esecuzione della prova di trazione si scarica il provino prima di raggiungere la rottura, ad esempio in corrispondenza di un generico punto $K$ appartenente al campo elasto-plastico, il legame tra forza e allungamento durante la fase di scarico è rappresentato da un tratto rettilineo $K$-$L$, parallelo al tratto elastico lineare iniziale $O$-$A$.

Al termine dello scarico (carico nullo), l'ascissa totale raggiunta dal punto $K$ (indicata con $M$ sull'asse delle deformazioni) si scompone in due contributi distinti:
- Il segmento $O L$ rappresenta la *deformazione plastica residua* $epsilon_"pl"$, a cui corrisponde un allungamento permanente che rimane nel provino anche dopo la rimozione completa del carico.
- Il segmento $L M$, che corrisponde all'accorciamento recuperato dal provino durante la fase di scarico, è pari alla *deformazione elastica* $epsilon_"el"$.

#nota[
Se il provino viene caricato esclusivamente entro i limiti del tratto elastico iniziale $O$-$A$ e successivamente scaricato, non si manifestano scorrimenti permanenti: risulta quindi $epsilon_"pl" = 0$ e l'allungamento è puramente elastico e interamente reversibile.
]

== Limite di elasticità, limite di proporzionalità e tipologie di snervamento

Mentre in alcuni materiali metallici il tratto $A$-$B$ individua una *zona di snervamento evidente* ben distinguibile, in molti altri materiali la transizione dal comportamento elastico a quello plastico avviene in modo graduale. In tali casi non è possibile individuare lo snervamento in modo netto e si ricorre pertanto alle definizioni convenzionali stabilite dalla normativa:
- Il *limite di elasticità* è definito come la tensione massima fino alla quale il materiale non manifesta deformazioni residue allo scarico.
- La tensione oltre la quale il materiale cessa di seguire la legge di proporzionalità lineare tra tensione e deformazione è detta *limite di proporzionalità* $R_"p"$.

A seconda di come si manifesta lo scostamento dalla proporzionalità lineare durante la prova, la normativa distingue due categorie fondamentali di comportamento allo snervamento:
1. *Materiali con snervamento evidente ($R_e$)*: la curva presenta un brusco cedimento plastico accompagnato da oscillazioni o da un plateau orizzontale. Si definiscono il *carico unitario di snervamento superiore* $R_"eH"$ (corrispondente al primo picco massimo raggiunto prima della caduta di tensione) e il *carico unitario di snervamento inferiore* $R_"eL"$ (corrispondente al valore minimo o di plateau successivo, trascurando eventuali effetti transitori iniziali indicati dal punto $a$).
2. *Materiali senza snervamento evidente ($R_"p"$)*: la curva devia progressivamente dalla retta elastica iniziale. Si definisce convenzionalmente il *carico unitario di scostamento dalla proporzionalità* $R_"p"$, individuato tracciando una retta parallela al tratto lineare iniziale a partire da una deformazione plastica residua assegnata $epsilon_"pl" = e_"p"$ (tipicamente pari allo $0,2%$, da cui la notazione $R_("p0,2")$).

#include "figs/27-50_appunti-fig06.typ"

= Parametri del diagramma tensione-deformazione

== Rigidezza, resistenza a rottura e deformazioni caratteristiche

Dall'analisi completa del diagramma $sigma$-$epsilon$ registrato fino alla rottura del provino (punto $D$) si estraggono i parametri meccanici fondamentali di resistenza, rigidezza e duttilità:
- Il *modulo elastico* (o modulo di Young) $E$ è definito come il coefficiente angolare (tangente trigonometrica dell'angolo di inclinazione) del tratto lineare iniziale $O$-$A$.
- Il *limite di rottura* o *tensione di rottura* $R_"m"$ si ricava dividendo la forza massima sopportata dal provino (corrispondente al punto di massimo $C$ del diagramma) per l'area iniziale $S_0$ della sezione retta calibrata.
- Sull'asse delle ascisse si distinguono le componenti di allungamento percentuale in corrispondenza del carico massimo $R_"m"$ e della rottura finale $D$:
  - $A_"g"$: allungamento percentuale non proporzionale (plastico) al carico massimo $R_"m"$, ottenuto scaricando parallelamente alla retta elastica dal punto di massimo;
  - $A_"gt"$: allungamento percentuale totale (elastico più plastico) al carico massimo $R_"m"$ (valutato in corrispondenza di un eventuale plateau di massimo di ampiezza $Delta e$);
  - $A$: *allungamento relativo a rottura* (deformazione plastica residua valutata a rottura avvenuta, scaricando dal punto $D$ parallelamente al tratto elastico);
  - $A_"t"$: allungamento percentuale totale a rottura (includendo l'aliquota elastica al momento del cedimento finale in $D$).

#include "figs/27-50_appunti-fig07.typ"

L'*allungamento relativo a rottura* $A$, espresso solitamente in percentuale, misura la deformazione plastica residua permanente dopo il cedimento del provino ed è definito dalla relazione:
// INCERTO: dedotto dal contesto
$ A = (L_u - L_0) / L_0 dot 100 $
dove:
- $L_0$ è la *lunghezza iniziale tra i riferimenti* (tratto utile di misura marcato sul provino prima della prova), avente sezione trasversale iniziale di area $S_0$ (circolare di diametro $d$, oppure rettangolare di lati $a$ e $b$);
- $L_c$ è la *lunghezza del tratto calibrato* a sezione costante e $L_t$ è la *lunghezza totale* del provino incluse le *teste di serraggio*;
- $L_u$ è la *lunghezza finale tra i riferimenti* misurata dopo la rottura riaccostando le due parti fratturate del provino, in corrispondenza della quale la sezione minima strizionata ha area $S_u$.

#include "figs/27-50_appunti-fig08.typ"

= Materiali fragili e materiali duttili

L'allungamento percentuale a rottura $A$ consente di quantificare l'ampiezza del campo plastico del materiale e permette convenzionalmente di distinguere tra *comportamento fragile* e *comportamento duttile*:
- La soglia indicativa di separazione è fissata convenzionalmente a $A = 5%$: al di sotto di tale valore ($A < 5%$) il comportamento del materiale si definisce *fragile*.
- I metalli presentano in generale un comportamento duttile ($A > 5%$), sebbene alcune leghe metalliche specifiche (come le ghise) mostrino un comportamento marcatamente fragile.

Anche l'analisi visiva della morfologia della superficie di rottura fornisce un'indicazione diretta della natura meccanica del cedimento:
- *Rottura fragile*: avviene per *decoesione frontale* lungo un piano ortogonale all'asse di sollecitazione, governata dal raggiungimento delle *tensioni normali* critiche senza apprezzabile deformazione plastica o restringimento trasversale.
- *Rottura duttile*: avviene per *scorrimento plastico* governato dalle *tensioni tangenziali* (inclinate a $45 circ$ rispetto all'asse del carico), generando una marcata strizione localizzata e la caratteristica frattura a "coppa e cono".

#include "figs/27-50_appunti-fig09.typ"

#nota[
_[Figura nelle slide: Fotografie macroscopiche delle superfici di rottura di provini cilindrici. Nel caso fragile la superficie di frattura è piana, granulare e ortogonale all'asse del provino senza riduzione di diametro; nei due casi duttili si osserva una marcata strizione del collo e la tipica conformazione a "coppa e cono" con labbro di taglio inclinato a $45 circ$.]_
]

= Tensione e deformazione ingegneristiche e reali

== Definizione dei valori ingegneristici

Il concetto di *valori ingegneristici* (o convenzionali) è ampiamente adottato nelle normative tecniche. Nella loro definizione si assumono come grandezze di riferimento costanti l'*area iniziale* $S_0$ della sezione normale alla direzione del carico e la *lunghezza iniziale* $L_0$ del tratto utile del provino _(si veda lo schema geometrico del provino nella sezione precedente)_.

Il *valore ingegneristico della tensione* $sigma$ è definito come:
$ sigma = F / S_0 $
mentre il *valore ingegneristico della deformazione* $epsilon$ è dato da:
// INCERTO: dedotto dal contesto
$ epsilon = (Delta L) / L_0 = (L - L_0) / L_0 $

La tensione ingegneristica rappresenta una quantità *misurabile indirettamente* con estrema semplicità durante la prova, poiché le macchine di trazione rilevano istante per istante la forza applicata $F$, mentre l'area iniziale $S_0$ è nota a priori dalla geometria del provino.

== Strizione e definizione dei valori reali (effettivi)

Nella realtà fisica della prova, soprattutto con l'insorgere del fenomeno della *strizione* dopo il raggiungimento del carico massimo, la sezione trasversale in corrispondenza della zona di futura rottura subisce un evidente restringimento localizzato: l'area effettiva $S$ della sezione retta del provino diminuisce quindi progressivamente nel corso della prova di trazione ($S < S_0$).

#nota[
_[Figura nelle slide: Fotografia ravvicinata delle due metà di un provino metallico cilindrico filettato portato a rottura duttile, in cui è chiaramente visibile il forte restringimento conico localizzato (strizione) in prossimità della sezione di distacco.]_
]

Tenendo conto della geometria istantanea del provino, si introducono il *valore reale della tensione* $sigma_"reale"$, riferito all'area corrente effettiva $S$:
// INCERTO: dedotto dal contesto
$ sigma_"reale" = F / S $
e il *valore reale (o logaritmico) della deformazione* $epsilon_"reale"$, ottenuto integrando gli incrementi infinitesimi di allungamento $d l$ rispetto alla lunghezza istantanea $l$:
// INCERTO: dedotto dal contesto
$ epsilon_"reale" = integral_(L_0)^L (d l) / l = ln (L / L_0) $

Se si tiene conto della progressiva riduzione dell'area della sezione retta del provino, sul diagramma $sigma$-$epsilon$ il valore della *tensione reale* continua a crescere monotonamente anche dopo il superamento della tensione ingegneristica di rottura $R_"m"$ (punto $C$). Il cedimento fisico del provino avviene pertanto in corrispondenza del valore di *tensione reale* rappresentato dal *punto $D'$*, anziché al valore apparente più basso della *tensione ingegneristica* rappresentato dal *punto $D$*.

#include "figs/27-50_appunti-fig10.typ"

= Tensione ammissibile e coefficiente di sicurezza

== Criterio di verifica statica e scelta della tensione limite cazzi nel culo

I dati sperimentali relativi alle proprietà meccaniche dei materiali, ottenuti mediante la prova di trazione, vengono impiegati direttamente nei calcoli pratici di progettazione e verifica per determinare la resistenza strutturale dei sistemi meccanici.

A tale scopo si definisce la *tensione ammissibile* (o tensione di sicurezza) $sigma_"amm"$ come il rapporto tra una specifica *tensione limite* (carico unitario limite) $sigma_L$ del materiale e un parametro adimensionale $s > 1$ denominato *coefficiente di sicurezza*:
// INCERTO: dedotto dal contesto
$ sigma_"amm" = sigma_L / s $

Per garantire che un componente meccanico sollecitato staticamente non raggiunga condizioni di cedimento strutturale in esercizio, la tensione limite $sigma_L$ viene selezionata in funzione della natura duttile o fragile del materiale:
- Per i *materiali duttili*, poiché il fuori servizio funzionale è determinato dall'insorgere di grandi deformazioni plastiche permanenti, si assume la tensione limite $sigma_L$ uguale al limite di snervamento $R_"p"$ (oppure $R_"eH"$):
  // INCERTO: dedotto dal contesto
  $ sigma_"amm" = R_"p" / s quad ("oppure " sigma_"amm" = R_"eH" / s) $
- Per i *materiali fragili* (e in determinati casi anche per materiali moderatamente plastici), poiché la rottura avviene senza snervamento premonitore, si assume la tensione limite $sigma_L$ uguale al limite di rottura $R_"m"$:
  // INCERTO: dedotto dal contesto
  $ sigma_"amm" = R_"m" / s $

== Esempio di progettazione: caso di trazione pura

Si desidera determinare l'area minima della sezione trasversale $A$ di un corpo cilindrico realizzato in acciaio strutturale $"S235"$, sottoposto a uno sforzo assiale di trazione pura $P = 100000 "N"$, assumendo un coefficiente di sicurezza pari a $s = 1,5$ rispetto allo snervamento.

Dalla designazione normalizzata dell'acciaio ($"S235"$) si ricava direttamente che la tensione di snervamento vale $R_"p" = 235 "MPa" = 235 "N" / "mm"^2$. La tensione ammissibile del materiale risulta pertanto:
// INCERTO: dedotto dal contesto
$ sigma_"amm" = R_"p" / s = (235 "MPa") / 1,5 approx 156,7 "MPa" approx 157 "MPa" $

Imponendo che la tensione di lavoro $sigma = P / A$ non superi la tensione ammissibile $sigma_"amm"$, l'area minima necessaria della sezione retta del corpo cilindrico risulta:
// INCERTO: dedotto dal contesto
$ A = P / sigma_"amm" = (100000 "N") / (157 "N" / "mm"^2) approx 637 "mm"^2 $

= Legge tensione-deformazione unitarie

Per la maggior parte dei materiali strutturali, nel regime dei piccoli allungamenti si riscontra sperimentalmente una proporzionalità diretta tra la tensione unitaria e la deformazione unitaria. Tale relazione costitutiva prende il nome di *legge di Hooke*:

$ sigma_(x x) = E epsilon_(x x) $

Il coefficiente di proporzionalità $E$ è denominato *modulo di elasticità normale* (o *modulo di Young*). Esso rappresenta una costante fisica intrinseca del materiale, determinata per via sperimentale; poiché la deformazione unitaria $epsilon_(x x)$ è una grandezza adimensionale, il modulo $E$ possiede le medesime dimensioni fisiche della tensione unitaria ($"N"/"mm"^2 = "MPa"$).

Sostituendo all'interno della legge di Hooke le definizioni di tensione normale $sigma_(x x) = P / A$ e di deformazione longitudinale $epsilon_(x x) = (Delta l) / l$, si ottiene la relazione che lega direttamente la forza assiale applicata $P$ alla variazione di lunghezza della trave:

$ sigma_(x x) = E epsilon_(x x) quad arrow.r.double quad frac(P, A) = E frac(Delta l, l) $

Da tale espressione è possibile esplicitare sia la forza assiale $P$ in funzione dell'allungamento assoluto $Delta l$, sia l'allungamento stesso in funzione del carico:

$ P = frac(E A, l) Delta l , quad Delta l = frac(P l, E A) $

#nota[
Si definisce *rigidezza assiale* della trave il rapporto $frac(E A, l)$, il quale esprime la resistenza offerta dall'elemento strutturale alla deformazione assiale.
]

== Contrazione trasversale e coefficiente di Poisson

L'evidenza sperimentale mostra che, contemporaneamente all'allungamento longitudinale $Delta l$ indotto da uno stato di trazione monoassiale, il materiale subisce una contrazione trasversale $Delta a$ direttamente proporzionale all'allungamento stesso.

#include "figs/27-50_appunti-fig11.typ"

La corrispondente deformazione unitaria trasversale $epsilon_(y y)$ è legata alla deformazione longitudinale $epsilon_(x x)$ dalla relazione:

$ epsilon_(y y) = - frac(Delta a, a) = - nu frac(Delta l, l) = - nu epsilon_(x x) = - nu frac(sigma_(x x), E) $

Il coefficiente di proporzionalità adimensionale $nu$ prende il nome di *coefficiente di Poisson*; esso viene determinato sperimentalmente e, per la maggior parte dei materiali metallici, assume valori compresi nell'intervallo $0.25 <= nu <= 0.35$.

= Lavoro di deformazione

Si supponga che la forza esterna $P$, che sollecita a trazione la trave, cresca dal valore nullo iniziale fino al valore finale in modo sufficientemente lento da non innescare azioni dinamiche, realizzando così un *processo di carico statico*.

#include "figs/27-50_appunti-fig12.typ"

Il lavoro elementare $d L$ compiuto dalla forza $P$ per uno spostamento infinitesimo $d(Delta l)$ vale:

$ d L = P d(Delta l) $

Integrando tale contributo lungo l'intero processo di carico, il lavoro complessivo $L$ corrispondente allo spostamento finale $Delta l$ coincide geometricamente con l'area del triangolo $O B C$ sotteso dalla retta di carico:

$ L = frac(1, 2) P Delta l $

Sostituendo le relazioni costitutive della rigidezza assiale ricavate in precedenza, il lavoro di deformazione può essere espresso alternativamente in funzione del solo allungamento o della sola forza applicata:

$ L = frac(1, 2) P Delta l = frac(1, 2) frac(E A, l) Delta l^2 = frac(1, 2) frac(P^2 l, E A) $

Indicando con $V = A l$ il volume complessivo della trave e ricordando che $sigma_(x x) = P / A$ e $sigma_(x x) = E epsilon_(x x)$, il lavoro di deformazione si esprime in funzione dello stato tensionale e deformativo come:

$ L = frac(1, 2) sigma_(x x) epsilon_(x x) V = frac(1, 2) frac(sigma_(x x)^2, E) V = frac(1, 2) epsilon_(x x)^2 E V $

Dividendo per il volume $V$, si ottiene il corrispondente *lavoro di deformazione per unità di volume* (o densità di energia di deformazione elastica) $L_V$:

$ L_V = frac(1, 2) sigma_(x x) epsilon_(x x) = frac(1, 2) frac(sigma_(x x)^2, E) = frac(1, 2) epsilon_(x x)^2 E $

= Deformazioni termiche assiali

Finora si è assunto che i sistemi strutturali soggetti a carichi meccanici permanessero a una temperatura ambiente $T_"amb"$ costante. Se tuttavia una trave libera (non vincolata) è immersa in un campo termico uniforme caratterizzato da una variazione di temperatura $Delta T$ rispetto a $T_"amb"$, essa subisce una variazione di lunghezza $Delta l_T$ direttamente proporzionale al salto termico $Delta T$ e alla lunghezza iniziale $l$:

$ Delta l_T = alpha l Delta T $

Il parametro $alpha$ è denominato *coefficiente di dilatazione termica lineare*; esso costituisce una proprietà fisica caratteristica del materiale, ha dimensioni $[circ"C"^(-1)]$ e assume i valori tipici riportati nella tabella seguente.

#table(
  columns: 2,
  align: (left, right),
  table.header([*Materiale*], [*$alpha$ $[circ"C"^(-1)]$*]),
  table.hline(),
  [Acciai], [$11.7 dot 10^(-6)$],
  [Leghe di Alluminio], [$23.5 dot 10^(-6)$],
  [Leghe di Titanio], [$9.0 dot 10^(-6)$],
  [Leghe di Rame], [$16.9 dot 10^(-6)$],
  [Poliestere], [$166 dot 10^(-6)$],
)

Dividendo l'allungamento termico per la lunghezza iniziale $l$, si definisce la *deformazione unitaria termica*:

$ epsilon_T = alpha Delta T $

Qualora una barra sollecitata a trazione sia contemporaneamente soggetta a un incremento uniforme di temperatura $Delta T$ rispetto alla temperatura di montaggio, la deformazione termica si sovrappone linearmente alla deformazione meccanica $epsilon_"mec"$ prodotta dal carico assiale. La deformazione unitaria complessiva $epsilon$ e l'allungamento totale $Delta l$ valgono pertanto:

$ epsilon = epsilon_"mec" + epsilon_T = frac(sigma, E) + alpha Delta T $

$ Delta l = Delta l_"mec" + Delta l_T = frac(P l, E A) + alpha l Delta T $

= Comportamento meccanico dei materiali metallici

I materiali metallici impiegati nelle costruzioni meccaniche presentano due proprietà strutturali fondamentali:
- *Omogeneità*: il materiale possiede le medesime proprietà fisiche e meccaniche in tutti i suoi punti.
- *Isotropia*: il materiale presenta le stesse proprietà meccaniche lungo tutte le direzioni dello spazio.

Tra le famiglie di materiali metallici di più frequente impiego nella progettazione industriale di sistemi meccanici figurano:
- Acciai e ghise (leghe Ferro-Carbonio);
- Leghe di alluminio;
- Leghe di titanio;
- Leghe rame-stagno (bronzi);
- Leghe di magnesio.

Il comportamento tensionale-deformativo a trazione di diverse leghe metalliche di interesse ingegneristico è illustrato nel diagramma comparativo seguente.

#include "figs/27-50_appunti-fig13.typ"

== Classificazione e proprietà degli acciai

L'*acciaio* è una lega binaria Ferro-Carbonio (Fe-C) caratterizzata da un tenore massico di carbonio inferiore al $2\%$ (più precisamente $C < 2.1\%$, oltre il quale si entra nel campo delle ghise). Gli acciai vengono classificati principalmente in funzione della percentuale di carbonio e della destinazione d'impiego. Sulla base del tenore di carbonio si distinguono:
- *Acciai dolci*: $0.15\% < C < 0.25\%$;
- *Acciai semiduri*: $0.25\% < C < 0.50\%$;
- *Acciai duri*: $0.50\% < C < 0.75\%$.

#include "figs/27-50_appunti-fig14.typ"

Le principali grandezze meccaniche che caratterizzano il comportamento degli acciai sono:
- *Resistenza*: attitudine a sopportare i carichi applicati, determinata sperimentalmente mediante la prova di trazione.
- *Durezza*: resistenza locale che il materiale oppone alla penetrazione; viene misurata tramite prove sperimentali eseguite con una macchina di prova denominata *durometro*.
- *Duttilità o tenacità*: misura dell'energia di deformazione che il materiale è in grado di assorbire prima di giungere a rottura; un'indicazione quantitativa della tenacità è fornita dall'area complessiva sottesa dalla curva tensione-deformazione ($sigma$-$epsilon$) ricavata dalla prova di trazione.

=== Designazione normativa (UNI EN 10027)

La normativa *UNI EN 10027* stabilisce i criteri di classificazione e le sigle di designazione alfanumerica dei diversi tipi di acciaio. La designazione dipende dalla destinazione d'impiego, dalle caratteristiche meccaniche minime garantite e dalla composizione chimica (percentuale di carbonio e di elementi leganti):
- *Acciai non legati*: designati in base al tenore medio di carbonio (ad esempio `C40`, avente circa lo $0.40\%$ di carbonio);
- *Acciai da costruzione*: designati in base all'impiego strutturale e al carico unitario di snervamento minimo in $"MPa"$ (ad esempio `S355`);
- *Acciai legati da bonifica*: designati indicando il tenore di carbonio e i principali elementi di lega con i rispettivi fattori moltiplicativi (ad esempio `34CrMo4`).


// === Blocco_02_Slide_14-24 ===

== Acciai Inossidabili e Leghe Non Ferrose

=== Acciai Inossidabili

Fra gli acciai legati rivestono particolare importanza gli acciai inossidabili (comunemente detti _inox_, basati su leghe al Cromo-Molibdeno, $"CrMo"$). L'elemento fondamentale per la resistenza agli agenti atmosferici e chimici è il Cromo ($"Cr"$), il quale favorisce la protezione contro la corrosione attraverso il fenomeno della *passivazione*: a contatto con l'ossigeno atmosferico ($"O"_2$), il cromo forma un sottilissimo film superficiale di ossido di cromo, continuo e impermeabile all'ossigeno stesso, che impedisce l'ulteriore ossidazione del substrato metallico sottostante.

Anche il Molibdeno ($"Mo"$) contribuisce a ridurre la corrosione, ma il tenore che se ne aggiunge in lega rimane modesto per due ragioni principali: si tratta di un metallo costoso e la sua presenza rende la lega molto dura e, di conseguenza, difficile da lavorare alle macchine utensili.

#include "figs/27-50_appunti-fig15.typ"

In base alla loro microstruttura cristallina, gli acciai inossidabili si suddividono principalmente in due famiglie:
- *Acciai inossidabili austenitici*, caratterizzati da una superiore resistenza alla corrosione;
- *Acciai inossidabili martensitici*, che presentano caratteristiche più alto-resistenziali dal punto di vista meccanico.

=== Leghe di Alluminio

Le leghe di alluminio di impiego strutturale si suddividono principalmente in due categorie in funzione dell'elemento di lega principale:
- *Leghe Alluminio-Rame* ($"Cu" 3 div 5 %$): presentano una buona resistenza meccanica dopo il trattamento termico di bonifica, raggiungendo una tensione di rottura $R_m = 400 div 500 "MPa"$. Sono note con i nomi commerciali di _Avional_, _Duralluminio_ e _Recidal_, e trovano largo impiego nell'industria aeronautica e automobilistica (costruzione di veicoli).
- *Leghe Alluminio-Zinco* ($"Zn" 5 div 8 %$): la presenza dello zinco incrementa notevolmente la resistenza meccanica dopo bonifica, portando il carico di rottura a valori di $R_m = 500 div 700 "MPa"$, unitamente a una buona resistenza alla corrosione. Il nome commerciale di riferimento per questa classe è _Ergal_.

=== Titanio e Leghe di Titanio

L'impiego strutturale del titanio e delle sue leghe offre molteplici vantaggi ingegneristici:
- *Leggerezza*: presenta una massa inferiore del $40 %$ rispetto all'acciaio, con una densità pari a $4,5 "g/cm"^3$ contro i $7,9 "g/cm"^3$ dell'acciaio;
- *Eccellenti proprietà meccaniche* (elevata resistenza specifica);
- *Scarsa tossicità e ottima biocompatibilità*, che lo rendono ideale per applicazioni biomedicali e protesiche;
- *Assenza di proprietà magnetiche* (materiale amagnetico);
- *Buona resistenza agli acidi* e agli ambienti chimicamente aggressivi;
- *Buona trasmissione del calore*, sebbene con una conducibilità termica inferiore rispetto a quella degli acciai.

=== Magnesio e Leghe di Magnesio

Il magnesio e le leghe di magnesio si distinguono per i seguenti vantaggi applicativi:
- *Densità minima*: possiedono la minore densità ($1,8 "g/cm"^3$) rispetto a qualsiasi altro materiale metallico di impiego strutturale. In termini relativi, la loro densità è pari a circa $2 / 3$ di quella delle leghe di alluminio, $2 / 5$ di quella delle leghe di titanio e appena $1 / 5$ di quella dell'acciaio;
- *Elevata resistenza specifica* e *buona lavorabilità in getti* (fonderia);
- *Buona saldabilità* e *buona resistenza a corrosione*;
- *Migliore resistenza all'invecchiamento* rispetto ai materiali compositi a matrice polimerica.

=== Tabelle Riepilogative delle Proprietà dei Materiali Metallici

Di seguito si riportano i valori tipici del modulo di elasticità longitudinale $E$, del coefficiente di Poisson $nu$, della densità $rho$, della tensione di rottura $R_m$ e della tensione di snervamento (o limite di proporzionalità) $R_p$ per i principali acciai, ghise e leghe non ferrose.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, center, center, center, center),
    table.header(
      [*Materiale*], [$E ["MPa"]$], [$nu$], [$rho ["kg/m"^3]$], [$R_m ["MPa"]$], [$R_p ["MPa"]$]
    ),
    table.hline(),
    [Acciai da costruzione], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$360 - 510$], [$235 - 350$],
    [Acciai non legati per getti], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$300 - 500$], [$200 - 350$],
    [Acciai per getti], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$400 - 600$], [$250 - 400$],
    [Acciai da bonifica], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$500 - 1100$], [$350 - 750$],
    [Acciai da cementazione], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$500 - 1500$], [$350 - 1000$],
    [Acciai speciali per molle], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$1200 - 1800$], [$900 - 1300$],
    [Acciai inossidabili], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$600 - 1200$], [$400 - 900$],
    [Ghise], [$1,6 dot 10^5$], [$0,3$], [$7000$], [$350 - 500$], [---],
  ),
  caption: [Proprietà fisiche e meccaniche di acciai e ghise.]
)

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, center, center, center, center),
    table.header(
      [*Lega*], [$E ["MPa"]$], [$nu$], [$rho ["kg/m"^3]$], [$R_m ["MPa"]$], [$R_p ["MPa"]$]
    ),
    table.hline(),
    [Al-Cu (Dural)], [$7,2 dot 10^4$], [$0,34$], [$2500$], [$400 - 500$], [$250 - 350$],
    [Al-Zn (Ergal)], [$7,2 dot 10^4$], [$0,34$], [$2500$], [$500 - 700$], [$450 - 500$],
    [Mg], [$4,6 dot 10^4$], [$0,34$], [$1700$], [$200 - 300$], [$160 - 250$],
    [Cu-St], [$1,1 dot 10^5$], [$0,3$], [$8000$], [$150 - 200$], [$300 - 400$],
    [Ti], [$1,1 dot 10^5$], [$0,34$], [$4500$], [$600 - 1200$], [$400 - 800$],
  ),
  caption: [Proprietà fisiche e meccaniche delle principali leghe non ferrose.]
)

= Comportamento Meccanico dei Materiali Compositi

== Definizione e Classificazione

Si definisce *materiale composito* la combinazione di due o più micro o macro-costituenti che differiscono nella forma e nella composizione chimica e che risultano reciprocamente insolubili. All'interno del sistema, uno dei costituenti prende il nome di *matrice* (fase continua), mentre gli altri costituiscono le *cariche* di rinforzo (fase dispersa); nella maggior parte delle applicazioni strutturali, tali cariche sono rappresentate da *fibre*.

I materiali compositi si distinguono in primo luogo in base alla natura chimico-fisica della matrice:
- *Compositi a matrice polimerica (PMC)*: caratterizzati da elevate proprietà meccaniche specifiche (rapporto resistenza/peso e rigidezza/peso);
- *Compositi a matrice metallica (MMC)*: progettati per offrire una resistenza meccanica migliorata alle alte temperature rispetto ai polimeri;
- *Compositi a matrice ceramica (CMC)*: sviluppati principalmente per ottenere una tenacità a frattura migliorata rispetto ai ceramici monolitici tradizionali.

In secondo luogo, i materiali compositi si classificano in base alla geometria e alla disposizione delle cariche di rinforzo, che determinano il grado di simmetria elastica del materiale:
- *Cariche sferiche*: generano materiali compositi con proprietà macroscopicamente *isotrope*;
- *Cariche irregolari*: danno luogo a compositi con proprietà *non isotrope* (anisotrope);
- *Cariche a piattello (lamellari)*: conferiscono proprietà *isotrope nel piano* di giacitura dei piattelli;
- *Fibre corte o lunghe*: utilizzate per realizzare compositi unidirezionali oppure laminati (anche sotto forma di tessuti bidimensionali 2D), i quali esibiscono proprietà *ortotrope*.

#nota[_[Figura nelle slide: fotografie a confronto tra fasci di fibre lunghe sciolte e nastri/tessuti bidimensionali (2D) di fibre lunghe intrecciate affiancati a un righello millimetrato]_]

== Tipologie di Fibre e Matrici Polimeriche

=== Fibre di Rinforzo

Le tipologie di fibre più diffuse nelle applicazioni strutturali sono tre:
1. *Fibre di vetro*: presentano un'ottima resistenza meccanica ($2 - 5 "GPa"$), un basso costo di produzione e una buona tenacità, ma sono penalizzate da un basso modulo elastico ($70 - 80 "GPa"$) e da una media densità ($2,5 - 2,8 "g/cm"^3$).
2. *Fibre di carbonio*: offrono un'ottima resistenza meccanica ($3,1 - 4,5 "GPa"$), un elevatissimo modulo elastico ($220 - 800 "GPa"$) e una bassa densità ($1,7 - 2,1 "g/cm"^3$), a fronte tuttavia di un alto costo e di una bassa tenacità (comportamento fragile agli urti).
3. *Fibre aramidiche* (note con i nomi commerciali _Kevlar_ e _Nomex_): coniugano un'ottima resistenza meccanica ($3,0 - 4,5 "GPa"$) con un'alta tenacità, un costo medio, un medio modulo elastico ($130 - 150 "GPa"$) e una densità molto bassa ($< 1,5 "g/cm"^3$).

=== Matrici Polimeriche

Le matrici polimeriche si suddividono in due grandi categorie:
- *Matrici termoindurenti*: tra le più utilizzate figurano le *resine epossidiche*, caratterizzate da buone proprietà meccaniche, ottima adesione chimico-fisica alle fibre e minore ritiro volumetrico durante la reticolazione, sebbene abbiano un costo elevato. Vengono impiegate prevalentemente in combinazione con fibre di carbonio e fibre aramidiche per la realizzazione di compositi pregiati (ad esempio nel settore aeronautico).
- *Matrici termoplastiche*: si utilizza ampiamente il *Nylon* (poliammidi $"PA6"$ o $"PA66"$) e trovano crescente diffusione i tecnopolimeri ad alte prestazioni, quali $"PEEK"$, $"PEI"$ e $"PPS"$.

== Risposta Meccanica del Manufatto Composito

Dal punto di vista costitutivo, la fibra considerata singolarmente esibisce un comportamento generalmente *fragile* (elastico lineare fino a rottura), mentre la matrice può presentare un comportamento sia *fragile* sia *duttile* a seconda della sua formulazione.

#nota[
Un manufatto realizzato in materiale composito presenta proprietà elastiche e resistenziali fortemente variabili in funzione della percentuale in volume (frazione volumetrica) di matrice e di fibra, nonché della direzione di applicazione del carico rispetto all'orientamento delle fibre. Al crescere della percentuale volumetrica di matrice, le proprietà meccaniche globali del manufatto decrescono notevolmente.
]

#include "figs/27-50_appunti-fig16.typ"
