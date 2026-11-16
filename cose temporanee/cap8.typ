#import "/template.typ": *
#import "@preview/cetz:0.3.4"
#set page(
  paper: "a4",
  margin: (x: 1.9cm, y: 1.85cm),
  numbering: "1",
)
#set text(
  font: "New Computer Modern",
  size: 10pt,
  lang: "it",
)
#set par(
  justify: true,
  leading: 0.6em,
  spacing: 0.9em,
)
#set heading(numbering: "1.1")
#show heading: set block(above: 1.1em, below: 0.65em)
#show math.equation: set block(spacing: 0.7em)

// Palette colori coerente per testo e grafici CeTZ
#let col-primary = rgb("#1b4f72")
#let col-accent  = rgb("#c0392b")
#let col-green   = rgb("#1e8449")
#let col-gray    = rgb("#5d6d7e")
#let col-fill    = rgb("#ebf5fb")

#let eqbox(title: none, body) = block(
  width: 100%,
  fill: col-fill,
  stroke: (left: 3pt + col-primary),
  inset: (x: 10pt, y: 7pt),
  radius: (right: 3pt),
  above: 0.75em,
  below: 0.75em,
  breakable: false,
  [
    #if title != none [
      #text(weight: "bold", fill: col-primary)[#title] \
    ]
    #body
  ]
)

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

#eqbox(title: [Teorema di Bernoulli generalizzato (campi irrotazionali stazionari)])[
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
    #canvas(length: 1cm, {
  import draw: *
  circle((0, 3.55), radius: 1.0, fill: rgb("#ececec"), stroke: none)
  line((-2.55, 3.55), (2.55, 3.55), stroke: (paint: rgb("#4f6678"), dash: "dashed", thickness: 0.8pt))
  circle((0, 3.55), radius: 1.0, stroke: 1.3pt)
  bezier((-2.5, 4.00), (0, 4.80), (-1.4, 4.00), (-0.9, 4.80), stroke: (paint: rgb("#1d4f6e"), thickness: 1.1pt))
  bezier((0, 4.80), (2.5, 4.00), (0.9, 4.80), (1.4, 4.00), stroke: (paint: rgb("#1d4f6e"), thickness: 1.1pt))
  bezier((-2.5, 3.10), (0, 2.30), (-1.4, 3.10), (-0.9, 2.30), stroke: (paint: rgb("#1d4f6e"), thickness: 1.1pt))
  bezier((0, 2.30), (2.5, 3.10), (0.9, 2.30), (1.4, 3.10), stroke: (paint: rgb("#1d4f6e"), thickness: 1.1pt))
  line((0, 3.55), (-0.707, 4.257), stroke: 0.9pt)
  arc((0, 3.55), start: 135deg, stop: 180deg, radius: 0.36, anchor: "origin", stroke: 0.75pt)
  content((-0.55, 3.77), text(size: 8.5pt)[$theta$])
  line((0.707, 4.257), (1.061, 4.611), mark: (end: ">"), stroke: (paint: rgb("#b83b2a"), thickness: 1.2pt))
  content((1.16, 4.62), text(size: 8.5pt, fill: rgb("#b83b2a"))[$hat(n)$], anchor: "west")
  circle((-1.0, 3.55), radius: 0.065, fill: rgb("#b83b2a"), stroke: none)
  content((-1.08, 3.40), text(size: 8pt, fill: rgb("#b83b2a"))[$p_"max"$], anchor: "north-east")
  circle((1.0, 3.55), radius: 0.065, fill: rgb("#b83b2a"), stroke: none)
  content((1.08, 3.40), text(size: 8pt, fill: rgb("#b83b2a"))[$p_"max"$], anchor: "north-west")
  circle((0, 4.55), radius: 0.065, fill: rgb("#1d4f6e"), stroke: none)
  content((0, 4.95), text(size: 8.5pt, fill: rgb("#1d4f6e"))[$p_"min"(u_"max")$], anchor: "south")
  line((-2.15, 0), (2.35, 0), mark: (end: ">"), stroke: 1.0pt)
  line((-1.9, -0.22), (-1.9, 1.85), mark: (end: ">"), stroke: 1.0pt)
  line((0, -0.07), (0, 0.07), stroke: 0.8pt)
  line((1.9, -0.07), (1.9, 0.07), stroke: 0.8pt)
  content((-2.02, 1.78), text(size: 8.5pt)[$p$], anchor: "east")
  content((-2.02, -0.14), text(size: 8pt)[$0$], anchor: "north-east")
  content((0, -0.14), text(size: 8pt)[$pi / 2$], anchor: "north")
  content((1.9, -0.14), text(size: 8pt)[$pi$], anchor: "north")
  content((2.32, -0.14), text(size: 8.5pt)[$theta$], anchor: "north")
  content((0, 1.56), text(size: 8.5pt, weight: "bold", fill: rgb("#1d4f6e"))[Soluzione a potenziale], anchor: "south")
  bezier((-1.9, 1.40), (0, 0.25), (-1.210, 1.40), (-0.690, 0.25), stroke: (paint: rgb("#1d4f6e"), thickness: 1.3pt))
  bezier((0, 0.25), (1.9, 1.40), (0.690, 0.25), (1.210, 1.40), stroke: (paint: rgb("#1d4f6e"), thickness: 1.3pt))
  bezier((0, 0.25), (1.9, 0.72), (0.690, 0.25), (1.210, 0.72), stroke: (paint: rgb("#b83b2a"), dash: "dashed", thickness: 1.1pt))
  line((1.9, 0.78), (1.9, 1.34), mark: (start: ">", end: ">"), stroke: (paint: rgb("#b83b2a"), thickness: 1.0pt))
  content((2.02, 1.06), text(size: 8pt, fill: rgb("#b83b2a"))[$Delta p$], anchor: "west")
})
  ]
)

#eqbox(title: [Paradosso di D'Alembert])[
  Calcolando la forza risultante esercitata dal fluido sul corpo tramite l'integrale delle pressioni (con $hat(n)$ normale uscente dalla superficie $S$),
  $ arrow(F) = - integral_S p hat(n) dif S = arrow(0) $
  si ottiene una forza identicamente nulla a causa della perfetta simmetria delle pressioni tra monte e valle. Più in generale, il *paradosso di D'Alembert* afferma che in un campo di moto stazionario, incomprimibile e irrotazionale attorno a un corpo immerso di forma qualsiasi (anche un profilo alare non simmetrico), la componente della forza nella direzione della corrente indisturbata (*resistenza aerodinamica*) è sempre identicamente nulla, mentre può essere non nulla la componente trasversale (*portanza*).
]

Infine, poiché nei campi a potenziale la vorticità è nulla ($arrow(omega) = arrow(0)$) e il problema è lineare, non può mai innescarsi la transizione alla turbolenza.


=== Evoluzione reale del campo di moto attorno a una sfera/cilindro al variare di $"Re"$

Nei fluidi viscosi reali, la condizione di aderenza a parete genera vorticità nello strato limite e il campo di moto effettivo attorno a una sfera (o cilindro) cambia radicalmente al variare del numero di Reynolds $"Re" = u_infinity D slash nu$:

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
    #canvas(length: 1cm, {
      import draw: *
      content((3.1, 1.52), text(size: 8.5pt)[*$"Re" << 1$*], anchor: "south")

      line((0.2, -0.9), (0.2, 0.9), stroke: 0.7pt + gray)
      line((0.2, -0.76), (0.9, -0.76), mark: (end: ">"), stroke: 0.8pt + blue)
      line((0.2, -0.38), (0.9, -0.38), mark: (end: ">"), stroke: 0.8pt + blue)
      line((0.2, 0.0), (0.9, 0.0), mark: (end: ">"), stroke: 0.8pt + blue)
      line((0.2, 0.38), (0.9, 0.38), mark: (end: ">"), stroke: 0.8pt + blue)
      line((0.2, 0.76), (0.9, 0.76), mark: (end: ">"), stroke: 0.8pt + blue)
      content((0.55, 0.94), text(size: 8pt, fill: blue)[$u_infinity$], anchor: "south")

      circle((3.1, 0), radius: 0.65, fill: gray.transparentize(75%), stroke: 1.1pt + black)
      line((2.64, -0.46), (3.56, 0.46), mark: (start: ">", end: ">"), stroke: 0.75pt + black)
      content((3.18, -0.08), text(size: 8pt)[$D$], anchor: "north-west")

      bezier((1.15, 0.20), (3.1, 0.82), (2.15, 0.20), (2.45, 0.82), stroke: 0.85pt + blue)
      bezier((3.1, 0.82), (5.05, 0.20), (3.75, 0.82), (4.05, 0.20), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((1.15, 0.52), (3.1, 1.08), (2.1, 0.52), (2.45, 1.08), stroke: 0.85pt + blue)
      bezier((3.1, 1.08), (5.05, 0.52), (3.75, 1.08), (4.1, 0.52), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((1.15, 0.84), (3.1, 1.34), (2.1, 0.84), (2.45, 1.34), stroke: 0.85pt + blue)
      bezier((3.1, 1.34), (5.05, 0.84), (3.75, 1.34), (4.1, 0.84), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((1.15, -0.20), (3.1, -0.82), (2.15, -0.20), (2.45, -0.82), stroke: 0.85pt + blue)
      bezier((3.1, -0.82), (5.05, -0.20), (3.75, -0.82), (4.05, -0.20), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((1.15, -0.52), (3.1, -1.08), (2.1, -0.52), (2.45, -1.08), stroke: 0.85pt + blue)
      bezier((3.1, -1.08), (5.05, -0.52), (3.75, -1.08), (4.1, -0.52), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((1.15, -0.84), (3.1, -1.34), (2.1, -0.84), (2.45, -1.34), stroke: 0.85pt + blue)
      bezier((3.1, -1.34), (5.05, -0.84), (3.75, -1.34), (4.1, -0.84), mark: (end: ">"), stroke: 0.85pt + blue)
    })
  ],

  // 2. Re ~ 1 - 20
  [#v(1em)
    *2. Regime $"Re" tilde.op 1 div 20$ (ricircolo stazionario):* \
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso (da $p_"min"$ verso la zona di recupero a valle) e non riesce a rimanere attaccato alla parete: si formano due vortici stazionari e simmetrici di ricircolo in scia.
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      line((0.1, 0), (5.3, 0), mark: (end: ">"), stroke: (paint: gray, thickness: 0.65pt, dash: "dashed"))
      line((0.35, -1.15), (0.35, 1.35), mark: (end: ">"), stroke: 0.75pt + black)
      content((5.38, 0), text(size: 8pt)[$x_1$], anchor: "west")
      content((0.25, 1.32), text(size: 8pt)[$x_2$], anchor: "east")

      circle((2.1, 0), radius: 0.65, fill: gray.transparentize(75%), stroke: 1.1pt + black)

      bezier((0.65, 0.36), (2.1, 0.86), (1.35, 0.36), (1.65, 0.86), stroke: 0.85pt + blue)
      bezier((2.1, 0.86), (4.95, 0.52), (3.0, 0.89), (3.95, 0.66), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((0.65, 0.68), (2.1, 1.24), (1.35, 0.68), (1.65, 1.24), stroke: 0.85pt + blue)
      bezier((2.1, 1.24), (4.95, 0.88), (3.0, 1.27), (3.95, 0.98), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((0.65, -0.36), (2.1, -0.86), (1.35, -0.36), (1.65, -0.86), stroke: 0.85pt + blue)
      bezier((2.1, -0.86), (4.95, -0.52), (3.0, -0.89), (3.95, -0.66), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((0.65, -0.68), (2.1, -1.24), (1.35, -0.68), (1.65, -1.24), stroke: 0.85pt + blue)
      bezier((2.1, -1.24), (4.95, -0.88), (3.0, -1.27), (3.95, -0.98), mark: (end: ">"), stroke: 0.85pt + blue)

      line((1.64, 0.46), (1.22, 0.88), mark: (end: ">"), stroke: 0.85pt + green.darken(25%))
      line((1.64, 0.46), (2.02, 0.84), mark: (end: ">"), stroke: 0.85pt + green.darken(25%))
      content((1.18, 0.92), text(size: 7.5pt, fill: green.darken(25%))[$xi_2$], anchor: "south-east")
      content((2.06, 0.88), text(size: 7.5pt, fill: green.darken(25%))[$xi_1$], anchor: "south")

      circle((1.45, 0), radius: 0.065, fill: red, stroke: none)
      circle((2.1, 0.65), radius: 0.065, fill: red, stroke: none)
      content((1.38, -0.06), text(size: 7.5pt, fill: red)[$p_"max"$], anchor: "north-east")
      content((2.1, 0.53), text(size: 7.5pt, fill: red)[$p_"min"$], anchor: "north")

      bezier((2.70, 0.32), (4.05, 0.18), (3.15, 0.48), (3.85, 0.34), stroke: 0.8pt + red)
      bezier((4.05, 0.18), (2.80, 0.12), (4.05, 0.06), (3.35, 0.08), mark: (end: ">"), stroke: 0.8pt + red)
      bezier((2.80, 0.12), (2.70, 0.32), (2.73, 0.16), (2.69, 0.24), stroke: 0.8pt + red)

      bezier((2.70, -0.32), (4.05, -0.18), (3.15, -0.48), (3.85, -0.34), stroke: 0.8pt + red)
      bezier((4.05, -0.18), (2.80, -0.12), (4.05, -0.06), (3.35, -0.08), mark: (end: ">"), stroke: 0.8pt + red)
      bezier((2.80, -0.12), (2.70, -0.32), (2.73, -0.16), (2.69, -0.24), stroke: 0.8pt + red)
    })
  ],

  // 3. Distacco dello strato limite
  [#v(1em)
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente è favorevole ($partial p slash partial xi_1 < 0$) e accelera il fluido; a valle di $p_"min"$ il gradiente diventa avverso ($partial p slash partial xi_1 > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u_1(xi_2)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #canvas(length: 1.4cm, {
      import draw: *
      arc((2.5, -2.65), start: 53deg, stop: 127deg, radius: 3.0, anchor: "origin", fill: gray.transparentize(80%), stroke: none)
      arc((2.5, -2.65), start: 53deg, stop: 127deg, radius: 3.0, anchor: "origin", stroke: 1.3pt + black)

      line((2.5, 0.35), (2.5, 1.55), stroke: (paint: gray, thickness: 0.55pt, dash: "dashed"))
      circle((2.5, 0.35), radius: 0.065, fill: red, stroke: none)
      content((2.5, 0.18), text(size: 7.5pt, fill: red)[*$p_"min" (u_"max")$*], anchor: "north")

      line((1.23, 0.07), (0.76, 1.07), mark: (end: ">"), stroke: 0.75pt + gray)
      content((0.70, 1.09), text(size: 7.5pt)[$xi_2$], anchor: "east")

      line((1.11, 0.32), (1.45, 0.48), mark: (end: ">"), stroke: 0.65pt + blue)
      line((0.99, 0.58), (1.49, 0.81), mark: (end: ">"), stroke: 0.65pt + blue)
      line((0.88, 0.83), (1.44, 1.09), mark: (end: ">"), stroke: 0.65pt + blue)
      bezier((1.23, 0.07), (1.44, 1.09), (1.57, 0.53), (1.51, 0.83), stroke: 1pt + blue)

      line((3.77, 0.07), (4.24, 1.07), mark: (end: ">"), stroke: 0.75pt + gray)
      content((4.29, 1.09), text(size: 7.5pt)[$xi_2$], anchor: "west")

      line((3.86, 0.27), (3.66, 0.36), mark: (end: ">"), stroke: 0.65pt + red)
      line((4.05, 0.67), (4.32, 0.54), mark: (end: ">"), stroke: 0.65pt + blue)
      line((4.15, 0.89), (4.66, 0.65), mark: (end: ">"), stroke: 0.65pt + blue)

      bezier((3.77, 0.07), (3.95, 0.45), (3.52, 0.28), (3.67, 0.51), stroke: 1pt + red)
      bezier((3.95, 0.45), (4.66, 0.65), (4.20, 0.41), (4.45, 0.66), stroke: 1pt + blue)
      content((4.72, 0.63), text(size: 8pt, fill: blue)[$u_1$], anchor: "west")

      content((1.45, 1.38), text(size: 8pt, fill: green.darken(25%))[$ (partial p) / (partial xi_1) < 0 $], anchor: "south")
      content((3.55, 1.38), text(size: 8pt, fill: red)[$ (partial p) / (partial xi_1) > 0 $], anchor: "south")
    })
  ],

  // 4. Re ~ 40 - 50
  [#v(2em)
    *4. Regime $"Re" tilde.op 40 div 50$ (instabilità della scia):* \
    la simmetria dei vortici a valle si rompe e la scia diventa instazionaria, dando origine al distacco periodico e alternato di vortici controrotanti (*scia di von Kármán*).
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      content((1.1, 1.18), text(size: 8.5pt)[*$"Re" tilde.op 40 div 50$*], anchor: "south")
      circle((1.1, 0), radius: 0.62, fill: gray.transparentize(75%), stroke: 1.1pt + black)

      bezier((0.2, 0.35), (1.1, 0.70), (0.6, 0.35), (0.8, 0.70), stroke: 0.85pt + blue)
      bezier((1.1, 0.70), (3.35, 0.44), (2.05, 0.98), (2.75, 0.44), stroke: 0.85pt + blue)
      bezier((3.35, 0.44), (5.25, 0.68), (3.95, 0.44), (4.55, 0.92), mark: (end: ">"), stroke: 0.85pt + blue)

      bezier((0.2, -0.35), (1.1, -0.70), (0.6, -0.35), (0.8, -0.70), stroke: 0.85pt + blue)
      bezier((1.1, -0.70), (3.35, -0.76), (1.85, -0.82), (2.65, -0.76), stroke: 0.85pt + blue)
      bezier((3.35, -0.76), (5.25, -0.60), (4.05, -0.76), (4.65, -0.38), mark: (end: ">"), stroke: 0.85pt + blue)

      arc((2.25, 0.20), start: 35deg, stop: 325deg, radius: (0.35, 0.29), anchor: "origin", mark: (start: ">"), stroke: 0.9pt + red)
      arc((3.35, -0.20), start: 35deg, stop: 325deg, radius: (0.37, 0.30), anchor: "origin", mark: (end: ">"), stroke: 0.9pt + blue)
      arc((4.45, 0.20), start: 35deg, stop: 325deg, radius: (0.39, 0.32), anchor: "origin", mark: (start: ">"), stroke: 0.9pt + red)
    })
  ]
)
#v(2em)
== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#eqbox(title: [Equazione del trasporto della vorticità di Helmholtz])[
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.