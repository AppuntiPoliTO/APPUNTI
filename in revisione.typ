// in revisione.typ
#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")
#set heading(numbering: none)


// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$


= Calcolo del vettore vorticità e influenza della gravità

== Tensore di velocità di rotazione e vettore vorticità

Il tensore antisimmetrico di velocità di rotazione $overline(overline(Omega))$ è definito in funzione delle sue componenti scalari come:

$ overline(overline(Omega)) = mat(
  0, -Omega_3, Omega_2;
  Omega_3, 0, -Omega_1;
  -Omega_2, Omega_1, 0
) $

Le singole componenti del vettore di rotazione $arrow(Omega)$ si ricavano dalle derivate parziali incrociate del campo di velocità:

$ Omega_3 = -1/2 ((dif u_1)/(dif x_2) - (dif u_2)/(dif x_1)) $

$ Omega_2 = 1/2 ((dif u_1)/(dif x_3) - (dif u_3)/(dif x_1)) quad arrow.r.double quad arrow(Omega) = mat(Omega_1; Omega_2; Omega_3) $

$ Omega_1 = -1/2 ((dif u_2)/(dif x_3) - (dif u_3)/(dif x_2)) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Nel caso specifico in esame, l'unica componente non nulla è:
    $ Omega_3 = - U_e / (2 h) $
    Poiché tale componente assume un valore negativo, le particelle fluide possiedono una vorticità negativa e ruotano conseguentemente in senso orario.
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      arc((0, 0), start: -110deg, stop: 110deg, radius: 1.3, anchor: "origin", stroke: 1.2pt)
      line((-0.44, -1.22), (-0.75, -1.05), stroke: 1.2pt)
      line((-0.44, -1.22), (-0.15, -1.45), stroke: 1.2pt)
      line((-0.35, 0), (0.35, 0), stroke: 2pt)
    })
  ]
)
#v(1em)

== Influenza della gravità sulla dinamica del moto nei fluidi a densità costante

Per analizzare l'effetto della forza di gravità in un fluido a densità $rho = "cost"$, è sempre possibile scomporre la pressione totale $p$ nella somma di un contributo idrostatico $p_"hs"$ e di una pressione dinamica (o motrice) $p^*$:

$ p = p_"hs" + p^* $

La distribuzione «idrostatica» della pressione soddisfa la relazione fondamentale:

$ nabla p_"hs" = rho(z) arrow(g) $

Si osservi che tale termine non è necessariamente costante, ma può dipendere unicamente dalla coordinata verticale $z$. Passando ai gradienti, si ottiene linearmente:

$ nabla p = nabla p_"hs" + nabla p^* $

Al contrario del contributo idrostatico, il termine $p^*(arrow(x))$ dipende in generale da tutte e tre le coordinate spaziali (e, in linea di principio, anche dal tempo $t$).

Riprendendo l'equazione di Navier-Stokes (N-S) per un fluido incomprimibile:

$ (D arrow(u))/(D t) = - 1/rho nabla p + arrow(g) + nu Delta arrow(u) $

Sostituendo la scomposizione della pressione nei termini di forza di pressione e di volume, ed esplicitando la definizione di gradiente idrostatico $nabla p_"hs" = rho arrow(g)$, si ricava:

$ -1/rho nabla(p_"hs" + p^*) + arrow(g) = -1/rho nabla p_"hs" - 1/rho nabla p^* + arrow(g) = -1/rho (rho arrow(g)) - 1/rho nabla p^* + arrow(g) = -1/rho nabla p^* $

È quindi possibile riscrivere l'equazione di Navier-Stokes nella forma compatta:

$ (D arrow(u))/(D t) = - 1/rho nabla p^* + nu Delta arrow(u) $

#nota[
  Dalla riformulazione dell'equazione di Navier-Stokes in termini di $p^*$ emergono due conseguenze fisiche fondamentali:
  1. Scompare esplicitamente l'accelerazione di gravità $arrow(g)$ dall'equazione del moto;
  2. La pressione cambia significato fisico, venendo sostituita dalla pressione motrice $p^*$ che governa effettivamente la dinamica del fluido.
]

= Esempio: Teoria della lubrificazione

== Equazioni di bilancio di quantità di moto e condizioni al limite

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Si consideri il moto stazionario di un fluido viscoso confinato tra due pareti piane parallele poste a distanza $e$. Il problema consiste nello scrivere le equazioni di bilancio di quantità di moto con le relative condizioni al limite, cercando una soluzione stazionaria del tipo:
  ],
  [#canvas(length: 1cm, {
  import draw: *

  // Pareti e asse x
  line((-2.2, 0), (4.6, 0), mark: (end: ">"), stroke: 1pt)
  line((-2.2, 2.6), (3.2, 2.6), stroke: 1pt)

  // Tratteggio parete superiore
  line((-1.9, 2.6), (-1.6, 2.8), stroke: 0.6pt)
  line((-1.4, 2.6), (-1.1, 2.8), stroke: 0.6pt)
  line((-0.9, 2.6), (-0.6, 2.8), stroke: 0.6pt)
  line((-0.4, 2.6), (-0.1, 2.8), stroke: 0.6pt)
  line((0.1, 2.6), (0.4, 2.8), stroke: 0.6pt)
  line((0.6, 2.6), (0.9, 2.8), stroke: 0.6pt)
  line((1.1, 2.6), (1.4, 2.8), stroke: 0.6pt)
  line((1.6, 2.6), (1.9, 2.8), stroke: 0.6pt)
  line((2.1, 2.6), (2.4, 2.8), stroke: 0.6pt)

  // Tratteggio parete inferiore
  line((-1.7, 0), (-2.0, -0.2), stroke: 0.6pt)
  line((-1.1, 0), (-1.4, -0.2), stroke: 0.6pt)
  line((-0.5, 0), (-0.8, -0.2), stroke: 0.6pt)
  line((0.1, 0), (-0.2, -0.2), stroke: 0.6pt)
  line((0.7, 0), (0.4, -0.2), stroke: 0.6pt)
  line((1.3, 0), (1.0, -0.2), stroke: 0.6pt)
  line((1.9, 0), (1.6, -0.2), stroke: 0.6pt)
  line((2.5, 0), (2.2, -0.2), stroke: 0.6pt)
  line((3.1, 0), (2.8, -0.2), stroke: 0.6pt)

  // Asse verticale
  line((0, 0), (0, 3.2), mark: (end: ">"), stroke: 1pt)

  // Profilo di velocità
  bezier((-0.9, 0), (0, 2.6), (0.2, 1.15), (1.2, 2.35), stroke: 1pt)

  // Vettori velocità (parte inferiore, verso sinistra)
  line((0, 0.03), (-0.87, 0.03), mark: (end: ">"), stroke: 0.6pt)
  line((0, 0.20), (-0.70, 0.20), mark: (end: ">"), stroke: 0.6pt)
  line((0, 0.43), (-0.47, 0.43), mark: (end: ">"), stroke: 0.6pt)
  line((0, 0.66), (-0.24, 0.66), mark: (end: ">"), stroke: 0.6pt)
  line((0, 0.87), (-0.06, 0.87), stroke: 0.6pt)

  // Vettori velocità (parte superiore, verso destra)
  line((0, 1.35), (0.30, 1.35), mark: (end: ">"), stroke: 0.6pt)
  line((0, 1.55), (0.43, 1.55), mark: (end: ">"), stroke: 0.6pt)
  line((0, 1.80), (0.54, 1.80), mark: (end: ">"), stroke: 0.6pt)
  line((0, 2.07), (0.56, 2.07), mark: (end: ">"), stroke: 0.6pt)
  line((0, 2.31), (0.46, 2.31), mark: (end: ">"), stroke: 0.6pt)
  line((0, 2.46), (0.30, 2.46), mark: (end: ">"), stroke: 0.6pt)

  // Linea di quota l
  line((2.7, -0.1), (2.7, 2.75), stroke: 0.6pt)
  line((2.6, -0.1), (2.8, 0.15), stroke: 0.6pt)
  line((2.6, 2.45), (2.8, 2.75), stroke: 0.6pt)

  // Etichette
  content((-2.6, 2.6), text(size: 7pt)[$y = l$], anchor: "east")
  content((-2.6, 0.0), text(size: 7pt)[$y = 0$], anchor: "east")
  content((2.9, 1.5), text(size: 7pt)[$l$], anchor: "west")
  content((4.75, 0.0), text(size: 7pt)[$x$], anchor: "west")
  content((-0.2, -0.7), text(size: 7pt)[$(-U, 0, 0)$], anchor: "north")
})])


$ arrow(u) = mat(u(y); 0; 0) quad "e" quad p = p(x) $

e mostrando che il gradiente longitudinale di pressione $G = (d p)/(d x) = "cost"$.

Il sistema completo delle equazioni di Navier-Stokes e di continuità per un fluido incomprimibile è dato da:

$ cases(
  rho ((dif arrow(u))/(dif t) + arrow(u) dot nabla arrow(u)) = -nabla p + mu Delta arrow(u),
  nabla dot arrow(u) = 0
) $

Le condizioni al contorno di aderenza alle pareti impongono:
- $arrow(u) = (-U, 0, 0)$ per $y = 0$ (parete inferiore in moto verso le $x$ negative);
- $arrow(u) = 0$ per $y = e$ (parete superiore ferma).

Cercando una soluzione della forma $arrow(u) = (u(y), 0, 0)^T$ in regime stazionario, ovvero sapendo che $(dif arrow(u))/(dif t) = 0$, valutiamo il termine convettivo non lineare:

$ arrow(u) dot nabla arrow(u) = u_j (dif u_i)/(dif x_j) = (u_x dif/(dif x) + u_y dif/(dif y) + u_z dif/(dif z)) arrow(u) = 0 $

Il termine convettivo è identicamente nullo poiché $u_y = u_z = 0$ e la componente $u_x = u(y)$ dipende unicamente dalla coordinata trasversale $y$. Analogamente, il termine difusivo viscoso si semplifica come segue:

$ mu Delta arrow(u) = mu ((dif^2 u)/(dif x^2) + (dif^2 u)/(dif y^2) + (dif^2 u)/(dif z^2), 0, 0) = mu ((d^2 u)/(d y^2), 0, 0) $

Dalle componenti lungo gli assi $y$ e $z$ dell'equazione di quantità di moto si deduce immediatamente che il gradiente di pressione trasversale è nullo:

$ (dif p)/(dif y) = (dif p)/(dif z) = 0 quad arrow.r.double quad p = p(x) $

La proiezione lungo l'asse $x$ si riduce pertanto a:

$ (d^2 u)/(d y^2) = (G(x))/mu $

Poiché il membro di sinistra è una funzione della sola variabile $y$, mentre il membro di destra dipende unicamente da $x$, l'uguaglianza $f(y) = f(x)$ può essere verificata per ogni punto del dominio solo se entrambi i membri sono uguali a una medesima costante:

$ f(y) = f(x) = "cost" $

Integrando due volte rispetto a $y$ l'equazione diferenziale ordinaria $(d^2 u)/(d y^2) = G/mu$, si ottiene:

$ (d u)/(d y) = G/(2 mu) y + A quad arrow.r.double quad u(y) = G/(2 mu) y^2 + A y + B $

Imponendo le condizioni al contorno su $y = 0$ e $y = e$ per determinare le costanti di integrazione $A$ e $B$:

$ u(0) = -U quad arrow.r.double quad B = -U $

$ u(e) = 0 quad arrow.r.double quad 0 = G/(2 mu) e^2 + A e - U quad arrow.r.double quad A = U/e - (G e)/(2 mu) $

Sostituendo le costanti nell'espressione di $u(y)$ e raccogliendo algebricamente i termini, si giunge al profilo di velocità completo:

$ u(y) = G/(2 mu) y^2 + (U/e - (G e)/(2 mu)) y - U = U/e (y - e) + G/(2 mu) y (y - e) $

== Calcolo della portata e studio del profilo di velocità

La portata volumetrica per unità di larghezza trasversale $Q$ si ottiene integrando il profilo di velocità $u(y)$ lungo l'altezza del meato $y in [0, e]$:

$ Q = integral_0^e u d y = integral_0^e [U/e (y - e) + G/(2 mu) (y^2 - e y)] d y = $
$ = [U/e y^2/2 - U y]_0^e + [G/(6 mu) y^3 - (G e)/(4 mu) y^2]_0^e = $
$ = (U e)/2 - U e + (G e^3)/(6 mu) - (G e^3)/(4 mu) = -1/2 U e - 1/12 (G e^3)/mu $

Il profilo di velocità può essere riletto evidenziando la sovrapposizione lineare di due contributi fisici distinti:

$ u(y) = underbrace(1/2 G/mu (y^2 - e y), "parabolica") + underbrace(U/e (y - e), "lineare") $

Si distinguono i seguenti regimi caratteristici al variare del gradiente di pressione $G = (d p)/(d x)$:
- *Caso a) $G = 0$*: in assenza di gradiente di pressione imposto, il profilo si riduce alla sola componente lineare (moto alla Couette puro):
  $ u(y) = U/e (y - e) $
- *Caso b) $G != 0$*: sviluppando i prodotti si ha la combinazione quadratica completa:
  $ u(y) = 1/2 G/mu y^2 - 1/2 G/mu y e + (U y)/e - U = 1/2 G/mu y^2 + y (U/e - 1/2 G/mu e) - U $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Analizzando il segno di $G = (d p)/(d x)$ rispetto al trascinamento della parete inferiore (che si muove con velocità $-U$ nella direzione delle $x$ negative):
    - *Caso $G = (d p)/(d x) < 0$*: la pressione diminuisce lungo $x$ ($p^+$ a sinistra, $p^-$ a destra), spingendo il fluido verso le $x$ positive; pertanto il gradiente di pressione *si oppone al moto* di trascinamento della parete inferiore.
    - *Caso $G = (d p)/(d x) > 0$*: la pressione cresce lungo $x$, spingendo il fluido nella direzione delle $x$ negative; pertanto il gradiente *sostiene il moto* della parete inferiore.
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      // Pannello 1: G < 0 (si oppone al moto)
      line((-0.5, 0), (2.5, 0), mark: (end: ">"), stroke: 0.8pt)
      content((2.6, 0), text(size: 7pt)[$x$], anchor: "west")
      line((-0.3, 2.2), (2.2, 2.2), stroke: 0.8pt)
      line((0.8, -0.2), (0.8, 2.6), mark: (end: ">"), stroke: 0.8pt)
      content((0.8, 2.7), text(size: 7pt)[$y$], anchor: "south")
      content((-0.4, 2.2), text(size: 7pt)[$y=e$], anchor: "east")
      content((-0.4, 0), text(size: 7pt)[$y=0$], anchor: "east")
      bezier((0, 0), (0.8, 2.2), (1.3, 0.8), (1.3, 1.7), stroke: 1pt)
      line((0.8, 0), (0, 0), mark: (end: ">"), stroke: 0.7pt)
      line((0.8, 0.4), (0.58, 0.4), mark: (end: ">"), stroke: 0.6pt)
      line((0.8, 1.3), (1.08, 1.3), mark: (end: ">"), stroke: 0.6pt)
      line((0.8, 1.8), (1.02, 1.8), mark: (end: ">"), stroke: 0.6pt)
      content((0.4, -0.35), text(size: 7pt)[$(-U, 0, 0)$], anchor: "north")
      content((0.8, -0.8), text(size: 7pt)[$p^+ quad G < 0 quad p^-$], anchor: "north")

      // Pannello 2: G > 0 (sostiene il moto)
      line((3.5, 0), (6.3, 0), mark: (end: ">"), stroke: 0.8pt)
      content((6.4, 0), text(size: 7pt)[$x$], anchor: "west")
      line((3.5, 2.2), (6.0, 2.2), stroke: 0.8pt)
      line((5.2, -0.2), (5.2, 2.6), mark: (end: ">"), stroke: 0.8pt)
      content((5.2, 2.7), text(size: 7pt)[$y$], anchor: "south")
      bezier((4.0, 0), (5.2, 2.2), (3.9, 0.9), (4.5, 1.7), stroke: 1pt)
      line((5.2, 0), (4.0, 0), mark: (end: ">"), stroke: 0.7pt)
      line((5.2, 0.55), (4.05, 0.55), mark: (end: ">"), stroke: 0.6pt)
      line((5.2, 1.1), (4.25, 1.1), mark: (end: ">"), stroke: 0.6pt)
      line((5.2, 1.65), (4.65, 1.65), mark: (end: ">"), stroke: 0.6pt)
      content((5.35, 1.1), text(size: 7pt)[$u(y)$], anchor: "west")
      content((4.7, -0.8), text(size: 7pt)[$G > 0$], anchor: "north")
    })
  ]
)
#v(1em)

== Calcolo del tensore degli sforzi e delle forze sulle pareti

Per un fluido newtoniano incomprimibile, il tensore degli sforzi totali $sigma_(i j)$ si esprime come:

$ sigma_(i j) = -p delta_(i j) + tau_(i j) = -p delta_(i j) + 2 mu D_(i j) = -p delta_(i j) + mu ((dif u_i)/(dif x_j) + (dif u_j)/(dif x_i)) $

Essendo il campo di velocità della forma $arrow(u) = (u(y), 0, 0)$, l'unica componente non banale del tensore degli sforzi viscosi è lo sforzo di taglio $tau = tau_(x y) = tau_(y x)$:

$ sigma_(i j) = mat(
  -p, tau, 0;
  tau, -p, 0;
  0, 0, -p
) quad "con" quad tau = mu (d u)/(d y) = mu U/e + G (y - 1/2 e) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Valutiamo la forza per unità di superficie esercitata dal fluido sulle pareti solido-fluido tramite la relazione di Cauchy $T_i = sigma_(i j) n_j$, dove $n_j$ è il versore normale uscente dalla parete verso il fluido:
    - *Sulla parete inferiore ($y = 0$)*: la normale uscente dalla parete nel dominio fluido è $n_i = (0, 1, 0)^T$, da cui:
      $ mat(-p, tau_0, 0; tau_0, -p, 0; 0, 0, -p) mat(0; 1; 0) = mat(tau_0; -p; 0) $
      con sforzo a parete pari a:
      $ tau_0 = tau(y = 0) = (mu U)/e - (G e)/2 $
    - *Sulla parete superiore ($y = e$)*: la normale diretta verso il fluido è $n_i = (0, -1, 0)^T$, pertanto il vettore sforzo risulta:
      $ F_i = mat(-tau_e; p; 0) quad "con" quad tau_e = tau(y = e) = (mu U)/e + (G e)/2 $
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      // Parete inferiore y = 0
      line((0, 2.2), (2.6, 2.2), mark: (end: ">"), stroke: 0.9pt)
      content((2.7, 2.2), text(size: 7pt)[$x$], anchor: "west")
      line((1.1, 2.2), (1.1, 3.1), mark: (end: ">"), stroke: 1pt)
      content((1.3, 2.7), text(size: 7pt)[$n_i = mat(0; 1; 0)$], anchor: "west")

      // Parete superiore y = e
      line((0, 1.2), (2.4, 1.2), stroke: 0.9pt)
      line((1.1, 1.2), (1.1, 0.4), mark: (end: ">"), stroke: 1pt)
      content((1.3, 0.8), text(size: 7pt)[$n_i = mat(0; -1; 0)$], anchor: "west")

      // Scomposizione vettore trazione T_i
      line((4.8, 0.5), (4.8, 2.3), mark: (end: ">"), stroke: 1pt)
      content((5.0, 1.8), text(size: 7pt)[$p$], anchor: "west")
      line((4.8, 0.5), (3.5, 0.5), mark: (end: ">"), stroke: 1pt)
      content((4.15, 0.35), text(size: 7pt)[$-tau_e$], anchor: "north")
      line((4.8, 0.5), (3.5, 2.1), mark: (end: ">"), stroke: 1.2pt)
      content((3.4, 2.2), text(size: 7pt)[$T_i$], anchor: "south")
    })
  ]
)
#v(1em)

=== Analisi degli ordini di grandezza

Analizziamo il rapporto tra le due componenti di sforzo normale $p$ e tangenziale $tau$ sulla parete. In termini di ordini di grandezza si ha:

$ tau = (mu U)/e + (G e)/2 tilde.op G e $

Valutando le variazioni di pressione su una scala longitudinale caratteristica del condotto $L >> e$:

$ (d p)/(d x) tilde.op G tilde.op (Delta p)/L quad arrow.r quad Delta p tilde.op G L $

Il rapporto adimensionale tra sforzo tangenziale e pressione scala quindi come il rapporto geometrico di sottigliezza del meato:

$ tau / p tilde.op (G e)/(G L) tilde.op e / L tilde.op F_x / F_y $

Tale rapporto tra la forza tangenziale $F_x$ e il carico normale $F_y$ rappresenta esattamente l'ordine di grandezza del *coefficiente di attrito* nella teoria della lubrificazione.

= Energia meccanica nei fluidi viscosi

== Bilancio diferenziale di energia cinetica

Il bilancio di energia cinetica si ottiene moltiplicando scalarmente l'equazione di Navier-Stokes in notazione indiciale per la velocità $u_i$:

$ u_i dot (rho (D u_i)/(D t)) = u_i dot (dif/(dif x_j) sigma_(i j) + rho g_i) $

Sviluppando il membro di sinistra ed esprimendo la forza di volume tramite il potenziale gravitazionale $psi$, definito in modo che $g_i = -nabla psi = - (dif psi)/(dif x_i)$ (essendo $psi = -g_i x_i = g x_3$), si ottiene:

$ D/(D t) ((rho u^2)/2) = u_i dot (dif/(dif x_j) sigma_(i j) - rho (dif psi)/(dif x_i)) $

Esplicitando la derivata materiale a primo membro in forma euleriana (con $u^2 = u_1 u_1 + u_2 u_2 + u_3 u_3 = u_i dot u_i$):

$ dif/(dif t) ((rho u^2)/2) = -u_j dif/(dif x_j) ((rho u^2)/2) - u_i rho (dif psi)/(dif x_i) + u_i (dif sigma_(i j))/(dif x_j) $

=== Caso di fluido ideale (non viscoso)

Per un fluido ideale privo di viscosità, il tensore degli sforzi è puramente isotropo:

$ sigma_(i j) = -p delta_(i j) $

cosicché il termine di potenza degli sforzi superficiali si riduce a:

$ u_i (dif sigma_(i j))/(dif x_j) = -u_i dif/(dif x_j) (p delta_(i j)) = -u_i (dif p)/(dif x_i) $

Nel caso incomprimibile e stazionario per il potenziale, il bilancio di energia cinetica diviene quindi:

$ dif/(dif t) (rho u^2 / 2) = -u_j dif/(dif x_j) [underbrace(rho u^2 / 2 + rho psi + p, cal(H) ": carico")] $

=== Caso di fluido viscoso (newtoniano)

Per un fluido newtoniano il tensore degli sforzi comprende anche il tensore degli sforzi viscosi deviatorici:

$ sigma_(i j) = -p delta_(i j) + tau_(i j) $

Studiamo come si trasforma il termine $u_i (dif sigma_(i j))/(dif x_j)$, che in notazione vettoriale corrisponde a $arrow(u) dot (nabla dot bold(sigma))$. Applicando la regola di derivazione del prodotto a ritroso, possiamo scomporlo in due contributi:

$ u_i (dif sigma_(i j))/(dif x_j) = underbrace(dif/(dif x_j) (u_i sigma_(i j)), (A)) - underbrace(sigma_(i j) (dif u_i)/(dif x_j), (B)) $

dove:
- *(A)* è un operatore di divergenza e rappresenta pertanto un *termine di flusso*;
- *(B)* rappresenta un *termine di pozzo o sorgente* locale.

Iniziamo a trattare il termine *(B)* ricordando la relazione costitutiva $sigma_(i j) = -p delta_(i j) + 2 mu D_(i j)$. Sfruttando la simmetria del tensore di deformazione $D_(i j)$, per cui la contrazione con il gradiente di velocità equivale a $D_(i j) (dif u_i)/(dif x_j) = D_(i j) D_(i j)$, si ottiene:

$ -sigma_(i j) (dif u_i)/(dif x_j) = p (dif u_j)/(dif x_j) - 2 mu D_(i j) D_(i j) $

Ricordiamo che, per l'equazione di continuità generale, la divergenza della velocità è legata alla variazione materiale di densità da $(dif u_j)/(dif x_j) = - 1/rho (D rho)/(D t)$. Inoltre, il termine $2 mu D_(i j) D_(i j)$ è una somma di quadrati ed è quindi *sempre positivo*.

Sviluppiamo ora il termine di divergenza *(A)*:

$ dif/(dif x_j) (u_i sigma_(i j)) = - dif/(dif x_j) (u_j p) + dif/(dif x_j) (u_i tau_(i j)) = -p (dif u_j)/(dif x_j) - u_j (dif p)/(dif x_j) + dif/(dif x_j) (u_i tau_(i j)) $

Mettendo insieme i risultati ottenuti per *(A)* e *(B)*, i termini di dilatazione reversibile $p (dif u_j)/(dif x_j)$ si elidono esattamente:

$ u_i (dif sigma_(i j))/(dif x_j) = underbrace(-p (dif u_j)/(dif x_j) - u_j (dif p)/(dif x_j) + dif/(dif x_j) (u_i tau_(i j)), (A)) + underbrace(p (dif u_j)/(dif x_j) - 2 mu D_(i j) D_(i j), (B)) = $
$ = -u_j (dif p)/(dif x_j) + dif/(dif x_j) (u_i tau_(i j)) - 2 mu D_(i j) D_(i j) $

Il primo addendo $-u_j (dif p)/(dif x_j)$ coincide con il termine già incontrato nel caso di fluido non viscoso ($sigma_(i j) = -p delta_(i j)$), mentre gli altri due sono i termini aggiuntivi generati dalla viscosità del fluido.

Riscriviamo dunque l'equazione locale di bilancio dell'energia cinetica:

$ dif/(dif t) (rho u^2 / 2) = -u_j dif/(dif x_j) [underbrace(rho u^2 / 2 + p + rho psi, cal(H))] - D + dif/(dif x_j) (u_i tau_(i j)) $

laddove si è definita la *dissipazione viscosa locale*:

$ D = 2 mu D_(i j) D_(i j) $

== Bilancio integrale su un volume di controllo

Integriamo l'equazione diferenziale di bilancio su un volume di controllo fisso $V$ delimitato da una superficie chiusa $S$:

$ d/(d t) integral_V (rho u^2 / 2) d V = - integral_V u_j (dif cal(H))/(dif x_j) d V - underbrace(integral_V D d V, D_v) + integral_V dif/(dif x_j) (u_i tau_(i j)) d V $

Trasformiamo il primo e il terzo termine a secondo membro in integrali di superficie mediante il teorema della divergenza (assumendo fluido incomprimibile $rho = "cost"$):

$ integral_V u_j (dif cal(H))/(dif x_j) d V = integral_V [dif/(dif x_j) (cal(H) u_j) - cal(H) underbrace((dif u_j)/(dif x_j), = 0 "se" rho = "cost!")] d V = integral_V dif/(dif x_j) (cal(H) u_j) d V = integral_S cal(H) u_j n_j d S $

Questo integrale esprime il flusso del carico totale $cal(H)$ attraverso la superficie di controllo $S$. Analogamente, per il terzo termine relativo al lavoro delle forze viscose:

$ integral_V dif/(dif x_j) (u_i tau_(i j)) d V = integral_S u_i tau_(i j) n_j d S = P_m $

Questo termine rappresenta la potenza meccanica (lavoro nell'unità di tempo) fornita attraverso la superficie $S$ in presenza di forti gradienti di velocità. Il bilancio integrale di energia cinetica diviene dunque:

$ d/(d t) integral_V rho u^2 / 2 d V = - integral_S u_j cal(H) n_j d S - D_v + P_m $

== Applicazione: moto in condotta in presenza di una macchina a fluido

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Consideriamo un tronco di condotta attraversato da un fluido in cui è installata una macchina a fluido (turbina o pompa). La superficie di controllo $S$ è costituita dalla sezione di ingresso $S_1$, dalla sezione di uscita $S_2$, dalle pareti fisse della condotta $S_w$ (su cui $arrow(u) = 0$) e dalla superficie mobile delle pale della macchina $S_m$ (su cui la portata massica attraversante è nulla, ma vi è scambio di potenza $P_m$).

    Scomponendo il flusso convettivo di carico totale sulle diverse porzioni del contorno:
    $ - integral_S arrow(u) cal(H) dot arrow(n) d S = - integral_(S_1) arrow(u) cal(H) dot arrow(n) d S_1 - integral_(S_2) arrow(u) cal(H) dot arrow(n) d S_2 - integral_(S_m) arrow(u) cal(H) dot arrow(n) d S_m = $
    $ = Q_v cal(H)_1 - Q_v cal(H)_2 $
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      // Pareti condotta
      line((0.5, 0.8), (5.5, 0.8), stroke: 1pt)
      line((0.5, 2.4), (5.5, 2.4), stroke: 1pt)
      // Sezione ingresso S_1
      circle((0.5, 1.6), radius: (0.25, 0.8), stroke: 0.9pt)
      line((0.5, 1.6), (-0.1, 1.6), mark: (end: ">"), stroke: 0.8pt)
      content((-0.15, 1.6), text(size: 7pt)[$arrow(n)$], anchor: "east")
      line((0.5, 1.4), (1.2, 1.4), mark: (end: ">"), stroke: 0.8pt)
      content((1.25, 1.4), text(size: 7pt)[$arrow(u)$], anchor: "west")
      content((0.5, 0.5), text(size: 7pt)[$S_1$], anchor: "north")

      // Sezione uscita S_2
      arc((5.5, 1.6), start: -90deg, stop: 90deg, radius: (0.25, 0.8), anchor: "origin", stroke: 0.9pt)
      arc((5.5, 1.6), start: 90deg, stop: 270deg, radius: (0.25, 0.8), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
      line((5.5, 1.6), (6.2, 1.6), mark: (end: ">"), stroke: 0.8pt)
      content((6.25, 1.6), text(size: 7pt)[$arrow(n)$], anchor: "west")
      content((5.5, 0.5), text(size: 7pt)[$S_2$], anchor: "north")

      // Macchina a fluido interna S_m
      circle((2.8, 1.6), radius: 0.12, fill: white, stroke: 0.9pt)
      circle((2.8, 1.95), radius: (0.12, 0.25), stroke: 0.8pt)
      circle((2.8, 1.25), radius: (0.12, 0.25), stroke: 0.8pt)
      content((2.8, 0.95), text(size: 7pt)[$P_m, S_m$], anchor: "north")

      // Normale parete S_w
      line((3.2, 2.4), (3.2, 2.9), mark: (end: ">"), stroke: 0.8pt)
      content((3.3, 2.8), text(size: 7pt)[$arrow(n)$], anchor: "west")
      content((4.0, 0.5), text(size: 7pt)[$S_w$], anchor: "north")
    })
  ]
)
#v(1em)

Nella relazione precedente si è assunto $cal(H)$ uniforme sulle sezioni trasversali, per cui $Q_v cal(H) = integral_S cal(H) arrow(u) dot arrow(n) d S$, essendo il flusso volumetrico (portata) definito da $Q_v = integral_S arrow(u) dot arrow(n) d S$.

Considerando il moto in regime stazionario ($d/(d t) = 0$), il bilancio integrale si riduce a:

$ P_m - D_v = integral_S arrow(u) cal(H) dot arrow(n) d S = Q_v [cal(H)_2 - cal(H)_1] $

Definendo la *perdita di carico* tra ingresso e uscita come $cal(H)_1 - cal(H)_2 = Delta cal(H)$, si ottiene:

$ Delta cal(H) Q_v = D_v - P_m $

#nota[
  Nel caso particolare di un semplice tronco di condotta passivo in cui non vi sia potenza meccanica fornita o estratta ($P_m = 0$), la relazione diventa:
  $ Delta cal(H) = D_v / Q_v $
  Questa formula fondamentale dimostra direttamente la natura fisica delle perdite di carico idrauliche: esse sono l'effetto macroscopico diretto della *dissipazione viscosa* $D_v$ all'interno del fluido.
]

= Moto, dissipazione e perdite di carico in una condotta circolare: moto di Poiseuille

== Equazione del moto e profilo di velocità in coordinate cilindriche

Studiamo il moto stazionario e incomprimibile ($rho = "cost"$, $dif/(dif t) = 0$) all'interno di una condotta cilindrica circolare di raggio $R$ e lunghezza $L$. Adottando un sistema di coordinate cilindriche $(r, theta, z)$ con asse $z$ coincidente con l'asse della condotta, cerchiamo una soluzione puramente assiale e assialsimmetrica nella forma:

$ arrow(u) = (0, 0, u(r)) $

Sotto queste ipotesi ($nabla dot arrow(u) = 0$, $arrow(u) dot nabla arrow(u) = 0$), l'equazione di bilancio della quantità di moto si riduce al sistema:

$ cases(
  0 = - (dif p)/(dif r) = - 1/r (dif p)/(dif theta),
  0 = - (dif p)/(dif z) + mu 1/r d/(d r) (r (d u)/(d r))
) $

Dalle prime due relazioni segue che la pressione dipende unicamente dalla coordinata assiale, $p = p(z)$. Riguardo l'ultima equazione lungo l'asse $z$, separando le variabili si ha:

$ (d p)/(d z) = mu 1/r d/(d r) (r (d u)/(d r)) = G $

Poiché il primo membro dipende solo da $z$ e il secondo solo da $r$, il gradiente di pressione assiale $G$ deve essere necessariamente una costante. Procediamo all'integrazione rispetto al raggio $r$:

$ integral_0^r d/(d r) (r (d u)/(d r)) d r = integral_0^r G/mu r d r quad arrow.r.double quad r (d u)/(d r) = (G r^2)/(2 mu) + C $

Imponendo per $r = 0$ la condizione di regolarità e simmetria sull'asse della condotta:

$ [r (d u)/(d r)]_(r=0) = (G r^2)/(2 mu) = 0 quad arrow.r.double quad C = 0 $

Separando nuovamente le variabili e integrando una seconda volta:

$ integral d u = G/(2 mu) integral r d r quad arrow.r.double quad u(r) = (G r^2)/(4 mu) + B $

Per $r = R$ imponiamo la condizione di aderenza alla parete interna della condotta ($u = 0$):

$ u(r = R) = 0 = (G R^2)/(4 mu) + B quad arrow.r.double quad B = - (G R^2)/(4 mu) $

Si ottiene così la distribuzione radiale di velocità del moto di Hagen-Poiseuille:

$ u(r) = G/mu (r^2 / 4 - R^2 / 4) = - (G R^2)/(4 mu) (1 - (r/R)^2) $

Il profilo di velocità è dunque *parabolico* e raggiunge il suo valore massimo $u_0$ sull'asse della condotta ($r = 0$):

$ u_0 = u(r = 0) = - (G R^2)/(4 mu) $

== Velocità media ("bulk"), portata e sforzi viscosi

Definiamo la velocità media di portata (detta velocità *"bulk"*) $u_d$ rapportando il flusso volumetrico $Q_v$ all'area della sezione trasversale $S = pi R^2$:

$ u_d = 1/S underbrace(integral_S arrow(u) dot arrow(n) d S, Q_v = "flusso in volume") = 1/(pi R^2) integral_0^R u(r) 2 pi r d r $

Calcoliamo esplicitamente l'integrale della portata volumetrica $Q_v$:

$ Q_v = 2 pi integral_0^R u(r) r d r = 2 pi integral_0^R (G R^2)/(4 mu) [r^2 / R^2 - 1] r d r = $
$ = (pi G R^2)/(2 mu) [r^4 / (4 R^2) - r^2 / 2]_0^R = (pi G R^2)/(2 mu) [R^2 / 4 - R^2 / 2] = - (pi G R^2)/(2 mu) dot 1/4 R^2 = - pi/(8 mu) G R^4 $

Dividendo per la sezione $pi R^2$, ricaviamo l'espressione della velocità media e il suo legame con la velocità massima sull'asse:

$ u_d = Q_v / (pi R^2) = - (G R^2)/(8 mu) quad arrow.r.double quad u_d = u_0 / 2 $

Invertendo tale relazione, è possibile valutare direttamente il gradiente di pressione necessario a sostenere una data velocità media:

$ (d p)/(d z) = G = - (8 mu u_d)/R^2 $

In questo modo, fissato il gradiente di pressione $G$ si ottiene univocamente la portata $Q_v$ (e dunque $u_d$), e viceversa.

=== Tensore degli sforzi viscosi

Dal tensore degli sforzi completo $sigma_(i j) = -p delta_(i j) + tau_(i j)$, con $tau_(i j) = 2 mu D_(i j)$ e $D_(i j) = 1/2 ((dif u_i)/(dif x_j) + (dif u_j)/(dif x_i))$, nel caso specifico del moto assialsimmetrico in condotta (indicando con $x$ o $z$ la direzione assiale) la matrice degli sforzi viscosi assume la forma:

$ tau_(i j) = mat(
  0, tau_(r x), 0;
  tau_(x r), 0, 0;
  0, 0, 0
) $

L'unica componente tangenziale non nulla è data da:

$ tau_(r x) = 2 mu 1/2 ((dif u_x)/(dif r) + (dif u_r)/(dif x)) = mu (dif u_x)/(dif r) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Ricordando le espressioni del profilo parabolico di velocità e della sua derivata prima radiale:
    $ u_x = 2 u_d [1 - r^2 / R^2] = (G R^2)/(4 mu) [r^2 / R^2 - 1] $
    $ (d u)/(d r) = (G r)/(2 mu) $
    si ricava immediatamente l'andamento lineare dello sforzo di taglio lungo il raggio (ricordando che, per un moto diretto nel verso positivo dell'asse, il gradiente di pressione $G$ è negativo):
    $ tau_(r x) = (G r)/2 $
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      // Pannello A: Profilo parabolico u(r)
      line((0, 0.2), (2.6, 0.2), stroke: 0.9pt)
      line((0, 2.2), (2.6, 2.2), stroke: 0.9pt)
      line((-0.2, 1.2), (2.9, 1.2), mark: (end: ">"), stroke: 0.6pt)
      content((2.95, 1.2), text(size: 7pt)[$z$], anchor: "west")
      line((0.5, -0.1), (0.5, 2.6), mark: (end: ">"), stroke: 0.8pt)
      content((0.5, 2.65), text(size: 7pt)[$r$], anchor: "south")
      bezier((0.5, 0.2), (2.1, 1.2), (1.3, 0.45), (2.1, 0.85), stroke: 1pt)
      bezier((2.1, 1.2), (0.5, 2.2), (2.1, 1.55), (1.3, 1.95), stroke: 1pt)
      line((0.5, 1.2), (2.1, 1.2), mark: (end: ">"), stroke: 0.6pt)
      line((0.5, 1.6), (1.84, 1.6), mark: (end: ">"), stroke: 0.6pt)
      line((0.5, 0.8), (1.84, 0.8), mark: (end: ">"), stroke: 0.6pt)
      line((2.1, 1.2), (2.1, 0.0), stroke: (dash: "dashed", thickness: 0.5pt))
      content((2.1, -0.05), text(size: 7pt)[$u_0$], anchor: "north")

      // Pannello B: Andamento lineare di tau_rx(r)
      line((3.8, 0.2), (6.0, 0.2), stroke: 0.9pt)
      line((3.8, 2.2), (6.0, 2.2), stroke: 0.9pt)
      line((3.6, 1.2), (6.2, 1.2), stroke: (dash: "dashed", thickness: 0.6pt))
      line((5.0, -0.1), (5.0, 2.6), mark: (end: ">"), stroke: 0.8pt)
      content((5.0, 2.65), text(size: 7pt)[$r$], anchor: "south")
      line((5.0, 1.2), (4.0, 2.2), stroke: 1pt)
      line((5.0, 1.2), (4.0, 0.2), stroke: 1pt)
      line((4.25, 1.95), (5.0, 1.95), stroke: 0.5pt)
      line((4.5, 1.7), (5.0, 1.7), stroke: 0.5pt)
      line((4.75, 1.45), (5.0, 1.45), stroke: 0.5pt)
      line((4.75, 0.95), (5.0, 0.95), stroke: 0.5pt)
      line((4.5, 0.7), (5.0, 0.7), stroke: 0.5pt)
      line((4.25, 0.45), (5.0, 0.45), stroke: 0.5pt)
      content((5.1, 0.35), text(size: 7pt)[$tau_(r x)$], anchor: "west")
    })
  ]
)
#v(1em)