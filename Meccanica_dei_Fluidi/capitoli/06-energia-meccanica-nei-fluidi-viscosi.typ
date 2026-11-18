#import "../template.typ": *
#import "../figs/fig07.typ": *   // figure del capitolo (vedi figs/)
#show figure: set text(size: 9pt)
#set math.equation(numbering: n => numbering("(1.1)", counter(heading).get().first(), n))
= Energia meccanica nei fluidi viscosi

== Equazione di bilancio dell'energia meccanica (da Cauchy)

Il bilancio locale di energia meccanica (cinetica e potenziale) si ottiene moltiplicando scalarmente l'equazione di bilancio della quantità di moto di Cauchy per il vettore velocità $arrow(u)$ (velocità puntuale del fluido $u_i (arrow(x), t)$):

$ rho u_i (D u_i) / (D t) = u_i (partial sigma_(i j)) / (partial x_j) + rho u_i g_i $ <eq:cauchy_u>

Essendo la forza di gravità conservativa, possiamo introdurre il potenziale gravitazionale $psi$ tale che $g_i = -partial psi \/ partial x_i$ (ovvero $arrow(g) = -nabla psi$), con $psi = g x_3 = g z$ assumendo l'asse $x_3 = z$ verticale orientato verso l'alto. Ricordando che $u^2 = u_i u_i = u_1^2 + u_2^2 + u_3^2$, vale l'identità $u_i (D u_i \/ D t) = (D \/ D t)(u^2 \/ 2)$.

Assumendo il fluido *incomprimibile e omogeneo* ($rho = "cost"$, da cui l'equazione di continuità $partial u_j \/ partial x_j = 0$) e il potenziale gravitazionale stazionario ($partial psi \/ partial t = 0$), la densità $rho$ può essere portata dentro gli operatori di derivazione:

$
  (D) / (D t) (frac(rho u^2, 2)) &= -rho u_i (partial psi) / (partial x_i) + u_i (partial sigma_(i j)) / (partial x_j) \
  (partial) / (partial t) (frac(rho u^2, 2)) &= -u_j (partial) / (partial x_j) (frac(rho u^2, 2) + rho g z) + u_i (partial sigma_(i j)) / (partial x_j)
$ <eq:bilancio_ec>

L'effetto della natura del fluido (ideale o viscoso) risiede interamente nella forma costitutiva del tensore degli sforzi $sigma_(i j)$.

=== Caso A: fluido ideale (non viscoso) in forma differenziale

Per un fluido ideale gli sforzi tangenziali viscosi sono nulli e il tensore degli sforzi è puramente isotropo:

$ sigma_(i j) = -p delta_(i j) quad arrow.r.double quad u_i (partial sigma_(i j)) / (partial x_j) = -u_i (partial (p delta_(i j))) / (partial x_j) = -u_j (partial p) / (partial x_j) $ <eq:sforzi_ideali>

Sostituendo nell'@eq:bilancio_ec, il termine di pressione si raccoglie direttamente nella derivata spaziale:

$ (partial) / (partial t) (frac(rho u^2, 2)) = -u_j (partial) / (partial x_j) [underbrace(frac(rho u^2, 2) + p + rho g z, cal(H) : "carico totale")] $ <eq:bernoulli_diff>

dove "H elegante" $cal(H) = (1\/2) rho u^2 + p + rho g z$ è il *carico totale per unità di volume* (avente dimensioni di un'energia per unità di volume, ovvero di una pressione: $["J"\/"m"^3] = ["Pa"]$).

In regime *stazionario* ($partial \/ partial t = 0$), l'@eq:bernoulli_diff si riduce a $u_j (partial cal(H) \/ partial x_j) = 0$ (il carico $cal(H)$ si conserva lungo le linee di corrente: *teorema di Bernoulli*). Sfruttando la regola di derivazione del prodotto e l'incomprimibilità del fluido ($partial u_j \/ partial x_j = 0$), possiamo riscrivere l'equazione in *forma di divergenza* (forma conservativa):

$
  (partial (u_j cal(H))) / (partial x_j) = u_j (partial cal(H)) / (partial x_j) + cal(H) underbrace((partial u_j) / (partial x_j), = 0) = 0
  quad arrow.r.double quad
  (partial (u_j cal(H))) / (partial x_j) = nabla dot (arrow(u) cal(H)) = 0
$ <eq:div_H_ideale>

// ---------------------------------------------------------------
== Caso A in forma integrale: moto in condotta
// ---------------------------------------------------------------

Applichiamo l'@eq:div_H_ideale al caso specifico di un tronco di condotta cilindrica orizzontale a sezione costante, delimitato dalla sezione di ingresso $S_1$, dalla sezione di uscita $S_2$ e dalla parete laterale fissa $S_w$. Integrando sul volume di controllo $V$ e applicando il teorema della divergenza di Gauss (con $arrow(n)$ normale esterna):

$
  integral_V (partial (u_j cal(H))) / (partial x_j) dif V
  = integral_(S_1) cal(H) u_j n_j dif S_1 + integral_(S_2) cal(H) u_j n_j dif S_2 + integral_(S_w) cal(H) u_j n_j dif S_w = 0
$ <eq:gauss_ideale>

Per un fluido ideale non vale l'aderenza a parete, ma vale la condizione di *impermeabilità* su $S_w$: la velocità è tangente alla parete, per cui $arrow(u) dot arrow(n) = u_j n_j = 0$ e l'integrale su $S_w$ si annulla.

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.1em,
  align: (left + horizon, center + horizon),
  [
    Definiamo il *flusso di volume* (portata volumetrica) attraverso la sezione trasversale di area $A$ come
    $ Q_v = integral_(S_2) u_j n_j dif S_2 = -integral_(S_1) u_j n_j dif S_1 $ <eq:portata_vol>
    (costante tra ingresso e uscita per conservazione della massa con $rho = "cost"$), dove il segno meno su $S_1$ è dovuto al fatto che la normale uscente $arrow(n)_1$ ha verso opposto alla velocità $arrow(u)_1$.
  ],
  [
    #block(breakable: false, width: 100%)[
      #align(center)[
        #include "../figs/06-energia-meccanica-nei-fluidi-viscosi-fig01.typ"
      ]
    ]
  ],
)

Nelle applicazioni ingegneristiche su condotte (spesso lunghe chilometri) non interessa il dettaglio del profilo puntuale di velocità, ma si introduce la *velocità media sulla sezione* $U_d = Q_v \/ A$ e il carico medio associato alla sezione "H stampatello":

$ H = 1 / Q_v integral_S cal(H)_("loc") arrow(u) dot arrow(n) dif S approx 1/2 rho U_d^2 + p + rho g z $ <eq:H_medio>

Il bilancio integrale per il fluido ideale si scrive quindi in forma compatta:

$ -Q_v cal(H_1) + Q_v cal(H_2) = 0 quad arrow.r.double quad H_2 - H_1 = 0 quad H_1 = H_2 $ <eq:bilancio_ideale_int>

In un tubo orizzontale ($z_1 = z_2$) a sezione circolare costante ($A_1 = A_2 arrow.r.double U_(d,1) = U_(d,2)$), il modello di fluido ideale prevede dunque $p_1 = p_2$. Tuttavia, *qualsiasi esperimento reale mostra sistematicamente che $H_2 < H_1$ (ovvero $p_2 < p_1$)*: lungo il moto si produce sempre una *perdita di carico* $Delta H = H_1 - H_2 > 0$, ossia una dissipazione di energia meccanica causata dalla viscosità del fluido.

// ---------------------------------------------------------------
== Caso B in forma differenziale: fluido viscoso e funzione di dissipazione
// ---------------------------------------------------------------

Per comprendere l'origine fisica delle perdite di carico, introduciamo la legge costitutiva di un fluido viscoso newtoniano incomprimibile:

$ sigma_(i j) = -p delta_(i j) + tau_(i j) quad "con" quad tau_(i j) = 2 mu D_(i j) = mu ((partial u_i) / (partial x_j) + (partial u_j) / (partial x_i)) $ <eq:costitutiva_newton>

dove $D_(i j) = (1\/2)(partial u_i \/ partial x_j + partial u_j \/ partial x_i)$ è il tensore velocità di deformazione (simmetrico).

Sviluppiamo il termine di potenza degli sforzi $u_i (partial sigma_(i j) \/ partial x_j)$ separando il contributo di pressione da quello viscoso e applicando la regola di derivazione del prodotto (a ritroso) per evidenziare i termini di divergenza:

$
  u_i (partial sigma_(i j)) / (partial x_j)
  = underbrace((partial (u_i sigma_(i j))) / (partial x_j), "(A) termine di flusso")
  - underbrace(sigma_(i j) (partial u_i) / (partial x_j), "(B) termine di pozzo/sorgente")
$ <eq:split_potenza>

Sostituendo $sigma_(i j) = -p delta_(i j) + tau_(i j)$ e ricordando che per un fluido incomprimibile $partial u_j \/ partial x_j = 0$:

#nota[
  *Nota:* _se il fluido fosse comprimibile varrebbe invece $partial u_j \/ partial x_j = -(1\/rho)(D rho \/ D t)$, ma i termini $plus.minus p (partial u_j \/ partial x_j)$ in $(A)$ e $(B)$ si eliderebbero comunque identicamente._
]

- *Nel termine (A)*: $partial (u_i sigma_(i j)) \/ partial x_j = -u_j (partial p \/ partial x_j) + partial (u_i tau_(i j)) \/ partial x_j$.
- *Nel termine (B)*: poiché il tensore $D_(i j)$ è simmetrico, nella contrazione $tau_(i j) (partial u_i \/ partial x_j) = 2 mu D_(i j) (D_(i j) + Omega_(i j))$ il contributo della parte antisimmetrica del gradiente di velocità $Omega_(i j)$ è identicamente nullo ($D_(i j) Omega_(i j) = 0$), per cui vale il passaggio fondamentale:
  $ -tau_(i j) (partial u_i) / (partial x_j) = -2 mu D_(i j) D_(i j) equiv -cal(D) $ <eq:def_dissipazione>

#block(breakable: false, width: 100%)[
  Sostituendo nell'@eq:bilancio_ec, il bilancio differenziale di energia meccanica per un fluido viscoso diventa:

  $ (partial) / (partial t) (frac(rho u^2, 2)) = -u_j (partial) / (partial x_j) [underbrace(frac(rho u^2, 2) + p + rho g z, cal(H))] - cal(D) + (partial (u_i tau_(i j))) / (partial x_j) $ <eq:bilancio_viscoso_diff>

  In regime stazionario ($partial \/ partial t = 0$), portando il flusso convettivo a primo membro (con $partial u_j \/ partial x_j = 0$), otteniamo:

  $ (partial (u_j cal(H))) / (partial x_j) = -cal(D) + (partial (u_i tau_(i j))) / (partial x_j) $ <eq:div_H_viscoso>
]

I due nuovi termini viscosi contengono entrambi la viscosità $mu$ e i gradienti di velocità, ma hanno una natura fisica e matematica profondamente diversa:

*1. Termine di flusso viscoso:* $+partial (u_i tau_(i j)) \/ partial x_j$ \
È espresso come una *divergenza*: per il teorema di Gauss non crea né distrugge energia all'interno del dominio, ma trasporta energia meccanica attraverso la superficie di contorno $S$ mediante il lavoro degli sforzi viscosi.

*2. Termine di pozzo (dissipazione $cal(D)$):* $-cal(D)$ "D elegante" \
Non è una divergenza, bensì un termine di *pozzo* locale ($["W"\/"m"^3]$). Essendo la somma dei quadrati delle 9 componenti di $D_(i j)$:
#math.equation(block: true, numbering: none)[
  $ cal(D) = 2 mu D_(i j) D_(i j) = 2 mu sum_(i,j=1)^3 D_(i j)^2 >= 0 $
]
preceduto dal segno meno ($-cal(D) <= 0$), esso *sottrae sempre e inevitabilmente energia meccanica* al fluido in presenza di gradienti di velocità.

== Caso B: perdita di carico in una condotta semplice

#block(breakable: false, width: 100%)[
  Integriamo il bilancio generale (@eq:bilancio_viscoso_diff) su un volume di controllo $V$ racchiuso dalla superficie $S$ e applichiamo il teorema della divergenza al primo e al terzo termine a secondo membro:

  $
    (dif) / (dif t) integral_V frac(rho u^2, 2) dif V
    = -integral_S cal(H) u_j n_j dif S
    - underbrace(integral_V cal(D) dif V, D_v >= 0)
    + underbrace(integral_S u_i tau_(i j) n_j dif S, P_m)
  $ <eq:bilancio_int_generale>

  dove:
  - $D_v = integral_V 2 mu D_(i j) D_(i j) dif V >= 0$ è la *potenza viscosa dissipata* complessivamente nel volume $V$ (misurata in Watt, $["W"] = ["J"\/"s"]$);
  - $P_m$ rappresenta la potenza meccanica scambiata attraverso la superficie di controllo $S$ per effetto degli sforzi superficiali.
]

Consideriamo nuovamente il caso di una *condotta semplice a pareti fisse* ($S = S_1 union S_2 union S_w$) in regime stazionario ($dif \/ dif t = 0$):
1. Sulle pareti solide fisse $S_w$ vale la condizione di *aderenza* ($arrow(u) = 0$), che annulla sia il flusso convettivo di $cal(H)$ sia il lavoro degli sforzi su $S_w$.
2. Sulle sezioni di ingresso $S_1$ e uscita $S_2$, il flusso di energia meccanica dovuto agli sforzi viscosi $integral_(S_1 union S_2) u_i tau_(i j) n_j dif S$ è del tutto trascurabile rispetto al flusso convettivo $Q_v cal(H)$ (ed è identicamente nullo se il moto in condotta è completamente sviluppato). Pertanto, in una condotta passiva si ha *$P_m approx 0$*.

Dall'@eq:bilancio_int_generale, ricordando che $integral_S cal(H) u_j n_j dif S = Q_v (cal(H)_2 - cal(H)_1)$, si ottiene:

$ Q_v (cal(H)_2 - cal(H)_1) = -D_v quad arrow.r.double quad Delta cal(H) equiv cal(H)_1 - cal(H)_2 = D_v / Q_v > 0 $ <eq:perdita_condotta_semplice>

#nota[
  *Nota.* \
  L'energia meccanica sottratta dal termine $-D_v$ non scompare, ma entra come *termine sorgente positivo* ($+D_v$) nel bilancio dell'energia interna (termica), scaldando il fluido. Tuttavia, a causa dell'elevata capacità termica dei liquidi (come l'acqua), l'incremento di temperatura $Delta T$ tra ingresso e uscita è talmente esiguo da risultare quasi non misurabile, mentre l'effetto meccanico sulla caduta di pressione $Delta p = Delta cal(H)$ è macroscopico e fondamentale.
]

// ---------------------------------------------------------------
== Applicazione: moto in condotta in presenza di una macchina a fluido
// ---------------------------------------------------------------

#grid(
  columns: (1.06fr, 0.94fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Vediamo ora un caso in cui il termine di potenza superficiale $P_m$ non solo non è trascurabile, ma diventa il termine dominante: l'inserimento di una *macchina a fluido* (turbomacchina: pompa o turbina) all'interno della condotta. La superficie di controllo $S$ comprende ora:
    - le sezioni di ingresso $S_1$ e di uscita $S_2$;
    - le pareti fisse della condotta $S_w$, su cui vale $arrow(u) = 0$;
    - la superficie mobile delle pale della macchina $S_m$, che si muovono con velocità $arrow(w) != 0$: per aderenza, su $S_m$ il fluido ha velocità $arrow(u) = arrow(w) != 0$.
  ],
  [
    #block(breakable: false, width: 100%)[
      #include "../figs/06-energia-meccanica-nei-fluidi-viscosi-fig02.typ"
    ]
  ]
)

Poiché sulle pale mobili $S_m$ la velocità non è nulla ($arrow(u) != 0$), gli sforzi esercitati a parete sulla superficie $S_m$ compiono lavoro nell'unità di tempo; in ultima istanza, la trasmissione di potenza meccanica $P_m$ tra macchina e fluido avviene attraverso il flusso diffusivo di quantità di moto (sforzi) a parete su $S_m$.

Allo stesso tempo, $S_m$ è una superficie solida impermeabile (non attraversata da portata relativa), per cui nel bilancio stazionario il flusso convettivo netto di carico totale attraverso la frontiera si riduce ai soli contributi di $S_1$ e $S_2$:

$
  -integral_S arrow(u) cal(H) dot arrow(n) dif S
  = -integral_(S_1) cal(H) arrow(u) dot arrow(n)_1 dif S_1 - integral_(S_2) cal(H) arrow(u) dot arrow(n)_2 dif S_2
  = Q_v cal(H)_1 - Q_v cal(H)_2
$ <eq:flusso_H_macchina>

Il bilancio integrale stazionario in presenza della macchina a fluido diventa pertanto:

$
  P_m - D_v = Q_v (cal(H)_2 - cal(H)_1)
  quad arrow.l.r.double quad
  Delta cal(H) thin Q_v = (cal(H)_1 - cal(H)_2) Q_v = D_v - P_m
$ <eq:bilancio_macchina>

Dall'@eq:bilancio_macchina, scritta nella forma esplicita $cal(H)_2 - cal(H)_1 = -Delta cal(H) = (P_m - D_v) \/ Q_v$, si distinguono due casi:
- *Pompa ($P_m > 0$)*: la macchina *fornisce* potenza meccanica al fluido. Poiché la potenza fornita da una pompa è molto superiore alla dissipazione viscosa ($P_m >> D_v$), il termine $(P_m - D_v)$ è positivo e determina un *incremento di carico* in uscita, $cal(H)_2 > cal(H)_1$ (ovvero una perdita di carico negativa, $Delta cal(H) < 0$). Questo surplus di carico permette, ad esempio, di vincere un dislivello geodetico $rho g (z_2 - z_1)$ per sollevare l'acqua dal piano terra ai piani superiori di un edificio.
- *Turbina ($P_m < 0$)*: la macchina *estrae* potenza meccanica dal fluido ($P_m = -|P_m|$). I contributi di estrazione e dissipazione hanno lo stesso segno e si sommano, $Delta cal(H) = cal(H)_1 - cal(H)_2 = (D_v + |P_m|) \/ Q_v > 0$, producendo una forte caduta di carico tra ingresso e uscita della condotta.

// ---------------------------------------------------------------
== Coefficiente di perdita di carico, numero di Reynolds e regimi di moto
// ---------------------------------------------------------------

Torniamo al caso della condotta cilindrica orizzontale passiva ($P_m = 0$) di diametro interno $d$, percorso da un fluido di densità $rho$ e viscosità dinamica $mu$ con velocità media $U_d = Q_v \/ A$. Tra due sezioni $S_1$ e $S_2$ poste a distanza $L$, essendo $U_(d,1) = U_(d,2)$ e $z_1 = z_2$, la perdita di carico coincide con la caduta di pressione:

$ Delta cal(H) = cal(H)_1 - cal(H)_2 = p_1 - p_2 = Delta p $ <eq:perdita_pressione>

Sperimentalmente è possibile misurare $Delta cal(H)$ variando i *cinque parametri* del problema: la distanza $L$, il diametro del tubo $d$, la velocità media $U_d$ (cioè la portata $Q_v$), la densità $rho$ e la viscosità $mu$. Per raggruppare tutti i possibili esperimenti in un'unica legge universale, si procede per adimensionalizzazione:
1. Si definisce la perdita di carico per unità di lunghezza della condotta, $Delta cal(H) \/ L$.
2. Si adimensionalizza $Delta cal(H)$ dividendolo per la pressione dinamica basata sulla velocità media, $(1\/2) rho U_d^2$ (che ha dimensioni $["Pa"]$), e si adimensionalizza la lunghezza $L$ con la scala geometrica caratteristica della sezione, cioè il diametro $d$.

Si ottiene così il *coefficiente di perdita di carico* (o *fattore d'attrito di Darcy*), adimensionale:

$ lambda equiv frac((Delta cal(H)) / L, frac(1, 2) rho U_d^2 / d) = frac(Delta cal(H), frac(1, 2) rho U_d^2) frac(d, L) $ <eq:def_lambda>

L'analisi dimensionale e l'evidenza sperimentale mostrano che, per una condotta liscia, il parametro $lambda$ non dipende separatamente da $U_d, d, rho, mu$, ma dipende *unicamente* da un singolo gruppo adimensionale fondamentale, il *numero di Reynolds*:

$ "Re" equiv frac(rho U_d d, mu) = frac(U_d d, nu) $ <eq:def_reynolds>

essendo $nu = mu \/ rho$ la viscosità cinematica del fluido ($["m"^2\/"s"]$). La complessità di 5 parametri fisici indipendenti collassa così in una relazione universale *$lambda = f("Re")$*, valida per qualunque tubo cilindrico e per qualunque fluido newtoniano.




#grid(
    columns: (01fr, 1.04fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),
    [
      Riportando i dati sperimentali sul piano $("Re", lambda)$ e visualizzando contemporaneamente il campo di moto mediante l'iniezione di un sottile filo di colorante all'interno della condotta (*esperimento di Reynolds*), si individuano *tre regioni distinte*:
    ],
    [
      #include "../figs/06-energia-meccanica-nei-fluidi-viscosi-fig03.typ"
      
    ]
  )


1. *Regime laminare ($"Re" lt.tilde 1000$--$2000$)*: il colorante viene trasportato a valle lungo un filamento perfettamente rettilineo e ordinato. Pur essendoci agitazione molecolarmente caotica a scala microscopica, a *scala macroscopica* il campo di moto è ordinato e stratificato in lamine fluide. In questo regime i dati sperimentali seguono con estrema precisione la legge:
   $ lambda = frac(64, "Re") $ <eq:lambda_laminare>
2. *Regione di transizione ($"Re" approx 1000$--$2000$)*: è una fascia intermedia caratterizzata da una forte dispersione dei dati sperimentali, nella quale la soglia critica non è un numero fisso ma dipende sensibilmente dalle perturbazioni esterne (vibrazioni della condotta, rugosità d'imbocco, oscillazioni residue).
3. *Regime turbolento ($"Re" gt.tilde 2000$)*: il filamento di colorante si spezza rapidamente rimescolandosi in tutta la sezione attraverso traiettorie vorticose, irregolari e caotiche: il disordine si manifesta anche a *scala macroscopica*. Sul diagramma di $lambda("Re")$ la dipendenza dal numero di Reynolds diventa molto più debole (per condotte lisce vale la correlazione empirica di Blasius, $lambda prop "Re"^(-1\/4)$).

== Moto, dissipazione e perdite di carico in una condotta circolare: moto di Poiseuille

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

#tappa[Portata.] Si sostituisce nell'integrale della portata il profilo @eq:poiseuille_profilo, scritto come $u(r) = G \/ mu (r^2\/4 - R^2\/4)$, e si integra in $r$:

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

Il valore di $"Re"_D$ stabilisce la legge di resistenza da usare: in regime laminare il risultato di Poiseuille (@eq:lambda_poiseuille), in regime turbolento, per tubo liscio, la formula empirica di Blasius:

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
