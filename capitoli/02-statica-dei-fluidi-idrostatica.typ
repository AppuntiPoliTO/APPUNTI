#import "../template.typ": *
#show: conf
#show figure: set text(size: 9pt)   // etichette delle figure a 9pt, come nel modello
= Statica dei Fluidi (Idrostatica)

== Equazioni indefinite della statica dei fluidi

L'equazione indefinita della statica dei fluidi rappresenta il caso limite dell'equazione di Cauchy (che governa la dinamica) quando si impone che la velocità del fluido sia identicamente nulla ($arrow(u) = arrow(0)$). Poiché il fluido è in quiete rispetto al sistema di riferimento, non vi sono scorrimenti tra strati adiacenti e le componenti tangenziali del tensore degli sforzi risultano nulle ($sigma_(i j) = 0$ per $i eq.not j$). Lo stato di tensione in un punto non è quindi definito da un tensore completo, bensì dal solo sforzo normale di compressione, ovvero la pressione termodinamica $p$.

=== Derivazione su un elemento di volume infinitesimo

Per ricavare le equazioni di equilibrio, seguiamo dapprima l'approccio basato sulle componenti cartesiane. Isoliamo un elemento di volume fluido infinitesimo (un volumetto) di dimensioni $dif x, dif y, dif z$: affinché esso sia in equilibrio, la risultante delle forze di volume e delle forze di superficie agenti su di esso deve essere nulla.

Le forze di volume sono proporzionali alla massa dell'elemento $dif m = rho dif x dif y dif z$. Considerando la sola accelerazione di gravità $arrow(g)$, la forza di volume agente sul volumetto è:

$ arrow(F)_"vol" = rho arrow(g) dif x dif y dif z = arrow(g) dif m $

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Le forze di superficie agiscono sulle sei facce del volumetto. Lungo la direzione $x$, la forza netta è data dalla differenza tra la spinta $p dif y dif z$ sulla faccia posteriore e quella sulla faccia anteriore, posta a distanza $dif x$. Su quest'ultima, la pressione risulta incrementata secondo lo sviluppo di Taylor al primo ordine.
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig01.typ")
  ]
)

La risultante netta delle forze superficiali lungo la direzione $x$ (di versore $hat(dotless.i)$) è quindi il vettore:

$ arrow(F)_("sup", x) = p dif y dif z thin hat(dotless.i) - (p + (partial p)/(partial x) dif x) dif y dif z thin hat(dotless.i) = -(partial p)/(partial x) dif x dif y dif z thin hat(dotless.i) $

Ripetendo il medesimo ragionamento per le altre due direzioni spaziali $y$ e $z$ (di versori $hat(dotless.j)$ e $hat(k)$), si ottengono le corrispondenti componenti vettoriali della forza superficiale:

$ arrow(F)_("sup", y) = -(partial p)/(partial y) dif x dif y dif z thin hat(dotless.j) quad "e" quad arrow(F)_("sup", z) = -(partial p)/(partial z) dif x dif y dif z thin hat(k) $

Imponendo l'equilibrio globale $sum arrow(F) = 0$ e sommando la forza di volume alle tre componenti superficiali, si ottiene:

$ rho arrow(g) dif x dif y dif z + (-(partial p)/(partial x) hat(dotless.i) - (partial p)/(partial y) hat(dotless.j) - (partial p)/(partial z) hat(k)) dif x dif y dif z = 0 $

Dividendo per il volume infinitesimo $dif x dif y dif z$ e riconoscendo il gradiente della pressione $nabla p$, si giunge alla forma vettoriale compatta dell'equazione fondamentale dell'idrostatica:

$ rho arrow(g) = nabla p $ <eq:idrostatica>

Ponendo il sistema di riferimento con l'asse verticale $z$ rivolto verso l'alto (in verso opposto alla gravità), il vettore accelerazione di gravità vale $arrow(g) = (0, 0, -g)^T$ e le tre componenti scalari dell'@eq:idrostatica diventano:

$ cases(
  (partial p)/(partial x) = 0,
  (partial p)/(partial y) = 0,
  (partial p)/(partial z) = -rho g
) $

Questa forma mostra che in un fluido in quiete la pressione varia unicamente lungo la direzione verticale $z$, mantenendosi costante su ogni piano orizzontale.

=== Derivazione tensoriale e integrale

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    In modo più generale, l'equazione di equilibrio può essere dedotta considerando un volume macroscopico arbitrario di fluido $cal(V)$ racchiuso da una superficie $S$ di normale uscente $arrow(n)$. Essendo nulle le tensioni tangenziali, il tensore degli sforzi $bold(sigma)$ ha forma diagonale e isotropa ed è rappresentato dal solo sforzo normale $-p$.
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig02.typ")
  ]
)

In termini del tensore identità $bold(I)$ e della delta di Kronecker $delta_(i j)$, il tensore degli sforzi idrostatico si scrive quindi:

$
  bold(sigma) =
  mat(
    -p, 0, 0;
    0, -p, 0;
    0, 0, -p
  )
  = -p bold(I) quad <==> quad sigma_(i j) = -p delta_(i j)
$

L'equazione di bilancio integrale delle forze per il volume $cal(V)$ impone che la somma delle forze di volume e delle forze di superficie uscenti dal contorno $S$ sia nulla:

$ integral.triple_cal(V) rho arrow(g) dif cal(V) + integral.surf_S bold(sigma) dot arrow(n) dif Omega = 0 $

Per sommare i due contributi sotto un unico integrale di volume, applichiamo il teorema della divergenza di Gauss; in notazione indiciale, l'integrale di superficie diventa:

$ integral.surf_S sigma_(i j) n_j dif Omega = integral.triple_cal(V) (partial sigma_(i j))/(partial x_j) dif cal(V) $

Sostituendo l'espressione del tensore idrostatico $sigma_(i j) = -p delta_(i j)$ all'interno della divergenza, la derivata satura l'indice $j$ tramite la delta di Kronecker:

$ (partial)/(partial x_j) (-p delta_(i j)) = -(partial p)/(partial x_j) delta_(i j) = -(partial p)/(partial x_i) $

Inserendo questo risultato nel bilancio integrale, i due contributi si raccolgono sotto un unico integrale esteso al volume $cal(V)$:

$ integral.triple_cal(V) ( rho g_i - (partial p)/(partial x_i) ) dif cal(V) = 0 $

Affinché questo integrale si annulli per _qualsiasi_ volume arbitrario $cal(V)$, l'integrando deve essere identicamente nullo in ogni punto ($rho g_i = partial p \/ partial x_i$), ritrovando così l'@eq:idrostatica ($rho arrow(g) = nabla p$). La saturazione degli indici mediante la delta di Kronecker garantisce in modo naturale la coerenza vettoriale e dimensionale dell'equazione.

== Legge di Stevino

Consideriamo un fluido in quiete e incomprimibile (ovvero a densità uniforme e costante, $rho = "cost"$), governato dall'@eq:idrostatica ($rho arrow(g) = nabla p$). Poiché il campo gravitazionale è conservativo, possiamo esprimere il vettore accelerazione di gravità $arrow(g)$ tramite un potenziale gravitazionale scalare $psi$. Orientando l'asse verticale $z$ verso l'alto, il potenziale vale $psi = -arrow(g) dot arrow(x) = g z$, da cui segue:

$ arrow(g) = -nabla psi = -nabla(g z) $

Sostituendo l'espressione del potenziale gravitazionale $arrow(g) = -nabla psi$ nell'@eq:idrostatica, la somma dei termini gravitazionale e di pressione si annulla:

$ -rho nabla psi - nabla p = 0 $

Sfruttando l'ipotesi di incomprimibilità ($rho = "cost"$), è lecito portare la densità costante $rho$ all'interno dell'operatore gradiente, ottenendo:

$ nabla(rho psi + p) = 0 quad arrow.r.double quad nabla(rho g z + p) = 0 $

Definendo il peso specifico del fluido $gamma = rho g$ ($["N"\/"m"^3]$), l'annullarsi del gradiente implica che la quantità tra parentesi rimanga uniforme in tutta la massa fluida:

$ gamma z + p = "cost" $

Dividendo entrambi i membri per il peso specifico $gamma$, si ricava la *Legge di Stevino* espressa in termini di altezze:

$ h = z + p/gamma = "cost" $ <eq:stevino>

La grandezza $h$ ha le dimensioni di una lunghezza ($["m"]$) ed è detta _quota piezometrica_ (o carico piezometrico). La sua invarianza implica che, in un fluido in quiete, una superficie a pressione costante (superficie isobara) coincide inevitabilmente con una superficie a quota $z$ costante (piano orizzontale); in particolare, una superficie libera a contatto con l'atmosfera costituisce un piano isobaro.

Presi due punti $A$ e $B$ qualsiasi all'interno del medesimo fluido, la costanza della quota piezometrica (@eq:stevino) permette di legare le rispettive quote e pressioni:

$ z_A + p_A/gamma = z_B + p_B/gamma quad arrow.r.double quad p_B = p_A + gamma(z_A - z_B) $

Questa equazione mostra che, nota la pressione in un punto, è possibile calcolarla in tutti gli altri punti del fluido. Nelle applicazioni ingegneristiche si fa sovente riferimento alla _pressione relativa_, che rappresenta lo scarto rispetto alla pressione atmosferica locale:

$ p_"rel" = p_"ass" - p_"atm" $

Si definisce *Piano dei Carichi Idrostatici (PCI)* il luogo geometrico dei punti (reali o virtuali) in cui la pressione relativa del fluido è nulla ($p_"rel" = 0$, ovvero $p_"ass" = p_"atm"$).

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Consideriamo ora il calcolo della pressione a un dato affondamento $Delta h$ rispetto a un punto di riferimento $A$ (ad esempio sulla superficie libera). Poiché $z_A - z = Delta h$ indica la profondità misurata verso il basso a partire da $A$, la pressione alla quota $z$ vale:
    $ p(z) = p_A + gamma underbrace((z_A - z), Delta h) $
    Se il punto $A$ giace sul PCI, la sua pressione relativa è nulla ($p_A = 0$) e la pressione relativa cresce linearmente con la profondità:
    $ p(z) = gamma Delta h $
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig03.typ")
  ]
)


== Misura della pressione

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    *Piezometri semplici.* Sono strumenti elementari costituiti da tubi aperti verso l'atmosfera, caratterizzati dalle seguenti proprietà:
    - sono impiegati esclusivamente per i liquidi;
    - misurano fisicamente l'altezza del carico piezometrico $h = p/gamma$;
    - il loro impiego è limitato a pressioni modeste, per evitare colonne liquide di altezza impraticabile.
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig04.typ")
  ]
)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    *Manometri.* I manometri superano i limiti costruttivi dei piezometri e permettono la misurazione di pressioni molto elevate, oppure la misurazione di pressioni nei gas. Essi sfruttano il bilancio idrostatico di fluidi manometrici dotati di un peso specifico $gamma_m$ notevolmente superiore a quello del fluido in esame $gamma$.
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig05.typ")
  ]
)

#grid(
  columns: 2,
  gutter: 1em,
  [*Manometro semplice (a U).* Per determinare la pressione, si uguagliano le pressioni sul piano orizzontale passante per il menisco più basso (punto $M$); il ramo aperto ($B'$) è a pressione atmosferica:

$ cases(
  p_(N') = 0 quad "(pressione relativa)",
  p_M = p_(N') + gamma_m Delta = gamma_m Delta,
  p_M = gamma a
) $

Uguagliando le espressioni per $p_A$, si ottiene l'affondamento misurato in colonna di fluido di lavoro:

$ h = gamma_m/gamma Delta $

L'utilizzo di un liquido ad alto peso specifico (ad esempio mercurio, $gamma_m >> gamma$) permette così di leggere pressioni corrispondenti a valori di $h$ grandi tramite dislivelli $Delta$ piccoli e compatti.],
  [#include "../figs/02-statica-dei-fluidi-idrostatica-fig18.typ"]
)

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      *Vacuometro.* Se il sistema lavora in depressione rispetto all'ambiente ($p < 0$), il fluido manometrico viene richiamato verso il serbatoio e lo strumento prende il nome di vacuometro. Il dislivello $Delta$ si inverte rispetto al caso precedente, fornendo una pressione relativa negativa:
      $ p_A = -gamma_m Delta $
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig06.typ")
    ]
  )
]

== Manometri differenziali

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Questi strumenti misurano la *differenza di quota piezometrica* $delta$ (ovvero il dislivello tra i piani dei carichi idrostatici, PCI) tra due serbatoi contenenti lo stesso fluido di peso specifico $gamma$. A tal fine si impiega un tubo a U riempito con un fluido manometrico di peso specifico $gamma_m > gamma$:
    - si fissa il piano orizzontale passante per il menisco più basso $A$ (ramo di destra);
    - si indica con $B$ il menisco più alto (ramo di sinistra), posto a una distanza verticale $Delta$ sopra $A$;
    - si indica con $b$ l'affondamento del menisco $B$ sotto il PCI del rispettivo serbatoio.
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig07.typ")
  ]
)

Calcoliamo le pressioni procedendo per affondamenti. Considerando dapprima la regione occupata dal fluido di peso specifico $gamma$, la pressione nel punto $B$, situato a una profondità $b$ sotto il relativo PCI, è pari a:

$ p_B = b gamma $ <eq:p_B_diff>

Considerando il punto $A$, il cui affondamento complessivo nello stesso fluido è dato dalla somma $(Delta + b + delta)$, la pressione corrispondente vale invece:

$ p_A = (Delta + b + delta) gamma $ <eq:p_A_diff>

Valutiamo ora il legame tra le due pressioni passando attraverso il tubo a U. Considerando la regione occupata dal fluido manometrico $gamma_m$, la pressione in $A$ può essere espressa a partire da quella in $B$ aggiungendo il carico idrostatico dovuto unicamente al dislivello manometrico $Delta$:

$ p_A = p_B + Delta gamma_m $ <eq:legame_U_diff>

Portando $p_B$ a primo membro nell'@eq:legame_U_diff ($p_A - p_B = Delta gamma_m$) e sostituendo le espressioni di $p_B$ (@eq:p_B_diff) e $p_A$ (@eq:p_A_diff) trovate nei due serbatoi, si ottiene il bilancio idrostatico completo:

$ (Delta + b + delta) gamma - b gamma = Delta gamma_m $

Svolgendo il prodotto al primo membro ed elidendo i termini opposti $+b gamma$ e $-b gamma$, l'equazione di equilibrio si semplifica e consente di raccogliere il dislivello $Delta$:

$ delta gamma + Delta gamma = Delta gamma_m quad arrow.r.double quad delta gamma = Delta(gamma_m - gamma) $

Dividendo entrambi i membri per il peso specifico $gamma$, si ricava infine il dislivello piezometrico incognito in funzione della sola lettura manometrica $Delta$:

$ delta = Delta (gamma_m - gamma)/gamma $ <eq:manometro_diff>

Si noti che il dislivello incognito $delta$ è deducibile dalla sola lettura manometrica $Delta$ e dal rapporto dei pesi specifici, risultando del tutto indipendente dalla quota assoluta dello strumento e dai carichi idrostatici di partenza (il termine $b$ si cancella).

Per misurazioni di pressioni notevoli nell'industria, i classici manometri a liquido vengono oggi largamente sostituiti dai *manometri metallici* (a deformazione meccanica, come il tubo di Bourdon) e dai *trasduttori di pressione*, che misurano la pressione mediante elementi sensibili elettronici.

== Spinta idrostatica su superfici piane

Per calcolare la spinta esercitata da un fluido in quiete su una superficie piana inclinata di un angolo $alpha$, definiamo un sistema di riferimento cartesiano sul piano della superficie stessa. Posizioniamo l'asse $y$ sulla _retta di sponda_, definita come l'intersezione tra il prolungamento del piano della superficie e il Piano dei Carichi Idrostatici (PCI), e orientiamo l'asse $x$ verso il basso lungo la linea di massima pendenza.

Consideriamo un'area infinitesima $dif A$: poiché in un fluido in quiete gli sforzi tangenziali sono nulli, l'unica forza agente è la pressione normale alla superficie ($p = gamma h$, diretta lungo $-arrow(n)$), per cui il vettore spinta elementare vale:

$ dif arrow(S) = -p arrow(n) dif A = -gamma h arrow(n) dif A $

Integrando sull'intera area piana $A$, poiché il versore normale $arrow(n)$ ha direzione uniforme e il peso specifico $gamma$ è costante nel fluido omogeneo, entrambi possono essere portati fuori dall'integrale:

$ arrow(S) = -gamma arrow(n) integral_A h dif A $

Nel sistema di riferimento adottato, l'affondamento $h$ di ciascun elemento d'area dipende dalla coordinata $x$ e dall'angolo di inclinazione $alpha$ secondo la relazione geometrica $h = x sin alpha$; sostituendo nell'integrale si ottiene:

$ arrow(S) = -arrow(n) gamma sin alpha integral_A x dif A $

L'integrale $integral_A x dif A$ rappresenta il momento statico di primo ordine dell'area rispetto all'asse di sponda $y$, pari a $M_y = x_G A$ (dove $x_G$ è la coordinata del baricentro $G$). Sostituendo questa espressione e riconoscendo l'affondamento del baricentro $h_G = x_G sin alpha$ e la pressione baricentrica $p_G = gamma h_G$, si ricava la risultante della spinta:

$ arrow(S) = -arrow(n) gamma underbrace(sin alpha thin x_G, h_G) A = - underbrace(gamma h_G, p_G) A thin arrow(n) $ <eq:spinta_piana>

Si dimostra così che *la spinta idrostatica $arrow(S)$ ha modulo pari al prodotto tra la pressione valutata nel baricentro $p_G$ e l'area totale $A$*, ed è diretta ortogonalmente alla superficie.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    *Centro di spinta.* Il punto di applicazione della risultante $arrow(S)$ è detto centro di spinta $C$, il quale in generale _non_ coincide con il baricentro $G$. Per determinarne la coordinata $x_c$, si uguaglia il momento della risultante rispetto all'asse $y$ all'integrale dei momenti delle spinte elementari. Vettorialmente, il modulo del momento della spinta è $|arrow(S)| |arrow(x)_c| sin phi$, con $phi = pi/2$ (angolo tra $arrow(S)$ e l'asse $x$).
  ],
  [
    #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig08.typ")
  ]
)

Ricordando che la pressione vale $p = gamma h$, con affondamento $h = x sin alpha$, e introducendo il momento d'inerzia di secondo ordine rispetto alla retta di sponda $I_y = integral_A x^2 dif A$, l'equilibrio dei momenti rispetto all'asse $y$ fornisce:

$ S x_c = integral_A p x dif A = integral_A (gamma x sin alpha) x dif A quad arrow.r.double quad S x_c = gamma sin alpha integral_A x^2 dif A = gamma sin alpha I_y $

Sostituendo il modulo della spinta $S = gamma sin alpha M_y$ ricavato dall'@eq:spinta_piana e semplificando il fattore comune $gamma sin alpha$, si ottiene la coordinata $x_c$ del centro di spinta:

$ x_c = (gamma sin alpha I_y)/(gamma sin alpha M_y) = I_y / M_y = (integral_A p x dif A)/(integral_A x dif A) $

La coordinata $x_c$ è dunque pari al rapporto tra il momento d'inerzia di secondo ordine ($I_y$) e il momento statico ($M_y$), entrambi calcolati rispetto alla retta di sponda. Procedendo analogamente per la coordinata trasversale $y_c$ tramite l'equilibrio dei momenti rispetto all'asse $x$, compare l'integrale del prodotto d'inerzia $I_(x y) = integral_A x y dif A$:

$ S y_c = integral_A p y dif A = gamma sin alpha integral_A x y dif A = gamma sin alpha I_(x y) quad arrow.r.double quad y_c = I_(x y) / M_y $

*Proprietà:*
- Se la figura piana ammette un asse di simmetria parallelo all'asse $x$ (linea di massima pendenza), il prodotto d'inerzia si annulla ($I_(x y) = 0$), da cui risulta $y_c = y_G$. Facendo inoltre coincidere l'origine del sistema di riferimento con tale asse di simmetria, si ottiene $y_G = 0$ e quindi $y_c = 0$.
- Il calcolo di $I_y$ si effettua agevolmente ricorrendo al _teorema di Huygens-Steiner_:
  $ I_y = I_(G y) + A x_G^2 $
  dove $I_(G y)$ è il momento d'inerzia baricentrico della figura. Essendo il termine di traslazione $A x_G^2$ sempre positivo, risulta evidente che $x_c > x_G$: il centro di spinta si trova sempre a un affondamento maggiore (o al limite uguale, per piastre orizzontali) rispetto al baricentro.
- Operativamente, occorre fissare preliminarmente e con precisione la retta di sponda (asse $y$), poiché in caso contrario le grandezze $x_G, x_c, M_y$ e $I_y$ perdono di validità.


== Spinte su superfici piane

Riprendiamo l'analisi delle spinte su una superficie piana immersa in un fluido incomprimibile in quiete, lavorando in termini di pressioni relative (nulle sul piano dei carichi idrostatici, PCI). A differenza della sezione precedente (dove l'asse lungo la massima pendenza era indicato con $x$), orientiamo ora l'asse $y$ lungo il piano inclinato che contiene la superficie. Assumiamo invece come asse orizzontale $x$ la _retta di sponda_ (intersezione tra il piano della superficie e il PCI), origine di tutte le coordinate.

Per individuare il punto di applicazione della spinta (detto _centro di spinta_, di coordinata $y_C$), utilizziamo nuovamente l'equilibrio dei momenti, che dà $y_C = I_0 \/ M$, rapporto tra il momento d'inerzia $I_0$ e il momento statico $M$ calcolati rispetto alla retta di sponda. Il teorema di Huygens-Steiner, applicato rispetto all'asse baricentrico, esprime il primo come $I_0 = I_G + y_G^2 A$, mentre il secondo vale $M = y_G A$. Sostituendo entrambi nel rapporto e separando i due termini della frazione, si esplicita la coordinata del centro di spinta in funzione del momento d'inerzia baricentrico $I_G$:

$ y_C = I_0 / M = (I_G + y_G^2 A) / (y_G A) = I_G / (y_G A) + y_G $

Da questa scomposizione si definisce _eccentricità_ la distanza tra il centro di spinta e il baricentro della figura:

$ e = y_C - y_G = I_G / (y_G A) $ <eq:eccentricita>

Poiché il momento d'inerzia baricentrico $I_G$, l'area $A$ e la coordinata baricentrica $y_G$ sono quantità intrinsecamente positive per superfici immerse, l'eccentricità è sempre strettamente positiva ($e > 0$), il che comporta due proprietà rilevanti:
- il centro di spinta si trova sempre in posizione inferiore rispetto al baricentro (più in profondità);
- la formulazione tramite $e$ risulta particolarmente pratica poiché $I_G$ dipende unicamente dalla forma geometrica dell'area $A$, indipendentemente dalla sua profondità.

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Calcoliamo il momento d'inerzia baricentrico $I_G$ per un rettangolo di base orizzontale $a$ e altezza $b$ (lungo il piano inclinato). Con l'origine nel baricentro, $x$ varia tra $-a\/2$ e $a\/2$ e $y$ tra $-b\/2$ e $b\/2$; l'integrale in $x$ vale semplicemente $a$, mentre quello di $y^2$ ha primitiva $y^3\/3$:
      $ I_G = integral_(-a/2)^(a/2) dif x integral_(-b/2)^(b/2) y^2 dif y = a lr([ y^3 / 3 ])_(-b/2)^(b/2) $
      La primitiva assume valori opposti nei due estremi, per cui la loro differenza è il doppio di $b^3\/24$:
      $ I_G = a (b^3 / 24 - (-b^3 / 24)) = 1/12 a b^3 $
      Il momento d'inerzia baricentrico cresce dunque con il cubo dell'altezza $b$ misurata lungo il piano inclinato.
    ],
    [
      #align(center)[
        #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig09.typ")
        #dida[_Schizzo semplificato._]
      ]
    ]
  )
]

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Per una sezione circolare di diametro $d$ (o raggio $r = d\/2$, esprimendo $d = 2r$), il momento d'inerzia baricentrico rispetto a un asse baricentrico è invece:
      $ I_G = pi/64 d^4 = pi/64 (2r)^4 = pi/4 r^4 $
    ],
    [
      #align(center)[
        #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig10.typ")
        #dida[_Schizzo semplificato._]
      ]
    ]
  )
]

=== Esempio: Spinta su parete verticale

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Consideriamo una parete rettangolare verticale di altezza $h$ e larghezza trasversale unitaria, la cui area è $A = h dot 1$. La spinta totale $S$ equivale al volume del solido delle pressioni, ovvero al prodotto tra la pressione baricentrica $p_G = gamma h \/ 2$ e l'area $A$:
      $ S = p_G A = (gamma h/2) h = gamma h^2/2 $
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig11.typ")
    ]
  )
]

Questa espressione equivale rigorosamente all'integrale diretto della distribuzione di pressione sull'intera superficie bagnata $A$:

$ S = integral_A p dif A $

Ricordando che per il rettangolo considerato si ha $y_G = h \/ 2$ e $I_G = (1\/12) h^3$ (per larghezza unitaria), la posizione del centro di spinta si ricava sommando l'eccentricità (@eq:eccentricita) alla quota del baricentro e sostituendo questi dati geometrici:

$ y_C = y_G + I_G / (A y_G) = h/2 + (1/12 thin h^3) / (h dot (h/2)) = 2/3 h $

Il centro di spinta si trova quindi a due terzi dell'altezza della parete, misurati a partire dal pelo libero, cioè più in basso del baricentro posto a metà altezza.

In forma generale, dall'equilibrio dei momenti rispetto alla retta di sponda, la coordinata del centro di spinta si esprime mediante il rapporto integrale:

$ y_C = (integral_A y p dif A) / (integral_A p dif A) $

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Consideriamo invece una superficie posta orizzontalmente a profondità $h$, scegliendo la medesima area $A = h dot 1$. In questo caso la pressione $p_G = gamma h$ è uniforme su tutta l'estensione (pertanto $G equiv C$) e la spinta totale vale:
      $ S = p_G A = (gamma h) dot h = gamma h^2 $
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig12.typ")
    ]
  )
]



== Spinte su superfici curve

La forza elementare esercitata dal fluido su una porzione infinitesima di superficie è sempre normale alla superficie stessa ed è espressa vettorialmente come:

$ dif arrow(S) = -p arrow(n) dif A $

dove $arrow(n)$ indica il vettore normale alla parete, orientato verso l'esterno del volume fluido.

A differenza del caso piano, su una superficie curva il vettore normale $arrow(n)$ varia direzione da punto a punto, ossia $arrow(n) = arrow(n)(arrow(x))$, il che impedisce di ricavare la spinta risultante mediante una semplice integrazione scalare di superficie. Per calcolare la spinta totale, isoliamo un volume di controllo di fluido $V$ racchiuso dalla superficie curva $Omega$ e dalle sue proiezioni piane, applicando l'equazione globale dell'idrostatica (equilibrio delle forze):

$ integral rho arrow(g) dif V - integral p arrow(n) dif Omega = 0 $

Questa relazione può essere sintetizzata in forma compatta come equilibrio vettoriale tra le azioni agenti sul volume fluido:

$ arrow(G) + arrow(Pi) = 0 $ <eq:equilibrio_globale>

dove $arrow(G) = integral rho arrow(g) dif V$ rappresenta la forza peso del volume fluido e $arrow(Pi) = -integral p arrow(n) dif Omega$ è la risultante delle reazioni che le superfici di contorno esercitano _sul_ fluido. La spinta del fluido sulla parete è pertanto l'opposta della reazione vincolare, ossia $arrow(S) = -arrow(Pi)$.

=== Esempio 1: Calcolo delle componenti

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Isoliamo un volume di fluido delimitato dalla superficie curva, di larghezza orizzontale $b$ e altezza verticale $a$, con pelo libero posto a quota $h$ sopra il fondo. Indichiamo con $arrow(S)_0$ la spinta cercata sulla superficie curva; la reazione esercitata dalla parete sul fluido vale pertanto $arrow(Pi)_0 = -arrow(S)_0$.
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig13.typ")
    ]
  )
]

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.4fr, 0.6fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Imponiamo l'equilibrio alla traslazione del volume di controllo (@eq:equilibrio_globale). Sul fluido agiscono le spinte delle pareti fittizie, cioè $arrow(Pi)_2$ (parete verticale a sinistra, di altezza $a$) e $arrow(Pi)_1$ (tetto orizzontale a quota $a$, di larghezza $b$). Completano l'equilibrio la reazione $arrow(Pi)_0$ della superficie curva e il peso $arrow(G)$.

      *Equilibrio orizzontale (lungo $x$).* La spinta laterale del fluido adiacente è equilibrata dalla componente orizzontale della reazione sulla curva. Poiché la parete verticale fittizia ha altezza $a$ e il suo baricentro si trova a profondità $h - a\/2$, si ottiene:
      $ Pi_2 = (h - a/2) gamma dot a quad arrow.r.double quad Pi_(0,x) = -(h - a/2) gamma a $
      Questo risultato equivale a calcolare la spinta su una parete piana rettangolare verticale equivalente (proiezione verticale della superficie curva), avente la medesima altezza $a$.
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig14.typ")
    ]
  )
]

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.3fr, 0.7fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      *Equilibrio verticale (verso il basso, lungo $z$).* La componente verticale della reazione sulla superficie curva deve sostenere il peso di tutto il fluido soprastante. Il tetto orizzontale fittizio, situato a profondità $h - a$ sotto il PCI, sorregge la colonna di fluido di volume $V_1$ con una spinta pari a:
      $ Pi_1 = (h - a) gamma b = gamma V_1 $
      Indicando con $V_2$ il volume racchiuso tra il tetto fittizio e la superficie curva, di peso $G = -gamma V_2$, l'equilibrio verticale si esprime come:
      $ Pi_1 + G = -Pi_(0,z) quad arrow.r.double quad Pi_(0,z) = + gamma (V_1 + V_2) $
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig15.typ")
    ]
  )
]

*Regola generale:* la componente verticale della spinta su una superficie curva è pari al peso del volume di fluido (reale o virtuale) compreso tra la superficie e il piano dei carichi idrostatici. È diretta verso il basso se il fluido sta sopra la superficie, verso l'alto se è sotto.

Note le componenti $Pi_(0,x)$ e $Pi_(0,z)$, il modulo della reazione totale si calcola tramite il teorema di Pitagora, mentre la sua direzione (angolo $alpha$ rispetto all'orizzontale) discende dal rapporto delle componenti:

$ cases(
  Pi_0 = sqrt(Pi_(0,x)^2 + Pi_(0,z)^2),
  tan alpha = Pi_(0,z) / Pi_(0,x)
) $

La spinta esercitata dal fluido sulla parete vale dunque $arrow(S) = -arrow(Pi)_0$. Per individuarne il punto di applicazione occorre imporre l'equilibrio ai momenti, illustrato nella sottosezione seguente.

=== Esempio 1: Punto di applicazione

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Per determinare la retta d'azione, calcoliamo l'equilibrio alla rotazione dell'intero volume di controllo rispetto a un polo opportuno $arrow(x)_a$ (in tal modo si elimina dal bilancio il momento indotto dalle forze peso). Uguagliando i momenti orari e antiorari rispetto a tale polo, si ha:
      $ underbrace(Pi_0 b_0 + Pi_1 b_1, "momenti orari") = underbrace(Pi_2 b_2, "momenti anti-orari") $
      dove $b_0$, $b_1$, $b_2$ sono i bracci delle rispettive forze rispetto al polo.
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig16.typ")
    ]
  )
]

Scegliendo opportunamente il polo di rotazione (ad esempio nel centro di curvatura se la superficie è circolare), è possibile semplificare notevolmente l'equazione. In particolare, si eliminano dal bilancio i momenti indotti dalle forze peso o da spinte la cui direttrice passa per il polo stesso (braccio nullo). Esplicitando il braccio della reazione $arrow(Pi)_0$, si ricava:

$ b_0 = (Pi_2 b_2 - Pi_1 b_1) / Pi_0 $

La retta d'azione di $arrow(S)_0$ coincide con quella di $arrow(Pi)_0$ (stessa direzione, verso opposto) e dista $b_0$ dal polo.

== Spinta di galleggiamento (Archimede) e Stabilità

#block(breakable: false, width: 100%)[
  #grid(
    columns: (1.1fr, 0.9fr),
    column-gutter: 1.3em,
    align: (left + horizon, center + horizon),
    [
      Immergendo un corpo in un fluido, le forze di pressione agiscono su tutta la sua superficie chiusa $Omega$ (caratterizzata dal vettore normale $arrow(n)$ uscente dal corpo). Integrando tali pressioni, la forza risultante esercitata dal fluido sul corpo si esprime come:
      $ arrow(S)_"gall" = arrow(F)_"sotto" - arrow(F)_"sopra" $
      (applicata al baricentro). Per equilibrio delle spinte laterali la componente orizzontale netta dell'integrale si annulla, mentre emerge una forza verticale netta diretta verso l'alto, detta _spinta di galleggiamento_. Sulla faccia superiore del corpo agisce il peso della colonna di fluido sovrastante fino al PCI:
      $ F_"sopra" = gamma V_1 $
      Sottraendo tale contributo alla spinta dal basso $F_"sotto"$, il modulo della spinta netta risulta pari al peso del volume di fluido spostato:
      $ S_"gall" = gamma V $ <eq:archimede>
    ],
    [
      #figure(include "../figs/02-statica-dei-fluidi-idrostatica-fig17.typ")
    ]
  )
]

*Principio di Archimede:* un corpo immerso riceve una spinta verticale verso l'alto di modulo pari al peso del volume di fluido spostato ($S_"gall" = gamma V$).

Il peso proprio del corpo è $arrow(P) = gamma_s V hat(k)$. Il comportamento cinematico dipende dalla densità del solido rispetto a quella del fluido:
- se $gamma_s > gamma$, il corpo *affonda*;
- se $gamma_s = gamma$, l'equilibrio è *indifferente* (il corpo resta sospeso);
- se $gamma_s < gamma$, il corpo *galleggia* (risale fino a spostare un volume di fluido inferiore, in modo che il peso di questo fluido eguagli il peso totale del corpo).

La grandezza vettoriale $arrow(P) + arrow(S)_"gall" = (gamma_s - gamma) V hat(k)$ rappresenta il cosiddetto «peso apparente» del corpo immerso nel fluido.

*Stabilità dell'equilibrio:* oltre alla traslazione, è fondamentale valutare la stabilità alla rotazione. La spinta di galleggiamento è sempre applicata nel baricentro del volume di fluido spostato, chiamato _centro di galleggiamento_ $C$, mentre la forza peso è applicata nel baricentro geometrico del corpo $G$.

Un corpo completamente immerso è in equilibrio stabile alle rotazioni solo se il suo baricentro $G$ si trova fisicamente al di sotto del centro di galleggiamento $C$; in caso contrario, ogni minima perturbazione genera un momento ribaltante.

#pagebreak()
