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



