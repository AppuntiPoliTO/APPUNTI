#import "../template.typ": *

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
