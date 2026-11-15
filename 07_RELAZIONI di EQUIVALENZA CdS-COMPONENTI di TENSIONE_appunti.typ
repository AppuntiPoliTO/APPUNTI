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



// === Blocco_01_Slide_01-18 ===

= Relazioni di equivalenza tra caratteristiche di sollecitazione e componenti di tensione

== Ipotesi di lavoro ed equilibrio dei corpi

Lo studio della meccanica strutturale e della teoria dell'elasticità si fonda su quattro ipotesi fondamentali relative alla natura del materiale e del corpo solido in esame:

- *Continuità*: il corpo riempie in modo continuo tutto il volume a esso attribuito, trascurando la struttura discreta o corpuscolare della materia. Poiché la teoria dell'elasticità è una teoria macroscopica, questa ipotesi consente di applicare gli strumenti dell'analisi infinitesimale.
- *Perfetta elasticità*: al cessare dell'azione delle forze esterne, i corpi riassumono esattamente la loro forma iniziale senza deformazioni residue.
- *Omogeneità*: le proprietà meccaniche del materiale sono costanti in ogni punto e non dipendono dalle dimensioni dell'elemento di volume preso in esame.
- *Isotropia*: le proprietà del materiale sono identiche in tutte le direzioni dello spazio attorno al punto considerato.

Consideriamo un corpo solido in equilibrio statico sotto l'azione di un sistema di forze esterne qualsiasi. Sezionando idealmente il corpo con un piano arbitrario di traccia $S$, esso viene diviso in due parti distinte $A$ e $B$. Ciascuna delle due porzioni deve trovarsi singolarmente in equilibrio sotto l'azione combinata di due sistemi di forze:
1. Le *forze generalizzate esterne* (costituite dai carichi applicati e dalle reazioni vincolari) che agiscono direttamente sulla parte in esame.
2. Le *forze generalizzate interne* (dette *caratteristiche di sollecitazione*), pensate distribuite con continuità sulla sezione trasversale $S$, che rappresentano l'azione mutua esercitata dall'altra parte di corpo su quella in esame.

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig01.typ"

Il sistema di forze esterne applicate provoca in ogni punto del corpo una *condizione di sollecitazione* che, se eccessiva, può portare al cedimento strutturale. La condizione di equilibrio statico globale impone che il corpo risulti *equilibrato in ogni sua sezione trasversale*. Di conseguenza, sulla generica sezione trasversale di normale coincidente con l'asse $x$, le azioni interne — sintetizzate nelle caratteristiche di sollecitazione: sforzo normale $N_x$, sforzi di taglio $T_y$ e $T_z$, momenti flettenti $M_y$ e $M_z$, e momento torcente $M_x$ — devono mantenere in equilibrio la sezione stessa.

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig02.typ"

== Il vettore tensione e lo stato tensionale puntuale

A partire dalle equazioni cardinali della statica, su una generica sezione di area $A$ (o su una sua porzione elementare d'intorno $d A$ centrata nel punto $P$, avente versore normale esterno $arrow(n)$) è possibile determinare la forza risultante $arrow(R)$ e il momento risultante $arrow(M)$ associati alla distribuzione continua delle forze interne.

Per descrivere rigorosamente lo *stato di sollecitazione* nel *generico punto* $P$ del corpo è necessario passare da grandezze integrali a *grandezze puntuali*. Facendo tendere a zero l'area $d A$ nell'intorno di $P$ (operazione lecita grazie all'ipotesi di mezzo continuo, senza risentire della natura corpuscolare della materia) e assumendo che per l'elemento infinitesimo il momento specifico si annulli al limite:

$ lim_(d A -> 0) (Delta arrow(M)) / (d A) = 0 $ // INCERTO: dedotto dal contesto

si definisce il *vettore tensione* $arrow(t)$ nel generico punto $P$ relativo all'area infinitesima $d A$ come:

$ arrow(t) = lim_(d A -> 0) (Delta arrow(R)) / (d A) = (d arrow(R)) / (d A) $ // INCERTO: dedotto dal contesto

In generale, il vettore tensione $arrow(t)$ non risulta parallelo alla normale $arrow(n)$ alla superficie infinitesima, ed è funzione sia della posizione del punto $P$ sia dell'orientazione della superficie stessa individuata dal versore normale $arrow(n)$:

$ arrow(t) = arrow(t)(P, arrow(n)) $

Su ogni superficie elementare $d A$ passante per $P$, il vettore tensione $arrow(t)$ può essere scomposto secondo tre direzioni mutue ortogonali:
- Una componente parallela alla normale $arrow(n)$ in $P$ alla superficie, denominata *tensione normale* $sigma$.
- Due componenti appartenenti al piano tangente alla superficie (e dunque perpendicolari alla normale $arrow(n)$), denominate *tensioni tangenziali* $tau$.

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig03.typ"

L'*equilibrio* globale deve essere *garantito anche in termini di tensioni* agenti sulla generica sezione trasversale di area $A$ del solido. Integrando il vettore tensione sull'intera area della sezione trasversale, devono essere soddisfatte le equazioni di equivalenza statica con la forza risultante $arrow(R)$ e il momento risultante $arrow(M)$ (calcolato rispetto al polo considerato tramite il vettore posizione $arrow(r)$):

$ cases(
  integral_A arrow(t) d A = arrow(R),
  integral_A arrow(r) times arrow(t) d A = arrow(M)
) $ // INCERTO: dedotto dal contesto

=== Componenti speciali di tensione: il cubetto elementare

In generale, lo *stato di tensione* nel generico *punto* $P$ è completamente *noto quando* si conoscono le componenti del vettore tensione agenti su 3 superfici infinitesime mutue ortogonali passanti per $P$.

Con queste tre superfici infinitesime ortogonali agli assi coordinati $x, y, z$, immaginiamo di isolare un *cubetto elementare* centrato nell'intorno del generico punto $P$. Su ciascuna delle facce del cubetto elementare agiscono una *tensione normale* $sigma$ e due *tensioni tangenziali* $tau$, ciascuna identificata univocamente da *due pedici*:
- Il *primo pedice* indica la faccia su cui agisce la componente di tensione, individuata tramite la direzione della normale uscente alla faccia stessa ($x, y, z$).
- Il *secondo pedice* indica la direzione dell'asse coordinato lungo cui è diretta la componente di tensione in esame ($x, y, z$).

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig04.typ"

== Il solido di de Saint Venant

I primi studi sistematici sull'elasticità dei corpi risalgono alla scuola francese di fine Settecento, i cui risultati più rilevanti furono conseguiti da *Barré de Saint Venant* (spesso abbreviato in *de St Venant*), le cui ipotesi resero possibile la formulazione della moderna *teoria tecnica delle travi*.

L'approccio seguito da de Saint Venant consistette nell'introdurre alcune *ipotesi semplificative* sul problema elastico tridimensionale che rendessero la soluzione analiticamente trattabile ma al contempo fisicamente valida per le applicazioni ingegneristiche. Lo studio sviluppato consentì di determinare le *relazioni* esatte tra le *caratteristiche di sollecitazione* e le componenti dello *stato di tensione* agenti nei punti della generica sezione trasversale di un corpo prismatico, detto appunto *solido di de Saint Venant*.

#nota[
*Ipotesi fondamentali del solido di de Saint Venant (teoria delle travi):*
1. Materiale *lineare elastico, omogeneo e isotropo*.
2. *Geometria cilindrica* (prismatica), avente le dimensioni trasversali della sezione molto minori rispetto alla lunghezza assiale del cilindro.
3. Ciascuna sezione normale all'asse longitudinale del cilindro è *retta e identica* alla sezione generatrice.
4. Solido libero nello spazio e in *equilibrio statico* sotto l'azione del sistema di forze esterne applicate (carichi e reazioni).
5. *Forze di volume nulle* e forze di superficie applicate *esclusivamente sulle basi* di estremità del cilindro (la superficie laterale o mantello del solido di de Saint Venant è completamente *scarica*).
]

=== Componenti di tensione nel solido di de Saint Venant

Consideriamo il solido cilindrico di de Saint Venant disponendo l'asse longitudinale del cilindro allineato con l'asse coordinato $x$, mentre gli assi $y$ e $z$ giacciono nel piano della sezione trasversale.

Poiché per ipotesi la superficie laterale cilindrica del solido è scarica e le forze di volume sono nulle, de Saint Venant ipotizzò che le componenti di tensione normali agli assi trasversali e le tensioni tangenziali agenti nei piani paralleli all'asse $x$ siano identicamente nulle in tutto il solido:

$ sigma_(z z) = 0, quad sigma_(y y) = 0, quad tau_(z y) = tau_(y z) = 0 $

Di conseguenza, le *uniche componenti di tensione* non nulle presenti sulla generica sezione trasversale di normale $x$ sono la tensione normale assiale $sigma_(x x)$ e le due componenti di tensione tangenziale $tau_(x y)$ e $tau_(x z)$.

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig05.typ"

== Relazioni di equivalenza statica sulla sezione

Analizziamo ora singolarmente il legame integrale che intercorre tra ciascuna delle sei caratteristiche di sollecitazione interne e le tre componenti di tensione non nulle ($sigma_(x x), tau_(x y), tau_(x z)$) agenti sull'area elementare $d A$ della sezione trasversale di area complessiva $A$.

=== Sollecitazioni associate alla tensione normale $sigma_(x x)$: $N_x$, $M_z$, $M_y$

1. *Sforzo normale $N_x$*: considerando l'azione del solo sforzo normale $N_x$, l'unica componente di tensione in grado di generarlo per traslazione lungo l'asse del cilindro è la tensione normale $sigma_(x x)$, che agisce perpendicolarmente alla sezione trasversale nella medesima direzione $x$. La forza elementare su $d A$ vale $sigma_(x x) d A$, da cui si ottiene la prima *Relazione di Equivalenza*:

$ integral_A sigma_(x x) d A = N_x $

2. *Momento flettente $M_z$*: considerando l'azione del solo momento flettente $M_z$ (vettore momento diretto lungo l'asse $z$), l'unica componente di tensione che può generarlo è ancora la tensione normale $sigma_(x x)$, poiché è l'unica forza diretta lungo $x$ che sulla sezione trasversale possiede braccio $y$ rispetto all'asse $z$. Tenendo conto della regola della mano destra (un'area $d A$ a ordinata $y > 0$ soggetta a $sigma_(x x) > 0$ produce un momento orario opposto al verso positivo di $z$), la *Relazione di Equivalenza* risulta:

$ integral_A -sigma_(x x) y d A = M_z $

3. *Momento flettente $M_y$*: analogamente, per il momento flettente $M_y$ (diretto lungo l'asse $y$), l'unica componente di tensione capace di produrre momento attorno all'asse $y$ è la tensione normale $sigma_(x x)$ grazie al braccio $z$ rispetto all'asse $y$ stesso. Poiché una forza diretta lungo $+x$ con braccio $z > 0$ genera una rotazione concorde con l'asse $+y$, la *Relazione di Equivalenza* si scrive:

$ integral_A sigma_(x x) z d A = M_y $

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig06.typ"

=== Sollecitazioni associate alle tensioni tangenziali $tau_(x z)$ e $tau_(x y)$: $T_z$, $T_y$, $M_x$

1. *Sforzo di taglio $T_z$*: considerando l'azione del solo sforzo di taglio $T_z$, l'unica componente di tensione che può generarlo è la tensione tangenziale $tau_(x z)$, in quanto agisce sul piano della sezione trasversale esattamente nella direzione e nel verso dell'asse $z$. Integrando sull'area della sezione si ottiene la *Relazione di Equivalenza*:

$ integral_A tau_(x z) d A = T_z $

2. *Sforzo di taglio $T_y$*: in modo del tutto duale, considerando l'azione del solo sforzo di taglio $T_y$, l'unica componente di tensione che agisce sulla sezione trasversale lungo la direzione verticale $y$ è la tensione tangenziale $tau_(x y)$. La corrispondente *Relazione di Equivalenza* è:

$ integral_A tau_(x y) d A = T_y $

3. *Momento torcente $M_x$*: consideriamo infine l'azione del solo momento torcente $M_x$ (diretto lungo l'asse longitudinale $x$ della trave). Le uniche componenti di tensione in grado di generarlo sono quelle che giacciono nel piano della sezione trasversale e risultano dotate di braccio rispetto al polo sull'asse $x$, ovvero entrambe le tensioni tangenziali $tau_(x y)$ e $tau_(x z)$. Sull'area elementare $d A$ di coordinate $(y, z)$:
  - la forza tangenziale verticale $tau_(x y) d A$ ha braccio $z$ rispetto all'asse $x$ e produce un momento negativo (orario rispetto a $+x$), pari a $-tau_(x y) z d A$;
  - la forza tangenziale orizzontale $tau_(x z) d A$ ha braccio $y$ rispetto all'asse $x$ e produce un momento positivo (antiorario rispetto a $+x$), pari a $+tau_(x z) y d A$.

Sommando i due contributi ed estendendo l'integrale a tutta la sezione $A$, si ottiene la *Relazione di Equivalenza* per la torsione:

$ integral_A (-tau_(x y) z + tau_(x z) y) d A = M_x $

#include "figs/07_RELAZIONI-di-EQUIVALENZA-CdS-COMPONENTI-di-TENSIONE_appunti-fig07.typ"

#nota[
*Riepilogo delle 6 Relazioni di Equivalenza nel solido di de Saint Venant:*
$ cases(
  N_x = integral_A sigma_(x x) d A,
  M_z = integral_A -sigma_(x x) y d A,
  M_y = integral_A sigma_(x x) z d A
) quad "e" quad cases(
  T_z = integral_A tau_(x z) d A,
  T_y = integral_A tau_(x y) d A,
  M_x = integral_A (-tau_(x y) z + tau_(x z) y) d A
) $
Si osserva il completo disaccoppiamento statico: lo sforzo normale $N_x$ e i momenti flettenti $M_y, M_z$ dipendono esclusivamente dalla distribuzione della tensione normale $sigma_(x x)$, mentre gli sforzi di taglio $T_y, T_z$ e il momento torcente $M_x$ dipendono esclusivamente dalle tensioni tangenziali $tau_(x y), tau_(x z)$.
]
