#import "@preview/cetz:0.3.4"

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.2cm),
  numbering: "1",
)
#set text(
  font: "New Computer Modern",
  size: 10.5pt,
  lang: "it",
)
#set par(
  justify: true,
  leading: 0.65em,
)
#set heading(numbering: "1.1")

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
  inset: (x: 10pt, y: 8pt),
  radius: (right: 3pt),
  above: 0.9em,
  below: 0.9em,
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

Consideriamo il campo di moto irrotazionale stazionario attorno a un cilindro circolare indefinito (o a una sfera), trascurando le variazioni di quota ($chi$ trascurabile), per cui vale ovunque:

$ 1 / 2 rho u^2 + p = "cost" $

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Simmetria e distribuzione di pressione:* la soluzione a potenziale fornisce un andamento delle linee di corrente perfettamente simmetrico sia tra parte superiore e inferiore, sia tra monte e valle. Percorrendo la superficie del corpo al variare dell'angolo polare $theta in [0, pi]$ (con $theta = 0$ punto frontale a monte e $theta = pi$ punto posteriore a valle):
      - In $theta = 0$ (e $theta = pi$) si hanno i *punti di arresto* (o di ristagno): la velocità si annulla ($u = u_"min" = 0$) e per Bernoulli la pressione raggiunge il valore massimo ($p = p_"max"$).
      - Procedendo da $theta = 0$ verso i fianchi del corpo ($theta = pi slash 2$), le linee di corrente si addensano, il fluido accelera fino a $u = u_"max"$ e la pressione scende al valore minimo $p = p_"min"$.
      - Nella metà a valle ($theta in [pi slash 2, pi]$), per la simmetria del campo a potenziale, il fluido decelera nuovamente senza staccarsi dalla parete, realizzando un *recupero completo di pressione* fino a ritrovare $p = p_"max"$ in $theta = pi$ (curva continua nel grafico a lato; la curva tratteggiata mostra invece la perdita di recupero $Delta p$ nei flussi reali con distacco).
  ],
  [
    #cetz.canvas(length: 0.82cm, {
      import cetz.draw: *

      // Schema superiore: cilindro e angolo theta
      let cy = 4.3
      circle((2.5, cy), radius: 1.0, fill: luma(235), stroke: 1.2pt + black)
      line((0.2, cy), (4.8, cy), stroke: (paint: col-gray, thickness: 0.6pt, dash: "dashed"))
      // Linee di corrente simmetriche
      bezier((0.3, cy + 0.45), (2.5, cy + 1.25), (1.3, cy + 0.45), (1.7, cy + 1.25), stroke: 0.9pt + col-primary)
      bezier((2.5, cy + 1.25), (4.7, cy + 0.45), (3.3, cy + 1.25), (3.7, cy + 0.45), stroke: 0.9pt + col-primary)
      bezier((0.3, cy - 0.45), (2.5, cy - 1.25), (1.3, cy - 0.45), (1.7, cy - 1.25), stroke: 0.9pt + col-primary)
      bezier((2.5, cy - 1.25), (4.7, cy - 0.45), (3.3, cy - 1.25), (3.7, cy - 0.45), stroke: 0.9pt + col-primary)

      // Angolo theta e normale n
      line((2.5, cy), (1.8, cy + 0.7), stroke: 0.8pt + black)
      arc((2.05, cy), start: 180deg, stop: 135deg, radius: 0.45, stroke: 0.7pt + black)
      content((1.85, cy + 0.22), text(size: 8pt)[$theta$])
      line((3.2, cy + 0.7), (3.65, cy + 1.15), mark: (end: ">", size: 0.15), stroke: 0.9pt + col-accent)
      content((3.85, cy + 1.1), text(size: 8pt, fill: col-accent)[$hat(n)$])

      // Punti notevoli
      circle((1.5, cy), radius: 0.07, fill: col-accent, stroke: none)
      circle((3.5, cy), radius: 0.07, fill: col-accent, stroke: none)
      circle((2.5, cy + 1.0), radius: 0.07, fill: col-primary, stroke: none)
      content((1.05, cy - 0.25), text(size: 7.5pt, fill: col-accent)[$p_"max"$])
      content((3.95, cy - 0.25), text(size: 7.5pt, fill: col-accent)[$p_"max"$])
      content((2.5, cy + 1.52), text(size: 7.5pt, fill: col-primary)[$p_"min" (u_"max")$])

      // Grafico inferiore: p(theta)
      line((0.5, 0), (0.5, 2.6), mark: (end: ">", size: 0.15), stroke: 0.9pt + black)
      line((0.3, 0.8), (4.9, 0.8), mark: (end: ">", size: 0.15), stroke: 0.9pt + black)
      content((0.2, 2.5), text(size: 8.5pt)[$p$])
      content((4.95, 0.5), text(size: 8.5pt)[$theta$])

      // Tacche asse theta
      line((2.5, 0.72), (2.5, 0.88), stroke: 0.8pt + black)
      line((4.5, 0.72), (4.5, 0.88), stroke: 0.8pt + black)
      content((0.3, 0.5), text(size: 8pt)[$0$])
      content((2.5, 0.42), text(size: 8pt)[$pi slash 2$])
      content((4.5, 0.5), text(size: 8pt)[$pi$])

      // Curva a potenziale (simmetrica)
      bezier((0.5, 2.2), (2.5, 0.2), (1.2, 2.2), (1.8, 0.2), stroke: 1.3pt + col-primary)
      bezier((2.5, 0.2), (4.5, 2.2), (3.2, 0.2), (3.8, 2.2), stroke: 1.3pt + col-primary)
      content((2.5, 2.35), text(size: 7.5pt, fill: col-primary, weight: "bold")[Soluzione a potenziale])

      // Curva reale con distacco (mancato recupero Delta p)
      bezier((2.5, 0.2), (4.5, 1.15), (3.1, 0.2), (3.6, 1.15), stroke: (paint: col-accent, thickness: 1.1pt, dash: "dashed"))
      line((4.5, 1.15), (4.5, 2.2), mark: (start: ">", end: ">", size: 0.12), stroke: 0.8pt + col-accent)
      content((4.88, 1.68), text(size: 8pt, fill: col-accent)[$Delta p$])
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

#v(0.3em)

#grid(
  columns: (1.15fr, 0.85fr),
  row-gutter: 1.1em,
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),

  // 1. Re << 1
  [
    *1. Campo di moto per $"Re" << 1$ (regime di Stokes):* \
    le forze viscose dominano su quelle inerziali. Le linee di corrente seguono il profilo del corpo senza distacco e presentano un andamento pressoché simmetrico tra monte e valle (ma il campo è fortemente rotazionale e viscoso, non a potenziale).
  ],
  [
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      content((0.8, 1.35), text(size: 8pt, weight: "bold")[$"Re" << 1$])
      // Profilo velocità a monte
      line((0.2, -0.9), (0.2, 0.9), stroke: 0.7pt + col-gray)
      for y in (-0.7, -0.35, 0, 0.35, 0.7) {
        line((0.2, y), (0.85, y), mark: (end: ">", size: 0.1), stroke: 0.7pt + col-primary)
      }
      content((0.55, 1.05), text(size: 7.5pt, fill: col-primary)[$u_infinity$])

      // Sfera/cilindro
      circle((2.9, 0), radius: 0.65, fill: luma(235), stroke: 1.1pt + black)
      line((2.45, -0.45), (3.35, 0.45), mark: (start: ">", end: ">", size: 0.1), stroke: 0.7pt + black)
      content((2.95, -0.18), text(size: 7.5pt)[$D$])

      // Linee di corrente simmetriche
      for s in (-1, 1) {
        bezier((1.1, s * 0.25), (2.9, s * 0.82), (2.0, s * 0.25), (2.3, s * 0.82), stroke: 0.85pt + col-primary)
        bezier((2.9, s * 0.82), (4.7, s * 0.25), (3.5, s * 0.82), (3.8, s * 0.25), stroke: 0.85pt + col-primary)
        bezier((1.1, s * 0.65), (2.9, s * 1.15), (2.0, s * 0.65), (2.3, s * 1.15), stroke: 0.85pt + col-primary)
        bezier((2.9, s * 1.15), (4.7, s * 0.65), (3.5, s * 1.15), (3.8, s * 0.65), stroke: 0.85pt + col-primary)
      }
    })
  ],

  // 2. Re ~ 1 - 20
  [
    *2. Regime $"Re" tilde.op 1 div 20$ (ricircolo stazionario):* \
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso (da $p_"min"$ verso la zona di recupero a valle) e non riesce a rimanere attaccato alla parete: si formano due vortici stazionari e simmetrici di ricircolo in scia.
  ],
  [
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      // Assi x1, x2
      line((0.2, 0), (5.2, 0), mark: (end: ">", size: 0.12), stroke: (paint: col-gray, thickness: 0.6pt, dash: "dashed"))
      line((0.4, -0.8), (0.4, 1.1), mark: (end: ">", size: 0.12), stroke: 0.7pt + black)
      content((5.35, -0.2), text(size: 7.5pt)[$x_1$])
      content((0.15, 1.05), text(size: 7.5pt)[$x_2$])

      // Corpo
      circle((2.2, 0), radius: 0.65, fill: luma(235), stroke: 1.1pt + black)
      // Coordinate curvilinee xi_1, xi_2
      arc((2.2, 0), start: 145deg, stop: 100deg, radius: 0.8, mark: (end: ">", size: 0.1), stroke: 0.7pt + col-green)
      line((1.67, 0.37), (1.35, 0.8), mark: (end: ">", size: 0.1), stroke: 0.7pt + col-green)
      content((2.0, 0.98), text(size: 7pt, fill: col-green)[$xi_1$])
      content((1.2, 0.85), text(size: 7pt, fill: col-green)[$xi_2$])

      // Punti p_max e p_min
      circle((1.55, 0), radius: 0.07, fill: col-accent, stroke: none)
      circle((2.2, 0.65), radius: 0.07, fill: col-accent, stroke: none)
      content((1.2, -0.35), text(size: 7.5pt, fill: col-accent)[$p_"max"$])
      content((2.65, 1.05), text(size: 7.5pt, fill: col-accent)[$p_"min"$])

      // Linee di corrente esterne e vortici di ricircolo
      for s in (-1, 1) {
        bezier((0.7, s * 0.25), (2.2, s * 0.82), (1.5, s * 0.25), (1.8, s * 0.82), stroke: 0.85pt + col-primary)
        bezier((2.2, s * 0.82), (4.8, s * 0.45), (3.0, s * 0.85), (3.8, s * 0.55), stroke: 0.85pt + col-primary)
        // Bolla di ricircolo
        bezier((2.75, s * 0.35), (3.7, s * 0.08), (3.2, s * 0.55), (3.7, s * 0.35), stroke: 0.8pt + col-accent)
        bezier((3.7, s * 0.08), (2.85, s * 0.12), (3.5, s * 0.02), (3.1, s * 0.05), mark: (end: ">", size: 0.09), stroke: 0.8pt + col-accent)
      }
    })
  ],

  // 3. Distacco dello strato limite
  [
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente è favorevole ($partial p slash partial xi_1 < 0$) e accelera il fluido; a valle di $p_"min"$ il gradiente diventa avverso ($partial p slash partial xi_1 > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u_1(xi_2)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      // Parete curva del cilindro (zoom)
      arc((2.2, -1.6), start: 135deg, stop: 40deg, radius: 2.3, stroke: 1.3pt + black)

      // Punto p_min al colmo
      circle((2.2, 0.7), radius: 0.07, fill: col-accent, stroke: none)
      content((2.2, 0.4), text(size: 7.5pt, fill: col-accent, weight: "bold")[$p_"min"$ ($u_"max"$)])

      // Indicazioni gradiente di pressione
      content((1.05, 0.95), text(size: 7.5pt, fill: col-green)[$display((partial p) / (partial xi_1)) < 0$])
      content((3.45, 0.95), text(size: 7.5pt, fill: col-accent)[$display((partial p) / (partial xi_1)) > 0$])

      // Profilo di velocità attaccato (a monte)
      line((1.1, 0.28), (0.65, 1.05), mark: (end: ">", size: 0.1), stroke: 0.7pt + col-gray)
      content((0.45, 1.05), text(size: 7pt)[$xi_2$])
      bezier((1.1, 0.28), (1.15, 0.95), (1.28, 0.55), (1.25, 0.8), stroke: 0.9pt + col-primary)
      line((0.92, 0.58), (1.22, 0.58), mark: (end: ">", size: 0.08), stroke: 0.65pt + col-primary)
      line((0.78, 0.82), (1.18, 0.82), mark: (end: ">", size: 0.08), stroke: 0.65pt + col-primary)

      // Profilo di velocità separato con inversione (a valle)
      line((3.3, 0.28), (3.75, 1.05), mark: (end: ">", size: 0.1), stroke: 0.7pt + col-gray)
      bezier((3.3, 0.28), (3.95, 0.95), (3.15, 0.55), (3.65, 0.75), stroke: 0.9pt + col-accent)
      // Frecce: reflusso vicino a parete, diretto in alto
      line((3.42, 0.48), (3.24, 0.38), mark: (end: ">", size: 0.08), stroke: 0.65pt + col-accent)
      line((3.58, 0.76), (3.85, 0.9), mark: (end: ">", size: 0.08), stroke: 0.65pt + col-primary)
      content((4.1, 0.65), text(size: 7.5pt, fill: col-primary)[$u_1$])
    })
  ],

  // 4. Re ~ 40 - 50
  [
    *4. Regime $"Re" tilde.op 40 div 50$ (instabilità della scia):* \
    la simmetria dei vortici a valle si rompe e la scia diventa instazionaria, dando origine al distacco periodico e alternato di vortici controrotanti (*scia di von Kármán*).
  ],
  [
    #cetz.canvas(length: 0.78cm, {
      import cetz.draw: *
      content((1.1, 1.15), text(size: 8pt, weight: "bold")[$"Re" tilde.op 40 div 50$])
      circle((1.2, 0), radius: 0.6, fill: luma(235), stroke: 1.1pt + black)

      // Scia oscillante e vortici alternati di von Kármán
      bezier((1.2, 0.6), (3.0, 0.55), (1.8, 0.75), (2.4, 0.85), stroke: 0.85pt + col-primary)
      bezier((1.2, -0.6), (3.8, -0.55), (2.0, -0.75), (3.0, -0.85), stroke: 0.85pt + col-primary)

      // Vortice 1 (superiore)
      arc((2.4, 0.25), start: 20deg, stop: 310deg, radius: 0.32, mark: (end: ">", size: 0.1), stroke: 0.9pt + col-accent)
      // Vortice 2 (inferiore)
      arc((3.4, -0.25), start: 340deg, stop: 50deg, radius: 0.35, mark: (end: ">", size: 0.1), stroke: 0.9pt + col-primary)
      // Vortice 3 (superiore a valle)
      arc((4.45, 0.25), start: 20deg, stop: 310deg, radius: 0.38, mark: (end: ">", size: 0.1), stroke: 0.9pt + col-accent)
    })
  ]
)

== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#eqbox(title: [Equazione del trasporto della vorticità di Helmholtz])[
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.#import "/template.typ":
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
)
= Vorticità e campi irrotazionali

== Il vettore vorticità

Il tensore gradiente di velocità $nabla arrow(u)$ può essere sempre scomposto nella somma di una parte simmetrica $bold(D)$ (tensore velocità di deformazione, $D_(i j) = D_(j i)$) e di una parte antisimmetrica $bold(Omega)$ (tensore di vorticità, $Omega_(i j) = -Omega_(j i)$):

$ nabla arrow(u) = bold(D) + bold(Omega) $

Poiché $bold(Omega)$ è un tensore del secondo ordine antisimmetrico in 3D, ha elementi diagonali nulli e solo 3 componenti indipendenti. È quindi conveniente descrivere la rotazione locale del fluido mediante il *vettore vorticità* $arrow(omega)$, definito come il rotore del campo di velocità:

$ arrow(omega) = nabla times arrow(u) = mat(delim: "|", hat(i), hat(j), hat(k); partial / (partial x_1), partial / (partial x_2), partial / (partial x_3); u_1, u_2, u_3) = vec((partial u_3) / (partial x_2) - (partial u_2) / (partial x_3), (partial u_1) / (partial x_3) - (partial u_3) / (partial x_1), (partial u_2) / (partial x_1) - (partial u_1) / (partial x_2)) $

le cui componenti coincidono (a meno di un fattore $1/2$) con i termini indipendenti di $bold(Omega)$.

- *Significato fisico:* le componenti $(omega_1, omega_2, omega_3)$ misurano la velocità di rotazione locale delle particelle fluide attorno ai tre assi coordinati (rilevabile idealmente inserendo una piccola "crocetta" solida nel fluido: se il campo ha vorticità non nulla, le forze sbilanciate sui bracci la portano a ruotare). Questi moti rotazionali locali sottraggono parte dell'energia cinetica al trasporto medio di massa.
- *Vorticità e linee di corrente:* un campo con vorticità non nulla non presenta necessariamente linee di corrente curve o chiuse (vortici su grande scala). Ad esempio, nel moto laminare tra due piastre piane o in un condotto, le linee di corrente sono rettilinee e parallele, ma il gradiente trasversale di velocità (es. $(partial u_1) / (partial x_2) eq.not 0$) genera una vorticità $omega_3 eq.not 0$.

== Campi di moto irrotazionali (a potenziale)

Si considera un fluido incomprimibile a densità costante ($rho = "cost"$, per cui $nabla dot arrow(u) = 0$).

Si assume che la vorticità del campo fluido sia ovunque nulla:
$ arrow(omega) = nabla times arrow(u) = arrow(0) $

Il campo di moto è dunque *irrotazionale* e gode della proprietà (in domini semplicemente connessi) per cui la velocità è esprimibile come gradiente di un potenziale:

$ arrow(u) = nabla Phi(arrow(x), t) $

dove $Phi$ è una funzione scalare nello spazio e nel tempo detta *potenziale di velocità*. Sostituendo $arrow(u) = nabla Phi$ nel vincolo di incomprimibilità $nabla dot arrow(u) = 0$, si ottiene che il potenziale soddisfa l'*equazione di Laplace*:

$ nabla dot (nabla Phi) = Delta Phi = 0 $

Vediamo come si semplifica l'equazione di Navier-Stokes per un fluido incomprimibile:

$ (partial arrow(u)) / (partial t) + (arrow(u) dot nabla) arrow(u) = - 1 / rho nabla p + arrow(g) + nu Delta arrow(u) $

Assumo che la forza di volume gravitazionale (per $arrow(g)$ uniforme) sia conservativa:

$ arrow(g) = - nabla chi quad ; quad chi = - arrow(g) dot arrow(x) $

dove $chi$ è il potenziale gravitazionale.

- *Termine convettivo (non-lineare):* per l'identità vettoriale di Lamb-Gromeka, indicando con $u = |arrow(u)|$ il modulo della velocità, si può esprimere come
  $ (arrow(u) dot nabla) arrow(u) = nabla (1 / 2 u^2) + arrow(omega) times arrow(u) $
  Poiché il campo è irrotazionale ($arrow(omega) = arrow(0)$), il termine si riduce a $(arrow(u) dot nabla) arrow(u) = nabla (u^2 / 2)$.

- *Termine viscoso:* sostituendo il potenziale di velocità e sfruttando la linearità degli operatori differenziali (che commutano):
  $
    nu Delta arrow(u) &= nu Delta (nabla Phi) = nu nabla (Delta Phi) \
    "Ma" quad Delta Phi &= nabla dot nabla Phi = nabla dot arrow(u) = 0
  $
  $arrow.r$ Il termine viscoso è identicamente nullo ($nu Delta arrow(u) = arrow(0)$) a causa dell'incomprimibilità ($rho = "cost"$), *senza bisogno di ipotizzare che il fluido sia ideale ($nu = 0$)*!

Sostituendo queste semplificazioni nell'equazione di Navier-Stokes e raccogliendo i gradienti (sfruttando $rho = "cost"$), si ottiene:

$ (partial arrow(u)) / (partial t) + nabla (1 / 2 u^2 + p / rho + chi) = arrow(0) $

- *Caso stazionario:* assumendo $(partial arrow(u)) / (partial t) = arrow(0)$, l'equazione di Navier-Stokes si riduce a
  $
    (arrow(u) dot nabla) arrow(u) &= - 1 / rho nabla p + arrow(g) + cancel(nu Delta arrow(u)) \
    nabla (1 / 2 u^2) &= - 1 / rho nabla p - nabla chi
  $
  Moltiplicando per $rho = "cost"$, si ottiene il *teorema di Bernoulli generalizzato*:
  $ nabla (underbrace(1 / 2 rho u^2 + p + rho chi, H)) = arrow(0) ==> H = "cost in tutto il campo!" $

A differenza del teorema di Bernoulli classico per flussi rotazionali (in cui il carico totale $H$ è costante solo lungo una singola linea di corrente), nei campi irrotazionali stazionari $H$ ha lo stesso valore in ogni punto del dominio fluido. Inoltre, poiché la cinematica è governata dall'equazione lineare $Delta Phi = 0$, il problema è completamente linearizzato e le soluzioni possono essere costruite per sovrapposizione di soluzioni elementari (ad esempio tramite analisi complessa e trasformazioni conformi).

== Flussi esterni, Paradosso di D'Alembert e regimi di Reynolds

=== Soluzione a potenziale attorno a un cilindro o sfera e Paradosso di D'Alembert

Consideriamo il campo di moto irrotazionale stazionario attorno a un cilindro circolare indefinito (o a una sfera), trascurando le variazioni di quota ($chi$ trascurabile), per cui vale ovunque:

$ 1 / 2 rho u^2 + p = "cost" $

- *Simmetria e distribuzione di pressione:* la soluzione a potenziale fornisce un andamento delle linee di corrente perfettamente simmetrico sia tra parte superiore e inferiore, sia tra monte e valle. Percorrendo la superficie del corpo al variare dell'angolo polare $theta in [0, pi]$ (con $theta = 0$ punto frontale a monte e $theta = pi$ punto posteriore a valle):
  - In $theta = 0$ (e $theta = pi$) si hanno i *punti di arresto* (o di ristagno): la velocità si annulla ($u = u_"min" = 0$) e per Bernoulli la pressione raggiunge il valore massimo ($p = p_"max"$).
  - Procedendo da $theta = 0$ verso i fianchi del corpo ($theta = pi / 2$), le linee di corrente si addensano, il fluido accelera fino a $u = u_"max"$ e la pressione scende al valore minimo $p = p_"min"$.
  - Nella metà a valle ($theta in [pi / 2, pi]$), per la simmetria del campo a potenziale, il fluido decelera nuovamente senza staccarsi dalla parete, realizzando un *recupero completo di pressione* fino a ritrovare $p = p_"max"$ in $theta = pi$.

- *Paradosso di D'Alembert:* calcolando la forza risultante esercitata dal fluido sul corpo tramite l'integrale delle pressioni (con $hat(n)$ normale uscente dalla superficie $S$),
  $ arrow(F) = - integral_S p hat(n) dif S = arrow(0) $
  si ottiene una forza identicamente nulla a causa della perfetta simmetria delle pressioni tra monte e valle. Più in generale, il *paradosso di D'Alembert* afferma che in un campo di moto stazionario, incomprimibile e irrotazionale attorno a un corpo immerso di forma qualsiasi (anche un profilo alare non simmetrico), la componente della forza nella direzione della corrente indisturbata (*resistenza aerodinamica*) è sempre identicamente nulla, mentre può essere non nulla la componente trasversale (*portanza*).

Infine, poiché nei campi a potenziale la vorticità è nulla ($arrow(omega) = arrow(0)$) e il problema è lineare, non può mai innescarsi la transizione alla turbolenza.

=== Evoluzione reale del campo di moto attorno a una sfera/cilindro al variare di $"Re"$

Nei fluidi viscosi reali, la condizione di aderenza a parete genera vorticità nello strato limite e il campo di moto effettivo attorno a una sfera (o cilindro) cambia radicalmente al variare del numero di Reynolds $"Re" = (u_infinity D) / nu$:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Campo di moto per $"Re" << 1$ (regime di Stokes):*
    le forze viscose dominano su quelle inerziali. Le linee di corrente seguono il profilo del corpo senza distacco e presentano un andamento pressoché simmetrico tra monte e valle (ma il campo è fortemente rotazionale e viscoso, non a potenziale).
  ],
  [
    #image("immagini/dd564104-7c88-49b3-8aa7-fc7d01e14c7c-03_325_1555_188_202.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Regime $"Re" tilde.op 1 div 20$ (ricircolo stazionario):*
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso (da $p_"min"$ verso la zona di recupero a valle) e non riesce a rimanere attaccato alla parete: si formano due vortici stazionari e simmetrici di ricircolo in scia.
  ],
  [
    #image("immagini/dd564104-7c88-49b3-8aa7-fc7d01e14c7c-03_342_1090_650_775.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Distacco dello strato limite:*
    aumentando ulteriormente $"Re"$, la zona di separazione e ricircolo a valle si allunga; il distacco della vena fluida impedisce il recupero di pressione a valle, generando una forte resistenza di forma.
  ],
  [
    #image("immagini/dd564104-7c88-49b3-8aa7-fc7d01e14c7c-03_838_1067_1086_285.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Regime $"Re" tilde.op 40 div 50$ (instabilità della scia):*
    la simmetria dei vortici a valle si rompe e la scia diventa instazionaria, dando origine al distacco periodico e alternato di vortici (scia di von Kármán).
  ],
  [
    #image("immagini/dd564104-7c88-49b3-8aa7-fc7d01e14c7c-03_633_486_1701_1482.jpg", width: 70%)
    #image("immagini/dd564104-7c88-49b3-8aa7-fc7d01e14c7c-03_414_1761_2259_68.jpg", width: 70%)
  ]
)
#v(1em)

== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

$ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $

Osserviamo le caratteristiche principali di questa equazione:
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $(D arrow(omega)) / (D t)$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.