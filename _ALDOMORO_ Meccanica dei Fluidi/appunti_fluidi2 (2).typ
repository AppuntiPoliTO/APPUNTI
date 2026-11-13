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
// k = G e^2 / (2 mu U); verso = +1 spinta verso x positive, -1 verso x negative
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
- *Caso b) $G != 0$*: sviluppando i prodotti si ha la combinazione quadratica completa:
  $ u(y) = 1/2 G/mu y^2 - 1/2 G/mu y e + (U y)/e - U = 1/2 G/mu y^2 + y (U/e - 1/2 G/mu e) - U $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il segno di $G = (dif p)/(dif x)$ va confrontato con il trascinamento della parete inferiore, che si muove con velocità $-U$ nella direzione delle $x$ negative:
    - *Caso $G = (dif p)/(dif x) < 0$*: la pressione diminuisce lungo $x$ ($p^+$ a sinistra, $p^-$ a destra) e spinge il fluido verso le $x$ positive; il gradiente di pressione *si oppone al moto* di trascinamento della parete inferiore.
    - *Caso $G = (dif p)/(dif x) > 0$*: la pressione cresce lungo $x$ ($p^-$ a sinistra, $p^+$ a destra) e spinge il fluido verso le $x$ negative; il gradiente *sostiene il moto* della parete inferiore.
  ],
  [
    #canvas(length: 1cm, {
      caso-gradiente(3.4, -3, [$G < 0$: si oppone al trascinamento], 1)
      caso-gradiente(0, 2, [$G > 0$: sostiene il trascinamento], -1)
    })
  ]
)


// ===============================================================
// PARTE 2 — condotte, perdite di carico, moto di Poiseuille
// ===============================================================

// Numero di Reynolds
#let Rey = math.upright("Re")

== Applicazione: moto in condotta in presenza di una macchina a fluido

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si consideri un tronco di condotta attraversato da un fluido, in cui è installata una macchina a fluido (turbina o pompa). La superficie di controllo $S$ è costituita da:
    - la sezione di ingresso $S_1$ e la sezione di uscita $S_2$;
    - le pareti fisse della condotta $S_w$, su cui $arrow(u) = 0$;
    - la superficie mobile delle pale della macchina $S_m$, attraverso cui la portata massica è nulla ma avviene lo scambio di potenza $P_m$.
  ],
  [
    #canvas(length: 1cm, {
      // Pareti della condotta
      draw.line((0.5, 0.8), (5.5, 0.8), stroke: 1pt + c-geo)
      draw.line((0.5, 2.4), (5.5, 2.4), stroke: 1pt + c-geo)

      // Sezione di ingresso S_1
      draw.circle((0.5, 1.6), radius: (0.25, 0.8), stroke: 1pt + c-geo)
      freccia((0.5, 1.6), (-0.1, 1.6), col: c-norm)
      etichetta((-0.15, 1.6), $arrow(n)$, col: c-norm, anchor: "east")
      freccia((0.5, 1.4), (1.2, 1.4), col: c-vel)
      etichetta((1.25, 1.4), $arrow(u)$, col: c-vel, anchor: "west")
      etichetta((0.5, 0.5), $S_1$, anchor: "north")

      // Sezione di uscita S_2
      draw.arc((5.5, 1.6), start: -90deg, stop: 90deg, radius: (0.25, 0.8), anchor: "origin", stroke: 1pt + c-geo)
      draw.arc((5.5, 1.6), start: 90deg, stop: 270deg, radius: (0.25, 0.8), anchor: "origin", stroke: (paint: c-geo, dash: "dashed", thickness: 0.7pt))
      freccia((5.5, 1.6), (6.2, 1.6), col: c-norm)
      etichetta((6.25, 1.6), $arrow(n)$, col: c-norm, anchor: "west")
      etichetta((5.5, 0.5), $S_2$, anchor: "north")

      // Macchina a fluido S_m
      draw.circle((2.8, 1.6), radius: 0.12, fill: white, stroke: 1pt + c-geo)
      draw.circle((2.8, 1.95), radius: (0.12, 0.25), stroke: 0.8pt + c-geo)
      draw.circle((2.8, 1.25), radius: (0.12, 0.25), stroke: 0.8pt + c-geo)
      etichetta((2.8, 0.95), $P_m, S_m$, anchor: "north")

      // Normale alla parete S_w
      freccia((3.6, 2.4), (3.6, 2.9), col: c-norm)
      etichetta((3.7, 2.8), $arrow(n)$, col: c-norm, anchor: "west")
      etichetta((4.2, 0.5), $S_w$, anchor: "north")
    })
  ]
)
#v(0.5em)

Il flusso convettivo di carico totale si scompone sulle diverse porzioni del contorno. Il contributo di $S_w$ è nullo perché $arrow(u) = 0$, quello di $S_m$ perché non è attraversata da portata:

$
- integral_S arrow(u) cal(H) dot arrow(n) dif S
&= - integral_(S_1) arrow(u) cal(H) dot arrow(n) dif S_1 - integral_(S_2) arrow(u) cal(H) dot arrow(n) dif S_2 - integral_(S_m) arrow(u) cal(H) dot arrow(n) dif S_m \
&= Q_v cal(H)_1 - Q_v cal(H)_2
$

Nella relazione precedente si è assunto $cal(H)$ uniforme sulle sezioni trasversali, per cui $integral_S cal(H) arrow(u) dot arrow(n) dif S = Q_v cal(H)$, essendo il flusso volumetrico (portata) definito da $Q_v = integral_S arrow(u) dot arrow(n) dif S$.

In regime stazionario ($partial / (partial t) = 0$) il bilancio integrale si riduce a:

$ P_m - D_v = integral_S arrow(u) cal(H) dot arrow(n) dif S = Q_v [cal(H)_2 - cal(H)_1] $

Definendo la *perdita di carico* tra ingresso e uscita come $Delta cal(H) = cal(H)_1 - cal(H)_2$, si ottiene:

$ Delta cal(H) Q_v = D_v - P_m $

#nota[
  Nel caso particolare di un semplice tronco di condotta passivo, in cui non vi sia potenza meccanica fornita o estratta ($P_m = 0$), la relazione diventa:
  $ Delta cal(H) = D_v / Q_v $
  Questa formula mostra direttamente la natura fisica delle perdite di carico: esse sono l'effetto macroscopico della *dissipazione viscosa* $D_v$ all'interno del fluido.
]

== Coefficiente di perdita di carico e numero di Reynolds

// [DA AUDIO]
In una condotta orizzontale a sezione costante il termine di velocità e il termine gravitazionale del carico totale sono gli stessi nelle due sezioni: l'unico termine che può cambiare è la pressione. La perdita di carico coincide quindi con la differenza di pressione,

$ Delta cal(H) = cal(H)_1 - cal(H)_2 = p_1 - p_2 $

e si ottiene con una semplice misura di pressione.

// [DA AUDIO]
Ripetendo la misura per diametri $D$ diversi, viscosità diverse, portate diverse e distanze $L$ diverse tra le due prese di pressione, si ottiene una quantità enorme di valori di $Delta cal(H)$. Ci si chiede allora se tutti questi valori possano essere raggruppati in una descrizione unificata del fenomeno, cioè se esistano delle grandezze che permettano di calcolare $Delta cal(H)$ indipendentemente dal caso particolare.

// [DA AUDIO]
La procedura, che si può applicare direttamente ai dati sperimentali, è la seguente:
+ si definisce la perdita di carico per unità di lunghezza, $Delta cal(H) \/ L$;
+ la si adimensionalizza dividendo per $1/2 rho u_d^2$, che ha le dimensioni di una pressione (pascal) come $cal(H)$; $u_d$ è la velocità mediata sulla sezione e il fattore $1/2$ si mette per convenzione;
+ si adimensionalizza la lunghezza con la lunghezza caratteristica del problema, il diametro $D$.

Si ottiene così il *coefficiente di perdita di carico* $lambda$:

$ lambda = (Delta cal(H)) / L dot D / (1/2 rho u_d^2) $

Si può mostrare che $lambda$ dipende da un unico numero adimensionale, il *numero di Reynolds*, costruito con la velocità media, il diametro e la viscosità cinematica:

$ Rey = (u_d D) / nu $

Per ogni esperimento, dai valori misurati si calcolano quindi due sole quantità, $lambda$ e $Rey$: la dipendenza delle perdite di carico da cinque parametri ($Delta cal(H)$, $u_d$, $D$, $rho$ o $nu$, $L$) si riduce alla dipendenza da un solo parametro.

// [DA AUDIO]
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Riportando i dati sul piano $(Rey, lambda)$ si riconoscono tre regioni:
    - una prima regione, a $Rey$ bassi, in cui i dati seguono la legge $lambda = 64 \/ Rey$;
    - una regione a $Rey$ alti in cui $lambda prop Rey^(-1\/4)$, con una dipendenza molto più debole;
    - una regione intermedia, poco definita, di transizione tra le due.
  ],
  [
    #canvas(length: 1cm, {
      // Regione di transizione
      draw.rect((2.6, 0), (3.2, 4.3), fill: luma(225), stroke: none)
      etichetta((2.9, 3.6), [?], col: c-aux)

      // Assi (scala logaritmica)
      freccia((0, 0), (6.6, 0), sp: 1pt)
      freccia((0, 0), (0, 4.7), sp: 1pt)
      etichetta((6.65, 0), $Rey$, anchor: "west")
      etichetta((0, 4.75), $lambda$, anchor: "south")

      // Legge laminare e legge turbolenta
      draw.line((0.2, 3.76), (2.6, 1.12), stroke: 1.2pt + c-geo)
      draw.line((3.2, 1.32), (6.0, 0.55), stroke: 1.2pt + c-geo)
      etichetta((1.6, 2.75), $lambda = 64 \/ Rey$, anchor: "west")
      etichetta((4.6, 1.35), $lambda prop Rey^(-1\/4)$, anchor: "south")

      // Regimi
      etichetta((1.3, -0.3), [laminare], col: c-aux)
      etichetta((2.9, -0.3), [transiz.], col: c-aux)
      etichetta((4.6, -0.3), [turbolento], col: c-aux)
    })
    #dida[Andamento qualitativo, in scala logaritmica.]
  ]
)

// [AUDIO INCERTO: la trascrizione dice che la prima legge vale "per Reynolds dai 1000 ai 2000" e la seconda "per Reynolds superiori a 2000"; il limite inferiore non è comprensibile, è stato tenuto solo il valore 2000.]
// [DA AUDIO]
La prima legge vale per numeri di Reynolds inferiori a circa 2000, la seconda per valori superiori. Non esiste però un valore fisso di soglia: esso dipende molto da fattori esterni, cioè da quanto il campo di moto è disturbato da oscillazioni e perturbazioni provenienti dall'ambiente.

// [DA AUDIO]
Ai due comportamenti di $lambda$ corrispondono due comportamenti del campo di moto, che si possono visualizzare introducendo un colorante nella condotta attraverso un piccolo beccuccio:
- per $Rey$ bassi il colorante viene trasportato a valle del punto di iniezione lungo un filamento che rimane del tutto ordinato. Il moto è detto *laminare*: alla scala microscopica le molecole si muovono sempre in modo caotico, ma alla scala macroscopica il campo di moto è ordinato (caos microscopico, ordine macroscopico). È il tipo di moto analizzato finora;
- per $Rey$ alti il filamento, che visualizza le traiettorie, diventa molto disordinato e caotico. Il moto è detto *turbolento*: il disordine non è più solo microscopico ma si manifesta anche alla scala macroscopica.

#align(center, canvas(length: 1cm, {
  let condotta(x0, titolo, amp) = {
    parete(x0, x0 + 5, 0)
    parete(x0, x0 + 5, 1.2, sotto: false)
    // beccuccio di iniezione
    draw.line((x0 + 0.2, 1.2), (x0 + 0.2, 0.6), (x0 + 0.6, 0.6), stroke: 1.2pt + c-geo)
    // filamento di colorante
    let pts = range(0, 81).map(i => {
      let t = i / 80
      let a = amp * calc.min(1, 3 * t)
      (x0 + 0.6 + 4.2 * t,
       0.6 + a * (calc.sin(23 * t) + 0.6 * calc.sin(57 * t + 1) + 0.4 * calc.sin(101 * t)))
    })
    draw.line(..pts, stroke: 0.9pt + c-vel)
    etichetta((x0 + 2.5, 1.8), titolo)
  }
  condotta(0, [$Rey$ basso: moto laminare], 0)
  condotta(5.8, [$Rey$ alto: moto turbolento], 0.24)
}))
#dida[Filamento di colorante iniettato nella condotta nei due regimi.]

// [DA AUDIO]
L'evidenza sperimentale mostra quindi due comportamenti nettamente diversi, riconoscibili anche a occhio, che si riflettono in due leggi molto diverse per il coefficiente di perdita di carico; tra i due regimi esiste una regione di transizione poco definita.

#nota[
  // [DA AUDIO]
  *Portata generale del risultato.* Il grafico, relativo a una condotta orizzontale, mostra che le perdite di carico adimensionalizzate dipendono solo dal numero di Reynolds. Esperimenti condotti con diametri diversi, distanze diverse tra le prese, fluidi diversi e portate diverse si dispongono sulle stesse curve: una volta trasformati i dati in $lambda$ e $Rey$, non è più possibile sapere in quale condotta sia stato ottenuto un dato valore. Viceversa, noto $lambda$, si ricava $Delta cal(H)$ per qualunque diametro, distanza, portata e viscosità. Le due relazioni valgono quindi per tutte le condotte, tutti i diametri e tutti i fluidi, purché newtoniani.
]

// [DA AUDIO]
Il valore $64$ della legge laminare non è soltanto un dato sperimentale: è un valore esatto, che si può calcolare a partire dalle equazioni di Navier-Stokes. L'obiettivo dei paragrafi seguenti è arrivare a questo calcolo.

= Moto, dissipazione e perdite di carico in una condotta circolare: moto di Poiseuille

== Equazione del moto e profilo di velocità in coordinate cilindriche

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si studia il moto stazionario e incomprimibile ($rho = "cost"$, $partial / (partial t) = 0$) all'interno di una condotta cilindrica circolare di raggio $R$ e lunghezza $L$. Si adotta un sistema di coordinate cilindriche $(r, theta, z)$ con asse $z$ coincidente con l'asse della condotta; sulla parete, $r = R$, vale la condizione di aderenza $arrow(u) = 0$.
  ],
  [
    #canvas(length: 1cm, {
      // Asse della condotta
      draw.line((0.5, 1.2), (6.6, 1.2), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dash-dotted"))

      // Superficie laterale e sezioni di estremità
      draw.line((0.5, 0.4), (6.0, 0.4), stroke: 1pt + c-geo)
      draw.line((0.5, 2.0), (6.0, 2.0), stroke: 1pt + c-geo)
      draw.circle((0.5, 1.2), radius: (0.25, 0.8), stroke: 1pt + c-geo)
      draw.arc((6.0, 1.2), start: -90deg, stop: 90deg, radius: (0.25, 0.8), anchor: "origin", stroke: 1pt + c-geo)
      draw.arc((6.0, 1.2), start: 90deg, stop: 270deg, radius: (0.25, 0.8), anchor: "origin", stroke: (paint: c-geo, dash: "dashed", thickness: 0.7pt))

      // Assi r e z
      freccia((0.5, 1.2), (0.5, 2.7))
      etichetta((0.62, 2.7), $r$, anchor: "west")
      freccia((0.5, 1.2), (1.7, 1.2))
      etichetta((1.75, 1.35), $z$, anchor: "west")

      // Raggio R e lunghezza L
      quota((4.4, 1.22), (4.4, 1.98))
      etichetta((4.52, 1.6), $R$, anchor: "west")
      quota((0.5, -0.1), (6.0, -0.1))
      etichetta((3.25, -0.35), $L$)
    })
  ]
)

// [DA AUDIO]
Le equazioni di Navier-Stokes in coordinate cilindriche sono fornite nell'allegato disponibile tra gli appunti del corso sul Portale della didattica. Come nel caso del moto tra due piastre piane, che qui si sta sostanzialmente generalizzando, si assume la forma della soluzione: una sola componente di velocità non nulla, quella lungo $z$, dipendente unicamente da $r$. Il profilo atteso si annulla alla parete e ha un massimo che, per simmetria, non può che trovarsi sull'asse:

$ arrow(u) = (0, 0, u(r)) $

Sotto queste ipotesi la maggior parte dei termini delle equazioni è identicamente nulla ($nabla dot arrow(u) = 0$, $arrow(u) dot nabla arrow(u) = 0$) e il bilancio della quantità di moto si riduce al sistema:

$ cases(
  0 = - (partial p)/(partial r) = - 1/r (partial p)/(partial theta),
  0 = - (partial p)/(partial z) + mu 1/r dif/(dif r) (r (dif u)/(dif r))
) $

Dalle prime due relazioni segue che la pressione dipende unicamente dalla coordinata assiale, $p = p(z)$. L'equazione lungo $z$ si scrive allora:

$ (dif p)/(dif z) = mu 1/r dif/(dif r) (r (dif u)/(dif r)) = G $

// [DA AUDIO]
Il ragionamento è lo stesso del caso piano: il primo membro dipende solo da $z$ e il secondo solo da $r$, quindi l'uguaglianza è possibile solo se entrambi sono pari a una costante, il gradiente di pressione assiale $G$. Essendo $u$ funzione della sola $r$, le derivate sono derivate ordinarie. Rispetto al caso piano c'è però qualche sottigliezza in più nell'integrazione.

Si riscrive l'equazione come

$ dif/(dif r) (r (dif u)/(dif r)) = (G r)/mu $

e si integra una prima volta rispetto a $r$:

$ r (dif u)/(dif r) = (G r^2)/(2 mu) + C quad arrow.r.double quad (dif u)/(dif r) = (G r)/(2 mu) + C/r $

// [DA AUDIO]
Per $r arrow.r 0$, cioè sull'asse della condotta, il primo termine tende a zero mentre il termine $C \/ r$ diverge, producendo una singolarità sull'asse. Un campo di moto singolare sull'asse non è fisicamente interpretabile: per garantire la regolarità della soluzione si deve porre

$ C = 0 quad arrow.r.double quad (dif u)/(dif r) = (G r)/(2 mu) $

Separando le variabili e integrando una seconda volta:

$ integral dif u = G/(2 mu) integral r dif r quad arrow.r.double quad u(r) = (G r^2)/(4 mu) + B $

La condizione di aderenza alla parete della condotta, $u = 0$ per $r = R$, fornisce:

$ u(R) = 0 = (G R^2)/(4 mu) + B quad arrow.r.double quad B = - (G R^2)/(4 mu) $

Si ottiene così la distribuzione radiale di velocità del moto di Hagen-Poiseuille:

$ u(r) = G/mu (r^2 / 4 - R^2 / 4) = - (G R^2)/(4 mu) (1 - (r/R)^2) $

Il profilo di velocità è dunque *parabolico* e raggiunge il suo valore massimo $u_0$ sull'asse della condotta ($r = 0$):

$ u_0 = u(r = 0) = - (G R^2)/(4 mu) quad arrow.r.double quad u(r) = u_0 (1 - (r/R)^2) $

// [DA AUDIO]
Il segno meno è coerente con il verso del moto: il fluido si muove verso le $z$ positive solo se la pressione diminuisce lungo $z$, cioè se $G = (dif p)/(dif z) < 0$; in tal caso $u_0 > 0$. Senza gradiente di pressione non ci sarebbe moto.

#nota[
  // [DA AUDIO]
  *Validità della soluzione.* La soluzione è stata trovata ipotizzandone in partenza la forma: in nessun momento si ammette che la velocità possa avere componenti diverse da $u(r)$ lungo $z$. Questa assunzione è coerente unicamente con la descrizione del moto *laminare*. Se la velocità avesse componenti non nulle nelle altre due direzioni, come accade nel moto turbolento, tutta la descrizione verrebbe meno.
]

#nota[
  // [DA AUDIO]
  *Indicazione d'esame.* Questo svolgimento è stato domanda d'esame l'anno scorso ed è una tipica domanda. La traccia è:
  + ricavare il profilo di velocità $u(r)$ in funzione di $G$;
  + calcolare il flusso di volume $Q_v$;
  + calcolare la velocità media sulla sezione $u_d$;
  + calcolare la funzione di dissipazione;
  + ricavare $lambda$, come definito sopra, in funzione del numero di Reynolds costruito con $u_d$ e il diametro $D$.
]

== Velocità media ("bulk"), portata e sforzi viscosi

Si definisce la velocità media di portata (o velocità *"bulk"*) $u_d$ come rapporto tra il flusso volumetrico $Q_v$ e l'area della sezione trasversale $S = pi R^2$:

$ u_d = 1/S underbrace(integral_S arrow(u) dot arrow(n) dif S, Q_v = "flusso in volume") = 1/(pi R^2) integral_0^R u(r) 2 pi r dif r $

Il flusso volumetrico $Q_v$ vale:

$
Q_v &= 2 pi integral_0^R u(r) r dif r = 2 pi integral_0^R (G R^2)/(4 mu) [r^2 / R^2 - 1] r dif r \
    &= (pi G R^2)/(2 mu) [r^4 / (4 R^2) - r^2 / 2]_0^R = (pi G R^2)/(2 mu) [R^2 / 4 - R^2 / 2] = - pi/(8 mu) G R^4
$

Dividendo per la sezione $pi R^2$ si ricavano la velocità media e il suo legame con la velocità massima sull'asse:

$ u_d = Q_v / (pi R^2) = - (G R^2)/(8 mu) quad arrow.r.double quad u_d = u_0 / 2 $

Invertendo tale relazione si ottiene il gradiente di pressione necessario a sostenere una data velocità media:

$ (dif p)/(dif z) = G = - (8 mu u_d)/R^2 $

Fissato il gradiente di pressione $G$ resta quindi determinata univocamente la portata $Q_v$ (e dunque $u_d$), e viceversa.

=== Tensore degli sforzi viscosi

Il tensore degli sforzi completo è $sigma_(i j) = -p delta_(i j) + tau_(i j)$, con $tau_(i j) = 2 mu D_(i j)$ e $D_(i j) = 1/2 ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))$. Per il moto assialsimmetrico in condotta, nella base $(r, theta, z)$, la matrice degli sforzi viscosi assume la forma:

$ tau_(i j) = mat(delim: "[",
  0, 0, tau_(r z);
  0, 0, 0;
  tau_(z r), 0, 0
) $

L'unica componente tangenziale non nulla è:

$ tau_(r z) = tau_(z r) = 2 mu 1/2 ((partial u_z)/(partial r) + (partial u_r)/(partial z)) = mu (dif u)/(dif r) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Ricordando il profilo parabolico di velocità e la sua derivata radiale:
    $ u(r) = 2 u_d [1 - r^2 / R^2] = (G R^2)/(4 mu) [r^2 / R^2 - 1] $
    $ (dif u)/(dif r) = (G r)/(2 mu) $
    si ricava immediatamente l'andamento lineare dello sforzo di taglio lungo il raggio:
    $ tau_(r z) = (G r)/2 $
    Lo sforzo è nullo sull'asse e massimo in modulo alla parete; per un moto diretto nel verso positivo dell'asse $G$ è negativo, e così $tau_(r z)$.
  ],
  [
    #canvas(length: 1cm, {
      // Pannello A: profilo parabolico u(r)
      parete(0, 2.8, 0.2)
      parete(0, 2.8, 2.2, sotto: false)
      profilo(0.5, 0.2, eta => 1 - calc.pow(2 * eta - 1, 2), H: 2.0, s: 1.6)
      draw.line((-0.2, 1.2), (2.9, 1.2), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dash-dotted"))
      freccia((2.9, 1.2), (3.1, 1.2), sp: 0.6pt)
      etichetta((3.15, 1.2), $z$, anchor: "west")
      freccia((0.5, 0.2), (0.5, 2.8))
      etichetta((0.5, 2.85), $r$, anchor: "south")
      // u_0 e u_d = u_0 / 2
      draw.line((2.1, 1.2), (2.1, -0.15), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      etichetta((2.1, -0.2), $u_0$, col: c-vel, anchor: "north")
      draw.line((1.3, 1.9), (1.3, -0.15), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      etichetta((1.3, -0.2), $u_d$, col: c-vel, anchor: "north")

      // Pannello B: andamento lineare di tau_rz(r)
      parete(4.0, 6.4, 0.2)
      parete(4.0, 6.4, 2.2, sotto: false)
      draw.line((3.9, 1.2), (6.5, 1.2), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dash-dotted"))
      freccia((5.4, 0.2), (5.4, 2.8))
      etichetta((5.4, 2.85), $r$, anchor: "south")
      draw.line((4.4, 2.2), (5.4, 1.2), (4.4, 0.2), stroke: 1pt + c-forza)
      draw.line((4.65, 1.95), (5.4, 1.95), stroke: 0.5pt + c-forza)
      draw.line((4.9, 1.7), (5.4, 1.7), stroke: 0.5pt + c-forza)
      draw.line((5.15, 1.45), (5.4, 1.45), stroke: 0.5pt + c-forza)
      draw.line((5.15, 0.95), (5.4, 0.95), stroke: 0.5pt + c-forza)
      draw.line((4.9, 0.7), (5.4, 0.7), stroke: 0.5pt + c-forza)
      draw.line((4.65, 0.45), (5.4, 0.45), stroke: 0.5pt + c-forza)
      etichetta((5.5, 0.5), $tau_(r z)$, col: c-forza, anchor: "west")
    })
    #dida[Profilo di velocità (a sinistra) e sforzo di taglio (a destra).]
  ]
)
#v(1em)


// ===============================================================
// PARTE 3 — applicazioni delle perdite di carico
// ===============================================================

= Applicazione: rendimento di una installazione idroelettrica

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si consideri un'installazione idroelettrica che collega un bacino superiore $R$ a uno scarico $E$ posto a quota inferiore, con dislivello geodetico $h = z_R - z_E = 300 "m"$. I parametri geometrici e operativi del sistema sono:
    - portata volumetrica nominale: $Q = 20 "m"^3/"s"$;
    - diametro della condotta: $D = 2 "m"$;
    - lunghezza della condotta: $L = 1 "km" = 1000 "m"$;
    - coefficiente di perdita di carico: $lambda = 0,018$;
    - sezione di uscita allo scarico: $S_E = 20 "m"^2$;
    - coefficiente di perdita allo scarico: $k = 2$.
  ],
  [
    #canvas(length: 1cm, {
      // Bacino superiore R
      draw.line((0, 2.8), (1.4, 2.8), stroke: 1pt + c-geo)
      draw.line((0.5, 2.65), (0.9, 2.65), stroke: 0.5pt + c-geo)
      draw.line((0.6, 2.55), (0.8, 2.55), stroke: 0.5pt + c-geo)
      etichetta((0.2, 2.4), $R$, anchor: "north")
      draw.line((1.2, 2.8), (1.7, 2.1), stroke: 1pt + c-geo)

      // Condotta forzata
      draw.line((1.7, 2.1), (4.0, 0.9), stroke: 1pt + c-geo)
      draw.line((1.8, 2.25), (4.1, 1.05), stroke: 1pt + c-geo)
      quota((1.55, 1.9), (3.85, 0.7))
      etichetta((2.6, 1.15), $L = 1 "km", lambda = 0,018$, anchor: "east")
      etichetta((2.9, 2.0), $D = 2 "m"$, anchor: "west")

      // Verso della portata
      freccia((2.35, 2.25), (3.15, 1.83), col: c-vel)
      etichetta((2.75, 2.25), $Q$, col: c-vel, anchor: "south-west")

      // Turbina e scarico E
      draw.circle((4.25, 0.85), radius: 0.25, fill: white, stroke: 1pt + c-geo)
      etichetta((4.25, 1.25), [Turbina], anchor: "south")
      draw.line((4.45, 0.75), (5.1, 0.4), stroke: 1pt + c-geo)
      draw.line((4.5, 0.9), (5.2, 0.65), stroke: 1pt + c-geo)
      draw.line((5.1, 0.4), (5.2, 0.65), stroke: 0.8pt + c-geo)
      etichetta((5.15, 0.25), $E, S_E = 20 "m"^2$, anchor: "north")

      // Dislivello h
      draw.line((1.4, 2.8), (5.8, 2.8), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      draw.line((5.2, 0.5), (5.8, 0.5), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      quota((5.6, 0.52), (5.6, 2.78))
      etichetta((5.7, 1.65), $h = 300 "m"$, anchor: "west")
    })
  ]
)
#v(1em)

== 1. Perdite di carico nella condotta

Le perdite di carico distribuite lungo la condotta forzata, $Delta cal(H)_c$, si valutano invertendo la definizione del coefficiente $lambda$ (equazione di Darcy-Weisbach):

$ Delta cal(H)_c = lambda(Rey) dot 1/2 rho u_d^2 L/D $

La velocità media $u_d$ nella sezione circolare della condotta, $S_c = pi D^2 \/ 4$, vale:

$ u_d = Q / S_c = (20 "m"^3/"s") / (pi (2^2 / 4) "m"^2) = 6,366 "m"/"s" $

Sostituendo i valori numerici (con $rho = 1000 "kg"/"m"^3$) si ottiene la perdita di carico, espressa in pascal o in metri di colonna d'acqua equivalente:

$ Delta cal(H)_c = 1,82 times 10^5 "Pa" equiv 18,6 "m"_("H"_2 "O") $

== 2. Carico disponibile per la turbina

Il salto di carico totale $Delta cal(H)_"TOT"$ tra il pelo libero del bacino superiore $R$ (dove $u_R approx 0$ e $p_R = p_"atm"$) e la sezione di uscita $E$ (dove $p_E = p_"atm"$) si ripartisce tra le perdite in condotta $Delta cal(H)_c$, il carico assorbito dalla turbina $Delta cal(H)_T$ e la perdita allo scarico $Delta cal(H)_A$:

$
Delta cal(H)_"TOT" &= Delta cal(H)_c + Delta cal(H)_T + Delta cal(H)_A \
&= 1/2 rho u_R^2 + rho g z_R + p_R - (1/2 rho u_E^2 + rho g z_E + p_E) \
&= rho g (z_R - z_E) = 1000 times 9,8 times 300 = 2,94 times 10^6 "Pa" approx 3 times 10^6 "Pa"
$

Il salto elaborato dalla turbina si ricava per differenza:

$ Delta cal(H)_T = Delta cal(H)_"TOT" - Delta cal(H)_c - Delta cal(H)_A $

La perdita di carico localizzata allo scarico (uscita nell'ambiente a valle) vale:

$ Delta cal(H)_A = k rho u_E^2 / 2 quad "con" quad u_E = Q / S_E = 20 / 20 = 1 "m"/"s" $

Con $k = 2$ e $rho = 10^3 "kg"/"m"^3$ si ottiene $Delta cal(H)_A = 10^3 "Pa"$. Il salto utile sulla turbina risulta pertanto:

$ Delta cal(H)_T = 2,94 times 10^6 - 1,82 times 10^5 - 10^3 approx 2,76 times 10^6 "Pa" approx 280 "m"_("H"_2 "O") $

== 3. Calcolo della potenza della turbina

Assumendo un rendimento idraulico-meccanico della turbina pari a $eta = 0,9$, la potenza utile $P$ generata è:

$ P = eta Q Delta cal(H)_T = eta Q [rho g h - underbrace((Delta cal(H)_c + Delta cal(H)_A), "perdite")] = 49,7 "MW" $

== 4. Ottimizzazione del sistema e portata ottimale

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Ci si chiede quale sia la portata $Q$ che massimizza la potenza estratta dall'impianto. Esplicitando la dipendenza delle perdite di carico dalla portata ($u_d = Q \/ S_c$ e $u_E = Q \/ S_E$), la potenza $P(Q)$ assume la forma cubica:
    $ P = A Q - B Q^3 $
    dove le costanti caratteristiche dell'impianto sono:
    $ A = eta rho g h $
    $ B = 1/2 rho eta (lambda L/D 1/S_c^2 + k/S_E^2) $
  ],
  [
    #canvas(length: 1cm, {
      // Assi
      freccia((0, 0), (4.8, 0), sp: 1pt)
      etichetta((4.9, 0), $Q$, anchor: "west")
      freccia((0, 0), (0, 3.1), sp: 1pt)
      etichetta((-0.15, 3.0), $P$, anchor: "east")

      // Curva P = A Q - B Q^3 (zero in 3.8, massimo in 3.8 / sqrt(3))
      let xm = 3.8 / calc.sqrt(3)
      let pts = range(0, 61).map(i => {
        let x = 3.8 * i / 60
        (x, 1.641 * x * (1 - calc.pow(x / 3.8, 2)))
      })
      draw.line(..pts, stroke: 1.2pt + c-geo)

      // Massimo e sue proiezioni
      draw.line((xm, 2.4), (xm, 0), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      draw.line((0, 2.4), (xm, 2.4), stroke: (paint: c-aux, thickness: 0.5pt, dash: "dashed"))
      draw.circle((xm, 2.4), radius: 0.05, fill: c-geo, stroke: none)
      etichetta((-0.1, 2.4), $P_"max"$, anchor: "east")
      etichetta((xm, -0.2), $sqrt(A \/ (3 B))$, anchor: "north")

      // Intersezione con l'asse Q
      etichetta((3.9, -0.2), $sqrt(A \/ B)$, anchor: "north")
    })
  ]
)
#v(1em)

All'aumentare di $Q$ cresce la portata elaborata (termine proporzionale a $Q$), ma le perdite dissipative crescono come $Q^3$: ne risulta un massimo di potenza. Raccogliendo la portata, $P = Q (A - B Q^2)$, si individuano subito le intersezioni con l'asse delle ascisse:

$ P = 0 quad "per" quad Q = 0 quad "e" quad Q = (A / B)^(1/2) $

Il massimo della potenza si trova annullando la derivata prima rispetto a $Q$:

$ (dif P)/(dif Q) = A - 3 B Q^2 = 0 quad arrow.r.long quad Q = (A / (3 B))^(1/2) = Q_"max" $

Sostituendo $Q_"max"$ nell'espressione della potenza si ricava la potenza massima teoricamente ottenibile:

$ P_"max" = 2/3 A Q_"max" = 2/3 (A^3 / (3 B))^(1/2) $

Con i valori numerici dei parametri dell'impianto (in unità SI) si ottiene:

$ A = 2,65 times 10^6, quad B = 413 quad arrow.r.long quad cases(
  Q_"max" = 46,3 "m"^3/"s",
  P_"max" = 81,7 "MW"
) $

= Esempio: perdite di carico in condotta

Si consideri il moto di un olio minerale di viscosità dinamica $mu = 2 dot 10^(-2) "kg"/("m" dot "s")$ e densità $rho = 900 "kg"/"m"^3$ all'interno di una condotta circolare di diametro $d = 2 "cm"$ e lunghezza $L = 20 "m"$.

Il coefficiente di perdita di carico $lambda$ dipende dal regime di moto, identificato dal numero di Reynolds $Rey_D = (rho u_d d) \/ mu$, secondo le due leggi:

$ lambda = cases(
  64 / Rey_D & "laminare",
  0,3164 thin Rey_D^(-1\/4) quad & "turbolento (Blasius)"
) $

Si vuole calcolare la caduta di pressione $Delta p$ lungo l'intera lunghezza $L$ della tubazione per due diverse portate massiche $dot(q)$:

$ dot(q) = cases(
  dot(q)_1 = 0,3 "kg"/"s",
  dot(q)_2 = 6 "kg"/"s"
) $

Per ciascuna portata si valuta il numero di Reynolds, si sceglie la legge corrispondente per $lambda$ e si calcola $Delta p = lambda dot 1/2 rho u_d^2 L \/ d$. Si ottiene:
- per la portata minore ($dot(q)_1 = 0,3 "kg"/"s"$): $Delta p_1 = 0,34 "bar"$;
- per la portata maggiore ($dot(q)_2 = 6 "kg"/"s"$): $Delta p_2 = 54 "bar"$.

Una portata venti volte maggiore produce quindi una caduta di pressione circa 160 volte maggiore: le perdite di carico crescono in modo fortemente non lineare passando dal regime laminare a quello turbolento.
