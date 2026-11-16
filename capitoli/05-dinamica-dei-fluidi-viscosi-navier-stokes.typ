#import "../template.typ": *

= Dinamica dei Fluidi Viscosi (Navier-Stokes)

== Fluidi viscosi - Newtoniani

Nei fluidi ideali la dinamica del campo di moto è descritta dalle equazioni di Eulero e dal teorema di Bernoulli (che riduce un sistema di quattro equazioni differenziali accoppiate a una singola equazione scalare).

Il modello di fluido ideale cessa tuttavia di essere valido quando le scale geometriche diventano piccole (ad esempio in un canale radiale stretto): in queste condizioni si generano forti differenze di velocità concentrate su distanze molto ridotte, ovvero elevati gradienti di velocità, che rendono non più trascurabili gli effetti della viscosità.

Tra i fluidi viscosi esistono numerosi comportamenti reologici complessi; nel seguito si analizza unicamente la categoria dei *fluidi newtoniani*. In un fluido viscoso il tensore degli sforzi $sigma_(i j)$ è composto da due contributi distinti, il contributo della pressione idrodinamica $-p delta_(i j)$ e il tensore degli sforzi viscosi $tau_(i j)$:

$ sigma_(i j) = -p delta_(i j) + tau_(i j) quad <==> quad bold(sigma) = -p bold(I) + bold(tau) $ <eq:scomposizione_sforzi>

Il contributo di pressione $-p delta_(i j)$ ha due proprietà.
- Agisce sempre e solo in direzione normale alla superficie: in forma matriciale presenta termini $-p$ sulla diagonale principale e zeri fuori diagonale,
  $ -p delta_(i j) = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) $
- È ineliminabile ed è non nullo anche nel caso statico (fluido in quiete) o in moto con velocità uniforme (che equivale alla quiete per un cambio di sistema di riferimento inerziale): esiste cioè anche quando i gradienti di velocità sono nulli, $(partial u_i)/(partial x_j) = 0 arrow.r.double -p delta_(i j) != 0$.

Gli sforzi viscosi dipendono invece dai gradienti di velocità, $tau_(i j) = f((partial u_i)/(partial x_j))$. Il contributo viscoso $tau_(i j)$ esiste quindi solo se i gradienti di velocità sono diversi da zero ($(partial u_i)/(partial x_j) != 0$); nel modello di fluido ideale questo contributo viene posto identicamente nullo ($tau_(i j) = 0$) per scelta modellistica.

Il tensore degli sforzi viscosi $tau_(i j)$ è un tensore del secondo ordine simmetrico ($tau_(i j) = tau_(j i)$):

$ bold(tau) = mat(tau_(1 1), tau_(1 2), tau_(1 3); tau_(2 1), tau_(2 2), tau_(2 3); tau_(3 1), tau_(3 2), tau_(3 3)) quad "con" quad cases(tau_(1 2) = tau_(2 1), tau_(1 3) = tau_(3 1), tau_(2 3) = tau_(3 2)) $

Uno *sforzo* (in inglese *stress*) è definito come una forza per unità di superficie. Fisicamente, gli sforzi rappresentano dei *flussi (trasferimenti) di quantità di moto* all'interno del fluido, che si possono descrivere a due scale.
- *Descrizione macroscopica (mezzo continuo)*: nel moto laminare il fluido può essere visualizzato come un insieme di piani o "filetti fluidi" (lamelle) che scorrono l'uno sull'altro; lo scorrimento relativo genera uno sforzo tangenziale che trasferisce quantità di moto da uno strato a quello adiacente, trascinandolo.
- *Descrizione microscopica (molecolare)*: occorre distinguere la scala macroscopica delle particelle fluide (il cui moto organizzato dà luogo alla *convezione*) dalla scala microscopica delle singole molecole (il cui moto termico erratico e disordinato dà luogo alla *diffusione*).

Le molecole, muovendosi erraticamente, urtano continuamente tra loro scambiandosi quantità di moto:
- gli urti frontali ("spinte" dirette) generano gli *sforzi normali*;
- il passaggio trasversale di molecole tra strati a diversa velocità genera gli *sforzi tangenziali* (in analogia a persone che escono trasversalmente da un'aula immettendosi in un corridoio: avendo velocità longitudinale nulla, urtano chi cammina lungo il corridoio frenandone il moto).

Poiché hanno origine dal moto erratico molecolare, gli sforzi viscosi $tau_(i j)$ sono *flussi diffusivi di quantità di moto*. Essendo la grandezza trasportata (la quantità di moto) un vettore, per definire la direzione del trasporto e le componenti della grandezza trasportata occorrono $3 times 3 = 9$ componenti: il flusso diffusivo di quantità di moto è pertanto un tensore del secondo ordine.

Gli sforzi viscosi vanno quindi descritti come gli altri flussi diffusivi, quello di calore (legge di Fourier, legata ai gradienti di temperatura) e quello di materia (legge di Fick, legata ai gradienti di concentrazione). In entrambe le leggi:
- il *segno meno* indica che il flusso avviene in verso opposto al gradiente (da zone a temperatura o concentrazione maggiore verso zone a valore minore), tendendo a omogeneizzare spazialmente la grandezza fino a raggiungere la configurazione di equilibrio più probabile, in accordo con il secondo principio della termodinamica;
- l'operatore *gradiente* (variazione su distanze infinitesime) compare perché le scale spaziali del libero cammino medio su cui avvengono gli urti molecolari sono molto più piccole della dimensione del "punto" matematico su scala macroscopica; i fenomeni microscopici devono quindi essere rappresentati nel continuo come funzioni locali di punto tramite derivate spaziali.

In analogia con le leggi di Fourier e di Fick, gli sforzi viscosi sono proporzionali ai gradienti di velocità, $tau_(i j) prop (partial u_i)/(partial x_j)$. Il coefficiente di proporzionalità è la *viscosità dinamica* $mu$, che fisicamente rappresenta il *coefficiente di diffusione della quantità di moto*. A differenza delle leggi di Fourier e di Fick, nell'espressione di $tau_(i j)$ non si introduce il segno meno, per pura convenzione sulla definizione del verso positivo degli sforzi nel tensore $sigma_(i j)$.

Per capire quale parte del gradiente di velocità genera sforzi, lo si scompone in una parte simmetrica e una antisimmetrica. Algebricamente basta scrivere il gradiente come somma di due metà identiche e poi sommare e sottrarre il termine trasposto $1/2 (partial u_j)/(partial x_i)$:

$ (partial u_i)/(partial x_j) = 1/2 (partial u_i)/(partial x_j) + 1/2 (partial u_i)/(partial x_j) + 1/2 (partial u_j)/(partial x_i) - 1/2 (partial u_j)/(partial x_i) $

Raccogliendo i termini a due a due si ottengono la parte simmetrica $D_(i j)$ e la parte antisimmetrica $Omega_(i j)$ del gradiente:

$ (partial u_i)/(partial x_j) = underbrace(1/2 ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i)), "simmetrica" \ D_(i j)) + underbrace(1/2 ((partial u_i)/(partial x_j) - (partial u_j)/(partial x_i)), "anti-simmetrica" \ Omega_(i j)) $

Sviluppando esplicitamente le componenti in tre dimensioni, il tensore $D_(i j)$ risulta:

$ D_(i j) = mat(
  1/2 ((partial u_1)/(partial x_1) + (partial u_1)/(partial x_1)), 1/2 ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)), 1/2 ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1));
  1/2 ((partial u_2)/(partial x_1) + (partial u_1)/(partial x_2)), 1/2 ((partial u_2)/(partial x_2) + (partial u_2)/(partial x_2)), 1/2 ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2));
  1/2 ((partial u_3)/(partial x_1) + (partial u_1)/(partial x_3)), 1/2 ((partial u_3)/(partial x_2) + (partial u_2)/(partial x_3)), 1/2 ((partial u_3)/(partial x_3) + (partial u_3)/(partial x_3))
) $

Scambiando gli indici, ogni elemento fuori diagonale coincide con il suo simmetrico rispetto alla diagonale principale ($D_(1 2) = D_(2 1)$, $D_(1 3) = D_(3 1)$, $D_(2 3) = D_(3 2)$): $D_(i j)$ è un tensore simmetrico, $D_(i j) = D_(j i)$. Analogamente, lo sviluppo del tensore $Omega_(i j)$ dà:

$ Omega_(i j) = mat(
  1/2 ((partial u_1)/(partial x_1) - (partial u_1)/(partial x_1)), 1/2 ((partial u_1)/(partial x_2) - (partial u_2)/(partial x_1)), 1/2 ((partial u_1)/(partial x_3) - (partial u_3)/(partial x_1));
  1/2 ((partial u_2)/(partial x_1) - (partial u_1)/(partial x_2)), 1/2 ((partial u_2)/(partial x_2) - (partial u_2)/(partial x_2)), 1/2 ((partial u_2)/(partial x_3) - (partial u_3)/(partial x_2));
  1/2 ((partial u_3)/(partial x_1) - (partial u_1)/(partial x_3)), 1/2 ((partial u_3)/(partial x_2) - (partial u_2)/(partial x_3)), 1/2 ((partial u_3)/(partial x_3) - (partial u_3)/(partial x_3))
) $

I termini sulla diagonale principale sono identicamente nulli ($Omega_(1 1) = Omega_(2 2) = Omega_(3 3) = 0$), mentre i termini extradiagonali sono opposti ($Omega_(1 2) = -Omega_(2 1)$, $Omega_(1 3) = -Omega_(3 1)$, $Omega_(2 3) = -Omega_(3 2)$, cioè $Omega_(i j) = -Omega_(j i)$): $Omega_(i j)$ è pertanto un tensore antisimmetrico. I due tensori prendono i nomi di:
- $D_(i j)$: *tensore velocità di deformazione* (o, più brevemente, tensore delle deformazioni);
- $Omega_(i j)$: *tensore di vorticità*.

Fisicamente, una particella fluida (volume infinitesimo) sottoposta a un gradiente di velocità subisce due atti di moto indipendenti:
- $D_(i j)$ descrive la *deformazione*, ovvero la variazione di forma del volume fluido;
- $Omega_(i j)$ descrive la *rotazione rigida* (come corpo solido) della particella fluida attorno ai tre assi coordinati.

Si può dimostrare che $tau_(i j)$ deve dipendere unicamente da $D_(i j)$: il tensore di vorticità $Omega_(i j)$ non contribuisce al tensore degli sforzi viscosi per due argomenti fondamentali.
1. *Argomento fisico*: in un atto di pura rotazione rigida, a ogni trasporto di quantità di moto in un verso ne corrisponde uno simmetrico e opposto dal lato opposto; il flusso netto di quantità di moto trasferito per rotazione rigida è quindi nullo.
2. *Argomento teorico (invarianza del sistema di riferimento)*: le leggi costitutive della fisica devono essere oggettive, ovvero indipendenti da atti di moto rigido (sia di traslazione a velocità costante, sia di rotazione a velocità angolare costante) del sistema di riferimento. Se $tau_(i j)$ dipendesse da $Omega_(i j)$, gli sforzi dipenderebbero da un'eventuale rotazione del sistema di riferimento scelto.

Gli sforzi viscosi sono quindi proporzionali al solo tensore velocità di deformazione, con coefficiente $2 mu$:

$ tau_(i j) = 2 mu D_(i j) quad <==> quad bold(tau) = 2 mu bold(D) $

Esplicitando i gradienti di velocità si vede che il fattore $2$ è introdotto per compensare il coefficiente $1/2$ presente nella definizione di $D_(i j)$:

$ tau_(i j) = mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i)) = 2 mu underbrace(1/2 ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i)), D_(i j)) = 2 mu D_(i j) $

Sostituendo questa relazione nella scomposizione degli sforzi (@eq:scomposizione_sforzi) si ottiene l'equazione costitutiva dei fluidi newtoniani:

$ sigma_(i j) = -p delta_(i j) + 2 mu D_(i j) quad <==> quad bold(sigma) = -p bold(I) + 2 mu bold(D) $ <eq:costitutiva_newtoniani>

Tale equazione costitutiva vale in senso stretto per fluidi incomprimibili (a densità costante, $rho = "cost"$); nel caso comprimibile comparirebbe un ulteriore termine legato alle variazioni di volume. In forma matriciale estesa, il tensore degli sforzi completo è:

$ bold(sigma) = mat(
  -p + 2 mu D_(1 1), 2 mu D_(1 2), 2 mu D_(1 3);
  2 mu D_(2 1), -p + 2 mu D_(2 2), 2 mu D_(2 3);
  2 mu D_(3 1), 2 mu D_(3 2), -p + 2 mu D_(3 3)
) $

La pressione $p$ contribuisce quindi esclusivamente agli sforzi normali (sulla diagonale principale), mentre il termine viscoso $2 mu D_(i j)$ contribuisce sia agli sforzi normali (diagonali) sia agli sforzi tangenziali (fuori diagonale).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Per ricavare l'equazione del moto si considera un volume materiale $D(t)$ (indicato con $V$ in figura), che si muove con velocità $arrow(u)$, di superficie $S$. Per il teorema del trasporto di Reynolds, applicato a un volume materiale, la derivata temporale della quantità di moto contenuta nel volume si porta sotto il segno di integrale come derivata lagrangiana della velocità:

    $ dif/(dif t) integral_(D(t)) rho u_i dif V = integral_(D(t)) rho (D u_i)/(D t) dif V $
  ],
  [
    #figure(include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig01.typ")
  ]
)

Per il secondo principio della dinamica questa variazione è uguale alla risultante delle forze di volume, di densità $rho f_i$, e delle forze di superficie esercitate sul contorno $S$:

$ integral_(D(t)) rho (D u_i)/(D t) dif V = integral_(D(t)) rho f_i dif V + integral_S sigma_(i j) n_j dif S $

Data una superficie (ad esempio una parete solida) individuata dal versore normale $n_j$, la quantità integranda $t_i = sigma_(i j) n_j$ rappresenta la forza per unità di superficie (vettore sforzo o tensione) esercitata dal fluido sulla parete. Con la legge costitutiva (@eq:costitutiva_newtoniani) essa vale:

$ t_i = sigma_(i j) n_j = -p delta_(i j) n_j + 2 mu D_(i j) n_j $

Tale forza per unità di superficie:
- dipende dall'orientazione locale della parete tramite il versore normale $n_j$;
- si compone di un contributo puramente normale dovuto alla pressione ($-p delta_(i j) n_j$) e di un contributo sia normale che tangenziale dovuto agli sforzi viscosi ($2 mu D_(i j) n_j$), entrambi valutati tramite il valore della pressione e dei gradienti di velocità alla parete;
- integrata su una superficie finita $S$, restituisce la forza totale esercitata dal fluido sulla superficie stessa.

Per passare dal bilancio integrale a un'equazione locale, il teorema di Gauss trasforma l'integrale di superficie delle forze di contatto in un integrale di volume della divergenza del tensore degli sforzi:

$ integral_(D(t)) rho (D u_i)/(D t) dif V = integral_(D(t)) rho f_i dif V + integral_(D(t)) partial/(partial x_j) sigma_(i j) dif V $

Tutti i termini sono ora integrali sullo stesso volume. Poiché il volume materiale $D(t)$ è arbitrario, l'uguaglianza vale anche tra gli integrandi, e si ottiene l'equazione indefinita di bilancio della quantità di moto (equazione di Cauchy):

$ rho (D u_i)/(D t) = rho f_i + (partial sigma_(i j))/(partial x_j) quad <==> quad rho (D arrow(u))/(D t) = rho arrow(f) + nabla dot bold(sigma) $ <eq:cauchy_indefinita>

Per un fluido newtoniano occorre ora sviluppare la componente $i$-esima della divergenza del tensore degli sforzi, $(nabla dot bold(sigma))_i = partial/(partial x_j) sigma_(i j)$. Scomponendo $sigma_(i j)$ nella parte di pressione e nella parte viscosa (@eq:scomposizione_sforzi) si ha:

$ (nabla dot bold(sigma))_i = partial/(partial x_j) sigma_(i j) = partial/(partial x_j) (-p delta_(i j) + tau_(i j)) $

Per la linearità della derivata, il termine si separa in un contributo di pressione e in uno viscoso, nel quale si sostituisce la legge costitutiva $tau_(i j) = 2 mu D_(i j)$:

$ (nabla dot bold(sigma))_i = -partial/(partial x_j) (p delta_(i j)) + partial/(partial x_j) (2 mu D_(i j)) $

Nel termine di pressione le componenti di $delta_(i j)$ sono costanti ($1$ se $i = j$, $0$ se $i != j$), per cui il tensore esce dalla derivata e, nella somma sull'indice muto $j$, seleziona soltanto il termine con $j = i$ (proprietà di sostituzione della delta di Kronecker): $-delta_(i j) (partial p)/(partial x_j)$ diventa la componente $i$-esima del gradiente di pressione. Nel termine viscoso si sostituisce la definizione cinematica di $D_(i j)$, cioè $D_(i j) = 1/2 ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))$, il cui fattore $1/2$ si semplifica con il $2$. La viscosità resta invece dentro la derivata (dipendenza spaziale della viscosità), perché nel caso generale può variare punto per punto (ad esempio a causa di gradienti termici, $mu = mu(T(arrow(x)))$):

$ (nabla dot bold(sigma))_i = -delta_(i j) (partial p)/(partial x_j) + partial/(partial x_j) (2 mu D_(i j)) = -(partial p)/(partial x_i) + partial/(partial x_j) [mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))] $

In notazione vettoriale compatta, la divergenza del tensore degli sforzi è quindi la somma del gradiente di pressione cambiato di segno e della divergenza degli sforzi viscosi:

$ nabla dot bold(sigma) = -nabla p + nabla dot (2 mu bold(D)) $

Sostituendo l'espressione per componenti appena ricavata nell'equazione di Cauchy (@eq:cauchy_indefinita), si ottiene:

$ rho (D u_i)/(D t) = -(partial p)/(partial x_i) + rho f_i + partial/(partial x_j) [mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))] $ <eq:cauchy_newtoniano>

Si sviluppa ora il termine viscoso nell'ipotesi $mu = "cost"$ e $rho = "cost"$. L'ipotesi di viscosità dinamica costante è fisicamente solida in assenza di forti gradienti di temperatura: sebbene nei fluidi reali (come acqua e aria) la viscosità dipenda dalla temperatura, in problemi isotermi o in cui gli effetti termici sono trascurabili tale dipendenza può essere omessa, e $mu$ esce dall'operatore di derivazione spaziale. Nel secondo termine si inverte poi l'ordine di derivazione, come consentito dal teorema di Schwarz:

$ partial/(partial x_j) [mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))] = mu (partial^2 u_i)/(partial x_j partial x_j) + mu partial/(partial x_j) (partial u_j)/(partial x_i) = mu (partial^2 u_i)/(partial x_j^2) + mu partial/(partial x_i) (partial u_j)/(partial x_j) $

I due contributi viscosi hanno la seguente interpretazione operatoriale.
- Il primo termine, $(partial^2 u_i)/(partial x_j^2) = partial/(partial x_j) ((partial u_i)/(partial x_j))$, rappresenta la divergenza del gradiente di $u_i$, ovvero l'operatore Laplaciano applicato al campo di velocità: $mu nabla^2 u_i = mu Delta u_i$.
- Nel secondo termine, dopo lo scambio dell'ordine di derivazione, l'operatore interno $(partial u_j)/(partial x_j)$ (con indice $j$ ripetuto e saturato) è uno scalare pari alla divergenza del campo di velocità ($nabla dot arrow(u)$), a cui viene applicato l'operatore gradiente $partial/(partial x_i)$ (con indice libero $i$), restituendo il vettore $mu nabla (nabla dot arrow(u))$.

Per la conservazione della massa con $rho = "cost"$ si ha $(partial u_j)/(partial x_j) = 0$, ovvero $nabla dot arrow(u) = 0$: il secondo termine si annulla. Sostituendo nell'@eq:cauchy_newtoniano resta il solo termine laplaciano:

$ rho (D u_i)/(D t) = -(partial p)/(partial x_i) + rho f_i + mu (partial^2 u_i)/(partial x_j^2) quad <==> quad rho (D arrow(u))/(D t) = -nabla p + rho arrow(f) + mu Delta arrow(u) $

Dividendo l'equazione per la densità $rho$, ponendo la forza di massa pari all'accelerazione di gravità ($arrow(f) = arrow(g)$) ed esplicitando la derivata materiale, si ottiene la forma vettoriale dell'equazione di Navier-Stokes per un fluido incomprimibile:

$ (partial arrow(u))/(partial t) + (arrow(u) dot nabla) arrow(u) = -1/rho nabla p + arrow(g) + nu Delta arrow(u) $ <eq:navier_stokes>

dove $nu = mu / rho$ è la viscosità cinematica del fluido, avente dimensioni fisiche $[nu] = "m"^2 / "s"$. Ciascun termine dell'equazione possiede uno specifico significato fisico e matematico:
- $(partial arrow(u))/(partial t)$: termine instazionario (variazione locale nel tempo);
- $(arrow(u) dot nabla) arrow(u)$: termine convettivo (prodotto interno tra il vettore velocità e l'operatore gradiente applicato a $arrow(u)$);
- $-1/rho nabla p$: termine dovuto al gradiente di pressione;
- $arrow(g)$: termine di forza di volume (gravità);
- $nu Delta arrow(u)$: termine viscoso o diffusivo.

Il termine convettivo $(arrow(u) dot nabla) arrow(u)$ (in componenti $u_j (partial u_i)/(partial x_j)$) costituisce il termine non lineare dell'equazione di Navier-Stokes ed è la principale fonte della sua complessità matematica: esso descrive l'interazione del campo di velocità con se stesso e, nello spazio tridimensionale, si sviluppa in $9$ termini scalari in cui ogni componente di velocità si accoppia con i gradienti spaziali di tutte le componenti.

=== Fenomeni fisici nell'equazione di Navier-Stokes

L'equazione di Navier-Stokes racchiude tre meccanismi fisici fondamentali:
1. *Convezione* (termine convettivo): trasporto coerente di fluido e di quantità di moto su scala macroscopica.
2. *Diffusione* (termine viscoso): scambio di quantità di moto tra strati (lamelle) adiacenti di fluido dovuto al moto di agitazione caotica delle molecole su scala microscopica.
3. *Propagazione di onde di pressione o acustiche*: fenomeno legato alla comprimibilità del fluido, in cui l'addensamento locale delle particelle fluide genera spinte normali sulle particelle adiacenti, seguito da rilassamento.

Il peso relativo dei tre fenomeni si chiarisce confrontando le loro scale caratteristiche di velocità.
- La propagazione delle onde di pressione avviene alla velocità del suono $c$ (dell'ordine di $300 "m/s"$ nell'aria e circa $10$ volte superiore nell'acqua, poiché meno comprimibile), ed è quindi estremamente più rapida sia dei fenomeni diffusivi (molto lenti, con tempi scala dell'ordine delle ore o dei giorni), sia delle tipiche velocità convettive in regime subsonico.
- Al diminuire della comprimibilità del fluido la velocità del suono aumenta: nel modello limite di fluido perfettamente incomprimibile ($rho = "cost"$) la velocità di propagazione delle onde di pressione tende a infinito ($c arrow.r infinity$).
- Nel modello incomprimibile questo terzo fenomeno è quindi banalizzato: qualsiasi perturbazione di pressione si propaga istantaneamente in tutto il dominio, e il campo di pressione raggiunge all'istante una configurazione di equilibrio determinata dal bilanciamento tra i termini convettivi e i termini diffusivi.

=== Ruolo della gravità e scomposizione della pressione

Per un fluido a densità costante la gravità può essere eliminata dall'@eq:navier_stokes scomponendo la pressione in un contributo idrostatico e in un contributo dinamico. La derivazione, insieme alle sue conseguenze fisiche (indipendenza della dinamica dalla gravità, calcolo a posteriori della pressione totale, limiti di validità), è svolta per esteso nella sezione «Influenza della gravità sulla dinamica del moto nei fluidi a densità costante», che porta all'@eq:ns_pressione_motrice.

=== Esempio di flusso viscoso: moto di Couette piano

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Si considera un fluido viscoso compreso tra due piastre piane parallele indefinite, poste a distanza $h$ (unica dimensione geometrica caratteristica del problema). La piastra inferiore ($x_2 = 0$) è ferma, mentre la piastra superiore ($x_2 = h$) trasla nel proprio piano con velocità costante $U_e$ lungo la direzione $x_1$.
  ],
  [
    #include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig02.typ"
  ]
)

A differenza di un fluido ideale (che trasmette solo sforzi normali e rispetta unicamente la condizione di impermeabilità, potendo scorrere senza attrito lungo la parete), un fluido reale viscoso è in grado di trasmettere sforzi tangenziali. Vale pertanto la *condizione di aderenza* (*no-slip condition*): il fluido a contatto con una parete solida ha velocità relativa nulla rispetto ad essa, cioè ne assume la medesima velocità. Sulle due piastre si ha quindi:

$ cases(
  u_1 (x_2 = 0) = 0,
  u_1 (x_2 = h) = U_e
) $

Si formulano le seguenti ipotesi sul campo di moto:
- regime stazionario: $partial / (partial t) = 0$;
- moto piano e unidirezionale lungo $x_1$: $arrow(u) = (u_1, 0, 0)$, con $u_2$ e $u_3$ identicamente nulli;
- invarianza lungo $x_1$ e $x_3$ per l'indefinitezza delle piastre: $partial / (partial x_1) = 0$ e $partial / (partial x_3) = 0$, per cui $u_1 = u_1 (x_2)$.

In queste condizioni il campo di velocità evolve linearmente con $x_2$, con gradiente costante:

$ (partial u_1)/(partial x_2) = U_e / h $

Integrando e imponendo le condizioni di aderenza, il profilo di velocità risulta lineare, nullo sulla piastra ferma e pari a $U_e$ su quella mobile:

$ u_1 (x_2) = U_e x_2 / h $

==== Tensore degli sforzi

Si calcola il tensore degli sforzi in prossimità della parete mobile $x_2 = h$, scrivendo per esteso la legge costitutiva (@eq:costitutiva_newtoniani) in termini dei gradienti di velocità:

$ lr(sigma_(i j)|)_(x_2 = h) = mat(delim: "[",
  -p + mu ((partial u_1)/(partial x_1) + (partial u_1)/(partial x_1)), mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)), mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1));
  mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)), -p + mu ((partial u_2)/(partial x_2) + (partial u_2)/(partial x_2)), mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2));
  mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1)), mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2)), -p + mu ((partial u_3)/(partial x_3) + (partial u_3)/(partial x_3))
)_(x_2 = h) $

I singoli contributi viscosi $tau_(i j) = 2 mu D_(i j) = mu ((partial u_i)/(partial x_j) + (partial u_j)/(partial x_i))$ si semplificano con le ipotesi sul campo di moto.
- *Componenti normali viscose (diagonali)*. La prima è nulla perché $u_1$ non dipende da $x_1$; le altre due sono nulle perché $u_2 = u_3 = 0$:
  $ tau_(1 1) = 2 mu (partial u_1)/(partial x_1) = 0, quad tau_(2 2) = 2 mu (partial u_2)/(partial x_2) = 0, quad tau_(3 3) = 2 mu (partial u_3)/(partial x_3) = 0 $
  Sulla diagonale principale sopravvive dunque il solo contributo isotropo della pressione $-p$.
- *Componenti tangenziali nel piano $(x_1, x_2)$*. Sopravvive soltanto il gradiente $(partial u_1)/(partial x_2)$, dato dal profilo lineare:
  $ tau_(1 2) = mu ((partial u_1)/(partial x_2) + (partial u_2)/(partial x_1)) = mu (U_e / h + 0) = mu U_e / h $
  Per la simmetria del tensore degli sforzi si ha $tau_(2 1) = tau_(1 2) = mu U_e / h$. Poiché il gradiente di velocità è uniforme, tale sforzo tangenziale è costante in ogni punto del dominio fluido (sia in $x_2 = 0$ sia in $x_2 = h$).
- *Componenti tangenziali fuori piano*. Sono nulle poiché $u_2 = u_3 = 0$ e nessuna grandezza varia lungo $x_3$:
  $ tau_(1 3) = tau_(3 1) = mu ((partial u_1)/(partial x_3) + (partial u_3)/(partial x_1)) = 0, quad tau_(2 3) = tau_(3 2) = mu ((partial u_2)/(partial x_3) + (partial u_3)/(partial x_2)) = 0 $

Nel caso specifico il tensore si riduce quindi alla pressione sulla diagonale e al solo sforzo tangenziale $mu U_e \/ h$ fuori diagonale:

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

Poiché le piastre hanno estensione infinita lungo $x_1$ e $x_3$, la forza totale risulterebbe infinita; ha quindi senso calcolare unicamente la *forza per unità di superficie*, ovvero il vettore tensione $arrow(t) = bold(sigma) dot arrow(n)$, di componenti $t_i = sigma_(i j) n_j$.

Il verso del versore normale $arrow(n)$ stabilisce chi agisce su chi: $arrow(t)$ è la forza esercitata dal mezzo verso cui punta $arrow(n)$ sul mezzo che si trova dall'altra parte della superficie. Scambiare il verso di $arrow(n)$ equivale quindi a passare dall'azione alla reazione.

*Parete mobile ($x_2 = h$).* La forza per unità di superficie esercitata dalla piastra sul fluido si ottiene con la normale uscente dal fluido, $arrow(n) = (0, 1, 0)^T$, che seleziona la seconda colonna del tensore:

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

*Parete ferma ($x_2 = 0$).* Anche qui l'orientazione di $arrow(n)$ distingue l'azione del fluido sulla parete dalla reazione della parete sul fluido.
1. *Forza per unità di superficie esercitata dal fluido sulla parete inferiore*. Si utilizza il versore normale uscente dalla parete, $arrow(n) = (0, 1, 0)^T$, che punta verso il fluido; essendo gli sforzi uniformi nel dominio, il risultato coincide con quello ottenuto sulla parete mobile:
   $ arrow(t)_("fluido" arrow.r "parete") = (mu U_e / h, -p, 0) $
   Il fluido esercita sulla parete inferiore una componente tangenziale positiva $+mu U_e / h$ lungo $x_1$ (tende a trascinare la parete nel verso del moto) e una componente normale negativa $-p$ lungo $x_2$ (schiaccia la parete verso il basso).
2. *Forza per unità di superficie esercitata dalla parete inferiore sul fluido*. Per il principio di azione e reazione si utilizza il versore normale opposto, $arrow(n) = (0, -1, 0)^T$:
   $ arrow(t)_("parete" arrow.r "fluido") = mat(delim: "[",
     -p, mu U_e / h, 0;
     mu U_e / h, -p, 0;
     0, 0, -p
   ) mat(delim: "[", 0; -1; 0) = (-mu U_e / h, p, 0) $
   La parete inferiore reagisce sostenendo il fluido con una pressione normale $+p$ diretta lungo $+x_2$ ed esercitando uno sforzo tangenziale $-mu U_e / h$ diretto lungo $-x_1$, ovvero opposto al moto, che tende a frenare il fluido.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig03.typ"
  ],
  [
    #include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig04.typ"
  ]
)

== Influenza della gravità sulla dinamica del moto nei fluidi a densità costante

Per analizzare l'effetto della forza di gravità in un fluido a densità $rho = "cost"$, è sempre possibile scomporre in ogni punto la pressione totale $p$ nella somma di un contributo idrostatico $p_"hs"$ e di una pressione dinamica (o motrice) $p^*$:

$ p = p_"hs" + p^* $

Il contributo idrostatico $p_"hs"$ è la distribuzione di pressione che si avrebbe se il fluido fosse in quiete; la pressione motrice $p^*$ è il contributo non idrostatico, cioè la variazione locale di pressione rispetto alla condizione statica indotta esclusivamente dal movimento del fluido. Per la legge dell'idrostatica, il gradiente della pressione idrostatica bilancia la forza peso per unità di volume:

$ nabla p_"hs" = rho arrow(g) $

Si osservi che $p_"hs"$ non è costante: dipende unicamente dalla coordinata verticale $z$. Al contrario, il termine $p^*(arrow(x))$ dipende in generale da tutte e tre le coordinate spaziali (e, in linea di principio, anche dal tempo $t$). Poiché il gradiente è un operatore lineare, la scomposizione vale anche per i gradienti, e il primo dei due si esprime con la legge idrostatica:

$ nabla p = nabla p_"hs" + nabla p^* = rho arrow(g) + nabla p^* $

Si riprenda ora l'equazione di Navier-Stokes (N-S) per un fluido incomprimibile (@eq:navier_stokes), scritta con la derivata lagrangiana, $(D arrow(u))/(D t) = -1/rho nabla p + arrow(g) + nu Delta arrow(u)$. Sostituendo la scomposizione della pressione nei termini di forza di pressione e di volume, il contributo idrostatico compensa esattamente la gravità:

$
-1/rho nabla p + arrow(g) &= -1/rho nabla(p_"hs" + p^*) + arrow(g) = -1/rho (rho arrow(g) + nabla p^*) + arrow(g) \
&= -arrow(g) - 1/rho nabla p^* + arrow(g) = -1/rho nabla p^*
$

L'equazione di Navier-Stokes si riscrive quindi nella forma compatta, senza l'accelerazione di gravità:

$ (D arrow(u))/(D t) = (partial arrow(u))/(partial t) + (arrow(u) dot nabla) arrow(u) = - 1/rho nabla p^* + nu Delta arrow(u) $ <eq:ns_pressione_motrice>

#nota[
  Dalla riformulazione dell'equazione di Navier-Stokes in termini di $p^*$ emergono importanti conseguenze fisiche.
  1. *Indipendenza della dinamica dalla gravità*: l'accelerazione di gravità $arrow(g)$ scompare esplicitamente dall'equazione del moto. Per un fluido a densità costante ($rho = "cost"$) la gravità non ha quindi alcuna influenza sulla dinamica del fluido: il campo di velocità $arrow(u)$ e il campo di pressione dinamica $p^*$ dipendono unicamente dall'interazione tra effetti convettivi e viscosi.
  2. La pressione cambia significato fisico: al posto di $p$ compare la pressione motrice $p^*$, che è quella che governa effettivamente la dinamica del fluido.
  3. *Calcolo della pressione totale*: una volta determinato $p^*$ tramite l'equazione del moto (ad esempio attorno a un corpo investito da una corrente, dove $p^* > 0$ nella zona di impatto a monte e $p^* < 0$ a valle), la pressione effettiva $p$ si ottiene sommando a posteriori il contributo idrostatico $p_"hs"$, calcolato separatamente tramite la statica dei fluidi ($nabla p_"hs" = rho arrow(g)$) a partire da una pressione di riferimento.
  4. *Limiti di validità*: l'indipendenza del campo di moto dalla gravità cessa di valere non appena la densità non è più uniforme ($rho != "cost"$), come avviene in presenza di forti gradienti di temperatura (convezione naturale) o in flussi multifase a superficie libera (ad esempio acqua che scorre in aria, dove il salto di densità di un fattore circa $10^3$ tra i due fluidi rende il termine gravitazionale determinante).
]


== Esempio: Teoria della lubrificazione

=== Equazioni di bilancio di quantità di moto e condizioni al limite

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Si consideri il moto stazionario di un fluido viscoso confinato tra due pareti piane parallele poste a distanza $e$: la parete inferiore ($y = 0$) si muove con velocità $(-U, 0, 0)$, quella superiore ($y = e$) è ferma. Il problema consiste nello scrivere le equazioni di bilancio di quantità di moto con le relative condizioni al limite, cercando una soluzione stazionaria del tipo:

    $ arrow(u) = mat(u(y); 0; 0) quad "e" quad p = p(x) $

    e mostrando che il gradiente longitudinale di pressione $G = dif p \/ dif x$ è costante.
  ],
  [
    #figure(
      include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig05.typ",
    )
  ]
)

Il punto di partenza è il sistema completo delle equazioni di Navier-Stokes e di continuità per un fluido incomprimibile:

$ cases(
  rho ((partial arrow(u))/(partial t) + arrow(u) dot nabla arrow(u)) = -nabla p + mu Delta arrow(u),
  nabla dot arrow(u) = 0
) $

Le condizioni al contorno di aderenza alle pareti impongono:
- $arrow(u) = (-U, 0, 0)$ per $y = 0$ (parete inferiore in moto verso le $x$ negative);
- $arrow(u) = 0$ per $y = e$ (parete superiore ferma).

Si cerca una soluzione della forma $arrow(u) = (u(y), 0, 0)^T$ in regime stazionario, per cui $partial arrow(u) \/ partial t = 0$. Poiché $u_y = u_z = 0$ e la componente $u_x = u(y)$ dipende unicamente dalla coordinata trasversale $y$, il termine convettivo non lineare è identicamente nullo:

$ arrow(u) dot nabla arrow(u) = u_j (partial u_i)/(partial x_j) = (u_x partial/(partial x) + u_y partial/(partial y) + u_z partial/(partial z)) arrow(u) = 0 $

Per la stessa ragione, nel termine diffusivo viscoso sopravvive soltanto la derivata seconda di $u$ rispetto a $y$:

$ mu Delta arrow(u) = mu ((partial^2 u)/(partial x^2) + (partial^2 u)/(partial y^2) + (partial^2 u)/(partial z^2), 0, 0) = mu ((dif^2 u)/(dif y^2), 0, 0) $

Le componenti lungo gli assi $y$ e $z$ dell'equazione di quantità di moto non contengono quindi né termini convettivi né termini viscosi, e si riducono all'annullarsi del gradiente di pressione trasversale:

$ (partial p)/(partial y) = (partial p)/(partial z) = 0 quad arrow.r.double quad p = p(x) $

La proiezione lungo l'asse $x$ si riduce pertanto all'equilibrio tra gradiente di pressione e sforzi viscosi:

$ (dif^2 u)/(dif y^2) = (G(x))/mu $

Il membro di sinistra è funzione della sola variabile $y$, mentre quello di destra dipende unicamente da $x$: un'uguaglianza del tipo $f(y) = g(x)$ può essere verificata in ogni punto del dominio solo se entrambi i membri sono uguali a una medesima costante. Il gradiente di pressione è quindi uniforme:

$ f(y) = g(x) = "cost" quad arrow.r.double quad G = (dif p)/(dif x) = "cost" $

Con $G$ costante, l'equazione differenziale ordinaria $dif^2 u \/ dif y^2 = G \/ mu$ si integra due volte rispetto a $y$:

$ (dif u)/(dif y) = G/mu y + A quad arrow.r.double quad u(y) = G/(2 mu) y^2 + A y + B $

Le costanti di integrazione $A$ e $B$ si determinano imponendo le condizioni al contorno. La condizione di aderenza sulla parete inferiore mobile fissa direttamente $B$:

$ u(0) = -U quad arrow.r.double quad B = -U $

La condizione sulla parete superiore ferma, con $B = -U$ già noto, determina $A$:

$ u(e) = 0 quad arrow.r.double quad 0 = G/(2 mu) e^2 + A e - U quad arrow.r.double quad A = U/e - (G e)/(2 mu) $

Sostituendo le costanti nell'espressione di $u(y)$ e raccogliendo i termini, si giunge al profilo di velocità completo:

$ u(y) = G/(2 mu) y^2 + (U/e - (G e)/(2 mu)) y - U = U/e (y - e) + G/(2 mu) y (y - e) $ <eq:profilo_lubrificazione>

=== Calcolo della portata e studio del profilo di velocità

La portata volumetrica per unità di larghezza trasversale $Q$ si ottiene integrando il profilo di velocità $u(y)$ (@eq:profilo_lubrificazione) lungo l'altezza del meato $y in [0, e]$:

$
Q &= integral_0^e u dif y = integral_0^e [U/e (y - e) + G/(2 mu) (y^2 - e y)] dif y \
  &= [U/e y^2/2 - U y]_0^e + [G/(6 mu) y^3 - (G e)/(4 mu) y^2]_0^e \
  &= (U e)/2 - U e + (G e^3)/(6 mu) - (G e^3)/(4 mu) = -1/2 U e - 1/12 (G e^3)/mu
$

Il primo termine della portata è dovuto al trascinamento della parete inferiore, il secondo al gradiente di pressione. Allo stesso modo, il profilo di velocità può essere riletto come sovrapposizione lineare di due contributi fisici distinti:

$ u(y) = underbrace(1/2 G/mu (y^2 - e y), "parabolica") + underbrace(U/e (y - e), "lineare") $

#figure(
  include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig06.typ",
)

Al variare del gradiente di pressione $G = dif p \/ dif x$ si distinguono i seguenti regimi caratteristici.
- *Caso a) $G = 0$*: in assenza di gradiente di pressione imposto, il profilo si riduce alla sola componente lineare (moto alla Couette puro):
  $ u(y) = U/e (y - e) $
  Si ritrova esattamente il campo di moto lineare analizzato nell'esempio del moto di Couette piano, in cui la velocità varia linearmente da $u(e) = 0$ sulla parete superiore ferma fino a $u(0) = -U$ sulla piastra inferiore mobile (ovvero da $0$ a $-1$ in termini della velocità adimensionale $u \/ U$).
- *Caso b) $G != 0$*: sviluppando i prodotti si ha la combinazione quadratica completa:
  $ u(y) = 1/2 G/mu y^2 - 1/2 G/mu y e + (U y)/e - U = 1/2 G/mu y^2 + y (U/e - 1/2 G/mu e) - U $

Il segno di $G = dif p \/ dif x$ va confrontato con il trascinamento della parete inferiore, che si muove con velocità $-U$ nella direzione delle $x$ negative. Alle piccole scale il moto indotto dal gradiente di pressione è sempre diretto verso $-nabla p$, ossia dalla regione a pressione più alta ($p^+$) a quella a pressione più bassa ($p^-$).
- *Caso $G = dif p \/ dif x > 0$*: la pressione cresce lungo $x$ ($p^-$ a sinistra, $p^+$ a destra) e spinge il fluido verso le $x$ negative; il gradiente *sostiene il moto* della parete inferiore. Il contributo del gradiente di pressione si somma quindi a quello indotto dallo scorrimento della lamina inferiore, determinando uno "spanciamento" del profilo di velocità verso sinistra. Se $G > 0$ è sufficientemente grande, la velocità del fluido all'interno del meato può superare in modulo la velocità stessa della piastra ($|u(y)| > U$, ovvero $u(y) < -U$), pur continuando a rispettare la condizione di aderenza $u(0) = -U$ sulla parete inferiore.
- *Caso $G = dif p \/ dif x < 0$*: la pressione diminuisce lungo $x$ ($p^+$ a sinistra, $p^-$ a destra) e spinge il fluido verso le $x$ positive; il gradiente di pressione *si oppone al moto* di trascinamento della parete inferiore. In questo regime il contributo parabolico incurva il profilo di velocità verso le $x$ positive: al crescere di $|G|$ il flusso verso sinistra viene progressivamente frenato fino a poter presentare un'inversione di moto ($u(y) > 0$) nella porzione superiore del canale.

#figure(
  include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig07.typ",
)

==== Calcolo degli sforzi tangenziali alle pareti

Derivando il profilo di velocità $u(y)$ (@eq:profilo_lubrificazione) rispetto a $y$, la componente tangenziale dello sforzo viscoso nel fluido risulta lineare in $y$:

$ tau_(x y)(y) = mu (dif u)/(dif y) = G y + mu U/e - 1/2 G e $

Valutando tale espressione in corrispondenza delle due pareti che delimitano il meato si ottengono i due valori a parete. Sulla piastra inferiore ($y = 0$) il contributo del gradiente di pressione si sottrae a quello del trascinamento:

$ lr(tau_(x y)|)_(y = 0) = mu lr((dif u)/(dif y)|)_(y = 0) = mu U/e - 1/2 G e $

Sulla parete superiore ($y = e$), invece, i due contributi si sommano:

$ lr(tau_(x y)|)_(y = e) = mu lr((dif u)/(dif y)|)_(y = e) = mu U/e + 1/2 G e $

La figura seguente riporta l'andamento delle famiglie di profili di velocità $u(y)$ al variare del segno e dell'intensità di $G$, separate dal profilo lineare $G = 0$.

#figure(
  include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig08.typ",
)

=== Estensione al caso di piastra di lunghezza finita e analisi degli ordini di grandezza

Si estende ora qualitativamente il problema al caso reale in cui una delle due pareti (ad esempio la piastra superiore) abbia un'estensione longitudinale finita $L$ e scorra al di sopra di un piano separata da un sottile strato di fluido incomprimibile di spessore $e$.

L'ipotesi fondamentale alla base della teoria della lubrificazione è la *separazione delle scale geometriche*: la lunghezza longitudinale $L$ della piastra è molto maggiore dello spessore trasversale $e$ del meato fluido,

$ L >> e quad arrow.r.double quad e / L << 1 $

Tale separazione di scale consente di individuare due lunghezze caratteristiche distinte:
- la scala longitudinale $L$, lungo la quale si instaura la variazione di pressione $Delta p$;
- la scala trasversale $e$, lungo la quale si sviluppano i gradienti di velocità e gli sforzi viscosi.

Indicando con $Delta p$ (o semplicemente $p$) l'ordine di grandezza della variazione di pressione lungo la piastra, il gradiente longitudinale di pressione $G = dif p \/ dif x$ si stima dividendo per la scala longitudinale $L$:

$ G = (dif p)/(dif x) tilde (Delta p)/L quad arrow.r.double quad Delta p tilde G L $

Dall'espressione dello sforzo tangenziale ricavata in precedenza ($tau_(x y) = mu U \/ e plus.minus 1\/2 G e$) si osserva invece che gli sforzi viscosi tangenziali $tau$ associati al gradiente di pressione hanno come scala lo spessore $e$:

$ tau tilde G e $

==== Forza a parete e coefficiente di attrito

Si consideri la forza per unità di superficie (vettore tensione $arrow(t) = bold(sigma) dot arrow(n)$) esercitata dal fluido sulla parete sottostante in $y = 0$, con versore normale uscente dalla parete $arrow(n) = (0, 1, 0)^T$, come illustrato in @fig:forze-parete. Le sue componenti sono lo sforzo tangenziale $tau_0$ e la pressione $p_0$ a parete:

$ arrow(t) = mat(t_x; t_y; 0) = mat(tau_0; -p_0; 0) $

Le due componenti hanno una natura fisica ben distinta:
- la componente orizzontale $t_x = tau_0$ lungo $x$ è associata unicamente agli sforzi tangenziali viscosi (forza di attrito);
- la componente verticale $t_y = -p_0$ lungo $y$ è associata unicamente alla pressione del fluido (forza normale portante che sostiene il peso della piastra sovrastante).

Il *coefficiente di attrito* $f$ è definito come il rapporto tra il modulo della componente tangenziale e quello della componente normale della forza a parete:

$ f = (|t_x|)/(|t_y|) $

Sostituendo le stime degli ordini di grandezza $|t_x| tilde tau tilde G e$ e $|t_y| tilde Delta p tilde G L$, il gradiente $G$ si semplifica e resta il solo rapporto tra le due scale geometriche:

$ f = (|t_x|)/(|t_y|) tilde (G e)/(G L) = e / L << 1 $

Il coefficiente di attrito idrodinamico è quindi tanto più piccolo quanto più sottile è il meato rispetto alla lunghezza della piastra.

#nota[
  Affinché in una piastra di lunghezza finita $L$ si instauri effettivamente un gradiente di pressione capace di sostenere il carico verticale, la piastra non può essere rigorosamente parallela al piano ma deve risultare leggermente inclinata (meato convergente).

  Il risultato $f tilde e \/ L << 1$ costituisce il fondamento fisico della *teoria della lubrificazione*: grazie alla separazione tra la scala longitudinale $L$ (su cui nasce il gradiente di pressione) e la scala verticale $e$ (su cui nasce il gradiente di velocità), gli sforzi tangenziali viscosi $tau$ lungo $x$ risultano di un ordine di grandezza molto inferiore (pari a $e \/ L$) rispetto alla pressione $p$ che sostiene il peso della piastra, abbattendo drasticamente l'attrito.
]

#figure(numbering: "1", // numerazione locale: citata nella frase "come illustrato in @fig:forze-parete" (vedi SEGNALAZIONI.md)
  include "../figs/05-dinamica-dei-fluidi-viscosi-navier-stokes-fig09.typ",
) <fig:forze-parete>

#pagebreak()
