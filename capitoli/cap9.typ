#import "../template.typ": *
#import "@preview/cetz:0.3.4"
#show: conf

= Equazione globale della meccanica dei fluidi

== Introduzione e motivazione fisica

Nello studio del moto laminare in una condotta circolare (moto di Hagen-Poiseuille), risolvendo le equazioni differenziali del moto si ottiene un profilo di velocità assiale $u_z (r)$ parabolico e una distribuzione lineare degli sforzi tangenziali viscosi $tau_(r z) (r)$.
In generale, la forza totale esercitata da un fluido su un corpo (o su una parete solida di superficie $S_w$ e normale $arrow(n)$) è data dall'integrale superficiale del vettore degli sforzi:

$
arrow(F) = integral_(S_w) bold(sigma) dot arrow(n) dif S_w quad "con" quad sigma_(i j) = -p delta_(i j) + tau_(i j)
$

Tuttavia, il calcolo diretto di questo integrale richiede di conoscere punto per punto la distribuzione della pressione $p$ e dei gradienti di velocità (da cui dipendono gli sforzi viscosi $tau_(i j)$) lungo tutta la parete. Nella maggior parte dei problemi applicativi, risolvere analiticamente le equazioni di Navier-Stokes per ottenere tali informazioni locali è impossibile, e anche per via numerica risulta estremamente oneroso.

Per aggirare questa difficoltà si ricorre alla *formulazione integrale del bilancio della quantità di moto* (detta *equazione globale della meccanica dei fluidi*). Questo approccio permette di determinare la forza scambiata tra fluido e parete non tramite un'integrazione locale diretta sulla superficie solida, bensì *come residuo* di un bilancio globale su un opportuno volume di controllo, conoscendo unicamente il comportamento del fluido sulle sezioni di ingresso e di uscita.

== Derivazione dell'equazione globale

Partiamo dall'equazione di Cauchy (bilancio differenziale della quantità di moto) in presenza del campo gravitazionale:

$
rho (D u_i) / (D t) &= rho g_i + partial / (partial x_j) sigma_(i j) \
sigma_(i j) &= -p delta_(i j) + tau_(i j)
$

Per un fluido newtoniano incomprimibile, il tensore degli sforzi viscosi è:

$
tau_(i j) = 2 mu D_(i j) quad "con" quad D_(i j) = 1/2 ( (partial u_i) / (partial x_j) + (partial u_j) / (partial x_i) )
$


 Prendiamo il termine inerziale a primo membro, ovvero la derivata materiale della velocità moltiplicata per la densità:
$ rho (D u_i) / (D t) = rho (partial u_i) / (partial t) + rho u_j (partial u_i) / (partial x_j) $

Per riscriverlo in forma conservativa, applichiamo la regola di derivazione del prodotto ai due termini. Ricordiamo infatti che:
$ partial / (partial t) (rho u_i) = rho (partial u_i) / (partial t) + u_i (partial rho) / (partial t) arrow.r.double rho (partial u_i) / (partial t) = partial / (partial t) (rho u_i) - u_i (partial rho) / (partial t) $

E analogamente per il termine convettivo:
$ partial / (partial x_j) (rho u_i u_j) = rho u_j (partial u_i) / (partial x_j) + u_i partial / (partial x_j) (rho u_j) arrow.r.double rho u_j (partial u_i) / (partial x_j) = partial / (partial x_j) (rho u_i u_j) - u_i partial / (partial x_j) (rho u_j) $

Sostituiamo ora queste due espressioni nella nostra equazione di partenza:
$ rho (D u_i) / (D t) = partial / (partial t) (rho u_i) - u_i (partial rho) / (partial t) + partial / (partial x_j) (rho u_i u_j) - u_i partial / (partial x_j) (rho u_j) $

Raccogliamo a fattor comune $-u_i$ tra il secondo e il quarto termine a destra dell'uguale:
$ rho (D u_i) / (D t) = partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j) - u_i ( (partial rho) / (partial t) + partial / (partial x_j) (rho u_j) ) $

Sfruttiamo ora l'equazione di continuità in forma generale (che per un fluido incomprimibile a densità costante $rho = "cost"$ si riduce a $(partial u_j) / (partial x_j) = 0$):
$ (partial rho) / (partial t) + partial / (partial x_j) (rho u_j) = 0 $

Sostituendo questo risultato nell'equazione precedente, il termine tra parentesi si annulla:
$ rho (D u_i) / (D t) = partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j) - u_i underbrace(( (partial rho) / (partial t) + partial / (partial x_j) (rho u_j) ), = 0) $

Otteniamo infine la forma conservativa cercata:
$ rho (D u_i) / (D t) = partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j) $
Sostituendo nell'equazione del moto, portando tutti i termini a primo membro e integrando su un volume di controllo fisso $V$ delimitato da una superficie chiusa $S$ (con normale esterna uscente $n_j$):

$
integral_V partial / (partial t) (rho u_i) dif V + integral_V partial / (partial x_j) (rho u_i u_j) dif V - integral_V partial / (partial x_j) sigma_(i j) dif V - integral_V rho g_i dif V = 0
$

Applicando il teorema della divergenza di Gauss ($integral_V partial / (partial x_j) F_(i j) dif V = integral_S F_(i j) n_j dif S$) ai due termini sotto il segno di derivata spaziale e cambiando di segno l'intera equazione, otteniamo l'equazione globale della meccanica dei fluidi:

$
underbrace(integral_V rho g_i dif V, arrow(G)) + underbrace(integral_S sigma_(i j) n_j dif S, arrow(Pi)) + underbrace((- integral_S rho u_i u_j n_j dif S), arrow(M)) + underbrace((- integral_V partial / (partial t) (rho u_i) dif V), arrow(I)) = 0 quad ==> quad arrow(G) + arrow(Pi) + arrow(M) + arrow(I) = 0
$

I quattro vettori che compongono il bilancio rappresentano:
- $arrow(G)$: risultante delle forze di volume (gravitazionali) agenti sul fluido nel volume $V$;
- $arrow(Pi)$: risultante delle forze di superficie (pressioni e sforzi viscosi) agenti sul contorno $S$, interpretabile fisicamente come il *flusso microscopico (diffusivo)* di quantità di moto;
- $arrow(M)$: *flusso macroscopico (convettivo)* netto di quantità di moto attraverso la superficie di contorno $S$ (con il segno meno incorporato nella definizione);
- $arrow(I)$: termine inerziale legato alla non stazionarietà locale del campo di moto (anch'esso con il segno meno incorporato).
#pagebreak()
== Analisi dei singoli termini per una condotta

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [Consideriamo un flusso interno attraverso un tronco di condotta. Il volume di controllo $V$ è delimitato dalla superficie di ingresso $S_1$, dalla superficie di uscita $S_2$ e dalla superficie solida laterale (parete) $S_w$, per cui \ $S = S_1 union S_2 union S_w$. La normale $arrow(n)$ è per convenzione sempre diretta verso l'esterno del volume di fluido.],
  [#include "../figs/cap7-fig01.typ"],
)

=== Analisi di $arrow(I)$
Valutando la componente del termine inerziale lungo la direzione principale del moto $x$:
- se $I_x > 0 ==> partial u_x / partial t < 0$: il fluido nel volume di controllo sta globalmente rallentando (decelerazione locale);
- se $I_x < 0 ==> partial u_x / partial t > 0$: il fluido nel volume di controllo sta globalmente accelerando.
In condizioni di *moto stazionario* ($partial arrow(u) / partial t = 0$), il termine inerziale è identicamente nullo: $arrow(I) = 0$.

=== Analisi di $arrow(M)$

Scomponiamo l'integrale di superficie nelle tre porzioni $S_1$, $S_2$ e $S_w$:

$
M_i = -integral_S rho u_i (u_j n_j) dif S = underbrace(integral_(S_1) rho u_i abs(arrow(u)) dif S_1, (arrow(M)_"in")_i) - underbrace(integral_(S_2) rho u_i abs(arrow(u)) dif S_2, (arrow(M)_"out")_i) - integral_(S_w) rho u_i underbrace((u_j n_j), = 0) dif S_w
$

poiché sulla parete solida impermeabile il flusso non attraversa la superficie ($arrow(u) dot arrow(n) = u_j n_j = 0$ ovunque su $S_w$).
Infatti, supponendo il flusso diretto lungo l'asse $x$ e normale alle sezioni di ingresso e uscita:
    - su $S_1$ la velocità $arrow(u)$ è entrante mentre la normale $arrow(n)_1 = (-1, 0, 0)$ è uscente (antiparallele), quindi $u_j n_j = -abs(arrow(u)) = -u$, e il segno meno davanti all'integrale rende positivo il contributo entrante $arrow(M)_"in"$;
    - su $S_2$ la velocità $arrow(u)$ e la normale $arrow(n)_2 = (1, 0, 0)$ sono concordi (uscenti), quindi $u_j n_j = +abs(arrow(u)) = +u$, dando luogo al contributo negativo $-arrow(M)_"out"$.


Lungo la direzione $x$, esprimendo il flusso di quantità di moto in forma integrata tramite la velocità media sulla sezione $U_d$ (definita come $U_d = 1/S integral_S u dif S = Q/S$), il vettore quantità di moto attraverso una generica sezione piana $S$ ha come unica componente non nulla quella lungo $x$:

$
M_(x, "in") = integral_(S_1) rho u^2 dif S_1 = rho U_(d, 1)^2 S_1, quad M_(x, "out") = integral_(S_2) rho u^2 dif S_2 = rho U_(d, 2)^2 S_2
$

=== Analisi di $arrow(Pi)$

Anche l'integrale delle forze di superficie si scompone sulle tre superfici:

$
arrow(Pi) = arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_w
$

Sulle sezioni fluide di ingresso $S_1$ e di uscita $S_2$, per flussi con linee di corrente pressoché rettilinee e parallele, i gradienti assiali di velocità sono trascurabili rispetto ai termini di pressione ($tau_(i j) prop partial u_i / partial x_j approx 0$). Pertanto il tensore degli sforzi si riduce alla sola componente isotropa di pressione $sigma_(i j) approx -p delta_(i j)$:

$
(Pi_1)_i &= integral_(S_1) sigma_(i j) n_j dif S_1 approx integral_(S_1) -p delta_(i j) n_j dif S_1 = -integral_(S_1) p n_i dif S_1 \
(Pi_2)_i &= -integral_(S_2) p n_i dif S_2
$

Proiettando lungo l'asse $x$ (ricordando che $n_(1, x) = -1$ e $n_(2, x) = +1$) e indicando con $p_1, p_2$ le pressioni sulle sezioni (omogenee sulla sezione trasversale se le linee di corrente sono rettilinee e gli effetti gravitazionali trasversali sono trascurabili):

$
Pi_(1, x) = +p_1 S_1 = Pi_"in", quad Pi_(2, x) = -p_2 S_2 = -Pi_"out"
$

Il terzo termine, $arrow(Pi)_w = integral_(S_w) sigma_(i j) n_j dif S_w = arrow(F)$, contiene la *forza cercata*.

#nota[
  *Attenzione ai segni e alle normali.* Poiché per convenzione la normale $arrow(n)$ su $S_w$ è diretta dal fluido verso l'esterno (cioè *entra* nella parete solida), il termine $arrow(Pi)_w = arrow(F)$ rappresenta la *forza esercitata dalla parete sul fluido*. Per il terzo principio della dinamica, la forza esercitata dal fluido sulla parete è uguale e opposta, ovvero $-arrow(F)$.
]

=== Bilancio per condotta orizzontale a sezione costante

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [Consideriamo una condotta cilindrica orizzontale ($G_x = 0$) in regime stazionario ($arrow(I) = 0$). L'equazione globale si riduce a:

$
arrow(M) + arrow(Pi) = 0
$

Scomponiamo la superficie di controllo in \ $S = S_1 union S_2 union S_w$ (sezione d'ingresso $S_1$, sezione d'uscita $S_2$ e parete laterale $S_w$):],
  [#include "../figs/cap7-fig02.typ"],
)

- per $arrow(M) = - integral_S rho u_i u_j n_j dif S$, il flusso attraverso la parete impermeabile $S_w$ è nullo sia per la condizione di impermeabilità sia perchè la normale è perpendicolare;\

- su $S_1$ la velocità è opposta alla normale uscente ($n_(1, x) = -1$) e dà il contributo positivo entrante $M_"in" = rho U_(d, 1)^2 S_1$\

- su $S_2$ è concorde ($n_(2, x) = +1$) e dà il contributo negativo uscente $-M_"out" = -rho U_(d, 2)^2 S_2$;

- per $arrow(Pi) = integral_S sigma_(i j) n_j dif S$, l'integrale si spezza nei tre contributi su $S_1$, $S_2$ e $S_w$: $arrow(Pi) = arrow(Pi)_1 + arrow(Pi)_2 + arrow(F)$, dove $arrow(F) = integral_(S_w) sigma_(i j) n_j dif S$ è la forza esercitata dalla parete sul fluido ($ arrow(Pi)_w$). Trascurando su $S_1$ e $S_2$ il termine viscoso rispetto alla pressione ($sigma_(i j) approx -p delta_(i j)$), si ha $Pi_(x, 1) = p_1 S_1$ e $Pi_(x, 2) = -p_2 S_2$.

Prendiamo la nostra equazione lungo $x$ sostituendo i termini appena trovati:
$ (M_"in" - M_"out") + (Pi_(x, 1) + Pi_(x, 2) + F_x) = 0 $

Isoliamo l'incognita $F_x$ portando il resto a secondo membro:
$ F_x = -[(M_"in" - M_"out") + (Pi_(x, 1) + Pi_(x, 2))] $

Sostituiamo infine i rispettivi valori dei flussi e delle forze di pressione:
$ F_x = -[(rho U_(d, 1)^2 S_1 - rho U_(d, 2)^2 S_2) + (p_1 S_1 - p_2 S_2)] $

Se la sezione della condotta è costante ($S_1 = S_2 = S$), per la conservazione della portata ($Q = U_(d, 1) S_1 = U_(d, 2) S_2$) si ha $U_(d, 1) = U_(d, 2) = U_d$. I flussi convettivi di quantità di moto in ingresso e in uscita sono pertanto identici e si elidono ($M_"in" = M_"out"$), lasciando:

$
F_x = -S (p_1 - p_2)
$

Poiché per mantenere il moto in presenza di attrito deve essere $p_1 > p_2$, la forza $F_x$ risulta *negativa*: essa è infatti la forza di resistenza viscosa esercitata dalla parete sul fluido, che si oppone al deflusso.

Per una condotta circolare di raggio $R$ e lunghezza $L$, sulla superficie laterale $S_w = 2 pi R L$ la normale uscente è radiale ($n_x = 0$): nell'integrale $F_x = integral_(S_w) sigma_(x j) n_j dif S$ il contributo della pressione è dunque nullo e sopravvive solo lo sforzo viscoso tangenziale a parete (di modulo $tau_w$, diretto in verso opposto al moto):
$ F_x = -tau_w S_w $

In condizioni stazionarie, prendiamo l'espressione ottenuta dal bilancio lungo $x$ e la uguagliamo a quella appena trovata:
$ (p_1 - p_2) S = tau_w S_w $

Sostituiamo $p_1 = p(x_1)$, $p_2 = p(x_1) + (partial p) / (partial x) L$, la sezione $S = pi R^2$ e la superficie laterale $S_w = 2 pi R L$:
$ [p(x_1) - (p(x_1) + (partial p) / (partial x) L)] pi R^2 = tau_w 2 pi R L $

Definiamo infine la caduta di pressione positiva $Delta p = p_1 - p_2 > 0$ (ovvero $-(partial p / partial x) L = Delta p$) e sostituiamola per ricavare lo sforzo a parete:
$ pi R^2 Delta p = tau_w 2 pi R L quad ==> quad tau_w = (Delta p) / (2 L) R $
#nota[
  *Confronto con le equazioni di Navier-Stokes.* A differenza dell'approccio differenziale visto nella soluzione di Poiseuille (in cui era necessario risolvere le equazioni di Navier-Stokes per determinare il profilo di velocità e derivarlo a parete), il bilancio globale permette di calcolare lo sforzo viscoso a parete $tau_w$ direttamente dalla caduta di pressione $Delta p$ e dalla geometria, *senza conoscere il dettaglio del campo di velocità interno*.
]

Possiamo inoltre adimensionalizzare il modulo dello sforzo a parete $tau_w$ introducendo il *coefficiente d'attrito* (di Fanning) $c_f$:

$
tau_w = 1/2 rho c_f U_d^2 <==> (Delta p) / (2 L) R = 1/2 rho c_f U_d^2
$

Ricordando che il diametro è $D = 2 R$ e introducendo il *coefficiente di resistenza di Darcy-Weisbach* $psi$ (spesso indicato anche con $lambda$ o $f$), definito in funzione della perdita di pressione per unità di lunghezza $Delta p / L$:

$
psi = ((Delta p) / L) / (1/2 rho U_d^2 / D) quad ==> quad c_f = (Delta p) / L dot R / (rho U_d^2) = (Delta p) / L dot D / (4 dot 1/2 rho U_d^2) = psi / 4
$
== Esempio 1: Condotta a sezione variabile

Consideriamo ora una condotta orizzontale la cui sezione varia da $S_1$ a $S_2$ (ad esempio un tratto convergente o divergente).

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Assumiamo moto stazionario ($partial / partial t = 0 ==> arrow(I) = 0$) e condotta orizzontale ($G_x = 0$). Scriviamo il bilancio globale lungo l'asse $x$:
    $
    M_"in" - M_"out" + Pi_"in" - Pi_"out" + F_x = 0
    $
    
  ],
  [#include "../figs/cap7-fig03.typ"
  ]
)
Indicando con $U_1 = U_(d, 1)$ e $U_2 = U_(d, 2)$ le velocità medie nelle due sezioni, riprendiamo l'equazione di bilancio lungo $x$:
$ rho U_1^2 S_1 - rho U_2^2 S_2 + p_1 S_1 - p_2 S_2 + F_x = 0 $

Isoliamo la forza $F_x$ a primo membro e raccogliamo la densità $rho$ tra i termini di quantità di moto:
$ F_x = -(p_1 S_1 - p_2 S_2) - rho (U_1^2 S_1 - U_2^2 S_2) $

Dalla conservazione della portata volumetrica $Q = S_1 U_1 = S_2 U_2$, possiamo esprimere $U_1^2 S_1 = Q U_1 = Q^2 / S_1$ (e analogamente $U_2^2 S_2 = Q^2 / S_2$). Sostituendo nell'equazione precedente, otteniamo:
$ F_x = -[(p_1 S_1 - p_2 S_2) + rho Q^2 (1/S_1 - 1/S_2)] $

la forza $F_x$ esercitata dalla parete sul fluido (uguale e opposta alla spinta $-F_x$ che il fluido esercita sulla condotta) è data direttamente dalla differenza tra ciò che entra e ciò che esce dal volume di controllo, sommando la variazione del *flusso microscopico (diffusivo)* di quantità di moto legato agli urti molecolari ($p_1 S_1 - p_2 S_2$) e la variazione del *flusso macroscopico (convettivo)* di quantità di moto \ ($rho Q^2 (1/S_1 - 1/S_2)$).


== Esempio 2: Spinta su una paratoia piana

Consideriamo una corrente a pelo libero su fondo orizzontale che incontra una paratoia piana verticale. Vogliamo calcolare la forza orizzontale $F_x$ che la paratoia esercita sul fluido (uguale e opposta alla spinta idrodinamica esercitata dall'acqua sulla paratoia).

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Adottiamo le seguenti ipotesi:
    - *problema piano (2D)*: consideriamo una *larghezza unitaria* $b = 1 "m"$ nella direzione ortogonale al foglio, per cui le aree delle sezioni liquide di monte (altezza $h_1$) e di valle (altezza $h_2$) valgono $S_1 = h_1 b = h_1$ e $S_2 = h_2 b = h_2$, mentre $q = Q / b$ è la portata per unità di larghezza ($["m"^2 / "s"]$);
    - *moto stazionario* ($arrow(I) = 0$);
    - *sforzi viscosi sul fondo trascurabili* rispetto alle forze di pressione;
    - sulle sezioni di ingresso $S_1$ e di uscita $S_2$ la distribuzione delle pressioni relative è *idrostatica*: $p(z) = rho g (h - z) = gamma (h - z)$, con $gamma = rho g$ peso specifico del fluido e pressione relativa nulla al pelo libero ($p_"atm" = 0$).
  ],
  [
    #move(dx: 15pt)[#include "../figs/cap7-fig04.typ"]
  ]
)

Proiettando l'equazione globale lungo la direzione orizzontale $x$:
- la forza peso $arrow(G)$ è verticale (diretta lungo $-z$), quindi la sua componente orizzontale è nulla:
  $
  G_x = 0
  $
- i flussi convettivi di quantità di moto per unità di larghezza in ingresso e uscita valgono (sfruttando la continuità $q = U_1 h_1 = U_2 h_2$):
  $
  M_("in", x) = rho q U_1 = rho q^2 / h_1, quad M_("out", x) = rho q U_2 = rho q^2 / h_2
  $
- le spinte idrostatiche sulle sezioni verticali $S_1$ e $S_2$ (per unità di larghezza) si ottengono integrando la distribuzione lineare di pressione da $z = 0$ a $z = h$:
  $
  Pi_"in" = integral_0^(h_1) gamma (h_1 - z) dif z = 1/2 gamma h_1^2, quad Pi_"out" = integral_0^(h_2) gamma (h_2 - z) dif z = 1/2 gamma h_2^2
  $

Sostituendo nel bilancio globale lungo $x$ ($M_"in" - M_"out" + Pi_"in" - Pi_"out" + F_x = 0$), si ricava la forza orizzontale per unità di larghezza esercitata dalla paratoia sul fluido:

$
F_x = -[1/2 gamma (h_1^2 - h_2^2) + rho q^2 (1/h_1 - 1/h_2)]
$

_Nota: indicando con $Q$ la portata su una larghezza unitaria $b = 1 "m"$, la relazione si scrive equivalentemente come $F_x = -[1/2 gamma (h_1^2 - h_2^2) + rho Q^2 (1/h_1 - 1/h_2)]$. Essendo $h_1 > h_2$, si osserva che mentre il termine idrostatico $1/2 gamma (h_1^2 - h_2^2) > 0$ è positivo, il termine dinamico $rho Q^2 (1/h_1 - 1/h_2) < 0$ è negativo (poiché il fluido accelera passando sotto la paratoia, $U_2 > U_1$); complessivamente $F_x < 0$ è diretta verso monte (si oppone al flusso), mentre la spinta del fluido sulla paratoia $-F_x > 0$ è diretta verso valle._



== Esempio 3: Getto libero contro una parete piana verticale

Passiamo ora al caso di un *getto libero* (d'acqua o d'aria) di sezione $S_1$ (o area $A$), velocità $U$ e portata $Q = U S_1$, che impatta ortogonalmente contro una parete piana verticale.

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    In un getto libero immerso nell'atmosfera (trascurando gli effetti della tensione superficiale), la pressione all'interno del fluido si riequilibra ovunque con la pressione atmosferica esterna ($p = p_"atm"$, ovvero pressione relativa $p = 0$). Di conseguenza, gli integrali di pressione sulle sezioni fluide di ingresso e di uscita sono identicamente nulli:
    $
    Pi_("in", x) = 0, quad Pi_("out", x) = 0
    $
    Inoltre, dopo l'impatto il fluido devia di $90 degree$ scorrendo lungo la parete verticale: sulle sezioni di uscita il vettore velocità è interamente parallelo alla parete (ortogonale all'asse $x$), per cui la componente $u_x$ in uscita è nulla e non dà contributo al flusso di quantità di moto lungo $x$:
    $
    M_("in", x) = rho U^2 S_1 = rho Q U = rho Q^2 / S_1, quad M_("out", x) = 0
    $
  ],
  [
    #include "../figs/cap7-fig05.typ"
  ]
)

In regime stazionario ($I_x = 0$) e trascurando la gravità lungo $x$ ($G_x = 0$), il bilancio globale lungo $x$ ($M_("in", x) - M_("out", x) + F_x = 0$) fornisce immediatamente la forza esercitata dalla parete sul fluido:

$
F_x = -rho U^2 S_1 = -rho Q U = -rho Q^2 / S_1
$

La spinta esercitata dal getto sulla parete è uguale e opposta, pari a $-F_x = +rho Q U$ (diretta lungo $+x$).
#pagebreak()
== Esempio 4: Getto contro una pala di turbina (deviazione di $180 degree$)

Consideriamo un getto libero di sezione $S_1$, velocità $arrow(u)_1 = (U_1, 0, 0)$ e portata $Q = U_1 S_1$ che investe una pala curva simmetrica (come la pala di una #link("https://it.wikipedia.org/wiki/Turbina_Pelton", [#underline[turbina Pelton]] )), venendo diviso in due getti simmetrici di sezione $S_2$ e portata $Q/2$ ciascuno, deviati all'indietro con velocità $arrow(u)_2 = (-U_2, 0, 0)$ opposta a quella di ingresso.

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Anche in questo caso $G_x = 0$, $I_x = 0$ e le pressioni relative sulle sezioni libere $S_1$ e $S_2$ sono nulle ($Pi_1 = Pi_2 = 0$).
    Occorre prestare particolare attenzione ai segni nel termine convettivo $M_x = -integral_S rho u_x (u_j n_j) dif S$:
    - sulla sezione di ingresso $S_1$, $arrow(u)_1 = (U_1, 0, 0)$ e la normale uscente $arrow(n)_1 = (-1, 0, 0)$ sono antiparallele ($u_j n_j = -U_1$), mentre $u_x = +U_1$:
      $
      M_(1, x) = -integral_(S_1) rho (+U_1) (-U_1) dif S_1 = +rho U_1^2 S_1 = +rho Q U_1
      $
    - su ciascuna delle due sezioni di uscita $S_2$, sia la velocità $arrow(u)_2 = (-U_2, 0, 0)$ sia la normale uscente $arrow(n)_2 = (-1, 0, 0)$ sono dirette verso sinistra: essendo *concordi*, il prodotto scalare vale $u_j n_j = +U_2 > 0$, ma la componente di velocità lungo $x$ è *negativa* ($u_x = -U_2 < 0$). Sommando le due uscite:
      $
      M_(2, x) = -2 integral_(S_2) rho (-U_2) (+U_2) dif S_2 = +2 rho U_2^2 S_2= +rho Q U_2
      $
  ],
  [ 
  #include "../figs/cap7-fig06.typ"
  ]
)

_Nota: equivalentemente, ponendo $M_("out", x) = -2 rho (Q/2) U_2$ nella scrittura $M_("in", x) - M_("out", x) + F_x = 0$, il doppio segno meno porta i due contributi a sommarsi._

Dal bilancio globale lungo $x$ ($M_(1, x) + M_(2, x) + F_x = 0$) si ottiene quindi:

$
rho Q U_1 + rho Q U_2 + F_x = 0 quad ==> quad F_x = -rho Q (U_1 + U_2)
$

In termini di modulo e vettore forza esercitata dalla pala sul fluido:

$
abs(F_x) = rho Q (U_1 + U_2), quad arrow(F) = -abs(F_x) arrow(e)_x
$

_Se si trascurano gli attriti lungo la pala, per il teorema di Bernoulli si ha $U_2 = U_1 = U$, per cui $abs(F_x) = 2 rho Q U$: deviare il getto di $180 degree$ permette di raddoppiare la spinta rispetto alla parete piana verticale._
#pagebreak()
== Esempio 5: Getto piano contro una parete inclinata

Consideriamo infine un getto libero piano (bidimensionale, di larghezza unitaria $b = 1 "m"$ ortogonalmente al foglio) di spessore $h_1$ e velocità $U_1$, che impatta contro una parete piana liscia inclinata di un angolo $theta$ rispetto alla direzione del getto incidente.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
     Dopo l'impatto il flusso si divide in due correnti che scorrono lungo la parete in versi opposti, caratterizzate sulle sezioni di uscita $S_2$ e $S_3$ da spessori $h_2, h_3$ e velocità $U_2, U_3$. 
    Fissiamo un sistema di riferimento locale $(t, n)$ solidale alla parete, con l'asse $t$ tangente alla parete (positivo verso la sezione $S_2$) e l'asse $n$ normale alla parete (uscente dal fluido verso la parete).
    Per determinare le incognite ($U_2, U_3, h_2, h_3$ e la forza $arrow(F)$) procediamo in quattro passaggi:

  ],
  [
    #include "../figs/cap7-fig07.typ"

  ]
)



Per determinare le caratteristiche del flusso, si parte dalla *determinazione delle velocità tramite il teorema di Bernoulli*. Trascurando le differenze di quota e gli sforzi viscosi, ed essendo il getto libero in atmosfera ($p_1 = p_2 = p_3 = p_"atm"$), l'applicazione del teorema lungo le linee di corrente da $S_1$ verso $S_2$ e $S_3$ mostra che il modulo della velocità rimane costante:
$
U_1 = U_2 = U_3 = U
$

Passando alla *conservazione della massa (equazione di continuità)*, per un fluido incomprimibile in moto stazionario la portata per unità di larghezza entrante da $S_1$ deve eguagliare la somma delle portate uscenti da $S_2$ e $S_3$:
$
U_1 h_1 = U_2 h_2 + U_3 h_3 quad ==> quad h_1 = h_2 + h_3
$

Si considera poi il *bilancio di quantità di moto lungo la direzione tangente $t$*. Trascurando gli sforzi viscosi di attrito a parete ($tau_w approx 0$), la parete può esercitare sul fluido unicamente una forza di pressione diretta lungo la normale $n$, rendendo nulla la componente tangenziale della forza ($F_t = 0$). Poiché sono nulle anche le pressioni relative su $S_1, S_2, S_3$ ($Pi_t = 0$), l'equazione globale lungo $t$ si riduce a $M_t = -integral_S rho u_t (u_j n_j) dif S = 0$. Nel dettaglio, su $S_1$ il flusso è entrante ($u_j n_j = -U$) e la componente di velocità lungo $t$ vale $u_t = +U cos theta$, dando il contributo $+rho U^2 h_1 cos theta$; su $S_2$ il flusso è uscente ($u_j n_j = +U$) e concorde con $t$ ($u_t = +U$), fornendo il contributo $-rho U^2 h_2$; su $S_3$, infine, il flusso è uscente ($u_j n_j = +U$) ma diretto in verso opposto a $t$ ($u_t = -U$), per cui si ottiene $-rho (-U)(+U) h_3 = +rho U^2 h_3$. Sommando i tre contributi lungo $t$ si ricava:
$
rho U^2 h_1 cos theta - rho U^2 h_2 + rho U^2 h_3 = 0 quad ==> quad h_2 - h_3 = h_1 cos theta
$
Mettendo a sistema questa relazione con l'equazione di continuità $h_2 + h_3 = h_1$, si determinano gli spessori dei due getti uscenti in funzione di $h_1$ e dell'angolo $theta$:
$
h_2 = h_1 / 2 (1 + cos theta), quad h_3 = h_1 / 2 (1 - cos theta)
$

Infine, si esegue il *bilancio di quantità di moto lungo la direzione normale $n$*, proiettando l'equazione globale lungo la normale alla parete ($M_n + F_n = 0$). I flussi uscenti attraverso $S_2$ e $S_3$ sono paralleli alla parete e non possiedono componente normale di velocità ($u_n = 0$), per cui l'unico contributo a $M_n$ proviene dalla sezione di ingresso $S_1$, dove $u_j n_j = -U$ e la componente di velocità lungo $n$ vale $u_n = +U sin theta$:
$
M_n = -integral_(S_1) rho (+U sin theta) (-U) dif S_1 = +rho U^2 h_1 sin theta
$
Dal bilancio $M_n + F_n = 0$ si ottiene la forza normale per unità di larghezza esercitata dalla parete sul fluido:
$
F_n = -rho U^2 h_1 sin theta
$

_Nota: per $theta = 90 degree$ si ritrova come caso particolare il risultato dell'Esempio 3 per parete verticale: $h_2 = h_3 = h_1 / 2$ e $F_n = -rho U^2 h_1$._

== Estensione ai flussi esterni: forza su un corpo tozzo

Questo stesso approccio integrale può essere impiegato per valutare la forza aerodinamica o idrodinamica esercitata sul fluido da un corpo tozzo immerso in una corrente esterna indisturbata di velocità $u_infinity$:

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Racchiudendo il corpo all'interno di un volume di controllo delimitato a monte dalla sezione $S_1$ e a valle (nella scia) dalla sezione $S_2$, la forza $F_x$ si esprime ancora come:
    $
    F_x = -[(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2))]
    $
    In galleria del vento, i profili di velocità e pressione nella scia (da cui dipendono entrambi i termini) possono essere misurati sperimentalmente mediante una scansione con un *tubo di Pitot*, evitando così la necessità di effettuare complesse misure locali della distribuzione degli sforzi direttamente sulla superficie del corpo:
    $
    arrow(F) = integral_(S_w) bold(sigma) dot arrow(n) dif S_w = integral_(S_w) (-p delta_(i j) n_j + tau_(i j) n_j) dif S_w
    $
  ],
  [
    #move(dx:25pt)[#include "../figs/cap7-fig08.typ"]
  ]
)

== Adimensionalizzazione delle equazioni di Navier-Stokes e regime di Stokes

Per far emergere direttamente dalle equazioni del moto la dipendenza dal numero di Reynolds e riscriverle in forma funzionale al regime dinamico (a bassi o ad alti numeri di Reynolds), formuliamo in variabili adimensionali il problema del flusso incomprimibile attorno a una sfera (o cilindro circolare) di raggio $a$ e diametro $D = 2 a$.

#block(sticky: true)[L'adimensionalizzazione risponde a due motivazioni fondamentali:]
1. *Similitudine dinamica:* nell'analizzare il campo di moto attorno a un corpo non conta la distanza assoluta in metri dalla superficie, bensì la distanza relativa a una lunghezza di riferimento del corpo stesso (una medesima distanza fisica può trovarsi a ridosso della parete o nel campo lontano a seconda del raggio $a$). Riscalare le variabili permette di identificare le condizioni di similitudine e passare da una scala geometrica all'altra conservando l'equivalenza dinamica.
2. *Indipendenza dalle unità di misura:* le dimensioni fisiche sono convenzioni soggettive introdotte dall'uomo, mentre le leggi della fisica devono prescindere dalle unità adottate, facendo emergere unicamente il ruolo dei parametri di controllo adimensionali.

#block(breakable: false)[
  Ponendo l'origine degli assi al centro della sfera di raggio $a$ , il modello è costituito dall'equazione di continuità e dall'equazione di bilancio della quantità di moto scritta omettendo la gravità (assorbita nella pressione modificata):
  $
    nabla dot arrow(u) = 0, quad rho (partial arrow(u)) / (partial t) + rho (arrow(u) dot nabla) arrow(u) = -nabla p + mu nabla^2 arrow(u)
  $
  corredate dalla condizione di aderenza sulla superficie $abs(arrow(x) thin) = a$ (ossia $x^2 + y^2 = a^2$ nella sezione piana) e dalle condizioni di corrente uniforme indisturbata all'infinito:
  $
    arrow(u) = arrow(0) quad "per " abs(arrow(x) thin) = a, quad arrow(u) arrow.r U_infinity hat(i) " e " p arrow.r p_infinity quad "per " abs(arrow(x) thin) arrow.r infinity
  $
]

#figure(
  canvas(length: 1cm, {
    import draw: *
    for y in (0.75, 0.0, -0.75) {
      freccia((0.0, y), (1.85, y), col: c-vel, sp: 0.9pt)
    }
    content((0.92, 0.95), text(size: 9.5pt)[$U_infinity hat(i), thin p_infinity$], anchor: "south")

    corpo-circolare((3.6, 0.0), raggio: 0.9)
    freccia((3.6, 0.0), (4.18, 0.0), col: c-geo, sp: 0.65pt)
    freccia((3.6, 0.0), (3.6, 0.58), col: c-geo, sp: 0.65pt)
    content((4.2, -0.06), text(size: 9pt)[$x$], anchor: "north")
    content((3.52, 0.56), text(size: 9pt)[$y$], anchor: "east")

    line((3.6, 0.0), (4.24, -0.64), stroke: (paint: col-quota, thickness: 0.7pt, dash: "dashed"))
    content((3.86, -0.38), text(size: 9.5pt)[$a$], anchor: "north-east")

    freccia((4.24, 0.64), (4.82, 1.22), col: col-quota, spessore: 0.85pt)
    content((4.88, 1.25), text(size: 9.5pt)[$hat(n)$], anchor: "south-west")
    content((2.82, 0.72), text(size: 9.5pt)[$arrow(u) = arrow(0)$], anchor: "south-east")

    line((2.7, -1.3), (4.5, -1.3), stroke: (paint: col-quota, thickness: 0.7pt))
    line((2.7, -1.42), (2.7, -1.18), stroke: (paint: col-quota, thickness: 0.7pt))
    line((4.5, -1.42), (4.5, -1.18), stroke: (paint: col-quota, thickness: 0.7pt))
    content((3.6, -1.47), text(size: 9.5pt)[$D = 2 a$], anchor: "north")

    freccia((4.5, 0.0), (6.35, 0.0), col: col-forza, spessore: 1.15pt)
    content((5.45, -0.18), text(size: 9.5pt)[$F_D = arrow(F) dot hat(i)$], anchor: "north")
  }),
  caption: [Schema del problema attorno a una sfera (o cilindro) di raggio $a$ investita da una corrente uniforme $U_infinity hat(i)$, con condizione di aderenza a parete e normale uscente $hat(n)$.],
) <fig:problema-sfera>

#block(breakable: false)[
  #nota-esame[
    *Condizione di aderenza vs modello ideale (Bernoulli).* Usando il teorema di Bernoulli si adotta un modello di fluido ideale inviscido ($mu = 0$), nel quale non può valere l'aderenza ma si impone soltanto la condizione di *impermeabilità* (velocità tangente alla superficie): la velocità si annulla nel punto di ristagno frontale e raggiunge il massimo sui fianchi per restringimento delle linee di corrente (effetto Venturi, analogo al rinforzo del vento sulla cresta di una collina o di una montagna). Nel fluido reale viscoso la velocità a parete è invece rigorosamente nulla per aderenza, e l'analisi con Bernoulli conserva solo un valore grossolano (*spannometrico*): il massimo di velocità continua a esistere, ma si sposta a una certa distanza dalla parete.
  ]
]

=== Scelta delle scale caratteristiche ed equazioni a basso Reynolds

#block(sticky: true)[
  Qualsiasi lunghezza e velocità si esprimono come prodotto della corrispondente variabile adimensionale (indicata con tilde) per la rispettiva scala caratteristica, data dal raggio $a$ e dalla velocità indisturbata $U_infinity$:
]
$
  arrow(x) = a thin tilde(arrow(x)) quad (x_i = a thin tilde(x)_i), quad arrow(u) = U_infinity tilde(arrow(u)) quad (u_i = U_infinity tilde(u)_i)
$

#block(sticky: true)[
  Per il tempo e per la pressione l'adimensionalizzazione può invece seguire due strategie distinte, espressione della competizione tra il meccanismo convettivo e quello diffusivo:
]
- *Scale dei tempi:* usando le grandezze convettive si costruisce la *scala temporale convettiva* $t_c = a slash U_infinity$; usando invece la viscosità cinematica $nu = mu slash rho$ ($[nu] = L^2 T^(-1)$) si ottiene la *scala temporale diffusiva* $t_nu = a^2 slash nu$.
- *Scale delle pressioni:* imponendo che il termine di pressione $(-1 slash rho) nabla p$ abbia lo stesso ordine di grandezza del termine convettivo ($p slash (rho a) tilde.op U_infinity^2 slash a$) si ottiene la *scala di pressione convettiva* $p_c = rho U_infinity^2$; imponendo invece che abbia lo stesso ordine del termine viscoso ($p slash (rho a) tilde.op nu U_infinity slash a^2$) si ottiene la *scala di pressione diffusiva (o viscosa)* $p_nu = rho nu U_infinity slash a = mu U_infinity slash a$.

#block(sticky: true)[
  Nell'equazione di continuità la sostituzione è immediata:
]
$
  (partial u_i) / (partial x_i) = U_infinity / a (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad arrow.r.double quad (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad (tilde(nabla) dot tilde(arrow(u)) = 0)
$
ed è identica sia facendo riferimento alle scale convettive sia facendo riferimento alle scale viscose.

#block(sticky: true)[
  Nell'equazione di bilancio della quantità di moto occorre invece scegliere la scala appropriata al regime di moto. Volendo rappresentare campi a *basso numero di Reynolds*, dominati dalla diffusione viscosa, adottiamo le scale diffusive per tempo e pressione:
]
$
  t = a^2 / nu thin tilde(t), quad p = (mu U_infinity) / a thin tilde(p)
$
#block(sticky: true)[
  Partendo dall'equazione di Navier-Stokes divisa per $rho$:
]
$
  (partial u_i) / (partial t) + u_j (partial u_i) / (partial x_j) = - 1 / rho (partial p) / (partial x_i) + nu (partial^2 u_i) / (partial x_j partial x_j)
$
#block(sticky: true)[
  ed estraendo dalle derivate le costanti dimensionali di ciascun termine si ottiene:
]
$
  (partial u_i) / (partial t) & = U_infinity / (a^2 slash nu) (partial tilde(u)_i) / (partial tilde(t)) = (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t)) && quad "(termine instazionario)" \
  u_j (partial u_i) / (partial x_j) & = U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j) && quad "(termine convettivo)" \
  -1 / rho (partial p) / (partial x_i) & = -1 / rho (mu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) && quad "(termine di pressione)" \
  nu (partial^2 u_i) / (partial x_j partial x_j) & = (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j) && quad "(termine viscoso)"
$

#block(sticky: true)[Sostituendo nell'equazione di bilancio:]
$
  (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t)) + U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) + (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j)
$
Il primo termine, il termine di pressione e il termine viscoso condividono tutti il medesimo fattore dimensionale $nu U_infinity slash a^2 = mu U_infinity slash (rho a^2)$. Dividendo l'intera equazione per $nu U_infinity slash a^2$, quei tre termini assumono coefficiente unitario, mentre davanti al termine convettivo compare il numero di Reynolds riferito al raggio $a$:
$
  "Re"_a = (U_infinity^2 slash a) / (nu U_infinity slash a^2) = (U_infinity a) / nu = (rho U_infinity a) / mu
$
(distinto dal numero di Reynolds riferito al diametro $D = 2 a$, pari a $"Re"_D = rho U_infinity (2 a) slash mu = 2 thin "Re"_a$).

#block(sticky: true)[Il sistema adimensionale assume dunque la forma:]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    cases(
      tilde(nabla) dot tilde(arrow(u)) = 0,
      (partial tilde(arrow(u))) / (partial tilde(t)) + "Re"_a (tilde(arrow(u)) dot tilde(nabla)) tilde(arrow(u)) = -tilde(nabla) tilde(p) + tilde(nabla)^2 tilde(arrow(u))
    )
  $ <eq:ns-adim>
]
#block(sticky: true)[
  Adimensionalizzando allo stesso modo le condizioni al contorno (dividendo le coordinate al quadrato per $a^2$, la velocità per $U_infinity$ e la pressione per $mu U_infinity slash a$), si ha:
]
$
  tilde(arrow(u)) = arrow(0) quad "per " abs(tilde(arrow(x)) thin) = 1, quad tilde(arrow(u)) arrow.r hat(i) " e " tilde(p) arrow.r tilde(p)_infinity = (p_infinity a) / (mu U_infinity) quad "per " abs(tilde(arrow(x)) thin) arrow.r infinity
$
Il problema @eq:ns-adim vale così per sfere (o cilindri) di qualsiasi dimensione e per qualunque fluido viscoso, dimostrando l'esplicita dipendenza del sistema dal solo numero di Reynolds.

=== Limite per $"Re"_a arrow.r 0$: problema di Stokes e forza di resistenza

#block(sticky: true)[
  La formulazione @eq:ns-adim permette di passare in modo pulito al limite di moto fortemente viscoso $"Re"_a arrow.r 0$: il termine convettivo scompare e, venendo eliminata la non linearità del sistema in presenza di condizioni al contorno stazionarie, anche la derivata temporale $partial tilde(arrow(u)) slash partial tilde(t)$ si annulla. Il problema si riduce così al *problema di Stokes*:
]
$
  tilde(nabla) dot tilde(arrow(u)) = 0, quad tilde(nabla) tilde(p) = tilde(nabla)^2 tilde(arrow(u)) quad ("ossia " (partial tilde(p)) / (partial tilde(x)_i) = (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j))
$

#block(breakable: false)[
  #nota-esame[
    L'annullamento di $partial tilde(arrow(u)) slash partial tilde(t)$ per $"Re"_a arrow.r 0$ non richiede un'ipotesi aggiuntiva di stazionarietà: eliminando il termine convettivo col numero di Reynolds viene uccisa la non linearità dell'equazione, e un sistema lineare sottoposto a condizioni al contorno stazionarie non può sviluppare autonomia temporale ma deve rispondere in modo stazionario. Inoltre, poiché $"Re"_a$ non compare più né nelle equazioni né nelle condizioni al contorno, la soluzione asintotica $(tilde(arrow(u)), tilde(p))$ prescinde dal valore del numero di Reynolds.
  ]
]

#block(sticky: true)[
  Ritorniamo ora alla forza esercitata dal fluido sulla superficie $S$ del corpo. Con la normale $hat(n)$ uscente dalla parete verso il fluido, la componente $i$-esima della forza dimensionale è:
]
$
  F_i = integral_S (-p n_i + tau_(i j) n_j) thin dif S
$
#block(sticky: true)[
  Esprimiamo $F_i$ come prodotto di una scala della forza $F_*$ e di una forza adimensionale $K_i$ sostituendo le scale viscose $p = (mu U_infinity slash a) tilde(p)$, $tau_(i j) = mu (partial u_i slash partial x_j + partial u_j slash partial x_i) = (mu U_infinity slash a) tilde(tau)_(i j)$ e $dif S = a^2 thin dif tilde(S)$:
]
$
  F_i = integral_(tilde(S)) (-(mu U_infinity) / a thin tilde(p) n_i + (mu U_infinity) / a thin tilde(tau)_(i j) n_j) a^2 thin dif tilde(S) = (mu U_infinity a) integral_(tilde(S)) (-tilde(p) n_i + tilde(tau)_(i j) n_j) thin dif tilde(S)
$
#block(sticky: true)[
  La quantità $F_* = mu U_infinity a$ costituisce la *scala viscosa della forza*, da cui il vettore adimensionale $K_i = F_i slash (mu U_infinity a)$ (la cui sola componente non nulla per simmetria è quella lungo il moto). Moltiplicando scalarmente per il versore della corrente $hat(i)$ si ottiene la forza di resistenza $F_D = arrow(F) dot hat(i)$ e il coefficiente di resistenza adimensionale su scala viscosa $K$:
]
$
  K = F_D / (mu U_infinity a) = integral_(tilde(S)) (-tilde(p) (hat(n) dot hat(i)) + (tilde(bold(tau)) dot hat(n)) dot hat(i)) thin dif tilde(S)
$
dove l'integrale adimensionale mette in evidenza il contributo delle pressioni e quello degli sforzi viscosi (un eventuale livello costante $tilde(p)_infinity$ dà risultante nulla sulla superficie chiusa).

#block(sticky: true)[
  Per una sfera nel limite $"Re"_a arrow.r 0$, Stokes ha risolto analiticamente il campo di velocità e di pressione, calcolando esplicitamente i due integrali sulla superficie sferica unitaria:
]
$
  integral_(tilde(S)) -tilde(p) (hat(n) dot hat(i)) thin dif tilde(S) = 2 pi, quad integral_(tilde(S)) (tilde(bold(tau)) dot hat(n)) dot hat(i) thin dif tilde(S) = 4 pi
$
#block(sticky: true)[
  (il primo integrale vale $+2 pi$ anche in presenza del segno meno interno). Poiché il campo di Stokes non dipende da $"Re"_a$, il coefficiente $K$ assume il valore costante $K = 2 pi + 4 pi = 6 pi$, fornendo la *legge di Stokes* per la resistenza su una sfera:
]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    F_D = 6 pi mu a U_infinity
  $ <eq:legge-stokes>
]

#block(breakable: false)[
  #nota-esame[
    La soluzione analitica esatta $K = 6 pi$ vale per una *sfera* esclusivamente nel limite asintotico $"Re" arrow.r 0$ (in cui la sola viscosità bilancia la pressione in assenza del termine convettivo) ed è somma del contributo di pressione pari a $2 pi$ ($1 slash 3$ del totale) e del contributo viscoso pari a $4 pi$ ($2 slash 3$ del totale).
  ]
]

== Caduta di una sfera nel regime di Stokes

Ruotando idealmente il problema precedente lungo la verticale, consideriamo una sfera solida sufficientemente piccola di raggio $a$ e densità $rho_s$ che scende in caduta libera in un fluido in quiete di densità $rho$ e viscosità dinamica $mu$ .

Raggiunto il regime stazionario alla velocità di caduta costante $U_t$, un osservatore solidale con la sfera vede un campo di moto relativo con corrente uniforme che sale dal basso verso l'alto a velocità indisturbata $U_infinity = U_t$.

#figure(
  canvas(length: 1cm, {
    import draw: *
    for x in (-1.85, -1.45) {
      freccia((x, -0.85), (x, 0.55), col: col-vel, spessore: 0.85pt)
    }
    content((-1.65, -1.02), text(size: 9.5pt)[$U_infinity = U_t$], anchor: "north")

    corpo-circolare((0.0, 0.0), raggio: 0.9)
    content((0.0, 0.15), text(size: 9.5pt)[$rho_s, thin a$], anchor: "south")

    freccia((0.0, -0.15), (0.0, -2.25), col: black, spessore: 1.1pt)
    content((0.18, -2.15), text(size: 9.5pt)[$P$], anchor: "west")

    freccia((-0.32, 0.70), (-0.32, 1.55), col: col-forza, spessore: 1.1pt)
    content((-0.48, 1.48), text(size: 9.5pt)[$F_A$], anchor: "east")

    freccia((0.32, 0.70), (0.32, 1.95), col: col-forza, spessore: 1.1pt)
    content((0.48, 1.88), text(size: 9.5pt)[$F_D$], anchor: "west")

    content((2.0, 0.65), text(size: 9.5pt)[$F_D + F_A = P$], anchor: "west")
    content((2.0, 0.0), text(size: 9.5pt)[$F_D = 6 pi mu a U_t$], anchor: "west")
    content((2.0, -0.65), text(size: 9.5pt)[$"Re"_D lt.eq 0.1$], anchor: "west")
  }),
  caption: [Bilancio stazionario delle forze su una sfera in caduta libera (peso $P$, spinta di Archimede $F_A$ e resistenza di Stokes $F_D$) investita dal flusso relativo $U_infinity = U_t$ dal basso.],
) <fig:sedimentazione-stokes>

#block(sticky: true)[
  In condizioni di stazionarietà la forza peso $P$, la spinta di Archimede $F_A$ e la forza di resistenza aerodinamica $F_D$ (data dalla @eq:legge-stokes con $U_infinity = U_t$) si equilibrano:
]
$
  P = 4 / 3 pi a^3 rho_s g, quad F_A = 4 / 3 pi a^3 rho g, quad F_D = 6 pi mu a U_t
$
#block(sticky: true)[
  Imponendo il bilancio verticale $F_D + F_A = P$ si ricava la velocità stazionaria di caduta in regime di Stokes:
]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    6 pi mu a U_t = 4 / 3 pi a^3 (rho_s - rho) g quad arrow.r.double quad U_t = (2 a^2 (rho_s - rho) g) / (9 mu)
  $ <eq:vel-stokes>
]

=== Verifica di validità e calcolo del raggio massimo

#block(sticky: true)[
  Poiché la soluzione di Stokes vale per $"Re" arrow.r 0$, assimiliamo operativamente tale condizione asintotica al requisito che il numero di Reynolds sul diametro $D = 2 a$ sia inferiore a $0.1$:
]
$
  "Re"_D = (rho U_t (2 a)) / mu lt.eq "Re"_"lim" = 0.1
$
#block(sticky: true)[
  Mettendo a sistema questa condizione con la velocità di caduta @eq:vel-stokes (e ricordando che $mu = rho nu$) è possibile determinare il *raggio massimo* $a_"max"$ della sfera affinché la legge di Stokes sia ritenuta valida:
]
$
  "Re"_D = (2 rho a) / mu dot (2 a^2 (rho_s - rho) g) / (9 mu) = (4 rho (rho_s - rho) g a^3) / (9 mu^2) = (4 (rho_s - rho) g a^3) / (9 rho nu^2) lt.eq "Re"_"lim"
$
#block(sticky: true)[Esplicitando il raggio $a$ si ottiene:]
$
  a lt.eq a_"max" = ((9 thin "Re"_"lim" thin mu^2) / (4 rho (rho_s - rho) g))^(1 slash 3) = ((9 thin "Re"_"lim" thin rho nu^2) / (4 (rho_s - rho) g))^(1 slash 3)
$
Valutando la relazione per una sfera solida nei tre fluidi considerati — aria ($rho approx 1.2 thin "kg/m"^3$, $mu approx 1.81 times 10^(-5) thin "Pa" dot "s"$), acqua ($rho approx 1000 thin "kg/m"^3$) e olio ($rho approx 900 thin "kg/m"^3$, con viscosità molto più elevata) — si osserva come l'aumento della viscosità $mu$ e la diminuzione della differenza di densità $rho_s - rho$ consentano di restare nel regime di Stokes ($"Re"_D lt.eq 0.1$) per raggi $a$ progressivamente maggiori passando dall'aria all'acqua e all'olio.

