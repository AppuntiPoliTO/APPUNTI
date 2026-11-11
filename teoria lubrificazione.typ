#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)

#set heading(numbering: none)


// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$

// Didascalia breve sotto le figure
#let dida(body) = align(center, text(size: 9pt, fill: luma(80), body))

// ---------------------------------------------------------------
// Palette unica per tutte le figure
// ---------------------------------------------------------------
#let c-geo = black                 // pareti, assi, quote
#let c-vel = rgb("#8c3824")        // velocità e profili di velocità
#let c-norm = rgb("#1f4e8c")       // versori normali
#let c-forza = rgb("#2e6b3e")      // sforzi, forze, pressione
#let c-aux = rgb("#666666")        // linee ausiliarie e di costruzione

// ---------------------------------------------------------------
// Elementi grafici riutilizzati
// ---------------------------------------------------------------
// Freccia semplice
#let freccia(a, b, col: c-geo, sp: 0.8pt) = draw.line(
  a, b, stroke: sp + col, mark: (end: "stealth", fill: col))

// Quota (doppia freccia)
#let quota(a, b) = draw.line(
  a, b, stroke: 0.8pt + c-geo,
  mark: (start: "stealth", end: "stealth", fill: c-geo))

// Etichetta di testo
#let etichetta(pos, body, col: c-geo, anchor: "center") = draw.content(
  pos, text(size: 7pt, fill: col, body), anchor: anchor)

// Parete solida con tratteggio (sotto: true -> tratteggio verso il basso)
#let parete(x0, x1, y, sotto: true, passo: 0.55) = {
  draw.line((x0, y), (x1, y), stroke: 1pt + c-geo)
  let n = calc.floor((x1 - x0 - 0.3) / passo) + 1
  let d = if sotto { -0.2 } else { 0.2 }
  for i in range(n) {
    let x = x0 + 0.25 + i * passo
    draw.line((x, y), (x + d, y + d), stroke: 0.6pt + c-geo)
  }
}

// Profilo di velocità u = f(eta), con eta = y/e in [0, 1].
// x0: ascissa dell'asse di riferimento, y0: quota della parete inferiore,
// H: altezza del meato, s: scala delle velocità, n: numero di vettori.
#let profilo(x0, y0, f, H: 1.8, s: 1.1, n: 6) = {
  draw.line((x0, y0), (x0, y0 + H), stroke: 0.6pt + c-aux)
  let pts = range(0, 41).map(i => (x0 + s * f(i / 40), y0 + H * i / 40))
  draw.line(..pts, stroke: 1pt + c-vel)
  for i in range(0, n + 1) {
    let eta = 0.08 + 0.84 * i / n
    let u = f(eta)
    if calc.abs(u) > 0.12 {
      freccia((x0, y0 + H * eta), (x0 + s * u, y0 + H * eta), col: c-vel, sp: 0.6pt)
    }
  }
}

// Meato con profilo e verso della spinta di pressione
// k = G e^2 / (2 mu U); verso = +1 spinta verso x positive, -1 spinta verso x negative
#let caso-gradiente(y0, k, titolo, verso) = {
  let H = 1.8
  parete(0, 5.2, y0)
  parete(0, 5.2, y0 + H, sotto: false)
  profilo(2.9, y0, eta => (eta - 1) * (1 + k * eta), H: H, s: 1.2)
  etichetta((2.6, y0 + H + 0.55), titolo)
  etichetta((2.3, y0 - 0.42), $-U$, col: c-vel)
  let ym = y0 + H / 2
  let (a, b) = if verso > 0 { ((4.0, ym), (5.0, ym)) } else { ((5.0, ym), (4.0, ym)) }
  freccia(a, b, col: c-forza, sp: 1pt)
  etichetta((a.at(0), ym + 0.3), $p^+$, col: c-forza)
  etichetta((b.at(0), ym + 0.3), $p^-$, col: c-forza)
}


== Influenza della gravità sulla dinamica del moto nei fluidi a densità costante

Per analizzare l'effetto della forza di gravità in un fluido a densità $rho = "cost"$, è sempre possibile scomporre la pressione totale $p$ nella somma di un contributo idrostatico $p_"hs"$ e di una pressione dinamica (o motrice) $p^*$:

$ p = p_"hs" + p^* $

La distribuzione idrostatica della pressione soddisfa la relazione fondamentale:

$ nabla p_"hs" = rho arrow(g) $

Si osservi che $p_"hs"$ non è costante: dipende unicamente dalla coordinata verticale $z$. Al contrario, il termine $p^*(arrow(x))$ dipende in generale da tutte e tre le coordinate spaziali (e, in linea di principio, anche dal tempo $t$). Poiché il gradiente è un operatore lineare, la scomposizione vale anche per i gradienti:

$ nabla p = nabla p_"hs" + nabla p^* $

Si riprenda l'equazione di Navier-Stokes (N-S) per un fluido incomprimibile:

$ (D arrow(u))/(D t) = - 1/rho nabla p + arrow(g) + nu Delta arrow(u) $

Sostituendo la scomposizione della pressione nei termini di forza di pressione e di volume, e usando $nabla p_"hs" = rho arrow(g)$, si ricava:

$ -1/rho nabla(p_"hs" + p^*) + arrow(g) = -1/rho (rho arrow(g)) - 1/rho nabla p^* + arrow(g) = -1/rho nabla p^* $

È quindi possibile riscrivere l'equazione di Navier-Stokes nella forma compatta:

$ (D arrow(u))/(D t) = - 1/rho nabla p^* + nu Delta arrow(u) $

#nota[
  Dalla riformulazione dell'equazione di Navier-Stokes in termini di $p^*$ emergono due conseguenze fisiche fondamentali:
  1. l'accelerazione di gravità $arrow(g)$ scompare esplicitamente dall'equazione del moto;
  2. la pressione cambia significato fisico: al posto di $p$ compare la pressione motrice $p^*$, che è quella che governa effettivamente la dinamica del fluido.
]

=== Esempio di flusso viscoso: moto di Couette piano

// [DA AUDIO]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si considera un fluido viscoso compreso tra due piastre piane parallele indefinite, poste a distanza $h$ (unica dimensione geometrica caratteristica del problema). La piastra inferiore ($x_2 = 0$) è ferma, mentre la piastra superiore ($x_2 = h$) trasla nel proprio piano con velocità costante $U_e$ lungo la direzione $x_1$.
  ],
  [
    #canvas(length: 1cm, {
      // Parete inferiore (ferma) e assi
      parete(0, 7.2, 0)
      freccia((0, 0), (7.7, 0), sp: 1pt)
      freccia((0, 0), (0, 3.0), sp: 0.8pt)
      etichetta((7.75, 0), $x_1$, anchor: "west")
      etichetta((0.12, 3.0), $x_2$, anchor: "west")

      // Piastra superiore (mobile)
      draw.line((7.1, 2.5), (0.2, 2.5), (0.2, 2.2), (7.1, 2.2), stroke: 1pt + c-geo)
      draw.bezier((7.1, 2.5), (7.1, 2.35), (7.02, 2.45), (7.02, 2.40), stroke: 1pt + c-geo)
      draw.bezier((7.1, 2.35), (7.1, 2.2), (7.18, 2.30), (7.18, 2.25), stroke: 1pt + c-geo)

      // Profilo di velocità lineare
      draw.line((2.3, 0), (2.3, 2.2), stroke: 0.6pt + c-aux)
      draw.line((2.3, 0), (4.7, 2.2), stroke: 1pt + c-vel)
      freccia((2.3, 0.35), (2.68, 0.35), col: c-vel, sp: 0.6pt)
      freccia((2.3, 0.72), (3.09, 0.72), col: c-vel, sp: 0.6pt)
      freccia((2.3, 1.10), (3.50, 1.10), col: c-vel, sp: 0.6pt)
      freccia((2.3, 1.47), (3.90, 1.47), col: c-vel, sp: 0.6pt)
      freccia((2.3, 1.85), (4.32, 1.85), col: c-vel, sp: 0.6pt)

      // Velocità della piastra
      freccia((6.8, 2.35), (8.0, 2.35), col: c-vel, sp: 1pt)
      etichetta((7.45, 2.72), $arrow(U)_e$, col: c-vel, anchor: "south")

      // Versori normali uscenti dalle pareti (entranti nel fluido)
      freccia((5.44, 2.2), (5.44, 1.8), col: c-norm)
      etichetta((5.60, 1.8), $arrow(n) = (0, -1, 0)$, col: c-norm, anchor: "west")
      freccia((5.44, 0), (5.44, 0.4), col: c-norm)
      etichetta((5.60, 0.28), $arrow(n) = (0, 1, 0)$, col: c-norm, anchor: "west")

      // Quota h
      quota((0.85, 0.05), (0.85, 2.15))
      etichetta((0.70, 1.1), $h$, anchor: "east")
    })
  ]
)
#v(1em)

A differenza di un fluido ideale (che trasmette solo sforzi normali e rispetta unicamente la condizione di impermeabilità, potendo scorrere senza attrito lungo la parete), un fluido reale viscoso è in grado di trasmettere sforzi tangenziali. Vale pertanto la *condizione di aderenza* (*no-slip condition*): il fluido a contatto con una parete solida ha velocità relativa nulla rispetto ad essa, cioè ne assume la medesima velocità:

$ cases(
  u_1 (x_2 = 0) = 0,
  u_1 (x_2 = h) = U_e
) $

Si formulano le seguenti ipotesi sul campo di moto:
- regime stazionario: $partial / (partial t) = 0$;
- moto piano e unidirezionale lungo $x_1$: $arrow(u) = (u_1, 0, 0)$, con $u_2$ e $u_3$ identicamente nulli;
- invarianza lungo $x_1$ e $x_3$ per l'indefinitezza delle piastre: $partial / (partial x_1) = 0$ e $partial / (partial x_3) = 0$, per cui $u_1 = u_1 (x_2)$.

Il campo di velocità evolve linearmente con $x_2$, con gradiente costante:

$ (partial u_1)/(partial x_2) = U_e / h $

Integrando e imponendo le condizioni di aderenza, il profilo di velocità risulta:

$ u_1 (x_2) = U_e x_2 / h $

==== Tensore degli sforzi

Si calcola il tensore degli sforzi in prossimità della parete mobile $x_2 = h$:

$ lr(sigma_(i j)|)_(x_2 = h) = mat(delim: "[",
  -p + mu ((partial u_1)/(partial x_1) + (partial u_1)/(partial x_1)), mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)), mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1));
  mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)), -p + mu ((partial u_2)/(partial x_2) + (partial u_2)/(partial x_2)), mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2));
  mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1)), mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2)), -p + mu ((partial u_3)/(partial x_3) + (partial u_3)/(partial x_3))
)_(x_2 = h) $

// [DA AUDIO]
I singoli contributi viscosi $tau_(i j) = 2 mu D_(i j) = mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))$ si semplificano come segue.
- Componenti normali viscose (diagonali):

$ tau_(1 1) = 2 mu (partial u_1)/(partial x_1) = 0 quad ("poiché" u_1 "non dipende da" x_1) $

$ tau_(2 2) = 2 mu (partial u_2)/(partial x_2) = 0, quad tau_(3 3) = 2 mu (partial u_3)/(partial x_3) = 0 quad ("poiché" u_2 = u_3 = 0) $

  Sulla diagonale principale sopravvive dunque il solo contributo isotropo della pressione $-p$.
- Componenti tangenziali nel piano $(x_1, x_2)$:

$ tau_(1 2) = mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)) = mu (U_e / h + 0) = mu U_e / h $

  Per la simmetria del tensore degli sforzi si ha $tau_(2 1) = tau_(1 2) = mu U_e / h$. Poiché il gradiente di velocità è uniforme, tale sforzo tangenziale è costante in ogni punto del dominio fluido (sia in $x_2 = 0$ sia in $x_2 = h$).
- Componenti tangenziali fuori piano:

$ tau_(1 3) = tau_(3 1) = mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1)) = 0, quad tau_(2 3) = tau_(3 2) = mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2)) = 0 $

  poiché $u_2 = u_3 = 0$ e nessuna grandezza varia lungo $x_3$.

Nel caso specifico il tensore si riduce quindi a:

$
lr(sigma_(i j)|)_(x_2 = h) = mat(delim: "[",
  -p, lr(mu (partial u_1)/(partial x_2)|)_(x_2 = h), 0;
  lr(mu (partial u_1)/(partial x_2)|)_(x_2 = h), -p, 0;
  0, 0, -p
)
= mat(delim: "[",
  -p, mu U_e / h, 0;
  mu U_e / h, -p, 0;
  0, 0, -p
)
$

==== Forza per unità di superficie

// [DA AUDIO]
Poiché le piastre hanno estensione infinita lungo $x_1$ e $x_3$, la forza totale risulterebbe infinita; ha quindi senso calcolare unicamente la *forza per unità di superficie*, ovvero il vettore tensione $arrow(t) = overline(overline(sigma)) dot arrow(n)$, di componenti $t_i = sigma_(i j) n_j$.

Il verso del versore normale $arrow(n)$ stabilisce chi agisce su chi: $arrow(t)$ è la forza esercitata dal mezzo verso cui punta $arrow(n)$ sul mezzo che si trova dall'altra parte della superficie. Scambiare il verso di $arrow(n)$ equivale quindi a passare dall'azione alla reazione.

*Parete mobile ($x_2 = h$).* La forza per unità di superficie esercitata dalla piastra sul fluido si ottiene con la normale uscente dal fluido, $arrow(n) = (0, 1, 0)^T$:

$
t_i = sigma_(i j) n_j
= mat(delim: "[",
  -p, mu U_e / h, 0;
  mu U_e / h, -p, 0;
  0, 0, -p
) mat(delim: "[", 0; 1; 0)
= (mu U_e / h, -p, 0)
$

La componente tangenziale è lo *sforzo a parete* $tau_w = mu U_e / h$. Con la normale entrante nel fluido $arrow(n) = (0, -1, 0)^T$, quella disegnata in figura sulla piastra superiore, si ottiene il vettore opposto, cioè la forza del fluido sulla piastra.

*Parete ferma ($x_2 = 0$).* Anche qui l'orientazione di $arrow(n)$ distingue l'azione del fluido sulla parete dalla reazione della parete sul fluido:
1. *Forza per unità di superficie esercitata dal fluido sulla parete inferiore*: si utilizza il versore normale uscente dalla parete, $arrow(n) = (0, 1, 0)^T$, ottenendo:

$ arrow(t)_("fluido" arrow.r "parete") = (mu U_e / h, -p, 0) $

   Il fluido esercita sulla parete inferiore una componente tangenziale positiva $+mu U_e / h$ lungo $x_1$ (tende a trascinare la parete nel verso del moto) e una componente normale negativa $-p$ lungo $x_2$ (schiaccia la parete verso il basso).
2. *Forza per unità di superficie esercitata dalla parete inferiore sul fluido*: per il principio di azione e reazione si utilizza il versore normale opposto, $arrow(n) = (0, -1, 0)^T$, ottenendo:

$ arrow(t)_("parete" arrow.r "fluido") = mat(delim: "[",
  -p, mu U_e / h, 0;
  mu U_e / h, -p, 0;
  0, 0, -p
) mat(delim: "[", 0; -1; 0) = (-mu U_e / h, p, 0) $

   La parete inferiore reagisce sostenendo il fluido con una pressione normale $+p$ diretta lungo $+x_2$ ed esercitando uno sforzo tangenziale $-mu U_e / h$ diretto lungo $-x_1$, ovvero opposto al moto, che tende a frenare il fluido.

// [DA AUDIO]
#v(0.5em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #canvas(length: 1cm, {
      // Titolo schema 1
      draw.content((3.0, 2.3), text(size: 8pt, weight: "bold")[Fluido $arrow.r$ Parete ($arrow(n) = (0, 1, 0)$)], anchor: "center")

      // Parete inferiore
      parete(0.5, 5.3, 1.0)
      freccia((0.5, 1.0), (5.5, 1.0), sp: 1pt)
      etichetta((5.6, 1.0), $x_1$, anchor: "west")

      // Versore normale uscente dalla parete (verso l'alto)
      freccia((1.5, 1.0), (1.5, 1.8), col: c-norm)
      etichetta((1.4, 1.6), $arrow(n)$, col: c-norm, anchor: "east")

      // Componente tangenziale +mu Ue / h
      freccia((2.8, 1.0), (4.6, 1.0), col: c-forza, sp: 1pt)
      etichetta((3.7, 1.25), $mu U_e / h$, col: c-forza, anchor: "south")

      // Componente normale -p
      freccia((2.8, 1.0), (2.8, -0.4), col: c-forza, sp: 1pt)
      etichetta((2.65, 0.3), $-p$, col: c-forza, anchor: "east")

      // Linee di proiezione
      draw.line((4.6, 1.0), (4.6, -0.4), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
      draw.line((2.8, -0.4), (4.6, -0.4), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))

      // Vettore risultante
      freccia((2.8, 1.0), (4.6, -0.4), col: c-forza, sp: 1.5pt)
      etichetta((4.7, -0.45), $arrow(t)_("fluido" arrow.r "parete")$, col: c-forza, anchor: "west")
    })
  ],
  [
    #canvas(length: 1cm, {
      // Titolo schema 2
      draw.content((3.0, 2.6), text(size: 8pt, weight: "bold")[Parete $arrow.r$ Fluido ($arrow(n) = (0, -1, 0)$)], anchor: "center")

      // Parete inferiore
      parete(0.5, 5.3, 0.2)
      freccia((0.5, 0.2), (5.5, 0.2), sp: 1pt)
      etichetta((5.6, 0.2), $x_1$, anchor: "west")

      // Versore normale entrante nella parete (verso il basso)
      freccia((4.8, 0.2), (4.8, -0.6), col: c-norm)
      etichetta((4.9, -0.3), $arrow(n)$, col: c-norm, anchor: "west")

      // Componente tangenziale -mu Ue / h (opposta al moto)
      freccia((3.4, 0.2), (1.6, 0.2), col: c-forza, sp: 1pt)
      etichetta((2.5, -0.05), $-mu U_e / h$, col: c-forza, anchor: "north")

      // Componente normale +p (verso l'alto)
      freccia((3.4, 0.2), (3.4, 1.6), col: c-forza, sp: 1pt)
      etichetta((3.55, 0.9), $+p$, col: c-forza, anchor: "west")

      // Linee di proiezione
      draw.line((1.6, 0.2), (1.6, 1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
      draw.line((3.4, 1.6), (1.6, 1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))

      // Vettore risultante
      freccia((3.4, 0.2), (1.6, 1.6), col: c-forza, sp: 1.5pt)
      etichetta((1.5, 1.75), $arrow(t)_("parete" arrow.r "fluido")$, col: c-forza, anchor: "east")
    })
  ]
)
#dida[Parete inferiore: azione del fluido sulla parete (a sinistra) e reazione della parete sul fluido (a destra).]

= Esempio: Teoria della lubrificazione

== Equazioni di bilancio di quantità di moto e condizioni al limite

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si consideri il moto stazionario di un fluido viscoso confinato tra due pareti piane parallele poste a distanza $e$: la parete inferiore ($y = 0$) si muove con velocità $(-U, 0, 0)$, quella superiore ($y = e$) è ferma. Il problema consiste nello scrivere le equazioni di bilancio di quantità di moto con le relative condizioni al limite, cercando una soluzione stazionaria del tipo:

    $ arrow(u) = mat(u(y); 0; 0) quad "e" quad p = p(x) $

    e mostrando che il gradiente longitudinale di pressione $G = (dif p)/(dif x)$ è costante.
  ],
  [
    #canvas(length: 1cm, {
      let H = 3.0

      // Pareti
      parete(-2.0, 3.0, 0)
      parete(-2.0, 3.0, H, sotto: false)

      // Profilo di velocità
      profilo(0, 0, eta => (eta - 1) * (1 - 3 * eta), H: H, s: 1.4, n: 8)

      // Assi
      freccia((-2.0, 0), (3.8, 0), sp: 1pt)
      freccia((0, 0), (0, H + 0.7), sp: 1pt)
      etichetta((3.9, 0), $x$, anchor: "west")
      etichetta((0.15, H + 0.7), $y$, anchor: "west")

      // Quota e
      quota((2.3, 0.05), (2.3, H - 0.05))
      etichetta((2.45, H / 2), $e$, anchor: "west")

      // Etichette
      etichetta((-1.9, H + 0.45), $y = e$, anchor: "west")
      etichetta((-1.9, -0.45), $y = 0$, anchor: "west")
      etichetta((0.3, -0.45), $(-U, 0, 0)$, col: c-vel)
    })
  ]
)

Il sistema completo delle equazioni di Navier-Stokes e di continuità per un fluido incomprimibile è dato da:

$ cases(
  rho ((partial arrow(u))/(partial t) + arrow(u) dot nabla arrow(u)) = -nabla p + mu Delta arrow(u),
  nabla dot arrow(u) = 0
) $

Le condizioni al contorno di aderenza alle pareti impongono:
- $arrow(u) = (-U, 0, 0)$ per $y = 0$ (parete inferiore in moto verso le $x$ negative);
- $arrow(u) = 0$ per $y = e$ (parete superiore ferma).

Si cerca una soluzione della forma $arrow(u) = (u(y), 0, 0)^T$ in regime stazionario, per cui $(partial arrow(u))/(partial t) = 0$. Il termine convettivo non lineare vale:

$ arrow(u) dot nabla arrow(u) = u_j (partial u_i)/(partial x_j) = (u_x partial/(partial x) + u_y partial/(partial y) + u_z partial/(partial z)) arrow(u) = 0 $

Esso è identicamente nullo poiché $u_y = u_z = 0$ e la componente $u_x = u(y)$ dipende unicamente dalla coordinata trasversale $y$. Analogamente, il termine diffusivo viscoso si semplifica come segue:

$ mu Delta arrow(u) = mu ((partial^2 u)/(partial x^2) + (partial^2 u)/(partial y^2) + (partial^2 u)/(partial z^2), 0, 0) = mu ((dif^2 u)/(dif y^2), 0, 0) $

Dalle componenti lungo gli assi $y$ e $z$ dell'equazione di quantità di moto si deduce immediatamente che il gradiente di pressione trasversale è nullo:

$ (partial p)/(partial y) = (partial p)/(partial z) = 0 quad arrow.r.double quad p = p(x) $

La proiezione lungo l'asse $x$ si riduce pertanto a:

$ (dif^2 u)/(dif y^2) = (G(x))/mu $

Il membro di sinistra è funzione della sola variabile $y$, mentre quello di destra dipende unicamente da $x$: un'uguaglianza del tipo $f(y) = g(x)$ può essere verificata in ogni punto del dominio solo se entrambi i membri sono uguali a una medesima costante:

$ f(y) = g(x) = "cost" quad arrow.r.double quad G = (dif p)/(dif x) = "cost" $

Integrando due volte rispetto a $y$ l'equazione differenziale ordinaria $(dif^2 u)/(dif y^2) = G/mu$, si ottiene:

$ (dif u)/(dif y) = G/mu y + A quad arrow.r.double quad u(y) = G/(2 mu) y^2 + A y + B $

Le costanti di integrazione $A$ e $B$ si determinano imponendo le condizioni al contorno in $y = 0$ e $y = e$:

$ u(0) = -U quad arrow.r.double quad B = -U $

$ u(e) = 0 quad arrow.r.double quad 0 = G/(2 mu) e^2 + A e - U quad arrow.r.double quad A = U/e - (G e)/(2 mu) $

Sostituendo le costanti nell'espressione di $u(y)$ e raccogliendo i termini, si giunge al profilo di velocità completo:

$ u(y) = G/(2 mu) y^2 + (U/e - (G e)/(2 mu)) y - U = U/e (y - e) + G/(2 mu) y (y - e) $

== Calcolo della portata e studio del profilo di velocità

La portata volumetrica per unità di larghezza trasversale $Q$ si ottiene integrando il profilo di velocità $u(y)$ lungo l'altezza del meato $y in [0, e]$:

$
Q &= integral_0^e u dif y = integral_0^e [U/e (y - e) + G/(2 mu) (y^2 - e y)] dif y \
  &= [U/e y^2/2 - U y]_0^e + [G/(6 mu) y^3 - (G e)/(4 mu) y^2]_0^e \
  &= (U e)/2 - U e + (G e^3)/(6 mu) - (G e^3)/(4 mu) = -1/2 U e - 1/12 (G e^3)/mu
$

Il profilo di velocità può essere riletto come sovrapposizione lineare di due contributi fisici distinti:

$ u(y) = underbrace(1/2 G/mu (y^2 - e y), "parabolica") + underbrace(U/e (y - e), "lineare") $

#align(center, canvas(length: 1cm, {
  let H = 1.8
  let k = -3
  let pannello(x0, f, nome) = {
    parete(x0, x0 + 3.2, 0)
    parete(x0, x0 + 3.2, H, sotto: false)
    profilo(x0 + 1.9, 0, f, H: H, s: 1.1)
    etichetta((x0 + 1.6, -0.6), nome)
  }
  pannello(0, eta => k * eta * (eta - 1), [parabolica])
  draw.content((3.6, H / 2), text(size: 12pt)[$+$])
  pannello(4.0, eta => eta - 1, [lineare])
  draw.content((7.6, H / 2), text(size: 12pt)[$=$])
  pannello(8.0, eta => (eta - 1) * (1 + k * eta), [$u(y)$])
}))
#dida[Sovrapposizione dei due contributi (disegnata per $G < 0$).]

Al variare del gradiente di pressione $G = (dif p)/(dif x)$ si distinguono i seguenti regimi caratteristici:
- *Caso a) $G = 0$*: in assenza di gradiente di pressione imposto, il profilo si riduce alla sola componente lineare (moto alla Couette puro):
  $ u(y) = U/e (y - e) $
  // [DA AUDIO]
  Si ritrova esattamente il campo di moto lineare analizzato nell'esercizio precedente, in cui la velocità varia linearmente da $u(e) = 0$ sulla parete superiore ferma fino a $u(0) = -U$ sulla piastra inferiore mobile (ovvero da $0$ a $-1$ in termini della velocità adimensionale $u / U$).
- *Caso b) $G != 0$*: sviluppando i prodotti si ha la combinazione quadratica completa:
  $ u(y) = 1/2 G/mu y^2 - 1/2 G/mu y e + (U y)/e - U = 1/2 G/mu y^2 + y (U/e - 1/2 G/mu e) - U $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il segno di $G = (dif p)/(dif x)$ va confrontato con il trascinamento della parete inferiore, che si muove con velocità $-U$ nella direzione delle $x$ negative:
    // [RIORDINATO DA AUDIO]
    - *Caso $G = (dif p)/(dif x) > 0$*: la pressione cresce lungo $x$ ($p^-$ a sinistra, $p^+$ a destra) e spinge il fluido verso le $x$ negative; il gradiente *sostiene il moto* della parete inferiore.
      // [DA AUDIO]
      Infatti, alle piccole scale il moto indotto dal gradiente di pressione è sempre diretto verso $-nabla p$, ossia dalla regione a pressione più alta ($p^+$) a quella a pressione più bassa ($p^-$). Poiché per $G > 0$ tale spinta è diretta lungo le $x$ negative, il contributo del gradiente di pressione si somma a quello indotto dallo scorrimento della lamina inferiore, determinando uno "spanciamento" del profilo di velocità verso sinistra. Se $G > 0$ è sufficientemente grande, la velocità del fluido all'interno del meato può superare in modulo la velocità stessa della piastra ($|u(y)| > U$, ovvero $u(y) < -U$), pur continuando a rispettare la condizione di aderenza $u(0) = -U$ sulla parete inferiore.
    - *Caso $G = (dif p)/(dif x) < 0$*: la pressione diminuisce lungo $x$ ($p^+$ a sinistra, $p^-$ a destra) e spinge il fluido verso le $x$ positive; il gradiente di pressione *si oppone al moto* di trascinamento della parete inferiore.
      // [DA AUDIO]
      In questo regime il contributo parabolico incurva il profilo di velocità verso le $x$ positive: al crescere di $|G|$ il flusso verso sinistra viene progressivamente frenato fino a poter presentare un'inversione di moto ($u(y) > 0$) nella porzione superiore del canale.
  ],
  [
    #canvas(length: 1cm, {
      caso-gradiente(3.4, 2, [$G > 0$: sostiene il trascinamento], -1)
      caso-gradiente(0, -3, [$G < 0$: si oppone al trascinamento], 1)
    })
  ]
)

// [DA AUDIO]
=== Calcolo degli sforzi tangenziali alle pareti

A partire dal profilo di velocità $u(y)$, la componente tangenziale dello sforzo viscoso nel fluido è data da:

$ tau_(x y)(y) = mu (dif u)/(dif y) = G y + mu U/e - 1/2 G e $

Valutando tale espressione in corrispondenza delle due pareti che delimitano il meato si ottiene:
- sulla piastra inferiore ($y = 0$):

$ lr(tau_(x y)|)_(y = 0) = mu lr((dif u)/(dif y)|)_(y = 0) = mu U/e - 1/2 G e $

- sulla parete superiore ($y = e$):

$ lr(tau_(x y)|)_(y = e) = mu lr((dif u)/(dif y)|)_(y = e) = mu U/e + 1/2 G e $

// [DA AUDIO]
// Grafico renderizzabile con CeTZ: famiglie di profili di velocità al variare di G > 0, G = 0 e G < 0
#align(center, canvas(length: 1cm, {
  let H = 2.6
  parete(0, 6.5, 0)
  parete(0, 6.5, H, sotto: false)

  // Asse verticale di riferimento (u = 0) e pareti
  draw.line((3.5, 0), (3.5, H), stroke: 0.6pt + c-aux)
  freccia((3.5, 0), (3.5, H + 0.5), sp: 0.8pt)
  etichetta((3.65, H + 0.5), $y$, anchor: "west")

  // Retta limite G = 0 (Couette puro)
  let pts0 = range(0, 41).map(i => (3.5 + 1.5 * (i / 40 - 1), H * i / 40))
  draw.line(..pts0, stroke: (paint: c-geo, thickness: 1pt, dash: "dashed"))
  etichetta((2.65, 1.35), $G = 0$, col: c-geo, anchor: "south-east")

  // Famiglia di curve G > 0 (a sinistra della retta G = 0)
  for k in (1.2, 2.5) {
    let pts = range(0, 41).map(i => {
      let eta = i / 40
      (3.5 + 1.5 * (eta - 1) * (1 + k * eta), H * eta)
    })
    draw.line(..pts, stroke: 1pt + c-vel)
  }
  etichetta((1.1, 1.6), $G > 0$, col: c-vel)

  // Famiglia di curve G < 0 (a destra della retta G = 0)
  for k in (-1.5, -3.0) {
    let pts = range(0, 41).map(i => {
      let eta = i / 40
      (3.5 + 1.5 * (eta - 1) * (1 + k * eta), H * eta)
    })
    draw.line(..pts, stroke: 1pt + c-norm)
  }
  etichetta((4.6, 1.6), $G < 0$, col: c-norm)

  // Condizione al contorno in y = 0
  freccia((3.5, 0), (2.0, 0), col: c-vel, sp: 1pt)
  etichetta((2.0, -0.35), $-U$, col: c-vel)
  etichetta((3.5, -0.35), $0$, col: c-geo)
}))
#dida[Famiglie di profili di velocità $u(y)$ al variare del segno e dell'intensità di $G$, separate dal profilo lineare $G = 0$.]

// [DA AUDIO]
== Estensione al caso di piastra di lunghezza finita e analisi degli ordini di grandezza

Si estende ora qualitativamente il problema al caso reale in cui una delle due pareti (ad esempio la piastra superiore) abbia un'estensione longitudinale finita $L$ e scorra al di sopra di un piano separata da un sottile strato di fluido incomprimibile di spessore $e$.

L'ipotesi fondamentale alla base della teoria della lubrificazione è la *separazione delle scale geometriche*: la lunghezza longitudinale $L$ della piastra è molto maggiore dello spessore trasversale $e$ del meato fluido:

$ L >> e quad arrow.r.double quad e / L << 1 $

Tale separazione di scale consente di individuare due lunghezze caratteristiche distinte:
- la scala longitudinale $L$, lungo la quale si instaura la variazione di pressione $Delta p$;
- la scala trasversale $e$, lungo la quale si sviluppano i gradienti di velocità e gli sforzi viscosi.

Indicando con $Delta p$ (o semplicemente $p$) l'ordine di grandezza della variazione di pressione lungo la piastra, l'ordine di grandezza del gradiente longitudinale di pressione $G = (dif p)/(dif x)$ è dato da:

$ G = (dif p)/(dif x) tilde (Delta p)/L quad arrow.r.double quad Delta p tilde G L $

Dall'espressione dello sforzo tangenziale ricavata in precedenza ($tau_(x y) = mu U / e plus.minus 1/2 G e$), si osserva che l'ordine di grandezza degli sforzi viscosi tangenziali $tau$ associati al gradiente di pressione è:

$ tau tilde G e $

=== Forza a parete e coefficiente di attrito

Si consideri la forza per unità di superficie (vettore tensione $arrow(t) = overline(overline(sigma)) dot arrow(n)$) esercitata dal fluido sulla parete sottostante in $y = 0$ (con versore normale uscente dalla parete $arrow(n) = (0, 1, 0)^T$):

$ arrow(t) = mat(t_x; t_y; 0) = mat(tau_0; -p_0; 0) $

Le due componenti hanno una natura fisica ben distinta:
- la componente orizzontale $t_x = tau_0$ lungo $x$ è associata unicamente agli sforzi tangenziali viscosi (forza di attrito);
- la componente verticale $t_y = -p_0$ lungo $y$ è associata unicamente alla pressione del fluido (forza normale portante che sostiene il peso della piastra sovrastante).

Il *coefficiente di attrito* $f$ è definito come il rapporto tra il modulo della componente tangenziale e quello della componente normale della forza a parete:

$ f = (|t_x|)/(|t_y|) $

Sostituendo le stime degli ordini di grandezza $|t_x| tilde tau tilde G e$ e $|t_y| tilde Delta p tilde G L$, si ottiene l'ordine di grandezza del coefficiente di attrito idrodinamico:

$ f = (|t_x|)/(|t_y|) tilde (G e)/(G L) = e / L << 1 $

#nota[
  Affinché in una piastra di lunghezza finita $L$ si instauri effettivamente un gradiente di pressione capace di sostenere il carico verticale, la piastra non può essere rigorosamente parallela al piano ma deve risultare leggermente inclinata (meato convergente).

  Il risultato $f tilde e / L << 1$ costituisce il fondamento fisico della *teoria della lubrificazione*: grazie alla separazione tra la scala longitudinale $L$ (su cui nasce il gradiente di pressione) e la scala verticale $e$ (su cui nasce il gradiente di velocità), gli sforzi tangenziali viscosi $tau$ lungo $x$ risultano di un ordine di grandezza molto inferiore (pari a $e / L$) rispetto alla pressione $p$ che sostiene il peso della piastra, abbattendo drasticamente l'attrito.
]

// [DA AUDIO]
// Grafico renderizzabile con CeTZ: piastra finita di lunghezza L su meato di spessore e, con componenti t_x e t_y della forza a parete
#align(center, canvas(length: 1cm, {
  // Parete inferiore
  parete(0, 8.5, 0)
  freccia((0, 0), (9.0, 0), sp: 0.8pt)
  etichetta((9.1, 0), $x$, anchor: "west")

  // Piastra superiore finita di lunghezza L (leggermente inclinata / parallela a distanza e)
  draw.rect((1.2, 1.2), (7.2, 1.6), fill: luma(230), stroke: 1pt + c-geo)
  quota((1.2, 1.9), (7.2, 1.9))
  etichetta((4.2, 2.15), $L$)

  // Quota spessore meato e
  quota((0.8, 0.05), (0.8, 1.15))
  etichetta((0.65, 0.6), $e$, anchor: "east")

  // Versore normale in y = 0
  freccia((2.5, 0), (2.5, 0.7), col: c-norm)
  etichetta((2.35, 0.5), $arrow(n)$, col: c-norm, anchor: "east")

  // Componenti della forza per unità di superficie esercitata dal fluido sulla parete inferiore
  let x0 = 4.5
  freccia((x0, 0), (x0 + 1.4, 0), col: c-forza, sp: 1pt)
  etichetta((x0 + 0.7, 0.25), $t_x = tau_0 tilde G e$, col: c-forza)

  freccia((x0, 0), (x0, -1.6), col: c-forza, sp: 1pt)
  etichetta((x0 - 0.15, -0.8), $t_y = -p_0 tilde G L$, col: c-forza, anchor: "east")

  draw.line((x0 + 1.4, 0), (x0 + 1.4, -1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  draw.line((x0, -1.6), (x0 + 1.4, -1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  freccia((x0, 0), (x0 + 1.4, -1.6), col: c-forza, sp: 1.4pt)
  etichetta((x0 + 1.55, -1.6), $arrow(t)$, col: c-forza, anchor: "west")
}))
#dida[Separazione di scale ($L >> e$) e scomposizione della forza per unità di superficie $arrow(t)$ esercitata dal fluido sulla parete inferiore.]


// ===============================================================
// PARTE 2 — condotte, perdite di carico, moto di Poiseuille
// ===============================================================

// Numero di Reynolds
#let Rey = math.upright("Re")
= Energia meccanica nei fluidi viscosi

Il bilancio di energia cinetica si ottiene moltiplicando scalarmente l'equazione di Navier-Stokes per $u_i$:

$ u_i dot (rho (D u_i)/(D t)) = u_i dot (partial/(partial x_j) sigma_(i j) + rho g_i) $

// [DA AUDIO]
Lo scopo di questa analisi è estendere il bilancio di energia meccanica — che nel caso dei fluidi ideali conduce al teorema di Bernoulli — al caso dei fluidi reali, mettendo in luce i nuovi termini introdotti dalla viscosità. A tal fine si parte dall'equazione generale di bilancio della quantità di moto di Cauchy:

$ rho (D u_i)/(D t) = rho g_i + (partial sigma_(i j))/(partial x_j) $

distinguendo due leggi costitutive per il tensore degli sforzi $sigma_(i j)$:
- *Caso A (fluido ideale)*: $sigma_(i j) = -p delta_(i j)$, in cui agisce il solo contributo isotropo delle pressioni;
- *Caso B (fluido reale viscoso newtoniano)*: $sigma_(i j) = -p delta_(i j) + tau_(i j) = -p delta_(i j) + 2 mu D_(i j)$.

Sviluppo a sinistra e includo $psi$, potenziale gravitazionale $g_i = -nabla psi = -partial/(partial x_i) psi$, essendo $psi = -g_i x_i = g x_3$:

$
  (D)/(D t) (frac(rho u^2, 2)) &= u_i dot (partial/(partial x_j) sigma_(i j) - rho (partial psi)/(partial x_i)) \
  partial/(partial t) (frac(rho u^2, 2)) &= -u_j partial/(partial x_j) (frac(rho u^2, 2)) - u_i rho (partial psi)/(partial x_i) + u_i (partial sigma_(i j))/(partial x_j)
$ <eq:bilancio_ec>

essendo $u^2 = u_1 u_1 + u_2 u_2 + u_3 u_3 = u_i dot u_i$.

// [DA AUDIO]
Nel passaggio precedente si è assunto che la densità sia costante ($rho = "cost"$), cosicché $rho$ può essere portato dentro gli operatori di derivata. In regime stazionario ($partial / (partial t) = 0$), raccogliendo l'energia cinetica e il potenziale gravitazionale dentro la derivata spaziale e lasciando momentaneamente inesplicitato il tensore degli sforzi, l'equazione (eq:bilancio_ec) si scrive:

$ 0 = -u_i partial/(partial x_i) (rho u^2 / 2 + rho psi) + u_i (partial sigma_(i j))/(partial x_j) $

Per un fluido ideale, non viscoso:

$ sigma_(i j) = -p delta_(i j) $

cosicché $u_i (partial sigma_(i j))/(partial x_j) = -u_i partial/(partial x_j) (p delta_(i j)) = -u_i (partial p)/(partial x_i)$.
Il bilancio di energia cinetica diviene:

$ partial/(partial t) (rho u^2 / 2) = -u_j partial/(partial x_j) [underbrace(rho u^2 / 2 + rho psi + p, cal(H): "carico")] $

// [DA AUDIO]
=== Caso A: fluido ideale in forma differenziale

In regime stazionario ($partial / (partial t) = 0$), il bilancio per un fluido ideale si riduce a:

$ u_i (partial cal(H))/(partial x_i) = 0 $

Tale relazione esprime il *teorema di Bernoulli*: il carico totale per unità di volume $cal(H) = rho u^2 / 2 + rho psi + p$ si mantiene costante lungo le linee di corrente.

Applicando la regola di derivazione del prodotto (di Leibniz), il primo membro può essere riscritto come:

$ u_i (partial cal(H))/(partial x_i) = partial/(partial x_i) (u_i cal(H)) - cal(H) (partial u_i)/(partial x_i) = 0 $

Poiché il fluido è incomprimibile ($rho = "cost"$), l'equazione di continuità impone che la divergenza della velocità sia identicamente nulla, $(partial u_i)/(partial x_i) = 0$. L'equazione differenziale del bilancio di energia meccanica nel Caso A assume pertanto la forma conservativa:

$ partial/(partial x_i) (u_i cal(H)) = nabla dot (arrow(u) cal(H)) = 0 $

// [DA AUDIO]
=== Caso A: formulazione integrale per una condotta orizzontale

Per passare dalla forma differenziale $partial (u_i cal(H)) / (partial x_i) = 0$ a una formulazione integrale, si considera il moto stazionario all'interno di una condotta cilindrica orizzontale. Si definisce un volume di controllo $V$ delimitato dalla sezione di ingresso $S_1$, dalla sezione di uscita $S_2$ e dalla superficie laterale solida della parete del tubo $S_w$ (*wall*).

Integrando l'equazione differenziale sul volume $V$ e applicando il teorema della divergenza (di Gauss), si trasforma l'integrale di volume nella somma di tre integrali di superficie:

$ integral_V partial/(partial x_i) (u_i cal(H)) dif V = integral_S u_i cal(H) n_i dif S = integral_(S_1) u_i cal(H) n_i dif S + integral_(S_2) u_i cal(H) n_i dif S + integral_(S_w) u_i cal(H) n_i dif S = 0 $

Sulla parete solida $S_w$, trattandosi di un fluido ideale, non vale la condizione di aderenza ($arrow(u) = 0$), ma vale comunque la *condizione di impermeabilità*: la velocità del fluido è puramente tangenziale alla parete e quindi ortogonale al versore normale $arrow(n)$, ovvero $arrow(u) dot arrow(n) = u_i n_i = 0$. Di conseguenza il flusso attraverso la parete laterale è nullo:

$ integral_(S_w) u_i cal(H) n_i dif S = 0 quad arrow.r.double quad integral_(S_1) u_i cal(H) n_i dif S + integral_(S_2) u_i cal(H) n_i dif S = 0 $

Si introduce la *portata volumetrica* (o flusso di volume) $Q_v$ attraverso la sezione della condotta:

$ Q_v = integral_(S_2) u_i n_i dif S $

che per la conservazione della massa a densità costante è la medesima tra ingresso e uscita ($Q_(v, 1) = Q_(v, 2) = Q_v$). Si definisce quindi il *carico medio sulla sezione* $H$, pesato sul flusso di volume:

$ H = 1/Q_v integral_S cal(H) |u_i n_i| dif S $

Tenendo conto dell'orientazione dei versori normali uscenti dal volume di controllo:
- sulla sezione di ingresso $S_1$, il vettore velocità $arrow(u)$ e il versore normale uscente $arrow(n)_1$ hanno verso opposto ($u_i n_i < 0$), per cui $integral_(S_1) cal(H) u_i n_i dif S = -Q_v H_1$;
- sulla sezione di uscita $S_2$, la velocità $arrow(u)$ e la normale uscente $arrow(n)_2$ hanno verso concorde ($u_i n_i > 0$), per cui $integral_(S_2) cal(H) u_i n_i dif S = +Q_v H_2$.

Il bilancio integrale per un fluido ideale diventa quindi:

$ -Q_v H_1 + Q_v H_2 = 0 quad arrow.r.double quad Q_v (H_2 - H_1) = 0 quad arrow.r.double quad H_2 = H_1 $

Nel caso ideale, pertanto, il carico medio alla sezione di uscita è uguale al carico medio alla sezione di entrata: l'energia meccanica si conserva integralmente lungo la condotta.

Nelle applicazioni ingegneristiche (in cui si studiano condotte lunghe anche chilometri e non interessa il dettaglio del profilo locale di velocità) si definisce la *velocità media di portata* (*bulk velocity*):

$ U_b = Q_v / S $

esprimendo il carico medio sulla sezione nella forma pratica:

$ H = 1/2 rho U_b^2 + p + rho g z $

In una condotta a sezione circolare costante ($S = "cost"$), essendo $Q_v = "cost"$, anche la velocità media $U_b$ è costante lungo il tubo ($U_(b, 1) = U_(b, 2)$); se inoltre la condotta è orizzontale, la quota $z$ è anch'essa costante ($z_1 = z_2$). Di conseguenza, una eventuale differenza di carico $H_1 - H_2$ tra le sezioni $1$ e $2$ può essere indotta unicamente da una variazione di pressione $p_1 - p_2$.

#nota[
  *Confronto con l'esperienza e concetto di perdita di carico.* Secondo il modello di fluido ideale (teorema di Bernoulli), misurando la pressione a parete nelle sezioni $S_1$ e $S_2$ di una condotta orizzontale a sezione costante si dovrebbe rilevare $p_1 = p_2$ ($H_1 = H_2$).

  Nella realtà sperimentale, con qualunque fluido reale si misura sistematicamente $H_2 < H_1$ (ossia $p_2 < p_1$). Si produce dunque una *perdita di carico* $Delta H = H_1 - H_2 > 0$, ovvero una dissipazione irreversibile di energia meccanica sottratta al fluido durante il moto.
]

// [DA AUDIO]
// Grafico renderizzabile con CeTZ: condotta cilindrica orizzontale con volume di controllo V, sezioni S1, S2, parete Sw, versori normali e prese di pressione
#align(center, canvas(length: 1cm, {
  // Pareti superiore e inferiore della condotta (Sw)
  draw.line((1.0, 2.2), (8.0, 2.2), stroke: 1.2pt + black)
  draw.line((1.0, 0.2), (8.0, 0.2), stroke: 1.2pt + black)

  // Sezioni S1 (ingresso) e S2 (uscita) tratteggiate
  draw.line((2.2, 0.2), (2.2, 2.2), stroke: (paint: rgb("#1f4e8c"), thickness: 1pt, dash: "dashed"))
  draw.line((6.8, 0.2), (6.8, 2.2), stroke: (paint: rgb("#1f4e8c"), thickness: 1pt, dash: "dashed"))

  // Etichette superfici e volume
  draw.content((2.2, -0.2), text(size: 8pt, fill: rgb("#1f4e8c"))[$S_1$])
  draw.content((6.8, -0.2), text(size: 8pt, fill: rgb("#1f4e8c"))[$S_2$])
  draw.content((4.5, 2.55), text(size: 8pt)[$S_w$ (parete)])
  draw.content((4.5, 1.2), text(size: 9pt)[$V$])

  // Versori normali uscenti n1, n2, nw
  draw.line((2.2, 1.2), (1.3, 1.2), stroke: 0.9pt + rgb("#1f4e8c"), mark: (end: "stealth", fill: rgb("#1f4e8c")))
  draw.content((1.3, 1.5), text(size: 8pt, fill: rgb("#1f4e8c"))[$arrow(n)_1$])

  draw.line((6.8, 1.2), (7.7, 1.2), stroke: 0.9pt + rgb("#1f4e8c"), mark: (end: "stealth", fill: rgb("#1f4e8c")))
  draw.content((7.7, 1.5), text(size: 8pt, fill: rgb("#1f4e8c"))[$arrow(n)_2$])

  draw.line((4.5, 0.2), (4.5, -0.5), stroke: 0.9pt + rgb("#1f4e8c"), mark: (end: "stealth", fill: rgb("#1f4e8c")))
  draw.content((4.95, -0.35), text(size: 8pt, fill: rgb("#1f4e8c"))[$arrow(n)_w$])

  // Vettori velocità media Ub in S1 e S2
  draw.line((1.5, 0.7), (2.9, 0.7), stroke: 1pt + rgb("#8c3824"), mark: (end: "stealth", fill: rgb("#8c3824")))
  draw.content((2.9, 0.45), text(size: 8pt, fill: rgb("#8c3824"))[$arrow(U)_b$])

  draw.line((6.1, 0.7), (7.5, 0.7), stroke: 1pt + rgb("#8c3824"), mark: (end: "stealth", fill: rgb("#8c3824")))
  draw.content((7.5, 0.45), text(size: 8pt, fill: rgb("#8c3824"))[$arrow(U)_b$])

  // Prese di pressione p1 e p2 a parete
  draw.line((2.2, 2.2), (2.2, 2.8), stroke: 0.8pt + rgb("#2e6b3e"))
  draw.circle((2.2, 3.05), radius: 0.25, stroke: 0.8pt + rgb("#2e6b3e"))
  draw.content((2.2, 3.05), text(size: 7pt, fill: rgb("#2e6b3e"))[$p_1$])

  draw.line((6.8, 2.2), (6.8, 2.8), stroke: 0.8pt + rgb("#2e6b3e"))
  draw.circle((6.8, 3.05), radius: 0.25, stroke: 0.8pt + rgb("#2e6b3e"))
  draw.content((6.8, 3.05), text(size: 7pt, fill: rgb("#2e6b3e"))[$p_2$])
}))

Per un fluido viscoso (newtoniano) ho invece:

$ sigma_(i j) = -p delta_(i j) + tau_(i j) $

Cosa diviene il termine $u_i (partial sigma_(i j))/(partial x_j)$? (scritto in notazione vettoriale $arrow(u) dot (nabla dot bold(sigma))$)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Riscrivendo:
    $ u_i (partial sigma_(i j))/(partial x_j) = underbrace(partial/(partial x_j) (u_i sigma_(i j)), (A)) - underbrace(sigma_(i j) (partial u_i)/(partial x_j), (B)) $
    - *(A)* Operatore di divergenza $arrow.r$ termine di flusso!
    - *(B)* Termine di pozzo o sorgente.
  ],
  [
    
  ]
)
#v(1em)

// [DA AUDIO]
In generale, in qualunque equazione di bilancio su un dominio di controllo, i termini si suddividono in due categorie fisiche e matematiche:
- *termini di flusso*: sono sempre associati a un operatore di *divergenza* ($partial / (partial x_j) (...)$). Grazie al teorema della divergenza essi passano dall'integrale di volume all'integrale sulla superficie di contorno, rappresentando ciò che entra o esce attraverso i confini del dominio per semplice trasporto spaziale;
- *termini di pozzo o di sorgente*: non possono essere espressi come divergenza di alcuna grandezza e rappresentano ciò che viene generato (sorgente) o distrutto (pozzo) localmente all'interno del volume di controllo.

Iniziamo a trattare *(B)* ricordando che $sigma_(i j) = -p delta_(i j) + 2 mu D_(i j)$. Attenzione (!), il passaggio non è immediato:

$ -sigma_(i j) (partial u_i)/(partial x_j) = p (partial u_j)/(partial x_j) - 2 mu D_(i j) D_(i j) $

Ricordiamo che:

$ (partial u_j)/(partial x_j) = -1/rho (D rho)/(D t) $

Il termine $2 mu D_(i j) D_(i j)$ è sempre positivo! (è un quadrato).

// [DA AUDIO]
Esplicitando la doppia sommatoria sugli indici ripetuti $i, j in {1, 2, 3}$, il prodotto contratto $D_(i j) D_(i j)$ si sviluppa nella somma dei quadrati delle $9$ componenti del tensore velocità di deformazione:

$ D_(i j) D_(i j) = D_(1 1)^2 + D_(1 2)^2 + D_(1 3)^2 + D_(2 1)^2 + D_(2 2)^2 + D_(2 3)^2 + D_(3 1)^2 + D_(3 2)^2 + D_(3 3)^2 >= 0 $

dove ciascuna componente racchiude i gradienti di velocità, ad esempio:

$ D_(1 2) = 1/2 ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)) $

Di questo termine occorre pertanto ricordare tre proprietà fondamentali:
1. ha *natura scalare* (contrazione completa di due tensori del secondo ordine);
2. è la *somma di termini tutti al quadrato*, dunque è sempre non negativo ($>= 0$);
3. contiene i *gradienti spaziali di velocità*: ogni qualvolta lamine adiacenti di fluido scorrono con velocità differenti ($D_(i j) != 0$), tale termine è strettamente positivo e, comparendo nell'equazione di bilancio preceduto dal segno meno ($-2 mu D_(i j) D_(i j)$), agisce inevitabilmente come un *pozzo* che sottrae carico (energia meccanica) al fluido.

*(A)*

$
  partial/(partial x_j) (u_i sigma_(i j)) &= -partial/(partial x_j) (u_j p) + partial/(partial x_j) (u_i tau_(i j)) = \
  &= -p (partial u_j)/(partial x_j) - u_j (partial p)/(partial x_j) + partial/(partial x_j) (u_i tau_(i j))
$

Metto tutto insieme:

$
  u_i (partial sigma_(i j))/(partial x_j) &= underbrace(-p (partial u_j)/(partial x_j) - u_j (partial p)/(partial x_j) + partial/(partial x_j) (u_i tau_(i j)), (A)) + underbrace(p (partial u_j)/(partial x_j) - 2 mu D_(i j) D_(i j), (B)) = \
  &= -u_j (partial p)/(partial x_j) + partial/(partial x_j) (u_i tau_(i j)) - 2 mu D_(i j) D_(i j)
$

Il primo termine $-u_j (partial p)/(partial x_j)$ è il termine che avevamo anche prima, nel caso di fluido non viscoso, i.e. $sigma_(i j) = -p delta_(i j)$.

Gli altri due sono i termini aggiuntivi che si hanno a causa della viscosità.

Riscrivo l'eq:bilancio_ec:

$ partial/(partial t) (rho u^2 / 2) = -u_j partial/(partial x_j) [underbrace(rho u^2 / 2 + p + rho psi, cal(H))] - D + partial/(partial x_j) (u_i tau_(i j)) $

laddove:

$ D = 2 mu D_(i j) D_(i j) arrow.r.long "dissipazione viscosa (locale)" $

// [DA AUDIO]
Entrambi i nuovi termini viscosi $-D = -2 mu D_(i j) D_(i j)$ e $partial (u_i tau_(i j)) / (partial x_j)$ dipendono dalla viscosità $mu$ e dai gradienti di velocità $D_(i j)$ (essendo $tau_(i j) = 2 mu D_(i j)$), ma mentre $partial (u_i tau_(i j)) / (partial x_j)$ è una divergenza (e quindi un *termine di flusso*), $-D$ non è esprimibile come divergenza ed è un *termine di pozzo*.

In regime stazionario ($partial / (partial t) = 0$) e per fluido incomprimibile ($rho = "cost" arrow.r.double (partial u_j)/(partial x_j) = 0$), portando la divergenza del flusso di carico a primo membro si ottiene la forma differenziale stazionaria del Caso B:

$ partial/(partial x_i) (u_i cal(H)) = -D + partial/(partial x_j) (tau_(i j) u_i) $

Faccio l'integrale su un volume di controllo $V$:

$ dif/(dif t) integral_V (rho u^2 / 2) dif V = -integral_V u_j (partial cal(H))/(partial x_j) dif V - underbrace(integral_V D dif V, D_v) + integral_V partial/(partial x_j) (u_i tau_(i j)) dif V $

Trasformo il $1 degree$ e $3 degree$ termine a destra in integrali di superficie:

$
  integral_V u_j (partial cal(H))/(partial x_j) dif V &= integral_V [partial/(partial x_j) (cal(H) u_j) - cal(H) underbrace((partial u_j)/(partial x_j), = 0 "se" rho = "cost"!)] dif V = \
  &= integral_V partial/(partial x_j) (cal(H) u_j) dif V = integral_S cal(H) u_j n_j dif S
$

Flusso di $cal(H)$ attraverso la superficie di controllo:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ integral_V partial/(partial x_j) (u_i tau_(i j)) dif V = integral_S u_i tau_(i j) n_j dif S = P_m $
    Questo termine rappresenta il lavoro fornito alla superficie $S$, in presenza di forti gradienti di velocità! Il bilancio di energia cinetica diviene dunque:
    $ dif/(dif t) integral_V rho u^2 / 2 dif V = -integral_S u_j cal(H) n_j dif S - D_v + P_m $
  ],
  [
    
  ]
)
#v(1em)

// [DA AUDIO]
=== Caso B: bilancio integrale per una condotta e significato fisico della dissipazione

Applicando il bilancio integrale in regime stazionario ($dif / (dif t) = 0$) al volume di controllo $V$ della condotta cilindrica considerato in precedenza, si osserva che:
- i flussi sulle pareti solide $S_w$ si annullano per la condizione di aderenza ($arrow(u) = 0$);
- il flusso convettivo di carico attraverso le sezioni di ingresso $S_1$ e di uscita $S_2$ vale, come nel Caso A, $integral_(S_1 union S_2) u_j cal(H) n_j dif S = Q_v (H_2 - H_1)$;
- il termine di pozzo non è una divergenza e non può essere trasformato in integrale di superficie: esso rimane un integrale di volume $D_v = integral_V D dif V = integral_V 2 mu D_(i j) D_(i j) dif V$, che rappresenta la *dissipazione viscosa sul volume*;
- l'integrale di superficie $P_m = integral_S tau_(i j) u_i n_j dif S$ rappresenta la *potenza meccanica degli sforzi viscosi* scambiata attraverso le sezioni di contorno.

Il bilancio stazionario per la condotta assume dunque la forma:

$ Q_v (H_2 - H_1) = -D_v + P_m $

Nel caso specifico di una condotta, il termine $P_m$ (flusso di energia meccanica associato agli sforzi viscosi attraverso le due sezioni di ingresso e di uscita $S_1$ e $S_2$) è di molti ordini di grandezza inferiore rispetto al flusso di carico $Q_v (H_2 - H_1)$ e può pertanto essere trascurato ($P_m approx 0$), mentre risulterà essenziale in problemi con pareti mobili.

Definendo la *perdita di carico* tra la sezione di ingresso e quella di uscita come $Delta H = H_1 - H_2 > 0$, si ottiene la relazione fondamentale:

$ -Q_v Delta H = -D_v quad arrow.r.double quad Q_v Delta H = D_v quad arrow.r.double quad Delta H = H_1 - H_2 = D_v / Q_v $

Questa espressione mostra che la perdita di carico $Delta H$ osservata sperimentalmente è direttamente prodotta dalla dissipazione viscosa di volume $D_v$: lo scorrimento relativo di lamine fluide a velocità diverse ($D_(i j) != 0$) in presenza di viscosità $mu$ sottrae inevitabilmente energia meccanica al flusso.

#nota[
  *Aspetti energetici, termici e dimensionali della dissipazione:*
  - *Conversione in energia interna*: l'energia meccanica sottratta dal termine di pozzo $-D$ non scompare, ma viene trasferita all'*energia interna* (termica) del fluido, dove ricompare col segno positivo ($+D$) come *termine sorgente* nell'equazione di bilancio dell'energia termica. Dal punto di vista termometrico, tuttavia, il conseguente riscaldamento del fluido tra ingresso e uscita di una condotta (ad esempio in acqua o aria) è talmente esiguo da risultare praticamente non misurabile, mentre dal punto di vista meccanico l'effetto di $D_v$ (la perdita di carico $Delta H$) è macroscopico e determinante.
  - *Unità di misura e nomenclatura*: il termine globale $D_v = integral_V D dif V$ ha le dimensioni di una *potenza* ($"W" = "J" / "s"$); l'integrando locale $D = 2 mu D_(i j) D_(i j)$ ha invece le dimensioni di una *potenza per unità di volume* ($"W" / "m"^3$) e prende il nome di *funzione di dissipazione*.
]

