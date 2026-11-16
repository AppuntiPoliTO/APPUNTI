#import "../template.typ": *
#show figure: set text(size: 9pt)   // etichette delle figure a 9pt, come nel modello

= Cinematica dei Fluidi e Bilancio di Massa

== Cinematica dei Fluidi

Per studiare un fluido continuo trascurandone la natura corpuscolare, introduciamo la *scala macroscopica* $L$. Affinché l'ipotesi di continuo sia valida, il cammino libero medio delle molecole $l$ deve essere trascurabile rispetto a $L$:

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    In condizioni ordinarie il cammino libero medio $l$ vale $6 dot 10^(-8) thin ["m"]$ nell'aria e $3 dot 10^(-10) thin ["m"]$ nell'acqua. Il rapporto tra $l$ e la scala macroscopica $L$ definisce il *numero di Knudsen*:
    $ "Kn" = l / L lt.double 1 $ <eq:knudsen>
    Sotto questa ipotesi di separazione di scale ha senso definire le grandezze macroscopiche del fluido.
  ],
  [
    #figure(include "../figs/03-cinematica-dei-fluidi-e-bilancio-di-massa-fig01.typ")
  ]
)

Le grandezze macroscopiche si definiscono mediando le proprietà microscopiche delle molecole ($alpha$) su un volumetto di controllo $cal(V)$. La densità locale è il rapporto tra la massa totale delle molecole e il volume:

$ rho = m / cal(V) quad "dove" quad m = sum_alpha m_alpha $

Analogamente, la velocità macroscopica $arrow(u)$ è data dal rapporto tra la quantità di moto complessiva delle molecole e la massa totale:

$ arrow(u) = (sum_alpha m_alpha arrow(u)_alpha) / m $

== Equilibrio Locale e Approcci Descrittivi

Definiamo la *particella fluida* come un dominio elementare di dimensione $d$ tale che $l << d << L$: essa rappresenta un "punto materiale" macroscopico che si muove nel dominio con la velocità locale del fluido $arrow(u) equiv (dif arrow(x)) / (dif t)$.

Per rappresentare l'evoluzione dei campi fisici nel tempo si adottano due approcci complementari: quello lagrangiano e quello euleriano.

=== Approccio Lagrangiano

Nell'approccio lagrangiano si seguono le singole particelle lungo le loro traiettorie. La posizione di ciascuna particella è individuata dalla sua posizione iniziale $arrow(a)$ al tempo $t_0$:

$ arrow(x) = arrow(x)(arrow(a), t) $

Mantenendo fissa l'etichetta $arrow(a)$ della particella, la sua velocità e la sua accelerazione si ottengono derivando rispetto al tempo la legge oraria:

$ u_i = ( (partial x_i) / (partial t) )_arrow(a) , wide a_i = ( (partial^2 x_i) / (partial t^2) )_arrow(a) $

Questo metodo traccia le particelle dal punto di iniezione: è intuitivo e utile per lo studio del trasporto di inquinanti, ma risulta matematicamente complesso da gestire per un intero campo fluido tridimensionale.

=== Approccio Euleriano

Nell'approccio euleriano si osserva ciò che accade in punti fissi dello spazio al variare del tempo. Le grandezze, come la velocità, sono funzioni della posizione spaziale $arrow(x)$ e del tempo $t$:

$ arrow(u) = arrow(u)(arrow(x), t) $

I due punti di vista sono legati dalla definizione cinematica della traiettoria, secondo cui la velocità della particella coincide con la velocità euleriana nel punto occupato all'istante $t$:

$ (dif arrow(x)) / (dif t) = arrow(u)(arrow(x), t) quad ("velocità euleriana locale") $

Integrando il campo di velocità euleriano è possibile ricostruire le traiettorie delle particelle.

Il campo euleriano può essere visualizzato tramite le *linee di corrente* (*streamlines*), definite come le curve che, in un fissato istante $t$, sono tangenti in ogni punto al vettore velocità $arrow(u)$. Esse si ottengono imponendo che lo spostamento elementare $dif arrow(x)$ lungo la curva sia parallelo alla velocità:

$ arrow(u) times dif arrow(x) = arrow(0) $

Sviluppando il prodotto vettoriale mediante il determinante formale nelle componenti $(u, v, w)$ e $(dif x, dif y, dif z)$, si ottiene:

$ op("det") mat(delim: "|", hat(e)_1, hat(e)_2, hat(e)_3; u, v, w; dif x, dif y, dif z) = mat(delim: "|", v dif z - w dif y; -u dif z + w dif x; u dif y - v dif x) = mat(delim: "|", 0; 0; 0) $

== Derivata Materiale (o Sostanziale)

Per una particella in moto, la definizione di accelerazione differisce tra i due approcci:
- in ambito lagrangiano, l'accelerazione è la derivata temporale della velocità della singola particella: $a_i = ((dif u_i) / (dif t))_arrow(a)$;
- in ambito euleriano, le derivate parziali rispetto al tempo indicano la variazione in un punto _fisso_ dello spazio, senza seguire il fluido.

Per valutare come cambia una proprietà generica $phi = phi(arrow(x), t)$ seguendo il moto della particella fluida nel campo euleriano, si utilizza il differenziale totale lungo la traiettoria:

$ dif phi = (partial phi) / (partial t) dif t + (partial phi) / (partial x_i) dif x_i quad <==> quad dif phi = (partial phi) / (partial t) dif t + dif arrow(x) dot nabla phi $

Dividendo per l'intervallo di tempo $dif t$ e ricordando che per una particella in moto $(dif x_i) / (dif t) = u_i$, si ottiene la *derivata lagrangiana (o materiale)*, indicata con $D / (D t)$:

$ (D phi) / (D t) equiv (partial phi) / (partial t) + u_i (partial phi) / (partial x_i) quad <==> quad (D phi) / (D t) = (partial phi) / (partial t) + arrow(u) dot nabla phi $ <eq:derivata_materiale>

Il primo termine $(partial phi) / (partial t)$ è il tasso locale di variazione a punto fisso, mentre il secondo termine $arrow(u) dot nabla phi$ è il tasso convettivo indotto dal moto del fluido attraverso i gradienti spaziali. A seconda del comportamento del campo di velocità euleriano, si definisce il moto:
- *Moto vario (instazionario)*: $arrow(u) = arrow(u)(arrow(x), t)$.
- *Moto permanente (stazionario)*: $arrow(u) = arrow(u)(arrow(x))$, in cui le derivate parziali temporali sono nulle.
- *Moto uniforme*: $arrow(u) = "cost"$, in cui i gradienti spaziali sono nulli.

== Bilancio di Massa

Per studiare i bilanci macroscopici consideriamo un dominio $cal(D)$ e la sua superficie di contorno $cal(S)$. Distinguiamo:
- *Volume di controllo*: un dominio fisso nello spazio, in cui la velocità della superficie è $arrow(u)_S (arrow(x), t) = arrow(0)$.
- *Dominio materiale*: un volume che si muove e si deforma seguendo esattamente le particelle fluide, per cui la velocità della superficie coincide con quella del fluido, $arrow(u)_S (arrow(x), t) = arrow(u)(arrow(x), t)$.

#grid(
  columns: (1.25fr, 0.75fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Data una grandezza integrale $Phi(t) = integral_(cal(D)) phi(arrow(x), t) dif cal(V)$, il *teorema del trasporto di Reynolds* esprime la sua derivata temporale come somma della variazione locale e del flusso attraverso il contorno:
    $ (dif Phi) / (dif t) = integral_(cal(D)(t)) (partial phi) / (partial t) dif cal(V) + integral_(cal(S)(t)) phi arrow(u)_S dot arrow(n) dif cal(S) $ <eq:reynolds_generale>
    Questo teorema generalizza la regola di Leibniz per volumi a confini variabili nello spazio tridimensionale.
  ],
  [
    #figure(include "../figs/03-cinematica-dei-fluidi-e-bilancio-di-massa-fig02.typ")
  ]
)

== Bilancio di Massa ed Equazione di Continuità

Il teorema del trasporto di Reynolds, espresso dall'@eq:reynolds_generale, permette di tradurre la conservazione della massa nell'equazione differenziale di continuità.

== Cinematica: Shear Flow

I campi di velocità in cui si verifica una forte variazione del moto in direzione ortogonale rispetto alla direzione principale del flusso sono definiti *moti di taglio* (in inglese, *shear flow*). Questa configurazione cinematica è caratterizzata da un elevato gradiente di velocità perpendicolare allo spostamento macroscopico.

#figure(
  include "../figs/03-cinematica-dei-fluidi-e-bilancio-di-massa-fig03.typ"
)

Applichiamo il teorema di Reynolds alla conservazione della massa per un dominio materiale, ponendo $phi = rho$ (densità), la cui grandezza integrale è la massa $M$. Poiché il dominio materiale contiene sempre le stesse particelle fluide, vale $arrow(u)_S = arrow(u)$ e la derivata temporale della massa è nulla:

$ (dif M) / (dif t) = integral_(cal(D)(t)) (partial rho) / (partial t) dif cal(V) + integral_(cal(S)(t)) rho arrow(u) dot arrow(n) dif cal(S) = 0 $

Applicando il teorema della divergenza di Gauss all'integrale di superficie, lo trasformiamo in un integrale esteso al volume $cal(D)$:

$ integral_cal(D) (partial rho) / (partial t) dif cal(V) + integral_cal(D) nabla dot (rho arrow(u)) dif cal(V) = 0 $

Poiché questa relazione deve valere per qualsiasi volume arbitrario $cal(D)$, l'integrando deve essere nullo ovunque, fornendo l'*equazione locale di continuità*:

$ (partial rho) / (partial t) + nabla dot (rho arrow(u)) = 0 quad <==> quad (partial rho) / (partial t) + (partial (rho u_j)) / (partial x_j) = 0 $ <eq:continuita>

Sviluppando la divergenza del prodotto $rho u_j$ con la regola di Leibniz, si isolano i termini della derivata materiale della densità:

$ underbrace((partial rho) / (partial t) + u_j (partial rho) / (partial x_j), (D rho) / (D t)) + rho (partial u_j) / (partial x_j) = 0 $

Riconoscendo nei primi due addendi la derivata lagrangiana $(D rho) / (D t)$ e dividendo per $rho$, l'equazione di continuità assume la forma:

$ 1 / rho (D rho) / (D t) = - (partial u_j) / (partial x_j) quad <==> quad 1 / rho (D rho) / (D t) = - nabla dot arrow(u) $ <eq:continuita_lagr>

L'@eq:continuita_lagr fornisce l'interpretazione fisica della divergenza della velocità:
- se $rho$ aumenta lungo il moto ($(D rho) / (D t) > 0$), risulta $nabla dot arrow(u) < 0$ e la particella fluida si contrae;
- se $rho$ diminuisce ($(D rho) / (D t) < 0$), risulta $nabla dot arrow(u) > 0$ e la particella fluida si espande.

#nota[
  *Trasporto macroscopico (Convettivo) vs Trasporto microscopico (Diffusivo)*

  Il dominio materiale "imbriglia" idealmente le particelle fluide, ma non le singole molecole, che continuano a entrare e uscire dal volume di controllo. Tuttavia, questo scambio non altera il bilancio di massa globale: a livello microscopico, il moto molecolare in un fluido è caotico e isotropo, per cui i flussi di molecole in direzioni opposte si elidono statisticamente restituendo un flusso netto nullo.

  Si distinguono quindi due regimi di trasporto:
  - *Diffusivo*: avviene alla scala microscopica/molecolare (es. una goccia di inchiostro che si spande in acqua ferma per l'agitazione termica);
  - *Convettivo*: avviene alla scala macroscopica ed è associato al movimento in blocco (il *bulk*) delle particelle fluide (dal latino, "portare appresso").
]

Se il fluido è incomprimibile, la densità della particella si conserva lungo il moto ($(D rho) / (D t) = 0$), il che porta alla condizione di incomprimibilità:

$ nabla dot arrow(u) = 0 $ <eq:incomprimibilita>

#nota[
  *Nota bene*: avere divergenza nulla non implica necessariamente che la densità sia costante in tutto lo spazio ($rho = "cost"$). È un'equazione compatibile con campi di moto in cui la densità varia spazialmente (es. fluidi stratificati per salinità o temperatura), a patto che le singole particelle fluide non subiscano espansioni o contrazioni volumetriche lungo le proprie traiettorie.
]

L'approssimazione di incomprimibilità è fisicamente accettabile quando il numero di Mach del flusso è piccolo, tipicamente $"Ma" equiv u / c <= 0.3$. A questi regimi, la velocità di propagazione delle onde acustiche ($c approx 330 thin ["m"\/"s"]$) è molto più grande rispetto alla velocità di trascinamento del fluido. Poiché le variazioni di densità sono indotte proprio dalla compressione associata alle onde di pressione (acustiche), l'enorme divario di velocità disaccoppia il fenomeno acustico da quello macroscopico-convettivo, permettendo di considerare il fluido localmente incomprimibile.

=== Applicazione: Conservazione della massa in un condotto 1D

#block(breakable: false)[
  #grid(
    columns: (1.2fr, 0.8fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Un importante risultato si ottiene applicando il bilancio di massa a un condotto a geometria variabile in regime stazionario. Scegliamo un volume di controllo fisso $cal(D)$ delimitato dalle due sezioni d'ingresso e d'uscita ($S_1, S_2$) e dalle pareti laterali ($S_w$). Integrando l'@eq:incomprimibilita sul volume e applicando il teorema di Gauss con normale esterna $arrow(n)$, si ha:
      $ integral_cal(D) nabla dot arrow(u) dif cal(V) = 0 quad arrow.r.double quad integral_cal(S) arrow(u) dot arrow(n) dif cal(S) = 0 $
    ],
    [
      #figure(image("/images/condotto.png", width: 100%))
    ]
  )

  Scomponendo l'integrale chiuso sulla frontiera $cal(S)$ nei tre contributi relativi a $S_1$, $S_2$ e $S_w$:

  $ integral_(S_1) arrow(u) dot arrow(n)_1 dif S_1 + integral_(S_2) arrow(u) dot arrow(n)_2 dif S_2 + integral_(S_w) arrow(u) dot arrow(n)_w dif S_w = 0 $

  Poiché le pareti laterali sono impermeabili, il flusso normale attraverso $S_w$ è nullo ($arrow(u) dot arrow(n)_w = 0$). Sulle sezioni di ingresso e uscita assumiamo velocità uniformi e allineate con la normale.
]

Scegliendo la normale $arrow(n)$ uscente dal volume, sulla sezione di ingresso $S_1$ il versore $arrow(n)_1$ ha verso opposto alla velocità, perciò il flusso si esprime in funzione della velocità media sulla sezione $u_1$:

$ integral_(S_1) arrow(u) dot arrow(n)_1 dif S_1 = -u_1 S_1 quad "con" quad u_1 = - 1 / S_1 integral_(S_1) arrow(u) dot arrow(n)_1 dif S_1 $

Analogamente, sulla sezione di uscita il flusso vale $+u_2 S_2$. Sostituendo nel bilancio di superficie si ottiene la conservazione della *portata volumetrica* $Q_v$:

$ -u_1 S_1 + u_2 S_2 = 0 quad arrow.r.double quad u_1 S_1 = u_2 S_2 = Q_v quad ["m"^3 / "s"] $ <eq:portata_condotto_1d>

Moltiplicando tale risultato per la densità costante $rho$, si definisce la *portata in massa* $dot(m)$:

$ dot(m) = rho u_1 S_1 = rho u_2 S_2 = rho Q_v quad ["kg" / "s"] $

La portata volumetrica $Q_v = integral_S arrow(u) dot arrow(n) dif S$ è dunque costante in ogni sezione trasversale $S$ del condotto, dove la velocità media vale $u = Q_v / S$.

#pagebreak()
