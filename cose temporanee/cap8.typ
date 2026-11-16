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
    #canvas(length: 0.76cm, {
      import draw: *
      content((2.9, 1.38), text(size: 7.5pt, weight: "bold")[$"Re" << 1$])

      // Profilo velocità uniforme a monte
      line((0.2, -0.8), (0.2, 0.8), stroke: 0.7pt + col-gray)
      for y in (-0.7, -0.35, 0, 0.35, 0.7) {
        line((0.2, y), (0.85, y), mark: (end: "stealth", size: 0.11, fill: col-primary), stroke: 0.75pt + col-primary)
      }
      content((0.52, 1.05), text(size: 7.5pt, fill: col-primary)[$u_infinity$])

      // Sfera/cilindro con quota diametro D
      circle((2.9, 0), radius: 0.62, fill: luma(238), stroke: 1.1pt + black)
      line((2.48, -0.42), (3.32, 0.42), mark: (start: "stealth", end: "stealth", size: 0.1, fill: black), stroke: 0.7pt + black)
      content((3.02, -0.18), text(size: 7.5pt)[$D$])

      // Linee di corrente simmetriche
      for s in (-1, 1) {
        bezier((1.1, s * 0.24), (2.9, s * 0.78), (2.0, s * 0.24), (2.3, s * 0.78), stroke: 0.85pt + col-primary)
        bezier((2.9, s * 0.78), (4.7, s * 0.24), (3.5, s * 0.78), (3.8, s * 0.24), stroke: 0.85pt + col-primary)
        bezier((1.1, s * 0.62), (2.9, s * 1.08), (2.0, s * 0.62), (2.3, s * 1.08), stroke: 0.85pt + col-primary)
        bezier((2.9, s * 1.08), (4.7, s * 0.62), (3.5, s * 1.08), (3.8, s * 0.62), stroke: 0.85pt + col-primary)
      }
    })
  ],

  // 2. Re ~ 1 - 20
  [
    *2. Regime $"Re" tilde.op 1 div 20$ (ricircolo stazionario):* \
    l'inerzia del fluido non è più trascurabile. A valle del punto di minima pressione ($p_"min"$) il fluido incontra un gradiente di pressione avverso (da $p_"min"$ verso la zona di recupero a valle) e non riesce a rimanere attaccato alla parete: si formano due vortici stazionari e simmetrici di ricircolo in scia.
  ],
  [
    canvas(length: 0.76cm, {
      import draw: *
      // Assi cartesiani x1, x2
      line((0.1, 0), (5.1, 0), mark: (end: "stealth", size: 0.12, fill: col-gray), stroke: (paint: col-gray, thickness: 0.6pt, dash: "dashed"))
      line((0.35, -0.85), (0.35, 1.05), mark: (end: "stealth", size: 0.12, fill: black), stroke: 0.75pt + black)
      content((5.3, -0.18), text(size: 7.5pt)[$x_1$])
      content((0.12, 1.0), text(size: 7.5pt)[$x_2$])

      // Corpo
      circle((2.1, 0), radius: 0.62, fill: luma(238), stroke: 1.1pt + black)

      // Coordinate curvilinee xi_1 (tangente) e xi_2 (normale) sulla spalla superiore sinistra
      let px = 2.1 - 0.62 * 0.707
      let py = 0.62 * 0.707
      line((px, py), (px - 0.38, py + 0.38), mark: (end: "stealth", size: 0.1, fill: col-green), stroke: 0.75pt + col-green)
      line((px, py), (px + 0.35, py + 0.35), mark: (end: "stealth", size: 0.1, fill: col-green), stroke: 0.75pt + col-green)
      content((px - 0.52, py + 0.45), text(size: 7pt, fill: col-green)[$xi_2$])
      content((px + 0.25, py + 0.52), text(size: 7pt, fill: col-green)[$xi_1$])

      // Punti p_max e p_min
      circle((1.48, 0), radius: 0.065, fill: col-accent, stroke: none)
      circle((2.1, 0.62), radius: 0.065, fill: col-accent, stroke: none)
      content((1.05, -0.22), text(size: 7.5pt, fill: col-accent)[$p_"max"$])
      content((2.58, 1.02), text(size: 7.5pt, fill: col-accent)[$p_"min"$])

      // Linee di corrente esterne e due vortici chiusi simmetrici in scia
      for s in (-1, 1) {
        bezier((0.65, s * 0.32), (2.1, s * 0.78), (1.4, s * 0.32), (1.7, s * 0.78), stroke: 0.85pt + col-primary)
        bezier((2.1, s * 0.78), (4.8, s * 0.48), (2.9, s * 0.82), (3.8, s * 0.55), stroke: 0.85pt + col-primary)

        // Vortice chiuso di ricircolo (superiore e inferiore non sovrapposti)
        bezier((2.68, s * 0.38), (3.75, s * 0.12), (3.15, s * 0.52), (3.75, s * 0.32), stroke: 0.8pt + col-accent)
        bezier((3.75, s * 0.12), (2.72, s * 0.14), (3.45, s * 0.04), (2.95, s * 0.06), mark: (end: "stealth", size: 0.09, fill: col-accent), stroke: 0.8pt + col-accent)
      }
    })
  ]

  // 3. Distacco dello strato limite
  [
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente è favorevole ($partial p slash partial xi_1 < 0$) e accelera il fluido; a valle di $p_"min"$ il gradiente diventa avverso ($partial p slash partial xi_1 > 0$), frena gli strati vicini a parete fino all'inversione del profilo di velocità $u_1(xi_2)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #cetz.canvas(length: 0.76cm, {
      import cetz.draw: *

      // Parete curva del cilindro (zoom sulla calotta superiore) disegnata con bezier esplicita
      bezier((0.4, -0.35), (2.5, 0.35), (1.1, 0.15), (1.8, 0.35), stroke: 1.4pt + black)
      bezier((2.5, 0.35), (4.6, -0.35), (3.2, 0.35), (3.9, 0.15), stroke: 1.4pt + black)

      // Punto p_min (u_max) al colmo (x = 2.5, y = 0.35)
      circle((2.5, 0.35), radius: 0.07, fill: col-accent, stroke: none)
      content((2.5, 0.02), text(size: 7.5pt, fill: col-accent, weight: "bold")[$p_"min" (u_"max")$])

      // --- 1) Profilo a monte (x = 1.15, y = 0.08): attaccato e pieno ---
      line((1.15, 0.08), (0.75, 1.08), mark: (end: "stealth", size: 0.1, fill: col-gray), stroke: 0.75pt + col-gray)
      content((0.55, 1.08), text(size: 7pt)[$xi_2$])
      bezier((1.15, 0.08), (1.28, 0.95), (1.35, 0.42), (1.32, 0.72), stroke: 0.95pt + col-primary)
      line((1.03, 0.38), (1.29, 0.48), mark: (end: "stealth", size: 0.08, fill: col-primary), stroke: 0.65pt + col-primary)
      line((0.91, 0.68), (1.30, 0.83), mark: (end: "stealth", size: 0.08, fill: col-primary), stroke: 0.65pt + col-primary)

      // --- 2) Profilo a valle (x = 3.85, y = 0.08): separato con reflusso a parete ---
      line((3.85, 0.08), (4.25, 1.08), mark: (end: "stealth", size: 0.1, fill: col-gray), stroke: 0.75pt + col-gray)
      content((4.48, 1.08), text(size: 7pt)[$xi_2$])
      bezier((3.85, 0.08), (4.58, 0.92), (3.62, 0.38), (4.25, 0.68), stroke: 0.95pt + col-accent)
      // Freccia di reflusso (indietro vicino a parete)
      line((3.95, 0.33), (3.76, 0.25), mark: (end: "stealth", size: 0.08, fill: col-accent), stroke: 0.65pt + col-accent)
      // Freccia diretta (in avanti lontano da parete)
      line((4.12, 0.75), (4.48, 0.89), mark: (end: "stealth", size: 0.08, fill: col-primary), stroke: 0.65pt + col-primary)
      content((4.72, 0.72), text(size: 7.5pt, fill: col-primary)[$u_1$])

      // Etichette gradiente di pressione in alto, ben distanziate dai profili
      content((1.45, 1.42), text(size: 7.5pt, fill: col-green)[$display((partial p) / (partial xi_1)) < 0$])
      content((3.45, 1.42), text(size: 7.5pt, fill: col-accent)[$display((partial p) / (partial xi_1)) > 0$])
    })
  ],

  // 4. Re ~ 40 - 50
  [
    *4. Regime $"Re" tilde.op 40 div 50$ (instabilità della scia):* \
    la simmetria dei vortici a valle si rompe e la scia diventa instazionaria, dando origine al distacco periodico e alternato di vortici controrotanti (*scia di von Kármán*).
  ],
  [
    #cetz.canvas(length: 0.76cm, {
      import cetz.draw: *
      content((1.05, 1.12), text(size: 7.5pt, weight: "bold")[$"Re" tilde.op 40 div 50$])
      circle((1.05, 0), radius: 0.58, fill: luma(238), stroke: 1.1pt + black)

      // Linee di corrente esterne ondulanti
      bezier((1.05, 0.58), (3.2, 0.58), (1.8, 0.85), (2.5, 0.85), stroke: 0.85pt + col-primary)
      bezier((3.2, 0.58), (5.0, 0.68), (3.9, 0.35), (4.4, 0.85), stroke: 0.85pt + col-primary)
      bezier((1.05, -0.58), (3.5, -0.58), (1.9, -0.85), (2.7, -0.85), stroke: 0.85pt + col-primary)
      bezier((3.5, -0.58), (5.0, -0.48), (4.1, -0.35), (4.6, -0.75), stroke: 0.85pt + col-primary)

      // Tre vortici alternati completi (usando anchor: "origin" per centrare gli archi!)
      arc((2.25, 0.22), anchor: "origin", start: 30deg, stop: 325deg, radius: 0.32, mark: (end: "stealth", size: 0.1, fill: col-accent), stroke: 0.9pt + col-accent)
      arc((3.35, -0.22), anchor: "origin", start: -30deg, stop: -325deg, radius: 0.34, mark: (end: "stealth", size: 0.1, fill: col-primary), stroke: 0.9pt + col-primary)
      arc((4.45, 0.22), anchor: "origin", start: 30deg, stop: 325deg, radius: 0.36, mark: (end: "stealth", size: 0.1, fill: col-accent), stroke: 0.9pt + col-accent)
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
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.