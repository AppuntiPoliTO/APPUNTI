#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#set page(
  paper: "a4",
  margin: (x: 2.2cm, y: 2.4cm),
  numbering: "1",
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set heading(numbering: "1.1")
#show heading.where(level: 1): it => block(below: 1em, above: 1.2em)[
  #set text(size: 15pt, weight: "bold")
  #it
]
#show heading.where(level: 2): it => block(below: 0.8em, above: 1.3em)[
  #set text(size: 12.5pt, weight: "bold")
  #it
]
#show heading.where(level: 3): it => block(below: 0.6em, above: 1em)[
  #set text(size: 11pt, weight: "bold")
  #it
]

// Box per note fisiche e osservazioni importanti
#let nota-box(titolo, corpo) = block(
  width: 100%,
  breakable: false,
  fill: rgb("#f4f7fa"),
  stroke: (left: 3pt + rgb("#1f5a96")),
  inset: (x: 12pt, y: 9pt),
  radius: (right: 3pt),
  above: 0.9em,
  below: 0.9em,
)[
  *#titolo.* #corpo
]

= Equazione globale della meccanica dei fluidi

== Introduzione e motivazione fisica

Nello studio del moto laminare in una condotta circolare (moto di Hagen-Poiseuille), risolvendo le equazioni differenziali del moto si ottiene un profilo di velocità assiale $u_z (r)$ parabolico e una distribuzione lineare degli sforzi tangenziali viscosi $tau_(r z) (r)$.
In generale, la forza totale esercitata da un fluido su un corpo (o su una parete solida di superficie $S_w$ e normale $arrow(n)$) è data dall'integrale superficiale del vettore degli sforzi:

$
arrow(F) = integral_(S_w) bold(T) dot arrow(n) dif S_w quad "con" quad T_(i j) = -p delta_(i j) + tau_(i j)
$

Tuttavia, il calcolo diretto di questo integrale richiede di conoscere punto per punto la distribuzione della pressione $p$ e dei gradienti di velocità (da cui dipendono gli sforzi viscosi $tau_(i j)$) lungo tutta la parete. Nella maggior parte dei problemi applicativi, risolvere analiticamente le equazioni di Navier-Stokes per ottenere tali informazioni locali è impossibile, e anche per via numerica risulta estremamente oneroso.

Per aggirare questa difficoltà si ricorre alla *formulazione integrale del bilancio della quantità di moto* (detta *equazione globale della meccanica dei fluidi*). Questo approccio permette di determinare la forza scambiata tra fluido e parete non tramite un'integrazione locale diretta sulla superficie solida, bensì *come residuo* di un bilancio globale su un opportuno volume di controllo, conoscendo unicamente il comportamento del fluido sulle sezioni di ingresso e di uscita.

== Derivazione dell'equazione globale

Partiamo dall'equazione di Cauchy (bilancio differenziale della quantità di moto) in presenza del campo gravitazionale:

$
rho (D u_i) / (D t) &= rho g_i + partial / (partial x_j) T_(i j) \
T_(i j) &= -p delta_(i j) + tau_(i j)
$

Per un fluido newtoniano incomprimibile, il tensore degli sforzi viscosi è:

$
tau_(i j) = 2 mu D_(i j) quad "con" quad D_(i j) = 1/2 ( (partial u_i) / (partial x_j) + (partial u_j) / (partial x_i) )
$

#block(breakable: false)[
  Sviluppiamo il termine inerziale a primo membro (derivata materiale). Applicando la regola di derivazione del prodotto e sfruttando l'equazione di continuità in forma generale $partial rho / partial t + partial / (partial x_j) (rho u_j) = 0$ (che per un fluido incomprimibile a densità costante $rho = "cost"$ si riduce a $partial u_j / partial x_j = 0$), si ottiene:

  $
  rho (D u_i) / (D t) &= rho (partial u_i) / (partial t) + rho u_j (partial u_i) / (partial x_j) = \
  &= partial / (partial t) (rho u_i) - u_i (partial rho) / (partial t) + partial / (partial x_j) (rho u_i u_j) - u_i partial / (partial x_j) (rho u_j) = \
  &= partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j) - u_i underbrace(( (partial rho) / (partial t) + partial / (partial x_j) (rho u_j) ), = 0) \
  &= partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j)
  $
]

Sostituendo nell'equazione del moto, portando tutti i termini a primo membro e integrando su un volume di controllo fisso $V$ delimitato da una superficie chiusa $S$ (con normale esterna uscente $n_j$):

$
integral_V partial / (partial t) (rho u_i) dif V + integral_V partial / (partial x_j) (rho u_i u_j) dif V - integral_V partial / (partial x_j) T_(i j) dif V - integral_V rho g_i dif V = 0
$

Applicando il teorema della divergenza di Gauss ($integral_V partial / (partial x_j) F_(i j) dif V = integral_S F_(i j) n_j dif S$) ai due termini sotto il segno di derivata spaziale e cambiando di segno l'intera equazione, otteniamo l'equazione globale della meccanica dei fluidi:

$
underbrace(integral_V rho g_i dif V, arrow(G)) + underbrace(integral_S T_(i j) n_j dif S, arrow(Pi)) + underbrace((- integral_S rho u_i u_j n_j dif S), arrow(M)) + underbrace((- integral_V partial / (partial t) (rho u_i) dif V), arrow(I)) = 0 quad ==> quad arrow(G) + arrow(Pi) + arrow(M) + arrow(I) = 0
$

I quattro vettori che compongono il bilancio rappresentano:
- $arrow(G)$: risultante delle forze di volume (gravitazionali) agenti sul fluido nel volume $V$;
- $arrow(Pi)$: risultante delle forze di superficie (pressioni e sforzi viscosi) agenti sul contorno $S$, interpretabile fisicamente come il *flusso microscopico (diffusivo)* di quantità di moto;
- $arrow(M)$: *flusso macroscopico (convettivo)* netto di quantità di moto attraverso la superficie di contorno $S$ (con il segno meno incorporato nella definizione);
- $arrow(I)$: termine inerziale legato alla non stazionarietà locale del campo di moto (anch'esso con il segno meno incorporato).

== Analisi dei singoli termini per una condotta

Consideriamo un flusso interno attraverso un tronco di condotta. Il volume di controllo $V$ è delimitato dalla superficie di ingresso $S_1$, dalla superficie di uscita $S_2$ e dalla superficie solida laterale (parete) $S_w$, per cui $S = S_1 union S_2 union S_w$. La normale $arrow(n)$ è per convenzione sempre diretta verso l'esterno del volume di fluido.

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

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Infatti, supponendo il flusso diretto lungo l'asse $x$ e normale alle sezioni di ingresso e uscita:
    - su $S_1$ la velocità $arrow(u)$ è entrante mentre la normale $arrow(n)_1 = (-1, 0, 0)$ è uscente (antiparallele), quindi $u_j n_j = -abs(arrow(u)) = -u$, e il segno meno davanti all'integrale rende positivo il contributo entrante $arrow(M)_"in"$;
    - su $S_2$ la velocità $arrow(u)$ e la normale $arrow(n)_2 = (1, 0, 0)$ sono concordi (uscenti), quindi $u_j n_j = +abs(arrow(u)) = +u$, dando luogo al contributo negativo $-arrow(M)_"out"$.
  ],
  [
    #cetz.canvas(length: 0.82cm, {
      import cetz.draw: *
      // Pareti condotta
      line((0, 1.2), (5, 1.2), stroke: 1.6pt + black)
      line((0, -1.2), (5, -1.2), stroke: 1.6pt + black)
      // Tratteggio parete solida
      for x in (0.4, 1.0, 1.6, 2.2, 2.8, 3.4, 4.0, 4.6) {
        line((x, 1.2), (x + 0.25, 1.45), stroke: 0.6pt + gray)
        line((x, -1.2), (x - 0.25, -1.45), stroke: 0.6pt + gray)
      }
      // Sezioni S1 e S2 (volume di controllo)
      line((0.5, -1.2), (0.5, 1.2), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      line((4.5, -1.2), (4.5, 1.2), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      content((0.85, -0.9), text(size: 9pt, fill: rgb("#1f5a96"))[$S_1$])
      content((4.15, -0.9), text(size: 9pt, fill: rgb("#1f5a96"))[$S_2$])
      content((2.5, 0.85), text(size: 9pt)[$S_w$])

      // Normali n1, n2, nw
      line((0.5, 0.35), (-0.4, 0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((-0.4, 0.68), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_1$])

      line((4.5, 0.35), (5.4, 0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((5.4, 0.68), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_2$])

      line((2.5, 1.2), (2.5, 2.0), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.9, 1.75), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_w$])

      // Velocità u1 e u2
      line((0.1, -0.35), (1.2, -0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((1.1, -0.05), text(size: 9pt, fill: rgb("#1f5a96"))[$arrow(u)_1$])

      line((4.1, -0.35), (5.2, -0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((5.1, -0.05), text(size: 9pt, fill: rgb("#1f5a96"))[$arrow(u)_2$])

      // Asse x
      line((1.8, -1.8), (3.4, -1.8), mark: (end: ">"), stroke: 0.8pt + black)
      content((3.65, -1.8), text(size: 9pt)[$x$])
    })
  ]
)

Lungo la direzione $x$, esprimendo il flusso di quantità di moto in forma integrata tramite la velocità media sulla sezione $U_d$ (definita come $U_d = 1/S integral_S u dif S = Q/S$), il vettore quantità di moto attraverso una generica sezione piana $S$ ha come unica componente non nulla quella lungo $x$:

$
M_(x, "in") = integral_(S_1) rho u^2 dif S_1 = rho U_(d, 1)^2 S_1, quad M_(x, "out") = integral_(S_2) rho u^2 dif S_2 = rho U_(d, 2)^2 S_2
$

=== Analisi di $arrow(Pi)$

Anche l'integrale delle forze di superficie si scompone sulle tre superfici:

$
arrow(Pi) = arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_w
$

Sulle sezioni fluide di ingresso $S_1$ e di uscita $S_2$, per flussi con linee di corrente pressoché rettilinee e parallele, i gradienti assiali di velocità sono trascurabili rispetto ai termini di pressione ($tau_(i j) prop partial u_i / partial x_j approx 0$). Pertanto il tensore degli sforzi si riduce alla sola componente isotropa di pressione $T_(i j) approx -p delta_(i j)$:

$
(Pi_1)_i &= integral_(S_1) T_(i j) n_j dif S_1 approx integral_(S_1) -p delta_(i j) n_j dif S_1 = -integral_(S_1) p n_i dif S_1 \
(Pi_2)_i &= -integral_(S_2) p n_i dif S_2
$

Proiettando lungo l'asse $x$ (ricordando che $n_(1, x) = -1$ e $n_(2, x) = +1$) e indicando con $p_1, p_2$ le pressioni sulle sezioni (omogenee sulla sezione trasversale se le linee di corrente sono rettilinee e gli effetti gravitazionali trasversali sono trascurabili):

$
Pi_(1, x) = +p_1 S_1 = Pi_"in", quad Pi_(2, x) = -p_2 S_2 = -Pi_"out"
$

Il terzo termine, $arrow(Pi)_w = integral_(S_w) T_(i j) n_j dif S_w = arrow(F)$, contiene la *forza cercata*.

#nota-box("Attenzione ai segni e alle normali")[
  Poiché per convenzione la normale $arrow(n)$ su $S_w$ è diretta dal fluido verso l'esterno (cioè *entra* nella parete solida), il termine $arrow(Pi)_w = arrow(F)$ rappresenta la *forza esercitata dalla parete sul fluido*. Per il terzo principio della dinamica, la forza esercitata dal fluido sulla parete è uguale e opposta, ovvero $-arrow(F)$.
]

=== Bilancio per condotta orizzontale a sezione costante

Consideriamo una condotta cilindrica orizzontale ($G_x = 0$) in regime stazionario ($I_x = 0$). L'equazione globale lungo $x$ si riduce a:

$
arrow(M) + arrow(Pi) = 0
$

Esplicitando i contributi lungo $x$, con $M_"in" = M_(x, 1)$ e $M_"out" = M_(x, 2)$:

$
(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2)) + F_x &= 0 \
F_x &= -[(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2))] = \
&= -[(rho U_(d, 1)^2 S_1 - rho U_(d, 2)^2 S_2) + (p_1 S_1 - p_2 S_2)]
$

Se la sezione della condotta è costante ($S_1 = S_2 = S$), per la conservazione della portata ($Q = U_(d, 1) S_1 = U_(d, 2) S_2$) si ha $U_(d, 1) = U_(d, 2) = U_d$. I flussi convettivi di quantità di moto in ingresso e in uscita sono pertanto identici e si elidono ($M_(x, 1) = M_(x, 2)$), lasciando:

$
F_x = -S (p_1 - p_2)
$

Poiché per mantenere il moto in presenza di attrito deve essere $p_1 > p_2$, la forza $F_x$ risulta *negativa*: essa è infatti la forza di resistenza viscosa esercitata dalla parete sul fluido, che si oppone al deflusso.

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Per una condotta circolare di raggio $R$ e lunghezza $L$, la forza $F_x$ è l'integrale dello sforzo tangenziale a parete $tau_w$ (inteso in modulo) sulla superficie laterale $S_w = 2 pi R L$, diretto in verso opposto al moto ($F_x = -tau_w S_w$). In condizioni stazionarie:
    $
    (p_1 - p_2) S &= tau_w S_w \
    [p(x_1) - (p(x_1) + (partial p) / (partial x) L)] pi R^2 &= tau_w 2 pi R L
    $
    Definendo la caduta di pressione positiva $Delta p = p_1 - p_2 > 0$ (ovvero $-(partial p / partial x) L = Delta p$):
    $
    pi R^2 Delta p = tau_w 2 pi R L quad ==> quad tau_w = (Delta p) / (2 L) R
    $
  ],
  [
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      // Cilindro
      line((0, 1.1), (4.6, 1.1), stroke: 1.4pt + black)
      line((0, -1.1), (4.6, -1.1), stroke: 1.4pt + black)
      circle((0, 0), radius: (0.35, 1.1), stroke: 1.2pt + rgb("#1f5a96"), fill: rgb("#e8f1fa"))
      circle((4.6, 0), radius: (0.35, 1.1), stroke: 1.2pt + rgb("#1f5a96"))

      // Asse e raggio R
      line((-0.6, 0), (5.5, 0), mark: (end: ">"), stroke: (paint: gray, thickness: 0.7pt, dash: "dash-dotted"))
      content((5.75, 0), text(size: 9pt)[$x$])
      line((0, 0), (0, 1.1), mark: (end: ">"), stroke: 0.9pt + black)
      content((0.3, 0.55), text(size: 8.5pt)[$R$])

      // Sforzi tau_w (opposti al moto)
      line((3.2, 0.85), (1.6, 0.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.4, 0.55), text(size: 9pt, fill: rgb("#c0392b"))[$tau_w$])
      line((3.2, -0.85), (1.6, -0.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.4, -0.55), text(size: 9pt, fill: rgb("#c0392b"))[$tau_w$])

      // Pressioni p1 e p2
      line((-0.85, 0.4), (-0.1, 0.4), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((-0.9, 0.75), text(size: 9pt, fill: rgb("#1f5a96"))[$p_1$])
      line((5.45, 0.4), (4.7, 0.4), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((5.5, 0.75), text(size: 9pt, fill: rgb("#1f5a96"))[$p_2$])

      // Quota L
      line((0, -1.6), (4.6, -1.6), mark: (start: "<", end: ">"), stroke: 0.8pt + black)
      line((0, -1.2), (0, -1.8), stroke: 0.5pt + gray)
      line((4.6, -1.2), (4.6, -1.8), stroke: 0.5pt + gray)
      content((2.3, -1.95), text(size: 9pt)[$L$])
    })
  ]
)

#nota-box("Confronto con le equazioni di Navier-Stokes")[
  A differenza dell'approccio differenziale visto nella soluzione di Poiseuille (in cui era necessario risolvere le equazioni di Navier-Stokes per determinare il profilo di velocità e derivarlo a parete), il bilancio globale permette di calcolare lo sforzo viscoso a parete $tau_w$ direttamente dalla caduta di pressione $Delta p$ e dalla geometria, *senza conoscere il dettaglio del campo di velocità interno*.
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
    Indicando con $U_1 = U_(d, 1)$ e $U_2 = U_(d, 2)$ le velocità medie nelle due sezioni:
    $
    rho U_1^2 S_1 - rho U_2^2 S_2 + p_1 S_1 - p_2 S_2 + F_x &= 0 \
    F_x = -(p_1 S_1 - p_2 S_2) - rho (U_1^2 S_1 - U_2^2 S_2) &
    $
    Dalla conservazione della portata volumetrica $Q = S_1 U_1 = S_2 U_2$, possiamo esprimere $U_1^2 S_1 = Q U_1 = Q^2 / S_1$ (e analogamente in $S_2$), ottenendo:
    $
    F_x = -[(p_1 S_1 - p_2 S_2) + rho Q^2 (1/S_1 - 1/S_2)]
    $
  ],
  [
    #cetz.canvas(length: 0.82cm, {
      import cetz.draw: *
      // Pareti convergenti morbide
      bezier((0, 1.35), (4.5, 0.65), (2.0, 1.35), (2.5, 0.65), stroke: 1.6pt + black)
      bezier((0, -1.35), (4.5, -0.65), (2.0, -1.35), (2.5, -0.65), stroke: 1.6pt + black)

      // Sezioni S1 e S2
      line((0.3, -1.35), (0.3, 1.35), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      line((4.2, -0.65), (4.2, 0.65), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      content((0.65, -1.0), text(size: 9pt, fill: rgb("#1f5a96"))[$S_1$])
      content((3.85, -0.42), text(size: 9pt, fill: rgb("#1f5a96"))[$S_2$])

      // Normale su parete curva
      line((2.3, 1.0), (2.6, 1.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((3.0, 1.65), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_w$])

      // Portata e velocità
      line((-0.3, 0), (1.1, 0), mark: (end: ">"), stroke: 1.2pt + rgb("#1f5a96"))
      content((0.9, 0.32), text(size: 9pt, fill: rgb("#1f5a96"))[$U_1, p_1$])

      line((3.7, 0), (5.3, 0), mark: (end: ">"), stroke: 1.2pt + rgb("#1f5a96"))
      content((4.9, 0.32), text(size: 9pt, fill: rgb("#1f5a96"))[$U_2, p_2$])

      content((2.2, -0.15), text(size: 9.5pt, weight: "bold")[$Q$])
    })
  ]
)

Questa relazione mette in luce due aspetti fondamentali:
1. *Interpretazione fisica*: la forza $F_x$ esercitata dalla parete sul fluido (uguale e opposta alla spinta $-F_x$ che il fluido esercita sulla condotta) è data direttamente dalla differenza tra ciò che entra e ciò che esce dal volume di controllo, sommando la variazione del *flusso microscopico (diffusivo)* di quantità di moto legato agli urti molecolari ($p_1 S_1 - p_2 S_2$) e la variazione del *flusso macroscopico (convettivo)* di quantità di moto ($rho Q^2 (1/S_1 - 1/S_2)$).
2. *Vantaggio sperimentale*: mentre il calcolo teorico locale degli sforzi e delle pressioni lungo una parete curva a sezione variabile è estremamente complesso, questa formula permette di determinare sperimentalmente la spinta globale sulla condotta conoscendo la geometria ($S_1, S_2$) ed effettuando solamente tre misure: le pressioni $p_1$ e $p_2$ (tramite due prese di pressione a monte e a valle) e la portata $Q$.

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
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      // Fondo orizzontale
      line((-0.5, 0), (5.8, 0), stroke: 1.6pt + black)
      for x in (-0.3, 0.3, 0.9, 1.5, 2.1, 2.7, 3.3, 3.9, 4.5, 5.1) {
        line((x, 0), (x - 0.2, -0.25), stroke: 0.6pt + gray)
      }

      // Pelo libero a monte (h1 = 2.4) e curva sotto paratoia fino a valle (h2 = 0.85)
      line((0.2, 2.4), (2.7, 2.4), stroke: 1.3pt + rgb("#1f5a96"))
      bezier((2.7, 1.15), (4.8, 0.85), (3.1, 0.85), (3.8, 0.85), stroke: 1.3pt + rgb("#1f5a96"))
      line((4.8, 0.85), (5.5, 0.85), stroke: 1.3pt + rgb("#1f5a96"))

      // Paratoia
      rect((2.7, 1.15), (2.95, 2.85), fill: gray.lighten(40%), stroke: 1.2pt + black)
      line((2.7, 1.8), (1.8, 1.8), mark: (end: ">"), stroke: 1.2pt + rgb("#c0392b"))
      content((1.8, 2.15), text(size: 9pt, fill: rgb("#c0392b"))[$F_x$])

      // Sezioni S1 e S2
      line((0.6, 0), (0.6, 2.4), stroke: (paint: rgb("#1f5a96"), thickness: 1.1pt, dash: "dashed"))
      line((4.9, 0), (4.9, 0.85), stroke: (paint: rgb("#1f5a96"), thickness: 1.1pt, dash: "dashed"))
      content((0.9, 1.2), text(size: 8.5pt, fill: rgb("#1f5a96"))[$S_1$])
      content((4.55, 0.45), text(size: 8.5pt, fill: rgb("#1f5a96"))[$S_2$])

      // Triangolo idrostatico a monte
      line((0.6, 2.4), (-0.35, 0), (0.6, 0), close: true, fill: rgb("#1f5a96").lighten(82%), stroke: 0.8pt + rgb("#1f5a96"))
      line((-0.1, 0.6), (0.55, 0.6), mark: (end: ">"), stroke: 0.7pt + rgb("#1f5a96"))
      line((0.15, 1.2), (0.55, 1.2), mark: (end: ">"), stroke: 0.7pt + rgb("#1f5a96"))

      // Triangolo idrostatico a valle
      line((4.9, 0.85), (5.5, 0), (4.9, 0), close: true, fill: rgb("#1f5a96").lighten(82%), stroke: 0.8pt + rgb("#1f5a96"))

      // Quote h1 e h2
      line((1.4, 0), (1.4, 2.4), mark: (start: "<", end: ">"), stroke: 0.7pt + black)
      content((1.7, 1.2), text(size: 8.5pt)[$h_1$])

      line((3.9, 0), (3.9, 0.85), mark: (start: "<", end: ">"), stroke: 0.7pt + black)
      content((3.55, 0.45), text(size: 8.5pt)[$h_2$])

      // Assi x, z
      line((-0.5, 0), (-0.5, 2.9), mark: (end: ">"), stroke: 0.7pt + black)
      content((-0.75, 2.85), text(size: 8.5pt)[$z$])
    })
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

#pagebreak()



= Equazione globale della meccanica dei fluidi

== Introduzione e motivazione fisica

Nello studio del moto laminare in una condotta circolare (moto di Hagen-Poiseuille), risolvendo le equazioni differenziali del moto si ottiene un profilo di velocità assiale $u_z (r)$ parabolico e una distribuzione lineare degli sforzi tangenziali viscosi $tau_(r z) (r)$.
In generale, la forza totale esercitata da un fluido su un corpo (o su una parete solida di superficie $S_w$ e normale $arrow(n)$) è data dall'integrale superficiale del vettore degli sforzi:

$
arrow(F) = integral_(S_w) bold(T) dot arrow(n) dif S_w quad "con" quad T_(i j) = -p delta_(i j) + tau_(i j)
$

Tuttavia, il calcolo diretto di questo integrale richiede di conoscere punto per punto la distribuzione della pressione $p$ e dei gradienti di velocità (da cui dipendono gli sforzi viscosi $tau_(i j)$) lungo tutta la parete. Nella maggior parte dei problemi applicativi, risolvere analiticamente le equazioni di Navier-Stokes per ottenere tali informazioni locali è impossibile, e anche per via numerica risulta estremamente oneroso.

Per aggirare questa difficoltà si ricorre alla *formulazione integrale del bilancio della quantità di moto* (detta *equazione globale della meccanica dei fluidi*). Questo approccio permette di determinare la forza scambiata tra fluido e parete non tramite un'integrazione locale diretta sulla superficie solida, bensì *come residuo* di un bilancio globale su un opportuno volume di controllo, conoscendo unicamente il comportamento del fluido sulle sezioni di ingresso e di uscita.

== Derivazione dell'equazione globale

Partiamo dall'equazione di Cauchy (bilancio differenziale della quantità di moto) in presenza del campo gravitazionale:

$
rho (D u_i) / (D t) &= rho g_i + partial / (partial x_j) T_(i j) \
T_(i j) &= -p delta_(i j) + tau_(i j)
$

Per un fluido newtoniano incomprimibile, il tensore degli sforzi viscosi è:

$
tau_(i j) = 2 mu D_(i j) quad "con" quad D_(i j) = 1/2 ( (partial u_i) / (partial x_j) + (partial u_j) / (partial x_i) )
$

#block(breakable: false)[
  Sviluppiamo il termine inerziale a primo membro (derivata materiale). Applicando la regola di derivazione del prodotto e sfruttando l'equazione di continuità in forma generale $partial rho / partial t + partial / (partial x_j) (rho u_j) = 0$ (che per un fluido incomprimibile a densità costante $rho = "cost"$ si riduce a $partial u_j / partial x_j = 0$), si ottiene:

  $
  rho (D u_i) / (D t) &= rho (partial u_i) / (partial t) + rho u_j (partial u_i) / (partial x_j) = \
  &= partial / (partial t) (rho u_i) - u_i (partial rho) / (partial t) + partial / (partial x_j) (rho u_i u_j) - u_i partial / (partial x_j) (rho u_j) = \
  &= partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j) - u_i underbrace(( (partial rho) / (partial t) + partial / (partial x_j) (rho u_j) ), = 0) \
  &= partial / (partial t) (rho u_i) + partial / (partial x_j) (rho u_i u_j)
  $
]

Sostituendo nell'equazione del moto, portando tutti i termini a primo membro e integrando su un volume di controllo fisso $V$ delimitato da una superficie chiusa $S$ (con normale esterna uscente $n_j$):

$
integral_V partial / (partial t) (rho u_i) dif V + integral_V partial / (partial x_j) (rho u_i u_j) dif V - integral_V partial / (partial x_j) T_(i j) dif V - integral_V rho g_i dif V = 0
$

Applicando il teorema della divergenza di Gauss ($integral_V partial / (partial x_j) F_(i j) dif V = integral_S F_(i j) n_j dif S$) ai due termini sotto il segno di derivata spaziale e cambiando di segno l'intera equazione, otteniamo l'equazione globale della meccanica dei fluidi:

$
underbrace(integral_V rho g_i dif V, arrow(G)) + underbrace(integral_S T_(i j) n_j dif S, arrow(Pi)) + underbrace((- integral_S rho u_i u_j n_j dif S), arrow(M)) + underbrace((- integral_V partial / (partial t) (rho u_i) dif V), arrow(I)) = 0 quad ==> quad arrow(G) + arrow(Pi) + arrow(M) + arrow(I) = 0
$

I quattro vettori che compongono il bilancio rappresentano:
- $arrow(G)$: risultante delle forze di volume (gravitazionali) agenti sul fluido nel volume $V$;
- $arrow(Pi)$: risultante delle forze di superficie (pressioni e sforzi viscosi) agenti sul contorno $S$, interpretabile fisicamente come il *flusso microscopico (diffusivo)* di quantità di moto;
- $arrow(M)$: *flusso macroscopico (convettivo)* netto di quantità di moto attraverso la superficie di contorno $S$ (con il segno meno incorporato nella definizione);
- $arrow(I)$: termine inerziale legato alla non stazionarietà locale del campo di moto (anch'esso con il segno meno incorporato).

== Analisi dei singoli termini per una condotta

Consideriamo un flusso interno attraverso un tronco di condotta. Il volume di controllo $V$ è delimitato dalla superficie di ingresso $S_1$, dalla superficie di uscita $S_2$ e dalla superficie solida laterale (parete) $S_w$, per cui $S = S_1 union S_2 union S_w$. La normale $arrow(n)$ è per convenzione sempre diretta verso l'esterno del volume di fluido.

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

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Infatti, supponendo il flusso diretto lungo l'asse $x$ e normale alle sezioni di ingresso e uscita:
    - su $S_1$ la velocità $arrow(u)$ è entrante mentre la normale $arrow(n)_1 = (-1, 0, 0)$ è uscente (antiparallele), quindi $u_j n_j = -abs(arrow(u)) = -u$, e il segno meno davanti all'integrale rende positivo il contributo entrante $arrow(M)_"in"$;
    - su $S_2$ la velocità $arrow(u)$ e la normale $arrow(n)_2 = (1, 0, 0)$ sono concordi (uscenti), quindi $u_j n_j = +abs(arrow(u)) = +u$, dando luogo al contributo negativo $-arrow(M)_"out"$.
  ],
  [
    #cetz.canvas(length: 0.82cm, {
      import cetz.draw: *
      line((0, 1.2), (5, 1.2), stroke: 1.6pt + black)
      line((0, -1.2), (5, -1.2), stroke: 1.6pt + black)
      for x in (0.4, 1.0, 1.6, 2.2, 2.8, 3.4, 4.0, 4.6) {
        line((x, 1.2), (x + 0.25, 1.45), stroke: 0.6pt + gray)
        line((x, -1.2), (x - 0.25, -1.45), stroke: 0.6pt + gray)
      }
      line((0.5, -1.2), (0.5, 1.2), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      line((4.5, -1.2), (4.5, 1.2), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      content((0.85, -0.9), text(size: 9pt, fill: rgb("#1f5a96"))[$S_1$])
      content((4.15, -0.9), text(size: 9pt, fill: rgb("#1f5a96"))[$S_2$])
      content((2.5, 0.85), text(size: 9pt)[$S_w$])

      line((0.5, 0.35), (-0.4, 0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((-0.4, 0.68), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_1$])

      line((4.5, 0.35), (5.4, 0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((5.4, 0.68), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_2$])

      line((2.5, 1.2), (2.5, 2.0), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.9, 1.75), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_w$])

      line((0.1, -0.35), (1.2, -0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((1.1, -0.05), text(size: 9pt, fill: rgb("#1f5a96"))[$arrow(u)_1$])

      line((4.1, -0.35), (5.2, -0.35), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((5.1, -0.05), text(size: 9pt, fill: rgb("#1f5a96"))[$arrow(u)_2$])

      line((1.8, -1.8), (3.4, -1.8), mark: (end: ">"), stroke: 0.8pt + black)
      content((3.65, -1.8), text(size: 9pt)[$x$])
    })
  ]
)

Lungo la direzione $x$, esprimendo il flusso di quantità di moto in forma integrata tramite la velocità media sulla sezione $U_d$ (definita come $U_d = 1/S integral_S u dif S = Q/S$), il vettore quantità di moto attraverso una generica sezione piana $S$ ha come unica componente non nulla quella lungo $x$:

$
M_(x, "in") = integral_(S_1) rho u^2 dif S_1 = rho U_(d, 1)^2 S_1, quad M_(x, "out") = integral_(S_2) rho u^2 dif S_2 = rho U_(d, 2)^2 S_2
$

=== Analisi di $arrow(Pi)$

Anche l'integrale delle forze di superficie si scompone sulle tre superfici:

$
arrow(Pi) = arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_w
$

Sulle sezioni fluide di ingresso $S_1$ e di uscita $S_2$, per flussi con linee di corrente pressoché rettilinee e parallele, i gradienti assiali di velocità sono trascurabili rispetto ai termini di pressione ($tau_(i j) prop partial u_i / partial x_j approx 0$). Pertanto il tensore degli sforzi si riduce alla sola componente isotropa di pressione $T_(i j) approx -p delta_(i j)$:

$
(Pi_1)_i &= integral_(S_1) T_(i j) n_j dif S_1 approx integral_(S_1) -p delta_(i j) n_j dif S_1 = -integral_(S_1) p n_i dif S_1 \
(Pi_2)_i &= -integral_(S_2) p n_i dif S_2
$

Proiettando lungo l'asse $x$ (ricordando che $n_(1, x) = -1$ e $n_(2, x) = +1$) e indicando con $p_1, p_2$ le pressioni sulle sezioni (omogenee sulla sezione trasversale se le linee di corrente sono rettilinee e gli effetti gravitazionali trasversali sono trascurabili):

$
Pi_(1, x) = +p_1 S_1 = Pi_"in", quad Pi_(2, x) = -p_2 S_2 = -Pi_"out"
$

Il terzo termine, $arrow(Pi)_w = integral_(S_w) T_(i j) n_j dif S_w = arrow(F)$, contiene la *forza cercata*.

#nota-box("Attenzione ai segni e alle normali")[
  Poiché per convenzione la normale $arrow(n)$ su $S_w$ è diretta dal fluido verso l'esterno (cioè *entra* nella parete solida), il termine $arrow(Pi)_w = arrow(F)$ rappresenta la *forza esercitata dalla parete sul fluido*. Per il terzo principio della dinamica, la forza esercitata dal fluido sulla parete è uguale e opposta, ovvero $-arrow(F)$.
]

=== Bilancio per condotta orizzontale a sezione costante

Consideriamo una condotta cilindrica orizzontale ($G_x = 0$) in regime stazionario ($I_x = 0$). L'equazione globale lungo $x$ si riduce a:

$
arrow(M) + arrow(Pi) = 0
$

Esplicitando i contributi lungo $x$, con $M_"in" = M_(x, 1)$ e $M_"out" = M_(x, 2)$:

$
(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2)) + F_x &= 0 \
F_x &= -[(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2))] = \
&= -[(rho U_(d, 1)^2 S_1 - rho U_(d, 2)^2 S_2) + (p_1 S_1 - p_2 S_2)]
$

Se la sezione della condotta è costante ($S_1 = S_2 = S$), per la conservazione della portata ($Q = U_(d, 1) S_1 = U_(d, 2) S_2$) si ha $U_(d, 1) = U_(d, 2) = U_d$. I flussi convettivi di quantità di moto in ingresso e in uscita sono pertanto identici e si elidono ($M_(x, 1) = M_(x, 2)$), lasciando:

$
F_x = -S (p_1 - p_2)
$

Poiché per mantenere il moto in presenza di attrito deve essere $p_1 > p_2$, la forza $F_x$ risulta *negativa*: essa è infatti la forza di resistenza viscosa esercitata dalla parete sul fluido, che si oppone al deflusso.

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Per una condotta circolare di raggio $R$ e lunghezza $L$, la forza $F_x$ è l'integrale dello sforzo tangenziale a parete $tau_w$ (inteso in modulo) sulla superficie laterale $S_w = 2 pi R L$, diretto in verso opposto al moto ($F_x = -tau_w S_w$). In condizioni stazionarie:
    $
    (p_1 - p_2) S &= tau_w S_w \
    [p(x_1) - (p(x_1) + (partial p) / (partial x) L)] pi R^2 &= tau_w 2 pi R L
    $
    Definendo la caduta di pressione positiva $Delta p = p_1 - p_2 > 0$ (ovvero $-(partial p / partial x) L = Delta p$):
    $
    pi R^2 Delta p = tau_w 2 pi R L quad ==> quad tau_w = (Delta p) / (2 L) R
    $
  ],
  [
    #cetz.canvas(length: 0.8cm, {
      import cetz.draw: *
      line((0, 1.1), (4.6, 1.1), stroke: 1.4pt + black)
      line((0, -1.1), (4.6, -1.1), stroke: 1.4pt + black)
      circle((0, 0), radius: (0.35, 1.1), stroke: 1.2pt + rgb("#1f5a96"), fill: rgb("#e8f1fa"))
      circle((4.6, 0), radius: (0.35, 1.1), stroke: 1.2pt + rgb("#1f5a96"))

      line((-0.6, 0), (5.5, 0), mark: (end: ">"), stroke: (paint: gray, thickness: 0.7pt, dash: "dash-dotted"))
      content((5.75, 0), text(size: 9pt)[$x$])
      line((0, 0), (0, 1.1), mark: (end: ">"), stroke: 0.9pt + black)
      content((0.3, 0.55), text(size: 8.5pt)[$R$])

      line((3.2, 0.85), (1.6, 0.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.4, 0.55), text(size: 9pt, fill: rgb("#c0392b"))[$tau_w$])
      line((3.2, -0.85), (1.6, -0.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((2.4, -0.55), text(size: 9pt, fill: rgb("#c0392b"))[$tau_w$])

      line((-0.85, 0.4), (-0.1, 0.4), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((-0.9, 0.75), text(size: 9pt, fill: rgb("#1f5a96"))[$p_1$])
      line((5.45, 0.4), (4.7, 0.4), mark: (end: ">"), stroke: 1.1pt + rgb("#1f5a96"))
      content((5.5, 0.75), text(size: 9pt, fill: rgb("#1f5a96"))[$p_2$])

      line((0, -1.6), (4.6, -1.6), mark: (start: "<", end: ">"), stroke: 0.8pt + black)
      line((0, -1.2), (0, -1.8), stroke: 0.5pt + gray)
      line((4.6, -1.2), (4.6, -1.8), stroke: 0.5pt + gray)
      content((2.3, -1.95), text(size: 9pt)[$L$])
    })
  ]
)

#nota-box("Confronto con le equazioni di Navier-Stokes")[
  A differenza dell'approccio differenziale visto nella soluzione di Poiseuille (in cui era necessario risolvere le equazioni di Navier-Stokes per determinare il profilo di velocità e derivarlo a parete), il bilancio globale permette di calcolare lo sforzo viscoso a parete $tau_w$ direttamente dalla caduta di pressione $Delta p$ e dalla geometria, *senza conoscere il dettaglio del campo di velocità interno*.
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
    Indicando con $U_1 = U_(d, 1)$ e $U_2 = U_(d, 2)$ le velocità medie nelle due sezioni:
    $
    rho U_1^2 S_1 - rho U_2^2 S_2 + p_1 S_1 - p_2 S_2 + F_x &= 0 \
    F_x = -(p_1 S_1 - p_2 S_2) - rho (U_1^2 S_1 - U_2^2 S_2) &
    $
    Dalla conservazione della portata volumetrica $Q = S_1 U_1 = S_2 U_2$, possiamo esprimere $U_1^2 S_1 = Q U_1 = Q^2 / S_1$ (e analogamente in $S_2$), ottenendo:
    $
    F_x = -[(p_1 S_1 - p_2 S_2) + rho Q^2 (1/S_1 - 1/S_2)]
    $
  ],
  [
    #cetz.canvas(length: 0.82cm, {
      import cetz.draw: *
      bezier((0, 1.35), (4.5, 0.65), (2.0, 1.35), (2.5, 0.65), stroke: 1.6pt + black)
      bezier((0, -1.35), (4.5, -0.65), (2.0, -1.35), (2.5, -0.65), stroke: 1.6pt + black)

      line((0.3, -1.35), (0.3, 1.35), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      line((4.2, -0.65), (4.2, 0.65), stroke: (paint: rgb("#1f5a96"), thickness: 1.2pt, dash: "dashed"))
      content((0.65, -1.0), text(size: 9pt, fill: rgb("#1f5a96"))[$S_1$])
      content((3.85, -0.42), text(size: 9pt, fill: rgb("#1f5a96"))[$S_2$])

      line((2.3, 1.0), (2.6, 1.85), mark: (end: ">"), stroke: 1.1pt + rgb("#c0392b"))
      content((3.0, 1.65), text(size: 9pt, fill: rgb("#c0392b"))[$arrow(n)_w$])

      line((-0.3, 0), (1.1, 0), mark: (end: ">"), stroke: 1.2pt + rgb("#1f5a96"))
      content((0.9, 0.32), text(size: 9pt, fill: rgb("#1f5a96"))[$U_1, p_1$])

      line((3.7, 0), (5.3, 0), mark: (end: ">"), stroke: 1.2pt + rgb("#1f5a96"))
      content((4.9, 0.32), text(size: 9pt, fill: rgb("#1f5a96"))[$U_2, p_2$])

      content((2.2, -0.15), text(size: 9.5pt, weight: "bold")[$Q$])
    })
  ]
)

Questa relazione mette in luce due aspetti fondamentali:
1. *Interpretazione fisica*: la forza $F_x$ esercitata dalla parete sul fluido (uguale e opposta alla spinta $-F_x$ che il fluido esercita sulla condotta) è data direttamente dalla differenza tra ciò che entra e ciò che esce dal volume di controllo, sommando la variazione del *flusso microscopico (diffusivo)* di quantità di moto legato agli urti molecolari ($p_1 S_1 - p_2 S_2$) e la variazione del *flusso macroscopico (convettivo)* di quantità di moto ($rho Q^2 (1/S_1 - 1/S_2)$).
2. *Vantaggio sperimentale*: mentre il calcolo teorico locale degli sforzi e delle pressioni lungo una parete curva a sezione variabile è estremamente complesso, questa formula permette di determinare sperimentalmente la spinta globale sulla condotta conoscendo la geometria ($S_1, S_2$) ed effettuando solamente tre misure: le pressioni $p_1$ e $p_2$ (tramite due prese di pressione a monte e a valle) e la portata $Q$.

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
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      line((-0.5, 0), (5.8, 0), stroke: 1.6pt + black)
      for x in (-0.3, 0.3, 0.9, 1.5, 2.1, 2.7, 3.3, 3.9, 4.5, 5.1) {
        line((x, 0), (x - 0.2, -0.25), stroke: 0.6pt + gray)
      }

      line((0.2, 2.4), (2.7, 2.4), stroke: 1.3pt + rgb("#1f5a96"))
      bezier((2.7, 1.15), (4.8, 0.85), (3.1, 0.85), (3.8, 0.85), stroke: 1.3pt + rgb("#1f5a96"))
      line((4.8, 0.85), (5.5, 0.85), stroke: 1.3pt + rgb("#1f5a96"))

      rect((2.7, 1.15), (2.95, 2.85), fill: gray.lighten(40%), stroke: 1.2pt + black)
      line((2.7, 1.8), (1.8, 1.8), mark: (end: ">"), stroke: 1.2pt + rgb("#c0392b"))
      content((1.8, 2.15), text(size: 9pt, fill: rgb("#c0392b"))[$F_x$])

      line((0.6, 0), (0.6, 2.4), stroke: (paint: rgb("#1f5a96"), thickness: 1.1pt, dash: "dashed"))
      line((4.9, 0), (4.9, 0.85), stroke: (paint: rgb("#1f5a96"), thickness: 1.1pt, dash: "dashed"))
      content((0.9, 1.2), text(size: 8.5pt, fill: rgb("#1f5a96"))[$S_1$])
      content((4.55, 0.45), text(size: 8.5pt, fill: rgb("#1f5a96"))[$S_2$])

      line((0.6, 2.4), (-0.35, 0), (0.6, 0), close: true, fill: rgb("#1f5a96").lighten(82%), stroke: 0.8pt + rgb("#1f5a96"))
      line((-0.1, 0.6), (0.55, 0.6), mark: (end: ">"), stroke: 0.7pt + rgb("#1f5a96"))
      line((0.15, 1.2), (0.55, 1.2), mark: (end: ">"), stroke: 0.7pt + rgb("#1f5a96"))

      line((4.9, 0.85), (5.5, 0), (4.9, 0), close: true, fill: rgb("#1f5a96").lighten(82%), stroke: 0.8pt + rgb("#1f5a96"))

      line((1.4, 0), (1.4, 2.4), mark: (start: "<", end: ">"), stroke: 0.7pt + black)
      content((1.7, 1.2), text(size: 8.5pt)[$h_1$])

      line((3.9, 0), (3.9, 0.85), mark: (start: "<", end: ">"), stroke: 0.7pt + black)
      content((3.55, 0.45), text(size: 8.5pt)[$h_2$])

      line((-0.5, 0), (-0.5, 2.9), mark: (end: ">"), stroke: 0.7pt + black)
      content((-0.75, 2.85), text(size: 8.5pt)[$z$])
    })
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

_Nota: indicando con $Q$ la portata su una larghezza unitaria $b = 1 "m"$, la relazione si scrive equivalentemente come $F_x = -[1/2 gamma (h_1^2 - h_2^2) + rho Q^2 (1/h_1 - 1/h_2)]$._

#pagebreak()

== Esempio 3: Getto libero contro una parete piana verticale

Passiamo ora al caso di un *getto libero* (d'acqua o d'aria) di sezione $S_1$ (o area $A$), velocità $U$ e portata $Q = U S_1$, che impatta ortogonalmente contro una parete piana verticale.

#grid(
  columns: (1.2fr, 0.8fr),
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
    In regime stazionario ($I_x = 0$) e trascurando la gravità lungo $x$ ($G_x = 0$), il bilancio globale lungo $x$ ($M_("in", x) - M_("out", x) + F_x = 0$) fornisce immediatamente la forza esercitata dalla parete sul fluido:
    $
    F_x = -rho U^2 S_1 = -rho Q U = -rho Q^2 / S_1
    $
  ],
  [
    #image("immagini/04e73b15-c902-4152-a68f-147f1a1b72b6-09_818_1171_280_44.jpg", width: 85%)
  ]
)

La spinta esercitata dal getto sulla parete è uguale e opposta, pari a $-F_x = +rho Q U$ (diretta lungo $+x$).

== Esempio 4: Getto contro una pala di turbina (deviazione di $180 degree$)

Consideriamo un getto libero di sezione $S_1$, velocità $vec{u}_1 = (U_1, 0, 0)$ e portata $Q = U_1 S_1$ che investe una pala curva simmetrica (come la pala di una turbina Pelton), venendo diviso in due getti simmetrici di sezione $S_2$ e portata $Q/2$ ciascuno, deviati all'indietro con velocità $vec{u}_2 = (-U_2, 0, 0)$ opposta a quella di ingresso.

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Anche in questo caso $G_x = 0$, $I_x = 0$ e le pressioni relative sulle sezioni libere $S_1$ e $S_2$ sono nulle ($\Pi_1 = \Pi_2 = 0$).
    Occorre prestare particolare attenzione ai segni nel termine convettivo $M_x = -integral_S rho u_x (u_j n_j) dif S$:
    - sulla sezione di ingresso $S_1$, $vec{u}_1 = (U_1, 0, 0)$ e la normale uscente $vec{n}_1 = (-1, 0, 0)$ sono antiparallele ($u_j n_j = -U_1$), mentre $u_x = +U_1$:
      $
      M_(1, x) = -integral_(S_1) rho (+U_1) (-U_1) dif S_1 = +rho U_1^2 S_1 = +rho Q U_1
      $
    - su ciascuna delle due sezioni di uscita $S_2$, sia la velocità $vec{u}_2 = (-U_2, 0, 0)$ sia la normale uscente $vec{n}_2 = (-1, 0, 0)$ sono dirette verso sinistra: essendo *concordi*, il prodotto scalare vale $u_j n_j = +U_2 > 0$, ma la componente di velocità lungo $x$ è *negativa* ($u_x = -U_2 < 0$). Pertanto, sommando le due uscite:
      $
      M_(2, x) = -2 integral_(S_2) rho (-U_2) (+U_2) dif S_2 = +2 rho U_2^2 S_2 = +2 rho Q/2 U_2 = +rho Q U_2
      $
    *(Equivalentemente, ponendo $M_("out", x) = -2 rho (Q/2) U_2$ nella scrittura $M_("in", x) - M_("out", x) + F_x = 0$, il doppio segno meno porta i due contributi a sommarsi).*
  ],
  [
    #image("immagini/04e73b15-c902-4152-a68f-147f1a1b72b6-09_654_916_1451_79.jpg", width: 85%)
  ]
)

Dal bilancio globale lungo $x$ ($M_(1, x) + M_(2, x) + F_x = 0$) si ottiene quindi:

$
rho Q U_1 + rho Q U_2 + F_x = 0 quad ==> quad F_x = -rho Q (U_1 + U_2)
$

In termini di modulo e vettore forza esercitata dalla pala sul fluido:

$
abs(F_x) = rho Q (U_1 + U_2), quad arrow(F) = -abs(F_x) arrow(e)_x
$

*(Se si trascurano gli attriti lungo la pala, per il teorema di Bernoulli si ha $U_2 = U_1 = U$, per cui $|F_x| = 2 rho Q U$: deviare il getto di $180 degree$ permette di raddoppiare la spinta rispetto alla parete piana verticale).*

== Esempio 5: Getto piano contro una parete inclinata

Consideriamo infine un getto libero piano (bidimensionale, di larghezza unitaria $b = 1 "m"$ ortogonalmente al foglio) di spessore $h_1$ e velocità $U_1$, che impatta contro una parete piana liscia inclinata di un angolo $theta$ rispetto alla direzione del getto incidente. Dopo l'impatto il flusso si divide in due correnti che scorrono lungo la parete in versi opposti, caratterizzate sulle sezioni di uscita $S_2$ e $S_3$ da spessori $h_2, h_3$ e velocità $U_2, U_3$.

Fissiamo un sistema di riferimento locale $(t, n)$ solidale alla parete, con l'asse $t$ tangente alla parete (positivo verso la sezione $S_2$) e l'asse $n$ normale alla parete (uscente dal fluido verso la parete).
Per determinare le incognite ($U_2, U_3, h_2, h_3$ e la forza $vec{F}$) procediamo in quattro passaggi:

1. *Determinazione delle velocità (Teorema di Bernoulli)*:
   Trascurando gli effetti gravitazionali (differenze di quota trascurabili), gli sforzi viscosi e sapendo che il getto è libero in atmosfera ($p_1 = p_2 = p_3 = p_"atm"$), applicando il teorema di Bernoulli lungo due linee di corrente che vanno dalla sezione $S_1$ alle sezioni $S_2$ e $S_3$ si ottiene che la velocità rimane costante in modulo:
   $
   U_1 = U_2 = U_3 = U
   $

2. *Conservazione della massa (Equazione di continuità)*:
   Per un fluido incomprimibile in moto stazionario, la portata per unità di larghezza entrante da $S_1$ deve eguagliare la somma delle portate uscenti da $S_2$ e $S_3$:
   $
   U_1 h_1 = U_2 h_2 + U_3 h_3 quad ==> quad h_1 = h_2 + h_3
   $

3. *Bilancio di quantità di moto lungo la direzione tangente $t$*:
   Trascurando gli sforzi viscosi di attrito a parete ($tau_w approx 0$), la parete può esercitare sul fluido unicamente una forza di pressione diretta lungo la normale $n$: pertanto la componente tangenziale della forza è nulla ($F_t = 0$). Essendo nulle anche le pressioni relative su $S_1, S_2, S_3$ ($\Pi_t = 0$), l'equazione globale lungo $t$ si riduce a $M_t = -integral_S rho u_t (u_j n_j) dif S = 0$:
   - su $S_1$: il flusso è entrante ($u_j n_j = -U$) e la componente di velocità lungo $t$ vale $u_t = +U cos theta$, dando il contributo $+rho U^2 h_1 cos theta$;
   - su $S_2$: il flusso è uscente ($u_j n_j = +U$) e concorde con $t$ ($u_t = +U$), dando il contributo $-rho U^2 h_2$;
   - su $S_3$: il flusso è uscente ($u_j n_j = +U$) ma diretto in verso opposto a $t$ ($u_t = -U$), per cui $-rho (-U)(+U) h_3 = +rho U^2 h_3$.
   Sommando i tre contributi lungo $t$:
   $
   rho U^2 h_1 cos theta - rho U^2 h_2 + rho U^2 h_3 = 0 quad ==> quad h_2 - h_3 = h_1 cos theta
   $
   Mettendo a sistema questa relazione con l'equazione di continuità $h_2 + h_3 = h_1$, si ricavano gli spessori dei due getti uscenti in funzione di $h_1$ e dell'angolo $theta$:
   $
   h_2 = h_1 / 2 (1 + cos theta), quad h_3 = h_1 / 2 (1 - cos theta)
   $

4. *Bilancio di quantità di moto lungo la direzione normale $n$*:
   Proiettiamo infine l'equazione globale lungo la normale $n$ alla parete ($M_n + F_n = 0$). I flussi uscenti attraverso $S_2$ e $S_3$ sono paralleli alla parete e non possiedono componente normale di velocità ($u_n = 0$). L'unico contributo a $M_n$ proviene dalla sezione di ingresso $S_1$, dove $u_j n_j = -U$ e la componente di velocità lungo $n$ vale $u_n = +U sin theta$:
   $
   M_n = -integral_(S_1) rho (+U sin theta) (-U) dif S_1 = +rho U^2 h_1 sin theta
   $
   Dal bilancio $M_n + F_n = 0$ si ottiene la forza normale per unità di larghezza esercitata dalla parete sul fluido:
   $
   F_n = -rho U^2 h_1 sin theta
   $
   *(Per $theta = 90 degree$ si ritrova come caso particolare il risultato dell'Esempio 3 per parete verticale: $h_2 = h_3 = h_1 / 2$ e $F_n = -rho U^2 h_1$).*

== Estensione ai flussi esterni: forza su un corpo tozzo

Questo stesso approccio integrale può essere impiegato per valutare la forza aerodinamica o idrodinamica esercitata sul fluido da un corpo tozzo immerso in una corrente esterna indisturbata di velocità $u_infinity$:

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Racchiudendo il corpo all'interno di un volume di controllo delimitato a monte dalla sezione $S_1$ e a valle (nella scia) dalla sezione $S_2$, la forza $F_x$ si esprime ancora come:
    $
    F_x = -[(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2))]
    $
    In galleria del vento, i profili di velocità e pressione nella scia (da cui dipendono entrambi i termini) possono essere misurati sperimentalmente mediante una scansione con un *tubo di Pitot*, evitando così la necessità di effettuare complesse misure locali della distribuzione degli sforzi direttamente sulla superficie del corpo:
    $
    arrow(F) = integral_(S_w) bold(T) dot arrow(n) dif S_w = integral_(S_w) (-p delta_(i j) n_j + tau_(i j) n_j) dif S_w
    $
  ],
  [
    #image("immagini/04e73b15-c902-4152-a68f-147f1a1b72b6-10_738_1950_761_25.jpg", width: 85%)
  ]
)

#pagebreak()


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
    #canvas(length: 1cm, {
  import draw: *

  line((0.85, 2.84), (2.3, 2.84), (3.125, 2.952), (3.71, 3.258), (4.066, 3.737), (4.18, 4.35), (4.5, 4.35), (4.5, 0.65), (4.18, 0.65), (4.066, 1.263), (3.71, 1.742), (3.125, 2.048), (2.3, 2.16), (0.85, 2.16), close: true, fill: blue.transparentize(89%), stroke: none)

  circle((1.2, 2.5), radius: (0.06, 0.34), fill: blue.transparentize(78%), stroke: none)
  arc((1.2, 2.5), start: 90deg, stop: 270deg, radius: (0.06, 0.34), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
  arc((1.2, 2.5), start: 270deg, stop: 450deg, radius: (0.06, 0.34), anchor: "origin", stroke: 0.75pt + blue.darken(15%))

  line((0.85, 2.84), (2.3, 2.84), stroke: 0.95pt)
  bezier((2.3, 2.84), (4.18, 4.35), (3.55, 2.84), (4.18, 3.45), stroke: 0.95pt)
  line((0.85, 2.16), (2.3, 2.16), stroke: 0.95pt)
  bezier((2.3, 2.16), (4.18, 0.65), (3.55, 2.16), (4.18, 1.55), stroke: 0.95pt)

  line((4.5, 0.6), (4.5, 4.4), stroke: 1.2pt)
  line((4.5, 0.75), (4.72, 0.95), stroke: 0.55pt)
  line((4.5, 1.05), (4.72, 1.25), stroke: 0.55pt)
  line((4.5, 1.35), (4.72, 1.55), stroke: 0.55pt)
  line((4.5, 1.65), (4.72, 1.85), stroke: 0.55pt)
  line((4.5, 1.95), (4.72, 2.15), stroke: 0.55pt)
  line((4.5, 2.25), (4.72, 2.45), stroke: 0.55pt)
  line((4.5, 2.55), (4.72, 2.75), stroke: 0.55pt)
  line((4.5, 2.85), (4.72, 3.05), stroke: 0.55pt)
  line((4.5, 3.15), (4.72, 3.35), stroke: 0.55pt)
  line((4.5, 3.45), (4.72, 3.65), stroke: 0.55pt)
  line((4.5, 3.75), (4.72, 3.95), stroke: 0.55pt)
  line((4.5, 4.05), (4.72, 4.25), stroke: 0.55pt)

  line((1.2, 2.5), (2.15, 2.5), mark: (end: ">"), stroke: 1pt + blue.darken(15%))
  content((1.72, 2.61), text(size: 7.5pt, fill: blue.darken(15%))[$U$], anchor: "south")
  content((0.68, 2.5), text(size: 8.5pt)[$Q$], anchor: "east")
  content((1.2, 2.02), text(size: 7.5pt)[$S_1$], anchor: "north")

  bezier((3.85, 2.85), (4.34, 4.05), (4.22, 3.05), (4.34, 3.45), mark: (end: ">"), stroke: 0.85pt + blue.darken(10%))
  bezier((3.85, 2.15), (4.34, 0.95), (4.22, 1.95), (4.34, 1.55), mark: (end: ">"), stroke: 0.85pt + blue.darken(10%))

  content((1.45, 3.18), text(size: 8.5pt)[$p = 0$], anchor: "south")

  line((2.55, 3.85), (3.15, 3.85), mark: (end: ">"), stroke: 0.75pt)
  line((2.55, 3.85), (2.55, 4.45), mark: (end: ">"), stroke: 0.75pt)
  line((2.55, 3.85), (2.22, 3.52), mark: (end: ">"), stroke: 0.75pt)
  content((3.22, 3.85), text(size: 7.5pt)[$x$], anchor: "west")
  content((2.55, 4.52), text(size: 7.5pt)[$y$], anchor: "south")
  content((2.16, 3.46), text(size: 7.5pt)[$z$], anchor: "north-east")

  line((5.95, 2.5), (4.88, 2.5), mark: (end: ">"), stroke: 1.1pt)
  content((5.5, 2.65), text(size: 8.5pt)[$arrow(F) = (F_x, 0, 0)$], anchor: "south")
})
  ]
)

In regime stazionario ($I_x = 0$) e trascurando la gravità lungo $x$ ($G_x = 0$), il bilancio globale lungo $x$ ($M_("in", x) - M_("out", x) + F_x = 0$) fornisce immediatamente la forza esercitata dalla parete sul fluido:

$
F_x = -rho U^2 S_1 = -rho Q U = -rho Q^2 / S_1
$

La spinta esercitata dal getto sulla parete è uguale e opposta, pari a $-F_x = +rho Q U$ (diretta lungo $+x$).

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
      M_(2, x) = -2 integral_(S_2) rho (-U_2) (+U_2) dif S_2 = +2 rho U_2^2 S_2 = +rho Q U_2
      $
  ],
  [ 
  #canvas(length: 1.2cm, {
  import draw: *

  line((0.5, 2.88), (4.25, 2.88), (4.6, 3.02), (4.75, 3.3), (4.55, 3.59), (4.05, 3.72), (2.85, 3.72), (2.85, 4.1), (3.9, 4.1), (4.79, 3.87), (5.07, 3.36), (4.88, 2.82), (4.3, 2.5), (4.88, 2.18), (5.07, 1.64), (4.79, 1.13), (3.9, 0.9), (2.85, 0.9), (2.85, 1.28), (4.05, 1.28), (4.55, 1.41), (4.75, 1.7), (4.6, 1.98), (4.25, 2.12), (0.5, 2.12), close: true, fill: blue.transparentize(88%), stroke: none)

  line((4.3, 2.5), (4.88, 2.82), (5.07, 3.36), (4.79, 3.87), (3.9, 4.1), (5.1, 3.89), (5.98, 3.3), (6.3, 2.5), (5.98, 1.7), (5.1, 1.11), (3.9, 0.9), (4.79, 1.13), (5.07, 1.64), (4.88, 2.18), close: true, fill: gray.transparentize(88%), stroke: none)

  line((4.98, 3.63), (5.35, 3.78), stroke: 0.55pt)
  line((5.07, 3.29), (5.71, 3.54), stroke: 0.55pt)
  line((4.93, 2.85), (5.99, 3.28), stroke: 0.55pt)
  line((4.67, 2.37), (6.19, 2.98), stroke: 0.55pt)
  line((4.96, 2.1), (6.29, 2.64), stroke: 0.55pt)
  line((5.07, 1.77), (6.27, 2.25), stroke: 0.55pt)
  line((4.96, 1.34), (6.04, 1.78), stroke: 0.55pt)

  bezier((4.3, 2.5), (3.9, 4.1), (5.35, 2.65), (5.45, 4.1), stroke: 1.15pt)
  bezier((4.3, 2.5), (3.9, 0.9), (5.35, 2.35), (5.45, 0.9), stroke: 1.15pt)
  arc((3.9, 2.5), start: -90deg, stop: 90deg, radius: (2.4, 1.6), anchor: "origin", stroke: 1.15pt)

  circle((1.75, 2.5), radius: (0.07, 0.38), fill: blue.transparentize(78%), stroke: none)
  arc((1.75, 2.5), start: 90deg, stop: 270deg, radius: (0.07, 0.38), anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))
  arc((1.75, 2.5), start: 270deg, stop: 450deg, radius: (0.07, 0.38), anchor: "origin", stroke: 0.75pt + blue.darken(20%))

  circle((3.15, 3.91), radius: (0.06, 0.19), fill: blue.transparentize(78%), stroke: none)
  arc((3.15, 3.91), start: 90deg, stop: 270deg, radius: (0.06, 0.19), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
  arc((3.15, 3.91), start: 270deg, stop: 450deg, radius: (0.06, 0.19), anchor: "origin", stroke: 0.75pt + blue.darken(20%))

  circle((3.15, 1.09), radius: (0.06, 0.19), fill: blue.transparentize(78%), stroke: none)
  arc((3.15, 1.09), start: 90deg, stop: 270deg, radius: (0.06, 0.19), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
  arc((3.15, 1.09), start: 270deg, stop: 450deg, radius: (0.06, 0.19), anchor: "origin", stroke: 0.75pt + blue.darken(20%))

  line((0.5, 2.88), (4.25, 2.88), stroke: 0.9pt + blue)
  bezier((4.25, 2.88), (4.75, 3.3), (4.55, 2.88), (4.75, 3.06), stroke: 0.9pt + blue)
  bezier((4.75, 3.3), (4.05, 3.72), (4.75, 3.54), (4.45, 3.72), stroke: 0.9pt + blue)
  line((4.05, 3.72), (2.85, 3.72), stroke: 0.9pt + blue)
  line((3.9, 4.1), (2.85, 4.1), stroke: 0.9pt + blue)

  line((0.5, 2.12), (4.25, 2.12), stroke: 0.9pt + blue)
  bezier((4.25, 2.12), (4.75, 1.7), (4.55, 2.12), (4.75, 1.94), stroke: 0.9pt + blue)
  bezier((4.75, 1.7), (4.05, 1.28), (4.75, 1.46), (4.45, 1.28), stroke: 0.9pt + blue)
  line((4.05, 1.28), (2.85, 1.28), stroke: 0.9pt + blue)
  line((3.9, 0.9), (2.85, 0.9), stroke: 0.9pt + blue)

  line((1.75, 2.5), (2.55, 2.5), mark: (end: ">"), stroke: 1.05pt + blue.darken(15%))
  content((2.2, 2.66), text(size: 8pt, fill: blue.darken(15%))[$arrow(u)_1$], anchor: "south")
  line((1.75, 2.5), (1.15, 2.5), mark: (end: ">"), stroke: 0.95pt + red.darken(10%))
  content((1.42, 2.66), text(size: 8pt, fill: red.darken(10%))[$arrow(n)_1$], anchor: "south")
  content((0.78, 2.5), text(size: 8.5pt, fill: blue.darken(15%))[$Q$], anchor: "center")
  content((1.75, 1.96), text(size: 8pt)[$S_1$], anchor: "north")

  content((3.15, 4.22), text(size: 9pt)[$S_2$], anchor: "south")
  line((3.15, 3.84), (2.25, 3.84), mark: (end: ">"), stroke: 1pt + blue.darken(15%))
  line((3.15, 3.98), (2.55, 3.98), mark: (end: ">"), stroke: 0.9pt + red.darken(10%))
  content((2.55, 4.14), text(size: 8pt, fill: red.darken(10%))[$arrow(n)_2$], anchor: "south")
  content((2.12, 3.84), text(size: 10pt, fill: blue.darken(15%))[$Q/2, arrow(u)_2$], anchor: "east")

  content((3.15, 0.78), text(size: 9pt)[$S_2$], anchor: "north")
  line((3.15, 1.16), (2.25, 1.16), mark: (end: ">"), stroke: 1pt + blue.darken(15%))
  line((3.15, 1.02), (2.55, 1.02), mark: (end: ">"), stroke: 0.9pt + red.darken(10%))
  content((2.55, 0.86), text(size: 8pt, fill: red.darken(10%))[$arrow(n)_2$], anchor: "north")
  content((2.12, 1.16), text(size: 10pt, fill: blue.darken(15%))[$Q/2, arrow(u)_2$], anchor: "east")

  line((0.55, 0.45), (1.45, 0.45), mark: (end: ">"), stroke: 0.75pt)
  content((1.55, 0.45), text(size: 8pt)[$x$], anchor: "west")
})
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

== Esempio 5: Getto piano contro una parete inclinata

Consideriamo infine un getto libero piano (bidimensionale, di larghezza unitaria $b = 1 "m"$ ortogonalmente al foglio) di spessore $h_1$ e velocità $U_1$, che impatta contro una parete piana liscia inclinata di un angolo $theta$ rispetto alla direzione del getto incidente. Dopo l'impatto il flusso si divide in due correnti che scorrono lungo la parete in versi opposti, caratterizzate sulle sezioni di uscita $S_2$ e $S_3$ da spessori $h_2, h_3$ e velocità $U_2, U_3$.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Fissiamo un sistema di riferimento locale $(t, n)$ solidale alla parete, con l'asse $t$ tangente alla parete (positivo verso la sezione $S_2$) e l'asse $n$ normale alla parete (uscente dal fluido verso la parete).
    Per determinare le incognite ($U_2, U_3, h_2, h_3$ e la forza $arrow(F)$) procediamo in quattro passaggi:
    1. *Determinazione delle velocità (Teorema di Bernoulli)*:
       Trascurando le differenze di quota e gli sforzi viscosi, ed essendo il getto libero in atmosfera ($p_1 = p_2 = p_3 = p_"atm"$), applicando il teorema di Bernoulli lungo le linee di corrente da $S_1$ a $S_2$ e $S_3$ segue che il modulo della velocità rimane costante:
       $
       U_1 = U_2 = U_3 = U
       $
  ],
  [
    #canvas(length: 1cm, {
  import draw: *

  line((2.15, 0.15), (2.27, -0.03), stroke: 0.6pt)
  line((2.30, 0.35), (2.42, 0.17), stroke: 0.6pt)
  line((2.44, 0.56), (2.56, 0.38), stroke: 0.6pt)
  line((2.59, 0.76), (2.71, 0.58), stroke: 0.6pt)
  line((2.74, 0.96), (2.86, 0.78), stroke: 0.6pt)
  line((2.88, 1.16), (3.00, 0.98), stroke: 0.6pt)
  line((3.03, 1.37), (3.15, 1.19), stroke: 0.6pt)
  line((3.18, 1.57), (3.30, 1.39), stroke: 0.6pt)
  line((3.32, 1.77), (3.44, 1.59), stroke: 0.6pt)
  line((3.47, 1.97), (3.59, 1.79), stroke: 0.6pt)
  line((3.62, 2.17), (3.74, 1.99), stroke: 0.6pt)
  line((3.76, 2.38), (3.88, 2.20), stroke: 0.6pt)
  line((3.91, 2.58), (4.03, 2.40), stroke: 0.6pt)
  line((4.06, 2.78), (4.18, 2.60), stroke: 0.6pt)
  line((4.21, 2.98), (4.33, 2.80), stroke: 0.6pt)
  line((4.35, 3.19), (4.47, 3.01), stroke: 0.6pt)
  line((4.50, 3.39), (4.62, 3.21), stroke: 0.6pt)
  line((4.65, 3.59), (4.77, 3.41), stroke: 0.6pt)
  line((4.79, 3.79), (4.91, 3.61), stroke: 0.6pt)
  line((4.94, 3.99), (5.06, 3.81), stroke: 0.6pt)
  line((5.09, 4.20), (5.21, 4.02), stroke: 0.6pt)
  line((5.23, 4.40), (5.35, 4.22), stroke: 0.6pt)
  line((5.38, 4.60), (5.50, 4.42), stroke: 0.6pt)
  line((5.53, 4.80), (5.65, 4.62), stroke: 0.6pt)
  line((5.68, 5.01), (5.80, 4.83), stroke: 0.6pt)
  line((5.82, 5.21), (5.94, 5.03), stroke: 0.6pt)

  line((2.09, 0.07), (5.91, 5.33), stroke: 1pt)

  line((0.90, 3.35), (2.41, 3.35), stroke: 1pt)
  arc((2.41, 5.116), start: 270deg, stop: 324deg, radius: 1.766, anchor: "origin", stroke: 1pt)
  line((3.839, 4.078), (5.062, 5.760), stroke: 1pt)

  line((0.90, 2.05), (2.416, 2.05), stroke: 1pt)
  arc((2.416, 1.710), start: -36deg, stop: 90deg, radius: 0.340, anchor: "origin", stroke: 1pt)
  line((2.691, 1.510), (1.887, 0.404), stroke: 1pt)

  line((1.75, 2.05), (1.75, 3.35), stroke: 0.6pt)
  line((5.411, 4.642), (4.650, 5.194), stroke: 0.6pt)
  line((2.442, 0.556), (2.151, 0.768), stroke: 0.6pt)

  line((2.25, 2.70), (5.15, 2.70), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((4.00, 2.70), start: 0deg, stop: 54deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)

  line((5.91, 5.33), (6.44, 6.06), mark: (end: ">"), stroke: 1pt)
  line((4.00, 2.70), (4.93, 2.02), mark: (end: ">"), stroke: 1pt)

  line((1.08, 2.70), (2.15, 2.70), mark: (end: ">"), stroke: 1pt)
  line((4.296, 3.906), (4.766, 4.554), mark: (end: ">"), stroke: 1pt)
  line((2.808, 1.366), (2.432, 0.848), mark: (end: ">"), stroke: 1pt)

  line((0.90, 2.05), (0.90, 3.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.822, 5.208), (5.062, 5.760), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((2.178, 0.192), (1.887, 0.404), mark: (start: ">", end: ">"), stroke: 0.6pt)

  content((0.80, 2.70), text(size: 9pt)[$h_1$], anchor: "east")
  content((1.40, 2.82), text(size: 9pt)[$U_1$], anchor: "south")
  content((1.75, 1.93), text(size: 9pt)[$S_1$], anchor: "north")
  content((4.05, 4.55), text(size: 9pt)[$U_2$], anchor: "south-east")
  content((4.58, 5.25), text(size: 9pt)[$S_2$], anchor: "south-east")
  content((4.98, 5.82), text(size: 9pt)[$h_2$], anchor: "south-east")
  content((2.40, 1.30), text(size: 9pt)[$U_3$], anchor: "east")
  content((2.06, 0.82), text(size: 9pt)[$S_3$], anchor: "east")
  content((1.80, 0.46), text(size: 9pt)[$h_3$], anchor: "east")
  content((4.72, 3.02), text(size: 8.5pt)[$theta$], anchor: "west")
  content((6.45, 5.95), text(size: 8.5pt)[$t$], anchor: "west")
  content((5.00, 2.04), text(size: 8.5pt)[$n$], anchor: "west")
})

  ]
)

2. *Conservazione della massa (Equazione di continuità)*:
   Per un fluido incomprimibile in moto stazionario, la portata per unità di larghezza entrante da $S_1$ deve eguagliare la somma delle portate uscenti da $S_2$ e $S_3$:
   $
   U_1 h_1 = U_2 h_2 + U_3 h_3 quad ==> quad h_1 = h_2 + h_3
   $

3. *Bilancio di quantità di moto lungo la direzione tangente $t$*:
   Trascurando gli sforzi viscosi di attrito a parete ($tau_w approx 0$), la parete può esercitare sul fluido unicamente una forza di pressione diretta lungo la normale $n$: pertanto la componente tangenziale della forza è nulla ($F_t = 0$). Essendo nulle anche le pressioni relative su $S_1, S_2, S_3$ ($Pi_t = 0$), l'equazione globale lungo $t$ si riduce a $M_t = -integral_S rho u_t (u_j n_j) dif S = 0$:
   - su $S_1$: il flusso è entrante ($u_j n_j = -U$) e la componente di velocità lungo $t$ vale $u_t = +U cos theta$, dando il contributo $+rho U^2 h_1 cos theta$;
   - su $S_2$: il flusso è uscente ($u_j n_j = +U$) e concorde con $t$ ($u_t = +U$), dando il contributo $-rho U^2 h_2$;
   - su $S_3$: il flusso è uscente ($u_j n_j = +U$) ma diretto in verso opposto a $t$ ($u_t = -U$), per cui $-rho (-U)(+U) h_3 = +rho U^2 h_3$.
   Sommando i tre contributi lungo $t$:
   $
   rho U^2 h_1 cos theta - rho U^2 h_2 + rho U^2 h_3 = 0 quad ==> quad h_2 - h_3 = h_1 cos theta
   $
   Mettendo a sistema questa relazione con l'equazione di continuità $h_2 + h_3 = h_1$, si ricavano gli spessori dei due getti uscenti in funzione di $h_1$ e dell'angolo $theta$:
   $
   h_2 = h_1 / 2 (1 + cos theta), quad h_3 = h_1 / 2 (1 - cos theta)
   $

4. *Bilancio di quantità di moto lungo la direzione normale $n$*:
   Proiettiamo infine l'equazione globale lungo la normale $n$ alla parete ($M_n + F_n = 0$). I flussi uscenti attraverso $S_2$ e $S_3$ sono paralleli alla parete e non possiedono componente normale di velocità ($u_n = 0$). L'unico contributo a $M_n$ proviene dalla sezione di ingresso $S_1$, dove $u_j n_j = -U$ e la componente di velocità lungo $n$ vale $u_n = +U sin theta$:
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
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Racchiudendo il corpo all'interno di un volume di controllo delimitato a monte dalla sezione $S_1$ e a valle (nella scia) dalla sezione $S_2$, la forza $F_x$ si esprime ancora come:
    $
    F_x = -[(M_(x, 1) - M_(x, 2)) + (Pi_(x, 1) - Pi_(x, 2))]
    $
    In galleria del vento, i profili di velocità e pressione nella scia (da cui dipendono entrambi i termini) possono essere misurati sperimentalmente mediante una scansione con un *tubo di Pitot*, evitando così la necessità di effettuare complesse misure locali della distribuzione degli sforzi direttamente sulla superficie del corpo:
    $
    arrow(F) = integral_(S_w) bold(T) dot arrow(n) dif S_w = integral_(S_w) (-p delta_(i j) n_j + tau_(i j) n_j) dif S_w
    $
  ],
  [
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      // Volume di controllo esterno tratteggiato
      rect((0.5, -1.5), (4.6, 1.5), stroke: (paint: gray, thickness: 0.8pt, dash: "dashed"))
      content((0.8, 1.25), text(size: 8pt, fill: gray)[$S_1$])
      content((4.3, 1.25), text(size: 8pt, fill: gray)[$S_2$])

      // Profilo di velocità uniforme a monte (S1)
      line((0.5, -1.5), (0.5, 1.5), stroke: 1pt + rgb("#1f5a96"))
      for y in (-1.2, -0.6, 0, 0.6, 1.2) {
        line((-0.3, y), (0.5, y), mark: (end: ">"), stroke: 0.8pt + rgb("#1f5a96"))
      }
      content((0.0, -1.85), text(size: 8pt, fill: rgb("#1f5a96"))[profilo a monte ($u_infinity$)])

      // Corpo tozzo al centro
      circle((2.4, 0), radius: (0.65, 0.48), fill: gray.lighten(50%), stroke: 1.3pt + black)
      content((2.4, 0), text(size: 8.5pt)[$arrow(F)_x$])
      line((2.8, 0.35), (3.15, 0.65), mark: (end: ">"), stroke: 0.8pt + rgb("#c0392b"))
      content((3.3, 0.55), text(size: 7.5pt, fill: rgb("#c0392b"))[$arrow(n)$])

      // Profilo di velocità con deficit nella scia a valle (S2)
      line((4.6, -1.5), (4.6, 1.5), stroke: 1pt + rgb("#1f5a96"))
      bezier((5.4, 1.5), (4.9, 0), (5.4, 0.6), (4.9, 0.35), stroke: 1pt + rgb("#1f5a96"))
      bezier((5.4, -1.5), (4.9, 0), (5.4, -0.6), (4.9, -0.35), stroke: 1pt + rgb("#1f5a96"))
      for (y, dx) in ((-1.2, 0.78), (-0.6, 0.65), (0, 0.3), (0.6, 0.65), (1.2, 0.78)) {
        line((4.6, y), (4.6 + dx, y), mark: (end: ">"), stroke: 0.8pt + rgb("#1f5a96"))
      }
      content((4.9, -1.85), text(size: 8pt, fill: rgb("#1f5a96"))[profilo a valle (scia)])
    })
  ]
)


