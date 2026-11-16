#import "../template.typ": *
#import "../figs/fig04.typ": *   // figure del capitolo (rifatte, vedi figs/)
#show figure: set text(size: 9pt)   // etichette delle figure a 9pt, come nel modello

= Dinamica dei Fluidi Ideali (Eulero e Bernoulli)

== Bilancio della Quantità di Moto

Possiamo riformulare il teorema del trasporto di Reynolds includendo esplicitamente l'equazione di conservazione della massa. A tale scopo, applichiamo il teorema a una grandezza specifica scalare arbitraria $chi$ moltiplicata per la densità ($phi = rho chi$), scegliendo uno scalare anziché direttamente il vettore velocità $arrow(u)$ per semplificare i passaggi algebrici:

$ dif / (dif t) integral_(cal(D)(t)) rho chi dif cal(V) = integral_(cal(D)(t)) underbrace((partial (rho chi)) / (partial t), "termine locale") dif cal(V) + integral_(cal(S)(t)) underbrace(rho chi (arrow(u)_S dot arrow(n)), "flusso al contorno") dif cal(S) $ <eq:reynolds_rho_chi>

#tappa[1. Sviluppo del termine temporale locale.] Il termine $(partial (rho chi)) \/ (partial t)$ dentro il primo integrale va riscritto in modo da far comparire la derivata materiale di $chi$. Per la regola di derivazione del prodotto, $(partial (a b)) / (partial x_j) = a (partial b) / (partial x_j) + b (partial a) / (partial x_j)$, applicata alla derivata temporale, si ha:

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) + chi (partial rho) / (partial t) $

La derivata della densità si elimina con l'equazione di continuità in notazione indiciale, $(partial rho) / (partial t) = -(partial (rho u_j)) / (partial x_j)$:

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) - chi (partial (rho u_j)) / (partial x_j) $

L'ultimo termine si riscrive con la regola del prodotto letta "all'indietro", $b (partial a) / (partial x_j) = (partial (a b)) / (partial x_j) - a (partial b) / (partial x_j)$, con $a = rho u_j$ e $b = chi$:

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) - lr([ (partial (chi rho u_j)) / (partial x_j) - rho u_j (partial chi) / (partial x_j) ]) $

Raccogliendo la densità $rho$ tra il primo e l'ultimo addendo, compare la definizione di *derivata lagrangiana (o materiale)* $(D chi) \/ (D t)$:

$ (partial (rho chi)) / (partial t) = rho underbrace(lr([ (partial chi) / (partial t) + u_j (partial chi) / (partial x_j) ]), (D chi) / (D t) " (derivata lagrangiana)") - (partial (rho chi u_j)) / (partial x_j) = rho (D chi) / (D t) - (partial (rho chi u_j)) / (partial x_j) $

La variazione locale di $rho chi$ si separa così in un contributo che segue la particella fluida e in un termine di divergenza.

#tappa[2. Sostituzione negli integrali e applicazione del Teorema di Gauss.] Consideriamo ora un *dominio materiale*, la cui frontiera si muove in ogni punto alla stessa velocità del fluido ($arrow(u)_S = arrow(u)$, ovvero $arrow(u)_S dot arrow(n) = u_j n_j$). Mediante il teorema della divergenza di Gauss, l'integrale di superficie nell'@eq:reynolds_rho_chi si trasforma in un integrale di volume:

$ integral_(cal(S)(t)) rho chi u_j n_j dif cal(S) = integral_(cal(D)(t)) (partial (rho chi u_j)) / (partial x_j) dif cal(V) $

Sostituendo nell'@eq:reynolds_rho_chi sia lo sviluppo del termine locale sia l'integrale di superficie così trasformato, otteniamo:

$ dif / (dif t) integral_(cal(D)(t)) rho chi dif cal(V) = underbrace(integral_(cal(D)(t)) rho (D chi) / (D t) dif cal(V) - integral_(cal(D)(t)) (partial (rho chi u_j)) / (partial x_j) dif cal(V), "dal termine temporale locale") + underbrace(integral_(cal(D)(t)) (partial (rho chi u_j)) / (partial x_j) dif cal(V), "dall'integrale di superficie") $

I due integrali di volume contenenti la divergenza di $rho chi arrow(u)$ sono identici ma di segno opposto e si elidono, dimostrando che su un dominio materiale l'operatore di derivata totale esterna entra sotto il segno di integrale trasformandosi in derivata lagrangiana moltiplicata per $rho$:

$ dif / (dif t) integral_(cal(D)(t)) rho chi dif cal(V) = integral_(cal(D)(t)) rho (D chi) / (D t) dif cal(V) $ <eq:reynolds_materiale>

#nota[
  *Nota:* _nel caso più generale di un volume di controllo arbitrario con $arrow(u)_S != arrow(u)$, al secondo membro permane anche il flusso relativo attraverso il contorno:_
  $ dif / (dif t) integral_(cal(D)) rho chi dif cal(V) = integral_(cal(D)) rho (D chi) / (D t) dif cal(V) + integral_(cal(S)) rho chi (arrow(u)_S - arrow(u)) dot arrow(n) dif cal(S) $
  _Tale identità è del tutto generale e prescinde da qualsiasi ipotesi di costanza della densità $rho$._
]

Per il secondo principio della dinamica applicato a un dominio materiale $cal(D)(t)$ (con $chi = u_i$ nell'@eq:reynolds_materiale), la variazione nel tempo della quantità di moto uguaglia la risultante delle forze di volume $arrow(F)_V$ (componenti $F_(V,i)$) e delle forze di superficie $arrow(F)_S$ (componenti $F_(S,i)$):

$ integral_(cal(D)(t)) rho (D arrow(u)) / (D t) dif cal(V) = arrow(F)_V + arrow(F)_S = integral_(cal(D)(t)) rho arrow(g) dif cal(V) + integral_(cal(S)(t)) bold(sigma) dot arrow(n) dif cal(S) $

Le forze agenti sul dominio materiale si distinguono infatti in due categorie:
- *Forze di volume* $arrow(F)_V$: agiscono all'interno dell'intero volume di fluido (tipicamente la forza di gravità) e si esprimono come:
  $ arrow(F)_V = integral_(cal(D)(t)) rho arrow(g) dif cal(V) quad <==> quad F_(V,i) = integral_(cal(D)(t)) rho g_i dif cal(V) $
- *Forze di superficie* $arrow(F)_S$: agiscono esclusivamente sulla superficie di frontiera $cal(S)(t)$ del volume e, tramite il teorema del tetraedro di Cauchy, si esprimono mediante il tensore degli sforzi del secondo ordine $bold(sigma)$ (con sforzo o forza per unità di superficie $arrow(T) = bold(sigma) dot arrow(n)$, ovvero $T_i = sigma_(i j) n_j$):
  $ arrow(F)_S = integral_(cal(S)(t)) bold(sigma) dot arrow(n) dif cal(S) quad <==> quad F_(S,i) = integral_(cal(S)(t)) sigma_(i j) n_j dif cal(S) $

Anche in questa formulazione non viene posta alcuna restrizione sulla densità $rho$, che può essere costante o variabile. In generale, il tensore degli sforzi $sigma_(i j)$ (simmetrico) si scompone nella somma di due contributi fisici distinti:

$ sigma_(i j) = underbrace((sigma_(i j))_"eq", "statico") + underbrace((tau_(i j))_"dis", "viscoso") $

1. *Contributo statico (o di equilibrio)* $(sigma_(i j))_"eq"$: esiste indipendentemente dal fatto che il fluido sia in moto o in quiete. Poiché a scala microscopica l'agitazione termica molecolare è caotica e isotropa (gli urti molecolari hanno uguale intensità in tutte le direzioni spaziali), questo tensore possiede solo le tre componenti normali sulla diagonale principale, tutte identiche e pari a $-p$:
   $ (sigma_(i j))_"eq" = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) = -p delta_(i j) $
   Moltiplicando tale tensore per un generico versore normale $arrow(n) = mat(n_x; n_y; n_z)$, si ottiene la forza statica per unità di superficie:
   $ T_i = (sigma_(i j))_"eq" n_j = -p n_i quad <==> quad arrow(T) = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) mat(n_x; n_y; n_z) = mat(-p n_x; -p n_y; -p n_z) = -p arrow(n) $
2. *Contributo dissipativo (o viscoso)* $(tau_(i j))_"dis"$: in un fluido in movimento con campo di velocità non uniforme $arrow(u)(arrow(x))$, per descrivere la trasmissione di quantità di moto dovuta allo scorrimento relativo (attrito interno) tra strati di fluido, al termine statico $-p delta_(i j)$ occorre affiancare il *tensore degli sforzi viscosi* $tau_(i j)$, il quale dipende dai gradienti spaziali del campo di velocità.

Trasformando l'integrale delle forze di superficie in un integrale di volume mediante il teorema della divergenza di Gauss, il bilancio integrale assume la forma:

$ integral_(cal(D)) rho (D arrow(u)) / (D t) dif cal(V) = integral_(cal(D)) rho arrow(g) dif cal(V) + integral_(cal(S)) bold(sigma) dot arrow(n) dif cal(S) = integral_(cal(D)) rho arrow(g) dif cal(V) + integral_(cal(D)) nabla dot bold(sigma) dif cal(V) $

Possiamo così raccogliere tutti i termini del bilancio di quantità di moto sotto un unico integrale sul volume materiale $cal(D)(t)$:

$ integral_(cal(D)(t)) lr([ rho (D u_i) / (D t) - rho g_i - (partial sigma_(i j)) / (partial x_j) ]) dif cal(V) = 0 $

Data l'arbitrarietà della forma e della dimensione del volume materiale $cal(D)(t)$ (passaggio al limite per $cal(V) arrow.r 0$), l'integrando deve annullarsi puntualmente, fornendo l'equazione differenziale (indefinita) del moto di Cauchy:

$ rho (D u_i) / (D t) = rho g_i + (partial sigma_(i j)) / (partial x_j) $ <eq:cauchy_moto>

Se trascuriamo completamente gli effetti viscosi ($tau_(i j) = 0$), il tensore degli sforzi mantiene la medesima struttura isotropa di un fluido statico, riducendosi alla sola pressione $sigma_(i j) = -p delta_(i j)$. Sostituendo questa espressione nell'@eq:cauchy_moto e calcolandone la divergenza $(partial) / (partial x_j) (-p delta_(i j)) = -(partial p) / (partial x_i)$, otteniamo:

$ rho (D u_i) / (D t) = rho g_i + (partial) / (partial x_j) sigma_(i j) = rho g_i - (partial) / (partial x_j) (p delta_(i j)) = rho g_i - (partial p) / (partial x_i) $

Si perviene così all'*Equazione di Eulero*:

$ rho (D u_i) / (D t) = rho g_i - (partial p) / (partial x_i) quad <==> quad rho (D arrow(u)) / (D t) = rho arrow(g) - nabla p $ <eq:eulero>

L'@eq:eulero governa la dinamica dei *fluidi non viscosi* (detti anche *fluidi ideali*), nei quali si trascura l'attrito interno ($tau_(i j) = 0$).

=== Modello Inviscido: Equazione di Eulero
==== Chiusura del Sistema e Condizioni al Contorno (Impermeabilità)
Nel caso di fluido incomprimibile a densità costante ($rho = "cost"$), l'equazione vettoriale di Eulero (3 equazioni scalari) accoppiata all'equazione di continuità forma un *sistema chiuso* di 4 equazioni differenziali nelle 4 incognite scalari $u_1, u_2, u_3, p$:

$ cases(
  nabla dot arrow(u) = 0,
  rho (D arrow(u)) / (D t) = rho arrow(g) - nabla p
) $

Per risolvere il problema in un dominio assegnato (ad esempio il flusso all'interno di un condotto convergente), è necessario imporre opportune condizioni iniziali e condizioni al contorno (distribuzione di velocità e pressione nella sezione di ingresso e condizioni sulle pareti solide).

Dal punto di vista fisico, l'assenza di viscosità ($tau_(i j) = 0$) ha un impatto diretto sulle condizioni al contorno applicabili a una parete solida:
- In un *fluido reale (viscoso)* che scorre su una parete fissa, le molecole a contatto con la parete urtano contro di essa cedendo quantità di moto; ciò genera uno sforzo tangenziale (attrito a parete) che impone l'annullamento del vettore velocità sulla parete stessa ($arrow(u) = arrow(0)$ a parete).
- In un *fluido ideale (non viscoso)*, il tensore degli sforzi $sigma_(i j) = -p delta_(i j)$ trasmette esclusivamente sforzi normali alla parete e nessuno sforzo tangenziale. Il modello matematico di Eulero non contempla l'attrito tangenziale e non può quindi impedire lo scorrimento del fluido lungo la parete.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    L'unico vincolo fisico imponibile su una parete solida ferma per un fluido non viscoso è che il fluido non compenetri la parete (assenza di flusso attraverso la superficie solida). Tale vincolo prende il nome di *condizione di impermeabilità* e impone l'annullamento della sola componente di velocità normale alla parete:
    $ arrow(u) dot arrow(n) = 0 quad "sulla parete" $
  ],
  [
    #figure(fig-condotto())
  ]
)

==== Forma Estesa per Componenti delle Equazioni di Eulero
Esplicitiamo le tre componenti scalari dell'@eq:eulero per $i = 1, 2, 3$ in un sistema di riferimento cartesiano $(x_1, x_2, x_3)$ (ovvero $(x, y, z)$) con componenti di velocità $(u_1, u_2, u_3)$ (ovvero $(u, v, w)$) e accelerazione di gravità diretta lungo l'asse verticale $arrow(g) = mat(0; 0; -g)$. Ricordando la convenzione di Einstein sulla somma rispetto all'indice ripetuto $j = 1, 2, 3$ nella derivata materiale:

$ (D u_i) / (D t) = (partial u_i) / (partial t) + u_j (partial u_i) / (partial x_j) = (partial u_i) / (partial t) + u_1 (partial u_i) / (partial x_1) + u_2 (partial u_i) / (partial x_2) + u_3 (partial u_i) / (partial x_3) $

il sistema delle equazioni di Eulero sviluppato per esteso assume la forma:

$ cases(
  rho lr([ (partial u_1) / (partial t) + u_1 (partial u_1) / (partial x_1) + u_2 (partial u_1) / (partial x_2) + u_3 (partial u_1) / (partial x_3) ]) = rho g_1 - (partial p) / (partial x_1),
  rho lr([ (partial u_2) / (partial t) + u_1 (partial u_2) / (partial x_1) + u_2 (partial u_2) / (partial x_2) + u_3 (partial u_2) / (partial x_3) ]) = rho g_2 - (partial p) / (partial x_2),
  rho lr([ (partial u_3) / (partial t) + u_1 (partial u_3) / (partial x_1) + u_2 (partial u_3) / (partial x_2) + u_3 (partial u_3) / (partial x_3) ]) = rho g_3 - (partial p) / (partial x_3)
) $

(dove, con l'orientamento standard dell'asse $x_3$ verticale verso l'alto, si ha $g_1 = 0$, $g_2 = 0$, $g_3 = -g$). La forma estesa mette in evidenza l'accoppiamento non lineare del trasporto convettivo: in ciascuna equazione, ogni componente della velocità interagisce con i gradienti spaziali di tutte le componenti di velocità.

== Conservazione dell'Energia Cinetica e Teorema di Bernoulli

Passiamo ora dal bilancio della quantità di moto alle sue implicazioni dal punto di vista energetico. Poiché consideriamo un fluido a densità costante ($rho = "cost"$), ci limitiamo allo studio della sola energia meccanica, senza introdurre il primo principio della termodinamica (che includerebbe anche gli scambi di energia interna e termica).

=== Definizione dell'energia cinetica
Consideriamo il campo di velocità $arrow(u) = mat(u_1; u_2; u_3)$ e moltiplichiamolo scalarmente per se stesso:

$ arrow(u) dot arrow(u) = u_i u_i = u_1 u_1 + u_2 u_2 + u_3 u_3 = u_1^2 + u_2^2 + u_3^2 = u^2 $

Moltiplicando il modulo quadro della velocità $u^2$ per $1/2$ e per la densità $rho$, otteniamo l'*energia cinetica per unità di volume* (mentre $1/2 u^2$ rappresenta l'energia cinetica per unità di massa):

$ E_c = 1/2 rho u^2 $

=== Prodotto scalare dell'Equazione di Eulero per la velocità
Partiamo dall'@eq:eulero in forma indiciale e moltiplichiamo entrambi i membri per la componente di velocità $u_i$ (sommando sull'indice ripetuto $i$):

$ u_i dot lr(( rho (D u_i) / (D t) = -(partial p) / (partial x_i) + rho g_i )) quad arrow.r.double quad underbrace(rho u_i (D u_i) / (D t), "1° membro") = underbrace(-u_i (partial p) / (partial x_i) + rho u_i g_i, "2° membro") $

=== Manipolazione del 1° membro (termine inerziale)
Per la regola di derivazione di una potenza, data una generica funzione $A(arrow(x), t)$ vale l'identità:

$ (D) / (D t) lr(( A^2 / 2 )) = 1/2 dot 2 A (D A) / (D t) = A (D A) / (D t) $

Applicando questa relazione a ciascuna componente di velocità ($A = u_i$), otteniamo:

$ u_i (D u_i) / (D t) = (D) / (D t) lr(( u_i u_i / 2 )) = (D) / (D t) lr(( u^2 / 2 )) $

Introducendo la *1ª Ipotesi ($rho = "cost"$)*, la densità costante può essere portata dentro l'operatore di derivata materiale:

$ rho u_i (D u_i) / (D t) = rho (D) / (D t) lr(( u^2 / 2 )) = (D) / (D t) lr(( rho u^2 / 2 )) $

=== Manipolazione del 2° membro (pressione e potenziale gravitazionale)
A secondo membro il primo addendo $-u_i (partial p) \/ (partial x_i)$ contiene già il gradiente di pressione. Riscriviamo ora anche il termine gravitazionale $rho u_i g_i$ sotto forma di gradiente. Poiché il campo gravitazionale $arrow(g)$ è *irrotazionale* ($nabla times arrow(g) = 0$), esso è *conservativo* e ammette una funzione potenziale gravitazionale $psi$ tale che:

$ arrow(g) = -nabla psi quad <==> quad g_i = -(partial psi) / (partial x_i) $

Scegliendo un sistema di riferimento con l'asse verticale $x_3$ diretto verso l'alto, il vettore accelerazione di gravità e il vettore posizione sono:

$ arrow(g) = mat(g_1; g_2; g_3) = mat(0; 0; -g) , quad arrow(x) = mat(x_1; x_2; x_3) $

L'espressione esplicita del potenziale gravitazionale $psi$ è pertanto:

$ psi = -g_i x_i = -(g_1 x_1 + g_2 x_2 + g_3 x_3) = - lr(( 0 dot x_1 + 0 dot x_2 + (-g) dot x_3 )) = g x_3 $

(Infatti, verificando la derivata parziale rispetto a $x_3$: $-(partial psi) / (partial x_3) = -(partial (g x_3)) / (partial x_3) = -g = g_3$). Procedendo con la *sostituzione nel termine gravitazionale* di $g_i = -(partial psi) \/ (partial x_i)$ e sfruttando nuovamente l'ipotesi $rho = "cost"$ per portare $rho$ dentro la derivata spaziale, si ha:

$ rho u_i g_i = rho u_i lr(( -(partial psi) / (partial x_i) )) = -u_i (partial (rho psi)) / (partial x_i) = -u_i (partial (rho g x_3)) / (partial x_i) $

=== Sostituzione nell'equazione di bilancio dell'energia meccanica
Sostituendo le espressioni ottenute per il primo e il secondo membro nell'equazione di partenza, il bilancio di energia meccanica diventa:

$ (D) / (D t) lr(( rho u^2 / 2 )) = -u_i (partial p) / (partial x_i) - u_i (partial (rho psi)) / (partial x_i) $

Ricordando che la derivata materiale si sviluppa come $(D) / (D t) = (partial) / (partial t) + u_i (partial) / (partial x_i)$, esplicitiamo il primo membro separando il contributo temporale locale da quello convettivo:

$ underbrace((partial) / (partial t) lr(( rho u^2 / 2 )), "variazione locale") + underbrace(u_i (partial) / (partial x_i) lr(( rho u^2 / 2 )), "flusso convettivo") = underbrace(-u_i (partial p) / (partial x_i) - u_i (partial (rho psi)) / (partial x_i), "flussi di energia") $

Portando tutti i termini a primo membro, l'equazione assume la forma:

$ (partial) / (partial t) lr(( rho u^2 / 2 )) + u_i (partial) / (partial x_i) lr(( rho u^2 / 2 )) + u_i (partial p) / (partial x_i) + u_i (partial (rho psi)) / (partial x_i) = 0 $

i cui singoli termini hanno il seguente significato fisico:
- $(partial) / (partial t) (rho u^2 / 2)$ è la variazione locale nel tempo dell'energia cinetica in un punto fisso dello spazio;
- $u_i (partial) / (partial x_i) (rho u^2 / 2)$ è il trasporto convettivo (flusso) di energia cinetica;
- i termini di pressione e gravità rappresentano i flussi di energia meccanica associati al lavoro delle forze di pressione e delle forze gravitazionali.

Per integrare questa equazione in un risultato algebrico esatto, il teorema di Bernoulli richiede quattro ipotesi fondamentali:
1. Flusso inviscido (già utilizzato nell'@eq:eulero).
2. Flusso stazionario ($partial \/ partial t = 0$, da cui la derivata materiale si riduce a $arrow(u) dot nabla$). Occorre osservare che l'ipotesi di stazionarietà annulla esclusivamente la derivata parziale locale nel tempo $(partial) / (partial t) = 0$, ma non annulla l'intera derivata materiale $(D) / (D t)$, di cui rimane attivo il contributo convettivo $u_i (partial) / (partial x_i)$.
3. Flusso incomprimibile ($rho = "cost"$, il che permette di portare $rho$ dentro gli operatori differenziali).
4. Forze di volume conservative (esistenza del potenziale gravitazionale $psi$).

Sotto queste quattro ipotesi, tutti i termini spaziali si raccolgono in un'unica derivata direzionale:

$ u_j (partial) / (partial x_j) underbrace(lr([ rho u^2 / 2 + p + rho psi ]), cal(H)) = 0 $

Si definisce così il trinomio di Bernoulli come densità di energia meccanica (o *carico totale* per unità di volume) $cal(H) = p + rho psi + rho u^2 \/ 2$:

$ cal(H) = rho u^2 / 2 + p + rho g x_3 $ <eq:def_carico_bernoulli>

Il simbolo $cal(H)$ (o $H$) deriva dal termine inglese _head_ ("testa"), tradotto nella letteratura idraulica italiana come _carico_ (o carico totale). Nella definizione dell'@eq:def_carico_bernoulli, ciascun addendo di $cal(H)$ ha le dimensioni di una pressione ($["Pa"] = ["N"\/"m"^2] = ["J"\/"m"^3]$): questa formulazione è tipica dell'aerodinamica, dove si misurano direttamente differenze di pressione. In ambito idraulico (ad esempio nell'idraulica fluviale) si preferisce invece dividere l'intera espressione per il peso specifico $rho g$, definendo il *carico idraulico*:

$ H_"idr" = cal(H) / (rho g) = u^2 / (2 g) + p / (rho g) + x_3 $

che ha le dimensioni di una lunghezza ($["m"]$), in quanto il carico viene misurato direttamente come altezza di colonna d'acqua.

=== Interpretazione geometrica e Teorema di Bernoulli
Passando dalla notazione indiciale a quella vettoriale, l'equazione di conservazione per il carico totale $cal(H)$ dell'@eq:def_carico_bernoulli si scrive come un prodotto scalare:

$ u_i (partial cal(H)) / (partial x_i) = arrow(u) dot nabla cal(H) = 0 $

Il prodotto scalare tra due vettori non nulli è zero se e solo se i due vettori sono tra loro perpendicolari (condizione di ortogonalità):

$ arrow(u) dot nabla cal(H) = 0 quad <==> quad nabla cal(H) perp arrow(u) $

Per definizione, una linea di corrente è una curva in ogni punto tangente al vettore velocità locale $arrow(u)$. Indicato con $arrow(t) = arrow(u) \/ abs(arrow(u))$ il versore tangente alla linea di corrente (e con $s$ l'ascissa curvilinea lungo di essa), l'ortogonalità tra $nabla cal(H)$ e $arrow(u)$ significa che *$nabla cal(H)$ è in ogni punto perpendicolare alla linea di corrente*. Proiettando quindi il gradiente $nabla cal(H)$ lungo la direzione tangente $arrow(t)$, otteniamo la *derivata direzionale lungo la linea di corrente*:

$ (partial cal(H)) / (partial s) = nabla cal(H) dot arrow(t) = nabla cal(H) dot arrow(u) / abs(arrow(u)) = 0 $

Poiché la derivata di $cal(H)$ lungo l'ascissa curvilinea $s$ è identicamente nulla, il carico totale rimane costante muovendosi lungo ciascuna linea di corrente:

$ cal(H) = 1/2 rho u^2 + p + rho g x_3 = "cost" $ <eq:teorema_bernoulli>

Questo risultato fondamentale costituisce il *Teorema di Bernoulli* lungo una linea di corrente (esiste inoltre una forma più forte del teorema, valida per campi di moto irrotazionali, in cui $cal(H)$ risulta costante in tutto il campo di moto e non solo lungo la singola linea di corrente).

*Significato fisico e concetto di fluido ideale*: il teorema di Bernoulli (@eq:teorema_bernoulli) esprime la *conservazione dell'energia meccanica* lungo il moto. Il sistema non dissipa energia meccanica in calore perché nel modello di Eulero ($sigma_(i j) = -p delta_(i j)$) non è presente alcun termine viscoso capace di produrre dissipazione. Per questa ragione un fluido descritto dal modello di Eulero viene chiamato *fluido ideale* (in contrapposizione a un fluido reale): l'assenza di dissipazione permette la conservazione dell'energia meccanica, ma come ogni idealizzazione comporta delle discrepanze fisiche rispetto al comportamento reale.

=== Applicazione: Genesi della portanza su un profilo alare
Una prima applicazione del teorema di Bernoulli permette di spiegare, in prima approssimazione, la nascita della forza di *portanza* su un profilo alare investito da una corrente fluida.

#figure(align(center)[#canvas(length: 1.4cm, {
  import draw: *
  line((2.05, 1.72), (2.29, 1.82), (2.55, 1.85), (3.11, 1.79), (3.69, 1.64), (4.28, 1.44), (4.8, 1.25), (5.95, 2.0), (5.43, 2.19), (4.84, 2.39), (4.26, 2.54), (3.7, 2.6), (3.44, 2.57), (3.2, 2.47), close: true, fill: gray.transparentize(86%), stroke: none)
  line((1.8, 1.25), (1.82, 1.46), (1.92, 1.63), (2.05, 1.72), (2.29, 1.82), (2.55, 1.85), (3.11, 1.79), (3.69, 1.64), (4.28, 1.44), (4.8, 1.25), (3.84, 1.21), (2.85, 1.18), (2.13, 1.17), close: true, fill: gray.transparentize(78%), stroke: none)

  bezier((2.95, 2.0), (3.2, 2.47), (2.95, 2.21), (3.04, 2.37), stroke: (dash: "dashed", thickness: 0.65pt))
  bezier((2.95, 2.0), (5.95, 2.0), (2.95, 1.85), (4.15, 1.9), stroke: (dash: "dashed", thickness: 0.65pt))

  bezier((1.8, 1.25), (2.55, 1.85), (1.8, 1.62), (2.08, 1.85), stroke: 1.15pt)
  bezier((2.55, 1.85), (4.8, 1.25), (3.25, 1.85), (4.15, 1.48), stroke: 1.15pt)
  bezier((1.8, 1.25), (4.8, 1.25), (1.8, 1.1), (3.0, 1.15), stroke: 1.15pt)

  line((2.05, 1.72), (3.2, 2.47), stroke: 1.1pt)
  line((4.8, 1.25), (5.95, 2.0), stroke: 1.1pt)
  bezier((3.2, 2.47), (3.7, 2.6), (3.32, 2.55), (3.49, 2.6), stroke: 1.1pt)
  bezier((3.7, 2.6), (5.95, 2.0), (4.4, 2.6), (5.3, 2.23), stroke: 1.1pt)

  bezier((0.7, 1.52), (6.35, 1.98), (2.1, 2.75), (4.35, 2.55), mark: (end: ">"), stroke: 0.95pt + red)
  bezier((0.7, 1.84), (6.35, 2.24), (2.1, 3.22), (4.35, 2.98), mark: (end: ">"), stroke: 0.95pt + red)
  bezier((0.7, 2.16), (6.35, 2.5), (2.1, 3.69), (4.35, 3.41), mark: (end: ">"), stroke: 0.95pt + red)

  bezier((0.7, 1.1), (6.35, 1.16), (2.2, 0.98), (4.3, 1.0), mark: (end: ">"), stroke: 0.95pt + blue)
  bezier((0.7, 0.88), (6.35, 0.94), (2.2, 0.72), (4.3, 0.74), mark: (end: ">"), stroke: 0.95pt + blue)
  bezier((0.7, 0.66), (6.35, 0.72), (2.2, 0.46), (4.3, 0.48), mark: (end: ">"), stroke: 0.95pt + blue)

  line((3.5, 2.2), (3.5, 3.65), mark: (end: ">"), stroke: 1.2pt + purple)
  content((3.36, 3.6), text(size: 8.5pt, fill: purple)[$F_i$], anchor: "east")

  bezier((4.15, 3.25), (5.8, 3.62), (4.75, 3.48), (5.3, 3.6), mark: (end: ">"), stroke: 0.9pt + red)
  content((5.92, 3.62), text(size: 8.5pt)[$u$ cresce, $p$ diminuisce], anchor: "west")

  bezier((4.95, 1.02), (5.95, 0.45), (5.3, 0.8), (5.62, 0.48), mark: (end: ">"), stroke: 0.9pt + blue)
  content((6.08, 0.45), text(size: 8.5pt)[$u$ diminuisce, $p$ aumenta], anchor: "west")
})
])

=== Legame tra velocità e pressione attorno al profilo
1. *Geometria delle linee di corrente*: la forma del profilo alare costringe il campo di moto ad avvilupparsi attorno ad esso producendo un *addensamento* delle linee di corrente nella parte superiore (*dorso*) e un *diradamento* nella parte inferiore (*ventre*).
2. *Variazione di velocità*: per la conservazione della massa tra linee di corrente adiacenti, laddove le linee si avvicinano (dorso) il fluido accelera e la velocità cresce ($u^+$), mentre laddove si allontanano (ventre) il fluido decelera e la velocità diminuisce ($u^-$).
3. *Variazione di pressione tramite Bernoulli*: poiché lo spessore verticale del profilo è piccolo, possiamo trascurare le variazioni della quota gravitazionale $x_3$ tra dorso e ventre ($rho g x_3 approx "cost"$). Il teorema di Bernoulli (@eq:teorema_bernoulli) lungo ciascuna linea di corrente si riduce allora a:
   $ 1/2 rho u^2 + p = "cost" quad arrow.r.double quad p = "cost" - 1/2 rho u^2 $
   Di conseguenza:
   - sul *dorso*, dove la velocità aumenta ($u arrow.t$), la pressione deve diminuire ($p arrow.b$, zona di depressione $p^-$);
   - sul *ventre*, dove la velocità diminuisce ($u arrow.b$), la pressione deve aumentare ($p arrow.t$, zona di sovrappressione $p^+$).

=== Calcolo della forza aerodinamica risultante
Calcoliamo la forza complessiva $arrow(F)$ esercitata dal fluido sulla superficie chiusa $S$ del profilo alare. Indicato con $arrow(n)$ il versore normale uscente dalla superficie del profilo (diretto dal corpo verso il fluido), la forza di superficie è l'integrale del vettore sforzo $arrow(t) = bold(sigma) dot arrow(n)$:

$ F_i = integral_S sigma_(i j) n_j dif S $

Sostituendo il tensore degli sforzi di un fluido ideale $sigma_(i j) = -p delta_(i j)$ e sfruttando la proprietà della delta di Kronecker ($delta_(i j) n_j = n_i$), otteniamo:

$ F_i = integral_S (-p delta_(i j)) n_j dif S = - integral_S p n_i dif S quad <==> quad arrow(F) = - integral_S p arrow(n) dif S $

Il segno meno davanti all'integrale indica che la pressione $p$ agisce sempre spingendo *contro* la superficie del profilo (nella direzione di $-arrow(n)$, cioè verso l'interno del corpo):
- Sul *ventre* (dove la normale uscente $arrow(n)$ punta verso il basso, quindi $-arrow(n)$ punta verso l'alto), la pressione relativa rispetto a quella atmosferica indisturbata è *positiva* ($p^+ > 0$) e spinge il profilo verso l'alto.
- Sul *dorso* (dove la normale uscente $arrow(n)$ punta verso l'alto, quindi $-arrow(n)$ punta verso il basso), la pressione relativa è *negativa* ($p^- < 0$, aspirazione) e, moltiplicata per $-arrow(n)$, fornisce anch'essa un contributo diretto verso l'alto.

Sommando i contributi su tutta la superficie $S$, la risultante delle pressioni genera una forza netta $arrow(F)$ diretta verticalmente verso l'alto (*portanza*), che sostiene il profilo alare.

=== Applicazione: Tubo di Pitot-Statico
Un trasduttore di pressione misura la differenza tra la pressione di ristagno $p_0$ e la pressione statica $p_1$. Sulla linea di corrente che impatta frontalmente il tubo e si arresta ($u_0 = 0$), possiamo applicare il teorema di Bernoulli.

#figure(fig-pitot())

Dal punto di vista costruttivo, il tubo di Pitot è un cilindro di piccole dimensioni disposto longitudinalmente nella direzione del flusso. Presenta un canalino interno assiale aperto sulla punta (presa totale o di ristagno, punto $0$) e un secondo canalino collegato a una presa laterale sulla parete del cilindro (presa statica). All'interno dei canalini il fluido è in quiete, ma trasmette pressoché istantaneamente le pressioni alle due facce di un trasduttore differenziale di pressione.

Il funzionamento si basa sulle seguenti considerazioni fisiche:
- *Misura di velocità relativa e allineamento*: in aeronautica il tubo di Pitot misura la velocità relativa tra l'aereo e l'atmosfera circostante (che coincide con la velocità rispetto al suolo solo in assenza di vento, ma ne differisce sensibilmente in presenza di correnti in quota come le correnti a getto). Lo strumento deve essere allineato alla direzione del flusso; quando la direzione della corrente non è nota a priori, si impiegano sonde direzionali (come la _sonda a tre fori_), orientandole finché i due fori laterali simmetrici registrano la stessa pressione.
- *Flusso uniforme a monte*: poiché le dimensioni trasversali del tubo di Pitot sono molto piccole rispetto alle scale spaziali su cui varia il campo di moto esterno, alla scala dello strumento il flusso indisturbato a monte (sezione $1$) può essere considerato uniforme ($u_1$, $p_1$ e $cal(H)$ costanti). Inoltre, poiché la perturbazione indotta dal corpo cilindrico sul flusso tangenziale è minima, la pressione rilevata sulla presa laterale coincide con la pressione statica indisturbata $p_1$.
- *Punto di ristagno (o di arresto)*: tracciando le linee di corrente che investono un corpo (o, nel caso limite, un getto che impatta perpendicolarmente una parete piana), il fluido si divide passando in parte sopra/a destra e in parte sotto/a sinistra. Per simmetria, esiste sempre una linea di corrente centrale che termina sul corpo nel cosiddetto *punto di ristagno* (o *punto di arresto*) $0$. Si tratta di un'astrazione matematica che individua la piccola regione frontale in cui la velocità del fluido si annulla ($u_0 = 0$). Lì, per il teorema di Bernoulli, la pressione raggiunge il suo valore massimo $p_0$.

Applicando l'@eq:teorema_bernoulli lungo la linea di corrente centrale tra la sezione indisturbata $1$ a monte e il punto di ristagno $0$ (alla stessa quota gravitazionale) e imponendo la condizione di ristagno $u_0 = 0$, la differenza di pressione fornisce direttamente la *pressione dinamica* $1\/2 rho u_1^2$:

$ p_1 + 1/2 rho u_1^2 = p_0 + 1/2 rho u_0^2 quad arrow.r.double quad 1/2 rho u_1^2 = (p_0 - p_1) $

Risolvendo rispetto a $u_1$, si ricava la velocità del flusso indisturbato in arrivo dalla misura differenziale di pressione $Delta p = p_0 - p_1$:

$ u_1 = root(2, (2 (p_0 - p_1)) / rho) $




== Fluido ideale

#figure(fig-bobina())

Consideriamo lo studio del sistema bobina-disco di carta: si soffia aria in un condotto verticale al di sopra di un disco di carta di superficie $S$. La carta rimane sospesa in equilibrio se la forza peso è bilanciata dalla forza aerodinamica verticale diretta verso l'alto.

Per un fluido ideale il tensore degli sforzi si riduce al solo termine di pressione isotropa:

$ bold(sigma) = -p bold(I) quad <==> quad sigma_(i j) = -p delta_(i j) $

La forza aerodinamica esercitata dal fluido dipende quindi unicamente dalla distribuzione di pressione sulle facce superiore e inferiore della carta:

$ arrow(F) = integral_S bold(sigma) dot arrow(n) dif S = - integral_S p arrow(n) dif S $

Il problema è formulato sotto le seguenti ipotesi fisiche e geometriche:
- *a) Fluido incomprimibile e gravità trascurabile* ($rho = "cost"$, $arrow(g) = arrow(0)$): la velocità del soffio è di pochi $"m"\/"s"$, molto inferiore alla velocità del suono ($M << 1$), per cui la densità dell'aria è costante; si trascurano inoltre le variazioni di quota gravitazionali nell'aria.
- *b) Moto stazionario e assialsimmetrico* ($partial \/ partial t = 0$, $u_r (r, z)$, $u_z (r, z)$): il moto è stazionario poiché la carta resta in posizione fissa durante il soffio continuo; si adotta una coordinata radiale $r$ a partire dall'asse del condotto assumendo invarianza rispetto all'angolo azimutale $theta$.
- *c) Separazione di scale geometriche* ($r_1 >> h$, $(r_2 - r_1) >> h$): si indicano con $r_1$ il raggio del condotto verticale di ingresso, con $r_2$ il raggio esterno della bobina (e del disco di carta) e con $h$ lo spessore dell'intercapedine tra bobina e carta. Le dimensioni caratteristiche radiali superano $h$ di uno o più ordini di grandezza: vista da lontano la carta appare quasi a contatto con la bobina, mentre il getto d'aria defluisce radialmente attraverso la sottile intercapedine.

Per determinare il campo di velocità, suddividiamo il dominio fluido in tre regioni:
- *zona A*: condotto cilindrico verticale di ingresso (sezione trasversale $pi r_1^2$, velocità media $U_A$);
- *zona B*: regione di svolta in cui le linee di corrente si incurvano radialmente (sezione cilindrica d'ingresso nel canale $2 pi r_1 h$, velocità media $U_B$);
- *zona C*: canale radiale sottile compreso tra $r_1$ e $r_2$, di spessore costante $h$.

Per la conservazione della portata volumetrica $q$ tra il condotto verticale (zona A) e la sezione cilindrica d'ingresso del canale radiale (zona B), si ha:

$ q = pi r_1^2 U_A = 2 pi r_1 h U_B quad arrow.r.double quad (U_A) / (U_B) = (2 h) / r_1 << 1 $

Esplicitando $U_B$ in funzione di $U_A$, la condizione geometrica $r_1 \/ (2 h) >> 1$ mostra che la velocità nel canale radiale risulta amplificata di 10--100 volte rispetto alla velocità $U_A$ nel condotto verticale:

$ U_B = r_1 / (2 h) U_A >> U_A quad <==> quad U_A << U_B $

#tappa[Valuto la distribuzione delle pressioni.] Eseguiamo un'*analisi degli ordini di grandezza* nella zona di ingresso A a partire dall'equazione di Eulero stazionaria (con $arrow(g) = arrow(0)$). Approssimando le derivate spaziali nel canale di ingresso A con rapporti incrementali sulla scala caratteristica $r_1$, il termine convettivo e le corrispondenti variazioni spaziali di pressione nel condotto verticale risultano dell'ordine di $rho U_A^2$:

$ nabla p = - rho arrow(u) dot nabla arrow(u) , quad rho arrow(u) dot nabla arrow(u) = O(rho (U_A^2) / r_1) quad arrow.r.double quad Delta p_A tilde.op rho U_A^2 $

Poiché $U_A tilde.op U_B h \/ r_1$ (ossia $U_A << U_B$), tali variazioni di pressione nella zona A sono del tutto trascurabili rispetto all'energia cinetica per unità di volume nel canale radiale, $Delta p_A << rho U_B^2$.

=== Bernoulli tra (A) e (C)
Applicando il teorema di Bernoulli (@eq:teorema_bernoulli) lungo una linea di corrente dal condotto verticale A fino a un generico raggio $r$ nel canale radiale C (trascurando il termine gravitazionale per le piccole variazioni di quota $z$), otteniamo:

$ p_C + 1/2 rho U_C^2 = p_A + 1/2 rho U_A^2 $

In virtù della separazione di scale ($U_A << U_B$):
- il termine cinetico a monte $1/2 rho U_A^2 << 1/2 rho U_B^2$ è trascurabile rispetto a quello nel canale radiale;
- poiché $Delta p_A << rho U_B^2$, la pressione nella zona centrale può essere assunta uniforme, $p_A = "cost"$.

Il bilancio di Bernoulli tra la zona A e la generica sezione radiale di raggio $r$ nella zona C si semplifica pertanto in:

$ p_A = p_C + 1/2 rho U_C^2 $ <eq:bernoulli_AC>
== Calcolo delle forze

#figure(fig-forze())

Sulla faccia inferiore della carta agisce uniformemente la pressione atmosferica $p_0$ (che esercita una spinta verso l'alto $p_0 S$), mentre sulla faccia superiore si distinguono due regioni:
- $S_1$: il cerchio centrale di raggio $r_1$ (zona di impatto del getto verticale, a pressione uniforme $p_A$);
- $S_2$: la corona circolare compresa tra $r_1$ e $r_2$ (canale radiale, a pressione variabile $p_C (r)$).

La forza verticale complessiva $F$ (positiva se diretta verso l'alto) è quindi data dalla somma dei contributi sulle due regioni:

$ F = integral_(S_1) (p_0 - p_A) dif S_1 + integral_(S_2) [p_0 - p_C (r)] dif S_2 $ <eq:forza_bobina_int>

Per determinare queste differenze di pressione ricorriamo al bilancio di Bernoulli (@eq:bernoulli_AC) e all'equazione di continuità lungo il canale radiale, dove attraverso la sezione cilindrica di area $2 pi r h$ si conserva la portata volumetrica $q$:

$ p_A = 1/2 rho U_C^2 (r) + p_C (r) , quad U_C (r) = q / (2 pi r h) $

Sostituendo l'espressione della velocità radiale $U_C (r)$ nell'equazione di Bernoulli, ricaviamo l'andamento radiale della pressione nel canale C:

$ p_C (r) = p_A - 1/2 rho U_C^2 (r) = p_A - 1/8 (rho q^2) / (pi^2 h^2 r^2) $

All'aumentare del raggio $r$ cresce la sezione di passaggio $2 pi r h$: per conservare la portata $q$, la velocità $U_C (r)$ diminuisce come $1\/r$ e, per il teorema di Bernoulli, la pressione $p_C (r)$ aumenta progressivamente verso l'uscita. All'estremità esterna del canale radiale ($r = r_2$) il getto sbocca in atmosfera e, per continuità della pressione, deve raccordarsi con la pressione atmosferica $p_0$ ($p_C (r_2) = p_0$):

$ p_C (r_2) = p_A - 1/8 (rho q^2) / (pi^2 h^2 r_2^2) = p_0 quad arrow.r.double quad (p_0 - p_A) = - (rho q^2) / (8 pi^2 h^2 r_2^2) $

Il salto di pressione $(p_0 - p_A)$ è sempre negativo ($p_A > p_0$): nella regione centrale $S_1$ l'impatto del getto esercita una sovrappressione rispetto all'atmosfera che spinge la carta verso il basso.

Resta da determinare la differenza di pressione locale $(p_0 - p_C (r))$ lungo il canale radiale. Sostituendo l'espressione di $p_C (r)$ appena ricavata, essa si scrive in funzione del salto $(p_0 - p_A)$:

$ p_0 - p_C (r) = (p_0 - p_A) + 1/8 (rho q^2) / (pi^2 h^2 r^2) $

Inserendo il valore di $(p_0 - p_A)$ imposto dalla condizione di sbocco e raccogliendo il fattore comune $(rho q^2) \/ (8 pi^2 h^2)$, si ottiene:

$ p_0 - p_C (r) = - (rho q^2) / (8 pi^2 h^2 r_2^2) + (rho q^2) / (8 pi^2 h^2 r^2) = (rho q^2) / (8 pi^2 h^2) (1/r^2 - 1/r_2^2) $

Per $r_1 < r < r_2$ risulta $1\/r^2 > 1\/r_2^2$, da cui $p_0 - p_C (r) > 0$ (ovvero $p_C (r) < p_0$): l'elevata velocità nel canale radiale genera una depressione rispetto all'atmosfera (effetto *suction*) che aspira la carta verso l'alto nella regione anulare $S_2$.

Possiamo ora esplicitare i due integrali che compongono la forza verticale complessiva $F$ nell'@eq:forza_bobina_int:
- Nella zona centrale $S_1$, poiché $p_A$ è uniforme, l'integrale si riduce al prodotto per l'area del cerchio $pi r_1^2$:
  $ integral_(S_1) (p_0 - p_A) dif S_1 = (p_0 - p_A) pi r_1^2 $
- Nella corona circolare $S_2$, poiché la pressione dipende unicamente dal raggio $r$, si integra su anelli circolari infinitesimi di area $dif S_2 = 2 pi r dif r$:
  $ integral_(S_2) (p_0 - p_C (r)) dif S_2 = integral_(r_1)^(r_2) (p_0 - p_C (r)) 2 pi r dif r $

Con questi due risultati la forza verticale dell'@eq:forza_bobina_int si scrive come somma della spinta sul cerchio centrale e dell'aspirazione sulla corona:

$ F = underbrace((p_0 - p_A) pi r_1^2, "spinta su " S_1) + underbrace(integral_(r_1)^(r_2) [p_0 - p_C (r)] 2 pi r dif r, "aspirazione su " S_2) $

Sostituendo le differenze di pressione $(p_0 - p_A)$ e $(p_0 - p_C (r))$ ricavate in precedenza, e portando fuori dall'integrale i fattori costanti, si ha:

$ F = - (rho q^2) / (8 pi^2 h^2 r_2^2) pi r_1^2 + 2 pi (rho q^2) / (8 pi^2 h^2) integral_(r_1)^(r_2) (1/r^2 - 1/r_2^2) r dif r $

Per mettere in evidenza la struttura del risultato si raccoglie il fattore $(rho q^2) \/ (4 pi h^2)$, comune ai due addendi, e si spezza l'integrale distribuendo il fattore $r$:

$
  F &= (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + integral_(r_1)^(r_2) (1/r^2 - 1/r_2^2) r dif r } \
    &= (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + integral_(r_1)^(r_2) 1/r dif r - integral_(r_1)^(r_2) r / r_2^2 dif r }
$

I due integrali sono elementari: il primo dà un logaritmo, il secondo una primitiva quadratica in $r$:

$ F = (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + ln (r_2/r_1) - [ r^2 / (2 r_2^2) ]_(r_1)^(r_2) } $

Valutando la primitiva tra gli estremi $r_1$ e $r_2$, il termine $1/2 (r_1 \/ r_2)^2$ che ne risulta elide quello già presente nella parentesi:

$ F = (rho q^2) / (4 pi h^2) { cancel(- 1/2 (r_1/r_2)^2) + ln (r_2/r_1) - 1/2 + cancel(1/2 (r_1/r_2)^2) } $

Della forza rimangono quindi solo il contributo logaritmico dell'aspirazione e un termine costante. Introducendo il *fattore di forma* geometrico $Lambda = r_2 \/ r_1$, si perviene all'espressione finale della forza aerodinamica:

$ F = (rho q^2) / (4 pi h^2) { ln Lambda - 1/2 } , quad Lambda = r_2 / r_1 $

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Affinché prevalga l'effetto di aspirazione verso l'alto ($F > 0$), deve risultare $ln Lambda - 1/2 > 0$:
    $ ln Lambda > 1/2 quad arrow.r.double quad Lambda = r_2 / r_1 > e^(1/2) approx 1.65 $
    La superficie anulare $S_2$ in depressione deve quindi avere raggio esterno $r_2 > sqrt(e) r_1 approx 1.65 r_1$ per superare la spinta verso il basso esercitata dal getto centrale su $S_1$.

    L'equilibrio del disco è tuttavia *instabile*: poiché $F prop 1\/h^2$ mentre il peso $P = m g$ è indipendente da $h$:
    - se una perturbazione allontana la carta ($h > h_"eq"$), la forza aerodinamica diminuisce ($F < P$) e la carta cade;
    - se una perturbazione avvicina la carta alla bobina ($h < h_"eq"$), la forza aumenta ($F > P$) aspirando la carta fino a chiudere il canale.
  ],
  [
    #figure(fig-fh())
  ]
)

*Limite del modello di fluido ideale:* per $h arrow.r 0$ la formula prevede una forza divergente ($F arrow.r infinity$), comportamento non fisico dovuto all'aver trascurato gli effetti viscosi, che diventano invece dominanti per spessori d'intercapedine $h$ molto piccoli.

=== Caso statico: distribuzione idrostatica di pressione (Legge di Stevino)

Determiniamo ora le forze esercitate da un fluido in quiete ($arrow(u) = arrow(0)$) su un corpo generico immerso al suo interno. In assenza di moto, anche per un fluido reale gli sforzi viscosi sono identicamente nulli e il tensore degli sforzi si riduce alla sola componente isotropa di pressione ($bold(sigma) = -p bold(I)$).

Fissiamo un sistema di riferimento con l'asse verticale $x_3$ orientato verso l'alto e poniamo la quota $x_3 = 0$ in corrispondenza della superficie libera (dove agisce la pressione ambiente $p = p_0$). Il vettore accelerazione di gravità è dunque diretto lungo il verso negativo di $x_3$:

$ arrow(g) = mat(0; 0; -g) $

L'equazione di bilancio della quantità di moto in condizioni statiche ($nabla p = rho arrow(g)$), proiettata lungo la direzione verticale $x_3$, fornisce l'equazione fondamentale dell'idrostatica:

$ - (partial p) / (partial x_3) = rho g $

Se il fluido è omogeneo e incomprimibile ($rho = rho_0 = "cost"$), possiamo integrare per separazione di variabili tra la superficie libera ($x_3 = 0$, $p = p_0$) e una generica quota $x_3$:

$ - integral_(p_0)^p dif p = integral_0^(x_3) rho_0 g dif x_3 quad arrow.r.double quad p_0 - p = rho_0 g x_3 $

Risolvendo rispetto a $p(x_3)$, si ottiene la *legge di Stevino*:

$ p(x_3) = p_0 - rho_0 g x_3 $ <eq:stevino_cap4>

#nota[
  *Nota sul segno di $x_3$:* _poiché l'asse $x_3$ è rivolto verso l'alto, per tutti i punti all'interno del fluido (sotto la superficie libera) la coordinata $x_3$ è negativa ($x_3 < 0$). Di conseguenza il termine $-rho_0 g x_3$ è positivo e la pressione cresce linearmente con la profondità $h = -x_3$._
]

*Esempio numerico (acqua, $"H"_2"O"$):* considerando la densità dell'acqua $rho_0 = 10^3 thin ["kg"\/"m"^3]$ e $g approx 10 thin ["m"\/"s"^2]$, una variazione di profondità $|Delta x_3| = 10 thin ["m"]$ comporta un incremento di pressione pari a:

$ rho_0 g |Delta x_3| approx 10^3 dot 10 dot 10 = 10^5 thin ["Pa"] = 1 thin ["atm"] $

In acqua la pressione idrostatica aumenta quindi di circa $1 thin ["atm"]$ ogni $10 thin ["m"]$ di profondità.

=== Forze esercitate dal fluido

Consideriamo un corpo immerso di volume $V$ delimitato dalla superficie chiusa $S$. Indicando con $arrow(n)$ il versore normale uscente dalla superficie $S$ del corpo (e quindi rivolto verso il fluido), la forza elementare di pressione esercitata dal fluido sul corpo agisce lungo $-arrow(n)$:

$ dif arrow(F)_A = arrow(T) dif S = bold(sigma) dot arrow(n) dif S = -p bold(I) dot arrow(n) dif S $

Passando alla notazione indiciale, la componente $i$-esima della forza elementare di superficie si scrive:

$ dif (F_A)_i = T_i dif S = sigma_(i j) n_j dif S = -p delta_(i j) n_j dif S $

Per calcolare la componente $i$-esima della forza risultante $(F_A)_i$ su tutto il corpo, integriamo sulla superficie chiusa $S$ e trasformiamo l'integrale di superficie in un integrale sul volume $V$ mediante il teorema della divergenza di Gauss:

$ (F_A)_i = - integral_S p delta_(i j) n_j dif S = - integral_V partial / (partial x_j) (p delta_(i j)) dif V $

Nella somma sull'indice $j$ la delta di Kronecker seleziona soltanto $j = i$, per cui $(partial (p delta_(i j))) / (partial x_j) = (partial p) / (partial x_i)$; il gradiente di pressione si esprime poi con l'equazione dell'idrostatica, $(partial p) / (partial x_i) = rho g_i$ (ossia $nabla p = rho arrow(g)$):

$ (F_A)_i = integral_V - (partial p) / (partial x_i) dif V = integral_V - rho g_i dif V $

Nell'ipotesi di *campo di gravità uniforme* $arrow(g)$, la componente $g_i$ è costante e si porta fuori dall'integrale:

$ (F_A)_i = - g_i integral_V rho dif V = - g_i M_f $

Definendo la *massa di fluido spostato* $M_f$ come la massa di fluido che occuperebbe il volume $V$ del corpo:

$ M_f = integral_V rho dif V $

si ottiene in forma vettoriale il *Principio di Archimede*:

$ arrow(F)_A = - M_f arrow(g) $ <eq:archimede_cap4>

La forza risultante $arrow(F)_A$ esercitata dal fluido in quiete su un corpo immerso di forma arbitraria è dunque *opposta a $arrow(g)$* (diretta verticalmente verso l'alto) e ha intensità pari al peso del fluido spostato dal corpo.
#pagebreak()
