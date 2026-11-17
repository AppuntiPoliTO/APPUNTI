#import "/template.typ": *
#let nota-esame(body) = block(
  width: 100%,
  inset: 0.8em,
  radius: 3pt,
  fill: rgb("#fffbeb"),
  stroke: (left: 2.5pt + rgb("#b45309")),
  [*Nota d'esame.* #body],
)
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set figure(supplement: [Figura], gap: 0.8em)

== Richiamo: transizione nei flussi interni ed esperimento di Reynolds

Nel moto stazionario in condotta cilindrica di diametro $D$ (soluzione analitica esatta di Poiseuille dell'equazione di Navier-Stokes), il campo di velocità possiede un'unica componente assiale non nulla $u_x (r)$ (con $u_r = u_theta = 0$), variazione lineare della pressione lungo l'asse $x$ e sforzo tangenziale $tau_(r x)(r)$. Sostituendo tale profilo nelle equazioni di Navier-Stokes si ottiene un'identità ($0 = 0$). Matematicamente, il carattere *laminare* di questa soluzione si riconosce dall'indipendenza dal tempo e dall'annullamento identico delle due componenti trasversali di velocità.

Al variare del numero di Reynolds $"Re" = U D slash nu$ (dove $U$ è la velocità media, $D$ il diametro e $nu$ la viscosità cinematica), per valori moderati (ad esempio $"Re" approx 500 div 1500$) la forma del profilo parabolico rimane invariata — semplicemente riscalata sul valore massimo al centro $u_0$ — e il campo di moto assorbe le perturbazioni. Superata una soglia critica, il sistema diventa instabile e tende ad allontanarsi dalla soluzione di equilibrio: compaiono in modo intermittente volumi turbolenti localizzati (*patch*), trasportati convettivamente a valle, al cui interno il profilo laminare è distrutto istantaneamente e insorgono fluttuazioni temporali e trasversali. Aumentando ulteriormente $"Re"$, tali regioni intermittenti si estendono rapidamente fino a rendere turbolento il flusso nell'intera condotta.

Questa distinzione tra regime laminare e turbolento fu messa in luce storicamente dal celebre *esperimento di Reynolds*: iniettando un filo di colorante al centro di una condotta, in regime laminare il colorante avanza a valle formando filamenti netti e ordinati, mentre in regime turbolento i filamenti si disperdono immediatamente in strutture complesse fino a occupare tutta la sezione. Nei flussi in condotta esiste quindi un numero di Reynolds critico ($"Re"_c approx 2250$) oltre il quale il moto transita bruscamente al regime turbolento: questo comportamento *dicotomico* (o interamente laminare o interamente turbolento) è tipico dei flussi interni, ma non si ritrova nei flussi esterni.

Passando dai flussi interni a quelli esterni attorno a un corpo circolare (una sfera oppure un cilindro indefinito lungo la propria direzione assiale) investito da una corrente uniforme e stazionaria $U_infinity$, l'analisi non si concentra più sul coefficiente di perdite di carico (che per condotta circolare laminare vale $f = 64 slash "Re"$), bensì sulle forze scambiate tra fluido e corpo e sul coefficiente di resistenza aerodinamica.

== Flussi esterni, Paradosso di D'Alembert e regimi di Reynolds

=== Soluzione a potenziale attorno a un cilindro o sfera e Paradosso di D'Alembert

// dubbio: mantenere $chi$ se convenzione dei capitoli precedenti per quota/potenziale gravitazionale; altrimenti sostituire con $z$
Consideriamo il campo di moto irrotazionale stazionario attorno a un cilindro circolare indefinito (o a una sfera), trascurando le variazioni di quota ($chi$ trascurabile), per cui vale ovunque $1 slash 2 thin rho u^2 + p = "cost"$:

#grid(
  columns: (1.18fr, 0.82fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Simmetria e distribuzione di pressione:* la soluzione a potenziale fornisce un andamento delle linee di corrente perfettamente simmetrico sia tra parte superiore e inferiore, sia tra monte e valle. Percorrendo la superficie del corpo al variare dell'angolo polare $theta in [0, pi]$ (con $theta = 0$ punto frontale a monte e $theta = pi$ punto posteriore a valle):
      - In $theta = 0$ (e $theta = pi$) si hanno i *punti di arresto* (o di ristagno): la velocità si annulla ($u = u_"min" = 0$) e per Bernoulli la pressione raggiunge il valore massimo ($p = p_"max"$).
      - Procedendo da $theta = 0$ verso i fianchi del corpo ($theta = pi slash 2$), le linee di corrente si addensano, il fluido accelera fino a $u = u_"max"$ e la pressione scende al valore minimo $p = p_"min"$.
      - Nella metà a valle ($theta in [pi slash 2, pi]$), per la simmetria del campo a potenziale, il fluido decelera nuovamente senza staccarsi dalla parete, realizzando un *recupero completo di pressione* fino a ritrovare $p = p_"max"$ in $theta = pi$ (curva continua nel grafico a lato; la curva tratteggiata mostra invece la perdita di recupero $Delta p$ nei flussi reali con distacco).
  ],
  [
    #include "../figs/cap9-fig01.typ"
  ]
)

#nota[
  *Paradosso di D'Alembert* \
  Calcolando la forza risultante esercitata dal fluido sul corpo tramite l'integrale delle pressioni (con $hat(n)$ normale uscente dalla superficie $S$),
  $ arrow(F) = - integral_S p hat(n) dif S = arrow(0) $
  si ottiene una forza identicamente nulla a causa della perfetta simmetria delle pressioni tra monte e valle. Più in generale, il *paradosso di D'Alembert* afferma che in un campo di moto stazionario, incomprimibile e irrotazionale attorno a un corpo immerso di forma qualsiasi (anche un profilo alare non simmetrico), la componente della forza nella direzione della corrente indisturbata (*resistenza aerodinamica*) è sempre identicamente nulla, mentre può essere non nulla la componente trasversale (*portanza*).
]

Infine, poiché nei campi a potenziale la vorticità è nulla ($arrow(omega) = arrow(0)$) e il problema è lineare, non può mai innescarsi la transizione alla turbolenza.

=== Evoluzione reale del campo di moto attorno a una sfera/cilindro al variare di $"Re"$

Nei fluidi viscosi reali, la condizione di aderenza a parete genera vorticità nello strato limite e la configurazione del campo di moto attorno a una sfera (o a un cilindro) cambia radicalmente al variare del numero di Reynolds $"Re" = U_infinity D slash nu$. Osservazioni sperimentali su cilindro in acqua — ottenute rilasciando per elettrolisi microbollicine di idrogeno da fili metallici, le quali in moto stazionario tracciano le linee di corrente — insieme a simulazioni numeriche fluidodinamiche mostrano la seguente evoluzione:

#v(0.2em)

#grid(
  columns: (1.15fr, 0.85fr),
  row-gutter: 0.95em,
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),

  // 1. Re << 1
  [
    *1. Campo di moto per $"Re" << 1$ (e $"Re" tilde.op 1$, regime viscoso):* \
    le forze viscose dominano su quelle inerziali. Le linee di corrente seguono il profilo del corpo senza distacco e presentano un andamento pressoché simmetrico tra monte e valle, ricordando visivamente il campo a potenziale; fisicamente, tuttavia, i due moti sono opposti perché qui la viscosità svolge un ruolo primario e il campo è fortemente rotazionale.
  ],
  [
    #include "../figs/cap9-fig02.typ"
  ],

  // 2. Re ~ 2 - 40
  [#v(1em)
    *2. Regime $"Re" tilde.op 2 div 40$ (ricircolo stazionario):* \
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso e si separa dalla parete formando due bolle di ricircolazione *controrotanti* in scia (quella superiore ruota in senso *orario*, quella inferiore in senso *antiorario*). La simmetria monte-valle si rompe, ma fino a $"Re" approx 40$ il campo di moto rimane *stazionario* (la velocità in ogni punto non dipende dal tempo) e *laminare*; al crescere di $"Re"$ le bolle si allungano progressivamente fino a raggiungere e superare dimensioni dell'ordine del diametro $D$.
  ],
  [
    #include "../figs/cap9-fig03.typ"
  ],

  // 3. Distacco dello strato limite
  [#v(1em)
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente è favorevole ($partial p slash partial s < 0$) e accelera il fluido; a valle di $p_"min"$ il gradiente diventa avverso ($partial p slash partial s > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u(n)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #include "../figs/cap9-fig04.typ"
  ],

  // 4. Re > 40 (40 - 50)
  [#v(2em)
    *4. Regime $"Re" > 40$ ($"Re" tilde.op 40 div 50$, instabilità della scia):* \
    superata la soglia $"Re" approx 40$, le bolle di ricircolazione allungate diventano instabili e si staccano alternatamente a valle (*scia di von Kármán*). Pur imponendo condizioni al contorno stazionarie, il campo di moto perde autonomamente la stazionarietà e sviluppa un'oscillazione periodica con una *frequenza caratteristica* propria. Questo fenomeno è una manifestazione diretta della *non linearità* del sistema (in analogia a una corda di violoncello: l'archetto viene mosso a frequenza bassissima, $tilde.op 0.1\ "Hz"$, ma la corda entra in vibrazione alla propria frequenza naturale di $440\ "Hz"$).
  ],
  [
    #include "../figs/cap9-fig05.typ"
  ]
)
#v(0.8em)

*5. Regime ad alto $"Re"$ (scia turbolenta):* aumentando ulteriormente il numero di Reynolds, accanto alla frequenza principale compaiono molteplici altre frequenze; oltre ai vortici di grande scala (di dimensione confrontabile con il diametro $D$) si generano numerosi vortici più piccoli, frastagliati e caotici, fino a ottenere un *campo di moto turbolento* nella scia.

#nota-esame[
  - *Basso $"Re"$ vs campo a potenziale:* per $"Re" <= 1$ la somiglianza delle linee di corrente con la soluzione a potenziale è solo apparente; nel flusso reale la viscosità è determinante e il campo è rotazionale.
  - *Bolle di ricircolo ($"Re" tilde.op 2 div 40$):* la comparsa delle due bolle controrotanti rompe la simmetria tra monte e valle, ma il campo di moto rimane completamente stazionario e laminare fino a $"Re" approx 40$.
  - *Transizione nei flussi esterni vs flussi interni:* diversamente dal moto in condotta (transizione dicotomica ed estesa all'intera sezione), attorno a un corpo immerso la transizione alla turbolenza avviene in modo *molto progressivo* al crescere di $"Re"$ e la turbolenza resta *confinata in una parte limitata del dominio* (la scia a valle), mentre lontano dal corpo la corrente esterna rimane regolare.
]
#v(1em)

== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#nota[
  *Equazione del trasporto della vorticità di Helmholtz* \
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.

= Analisi dimensionale

== Teorema $Pi$ o di Buckingham

Il *teorema $Pi$* (o *teorema di Buckingham*) è un risultato generale dell'analisi dimensionale, non ristretto alla meccanica dei fluidi. Supponiamo che una grandezza fisica osservata $a$ dipenda da $n$ parametri di controllo indipendenti $a_1, a_2, dots.h, a_n$:
$
  a = f_1 (a_1, a_2, dots.h, a_n)
$
Le grandezze coinvolte fanno capo a $r$ dimensioni fondamentali indipendenti $d_1, d_2, dots.h, d_r$ (quali lunghezza $L$, tempo $T$, massa $M$, temperatura $Theta$, ecc.), esprimibili tramite $r$ dei parametri di controllo (con $n >= r$).

Il teorema $Pi$ stabilisce che la legge fisica può essere riscritta in forma *adimensionale* esprimendo la grandezza osservata adimensionalizzata $Pi$ (costruita combinando $a$ con $r$ parametri di controllo) come funzione di soli $n - r$ gruppi adimensionali indipendenti $Pi_1, Pi_2, dots.h, Pi_(n - r)$ formati a partire dai parametri di controllo:
$
  Pi = f_2 (Pi_1, Pi_2, dots.h, Pi_(n - r))
$

I vantaggi principali sono:
- la riduzione del numero di variabili indipendenti del problema da $n$ a $n - r$;
- l'individuazione di parametri adimensionali $Pi_i$ dotati di preciso significato fisico;
- l'indipendenza della legge dalla scelta arbitraria delle unità di misura.

#nota[
  Il teorema $Pi$ individua i gruppi adimensionali ma non fornisce alcuna informazione a priori sulla forma della relazione funzionale $f_2$: quest'ultima deve essere determinata e verificata mediante prove sperimentali o simulazioni.
]

== Esempio di Taylor: energia dell'esplosione atomica

Una celebre applicazione storica del teorema $Pi$ è dovuta a G. I. Taylor durante la Seconda Guerra Mondiale. A partire da una serie di fotografie dei primi test atomici statunitensi, corredate ciascuna da una scala geometrica e dall'istante temporale $t$ successivo alla detonazione, era possibile misurare il raggio della palla di fuoco $r_f (t)$ e stimare così l'energia rilasciata dalla bomba (spesso indicata colloquialmente come «potenza», ma dimensionalmente un'energia).

Taylor ipotizzò che il raggio $r_f$ dipendesse esclusivamente dall'energia $E$ liberata dall'esplosione, dalla densità indisturbata dell'aria ambiente $rho_0$ e dal tempo $t$:
$
  r_f = f(E, rho_0, t)
$
Le dimensioni fisiche delle grandezze coinvolte nelle $r = 3$ dimensioni fondamentali indipendenti ($M, L, T$) sono:
$
  [r_f] = L, quad [E] = M L^2 T^(-2), quad [rho_0] = M L^(-3), quad [t] = T
$
Avendo $n = 3$ parametri di controllo e $r = 3$ dimensioni indipendenti, risulta $n - r = 0$: il raggio adimensionalizzato $Pi_(r_f)$ non dipende da alcun parametro e deve essere una costante $R^*$:
$
  Pi_(r_f) = (r_f) / (E^alpha rho_0^beta t^gamma) = R^* = "cost."
$
Imponendo l'omogeneità dimensionale $r_f prop E^alpha rho_0^beta t^gamma$:
$
  [L] = (M L^2 T^(-2))^alpha (M L^(-3))^beta T^gamma = M^(alpha + beta) L^(2 alpha - 3 beta) T^(gamma - 2 alpha)
$
si ottiene il sistema lineare negli esponenti:
$
  cases(
    alpha + beta = 0,
    2 alpha - 3 beta = 1,
    gamma - 2 alpha = 0
  )
  quad arrow.r quad
  cases(
    alpha = -beta,
    -2 beta - 3 beta = 1,
    gamma = 2 alpha
  )
  quad arrow.r quad
  cases(
    alpha = 1/5,
    beta = -1/5,
    gamma = 2/5
  )
$
La legge di espansione del raggio risulta quindi:
$
  r_f (t) = R^* ((E t^2) / rho_0)^(1/5) = R^* (E / rho_0)^(1/5) t^(2/5)
$
o equivalentemente, confrontando istanti successivi dalle fotografie:
$
  (r_f (t_2)) / ((E t_2^2) / rho_0)^(1/5) = dots.h = (r_f (t_1)) / ((E t_1^2) / rho_0)^(1/5) = R^*
$

Per verificare il modello e determinare $E$ dai dati sperimentali $(t_i, r_f (t_i))$, si applica il logaritmo alla relazione ottenuta:
$
  ln r_f = ln [ R^* (E / rho_0)^(1/5) ] + 2/5 ln t
$
In un diagramma logaritmico ($\ln r_f$ in funzione di $\ln t$), la relazione rappresenta una *retta* di pendenza nota pari a $2/5$. L'allineamento dei punti fotografici lungo una retta di pendenza $2/5$ conferma la validità delle ipotesi dimensionali; nota la densità dell'aria $rho_0$ (e la costante $R^*$ di ordine unitario), dall'intercetta della retta si ricava l'energia $E$ dell'esplosione.

== Coefficiente di resistenza aerodinamica

Applichiamo il teorema $Pi$ al flusso esterno stazionario attorno a un corpo circolare (sfera o cilindro indefinito) di diametro $D$, investito da una corrente uniforme di velocità $U_infinity$ diretta lungo il versore $hat(i)$, in un fluido newtoniano incomprimibile di densità $rho$ e viscosità dinamica $mu$. La forza di resistenza aerodinamica (*drag*) è la proiezione della forza totale $arrow(F)$ nella direzione della corrente: $F_D = arrow(F) dot hat(i)$.

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Ipotizziamo la dipendenza da $n = 4$ parametri di controllo indipendenti:
    $
      F_D = f(U_infinity, rho, mu, D)
    $
    le cui dimensioni fondamentali ($r = 3$: $M, L, T$) sono:
    $
      [U_infinity] = L / T, quad [rho] = M / L^3, quad [mu] = M / (L T), quad [D] = L
    $
    Poiché $n - r = 4 - 3 = 1$, esiste un solo parametro adimensionale indipendente costruibile con $(U_infinity, rho, mu, D)$. Adimensionalizzando $mu$ tramite $(rho, U_infinity, D)$ si trova $[rho^(-1) U_infinity^(-1) D^(-1) mu] = 1$, il cui reciproco definisce il *numero di Reynolds*:
    $
      "Re" = (rho U_infinity D) / mu = (U_infinity D) / nu, quad "con " nu = mu / rho
    $
    La forza di resistenza può essere adimensionalizzata in due modi equivalenti:
    - rispetto alla scala inerziale (per una sfera, utilizzando $D^2$ o l'area frontale $A = pi D^2 slash 4$; per un cilindro indefinito si scala la forza per unità di apertura $F'_D$ con $1/2 rho U_infinity^2 D$):
      $
        C_D = (F_D) / (1/2 rho U_infinity^2 D^2) = C_D ("Re")
      $
    - rispetto alla scala viscosa (particolarmente espressiva a bassi $"Re"$, con $k = 1/2 "Re" thin C_D$):
      $
        k = (F_D) / (mu U_infinity D) = k("Re")
      $
  ],
  [
    #box(width: 16.5em, height: 9.5em)[
      #place(top + left, dx: 0.6em, dy: 2.0em)[$U_infinity$]
      #place(top + left, dx: 0.6em, dy: 7.1em)[$rho, mu$]
      #for y in (3.4em, 4.8em, 6.2em) [
        #place(top + left, dx: 0.6em, dy: y, line(start: (0pt, 0pt), end: (3.05em, 0pt), stroke: 0.8pt + luma(70)))
        #place(top + left, dx: 3.6em, dy: y - 0.2em, polygon(fill: luma(70), (0pt, 0pt), (0.45em, 0.2em), (0pt, 0.4em)))
      ]
      #place(top + left, dx: 5.6em, dy: 3.2em, circle(radius: 1.6em, fill: luma(240), stroke: 1pt + black))
      #place(top + left, dx: 5.6em, dy: 7.2em, line(start: (0pt, 0pt), end: (3.2em, 0pt), stroke: 0.7pt + luma(80)))
      #place(top + left, dx: 5.6em, dy: 7.0em, line(start: (0pt, 0pt), end: (0pt, 0.4em), stroke: 0.7pt + luma(80)))
      #place(top + left, dx: 8.8em, dy: 7.0em, line(start: (0pt, 0pt), end: (0pt, 0.4em), stroke: 0.7pt + luma(80)))
      #place(top + left, dx: 6.85em, dy: 7.55em)[$D$]
      #place(top + left, dx: 7.2em, dy: 2.31em, line(start: (0pt, 2.49em), end: (5.75em, 0pt), stroke: 1.1pt + black))
      #place(top + left, dx: 12.71em, dy: 2.20em, polygon(fill: black, (0.49em, 0em), (0.16em, 0.36em), (0pt, 0em)))
      #place(top + left, dx: 12.5em, dy: 0.8em)[$arrow(F)$]
      #place(top + left, dx: 13.2em, dy: 2.2em, line(start: (0pt, 0pt), end: (0pt, 2.6em), stroke: (paint: luma(120), thickness: 0.7pt, dash: "dashed")))
      #place(top + left, dx: 7.2em, dy: 4.8em, line(start: (0pt, 0pt), end: (5.75em, 0pt), stroke: 1.2pt + rgb("#b91c1c")))
      #place(top + left, dx: 12.85em, dy: 4.58em, polygon(fill: rgb("#b91c1c"), (0pt, 0pt), (0.45em, 0.22em), (0pt, 0.44em)))
      #place(top + left, dx: 10.2em, dy: 5.2em)[$F_D$]
      #place(top + left, dx: 11.4em, dy: 7.4em, line(start: (0pt, 0pt), end: (1.55em, 0pt), stroke: 0.9pt + luma(40)))
      #place(top + left, dx: 12.9em, dy: 7.22em, polygon(fill: luma(40), (0pt, 0pt), (0.4em, 0.18em), (0pt, 0.36em)))
      #place(top + left, dx: 12.0em, dy: 7.75em)[$hat(i)$]
    ]
  ]
)
#v(0.8em)

Si osservi il ruolo della densità $rho$: esprimendo la viscosità tramite quella cinematica $nu = mu slash rho$ ($[nu] = L^2 T^(-1}$), per descrivere il campo di velocità adimensionalizzato $arrow(u) slash U_infinity$ (oppure la forza per unità di massa $F_D slash rho$, avente dimensioni $[F_D slash rho] = L^4 T^(-2}$ prive di $M$) intervengono soltanto $n = 3$ parametri di controllo $(U_infinity, D, nu)$ in $r = 2$ dimensioni indipendenti ($L, T$). Da $n - r = 1$ discende nuovamente il solo numero di Reynolds $"Re" = U_infinity D slash nu$: in un fluido newtoniano a densità costante, $rho$ non aggiunge parametri adimensionali indipendenti, ma entra in $F_D$ unicamente come fattore di scala dimensionale.

=== Limiti di validità: fluidi non newtoniani e numero di Mach

La dipendenza dal solo numero di Reynolds poggia su due ipotesi restrittive:
- *Comportamento newtoniano:* gli sforzi di taglio dipendono linearmente dal gradiente di velocità (velocità di deformazione) attraverso un'unica costante di viscosità $mu$. Per fluidi non newtoniani intervengono ulteriori parametri reologici.
- *Densità costante (incomprimibilità):* assumere $rho = "cost."$ equivale a considerare infinita la velocità di propagazione delle onde acustiche ($c arrow.r infinity$). Se si ammette la comprimibilità (dilatazione delle particelle fluide), occorre introdurre tra i parametri di controllo anche la velocità del suono $c$ ($[c] = L slash T$):
  $
    F_D = f(U_infinity, rho, mu, D, c)
  $
  Con $n = 5$ e $r = 3$, si hanno $n - r = 2$ parametri adimensionali indipendenti:
  $
    C_D = C_D ("Re", "Ma"), quad "Ma" = U_infinity / c
  $
  dove $"Ma"$ è il *numero di Mach*. Gli effetti di comprimibilità risultano trascurabili per bassi numeri di Mach, tipicamente $"Ma" lt.eq 0.3$ (in aria fino a velocità di circa $100 div 110\ "m/s"$), regime in cui il flusso può essere trattato come incomprimibile.

// promosso da === sotto § Coefficiente di resistenza aerodinamica
== Interpretazione fisica del numero di Reynolds

Per interpretare fisicamente il numero di Reynolds si esamina l'ordine di grandezza dei termini nell'equazione di Navier-Stokes per fluido incomprimibile (omettendo il termine gravitazionale):
$
  rho (partial arrow(u)) / (partial t) + underbrace(rho (arrow(u) dot nabla) arrow(u), (rho U_infinity^2) / D) = -nabla p + underbrace(mu Delta arrow(u), (mu U_infinity) / D^2)
$
Assumendo $U_infinity$ e $D$ come scale caratteristiche di velocità e lunghezza e $tau tilde.op D slash U_infinity$ come scala temporale convettiva:
- il termine instazionario ha ordine $|rho thin partial arrow(u) slash partial t| tilde.op rho U_infinity slash (D slash U_infinity) = rho U_infinity^2 slash D$, uguale a quello del termine convettivo;
- il termine convettivo (trasporto di quantità di moto per inerzia) ha ordine $|rho (arrow(u) dot nabla) arrow(u)| tilde.op rho U_infinity^2 slash D$;
- il gradiente di pressione $-nabla p$ non impone qui una scala indipendente (a differenza dei moti in condotta guidati da una caduta di pressione imposta);
- il termine diffusivo (dissipazione viscosa) ha ordine $|mu Delta arrow(u)| tilde.op mu U_infinity slash D^2$.

Confrontando l'ordine di grandezza del termine convettivo con quello del termine diffusivo si ottiene:
$
  "Re" & = "convezione" / "diffusione" = (rho U_infinity^2 slash D) / (mu U_infinity slash D^2) = (rho U_infinity D) / mu = \
       & = U_infinity / (nu / D) = "velocità convettiva" / "velocità diffusiva"
$

Il numero di Reynolds misura quindi l'importanza relativa della convezione rispetto alla diffusione viscosa: a densità costante, tutta la dinamica del fluido nasce dalla competizione tra questi due meccanismi. Per $"Re" << 1$ la diffusione domina e il termine convettivo — che è il termine *non lineare* dell'equazione — diventa di secondo ordine; se tale termine è assente o trascurabile (come per geometria nel moto di Poiseuille o a bassissimo $"Re"$), la dinamica è lineare e il campo è necessariamente laminare. Al contrario, per $"Re"$ elevati (es. $"Re" tilde.op 10^5$) il termine convettivo non lineare diventa dominante e conferisce al fluido un'autonomia dinamica rispetto alle condizioni al contorno: pur in presenza di forzanti stazionarie, insorgono prima oscillazioni periodiche autonome (distacco alternato di vortici per $"Re" > 40$) e poi il regime turbolento, caratterizzato dalla capacità del campo di moto di svincolarsi da una risposta univoca e stazionaria alle condizioni al contorno.

#nota-esame[
  Il termine convettivo $(arrow(u) dot nabla) arrow(u)$ è il termine *non lineare* dell'equazione di Navier-Stokes. Un campo di moto retto da dinamica lineare è necessariamente laminare, ma un campo di moto laminare non ha necessariamente dinamica lineare (ad esempio, nel flusso attorno a un cilindro per $"Re" tilde.op 2 div 40$, le bolle di ricircolo coinvolgono effetti non lineari pur restando stazionarie e laminari).
]