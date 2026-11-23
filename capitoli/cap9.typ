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

#import "/template.typ": *

#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set figure(supplement: [Figura], gap: 0.8em)

#let nota-esame(body) = block(
  width: 100%,
  inset: 0.8em,
  radius: 3pt,
  fill: luma(245),
  stroke: (left: 2.5pt + luma(245)),
  [*Nota:* #body],
)

== Richiamo: transizione nei flussi interni ed esperimento di Reynolds

#grid(
  columns: 2,
  gutter: 1em,
  [Nel moto stazionario in condotta cilindrica di diametro $D$ (soluzione analitica esatta di Poiseuille dell'equazione di Navier-Stokes), il campo di velocità possiede un'unica componente assiale $u_x (r)$ (con $u_r = u_theta = 0$), pressione lineare lungo $x$ e sforzo tangenziale $tau_(r x)(r)$. Il carattere *laminare* della soluzione si riconosce matematicamente dalla stazionarietà e dall'annullamento identico delle componenti trasversali.],
  [#canvas(length: 1cm, {
  import draw: *

  line((-0.3, 0), (8.3, 0), stroke: (dash: "dash-dotted", thickness: 0.7pt, paint: gray.darken(25%)))

  line((4.6, -1.58), (4.6, 1.58), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))
  line((6.0, -1.58), (6.0, 1.58), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))

  line((3.2, 0.9), (4.425, 0.9), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, 0.6), (5.3, 0.6), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, 0.3), (5.825, 0.3), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, 0), (6.0, 0), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, -0.3), (5.825, -0.3), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, -0.6), (5.3, -0.6), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))
  line((3.2, -0.9), (4.425, -0.9), mark: (end: "stealth"), stroke: (thickness: 0.8pt, paint: c-vel))

  bezier((3.2, -1.2), (3.2, 1.2), (6.9333, -0.4), (6.9333, 0.4), stroke: (thickness: 1.1pt, paint: rgb("#8a2b16")))

  line((3.2, 0.9), (1.55, 0.9), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, 0.6), (2.1, 0.6), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, 0.3), (2.65, 0.3), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, -0.3), (2.65, -0.3), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, -0.6), (2.1, -0.6), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, -0.9), (1.55, -0.9), mark: (end: "stealth"), stroke: (thickness: 0.75pt, paint: rgb("#2d6a36")))
  line((3.2, 1.2), (1.0, 1.2), mark: (end: "stealth"), stroke: (thickness: 0.85pt, paint: rgb("#2d6a36")))
  line((3.2, -1.2), (1.0, -1.2), mark: (end: "stealth"), stroke: (thickness: 0.85pt, paint: rgb("#2d6a36")))

  line((3.2, 0), (1.0, 1.2), stroke: (thickness: 1.05pt, paint: rgb("#2d6a36")))
  line((3.2, 0), (1.0, -1.2), stroke: (thickness: 1.05pt, paint: rgb("#2d6a36")))

  line((0.25, 1.2), (0.03, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((0.6, 1.2), (0.38, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((0.95, 1.2), (0.73, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((1.3, 1.2), (1.08, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((1.65, 1.2), (1.43, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.0, 1.2), (1.78, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.35, 1.2), (2.13, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.7, 1.2), (2.48, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.05, 1.2), (2.83, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.4, 1.2), (3.18, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.75, 1.2), (3.53, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.1, 1.2), (3.88, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.45, 1.2), (4.23, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.8, 1.2), (4.58, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.15, 1.2), (4.93, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.5, 1.2), (5.28, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.85, 1.2), (5.63, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.2, 1.2), (5.98, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.55, 1.2), (6.33, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.9, 1.2), (6.68, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.25, 1.2), (7.03, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.6, 1.2), (7.38, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.95, 1.2), (7.73, 1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))

  line((0.25, -1.2), (0.03, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((0.6, -1.2), (0.38, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((0.95, -1.2), (0.73, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((1.3, -1.2), (1.08, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((1.65, -1.2), (1.43, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.0, -1.2), (1.78, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.35, -1.2), (2.13, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((2.7, -1.2), (2.48, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.05, -1.2), (2.83, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.4, -1.2), (3.18, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((3.75, -1.2), (3.53, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.1, -1.2), (3.88, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.45, -1.2), (4.23, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((4.8, -1.2), (4.58, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.15, -1.2), (4.93, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.5, -1.2), (5.28, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((5.85, -1.2), (5.63, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.2, -1.2), (5.98, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.55, -1.2), (6.33, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((6.9, -1.2), (6.68, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.25, -1.2), (7.03, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.6, -1.2), (7.38, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))
  line((7.95, -1.2), (7.73, -1.42), stroke: (thickness: 0.55pt, paint: gray.darken(30%)))

  line((0.0, 1.2), (8.0, 1.2), stroke: 1.1pt)
  line((0.0, -1.2), (8.0, -1.2), stroke: 1.1pt)

  line((3.2, -1.6), (3.2, 1.9), mark: (end: "stealth"), stroke: 0.9pt)

  line((6.6, 0.5), (7.6, 0.5), mark: (end: "stealth"), stroke: (thickness: 0.9pt, paint: rgb("#8a2b16")))

  line((2.28, -0.20), (3.16, -0.03), mark: (end: "stealth"), stroke: (thickness: 0.5pt, paint: rgb("#2d6a36")))

  content((3.2, 1.98), text(size: 8.5pt)[$r$], anchor: "south")
  content((8.4, 0), text(size: 8.5pt)[$z$], anchor: "west")

  content((4.6, -1.68), text(size: 8pt, fill: rgb("#8a2b16"))[$u_d = u_0 / 2$], anchor: "north")
  content((6.0, -1.68), text(size: 8pt, fill: rgb("#8a2b16"))[$u_0$], anchor: "north")

  content((1.0, 1.62), text(size: 8pt, fill: rgb("#2d6a36"))[$tau_("rz")(R) = (G R)/2$], anchor: "south")
  content((2.25, -0.22), text(size: 8pt, fill: rgb("#2d6a36"))[$tau_("rz") = 0$], anchor: "east")
  content((7.1, 0.6), text(size: 8pt, fill: rgb("#8a2b16"))[moto], anchor: "south")
})],
)
Al variare del numero di Reynolds $"Re" = U D slash nu$ (con $U$ velocità media e $nu$ viscosità cinematica), per valori moderati ($"Re" approx 500 div 1500$) il profilo parabolico mantiene la propria forma e il moto assorbe le perturbazioni. Superata una soglia critica, il flusso diventa instabile: compaiono in modo intermittente volumi turbolenti localizzati (*patch*), trasportati a valle, in cui il profilo laminare è distrutto da fluttuazioni temporali e trasversali. Al crescere di $"Re"$, tali regioni si estendono rapidamente fino a rendere turbolento l'intero flusso in condotta.

Questa distinzione fu evidenziata dallo storico *esperimento di Reynolds*: iniettando un filo di colorante al centro della condotta, esso avanza in filamenti netti e ordinati in regime laminare, mentre in regime turbolento si disperde subito fino a occupare tutta la sezione. Nei flussi in condotta esiste quindi un numero di Reynolds critico ($"Re"_c approx 2250$) oltre il quale il moto transita bruscamente al regime turbolento: questo comportamento *dicotomico* (o interamente laminare o interamente turbolento) caratterizza i flussi interni, ma non si ritrova nei flussi esterni.

Passando ai flussi esterni attorno a un corpo circolare (sfera o cilindro indefinito) investito da una corrente uniforme stazionaria $U_infinity$, l'analisi non riguarda più il coefficiente di perdite di carico (che in condotta circolare laminare vale $f = 64 slash "Re"$), bensì le forze scambiate tra fluido e corpo e il coefficiente di resistenza aerodinamica.

== Flussi esterni, Paradosso di D'Alembert e regimi di Reynolds

=== Soluzione a potenziale attorno a un cilindro o sfera e Paradosso di D'Alembert

Consideriamo il campo di moto irrotazionale stazionario attorno a un cilindro circolare indefinito (o a una sfera), trascurando le variazioni di quota ($chi$ trascurabile), per cui vale ovunque $1 slash 2 thin rho u^2 + p = "cost"$:

  #grid(
    columns: (1.2fr, 0.82fr),
    column-gutter: 0.9em,
    align: (left + horizon, center + horizon),
    [*Simmetria e distribuzione di pressione:* la soluzione a potenziale fornisce linee di corrente simmetriche sia tra parte superiore e inferiore, sia tra monte e valle. Lungo la superficie del corpo, al variare dell'angolo polare $theta in [0, pi]$ (con $theta = 0$ a monte e $theta = pi$ a valle):
        - In $theta = 0$ e $theta = pi$ si hanno i *punti di arresto* (o di ristagno): $u = u_"min" = 0$ e, per Bernoulli, la pressione è massima ($p = p_"max"$).
        - Verso i fianchi ($theta = pi slash 2$), le linee di corrente si addensano: il fluido accelera fino a $u = u_"max"$ e la pressione scende al minimo $p = p_"min"$.
        - A valle ($theta in [pi slash 2, pi]$), per simmetria il fluido decelera senza separarsi dalla parete, realizzando un *recupero completo di pressione* fino a $p = p_"max"$ in $theta = pi$ (curva continua nel grafico a lato; la tratteggiata mostra invece la perdita di recupero $Delta p$ nei flussi reali con distacco)..
    ],
    [
      #include "../figs/cap9-fig01.typ"
    ],
  )


#nota[
  *Paradosso di D'Alembert* \
  Calcolando la forza risultante esercitata dal fluido sul corpo tramite l'integrale delle pressioni (con $hat(n)$ normale uscente dalla superficie $S$),
  $ arrow(F) = - integral_S p hat(n) dif S = arrow(0) $
  si ottiene una forza identicamente nulla a causa della perfetta simmetria delle pressioni tra monte e valle. Più in generale, il *paradosso di D'Alembert* afferma che in un campo di moto stazionario, incomprimibile e irrotazionale attorno a un corpo immerso di forma qualsiasi (anche un profilo alare non simmetrico), la componente della forza nella direzione della corrente indisturbata (*resistenza aerodinamica*) è sempre identicamente nulla, mentre può essere non nulla la componente trasversale (*portanza*).
]

Infine, poiché nei campi a potenziale la vorticità è nulla ($arrow(omega) = arrow(0)$) e il problema è lineare, non può mai innescarsi la transizione alla turbolenza.

=== Evoluzione reale del campo di moto attorno a una sfera/cilindro al variare di $"Re"$

Nei fluidi viscosi reali, l'aderenza a parete genera vorticità nello strato limite e il campo di moto attorno a una sfera (o a un cilindro) varia radicalmente con il numero di Reynolds $"Re" = U_infinity D slash nu$. Esperimenti in acqua (con microbollicine d'idrogeno traccianti) e simulazioni numeriche mostrano la seguente evoluzione:

#grid(
  columns: (1.15fr, 0.85fr),
  row-gutter: 1.1em,
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *1. Campo di moto per $"Re" << 1$ (e $"Re" tilde.op 1$, regime viscoso):* \
    dominano le forze viscose su quelle inerziali. Le linee di corrente seguono il corpo senza distacco e sono pressoché simmetriche tra monte e valle, ricordando visivamente il campo a potenziale; fisicamente però i due moti sono opposti, poiché qui la viscosità è primaria e il campo è fortemente rotazionale.
  ],
  [
    #include "../figs/cap9-fig02.typ"
  ],
  [
    *2. Regime $"Re" tilde.op 2 div 40$ (ricircolo stazionario):* \
    l'inerzia non è più trascurabile. A valle di $p_"min"$ il gradiente di pressione avverso provoca il distacco dalla parete, formando in scia due bolle di ricircolazione *controrotanti* (superiore *oraria*, inferiore *antioraria*). La simmetria monte-valle si rompe, ma fino a $"Re" approx 40$ il moto rimane *stazionario* e *laminare*; al crescere di $"Re"$ le bolle si allungano fino a raggiungere e superare dimensioni dell'ordine del diametro $D$.
  ],
  [
    #include "../figs/cap9-fig03.typ"
  ],
  [
    *3. Meccanismo di distacco dello strato limite:* \
    a monte di $p_"min"$ il gradiente favorevole ($partial p slash partial s < 0$) accelera il fluido; a valle diventa avverso ($partial p slash partial s > 0$), frena gli strati a parete fino all'inversione del profilo $u(n)$ e causa il distacco della vena fluida, impedendo il recupero di pressione e generando una forte *resistenza di forma*.
  ],
  [
    #include "../figs/cap9-fig04.typ"
  ],
  block(breakable: false)[
    *4. Regime $"Re" > 40$ ($"Re" tilde.op 40 div 50$, instabilità della scia):* \
    oltre $"Re" approx 40$, le bolle di ricircolo allungate diventano instabili e si staccano alternatamente a valle (*scia di von Kármán*). Pur con condizioni al contorno stazionarie, il campo di moto sviluppa autonomamente un'oscillazione periodica con una propria *frequenza caratteristica*: effetto diretto della *non linearità* del sistema (come una corda di violoncello mossa dall'archetto a $tilde.op 0.1$~Hz che vibra alla propria frequenza naturale di $440$~Hz).
  ],
  [
    #include "../figs/cap9-fig05.typ"
  ],
)

*5. Regime ad alto $"Re"$ (scia turbolenta):* crescendo ulteriormente $"Re"$, alla frequenza principale si affiancano molteplici frequenze; accanto ai vortici di grande scala (dell'ordine di $D$) si formano numerosi vortici più piccoli, frastagliati e caotici, fino a rendere la scia un *campo di moto turbolento*.

#nota-esame[
  - *Basso $"Re"$ vs campo a potenziale:* per $"Re" <= 1$ la somiglianza delle linee di corrente con il moto a potenziale è solo apparente; nel flusso reale la viscosità è determinante e il campo è rotazionale.
  - *Bolle di ricircolo ($"Re" tilde.op 2 div 40$):* le due bolle controrotanti rompono la simmetria monte-valle, ma il moto resta stazionario e laminare fino a $"Re" approx 40$.
  - *Transizione nei flussi esterni vs flussi interni:* diversamente dal moto in condotta (transizione dicotomica su tutta la sezione), attorno a un corpo la transizione avviene in modo *molto progressivo* con $"Re"$ e la turbolenza resta *confinata nella scia*, mentre la corrente esterna rimane regolare.
]
== Equazione di Helmholtz e legame con la turbolenza

Per comprendere il legame diretto tra vorticità e transizione alla turbolenza, si ricava l'equazione evolutiva della vorticità applicando l'operatore rotore ($nabla times$) a tutti i termini dell'equazione di Navier-Stokes incomprimibile. Si ottiene così l'*equazione di Helmholtz*:

#nota[
  *Equazione del trasporto della vorticità di Helmholtz* \
  $ (D arrow(omega)) / (D t) = (partial arrow(omega)) / (partial t) + (arrow(u) dot nabla) arrow(omega) = (arrow(omega) dot nabla) arrow(u) + nu Delta arrow(omega) $
]

#block(sticky: true)[Osserviamo le caratteristiche principali di questa equazione:]
- *Scomparsa del termine di pressione:* poiché il rotore del gradiente di qualsiasi funzione scalare è identicamente nullo ($nabla times (nabla p) = arrow(0)$), la pressione non compare nell'equazione dinamica della vorticità.
- *Derivata materiale $D arrow(omega) slash D t$:* al primo membro compare la variazione nel tempo della vorticità seguendo la particella fluida nel suo moto (trasporto lagrangiano).
- *Termine di stiramento e inclinazione vorticosa $(arrow(omega) dot nabla) arrow(u)$:* questo termine (assente nell'equazione della quantità di moto) descrive lo *stiramento degli assi vorticosi* (*vortex stretching*) operato dai gradienti di velocità. Esso produce l'intensificazione dei vortici lungo il loro asse ed è il meccanismo fondamentale che permette a un campo di moto di transitare dal regime laminare a quello turbolento.
- *Termine di diffusione viscosa $nu Delta arrow(omega)$:* analogamente alla quantità di moto, anche la vorticità diffonde nel fluido per effetto dell'agitazione molecolare (viscosità cinematica $nu$), in particolare propagandosi dalle pareti solide — dove la vorticità viene generata ed è massima — verso il cuore del campo di moto.


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

#block(sticky: true)[I vantaggi principali sono:]
- la riduzione del numero di variabili indipendenti del problema da $n$ a $n - r$;
- l'individuazione di parametri adimensionali $Pi_i$ dotati di preciso significato fisico;
- l'indipendenza della legge dalla scelta arbitraria delle unità di misura.

#nota-esame[
  Il teorema $Pi$ individua i gruppi adimensionali ma non fornisce alcuna informazione a priori sulla forma della relazione funzionale $f_2$: quest'ultima deve essere determinata e verificata mediante prove sperimentali o simulazioni.
]

== Esempio di Taylor: energia dell'esplosione atomica

Una celebre applicazione storica del teorema $Pi$ è dovuta a G. I. Taylor durante la Seconda Guerra Mondiale. A partire da una serie di fotografie dei primi test atomici statunitensi, corredate ciascuna da una scala geometrica e dall'istante temporale $t$ successivo alla detonazione, era possibile misurare il raggio della palla di fuoco $r_f (t)$ e stimare così l'energia rilasciata dalla bomba.

#block(breakable: false)[
  Taylor ipotizzò che il raggio $r_f$ dipendesse esclusivamente dall'energia $E$ liberata dall'esplosione, dalla densità indisturbata dell'aria ambiente $rho_0$ e dal tempo $t$:
  $
    r_f = f(E, rho_0, t)
  $
]
#block(breakable: false)[
  Le dimensioni fisiche delle grandezze coinvolte nelle $r = 3$ dimensioni fondamentali indipendenti ($M, L, T$) sono:
  $
    [r_f] = L, quad [E] = M L^2 T^(-2), quad [rho_0] = M L^(-3), quad [t] = T
  $
]
Avendo $n = 3$ parametri di controllo e $r = 3$ dimensioni indipendenti, risulta $n - r = 0$: il raggio adimensionalizzato $Pi_(r_f)$ non dipende da alcun parametro e deve essere una costante $R^*$:
$
  Pi_(r_f) = (r_f) / (E^alpha rho_0^beta t^gamma) = R^* = "cost."
$
#block(breakable: false)[
  Imponendo l'omogeneità dimensionale $r_f prop E^alpha rho_0^beta t^gamma$:
  $
    [L] = (M L^2 T^(-2))^alpha (M L^(-3))^beta T^gamma = M^(alpha + beta) L^(2 alpha - 3 beta) T^(gamma - 2 alpha)
  $
]
#pagebreak()
si ottiene il sistema lineare negli esponenti:
  #align(center)[$
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
  $]

La legge di espansione del raggio risulta quindi:
$
  r_f (t) = R^* ((E t^2) / rho_0)^(1/5) = R^* (E / rho_0)^(1/5) t^(2/5)
$
o equivalentemente, confrontando istanti successivi dalle fotografie:
$
  (r_f (t_2)) / ((E t_2^2) / rho_0)^(1/5) = dots.h = (r_f (t_1)) / ((E t_1^2) / rho_0)^(1/5) = R^*
$

#block(breakable: false)[
  Per verificare il modello e determinare $E$ dai dati sperimentali $(t_i, r_f (t_i))$, si applica il logaritmo alla relazione ottenuta:
  $
    ln r_f = ln [ R^* (E / rho_0)^(1/5) ] + 2/5 ln t
  $
]
In un diagramma logaritmico ($ln r_f$ in funzione di $ln t$), la relazione rappresenta una *retta* di pendenza nota pari a $2 slash 5$. L'allineamento dei punti fotografici lungo una retta di pendenza $2 slash 5$ conferma la validità delle ipotesi dimensionali; nota la densità dell'aria $rho_0$ (e la costante $R^*$ di ordine unitario), dall'intercetta della retta si ricava l'energia $E$ dell'esplosione.


== Coefficiente di resistenza aerodinamica

Applichiamo il teorema $Pi$ al flusso esterno stazionario attorno a un corpo circolare (sfera o cilindro indefinito) di raggio $a$ e diametro $D = 2 a$, investito da una corrente uniforme di velocità $U_infinity$ diretta lungo il versore $hat(i)$, in un fluido newtoniano incomprimibile di densità $rho$ e viscosità dinamica $mu$. La forza di resistenza aerodinamica (*drag*) è la proiezione della forza totale $arrow(F)$ esercitata dal fluido sul corpo nella direzione della corrente: $F_D = arrow(F) dot hat(i)$.

#block(breakable: false)[
  #grid(
    columns: (1.05fr, 0.95fr),
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
    ],
    [#canvas(length: 1cm, {
      import draw: *
      circle((3.8, 0.0), radius: 0.9, fill: luma(235), stroke: none)
      circle((3.8, 0.0), radius: 0.9, stroke: 1pt)
      line((3.8, 0.0), (3.8, 0.9), stroke: (paint: luma(80), thickness: 0.65pt, dash: "dashed"))
      content((3.7, 0.45), text(size: 9pt)[$a$], anchor: "east")
      line((0.0, 0.8), (2.0, 0.8), mark: (end: ">"), stroke: (paint: rgb("#991b1b"), thickness: 0.85pt))
      line((0.0, 0.0), (2.0, 0.0), mark: (end: ">"), stroke: (paint: rgb("#991b1b"), thickness: 0.85pt))
      line((0.0, -0.8), (2.0, -0.8), mark: (end: ">"), stroke: (paint: rgb("#991b1b"), thickness: 0.85pt))
      line((2.9, -1.35), (4.7, -1.35), stroke: (paint: luma(80), thickness: 0.65pt))
      line((2.9, -1.48), (2.9, -1.22), stroke: (paint: luma(80), thickness: 0.65pt))
      line((4.7, -1.48), (4.7, -1.22), stroke: (paint: luma(80), thickness: 0.65pt))
      line((7.0, 1.45), (7.0, 0.0), stroke: (paint: luma(120), thickness: 0.7pt, dash: "dashed"))
      line((3.8, 0.0), (7.0, 1.45), mark: (end: ">"), stroke: (paint: black, thickness: 1.1pt))
      line((3.8, 0.0), (7.0, 0.0), mark: (end: ">"), stroke: (paint: rgb("#1d4ed8"), thickness: 1.2pt))
      line((5.9, -1.35), (7.0, -1.35), mark: (end: ">"), stroke: (paint: luma(50), thickness: 0.85pt))
      content((0.0, 1.05), text(size: 10pt)[$U_infinity$], anchor: "south-west")
      content((0.0, -1.05), text(size: 10pt)[$rho, mu$], anchor: "north-west")
      content((3.8, -1.5), text(size: 10pt)[$D = 2 a$], anchor: "north")
      content((6.85, 1.55), text(size: 10pt)[$arrow(F)$], anchor: "south")
      content((5.4, -0.15), text(size: 10pt)[$F_D$], anchor: "north")
      content((6.45, -1.5), text(size: 10pt)[$hat(i)$], anchor: "north")
    })],
  )
]

Poiché $n - r = 4 - 3 = 1$, esiste un solo parametro adimensionale indipendente costruibile con $(U_infinity, rho, mu, D)$. Adimensionalizzando $mu$ tramite $(rho, U_infinity, D)$ si trova $[rho^(-1) U_infinity^(-1) D^(-1) mu] = 1$, il cui reciproco definisce il *numero di Reynolds* riferito al diametro (a cui si affianca quello riferito al raggio $a$, con $"Re"_D = 2 thin "Re"_a$):
$
  "Re"_D = (rho U_infinity D) / mu = (U_infinity D) / nu, quad "Re"_a = (rho U_infinity a) / mu = (U_infinity a) / nu, quad "con " nu = mu / rho
$

#block(sticky: true)[La forza di resistenza può essere adimensionalizzata secondo due normalizzazioni equivalenti:]
- rispetto alla *scala inerziale*, adottando per una sfera la convenzione usuale basata sull'area frontale $A_"ref" = pi D^2 slash 4 = pi a^2$ (un coefficiente definito direttamente con $D^2$ al posto di $A_"ref"$ o senza il fattore $1 slash 2$ assume un valore numerico diverso, per cui occorre verificare sempre la definizione adottata; per un cilindro indefinito si scala la forza per unità di apertura $F'_D$ con $1 slash 2 thin rho U_infinity^2 D$):
  $
    C_D = F_D / (1 slash 2 thin rho U_infinity^2 A_"ref") = C_D ("Re"_D)
  $
- rispetto alla *scala viscosa*, particolarmente espressiva ai bassi numeri di Reynolds; scegliendo il raggio $a$ come lunghezza di riferimento per la sfera:
  $
    K = F_D / (mu U_infinity a) = K("Re"_a), quad "con " C_D = (2 K) / (pi thin "Re"_a) = (4 K) / (pi thin "Re"_D)
  $

Si osservi il ruolo della densità $rho$: esprimendo la viscosità tramite quella cinematica $nu = mu slash rho$ ($[nu] = L^2 T^(-1)$), per descrivere il campo di velocità adimensionalizzato $arrow(u) slash U_infinity$ (oppure la forza divisa per la densità $F_D slash rho$, avente dimensioni $[F_D slash rho] = L^4 T^(-2)$ prive di $M$) intervengono soltanto $n = 3$ parametri di controllo $(U_infinity, D, nu)$ in $r = 2$ dimensioni indipendenti ($L, T$). Da $n - r = 1$ discende nuovamente il solo numero di Reynolds $"Re"_D = U_infinity D slash nu$: in un fluido newtoniano a densità costante, $rho$ non aggiunge parametri adimensionali indipendenti, ma entra in $F_D$ unicamente come fattore di scala dimensionale.

=== Limiti di validità: fluidi non newtoniani e numero di Mach

#block(sticky: true)[La dipendenza dal solo numero di Reynolds poggia su due ipotesi restrittive:]
- *Comportamento newtoniano:* gli sforzi di taglio dipendono linearmente dal gradiente di velocità (velocità di deformazione) attraverso un'unica costante di viscosità $mu$. Per fluidi non newtoniani intervengono ulteriori parametri reologici.
- *Densità costante (incomprimibilità):* assumere $rho = "cost."$ equivale a considerare infinita la velocità di propagazione delle onde acustiche ($c arrow.r infinity$). Se si ammette la comprimibilità (dilatazione delle particelle fluide), occorre introdurre tra i parametri di controllo anche la velocità del suono $c$ ($[c] = L slash T$):
  $
    F_D = f(U_infinity, rho, mu, D, c)
  $
  Con $n = 5$ e $r = 3$, si hanno $n - r = 2$ parametri adimensionali indipendenti:
  $
    C_D = C_D ("Re"_D, "Ma"), quad "Ma" = U_infinity / c
  $
  dove $"Ma"$ è il *numero di Mach*. Gli effetti di comprimibilità risultano trascurabili per bassi numeri di Mach, tipicamente $"Ma" lt.eq 0.3$ (in aria fino a velocità di circa $100 div 110$~m/s), regime in cui il flusso può essere trattato come incomprimibile.

== Interpretazione fisica del numero di Reynolds

#block(breakable: false)[
  Per interpretare fisicamente il numero di Reynolds si esamina l'ordine di grandezza dei termini nell'equazione di Navier-Stokes per fluido incomprimibile (omettendo le forze di volume gravitazionali o assorbendole nella pressione modificata):
  $
    rho (partial arrow(u)) / (partial t) + underbrace(rho (arrow(u) dot nabla) arrow(u), rho U^2 slash L) = -nabla p + underbrace(mu nabla^2 arrow(u), mu U slash L^2)
  $
]

#block(sticky: true)[Indicando con $U$ e $L$ le scale caratteristiche di velocità e lunghezza (ad esempio $U_infinity$ e $D$ oppure $a$) e assumendo inizialmente $t_c = L slash U$ come scala temporale convettiva:]
- il termine instazionario ha ordine $abs(rho thin partial arrow(u) slash partial t) tilde.op rho U slash (L slash U) = rho U^2 slash L$, uguale a quello del termine convettivo;
- il termine convettivo (trasporto inerziale di quantità di moto) ha ordine $abs(rho (arrow(u) dot nabla) arrow(u)) tilde.op rho U^2 slash L$;
- il gradiente di pressione $-nabla p$ non impone qui una scala esterna indipendente (a differenza dei moti in condotta guidati da una caduta di pressione imposta), ma si adatta al regime dinamico dominante;
- il termine diffusivo (dissipazione viscosa) ha ordine $abs(mu nabla^2 arrow(u)) tilde.op mu U slash L^2$.

#block(breakable: false)[
  Confrontando l'ordine di grandezza del termine convettivo con quello del termine diffusivo si ottiene il numero di Reynolds associato alla scala $L$:
  $
    "Re"_L & = "convezione" / "diffusione" = (rho U^2 slash L) / (mu U slash L^2) = (rho U L) / mu = (U L) / nu \
           & = U / (nu slash L) = "velocità convettiva" / "velocità diffusiva"
  $
]

La medesima competizione tra inerzia e viscosità si riflette nelle scale caratteristiche di tempo e di variazione di pressione:
- *Scale dei tempi:* al tempo caratteristico convettivo $t_c = L slash U$ si affianca il tempo caratteristico diffusivo $t_nu = L^2 slash nu$ (costruito con $[nu] = L^2 T^(-1)$). Il loro rapporto vale:
  $
    t_nu / t_c = (L^2 slash nu) / (L slash U) = (U L) / nu = "Re"_L
  $
  Per basso Reynolds ($"Re"_L << 1$) è $t_nu << t_c$, ossia la diffusione viscosa attraversa la scala $L$ più rapidamente della convezione; per alto Reynolds ($"Re"_L >> 1$) sulla scala macroscopica la convezione è molto più rapida della diffusione.
- *Scale delle pressioni:* bilanciando $-nabla p$ con il termine convettivo ($Delta p slash L tilde.op rho U^2 slash L$) si ottiene la *scala di pressione convettiva (o inerziale)* $p_c = rho U^2$; bilanciandolo invece con il termine viscoso ($Delta p slash L tilde.op mu U slash L^2$) si ottiene la *scala di pressione diffusiva (o viscosa)* $p_nu = mu U slash L = rho nu U slash L$. Anche il rapporto tra queste due scale di variazione della pressione coincide con il numero di Reynolds:
  $
    p_c / p_nu = (rho U^2) / (mu U slash L) = (rho U L) / mu = "Re"_L
  $

Il numero di Reynolds misura quindi l'importanza relativa della convezione rispetto alla diffusione viscosa: a densità costante, l'intera dinamica del fluido nasce dalla competizione tra questi due meccanismi. Per $"Re"_L << 1$ la diffusione domina e il termine convettivo — che è il termine *non lineare* dell'equazione — diventa di secondo ordine; se tale termine è assente o trascurabile (come per geometria nel moto di Poiseuille o a bassissimo $"Re"_L$), la dinamica è lineare e il campo è necessariamente laminare. Al contrario, per $"Re"_L$ elevati (es. $"Re"_L tilde.op 10^5$) il termine convettivo non lineare diventa dominante e conferisce al fluido un'autonomia dinamica rispetto alle condizioni al contorno: pur in presenza di forzanti stazionarie, insorgono prima oscillazioni periodiche autonome (distacco alternato di vortici per $"Re"_D > 40$) e poi il regime turbolento, caratterizzato dalla capacità del campo di moto di svincolarsi da una risposta univoca e stazionaria alle condizioni al contorno.

#nota-esame[
  Il termine convettivo $(arrow(u) dot nabla) arrow(u)$ è il termine *non lineare* dell'equazione di Navier-Stokes. Un campo di moto retto da dinamica lineare è necessariamente laminare, ma un campo di moto laminare non ha necessariamente dinamica lineare (ad esempio, nel flusso attorno a un cilindro per $"Re"_D tilde.op 2 div 40$, le bolle di ricircolo coinvolgono effetti non lineari pur restando stazionarie e laminari).
]

== Adimensionalizzazione delle equazioni di Navier-Stokes e regime di Stokes

Per far emergere direttamente dalle equazioni del moto la dipendenza dal numero di Reynolds, riscriviamo il problema del flusso incomprimibile attorno a una sfera (o cilindro circolare) di raggio $a$ in forma adimensionale. L'adimensionalizzazione risponde a due esigenze fondamentali:
1. *Similitudine dinamica:* nel campo di moto attorno a un corpo non conta la distanza assoluta in metri dalla parete, bensì la distanza relativa alla dimensione del corpo stesso (la medesima distanza fisica può trovarsi nella regione prossima o nel campo lontano a seconda del raggio $a$). Riscalare le variabili permette di unificare problemi geometricamente simili a scale diverse.
2. *Indipendenza dalle unità di misura:* le unità dimensionali sono convenzioni arbitrarie, mentre le leggi fisiche esprimono relazioni intrinseche tra grandezze adimensionali e parametri di controllo puri.

Ponendo l'origine degli assi al centro della sfera di raggio $a$, il problema differenziale dimensionale (con pressione modificata $p$ che assorbe la gravità) è costituito dalle equazioni di continuità e di Navier-Stokes:
$
  nabla dot arrow(u) = 0, quad rho (partial arrow(u)) / (partial t) + rho (arrow(u) dot nabla) arrow(u) = -nabla p + mu nabla^2 arrow(u)
$
corredate dalle condizioni al contorno di aderenza sulla superficie sferica $abs(arrow(x)) = a$ e di corrente uniforme indisturbata all'infinito:
$
  arrow(u) = arrow(0) quad "per " abs(arrow(x)) = a, quad arrow(u) arrow.r U_infinity hat(i) " e " p arrow.r p_infinity quad "per " abs(arrow(x)) arrow.r infinity
$

#nota-esame[
  *Condizione di aderenza vs modello ideale (Bernoulli).* Nel modello di fluido ideale inviscido ($mu = 0$), l'ordine differenziale dell'equazione scende e si può imporre soltanto la condizione di *impermeabilità* ($arrow(u) dot hat(n) = 0$): il fluido può scorrere tangenzialmente alla parete, arrestandosi nei punti di ristagno e raggiungendo la velocità massima sui fianchi del corpo per restringimento dei tubi di flusso (effetto Venturi, analogo all'accelerazione del vento sulla cresta di un rilievo). In un fluido reale viscoso vale invece rigorosamente l'*aderenza* ($arrow(u) = arrow(0)$ sulla parete): l'argomento di Bernoulli conserva solo un valore qualitativo nel campo esterno, poiché il massimo di velocità non si realizza più a contatto con la parete ma a una certa distanza da essa.
]

=== Scelta delle scale caratteristiche ed equazioni a basso Reynolds

Le coordinate spaziali e la velocità si adimensionalizzano in modo univoco rispetto al raggio $a$ e alla velocità indisturbata $U_infinity$:
$
  arrow(x) = a thin tilde(arrow(x)) quad (x_i = a thin tilde(x)_i), quad arrow(u) = U_infinity tilde(arrow(u)) quad (u_i = U_infinity tilde(u)_i)
$
dove il simbolo tilde contraddistingue le variabili adimensionali. Sostituendo nell'equazione di continuità in notazione indiciale si ottiene:
$
  (partial u_i) / (partial x_i) = U_infinity / a (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad arrow.r.double quad (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad (tilde(nabla) dot tilde(arrow(u)) = 0)
$
che conserva la medesima forma adimensionale indipendentemente dalla scelta delle scale di tempo e pressione.

Per l'equazione di bilancio della quantità di moto, volendo studiare il *regime a basso numero di Reynolds* (campo dominato dalla diffusione viscosa), adottiamo la scala temporale diffusiva $t_nu = a^2 slash nu$ e la scala di pressione viscosa $p_nu = mu U_infinity slash a$:
$
  t = a^2 / nu thin tilde(t), quad p - p_infinity = (mu U_infinity) / a thin tilde(p)
$
Riscrivendo l'equazione di Navier-Stokes divisa per $rho$, ovvero $(partial u_i) slash (partial t) + u_j (partial u_i) slash (partial x_j) = -(1 slash rho)(partial p) slash (partial x_i) + nu (partial^2 u_i) slash (partial x_j partial x_j)$, ed esplicitando le costanti dimensionali davanti a ciascun operatore adimensionale:
- termine instazionario: $(partial u_i) / (partial t) = (U_infinity) / (a^2 slash nu) (partial tilde(u)_i) / (partial tilde(t)) = (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t))$;
- termine convettivo: $u_j (partial u_i) / (partial x_j) = U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j)$;
- termine di pressione: $-1 / rho (partial p) / (partial x_i) = -1 / rho (mu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i)$;
- termine viscoso: $nu (partial^2 u_i) / (partial x_j partial x_j) = (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j)$.

 Assemblando i termini si ha:
$
  (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t)) + U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) + (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j)
$
Dividendo l'intera equazione per la scala di accelerazione diffusiva $nu U_infinity slash a^2$ (ossia moltiplicando per $a^2 slash (nu U_infinity)$), il coefficiente del termine convettivo diventa $(U_infinity^2 slash a) dot a^2 slash (nu U_infinity) = U_infinity a slash nu = "Re"_a$. Il sistema adimensionale completo assume quindi la forma:
$
  cases(
    tilde(nabla) dot tilde(arrow(u)) = 0,
    (partial tilde(arrow(u))) / (partial tilde(t)) + "Re"_a (tilde(arrow(u)) dot tilde(nabla)) tilde(arrow(u)) = -tilde(nabla) tilde(p) + tilde(nabla)^2 tilde(arrow(u))
  )
$
con le rispettive condizioni al contorno adimensionalizzate (dividendo le coordinate per $a$ e la velocità per $U_infinity$):
$
  tilde(arrow(u)) = arrow(0) quad "per " abs(tilde(arrow(x))) = 1, quad tilde(arrow(u)) arrow.r hat(i) " e " tilde(p) arrow.r 0 quad "per " abs(tilde(arrow(x))) arrow.r infinity
$
(Se si definisse $tilde(p) = p a slash (mu U_infinity)$ senza sottrarre $p_infinity$, cambierebbe solo il valore asintotico $tilde(p) arrow.r p_infinity a slash (mu U_infinity)$, lasciando invariati sia $tilde(nabla) tilde(p)$ sia la risultante delle forze sul corpo chiuso, poiché $integral.cont_S p_infinity hat(n) thin dif S = arrow(0)$.) In questa formulazione la geometria e le condizioni al contorno sono universali: l'unico parametro rimasto nell'intero problema è il numero di Reynolds $"Re"_a$.

=== Limite per $"Re"_a arrow.r 0$: problema di Stokes e forza di resistenza

Passando al limite asintotico $"Re"_a arrow.r 0$, il termine convettivo $"Re"_a (tilde(arrow(u)) dot tilde(nabla)) tilde(arrow(u))$ scompare. Inoltre, venendo meno l'unico termine non lineare, il problema differenziale diventa *lineare*: poiché le condizioni al contorno imposte sono stazionarie, il campo di moto risponde linearmente ad esse senza poter sviluppare instabilità o dipendenze temporali autonome, per cui a regime risulta necessariamente $(partial tilde(arrow(u))) slash (partial tilde(t)) = arrow(0)$. Si ottiene così il *problema di Stokes* stazionario:
$
  tilde(nabla) dot tilde(arrow(u)) = 0, quad tilde(nabla) tilde(p) = tilde(nabla)^2 tilde(arrow(u)) quad "(in forma dimensionale: " nabla dot arrow(u) = 0, quad nabla p = mu nabla^2 arrow(u) ")"
$

#nota-esame[
  Nel limite $"Re"_a arrow.r 0$ la stazionarietà del campo di moto non richiede un'ipotesi aggiuntiva se le condizioni al contorno sono stazionarie: l'eliminazione del termine convettivo uccide la non linearità dell'equazione, obbligando il sistema lineare a una risposta stazionaria. Inoltre, poiché $"Re"_a$ scompare sia dalle equazioni sia dalle condizioni al contorno, la soluzione adimensionale $(tilde(arrow(u)), tilde(p))$ di Stokes è universale e non dipende più dal numero di Reynolds.
]

Calcoliamo ora la forza esercitata dal fluido sulla superficie $S$ della sfera. Indicata con $hat(n)$ la normale uscente dal corpo verso il fluido e valutata la pressione al netto di $p_infinity$, la componente $i$-esima della forza è:
$
  F_i = integral_S (-(p - p_infinity) n_i + tau_(i j) n_j) thin dif S
$
Introducendo le scale viscose per la pressione $(p - p_infinity) = (mu U_infinity slash a) tilde(p)$, per il tensore degli sforzi viscosi $tau_(i j) = mu ((partial u_i) slash (partial x_j) + (partial u_j) slash (partial x_i)) = (mu U_infinity slash a) tilde(tau)_(i j)$ e per l'elemento d'area superficiale $dif S = a^2 thin dif tilde(S)$, si ricava:
$
  F_i = integral_(tilde(S)) (-(mu U_infinity) / a thin tilde(p) n_i + (mu U_infinity) / a thin tilde(tau)_(i j) n_j) a^2 thin dif tilde(S) = (mu U_infinity a) integral_(tilde(S)) (-tilde(p) n_i + tilde(tau)_(i j) n_j) thin dif tilde(S)
$
Il fattore $F_* = mu U_infinity a$ rappresenta la *scala viscosa della forza*, mentre il rapporto $K_i = F_i slash (mu U_infinity a)$ è il vettore della forza adimensionalizzata. Proiettando lungo la direzione della corrente $hat(i)$ si ottiene la forza di resistenza $F_D = arrow(F) dot hat(i)$ e l'espressione integrale del coefficiente adimensionale $K$:
$
  K = F_D / (mu U_infinity a) = integral_(tilde(S)) (-tilde(p) (hat(n) dot hat(i)) + (tilde(bold(tau)) dot hat(n)) dot hat(i)) thin dif tilde(S)
$

Nel limite di Stokes ($"Re"_a arrow.r 0$) per una sfera di raggio $a$, il problema lineare ammette soluzione analitica esatta per $tilde(arrow(u))(tilde(arrow(x)))$ e $tilde(p)(tilde(arrow(x)))$. Valutando separatamente i due integrali sulla sfera unitaria $abs(tilde(arrow(x))) = 1$ si trova:
$
  integral_(tilde(S)) -tilde(p) (hat(n) dot hat(i)) thin dif tilde(S) = 2 pi, quad integral_(tilde(S)) (tilde(bold(tau)) dot hat(n)) dot hat(i) thin dif tilde(S) = 4 pi
$
(il primo integrale è positivo malgrado il segno meno perché sulla calotta frontale è $tilde(p) > 0$ con $hat(n) dot hat(i) < 0$, mentre a valle è $tilde(p) < 0$ con $hat(n) dot hat(i) > 0$). Sommando i due contributi risulta $K = 2 pi + 4 pi = 6 pi$, da cui la *legge di Stokes* per la resistenza di una sfera:
$
  F_D = 6 pi mu a U_infinity = 3 pi mu D U_infinity
$
Per numeri di Reynolds non asintoticamente nulli la legge di Stokes non si estende senza correzioni e occorre scrivere più in generale $F_D = mu U_infinity a thin K("Re"_a)$, con $K("Re"_a) arrow.r 6 pi$ per $"Re"_a arrow.r 0$. Riportando la soluzione di Stokes nella definizione convenzionale del coefficiente di resistenza $C_D$ basato sull'area frontale $A_"ref" = pi a^2$, si ottiene infine:
$
  C_D = (6 pi mu a U_infinity) / (1 slash 2 thin rho U_infinity^2 pi a^2) = (12 mu) / (rho U_infinity a) = 12 / "Re"_a = 24 / "Re"_D
$

#nota-esame[
  Nella soluzione esatta di Stokes per la sfera ($K = 6 pi$, valida solo per $"Re" arrow.r 0$), la resistenza totale $F_D = 6 pi mu a U_infinity$ proviene per *un terzo* dal contributo di pressione ($2 pi mu a U_infinity$) e per *due terzi* dagli sforzi viscosi tangenziali ($4 pi mu a U_infinity$). Prestare sempre attenzione alla lunghezza scelta nel numero di Reynolds: $C_D = 24 slash "Re"_D$ sul diametro $D = 2 a$, ma $C_D = 12 slash "Re"_a$ sul raggio $a$.
]

== Caduta di una sfera nel regime di Stokes

Applichiamo il risultato precedente al moto verticale di sedimentazione di una sfera solida isolata di raggio $a$ (diametro $D = 2 a$) e densità $rho_s$, immersa in un fluido newtoniano in quiete di densità $rho$ e viscosità dinamica $mu$.

Supponiamo $rho_s > rho$, cosicché la sfera cada verso il basso fino a raggiungere una condizione stazionaria a *velocità terminale* costante $U_t$. Ponendosi nel sistema di riferimento solidale con la sfera, la superficie del corpo è ferma ($arrow(u) = arrow(0)$ per $abs(arrow(x)) = a$) ed è investita dal basso verso l'alto da una corrente relativa uniforme di velocità indisturbata $U_infinity = U_t$: il problema fluido coincide esattamente con quello già risolto, ruotato lungo la verticale. La scomposizione della pressione nella parte idrostatica e nella pressione modificata permette inoltre di separare nettamente la spinta di Archimede dalla resistenza idrodinamica, evitando di contare due volte il contributo idrostatico.

#block(breakable: false)[
  #grid(
    columns: (1.15fr, 0.85fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),
    [
      Alla velocità terminale l'accelerazione della sfera è nulla e le forze verticali si equilibrano. I moduli della forza peso $P$ (diretta verso il basso) e della spinta di Archimede $F_A$ (diretta verso l'alto) valgono:
      $
        P = 4 / 3 pi a^3 rho_s g, quad F_A = 4 / 3 pi a^3 rho g
      $
      La forza di resistenza $F_D$ si oppone alla caduta (è quindi diretta verso l'alto) e il bilancio verticale impone:
      $
        F_D + F_A = P quad arrow.r.double quad F_D = 4 / 3 pi a^3 (rho_s - rho) g
      $
    ],
    [#canvas(length: 1cm, {
      import draw: *
      circle((0.0, 0.0), radius: 0.85, fill: luma(235), stroke: 1pt)
      content((0.0, 0.0), text(size: 10pt)[$rho_s$])
      line((0.0, -0.35), (0.0, -2.0), mark: (end: ">"), stroke: (paint: black, thickness: 1.1pt))
      content((0.15, -1.95), text(size: 10pt)[$P$], anchor: "west")
      line((-0.3, 0.55), (-0.3, 1.75), mark: (end: ">"), stroke: (paint: rgb("#1d4ed8"), thickness: 1.1pt))
      content((-0.4, 1.7), text(size: 10pt)[$F_A$], anchor: "east")
      line((0.3, 0.55), (0.3, 2.05), mark: (end: ">"), stroke: (paint: rgb("#1d4ed8"), thickness: 1.1pt))
      content((0.4, 2.0), text(size: 10pt)[$F_D$], anchor: "west")
      line((1.55, 0.45), (1.55, -0.95), mark: (end: ">"), stroke: (paint: rgb("#991b1b"), thickness: 0.95pt))
      content((1.7, -0.85), text(size: 10pt)[$U_t$], anchor: "west")
    })],
  )
]

Esprimendo in generale la resistenza come $F_D = mu U_t a thin K("Re"_a)$, si ricava la relazione implicita (poiché $"Re"_a = rho U_t a slash mu$ dipende a sua volta da $U_t$):
$
  U_t = (4 pi a^2 (rho_s - rho) g) / (3 mu K("Re"_a))
$
Se il moto avviene nel regime di Stokes ($"Re"_D << 1$), si può porre $K = 6 pi$, ottenendo in forma esplicita la *velocità terminale di Stokes*:
$
  U_t = (2 a^2 (rho_s - rho) g) / (9 mu) = (D^2 (rho_s - rho) g) / (18 mu)
$
Se la sfera è meno densa del fluido ($rho_s < rho$), il moto stazionario è di risalita verso l'alto e il modulo della velocità terminale si ottiene sostituendo $rho_s - rho$ con $abs(rho_s - rho)$ (con resistenza $F_D$ rivolta verso il basso); per $rho_s = rho$ peso e spinta idrostatica si compensano esattamente ($U_t = 0$). La formula presuppone inoltre una sfera isolata, lontana da pareti o da altre particelle (assenza di effetti di confinamento).

=== Verifica a posteriori e raggio critico di validità

Poiché la legge $K = 6 pi$ è lecita solo per bassissimo numero di Reynolds, una volta calcolata $U_t$ è indispensabile verificare *a posteriori* che sia soddisfatta la condizione:
$
  "Re"_D = (rho U_t D) / mu = (2 rho U_t a) / mu << 1
$
Qualora la verifica fallisca, occorre adottare la legge di resistenza appropriata al regime effettivo di Reynolds e risolvere implicitamente il bilancio delle forze.

Fissata una soglia pratica di validità per l'approssimazione di Stokes, ad esempio $"Re"_D lt.eq "Re"_"lim" = 0.1$, è possibile determinare direttamente il *raggio massimo* $a_"max"$ della sfera per cui la soluzione di Stokes risulta applicabile. Sostituendo l'espressione di $U_t$ nella definizione di $"Re"_D$ (con $mu = rho nu$):
$
  "Re"_D = (2 rho a) / mu dot (2 a^2 abs(rho_s - rho) g) / (9 mu) = (4 rho abs(rho_s - rho) g a^3) / (9 mu^2) = (4 abs(rho_s - rho) g a^3) / (9 rho nu^2) lt.eq "Re"_"lim"
$
Risolvendo rispetto al raggio $a$ si ottiene:
$
  a lt.eq a_"max" = ((9 thin "Re"_"lim" thin mu^2) / (4 rho abs(rho_s - rho) g))^(1 slash 3) = ((9 thin "Re"_"lim" thin rho nu^2) / (4 abs(rho_s - rho) g))^(1 slash 3)
$
A parità di densità del solido $rho_s$, il raggio critico $a_"max"$ dipende fortemente dalle proprietà del fluido tramite il rapporto $mu^2 slash (rho abs(rho_s - rho))$: passando dall'aria ($rho approx 1.2 "kg/m"^3$, $mu approx 1.81 times 10^(-5) "Pa" dot "s"$) all'acqua ($rho approx 1000 "kg/m"^3$) e ancor più a un olio viscoso ($rho approx 900 "kg/m"^3$, viscosità molto maggiore), l'aumento di $mu$ e la riduzione del contrasto di densità $abs(rho_s - rho)$ innalzano sensibilmente il raggio massimo compatibile con il regime di Stokes.