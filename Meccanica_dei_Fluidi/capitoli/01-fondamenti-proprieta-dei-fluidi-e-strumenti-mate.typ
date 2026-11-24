#import "../template.typ": *
#show: conf
= Fondamenti, Proprietà dei Fluidi e Strumenti Matematici

== Fenomenologia e Forze Aerodinamiche
Consideriamo l'interazione tra un fluido in movimento e un corpo solido immerso in esso. Ne nasce una forza aerodinamica risultante, che per convenzione si scompone in due componenti: la _portanza_ (lift), perpendicolare alla direzione del moto indisturbato, e la _resistenza_ (drag), parallela a essa.

A velocità elevate, e in particolare nell'ambito dell'aeroacustica, l'intensità del rumore irradiato cresce molto rapidamente con la velocità del flusso. Più precisamente, la potenza acustica irradiata $P_"acustica"$ scala con la settima potenza della velocità caratteristica $U$:
$ P_"acustica" prop U^7 $
Anche piccoli incrementi di velocità possono quindi comportare un aumento drammatico del rumore aerodinamico.

Quando un fluido scorre attorno a corpi non aerodinamici (o "corpi tozzi"), si verifica inoltre il fenomeno del distacco dello strato limite: invece di seguire il profilo del corpo, il fluido si "scolla" prematuramente dalla superficie. La separazione genera un'estesa scia turbolenta a valle dell'ostacolo, all'interno della quale la pressione è drasticamente più bassa che sulla parte frontale del corpo. Questa differenza di pressione induce una forza frenante di risucchio, che costituisce gran parte della resistenza aerodinamica complessiva.

=== Interazione Fluido-Struttura
L'interazione tra strutture tozze e flussi non genera solo resistenza, ma può innescare complessi fenomeni dinamici. Nella scia si osserva spesso un rilascio alternato e periodico di vortici, noto come _vortex shedding_ (o scia di von Kármán). Il rilascio asimmetrico induce oscillazioni trasversali del campo di pressione attorno al corpo. Se la frequenza di queste oscillazioni si avvicina alla frequenza naturale di vibrazione della struttura, si può innescare un fenomeno di risonanza, capace di causare cedimenti strutturali catastrofici.

Un altro fenomeno critico, tipico dei liquidi ad alta velocità, è legato alle variazioni di pressione dinamica. Secondo l'equazione di Bernoulli, un aumento locale della velocità $U$ del fluido comporta una caduta della pressione statica locale $Delta p$, che cresce con il quadrato della velocità:
$ Delta p prop rho U^2 $
dove $rho$ è la densità del liquido. Se in un punto del flusso la pressione statica scende al di sotto della tensione di vapore del liquido a quella temperatura, si ha un passaggio di stato locale e si formano bolle di vapore: è il fenomeno della _cavitazione_. Quando le bolle vengono trasportate in zone a pressione più elevata, implodono violentemente; le micro-onde d'urto generate dall'implosione causano instabilità nel flusso e una severa erosione meccanica delle superfici solide adiacenti.

=== Proprietà dei Fluidi
Nella modellazione fluidodinamica, un fluido può essere trattato come _incomprimibile_ quando le variazioni relative della sua densità sono fisicamente trascurabili ai fini del moto. Per i liquidi questa è quasi sempre un'ottima approssimazione; per i gas, invece, la validità dell'ipotesi dipende dalla velocità, che deve essere sufficientemente bassa rispetto alla velocità del suono locale. La condizione si verifica valutando il numero di Mach $"Ma"$: l'ipotesi di incomprimibilità si considera valida per $"Ma" < 0.3$.

Per quanto riguarda il comportamento reologico, consideriamo i _fluidi newtoniani_. In questi fluidi lo sforzo di taglio $tau$ necessario per far scorrere strati di fluido adiacenti è direttamente proporzionale al gradiente spaziale della velocità nella direzione perpendicolare al moto; la costante di proporzionalità è la _viscosità dinamica_ $mu$.

Per semplificare le equazioni, e in particolare per quantificare la diffusione della quantità di moto rispetto all'inerzia del fluido, si introduce la _viscosità cinematica_ $nu$, rapporto tra la viscosità dinamica e la densità:
$ nu = mu/rho $
Il confronto tra aria e acqua è istruttivo: sebbene l'aria sia circa mille volte meno densa dell'acqua (il che la rende "più leggera"), la sua viscosità cinematica è significativamente maggiore. In proporzione alla sua massa, quindi, l'aria diffonde la quantità di moto molto più rapidamente dell'acqua.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    La figura rappresenta il profilo di velocità lineare in un fluido confinato tra una parete fissa e una piastra mobile (flusso di Couette): la piastra è trascinata a velocità costante $u$ da una forza $F$. Se il profilo di velocità è lineare ($(partial u) / (partial y) = "cost"$), la _legge di Newton della viscosità_ prevede uno sforzo di taglio $tau$ costante su tutta la sezione trasversale, pari a:
    $ tau = mu (partial u)/(partial y) $ <eq:newton_viscosita>
  ],
  [
    #figure(include "../figs/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate-fig01.typ")
  ]
)

== Cinematica Euleriana e Notazione Indiciale
Per descrivere il moto del fluido è essenziale una notazione rigorosa. Si adotta la _notazione indiciale_ con la convenzione di Einstein, per la quale la somma è sottintesa sugli indici ripetuti. Il vettore posizione $arrow(x)$ e il vettore velocità $arrow(u)$ si scrivono, per componenti cartesiane e in notazione indiciale:
$
arrow(x) &= (x, y, z) quad & x_i &= (x_1, x_2, x_3) \
arrow(u) &= (u, v, w) quad & u_i &= (u_1, u_2, u_3) = (u_x, u_y, u_z)
$

Consideriamo innanzitutto un campo scalare $f(x, y, z)$. Il suo _gradiente_ è il vettore delle derivate parziali rispetto alle tre direzioni spaziali; in notazione indiciale lo si indica con $partial f \/ partial x_i$:
$
& nabla f = [ (partial f)/(partial x), (partial f)/(partial y), (partial f)/(partial z) ] \
& (partial f)/(partial x_i) = [ (partial f)/(partial x_1), (partial f)/(partial x_2), (partial f)/(partial x_3) ]
$

Passando a un campo vettoriale $arrow(u)(arrow(x))$, la derivata di ogni componente della velocità rispetto a ogni coordinata spaziale definisce il _gradiente di velocità_. Poiché ha due indici liberi ($i$ e $j$), esso è un tensore del secondo ordine, rappresentabile con una matrice $3 times 3$ di nove derivate spaziali:
$ (partial u_i)/(partial x_j) = mat(delim: "[",
(partial u_1)/(partial x_1), (partial u_1)/(partial x_2), (partial u_1)/(partial x_3);
(partial u_2)/(partial x_1), (partial u_2)/(partial x_2), (partial u_2)/(partial x_3);
(partial u_3)/(partial x_1), (partial u_3)/(partial x_2), (partial u_3)/(partial x_3)
) $
La sola scrittura compatta $(partial u_i) / (partial x_j)$ descrive quindi l'intero tensore.

La _divergenza_ di un vettore rappresenta fisicamente la variazione volumetrica locale del fluido. Matematicamente corrisponde alla traccia del tensore gradiente di velocità, cioè alla somma degli elementi sulla diagonale principale:
$
nabla dot arrow(u) & = (partial u)/(partial x) + (partial v)/(partial y) + (partial w)/(partial z) \
& = (partial u_1)/(partial x_1) + (partial u_2)/(partial x_2) + (partial u_3)/(partial x_3) = (partial u_i)/(partial x_i)
$
Per la convenzione di Einstein, l'indice $i$ ripetuto indica una sommatoria: $(partial u_i)/(partial x_i) = sum_(i=1)^3 (partial u_i)/(partial x_i)$. La "saturazione" dell'indice riduce il rango del tensore di partenza da due a zero, e il risultato è una grandezza puramente scalare.

Lo stesso meccanismo di contrazione si applica al comune prodotto scalare tra due vettori $arrow(a)$ e $arrow(b)$, che in notazione indiciale si riduce a $a_i b_i$:
$ arrow(a) dot arrow(b) = a_1 b_1 + a_2 b_2 + a_3 b_3 = sum_(i=1)^3 a_i b_i = a_i b_i $

=== Laplaciano
Il _Laplaciano_ di un campo vettoriale, che compare nei termini viscosi delle equazioni di Navier-Stokes, è definito come la divergenza del gradiente della velocità. In notazione indiciale l'operatore di derivazione si applica due volte rispetto alla stessa coordinata spaziale, con l'indice $i$ ripetuto:
$ (partial^2 u_j)/(partial x_i partial x_i) $
L'indice ripetuto $i$ satura la sommatoria spaziale e lascia libero soltanto l'indice $j$: il Laplaciano di un vettore è quindi, coerentemente, ancora un vettore.

Per manipolare questi tensori si introduce il _simbolo di Kronecker_ (o tensore identità isotropo), definito come:
$ delta_(i j) = mat(delim: "[", 1, 0, 0; 0, 1, 0; 0, 0, 1) = bold(I) $
La proprietà fondamentale di $delta_(i j)$ è la "sostituzione degli indici". Nel prodotto $delta_(i j) a_j$ la somma su $j$ conserva solo il termine con $j = i$, perché tutti gli altri sono moltiplicati per zero; sviluppando la somma e scrivendo le tre componenti si ha infatti:
$
delta_(i j) a_j &= delta_(i 1) a_1 + delta_(i 2) a_2 + delta_(i 3) a_3 \
&==> mat(delim: "[",
delta_11 a_1 + delta_12 a_2 + delta_13 a_3;
delta_21 a_1 + delta_22 a_2 + delta_23 a_3;
delta_31 a_1 + delta_32 a_2 + delta_33 a_3
) = mat(delim: "(", a_1; a_2; a_3) = a_i
$
Moltiplicare per $delta_(i j)$ equivale dunque a rinominare l'indice $j$ in $i$.

Analogamente, saturando entrambi gli indici di due tensori identità se ne estrae la traccia. Si esplicita prima la doppia somma, svolgendo la somma interna sull'indice $j$:
$ delta_(i j) delta_(i j) = sum_(i=1)^3 sum_(j=1)^3 delta_(i j) delta_(i j) = sum_(i=1)^3 (delta_(i 1) delta_(i 1) + delta_(i 2) delta_(i 2) + delta_(i 3) delta_(i 3)) $
Nella somma su $i$ sopravvivono soltanto i termini diagonali, gli unici diversi da zero, ciascuno pari a 1:
$ delta_(i j) delta_(i j) = delta_11 delta_11 + delta_22 delta_22 + delta_33 delta_33 = 1 + 1 + 1 = 3 $
Il risultato è la traccia del tensore identità.

=== Rotore
Il _rotore_ di un campo di velocità è una grandezza vettoriale fondamentale, chiamata _vorticità_ ($arrow(omega)$), che descrive la tendenza locale del fluido a ruotare su sé stesso. Si calcola come determinante formale:
$ nabla times arrow(u) = op("det") mat(delim: "|",
hat(i), hat(j), hat(k);
partial/(partial x), partial/(partial y), partial/(partial z);
u, v, w
) = mat(delim: "[",
(partial w)/(partial y) - (partial v)/(partial z);
- ((partial w)/(partial x) - (partial u)/(partial z));
(partial u)/(partial y) - (partial v)/(partial x)
) $
Se $op("rot") arrow(u) = 0$, le particelle fluide traslano e si deformano, ma non ruotano. In questo caso il campo $arrow(u)$ è detto _irrotazionale_ e, per le proprietà degli operatori differenziali, ammette un _potenziale_ scalare $Phi$ tale che $arrow(u) = nabla Phi$.

In notazione indiciale la componente $i$-esima del rotore si esprime tramite il tensore alternante di Levi-Civita $epsilon_(i j k)$, lo stesso che definisce il prodotto vettoriale:
$ (nabla times arrow(u))_i = epsilon_(i j k) partial/(partial x_j) u_k ; quad c_i = epsilon_(i j k) a_j b_k ==> arrow(c) = arrow(a) times arrow(b) $

=== Tensore degli Sforzi e Invarianti
Consideriamo un tensore del secondo ordine generico, come il tensore degli sforzi $bold(sigma)$:
$ sigma_(i j) = mat(delim: "(",
sigma_11, sigma_12, sigma_13;
sigma_21, sigma_22, sigma_23;
sigma_31, sigma_32, sigma_33
) $
Questo tensore possiede tre _invarianti principali_, cioè grandezze scalari il cui valore non cambia ruotando il sistema di riferimento:
+ $I_1$, la traccia, ovvero la somma degli elementi diagonali: $sigma_11 + sigma_22 + sigma_33$. Nel caso degli sforzi è legata alla pressione idrostatica media.
+ $I_2$, la somma dei determinanti dei minori principali $2 times 2$: $sigma_11 sigma_22 - sigma_12 sigma_21 + sigma_22 sigma_33 - sigma_23 sigma_32 + dots.h$
+ $I_3$, il determinante dell'intera matrice $3 times 3$: $op("det")(sigma_(i j))$.

Studiamo ora il tensore degli sforzi idrostatico dovuto alla pressione in un fluido in quiete. Qui interessa la verifica algebrica dell'identità differenziale su $p delta_(i j)$; l'isotropia e il segno dello stato di tensione si deducono fisicamente più avanti, nella sezione "Sforzi in un fluido in quiete". La pressione $p$ è una grandezza scalare isotropa: agisce con la stessa intensità su qualsiasi superficie orientata nello spazio e si manifesta fisicamente come uno sforzo unicamente normale e di compressione. Questo comportamento si modella moltiplicando lo scalare $p$ per la delta di Kronecker, che popola soltanto la diagonale principale del tensore:
$ p delta_(i j) = mat(delim: "[", p, 0, 0; 0, p, 0; 0, 0, p) $
La forza netta di volume generata dalla pressione si ottiene dalla divergenza di questo tensore. Poiché $delta_(i j)$ è costante, nella somma su $j$ esso sposta l'indice di derivazione, selezionando solo la derivata rispetto a $x_i$:
$ partial/(partial x_j) (p delta_(i j)) = nabla p dot bold(I) $
Svolgendo esplicitamente la somma per le tre componenti spaziali si verifica il risultato:
$ sum_(j=1)^3 partial/(partial x_j) (p delta_(i j)) = mat(delim: "[",
partial/(partial x_1) (p delta_11) + partial/(partial x_2) (p delta_12) + partial/(partial x_3) (p delta_13);
partial/(partial x_1) (p delta_21) + partial/(partial x_2) (p delta_22) + partial/(partial x_3) (p delta_23);
partial/(partial x_1) (p delta_31) + partial/(partial x_2) (p delta_32) + partial/(partial x_3) (p delta_33)
) = mat(delim: "[", (partial p)/(partial x_1); (partial p)/(partial x_2); (partial p)/(partial x_3)) = nabla p $
Si ottiene un risultato fondamentale: la divergenza del tensore isotropo della pressione coincide con il gradiente della pressione stessa.

== Teorema di Gauss
Il teorema di Gauss (o della divergenza) permette di convertire integrali di volume in integrali di superficie ed è il pilastro matematico per ricavare le equazioni di conservazione. Per un campo vettoriale $arrow(u)$, esso stabilisce che l'integrale della divergenza sul volume $V$ è uguale al flusso uscente attraverso la superficie chiusa $A$ di normale esterna $arrow(n)$:
$ integral.triple_V nabla dot arrow(u) dif V = integral.surf_A arrow(u) dot arrow(n) dif A $ <eq:gauss_vettoriale>
In notazione indiciale, e generalizzato a un campo tensoriale $sigma_(i j)$, il teorema assume la forma:
$ integral.triple_V partial/(partial x_j) sigma_(i j) dif V = integral.surf_A sigma_(i j) n_j dif A $ <eq:gauss_tensoriale>
Nel passaggio dal volume alla superficie, la derivata rispetto a $x_j$ è sostituita dalla componente $n_j$ della normale esterna.

=== Sforzi nei sistemi continui
Ai fini dell'ingegneria e della fluidodinamica macroscopica, il fluido non viene analizzato molecola per molecola, ma è trattato mediante l'_ipotesi del continuo_: è descritto come un mezzo ininterrotto, privo di discontinuità spaziali (buchi o vuoti).

Questo salto di scala è concettualmente cruciale. A livello microscopico le particelle possiedono un moto di agitazione puramente caotico, e gli innumerevoli urti tra le molecole trasferiscono quantità di moto; a livello macroscopico questo trasferimento si percepisce collettivamente come una distribuzione continua di sforzi e pressioni superficiali. L'ipotesi del continuo è fondata sulla netta separazione delle scale: il cammino libero medio delle molecole (l'ordine di grandezza del percorso tra due collisioni, $10^(-9) "m"$) è del tutto trascurabile rispetto alle lunghezze caratteristiche del dominio fluido studiato.

In questo mezzo continuo agiscono due classi principali di forze:
- *Forze di volume:* agiscono sulla massa distribuita all'interno del volume. Derivano dall'esposizione del fluido a campi vettoriali esterni e agiscono a distanza. L'esempio più comune è il campo gravitazionale (forza peso); in presenza di ioni o di fluidi conduttori si aggiungono i campi elettromagnetici (forza di Lorentz).
- *Forze di superficie:* agiscono sui bordi di separazione del volume fluido e rappresentano le interazioni dirette di contatto con il fluido adiacente o con pareti solide.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Le forze di superficie si studiano isolando un elemento di fluido di volume $V$, delimitato da una superficie chiusa attraverso la quale il fluido circostante esercita le azioni di contatto.
  ],
  [#figure(include "../figs/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate-fig02.typ")]
)

Per quantificare queste interazioni si considera una generica giacitura di superficie $dif Omega$, caratterizzata da una normale orientata $arrow(n)$. Il _vettore sforzo_ $arrow(sigma)_n$ (forza per unità di superficie) è definito dal limite:
$ arrow(sigma)_n = lim_(dif Omega -> 0) (dif arrow(F))/(dif Omega) $ <eq:vettore_sforzo>

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Il vettore sforzo $arrow(sigma)_n$ _dipende fortemente_ dalla giacitura $dif Omega$ scelta per analizzarlo. In generale, inoltre, $arrow(sigma)_n$ _non è_ parallelo ad $arrow(n)$: possiede sia componenti normali (pressioni o trazioni) sia componenti tangenziali (sforzi di taglio).

    La forza risultante su una superficie macroscopica si ottiene sommando i contributi elementari $dif arrow(F)$, cioè integrando il vettore sforzo su tutta l'area:
    $ dif arrow(F) = arrow(sigma)_n dif Omega ==> arrow(F) = integral.double_Omega arrow(sigma)_n dif Omega $
  ],
  [
    #figure(include "../figs/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate-fig03.typ")
  ]
)

Poiché modulo e direzione di $arrow(sigma)_n$ cambiano al variare della giacitura $arrow(n)$, per conoscerlo su un'area generica si studia l'equilibrio di un volume infinitesimo a forma di tetraedro.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Si sceglie un *Tetraedro di Cauchy*, i cui tre cateti giacciono sui piani del sistema di riferimento cartesiano e formano tre facce ortogonali di area $dif Omega_x, dif Omega_y, dif Omega_z$. La faccia obliqua rimanente, di area $dif Omega$, ha versore normale $arrow(n) = (n_x, n_y, n_z)$. Su ciascuna delle tre facce cartesiane agisce un vettore sforzo specifico, rispettivamente $arrow(sigma)_x, arrow(sigma)_y, arrow(sigma)_z$, anch'esso in generale non perpendicolare alla propria faccia.

    #tappa[1. Geometria del tetraedro.] Per proiezione ortogonale, le aree delle facce cartesiane sono proporzionali all'area della faccia obliqua $dif Omega$ attraverso i coseni direttori di $arrow(n)$:
    $ (dif Omega_x)/(dif Omega) = n_x ; quad (dif Omega_y)/(dif Omega) = n_y ; quad (dif Omega_z)/(dif Omega) = n_z $ <eq:coseni_direttori>
  ],
  [
    #figure(include "../figs/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate-fig04.typ")
  ]
)

#tappa[2. Equilibrio alla traslazione.] Si applica all'elemento infinitesimo il principio di equilibrio alla traslazione (seconda legge della dinamica): la somma delle forze di superficie e di volume deve essere nulla,
$ sum(arrow(F)_"sup" + arrow(F)_"vol") = 0 $
Ciascuna forza di superficie è il prodotto del vettore sforzo per l'area della faccia su cui agisce; sulle facce cartesiane la normale esterna è diretta come $-x$, $-y$, $-z$:
$ arrow(sigma)_n dif Omega + arrow(sigma)_(-x) dif Omega_x + arrow(sigma)_(-y) dif Omega_y + arrow(sigma)_(-z) dif Omega_z + arrow(F)_"vol" = 0 $
Quando le dimensioni del tetraedro tendono a zero ($L -> 0$), le forze di volume scalano con il volume infinitesimo ($L^3$), mentre le forze di superficie scalano con le aree ($L^2$). Nel limite puntuale le forze di volume decadono a zero molto più rapidamente e diventano infinitesimi di ordine superiore; trascurandole resta il solo equilibrio degli sforzi:
$ arrow(sigma)_n dif Omega + arrow(sigma)_(-x) dif Omega_x + arrow(sigma)_(-y) dif Omega_y + arrow(sigma)_(-z) dif Omega_z = 0 $

#tappa[3. Lemma di Cauchy.] La tensione che agisce su una faccia orientata con normale $arrow(n)$ è uguale e contraria a quella che agisce sulla faccia con normale opposta $-arrow(n)$. Applicando il lemma alle tre facce cartesiane, i vettori sforzo si riportano alle direzioni positive degli assi:
$ arrow(sigma)_(-x) = -arrow(sigma)_x ; quad arrow(sigma)_(-y) = -arrow(sigma)_y ; quad arrow(sigma)_(-z) = -arrow(sigma)_z $

#tappa[4. Sforzo sulla giacitura obliqua.] Sostituendo il lemma di Cauchy nell'equilibrio si ottiene la relazione di base per lo sforzo sulla giacitura obliqua:
$ arrow(sigma)_n dif Omega - arrow(sigma)_x dif Omega_x - arrow(sigma)_y dif Omega_y - arrow(sigma)_z dif Omega_z = 0 $
Per far comparire i rapporti tra le aree, si divide ogni termine per l'area $dif Omega$ della faccia obliqua:
$ arrow(sigma)_n (dif Omega)/(dif Omega) - arrow(sigma)_x (dif Omega_x)/(dif Omega) - arrow(sigma)_y (dif Omega_y)/(dif Omega) - arrow(sigma)_z (dif Omega_z)/(dif Omega) = 0 $
I rapporti tra le aree sono i coseni direttori della normale (@eq:coseni_direttori); inserendoli, l'equilibrio non dipende più dalle dimensioni del tetraedro:
$ arrow(sigma)_n - arrow(sigma)_x n_x - arrow(sigma)_y n_y - arrow(sigma)_z n_z = 0 $
Per passare alle componenti scalari, si esplicitano le componenti di ciascun vettore sforzo cartesiano nelle direzioni degli assi $x, y, z$:
$
arrow(sigma)_x & = (sigma_(x x), sigma_(x y), sigma_(x z)) \
arrow(sigma)_y & = (sigma_(y x), sigma_(y y), sigma_(y z)) \
arrow(sigma)_z & = (sigma_(z x), sigma_(z y), sigma_(z z))
$
Con queste componenti, l'equilibrio vettoriale si scompone nelle tre direzioni spaziali:
$ cases(
sigma_(n x) = sigma_(x x) n_x + sigma_(y x) n_y + sigma_(z x) n_z,
sigma_(n y) = sigma_(x y) n_x + sigma_(y y) n_y + sigma_(z y) n_z,
sigma_(n z) = sigma_(x z) n_x + sigma_(y z) n_y + sigma_(z z) n_z
) $

#tappa[5. Teorema di Cauchy.] Il sistema lineare, scritto in forma matriciale, esprime il _teorema di Cauchy_: il vettore sforzo su _qualsiasi_ giacitura dipende linearmente dal tensore degli sforzi e dalla normale alla giacitura stessa:
$ mat(delim: "[",
sigma_(n x);
sigma_(n y);
sigma_(n z)
) = mat(delim: "[",
sigma_(x x), sigma_(y x), sigma_(z x);
sigma_(x y), sigma_(y y), sigma_(z y);
sigma_(x z), sigma_(y z), sigma_(z z)
) mat(delim: "[",
n_x;
n_y;
n_z
) ==> arrow(sigma)_n = bold(sigma) dot arrow(n) $ <eq:teorema_cauchy>
In notazione indiciale si scrive in modo compatto come $sigma_(n i) = sigma_(j i) n_j$. Lo stato di tensione in un punto è quindi descritto interamente dalle nove componenti del tensore $bold(sigma)$.

#tappa[6. Simmetria del tensore.] La simmetria del tensore degli sforzi è una diretta conseguenza dell'equilibrio alla rotazione dell'elemento infinitesimo. Considerando i momenti generati dalle sole tensioni tangenziali attorno agli assi passanti per il baricentro del volume, gli sforzi sulle facce adiacenti che tendono a far ruotare l'elemento devono bilanciarsi, affinché non si generino accelerazioni angolari infinite per volume nullo. Questo impone:
$ sigma_(y x) = sigma_(x y) ; quad sigma_(x z) = sigma_(z x) ; quad sigma_(y z) = sigma_(z y) $
Il tensore degli sforzi è dunque simmetrico e possiede solo 6 componenti indipendenti invece di 9.

=== Sforzi in un fluido in quiete

Vediamo che cosa diventano le equazioni precedenti nel caso particolare di un fluido fermo rispetto al sistema di riferimento inerziale. Se il campo di velocità è nullo ($arrow(u) = 0$), sono nulli anche i suoi gradienti spaziali ($nabla arrow(u) = 0$). Fisicamente, l'assenza di scorrimento relativo tra strati adiacenti fa sì che il moto di agitazione molecolare mantenga un carattere perfettamente isotropo. La mancanza di direzioni preferenziali di trasporto della quantità di moto garantisce il completo annullamento degli sforzi tangenziali ($sigma_(x y), sigma_(x z), dots.h = 0$) e impone la rigorosa uniformità degli sforzi normali su qualunque giacitura.

Annullati gli sforzi tangenziali, la matrice del tensore degli sforzi contiene soltanto i termini sulla diagonale principale:
$ bold(sigma) = mat(
  sigma_(x x), 0, 0;
  0, sigma_(y y), 0;
  0, 0, sigma_(z z)
) $
Lo sforzo su una generica giacitura di normale $arrow(n)$ si determina applicando il teorema di Cauchy (@eq:teorema_cauchy), nella forma $sigma_(i j) n_j = (sigma_n)_i$:
$ mat(
  sigma_11, 0, 0;
  0, sigma_22, 0;
  0, 0, sigma_33
)
mat(
  n_1;
  n_2;
  n_3
) =
mat(
  sigma_11 n_1;
  sigma_22 n_2;
  sigma_33 n_3
) $
Affinché il fluido resti in perfetto equilibrio e lo sforzo sia sempre e solo normale su qualsiasi superficie (come richiede l'assenza di tensioni tangenziali statiche nei fluidi newtoniani), il vettore risultante deve essere parallelo ad $arrow(n)$ per ogni scelta della normale: le tre componenti normali diagonali devono quindi essere uguali. Il loro valore comune si identifica con la pressione termodinamica cambiata di segno:
$ sigma_11 = sigma_22 = sigma_33 = -p $ <eq:sforzi_quiete>
Per un fluido in quiete, quindi, lo stato di tensione in un punto perde la sua natura tensoriale completa ed è interamente descritto dal solo scalare pressione $p$. A livello microscopico questa grandezza scalare è il risultato statistico degli infiniti urti caotici delle molecole contro la parete ideale. Il segno meno, adottato per convenzione, indica che nei fluidi la pressione agisce sempre fisicamente come uno sforzo normale di _compressione_, cioè con un verso che "spinge" contro la superficie e punta verso l'interno del volume analizzato.