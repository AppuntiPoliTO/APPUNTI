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

Applichiamo il teorema $Pi$ al flusso esterno stazionario attorno a un corpo circolare (sfera o cilindro indefinito) di diametro $D$, investito da una corrente uniforme di velocità $U_infinity$ diretta lungo il versore $hat(i)$, in un fluido newtoniano incomprimibile di densità $rho$ e viscosità dinamica $mu$. La forza di resistenza aerodinamica (*drag*) è la proiezione della forza totale $arrow(F)$ nella direzione della corrente: $F_D = arrow(F) dot hat(i)$.

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
  content((3.8, -1.5), text(size: 10pt)[$D$], anchor: "north")
  content((6.85, 1.55), text(size: 10pt)[$arrow(F)$], anchor: "south")
  content((5.4, -0.15), text(size: 10pt)[$F_D$], anchor: "north")
  content((6.45, -1.5), text(size: 10pt)[$hat(i)$], anchor: "north")
})
    ],
  )
]

Poiché $n - r = 4 - 3 = 1$, esiste un solo parametro adimensionale indipendente costruibile con $(U_infinity, rho, mu, D)$. Adimensionalizzando $mu$ tramite $(rho, U_infinity, D)$ si trova $[rho^(-1) U_infinity^(-1) D^(-1) mu] = 1$, il cui reciproco definisce il *numero di Reynolds*:
$
  "Re" = (rho U_infinity D) / mu = (U_infinity D) / nu, quad "con " nu = mu / rho
$

#block(sticky: true)[La forza di resistenza può essere adimensionalizzata in due modi equivalenti:]
- rispetto alla scala inerziale (per una sfera, utilizzando $D^2$ o l'area frontale $A = pi D^2 slash 4$; per un cilindro indefinito si scala la forza per unità di apertura $F'_D$ con $1 slash 2 thin rho U_infinity^2 D$):
  $
    C_D = (F_D) / (1 slash 2 thin rho U_infinity^2 D^2) = C_D ("Re")
  $
- rispetto alla scala viscosa (particolarmente espressiva a bassi $"Re"$, con $k = 1 slash 2 thin "Re" thin C_D$):
  $
    k = (F_D) / (mu U_infinity D) = k("Re")
  $

Si osservi il ruolo della densità $rho$: esprimendo la viscosità tramite quella cinematica $nu = mu slash rho$ ($[nu] = L^2 T^(-1)$), per descrivere il campo di velocità adimensionalizzato $arrow(u) slash U_infinity$ (oppure la forza per unità di massa $F_D slash rho$, avente dimensioni $[F_D slash rho] = L^4 T^(-2)$ prive di $M$) intervengono soltanto $n = 3$ parametri di controllo $(U_infinity, D, nu)$ in $r = 2$ dimensioni indipendenti ($L, T$). Da $n - r = 1$ discende nuovamente il solo numero di Reynolds $"Re" = U_infinity D slash nu$: in un fluido newtoniano a densità costante, $rho$ non aggiunge parametri adimensionali indipendenti, ma entra in $F_D$ unicamente come fattore di scala dimensionale.

=== Limiti di validità: fluidi non newtoniani e numero di Mach

#block(sticky: true)[La dipendenza dal solo numero di Reynolds poggia su due ipotesi restrittive:]
- *Comportamento newtoniano:* gli sforzi di taglio dipendono linearmente dal gradiente di velocità (velocità di deformazione) attraverso un'unica costante di viscosità $mu$. Per fluidi non newtoniani intervengono ulteriori parametri reologici.
- *Densità costante (incomprimibilità):* assumere $rho = "cost."$ equivale a considerare infinita la velocità di propagazione delle onde acustiche ($c arrow.r infinity$). Se si ammette la comprimibilità (dilatazione delle particelle fluide), occorre introdurre tra i parametri di controllo anche la velocità del suono $c$ ($[c] = L slash T$):
  $
    F_D = f(U_infinity, rho, mu, D, c)
  $
  Con $n = 5$ e $r = 3$, si hanno $n - r = 2$ parametri adimensionali indipendenti:
  $
    C_D = C_D ("Re", "Ma"), quad "Ma" = U_infinity / c
  $
  dove $"Ma"$ è il *numero di Mach*. Gli effetti di comprimibilità risultano trascurabili per bassi numeri di Mach, tipicamente $"Ma" lt.eq 0.3$ (in aria fino a velocità di circa $100 div 110$~m/s), regime in cui il flusso può essere trattato come incomprimibile.

== Interpretazione fisica del numero di Reynolds

#block(breakable: false)[
  Per interpretare fisicamente il numero di Reynolds si esamina l'ordine di grandezza dei termini nell'equazione di Navier-Stokes per fluido incomprimibile (omettendo il termine gravitazionale):
  $
    rho (partial arrow(u)) / (partial t) + underbrace(rho (arrow(u) dot nabla) arrow(u), rho U_infinity^2 slash D) = -nabla p + underbrace(mu Delta arrow(u), mu U_infinity slash D^2)
  $
]

#block(sticky: true)[Assumendo $U_infinity$ e $D$ come scale caratteristiche di velocità e lunghezza e $tau tilde.op D slash U_infinity$ come scala temporale convettiva:]
- il termine instazionario ha ordine $|rho thin partial arrow(u) slash partial t| tilde.op rho U_infinity slash (D slash U_infinity) = rho U_infinity^2 slash D$, uguale a quello del termine convettivo;
- il termine convettivo (trasporto di quantità di moto per inerzia) ha ordine $|rho (arrow(u) dot nabla) arrow(u)| tilde.op rho U_infinity^2 slash D$;
- il gradiente di pressione $-nabla p$ non impone qui una scala indipendente (a differenza dei moti in condotta guidati da una caduta di pressione imposta);
- il termine diffusivo (dissipazione viscosa) ha ordine $|mu Delta arrow(u)| tilde.op mu U_infinity slash D^2$.

#block(breakable: false)[
  Confrontando l'ordine di grandezza del termine convettivo con quello del termine diffusivo si ottiene:
  $
    "Re" & = "convezione" / "diffusione" = (rho U_infinity^2 slash D) / (mu U_infinity slash D^2) = (rho U_infinity D) / mu \
         & = U_infinity / (nu slash D) = "velocità convettiva" / "velocità diffusiva"
  $
]

Il numero di Reynolds misura quindi l'importanza relativa della convezione rispetto alla diffusione viscosa: a densità costante, tutta la dinamica del fluido nasce dalla competizione tra questi due meccanismi. Per $"Re" << 1$ la diffusione domina e il termine convettivo — che è il termine *non lineare* dell'equazione — diventa di secondo ordine; se tale termine è assente o trascurabile (come per geometria nel moto di Poiseuille o a bassissimo $"Re"$), la dinamica è lineare e il campo è necessariamente laminare. Al contrario, per $"Re"$ elevati (es. $"Re" tilde.op 10^5$) il termine convettivo non lineare diventa dominante e conferisce al fluido un'autonomia dinamica rispetto alle condizioni al contorno: pur in presenza di forzanti stazionarie, insorgono prima oscillazioni periodiche autonome (distacco alternato di vortici per $"Re" > 40$) e poi il regime turbolento, caratterizzato dalla capacità del campo di moto di svincolarsi da una risposta univoca e stazionaria alle condizioni al contorno.

#nota-esame[
  Il termine convettivo $(arrow(u) dot nabla) arrow(u)$ è il termine *non lineare* dell'equazione di Navier-Stokes. Un campo di moto retto da dinamica lineare è necessariamente laminare, ma un campo di moto laminare non ha necessariamente dinamica lineare (ad esempio, nel flusso attorno a un cilindro per $"Re" tilde.op 2 div 40$, le bolle di ricircolo coinvolgono effetti non lineari pur restando stazionarie e laminari).
]


#let nota-esame(body) = block(
  fill: luma(245),
  stroke: (left: 2.5pt + luma(120)),
  inset: (x: 10pt, y: 8pt),
  radius: (right: 3pt),
  width: 100%,
  breakable: false,
)[
  *Nota:* #body
]

#let col-vel = rgb("#991b1b")
#let col-forza = rgb("#1d4ed8")
#let col-quota = luma(85)

#let freccia(p1, p2, col: black, spessore: 1.05pt) = {
  draw.line(
    p1,
    p2,
    stroke: (paint: col, thickness: spessore),
    mark: (end: ">", fill: col, stroke: col),
  )
}

#let corpo-circolare(centro, raggio: 0.9) = {
  draw.circle(centro, radius: raggio, fill: luma(238), stroke: 1pt + black)
}

== Adimensionalizzazione delle equazioni di Navier-Stokes e regime di Stokes

Per far emergere direttamente dalle equazioni del moto la dipendenza dal numero di Reynolds e riscriverle in forma funzionale al regime dinamico (a bassi o ad alti numeri di Reynolds), formuliamo in variabili adimensionali il problema del flusso incomprimibile attorno a una sfera (o cilindro circolare) di raggio $a$ e diametro $D = 2 a$.

#block(sticky: true)[L'adimensionalizzazione risponde a due motivazioni fondamentali:]
1. *Similitudine dinamica:* nell'analizzare il campo di moto attorno a un corpo non conta la distanza assoluta in metri dalla superficie, bensì la distanza relativa a una lunghezza di riferimento del corpo stesso (una medesima distanza fisica può trovarsi a ridosso della parete o nel campo lontano a seconda del raggio $a$). Riscalare le variabili permette di identificare le condizioni di similitudine e passare da una scala geometrica all'altra conservando l'equivalenza dinamica.
2. *Indipendenza dalle unità di misura:* le dimensioni fisiche sono convenzioni soggettive introdotte dall'uomo, mentre le leggi della fisica devono prescindere dalle unità adottate, facendo emergere unicamente il ruolo dei parametri di controllo adimensionali.

#block(breakable: false)[
  Ponendo l'origine degli assi al centro della sfera di raggio $a$ , il modello è costituito dall'equazione di continuità e dall'equazione di bilancio della quantità di moto scritta omettendo la gravità (assorbita nella pressione modificata):
  $
    nabla dot arrow(u) = 0, quad rho (partial arrow(u)) / (partial t) + rho (arrow(u) dot nabla) arrow(u) = -nabla p + mu nabla^2 arrow(u)
  $
  corredate dalla condizione di aderenza sulla superficie $abs(arrow(x) thin) = a$ (ossia $x^2 + y^2 = a^2$ nella sezione piana) e dalle condizioni di corrente uniforme indisturbata all'infinito:
  $
    arrow(u) = arrow(0) quad "per " abs(arrow(x) thin) = a, quad arrow(u) arrow.r U_infinity hat(i) " e " p arrow.r p_infinity quad "per " abs(arrow(x) thin) arrow.r infinity
  $
]

#figure(
  canvas(length: 1cm, {
    import draw: *
    for y in (0.75, 0.0, -0.75) {
      freccia((0.0, y), (1.85, y), col: col-vel, spessore: 0.9pt)
    }
    content((0.92, 0.95), text(size: 9.5pt)[$U_infinity hat(i), thin p_infinity$], anchor: "south")

    corpo-circolare((3.6, 0.0), raggio: 0.9)
    freccia((3.6, 0.0), (4.18, 0.0), col: col-quota, spessore: 0.65pt)
    freccia((3.6, 0.0), (3.6, 0.58), col: col-quota, spessore: 0.65pt)
    content((4.2, -0.06), text(size: 9pt)[$x$], anchor: "north")
    content((3.52, 0.56), text(size: 9pt)[$y$], anchor: "east")

    line((3.6, 0.0), (4.24, -0.64), stroke: (paint: col-quota, thickness: 0.7pt, dash: "dashed"))
    content((3.86, -0.38), text(size: 9.5pt)[$a$], anchor: "north-east")

    freccia((4.24, 0.64), (4.82, 1.22), col: col-quota, spessore: 0.85pt)
    content((4.88, 1.25), text(size: 9.5pt)[$hat(n)$], anchor: "south-west")
    content((2.82, 0.72), text(size: 9.5pt)[$arrow(u) = arrow(0)$], anchor: "south-east")

    line((2.7, -1.3), (4.5, -1.3), stroke: (paint: col-quota, thickness: 0.7pt))
    line((2.7, -1.42), (2.7, -1.18), stroke: (paint: col-quota, thickness: 0.7pt))
    line((4.5, -1.42), (4.5, -1.18), stroke: (paint: col-quota, thickness: 0.7pt))
    content((3.6, -1.47), text(size: 9.5pt)[$D = 2 a$], anchor: "north")

    freccia((4.5, 0.0), (6.35, 0.0), col: col-forza, spessore: 1.15pt)
    content((5.45, -0.18), text(size: 9.5pt)[$F_D = arrow(F) dot hat(i)$], anchor: "north")
  }),
  caption: [Schema del problema attorno a una sfera (o cilindro) di raggio $a$ investita da una corrente uniforme $U_infinity hat(i)$, con condizione di aderenza a parete e normale uscente $hat(n)$.],
) <fig:problema-sfera>

#block(breakable: false)[
  #nota-esame[
    *Condizione di aderenza vs modello ideale (Bernoulli).* Usando il teorema di Bernoulli si adotta un modello di fluido ideale inviscido ($mu = 0$), nel quale non può valere l'aderenza ma si impone soltanto la condizione di *impermeabilità* (velocità tangente alla superficie): la velocità si annulla nel punto di ristagno frontale e raggiunge il massimo sui fianchi per restringimento delle linee di corrente (effetto Venturi, analogo al rinforzo del vento sulla cresta di una collina o di una montagna). Nel fluido reale viscoso la velocità a parete è invece rigorosamente nulla per aderenza, e l'analisi con Bernoulli conserva solo un valore grossolano (*spannometrico*): il massimo di velocità continua a esistere, ma si sposta a una certa distanza dalla parete.
  ]
]

=== Scelta delle scale caratteristiche ed equazioni a basso Reynolds

#block(sticky: true)[
  Qualsiasi lunghezza e velocità si esprimono come prodotto della corrispondente variabile adimensionale (indicata con tilde) per la rispettiva scala caratteristica, data dal raggio $a$ e dalla velocità indisturbata $U_infinity$:
]
$
  arrow(x) = a thin tilde(arrow(x)) quad (x_i = a thin tilde(x)_i), quad arrow(u) = U_infinity tilde(arrow(u)) quad (u_i = U_infinity tilde(u)_i)
$

#block(sticky: true)[
  Per il tempo e per la pressione l'adimensionalizzazione può invece seguire due strategie distinte, espressione della competizione tra il meccanismo convettivo e quello diffusivo:
]
- *Scale dei tempi:* usando le grandezze convettive si costruisce la *scala temporale convettiva* $t_c = a slash U_infinity$; usando invece la viscosità cinematica $nu = mu slash rho$ ($[nu] = L^2 T^(-1)$) si ottiene la *scala temporale diffusiva* $t_nu = a^2 slash nu$.
- *Scale delle pressioni:* imponendo che il termine di pressione $(-1 slash rho) nabla p$ abbia lo stesso ordine di grandezza del termine convettivo ($p slash (rho a) tilde.op U_infinity^2 slash a$) si ottiene la *scala di pressione convettiva* $p_c = rho U_infinity^2$; imponendo invece che abbia lo stesso ordine del termine viscoso ($p slash (rho a) tilde.op nu U_infinity slash a^2$) si ottiene la *scala di pressione diffusiva (o viscosa)* $p_nu = rho nu U_infinity slash a = mu U_infinity slash a$.

#block(sticky: true)[
  Nell'equazione di continuità la sostituzione è immediata:
]
$
  (partial u_i) / (partial x_i) = U_infinity / a (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad arrow.r.double quad (partial tilde(u)_i) / (partial tilde(x)_i) = 0 quad (tilde(nabla) dot tilde(arrow(u)) = 0)
$
ed è identica sia facendo riferimento alle scale convettive sia facendo riferimento alle scale viscose.

#block(sticky: true)[
  Nell'equazione di bilancio della quantità di moto occorre invece scegliere la scala appropriata al regime di moto. Volendo rappresentare campi a *basso numero di Reynolds*, dominati dalla diffusione viscosa, adottiamo le scale diffusive per tempo e pressione:
]
$
  t = a^2 / nu thin tilde(t), quad p = (mu U_infinity) / a thin tilde(p)
$
#block(sticky: true)[
  Partendo dall'equazione di Navier-Stokes divisa per $rho$:
]
$
  (partial u_i) / (partial t) + u_j (partial u_i) / (partial x_j) = - 1 / rho (partial p) / (partial x_i) + nu (partial^2 u_i) / (partial x_j partial x_j)
$
#block(sticky: true)[
  ed estraendo dalle derivate le costanti dimensionali di ciascun termine si ottiene:
]
$
  (partial u_i) / (partial t) & = U_infinity / (a^2 slash nu) (partial tilde(u)_i) / (partial tilde(t)) = (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t)) && quad "(termine instazionario)" \
  u_j (partial u_i) / (partial x_j) & = U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j) && quad "(termine convettivo)" \
  -1 / rho (partial p) / (partial x_i) & = -1 / rho (mu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) && quad "(termine di pressione)" \
  nu (partial^2 u_i) / (partial x_j partial x_j) & = (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j) && quad "(termine viscoso)"
$

#block(sticky: true)[Sostituendo nell'equazione di bilancio:]
$
  (nu U_infinity) / a^2 (partial tilde(u)_i) / (partial tilde(t)) + U_infinity^2 / a thin tilde(u)_j (partial tilde(u)_i) / (partial tilde(x)_j) = -(nu U_infinity) / a^2 (partial tilde(p)) / (partial tilde(x)_i) + (nu U_infinity) / a^2 (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j)
$
Il primo termine, il termine di pressione e il termine viscoso condividono tutti il medesimo fattore dimensionale $nu U_infinity slash a^2 = mu U_infinity slash (rho a^2)$. Dividendo l'intera equazione per $nu U_infinity slash a^2$, quei tre termini assumono coefficiente unitario, mentre davanti al termine convettivo compare il numero di Reynolds riferito al raggio $a$:
$
  "Re"_a = (U_infinity^2 slash a) / (nu U_infinity slash a^2) = (U_infinity a) / nu = (rho U_infinity a) / mu
$
(distinto dal numero di Reynolds riferito al diametro $D = 2 a$, pari a $"Re"_D = rho U_infinity (2 a) slash mu = 2 thin "Re"_a$).

#block(sticky: true)[Il sistema adimensionale assume dunque la forma:]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    cases(
      tilde(nabla) dot tilde(arrow(u)) = 0,
      (partial tilde(arrow(u))) / (partial tilde(t)) + "Re"_a (tilde(arrow(u)) dot tilde(nabla)) tilde(arrow(u)) = -tilde(nabla) tilde(p) + tilde(nabla)^2 tilde(arrow(u))
    )
  $ <eq:ns-adim>
]
#block(sticky: true)[
  Adimensionalizzando allo stesso modo le condizioni al contorno (dividendo le coordinate al quadrato per $a^2$, la velocità per $U_infinity$ e la pressione per $mu U_infinity slash a$), si ha:
]
$
  tilde(arrow(u)) = arrow(0) quad "per " abs(tilde(arrow(x)) thin) = 1, quad tilde(arrow(u)) arrow.r hat(i) " e " tilde(p) arrow.r tilde(p)_infinity = (p_infinity a) / (mu U_infinity) quad "per " abs(tilde(arrow(x)) thin) arrow.r infinity
$
Il problema @eq:ns-adim vale così per sfere (o cilindri) di qualsiasi dimensione e per qualunque fluido viscoso, dimostrando l'esplicita dipendenza del sistema dal solo numero di Reynolds.

=== Limite per $"Re"_a arrow.r 0$: problema di Stokes e forza di resistenza

#block(sticky: true)[
  La formulazione @eq:ns-adim permette di passare in modo pulito al limite di moto fortemente viscoso $"Re"_a arrow.r 0$: il termine convettivo scompare e, venendo eliminata la non linearità del sistema in presenza di condizioni al contorno stazionarie, anche la derivata temporale $partial tilde(arrow(u)) slash partial tilde(t)$ si annulla. Il problema si riduce così al *problema di Stokes*:
]
$
  tilde(nabla) dot tilde(arrow(u)) = 0, quad tilde(nabla) tilde(p) = tilde(nabla)^2 tilde(arrow(u)) quad ("ossia " (partial tilde(p)) / (partial tilde(x)_i) = (partial^2 tilde(u)_i) / (partial tilde(x)_j partial tilde(x)_j))
$

#block(breakable: false)[
  #nota-esame[
    L'annullamento di $partial tilde(arrow(u)) slash partial tilde(t)$ per $"Re"_a arrow.r 0$ non richiede un'ipotesi aggiuntiva di stazionarietà: eliminando il termine convettivo col numero di Reynolds viene uccisa la non linearità dell'equazione, e un sistema lineare sottoposto a condizioni al contorno stazionarie non può sviluppare autonomia temporale ma deve rispondere in modo stazionario. Inoltre, poiché $"Re"_a$ non compare più né nelle equazioni né nelle condizioni al contorno, la soluzione asintotica $(tilde(arrow(u)), tilde(p))$ prescinde dal valore del numero di Reynolds.
  ]
]

#block(sticky: true)[
  Ritorniamo ora alla forza esercitata dal fluido sulla superficie $S$ del corpo. Con la normale $hat(n)$ uscente dalla parete verso il fluido, la componente $i$-esima della forza dimensionale è:
]
$
  F_i = integral_S (-p n_i + tau_(i j) n_j) thin dif S
$
#block(sticky: true)[
  Esprimiamo $F_i$ come prodotto di una scala della forza $F_*$ e di una forza adimensionale $K_i$ sostituendo le scale viscose $p = (mu U_infinity slash a) tilde(p)$, $tau_(i j) = mu (partial u_i slash partial x_j + partial u_j slash partial x_i) = (mu U_infinity slash a) tilde(tau)_(i j)$ e $dif S = a^2 thin dif tilde(S)$:
]
$
  F_i = integral_(tilde(S)) (-(mu U_infinity) / a thin tilde(p) n_i + (mu U_infinity) / a thin tilde(tau)_(i j) n_j) a^2 thin dif tilde(S) = (mu U_infinity a) integral_(tilde(S)) (-tilde(p) n_i + tilde(tau)_(i j) n_j) thin dif tilde(S)
$
#block(sticky: true)[
  La quantità $F_* = mu U_infinity a$ costituisce la *scala viscosa della forza*, da cui il vettore adimensionale $K_i = F_i slash (mu U_infinity a)$ (la cui sola componente non nulla per simmetria è quella lungo il moto). Moltiplicando scalarmente per il versore della corrente $hat(i)$ si ottiene la forza di resistenza $F_D = arrow(F) dot hat(i)$ e il coefficiente di resistenza adimensionale su scala viscosa $K$:
]
$
  K = F_D / (mu U_infinity a) = integral_(tilde(S)) (-tilde(p) (hat(n) dot hat(i)) + (tilde(bold(tau)) dot hat(n)) dot hat(i)) thin dif tilde(S)
$
dove l'integrale adimensionale mette in evidenza il contributo delle pressioni e quello degli sforzi viscosi (un eventuale livello costante $tilde(p)_infinity$ dà risultante nulla sulla superficie chiusa).

#block(sticky: true)[
  Per una sfera nel limite $"Re"_a arrow.r 0$, Stokes ha risolto analiticamente il campo di velocità e di pressione, calcolando esplicitamente i due integrali sulla superficie sferica unitaria:
]
$
  integral_(tilde(S)) -tilde(p) (hat(n) dot hat(i)) thin dif tilde(S) = 2 pi, quad integral_(tilde(S)) (tilde(bold(tau)) dot hat(n)) dot hat(i) thin dif tilde(S) = 4 pi
$
#block(sticky: true)[
  (il primo integrale vale $+2 pi$ anche in presenza del segno meno interno). Poiché il campo di Stokes non dipende da $"Re"_a$, il coefficiente $K$ assume il valore costante $K = 2 pi + 4 pi = 6 pi$, fornendo la *legge di Stokes* per la resistenza su una sfera:
]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    F_D = 6 pi mu a U_infinity
  $ <eq:legge-stokes>
]

#block(breakable: false)[
  #nota-esame[
    La soluzione analitica esatta $K = 6 pi$ vale per una *sfera* esclusivamente nel limite asintotico $"Re" arrow.r 0$ (in cui la sola viscosità bilancia la pressione in assenza del termine convettivo) ed è somma del contributo di pressione pari a $2 pi$ ($1 slash 3$ del totale) e del contributo viscoso pari a $4 pi$ ($2 slash 3$ del totale).
  ]
]

== Caduta di una sfera nel regime di Stokes

Ruotando idealmente il problema precedente lungo la verticale, consideriamo una sfera solida sufficientemente piccola di raggio $a$ e densità $rho_s$ che scende in caduta libera in un fluido in quiete di densità $rho$ e viscosità dinamica $mu$ .

Raggiunto il regime stazionario alla velocità di caduta costante $U_t$, un osservatore solidale con la sfera vede un campo di moto relativo con corrente uniforme che sale dal basso verso l'alto a velocità indisturbata $U_infinity = U_t$.

#figure(
  canvas(length: 1cm, {
    import draw: *
    for x in (-1.85, -1.45) {
      freccia((x, -0.85), (x, 0.55), col: col-vel, spessore: 0.85pt)
    }
    content((-1.65, -1.02), text(size: 9.5pt)[$U_infinity = U_t$], anchor: "north")

    corpo-circolare((0.0, 0.0), raggio: 0.9)
    content((0.0, 0.15), text(size: 9.5pt)[$rho_s, thin a$], anchor: "south")

    freccia((0.0, -0.15), (0.0, -2.25), col: black, spessore: 1.1pt)
    content((0.18, -2.15), text(size: 9.5pt)[$P$], anchor: "west")

    freccia((-0.32, 0.70), (-0.32, 1.55), col: col-forza, spessore: 1.1pt)
    content((-0.48, 1.48), text(size: 9.5pt)[$F_A$], anchor: "east")

    freccia((0.32, 0.70), (0.32, 1.95), col: col-forza, spessore: 1.1pt)
    content((0.48, 1.88), text(size: 9.5pt)[$F_D$], anchor: "west")

    content((2.0, 0.65), text(size: 9.5pt)[$F_D + F_A = P$], anchor: "west")
    content((2.0, 0.0), text(size: 9.5pt)[$F_D = 6 pi mu a U_t$], anchor: "west")
    content((2.0, -0.65), text(size: 9.5pt)[$"Re"_D lt.eq 0.1$], anchor: "west")
  }),
  caption: [Bilancio stazionario delle forze su una sfera in caduta libera (peso $P$, spinta di Archimede $F_A$ e resistenza di Stokes $F_D$) investita dal flusso relativo $U_infinity = U_t$ dal basso.],
) <fig:sedimentazione-stokes>

#block(sticky: true)[
  In condizioni di stazionarietà la forza peso $P$, la spinta di Archimede $F_A$ e la forza di resistenza aerodinamica $F_D$ (data dalla @eq:legge-stokes con $U_infinity = U_t$) si equilibrano:
]
$
  P = 4 / 3 pi a^3 rho_s g, quad F_A = 4 / 3 pi a^3 rho g, quad F_D = 6 pi mu a U_t
$
#block(sticky: true)[
  Imponendo il bilancio verticale $F_D + F_A = P$ si ricava la velocità stazionaria di caduta in regime di Stokes:
]
#[
  #set math.equation(numbering: "(1)", supplement: none)
  $
    6 pi mu a U_t = 4 / 3 pi a^3 (rho_s - rho) g quad arrow.r.double quad U_t = (2 a^2 (rho_s - rho) g) / (9 mu)
  $ <eq:vel-stokes>
]

=== Verifica di validità e calcolo del raggio massimo

#block(sticky: true)[
  Poiché la soluzione di Stokes vale per $"Re" arrow.r 0$, assimiliamo operativamente tale condizione asintotica al requisito che il numero di Reynolds sul diametro $D = 2 a$ sia inferiore a $0.1$:
]
$
  "Re"_D = (rho U_t (2 a)) / mu lt.eq "Re"_"lim" = 0.1
$
#block(sticky: true)[
  Mettendo a sistema questa condizione con la velocità di caduta @eq:vel-stokes (e ricordando che $mu = rho nu$) è possibile determinare il *raggio massimo* $a_"max"$ della sfera affinché la legge di Stokes sia ritenuta valida:
]
$
  "Re"_D = (2 rho a) / mu dot (2 a^2 (rho_s - rho) g) / (9 mu) = (4 rho (rho_s - rho) g a^3) / (9 mu^2) = (4 (rho_s - rho) g a^3) / (9 rho nu^2) lt.eq "Re"_"lim"
$
#block(sticky: true)[Esplicitando il raggio $a$ si ottiene:]
$
  a lt.eq a_"max" = ((9 thin "Re"_"lim" thin mu^2) / (4 rho (rho_s - rho) g))^(1 slash 3) = ((9 thin "Re"_"lim" thin rho nu^2) / (4 (rho_s - rho) g))^(1 slash 3)
$
Valutando la relazione per una sfera solida nei tre fluidi considerati — aria ($rho approx 1.2 thin "kg/m"^3$, $mu approx 1.81 times 10^(-5) thin "Pa" dot "s"$), acqua ($rho approx 1000 thin "kg/m"^3$) e olio ($rho approx 900 thin "kg/m"^3$, con viscosità molto più elevata) — si osserva come l'aumento della viscosità $mu$ e la diminuzione della differenza di densità $rho_s - rho$ consentano di restare nel regime di Stokes ($"Re"_D lt.eq 0.1$) per raggi $a$ progressivamente maggiori passando dall'aria all'acqua e all'olio.