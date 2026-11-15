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

#set heading(numbering: "1.")

#pagebreak()

// ============================================================================
// CODICE TYPST GENERATO DA GEMINI
// ============================================================================



// === Blocco_01_Slide_01-19 ===

= Introduzione al Metodo Semi-Inverso di de Saint Venant

L'andamento delle componenti di tensione su una sezione trasversale e la relazione matematica che le lega alle caratteristiche di sollecitazione (CdS) che le generano si ricavano mediante il *metodo semi-inverso di de Saint Venant*. Tale approccio si articola in cinque passaggi logici sequenziali:

+ *Ipotesi iniziale*: si definisce a priori l'espressione analitica del campo di spostamento della trave sottoposta alla specifica sollecitazione.
+ *Equazioni di congruenza*: si deriva il campo di spostamento ipotizzato per ottenere il corrispondente campo di deformazione.
+ *Equazioni costitutive del materiale*: si applica la legge elastica del materiale (legge di Hooke) al campo di deformazione, ricavando così il campo di tensione.
+ *Equazioni di equivalenza*: si impone la relazione integrale di equilibrio statico tra la componente di tensione agente sulla sezione e la caratteristica di sollecitazione che la genera.
+ *Determinazione dello stato tensionale*: combinando i risultati precedenti, si ottiene l'espressione finale della componente di tensione in funzione della caratteristica di sollecitazione.

= Sforzo Normale

== Campo di spostamento, deformazione e tensione

Applichiamo il procedimento di de Saint Venant a un elemento di trave rettilinea sottoposto esclusivamente a sforzo normale di trazione:

+ *Ipotesi iniziale (campo di spostamenti)*: una trave soggetta soltanto a sforzo normale di trazione subisce un allungamento assiale $u$ direttamente proporzionale alla coordinata longitudinale $x$, accompagnato da una contrazione trasversale lungo l'asse $y$:
  $ u(x) = k x $
  dove $k$ rappresenta una costante di proporzionalità.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig01.typ"

+ *Equazioni di congruenza*: derivando lo spostamento assiale rispetto alla coordinata $x$, si ottiene il campo di deformazione longitudinale corrispondente:
  $ epsilon_(x x) = (d u) / (d x) = k $

+ *Equazioni costitutive*: ipotizzando che il materiale sia elastico lineare, omogeneo e isotropo, il campo di tensione normale è legato al campo di deformazione dalla legge di Hooke:
  $ sigma_(x x) = E epsilon_(x x) $
  dove $E$ è il modulo di elasticità longitudinale (o modulo di Young). Sostituendo l'espressione della deformazione assiale $epsilon_(x x) = (d u) / (d x) = k$, la tensione assiale assume la forma:
  $ sigma_(x x) = k E = "cost" $
  La tensione normale $sigma_(x x)$ prodotta dallo sforzo normale presenta dunque una distribuzione costante (uniforme) sull'intera sezione trasversale della trave.

== Equazioni di equivalenza e distribuzione tensionale

Poiché l'elemento di trave è soggetto soltanto a sforzo normale, le caratteristiche di sollecitazione agenti sulla sezione sono:
$ N_x != 0, quad M_y = M_z = M_x = T_y = T_z = 0 $

+ *Equazione di equivalenza*: l'unica componente di tensione in grado di generare lo sforzo normale $N_x$ è la tensione normale $sigma_(x x)$. Imponendo l'equivalenza alla traslazione lungo l'asse $x$ sull'area $A$ della sezione trasversale si ha:
  $ N_x = integral_A sigma_(x x) d A = integral_A k E d A = k E A $
  da cui si ricava il prodotto costante $k E = N_x / A$.

+ *Distribuzione delle tensioni*: sostituendo il valore di $k E$ nell'espressione costitutiva, si ottiene la distribuzione uniforme di tensione normale $sigma_(x x)$ generata dallo sforzo normale $N_x$:
  $ sigma_(x x) = N_x / A $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig02.typ"

La sezione trasversale si sposta dunque assialmente mantenendosi piana e parallela a se stessa, essendo soggetta al solo sforzo normale $N = N_x$.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig03.typ"

#nota[
  *Osservazione sul punto di applicazione dello sforzo normale*:
  Richiamiamo le equazioni di equivalenza relative ai momenti flettenti $M_z$ e $M_y$, i quali nel caso di sforzo normale puro sono entrambi nulli (essendo presente soltanto $N_x$):
  $ integral_A -sigma_(x x) y d A = M_z = 0, quad integral_A sigma_(x x) z d A = M_y = 0 $
  Dalla geometria delle aree sappiamo che i momenti statici della sezione rispetto agli assi $z$ e $y$ sono definiti rispettivamente come:
  $ integral_A y d A = S_z, quad integral_A z d A = S_y $
  Poiché la tensione $sigma_(x x)$ è costante e diversa da zero, portandola fuori dal segno di integrale si deduce che le relazioni di equivalenza alla rotazione sono soddisfatte se e solo se i momenti statici $S_z$ e $S_y$ sono nulli, ovvero se gli assi $y$ e $z$ coincidono con gli *assi baricentrici* della sezione trasversale. Lo sforzo normale centrato deve quindi essere applicato esattamente nel baricentro della sezione.
]

= Flessione

== Definizioni fondamentali e cinematica qualitativa

La *flessione pura* è una condizione di carico per cui, nelle sezioni trasversali della trave, l'unica caratteristica di sollecitazione presente è il momento flettente. A seconda dell'orientamento della sollecitazione rispetto alla geometria della sezione, si distinguono i seguenti regimi:
- *Flessione retta*: sulla generica sezione agisce un momento flettente contenuto in un piano che contiene a sua volta uno degli assi principali d'inerzia della sezione ($y$ oppure $z$).
- *Flessione deviata*: il piano del momento flettente non contiene alcuno degli assi principali d'inerzia.
- *Flessione semplice*: la sollecitazione di flessione è accompagnata anche da sollecitazioni di taglio.

Consideriamo una *trave rettilinea a sezione costante*, caricata alle estremità da due *momenti flettenti* $M_f$ uguali e contrari. I momenti flettenti agiscono nel *piano di sollecitazione* $pi$, il quale contiene l'asse geometrico longitudinale $x$ e l'*asse di sollecitazione* $y$. Assumiamo inoltre che la sezione trasversale $S$ sia *simmetrica* rispetto all'asse $y$ (definito dall'intersezione tra il piano di sollecitazione $pi$ e il piano della sezione stessa).

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig04.typ"

Per effetto dell'applicazione dei momenti flettenti, la trave si inflette:
- L'asse geometrico si dispone secondo una curva detta *linea elastica*, che per una trave a sezione costante soggetta a momento flettente $M_f$ costante è approssimabile con un arco di circonferenza.
- La linea elastica giace nel *piano di inflessione* che, grazie alla simmetria della sezione, coincide esattamente con il piano di sollecitazione $pi$.
- Nella parte *convessa* (inferiore) della trave le fibre longitudinali si allungano, mentre nella parte *concava* (superiore) le fibre si accorciano: la sezione risulta quindi in parte tesa e in parte compressa.
- Le fibre che mantengono invariata la propria lunghezza iniziale sono quelle disposte sulla retta $n = z$, denominata *asse neutro*, che risulta perpendicolare all'asse di sollecitazione $y$. Nei punti appartenenti all'asse neutro $z$, la componente di tensione normale generata dalla flessione è pertanto nulla.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig05.typ"

== Momento flettente nel piano $x y$: trattazione di de Saint Venant

Nello studio della flessione si fa sempre riferimento agli *assi principali d'inerzia* $z$ e $y$ della sezione. Sviluppiamo la trattazione secondo il metodo semi-inverso per un momento flettente agente nel piano $x y$:

+ *Ipotesi iniziale (campo di spostamenti)*: poiché la rotazione della sezione avviene nel piano $x y$ attorno all'asse neutro $z$, lo spostamento assiale $u$ di un punto generico della sezione trasversale dipende linearmente dalla sua distanza $y$ dall'origine degli assi centrali principali d'inerzia e dall'angolo di rotazione $alpha_z$:
  $ u = -alpha_z y $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig06.typ"

+ *Equazioni di congruenza*: derivando lo spostamento assiale rispetto a $x$, si ottiene il campo di deformazione longitudinale:
  $ epsilon_(x x) = (d u) / (d x) = -(d alpha_z) / (d x) y = -k_z y $
  dove $k_z = (d alpha_z) / (d x)$ è la derivata della rotazione $alpha_z$ rispetto all'ascissa $x$, ossia la *curvatura* della trave conseguente all'applicazione del momento flettente.

+ *Equazioni costitutive*: ipotizzando il materiale elastico lineare, omogeneo e isotropo, la legge di Hooke fornisce:
  $ sigma_(x x) = E epsilon_(x x) = -E k_z y $
  La tensione assiale $sigma_(x x)$ dovuta alla flessione ha quindi una *distribuzione lineare* lungo l'altezza della sezione trasversale della trave.

=== Interpretazione geometrico-fisica della congruenza

L'equazione di congruenza $epsilon_(x x) = -k_z y$ può essere ricavata anche in modo più diretto ("fisico") considerando un concio elementare di trave di lunghezza iniziale $l$ e osservando una fibra posta a distanza $y$ dall'asse neutro.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig07.typ"

Per definizione, la deformazione longitudinale della fibra $A B$ si scrive come:
$ epsilon_(x x) = (Delta l) / l $
Il rapporto $(Delta l) / l$ si ricava per similitudine tra i settori circolari ("triangoli" curvilinei simili) $O A B$ e $O C D$. Tenendo conto che la fibra $A B$ mostrata nella parte tesa inferiore si trova a coordinata $y$ negativa rispetto al verso dell'asse $y$ diretto verso il centro di curvatura $O$, vale la proporzione:
$ (l + Delta l) / l = (R - y) / R = 1 - y / R arrow.double (Delta l) / l = - y / R $
La deformazione assiale si riscrive quindi come:
$ epsilon_(x x) = - 1 / R y $
Riconoscendo che il reciproco del raggio di curvatura $1 / R$ coincide con la curvatura $k_z$ della trave, si ritrova esattamente l'equazione di congruenza:
$ epsilon_(x x) = -k_z y $

=== Equazione di equivalenza e Formula di Navier

Poiché la trave è soggetta soltanto a flessione retta nel piano $x y$, le caratteristiche di sollecitazione sono:
$ M_z != 0, quad N_x = M_y = M_x = T_y = T_z = 0 $

+ *Equazione di equivalenza*: l'unica componente di tensione che può generare il momento flettente $M_z$ è la tensione normale $sigma_(x x)$. L'equilibrio alla rotazione attorno all'asse $z$ impone:
  $ integral_A -sigma_(x x) y d A = M_z $
  Sostituendo l'espressione costitutiva $sigma_(x x) = -E k_z y$ all'interno dell'integrale, si ottiene:
  $ M_z = integral_A E k_z y^2 d A = E k_z integral_A y^2 d A = E k_z I_z $
  dove $I_z = integral_A y^2 d A$ è il *momento d'inerzia* della sezione trasversale calcolato rispetto all'asse principale $z$.

+ *Distribuzione lineare delle tensioni (Formula di Navier)*: ricavando la curvatura $k_z = M_z / (E I_z)$ e sostituendola nella legge di Hooke $sigma_(x x) = -E k_z y$, si giunge alla relazione fondamentale della flessione retta:
  $ sigma_(x x) = -E M_z / (E I_z) y = - M_z / I_z y $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig08.typ"

In conclusione, la sezione soggetta al solo momento flettente $M_z$ positivo si inflette comprimendo le fibre superiori ($y > 0$, dove $sigma_(x x) < 0$) e tendendo le fibre inferiori ($y < 0$, dove $sigma_(x x) > 0$) rispetto all'asse neutro $z$, con un caratteristico diagramma tensionale lineare a farfalla.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig09.typ"


// === Blocco_02_Slide_20-37 ===

#nota[
  *Osservazione sulla baricentricità dell'asse neutro (momento flettente nel piano $x y$)*:
  Richiamiamo l'equazione di equivalenza alla traslazione lungo l'asse $x$, tenendo conto che lo sforzo normale $N_x$ è nullo (poiché agisce soltanto il momento flettente $M_z$):
  $ integral_A sigma_(x x) d A = N_x = 0 $
  Sostituendo l'espressione della tensione $sigma_(x x) = -E k_z y$, la condizione di equilibrio si riscrive come:
  $ -E k_z integral_A y d A = -E k_z S_z = 0 $
  Poiché la tensione $sigma_(x x)$ è diversa da zero ($E k_z != 0$), la relazione precedente è soddisfatta soltanto se il momento statico $S_z$ è nullo, ossia se l'asse $z$ passa per il baricentro della sezione. L'*asse neutro* della sezione (asse $z$) in flessione pura è quindi necessariamente anche un *asse baricentrico*.
]

== Momento flettente nel piano $x z$

Nel caso in cui sulla trave agisca il solo momento flettente $M_y$ (contenuto nel piano $x z$), sviluppando il metodo semi-inverso in modo del tutto analogo a quanto visto per il piano $x y$, si giunge all'espressione della distribuzione lineare della corrispondente tensione normale di flessione:
$ sigma_(x x) = M_y / I_y dot z $
dove $I_y = integral_A z^2 d A$ rappresenta il momento d'inerzia della sezione rispetto all'asse principale baricentrico $y$.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig10.typ"

== Momento flettente su sezione generica e moduli di resistenza

Secondo la convenzione di segno adottata per il concio elementare di trave, il momento flettente $M_z$ è considerato positivo quando tende le fibre inferiori ($y < 0$) e comprime quelle superiori ($y > 0$):
$ sigma_(x x) = - M_z / I_z y $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig11.typ"

Nel generico punto della sezione trasversale, la tensione normale $sigma_(x x)$ di flessione è direttamente proporzionale alla distanza $y$ dall'asse neutro $z$. Pertanto, i punti più sollecitati della sezione sono quelli situati alla massima distanza dall'asse neutro:
- Indichiamo con $|y'_"max"|$ la distanza massima dall'asse neutro nella zona compressa (punto estremo superiore $A$).
- Indichiamo con $|y''_"max"|$ la distanza massima dall'asse neutro nella zona tesa (punto estremo inferiore $B$).

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig12.typ"

Le tensioni normali massime, espresse in *valore assoluto*, valgono rispettivamente:
$ |sigma'_"max"| = |M_z| / I_z |y'_"max"|, quad |sigma''_"max"| = |M_z| / I_z |y''_"max"| $

Definiamo i *moduli di resistenza a flessione* della sezione trasversale rispetto all'asse $z$ come il rapporto tra il momento d'inerzia assiale e le distanze estreme dall'asse neutro:
$ W'_z = I_z / |y'_"max"|, quad W''_z = I_z / |y''_"max"| $
Mediante tali grandezze geometriche, le tensioni massime in *valore assoluto* si riscrivono in forma compatta come:
$ |sigma'_"max"| = |M_z| / W'_z, quad |sigma''_"max"| = |M_z| / W''_z $

#nota[
  Nel caso particolare di una *sezione simmetrica* rispetto all'asse neutro $z$, le distanze estreme coincidono ($|y'_"max"| = |y''_"max"| = y_"max"$), da cui segue l'uguaglianza dei moduli di resistenza ($W'_z = W''_z = W_z$). Di conseguenza, le tensioni massime di trazione e di compressione risultano uguali in modulo e di segno opposto.
]

=== Esempi notevoli di sezioni simmetriche

Per una sezione simmetrica, il valore assoluto della tensione massima vale in generale:
$ |sigma_"max"| = |M_z| / I_z y_"max" = |M_z| / W_z $

+ *Sezione rettangolare* (di base $b$ e altezza $h$, con assi $z$ e $y$ baricentrici):
  $ I_z = (b h^3) / 12, quad y_"max" = h / 2, quad W_z = I_z / y_"max" = (b h^2) / 6 $
  Sostituendo nella formula di Navier si ricava la tensione massima:
  $ |sigma_"max"| = 6 |M_z| / (b h^2) $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig13.typ"

+ *Sezione circolare piena* (di diametro $D$, con assi $z$ e $y$ baricentrici):
  $ I_z = (pi D^4) / 64, quad y_"max" = D / 2, quad W_z = I_z / y_"max" = (pi D^3) / 32 $
  Sostituendo si ottiene la tensione massima:
  $ |sigma_"max"| = 32 / (pi D^3) |M_z| $

+ *Sezione circolare cava* (di diametro esterno $D$ e diametro interno $d$, con assi $z$ e $y$ baricentrici):
  $ I_z = pi / 64 (D^4 - d^4), quad y_"max" = D / 2, quad W_z = pi / 32 (D^4 - d^4) / D $
  Sostituendo si ricava la tensione massima:
  $ |sigma_"max"| = (32 D) / (pi (D^4 - d^4)) |M_z| $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig14.typ"

= Flessione Simultanea nei Piani $x y$ e $x z$ (Flessione Deviata)

== Sovrapposizione degli effetti ed equazione dell'asse neutro

Se sulla sezione trasversale agiscono simultaneamente i momenti flettenti $M_z$ e $M_y$, per la linearità del problema elastico la distribuzione complessiva di tensione normale $sigma_(x x)$ si ottiene applicando il *principio di sovrapposizione degli effetti* (formula binomia di Navier):
$ sigma_(x x) = - M_z / I_z y + M_y / I_y z $

In questa configurazione, l'*asse neutro* non coincide più con uno degli assi coordinati ($z$ o $y$). La sua equazione si determina *imponendo* la condizione di tensione nulla $sigma_(x x) = 0$, dalla quale si ricava l'inclinazione $beta$ dell'asse neutro rispetto all'asse $y$:
$ 0 = - M_z / I_z y + M_y / I_y z arrow.double tan beta = z / y = M_z / M_y dot I_y / I_z $
dove $beta$ indica l'angolo di inclinazione dell'asse neutro misurato a partire dall'asse $y$.

D'altra parte, il *momento flettente totale* (risultante) ha modulo dato dalla *somma vettoriale* delle due componenti ortogonali:
$ M = sqrt(M_z^2 + M_y^2) $
e l'asse attorno a cui agisce il momento risultante forma con l'asse $y$ un angolo di inclinazione $theta$ pari a:
$ tan theta = M_z / M_y $

Confrontando le due inclinazioni $beta$ e $theta$, si distinguono due regimi fondamentali:
- *Momenti d'inerzia uguali ($I_z = I_y$)*: se la sezione trasversale possiede momenti d'inerzia principali uguali, l'inclinazione dell'asse neutro rispetto all'asse $y$ coincide esattamente con l'orientazione del vettore momento flettente risultante:
  $ tan beta = M_z / M_y = tan theta arrow.double beta = theta $
  L'asse attorno a cui ruota la sezione (asse neutro) è parallelo a quello rispetto a cui agisce il momento flettente totale (e quindi perpendicolare all'asse di sollecitazione), con un'orientazione che dipende unicamente dal rapporto tra $M_z$ e $M_y$. In tal caso *la flessione è sempre retta*.
- *Momenti d'inerzia diversi ($I_z != I_y$)*: se i momenti principali d'inerzia sono differenti, l'inclinazione dell'asse neutro differisce dall'orientazione del momento risultante:
  $ tan beta = M_z / M_y dot I_y / I_z != tan theta $
  L'asse neutro attorno a cui ruota la sezione non è più parallelo all'asse del momento flettente totale e la sua giacitura dipende sia dai momenti applicati $M_z$ e $M_y$, sia dalle caratteristiche geometriche ($I_y / I_z$) della sezione. Questo comportamento prende il nome di *flessione deviata*.

== Analisi di una trave a mensola soggetta a flessione deviata

Nella flessione deviata, l'*asse neutro* e l'*asse di sollecitazione non sono tra loro perpendicolari* e non coincidono con gli assi principali d'inerzia ($z$ e $y$) della sezione. Per dimostrarlo concretamente, consideriamo una trave a mensola di lunghezza $l$, a sezione rettangolare, soggetta all'estremità libera a un carico concentrato $P$ applicato nel baricentro e inclinato di un angolo $theta$ rispetto all'asse $z$.

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig15.typ"

Scomponendo il carico $P$ lungo gli assi principali d'inerzia, le caratteristiche di sollecitazione flettenti nella sezione d'incastro valgono:
$ M_z = -P sin theta dot l, quad M_y = P cos theta dot l $
Per sovrapposizione degli effetti, la tensione normale totale nella sezione d'incastro è data dalla somma dei contributi generati da $M_z$ e da $M_y$:
$ sigma_(x x) = sigma_(x x, M_z) + sigma_(x x, M_y) = - M_z / I_z y + M_y / I_y z = (P l sin theta) / I_z y + (P l cos theta) / I_y z $

Imponendo la condizione di annullamento della tensione $sigma_(x x) = 0$ per individuare l'asse neutro, si ottiene:
$ - M_z / I_z y + M_y / I_y z = 0 arrow.double z = M_z / M_y dot I_y / I_z y $
Il coefficiente angolare di tale retta fornisce la tangente dell'angolo d'inclinazione $beta$ dell'asse neutro rispetto all'asse $y$:
$ tan beta = M_z / M_y dot I_y / I_z = (P l sin theta) / (P l cos theta) dot I_y / I_z = tan theta dot I_y / I_z $
Al contempo, il momento flettente totale $M = sqrt(M_z^2 + M_y^2)$ presenta un'inclinazione $theta$ rispetto all'asse $z$ (che equivale all'angolo formato dall'asse di sollecitazione con l'asse $y$) definita da:
$ tan theta = M_z / M_y $

#include "figs/08_SOLLECITAZIONI-SEMPLICI---SFORZO-NORMALE-e-FLESSIONE_appunti-fig16.typ"

Poiché per una sezione rettangolare con $h > b$ risulta $I_z > I_y$, si ha $beta > theta$: l'asse neutro si avvicina all'asse principale avente momento d'inerzia maggiore (asse $z$). Ciò dimostra sia graficamente sia analiticamente che l'asse neutro e l'asse di sollecitazione non sono tra loro perpendicolari e non coincidono con gli assi principali d'inerzia della sezione.

#nota[
  *Condizione di assenza di flessione deviata*:
  Dalla relazione generale:
  $ tan beta = M_z / M_y dot I_y / I_z = tan theta dot I_y / I_z $
  si deduce che l'asse neutro e l'asse di sollecitazione sono tra loro perpendicolari ($beta = theta$) se e solo se $I_z = I_y$, condizione che si verifica per le *sezioni circolari* (piene o cave) e *quadrate* (o poligonali regolari). In tali sezioni, qualunque sia l'inclinazione del carico flettente, *non si verifica mai flessione deviata*.
]
