#import "../template.typ": *
#import "@preview/cetz:0.3.4"
#show: conf

= Vorticità e campi irrotazionali

== Il vettore vorticità

Il tensore gradiente di velocità $nabla arrow(u)$ può essere sempre scomposto nella somma di una parte simmetrica $bold(D)$ (tensore velocità di deformazione, $D_(i j) = D_(j i)$) e di una parte antisimmetrica $bold(Omega)$ (tensore di vorticità, $Omega_(i j) = -Omega_(j i)$):

$ nabla arrow(u) = bold(D) + bold(Omega) $

Poiché $bold(Omega)$ è un tensore del secondo ordine antisimmetrico in 3D, ha elementi diagonali nulli e solo 3 componenti indipendenti. È quindi conveniente descrivere la rotazione locale del fluido mediante il *vettore vorticità* $arrow(omega)$, definito come il rotore del campo di velocità:

$
  arrow(omega) = nabla times arrow(u)
  = mat(
      delim: "|",
      hat(i), hat(j), hat(k);
      display(partial / (partial x_1)), display(partial / (partial x_2)), display(partial / (partial x_3));
      u_1, u_2, u_3
    )
  = vec(
      display((partial u_3) / (partial x_2) - (partial u_2) / (partial x_3)),
      display((partial u_1) / (partial x_3) - (partial u_3) / (partial x_1)),
      display((partial u_2) / (partial x_1) - (partial u_1) / (partial x_2))
    )
$

le cui componenti coincidono (a meno di un fattore $1 slash 2$) con i termini indipendenti di $bold(Omega)$.

- *Significato fisico:* le componenti $(omega_1, omega_2, omega_3)$ misurano la velocità di rotazione locale delle particelle fluide attorno ai tre assi coordinati (rilevabile idealmente inserendo una piccola "crocetta" solida nel fluido: se il campo ha vorticità non nulla, le forze sbilanciate sui bracci la portano a ruotare). Questi moti rotazionali locali sottraggono parte dell'energia cinetica al trasporto medio di massa.
- *Vorticità e linee di corrente:* un campo con vorticità non nulla non presenta necessariamente linee di corrente curve o chiuse (vortici su grande scala). Ad esempio, nel moto laminare tra due piastre piane o in un condotto, le linee di corrente sono rettilinee e parallele, ma il gradiente trasversale di velocità (es. $partial u_1 slash partial x_2 eq.not 0$) genera una vorticità $omega_3 eq.not 0$.

== Campi di moto irrotazionali (a potenziale)

Si considera un fluido incomprimibile a densità costante ($rho = "cost"$, per cui $nabla dot arrow(u) = 0$). Si assume che la vorticità del campo fluido sia ovunque nulla:

$ arrow(omega) = nabla times arrow(u) = arrow(0) $

Il campo di moto è dunque *irrotazionale* e gode della proprietà (in domini semplicemente connessi) per cui la velocità è esprimibile come gradiente di una funzione scalare $Phi(arrow(x), t)$ nello spazio e nel tempo detta *potenziale di velocità*:

$ arrow(u) = nabla Phi(arrow(x), t) $

Sostituendo $arrow(u) = nabla Phi$ nel vincolo di incomprimibilità $nabla dot arrow(u) = 0$, si ottiene che il potenziale soddisfa l'*equazione di Laplace*:

$ nabla dot (nabla Phi) = Delta Phi = 0 $

Vediamo come si semplifica l'equazione di Navier-Stokes per un fluido incomprimibile:

$ (partial arrow(u)) / (partial t) + (arrow(u) dot nabla) arrow(u) = - 1 / rho nabla p + arrow(g) + nu Delta arrow(u) $

Assumo che la forza di volume gravitazionale (per $arrow(g)$ uniforme) sia conservativa, dove $chi$ è il potenziale gravitazionale:

$ arrow(g) = - nabla chi quad ; quad chi = - arrow(g) dot arrow(x) $

- *Termine convettivo (non-lineare):* per l'identità vettoriale di Lamb-Gromeka, indicando con $u = |arrow(u)|$ il modulo della velocità, si può esprimere come
  $ (arrow(u) dot nabla) arrow(u) = nabla (1 / 2 u^2) + arrow(omega) times arrow(u) $
  Poiché il campo è irrotazionale ($arrow(omega) = arrow(0)$), il termine si riduce a $(arrow(u) dot nabla) arrow(u) = nabla (1 slash 2 thin u^2)$.

- *Termine viscoso:* sostituendo il potenziale di velocità e sfruttando la linearità degli operatori differenziali (che commutano):
  $
    nu Delta arrow(u) &= nu Delta (nabla Phi) = nu nabla (Delta Phi) \
    "Ma" quad Delta Phi &= nabla dot nabla Phi = nabla dot arrow(u) = 0
  $
  $arrow.r$ Il termine viscoso è identicamente nullo ($nu Delta arrow(u) = arrow(0)$) a causa dell'incomprimibilità ($rho = "cost"$), *senza bisogno di ipotizzare che il fluido sia ideale ($nu = 0$)*!

Sostituendo queste semplificazioni nell'equazione di Navier-Stokes e raccogliendo i gradienti (sfruttando $rho = "cost"$), si ottiene:

$ (partial arrow(u)) / (partial t) + nabla (1 / 2 u^2 + p / rho + chi) = arrow(0) $

- *Caso stazionario:* assumendo $partial arrow(u) slash partial t = arrow(0)$, l'equazione di Navier-Stokes si riduce a
  $
    (arrow(u) dot nabla) arrow(u) &= - 1 / rho nabla p + arrow(g) + cancel(nu Delta arrow(u)) \
    nabla (1 / 2 u^2) &= - 1 / rho nabla p - nabla chi
  $
  Moltiplicando per $rho = "cost"$, si ottiene il *teorema di Bernoulli generalizzato*:

#nota[
  *Teorema di Bernoulli generalizzato (campi irrotazionali stazionari)* \
  $ nabla (underbrace(1 / 2 rho u^2 + p + rho chi, H)) = arrow(0) ==> H = "cost in tutto il campo!" $
  A differenza del teorema di Bernoulli classico per flussi rotazionali (in cui il carico totale $H$ è costante solo lungo una singola linea di corrente), nei campi irrotazionali stazionari $H$ ha lo stesso valore in ogni punto del dominio fluido. Inoltre, poiché la cinematica è governata dall'equazione lineare $Delta Phi = 0$, il problema è completamente linearizzato e le soluzioni possono essere costruite per sovrapposizione di soluzioni elementari (ad esempio tramite analisi complessa e trasformazioni conformi).
]

== Flussi esterni, Paradosso di D'Alembert e regimi di Reynolds

=== Soluzione a potenziale attorno a un cilindro o sfera e Paradosso di D'Alembert

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

Nei fluidi viscosi reali, la condizione di aderenza a parete genera vorticità nello strato limite e il campo di moto effettivo attorno a una sfera (o cilindro) cambia radicalmente al variare del numero di Reynolds $"Re" = U_infinity D slash nu$:

#v(0.2em)

#grid(
  columns: (1.15fr, 0.85fr),
  row-gutter: 0.95em,
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),

  // 1. Re << 1
  [
    *1. Campo di moto per $"Re" << 1$ (regime di Stokes):* \
    le forze viscose dominano su quelle inerziali. Le linee di corrente seguono il profilo del corpo senza distacco e presentano un andamento pressoché simmetrico tra monte e valle (ma il campo è fortemente rotazionale e viscoso, non a potenziale).
  ],
  [
    #include "../figs/cap9-fig02.typ"
  ],

  // 2. Re ~ 1 - 20
  [#v(1em)
    *2. Regime $"Re" tilde.op 1 div 20$ (ricircolo stazionario):* \
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($P_"min"$) il fluido incontra un gradiente di pressione avverso (da $P_"min"$ verso la zona di recupero a valle) e non riesce a rimanere attaccato alla parete: si formano due vortici stazionari e simmetrici di ricircolo in scia.
  ],
  [
    #include "../figs/cap9-fig03.typ"
  ],

  // 3. Distacco dello strato limite
  [#v(1em)
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $P_"min"$ il gradiente è favorevole ($partial P slash partial s < 0$) e accelera il fluido; a valle di $P_"min"$ il gradiente diventa avverso ($partial P slash partial s > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u(n)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #include "../figs/cap9-fig04.typ"
  ],

  // 4. Re ~ 40 - 50
  [#v(2em)
    *4. Regime $"Re" tilde.op 40 div 50$ (instabilità della scia):* \
    la simmetria dei vortici a valle si rompe e la scia diventa instazionaria, dando origine al distacco periodico e alternato di vortici controrotanti (*scia di von Kármán*).
  ],
  [
    #include "../figs/cap9-fig05.typ"
  ]
)
#v(2em)

== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#nota[
  *Equazione del trasporto della vorticità di Helmholtz* \
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla P) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.