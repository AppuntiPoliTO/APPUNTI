#import "../template.typ": *
#import "../figs/fig07.typ": *   // figure del capitolo (vedi figs/)
#show figure: set text(size: 9pt)   // etichette delle figure a 9pt, come nel modello

= Moto, dissipazione e perdite di carico in una condotta circolare: moto di Poiseuille

L'obiettivo del capitolo è ricavare analiticamente il campo di velocità del moto in una condotta circolare e, da questo, portata, sforzi viscosi, dissipazione e coefficiente di perdita di carico $lambda$. È la generalizzazione del moto tra due lastre piane parallele.

#grid(
  columns: (1fr, 1.25fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    *Ipotesi*
    - moto stazionario ($partial \/ partial t = 0$) di fluido incomprimibile ($rho = "cost"$): la continuità $nabla dot arrow(u) = 0$ equivale a una portata uguale in ogni sezione, $Q_(v 1) = Q_(v 2) = Q_v$;
    - fluido newtoniano, moto laminare;
    - moto completamente sviluppato (lontano dall'imbocco) e assialsimmetrico, in una condotta di raggio $R$;
    - gravità trascurata, oppure inglobata nella pressione ridotta $p + rho g h$ ($h$ quota).
  ],
  figure(fig-condotta()),
)

Con queste ipotesi le equazioni di partenza sono la continuità e le equazioni di Navier--Stokes in forma stazionaria:

$
  cases(
    nabla dot arrow(u) = 0,
    arrow(u) dot nabla arrow(u) = -1/rho nabla p + nu nabla^2 arrow(u)
  )
$

== Profilo di velocità

In coordinate cilindriche $(r, theta, z)$, con $z$ lungo l'asse, cerchiamo una soluzione con la sola componente assiale, funzione solo del raggio:

$ arrow(u) = (u_r; u_theta; u_z) = (0; 0; u(r)) $

Con questa forma quasi tutti i termini delle equazioni di Navier--Stokes in coordinate cilindriche sono identicamente nulli: il termine convettivo si annulla perché $u$ non varia lungo $z$, e le derivate di $u$ diventano totali perché $u$ dipende solo da $r$. Restano le tre componenti della quantità di moto:

$
  r: space 0 = -(partial p)/(partial r) wide
  theta: space 0 = -1/r (partial p)/(partial theta) wide
  z: space 0 = -(partial p)/(partial z) + mu 1/r dif/(dif r) (r (dif u)/(dif r))
$

Le prime due dicono che la pressione dipende solo da $z$. Nella terza il primo membro dipende solo da $z$ e il secondo solo da $r$: l'uguaglianza vale per ogni $(r, z)$ solo se entrambi sono pari a una stessa costante $G$:

$ (dif p)/(dif z) = mu 1/r dif/(dif r) (r (dif u)/(dif r)) = G = "cost" $

$G$ è il gradiente di pressione imposto, cioè ciò che mette in moto il fluido: perché il fluido si muova verso le $z$ positive la pressione deve diminuire lungo $z$, quindi $G < 0$.

#tappa[Integrazione.] Si integra due volte in $r$; le due costanti si fissano con la regolarità sull'asse e con l'aderenza alla parete. Moltiplicata l'equazione per $r \/ mu$, la prima integrazione introduce la costante $C$:

$ dif/(dif r) (r (dif u)/(dif r)) = G/mu r quad arrow.r.double quad r (dif u)/(dif r) = (G r^2)/(2 mu) + C $

Dividendo per $r$ si isola il gradiente di velocità:

$ (dif u)/(dif r) = (G r)/(2 mu) + C/r $

Per $r -> 0$ il termine $C \/ r$ diverge: la velocità avrebbe una singolarità sull'asse, fisicamente inaccettabile. Quindi $C = 0$ (equivalentemente, per simmetria, $dif u \/ dif r = 0$ in $r = 0$). La seconda integrazione introduce la costante $B$:

$ (dif u)/(dif r) = (G r)/(2 mu) quad arrow.r.double quad u = (G r^2)/(4 mu) + B $

La costante $B$ si fissa con la condizione di aderenza alla parete, $u(R) = 0$, che dà $B = -(G R^2) \/ (4 mu)$. Sostituendo $B$ si ottiene il profilo di velocità; il suo valore sull'asse, $u_0 = u(0)$, è positivo perché $G < 0$:

$
  u(r) = G/mu (r^2/4 - R^2/4) = -(G R^2)/(4 mu) (1 - r^2/R^2), wide
  u_0 = u(0) = -(G R^2)/(4 mu) > 0
$ <eq:poiseuille_profilo>

Il profilo è parabolico: massimo ($u_0$) sull'asse, nullo a parete.

== Portata e velocità media

#grid(
  columns: (1.35fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    La velocità media (_bulk_) è la portata volumetrica divisa per l'area della sezione. In coordinate cilindriche $dif S = r dif r dif theta$, e l'integrale in $theta$ su $[0, 2 pi]$ dà $2 pi$:
    $
      u_d = 1/S underbrace(integral_S arrow(u) dot arrow(n) dif S, Q_v) = 1/(pi R^2) integral_0^R u(r) 2 pi r dif r
    $
  ],
  figure(fig-profilo()),
)

#tappa[Portata.] Si sostituisce nell'integrale della portata il profilo , scritto come $u(r) = G \/ mu (r^2\/4 - R^2\/4)$, e si integra in $r$:

$
  Q_v &= 2 pi integral_0^R u(r) r dif r = (pi G R^2)/(2 mu) [r^4/(4 R^2) - r^2/2]_0^R \
  &= (pi G R^2)/(2 mu) (R^2/4 - R^2/2) = -(pi G R^4)/(8 mu)
$

La portata è positiva perché $G < 0$. Dividendola per l'area della sezione, $pi R^2$, si ottiene la velocità media, pari a metà della velocità sull'asse; con $u_0 = 2 u_d$ il profilo si riscrive in funzione della velocità media:

$ u_d = -(G R^2)/(8 mu) = u_0/2 quad arrow.r.double quad u(r) = 2 u_d (1 - r^2/R^2) $

Invertendo si ottiene il gradiente di pressione necessario per una data portata. Fissato $G$ si ottiene $Q_v$ (e quindi $u_d$), e viceversa: le due grandezze non si possono scegliere indipendentemente. Su un tratto di lunghezza $L$ la caduta di pressione è $Delta p = p_1 - p_2 = -G L$; sostituendo $G = -Delta p \/ L$ nell'espressione della portata si ottiene la *legge di Hagen–Poiseuille*:

$
  G = (dif p)/(dif z) = -(8 mu u_d)/R^2 quad arrow.r.double quad
  Q_v = (pi R^4 Delta p)/(8 mu L)
$ <eq:hagen_poiseuille>

A parità di $Delta p$ la portata cresce come $R^4$: dimezzando il raggio si ottiene un sedicesimo della portata.

== Tensore degli sforzi viscosi

Noto il campo di velocità, gli sforzi si ricavano dalla legge costitutiva del fluido newtoniano incomprimibile (@eq:costitutiva_newton):

$
  sigma_(i j) = -p delta_(i j) + tau_(i j), wide
  tau_(i j) = 2 mu D_(i j), wide
  D_(i j) = 1/2 ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))
$

L'espressione di $D_(i j)$ è quella cartesiana: in coordinate cilindriche alcune componenti contengono termini aggiuntivi (ad esempio $u_r \/ r$), qui tutti nulli perché $u_r = u_theta = 0$ e $u_z = u(r)$. Ordinando le componenti come $(r, theta, z)$, l'unico sforzo viscoso non nullo è $tau_(r z) = tau_(z r)$. Nel calcolo di $tau_(r z) = 2 mu D_(r z)$ il fattore 2 si semplifica con il fattore $1\/2$ di $D_(i j)$ e, poiché $u_r = 0$ e $u_z = u(r)$, resta la sola derivata radiale della velocità assiale:

$
  tau_(i j) = mat(0, 0, tau_(r z); 0, 0, 0; tau_(z r), 0, 0), wide
  tau_(r z) = mu ((partial u_z)/(partial r) + (partial u_r)/(partial z)) = mu (dif u)/(dif r)
$

Per ottenere l'andamento dello sforzo lungo il raggio si deriva in $r$ il profilo di velocità e si moltiplica il risultato per $mu$:

$
  u = (G R^2)/(4 mu) (r^2/R^2 - 1)
  #passo[derivata in $r$]
  (dif u)/(dif r) = (G r)/(2 mu)
  #passo[$times mu$]
  tau_(r z) = (G r)/2
$

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Lo sforzo è nullo sull'asse e cresce linearmente in modulo fino alla parete. Poiché $G < 0$, lo sforzo è negativo: si oppone al moto, ed è l'azione frenante della parete trasmessa al fluido.

    Lo sforzo che il fluido esercita sulla parete, nel verso del moto, è l'opposto di $tau_(r z)$ valutato in $r = R$; con $G = -8 mu u_d \/ R^2$ vale:
    $ tau_w = -(G R)/2 = (4 mu u_d)/R $
    Il risultato si verifica con il bilancio delle forze su un cilindro di fluido di lunghezza $L$, in cui la spinta di pressione equilibra l'attrito a parete: $-G pi R^2 L = tau_w 2 pi R L$.
  ],
  figure(fig-tau()),
)

== Dissipazione e perdite di carico

Per collegare il campo di moto alla perdita di carico servono tre definizioni:
- *carico* $cal(H) = p + 1/2 rho u^2 + rho g z$: energia meccanica per unità di volume, in Pa (diviso per $rho g$ si esprime in metri di colonna d'acqua);
- *perdita di carico* tra due sezioni, valutata con i valori medi sulle sezioni: è la potenza dissipata per viscosità nel volume compreso tra esse, divisa per la portata, $Delta cal(H) = D_v \/ Q_v$ (@eq:perdita_condotta_semplice) con $D_v = integral_V cal(D) dif V$ e $cal(D)$ funzione di dissipazione;
- *coefficiente di perdita di carico distribuita* $lambda$: $Delta cal(H) = lambda (L \/ D) dot 1/2 rho u_d^2$, con $D = 2 R$ diametro della condotta.

#tappa[Passo 1: funzione di dissipazione.] Con $u = 2 u_d (1 - r^2 \/ R^2)$ l'unica componente non nulla di $D_(i j)$ è $D_(r z) = D_(z r)$, che si ottiene derivando il profilo in $r$:

$ D_(r z) = 1/2 (dif u)/(dif r) = -(2 u_d r)/R^2 $

Nella funzione di dissipazione $cal(D) = 2 mu D_(i j) D_(i j)$ la doppia somma sugli indici contiene quindi due soli termini, uguali tra loro:

$ cal(D) = 2 mu (D_(r z)^2 + D_(z r)^2) = (16 mu u_d^2)/R^4 r^2 $

La dissipazione è nulla sull'asse e massima a parete, dove il gradiente di velocità è massimo.

#tappa[Passo 2: dissipazione nel volume.] Il campo di moto non dipende da $z$, quindi su un tratto di lunghezza $L$ si ha $dif V = 2 pi r L dif r$ e il risultato è proporzionale a $L$. L'integrale radiale che resta da calcolare è $integral_0^R r^3 dif r = R^4 \/ 4$:

$ D_v = 2 pi L integral_0^R (16 mu u_d^2)/R^4 r^3 dif r = 8 pi mu L u_d^2 $

#tappa[Passo 3: perdita di carico.] Si divide la potenza dissipata per la portata $Q_v = pi R^2 u_d$; ricordando che il gradiente di pressione vale $-G = 8 mu u_d \/ R^2$, la perdita di carico si esprime anche tramite $G$:

$
  Delta cal(H) = D_v / Q_v = (8 pi mu L u_d^2)/(pi R^2 u_d) = (8 mu u_d)/R^2 L
  quad arrow.r.double quad
  Delta cal(H) = -G L
$

Nella condotta $S_1 = S_2$, quindi $u_(d 1) = u_(d 2)$ e, a quota costante, la perdita di carico coincide con la caduta della pressione media sulla sezione, $Delta cal(H) = p_1 - p_2 = -G L$: tutta la caduta di pressione serve a vincere la dissipazione viscosa.

#tappa[Passo 4: coefficiente $lambda$.] Si sostituisce nella definizione di $lambda$ la perdita per unità di lunghezza appena trovata, $Delta cal(H) \/ L = 8 mu u_d \/ R^2$:

$ lambda = (Delta cal(H) \/ L)/(1/2 rho u_d^2 \/ D) = (8 mu u_d)/R^2 dot (2 D)/(rho u_d^2) $

Con $R^2 = D^2 \/ 4$ il coefficiente dipende soltanto dal numero di Reynolds basato sul diametro, $"Re"_D$; ricordando che $tau_w = 4 mu u_d \/ R$, lo stesso risultato si esprime anche tramite lo sforzo a parete:

$
  lambda = (64 mu)/(rho u_d D) = 64/"Re"_D = (8 tau_w)/(rho u_d^2), wide
  "Re"_D = (rho u_d D)/mu
$ <eq:lambda_poiseuille>

È la legge $lambda = 64 \/ "Re"$ del regime laminare (@eq:lambda_laminare), qui ricavata analiticamente. Il risultato vale solo in regime laminare ($"Re"_D lt.tilde 2000"–"2300$): la soluzione è stata costruita imponendo $u_r = u_theta = 0$ e $u_z = u(r)$, il che esclude qualsiasi fluttuazione turbolenta. In regime turbolento $lambda$ dipende da $"Re"_D$ in modo molto più debole (per tubi lisci, formula di Blasius) e, a Reynolds molto elevati in condotte scabre, diventa indipendente da $"Re"_D$.

#nota[
  La sequenza completa (profilo di velocità, portata, velocità media, funzione di dissipazione e $lambda = 64 \/ "Re"_D$) è una tipica domanda d'esame.
]

== Perdite di carico lineari e singolari

Le perdite che si sviluppano lungo un tratto di condotta rettilinea a sezione costante, proporzionali alla lunghezza $L$, sono dette *perdite di carico lineari* (o distribuite).

In una rete idraulica sono presenti anche elementi localizzati (convergenti, divergenti, curve e gomiti, valvole e altre ostruzioni, imbocchi e sbocchi) che generano *perdite di carico singolari* (o concentrate). In questi elementi il campo di moto si complica e si formano regioni di ricircolazione: parte dell'energia meccanica entrante alimenta questi moti rotatori, che non contribuiscono al trasporto di massa e di energia lungo la condotta e vengono infine dissipati. Più il campo di moto è complesso, più la dissipazione è importante. Le perdite singolari si esprimono tramite un coefficiente adimensionale $k$; accanto alla perdita lineare, scritta con la definizione di $lambda$, si ha quindi:

$
  Delta cal(H)_"lin" = lambda L/D 1/2 rho u_d^2 wide wide
  Delta cal(H)_"sing" = k 1/2 rho u^2
$

Nella seconda $u$ è la velocità media in una sezione di riferimento dell'elemento e non compare $L$, perché la perdita è concentrata. Se le sezioni di ingresso e di uscita sono diverse ($S_1 != S_2$) anche le velocità medie lo sono ($u_(d 1) S_1 = u_(d 2) S_2$), e il termine cinetico di $cal(H)$ non si elide.

=== Esempio: perdite di carico in condotta

Olio con $mu = 2 dot 10^(-2) "kg/(m s)"$ e $rho = 900 "kg/m"^3$, in una condotta di diametro $D = 2 "cm"$ e lunghezza $L = 20 "m"$. Calcolare $Delta p$ lungo $L$ per due portate in massa: $dot(m)_1 = 0","3 "kg/s"$ e $dot(m)_2 = 6 "kg/s"$.

Il procedimento è il seguente: dalla portata si ricava la velocità media, da questa $"Re"_D$, che stabilisce il regime e quindi quale formula usare per $lambda$; infine si calcola $Delta p$.

Con $S = pi D^2 \/ 4 = 3","14 dot 10^(-4) "m"^2$ si calcolano, per ciascuna portata, velocità media e numero di Reynolds:

$ u_d = dot(m)/(rho S), wide "Re"_D = (rho u_d D)/mu $

Il valore di $"Re"_D$ stabilisce la legge di resistenza da usare: in regime laminare il risultato di Poiseuille (), in regime turbolento, per tubo liscio, la formula empirica di Blasius:

$
  lambda = cases(
    64 / "Re"_D & "laminare" quad ("Re"_D lt.tilde 2300),
    0","3164 "Re"_D^(-1\/4) & "turbolento (Blasius)" quad (4 dot 10^3 lt.tilde "Re"_D lt.tilde 10^5)
  )
$

Noto $lambda$, la caduta di pressione lungo la condotta segue dalla formula delle perdite lineari:

$ Delta p = lambda L/D 1/2 rho u_d^2 $

I risultati sono riassunti nella tabella.

#align(center, table(
  columns: 6,
  align: center + horizon,
  inset: (x: 0.9em, y: 0.5em),
  stroke: (_, y) => (
    top: if y == 0 { 0.8pt } else { 0pt },
    bottom: if y == 0 { 0.5pt } else if y == 2 { 0.8pt } else { 0pt },
  ),
  table.header[$dot(m)$ [kg/s]][$u_d$ [m/s]][$"Re"_D$][regime][$lambda$][$Delta p$ [bar]],
  [0,3], [1,06], [955], [laminare], [0,067], [*0,34*],
  [6], [21,2], [$1","91 dot 10^4$], [turbolento], [0,0269], [*54*],
))

Con una portata 20 volte maggiore la caduta di pressione cresce di oltre 150 volte: in turbolento $Delta p prop u_d^(1","75)$, mentre in laminare $Delta p prop u_d$.

== Applicazione: rendimento di una installazione idroelettrica

Un serbatoio (R) alimenta, tramite una condotta forzata (c) di lunghezza $L = 1 "km"$ e diametro $D = 2 "m"$, una turbina (T) seguita da un canale di scarico di sezione $S_E = 20 "m"^2$ e coefficiente di perdita singolare $k = 2$, che sbocca in atmosfera nella sezione E. Il dislivello tra il pelo libero del serbatoio e lo sbocco è $h = z_R - z_E = 300 "m"$; la portata nominale è $Q = 20 "m"^3"/s"$ di acqua ($rho = 10^3 "kg/m"^3$) e il rendimento della turbina è $eta = 0","9$. Si assume il coefficiente di perdita distribuita indipendente da $"Re"$: $lambda = 0","018$.

#figure(fig-impianto())

#tappa[1. Perdite di carico nella condotta.] La velocità media nella condotta si ricava dalla portata e dall'area della sezione, $S_c = pi D^2 \/ 4$:

$ u_d = Q/S_c = 20/(pi dot 2^2 \/ 4) = 6","366 "m/s", wide L/D = 500 $

Con questi valori la formula delle perdite distribuite dà la perdita di carico nella condotta, espressa anche in metri di colonna d'acqua:

$ Delta cal(H)_c = lambda L/D 1/2 rho u_d^2 = 0","018 dot 500 dot 1/2 dot 10^3 dot 6","366^2 = 1","82 dot 10^5 "Pa" equiv 18","6 "m"_("H"_2"O") $

#tappa[2. Salto utile in turbina.] Il bilancio di carico tra R ed E dice come il carico disponibile si ripartisce tra le perdite in condotta, il salto utilizzato dalla turbina e le perdite nello scarico. Si assumono $u_R approx 0$ (pelo libero del serbatoio), $1/2 rho u_E^2 = 500 "Pa"$ trascurabile e $p_R approx p_E approx p_"atm"$: la variazione della pressione atmosferica su 300 m, $rho_"aria" g h approx 3","5 "kPa"$, è trascurabile. Il carico disponibile si riduce così al solo dislivello:

$
  Delta cal(H)_c + Delta cal(H)_T + Delta cal(H)_E
  &= (1/2 rho u_R^2 + rho g z_R + p_R) - (1/2 rho u_E^2 + rho g z_E + p_E) \
  &approx rho g h = 10^3 dot 9","8 dot 300 = 2","94 dot 10^6 "Pa"
$

La perdita nello scarico si calcola con la velocità media nel canale, $u_E$, e con il coefficiente di perdita singolare $k = 2$:

$ u_E = Q/S_E = 1 "m/s" quad arrow.r.double quad Delta cal(H)_E = k 1/2 rho u_E^2 = 10^3 "Pa" $

Il salto utile in turbina è ciò che resta del carico disponibile, tolte le perdite nella condotta e nello scarico:

$
  Delta cal(H)_T &= rho g h - Delta cal(H)_c - Delta cal(H)_E = 2","94 dot 10^6 - 1","82 dot 10^5 - 10^3 \
  &approx 2","76 dot 10^6 "Pa" approx 281 "m"_("H"_2"O")
$

Le perdite valgono circa il 6% del salto disponibile: alla portata nominale l'impianto lavora con perdite contenute.

#tappa[3. Potenza della turbina.] Con rendimento $eta = 0","9$ la potenza resa dalla turbina è:

$
  P = eta Q Delta cal(H)_T
  = eta Q (rho g h - underbrace((Delta cal(H)_c + Delta cal(H)_E), "perdite"))
  approx 49","6 "MW"
$

#tappa[4. Ottimizzazione: qual è la portata ottimale?] Aumentando $Q$ cresce la potenza disponibile, proporzionale a $Q$, ma crescono anche le perdite di carico, entrambe proporzionali a $Q^2$ ($Delta cal(H)_c prop u_d^2 prop Q^2$, $Delta cal(H)_E prop u_E^2 prop Q^2$). La potenza dissipata cresce quindi come $Q^3$ ed esiste un valore ottimo di $Q$. Con le perdite proporzionali a $Q^2$, la potenza è un polinomio di terzo grado in $Q$:

$
  P = eta Q (rho g h - (Delta cal(H)_c + Delta cal(H)_E))
  quad arrow.r.double quad
  P = A Q - B Q^3
$

#grid(
  columns: (1.35fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Il coefficiente $A$ contiene il salto disponibile, mentre $B$ raccoglie le due perdite di carico (con $u_d = Q \/ S_c$ e $u_E = Q \/ S_E$):
    $
      A &= eta rho g h = 2","65 dot 10^6 "Pa" \
      B &= 1/2 rho eta (lambda L/D 1/S_c^2 + k/S_E^2) approx 413 "kg/m"^7
    $
    Nel coefficiente $B$ compare tutta la geometria dell'impianto. La curva $P = Q (A - B Q^2)$ si annulla per $Q = 0$ e per $Q = sqrt(A \/ B)$; tra i due zeri ha un massimo.
  ],
  figure(fig-potenza()),
)

Il massimo si trova annullando la derivata della potenza rispetto alla portata:

$ (dif P)/(dif Q) = A - 3 B Q^2 = 0 quad arrow.r.double quad Q_"opt" = sqrt(A/(3 B)) $

Sostituendo $Q_"opt"$ in $P = Q (A - B Q^2)$ si ottiene la potenza massima:

$ P_"max" = 2/3 A Q_"opt" = 2/3 sqrt(A^3/(3 B)) $

Con i valori numerici di $A$ e $B$, la portata ottimale e la potenza massima valgono:

$ Q_"opt" approx 46","2 "m"^3"/s", wide P_"max" approx 81","6 "MW" $

Nel punto ottimo $B Q_"opt"^2 = A \/ 3$: le perdite (condotta + scarico) valgono un terzo del salto disponibile $rho g h$. La velocità nella condotta sale a circa $14","7 "m/s"$, quindi il risultato presuppone che $lambda$ ed $eta$ restino costanti anche a questa portata. Il punto nominale ($Q = 20 "m"^3"/s"$, $P approx 49","6 "MW"$) sta sul ramo crescente della curva.
