#import "../template.typ": *
#set math.equation(numbering:"1")
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

ciascun addendo di $cal(H)$ ha le dimensioni di una pressione ($["Pa"] = ["N"\/"m"^2] = ["J"\/"m"^3]$): questa formulazione è tipica dell'aerodinamica, dove si misurano direttamente differenze di pressione. In ambito idraulico (ad esempio nell'idraulica fluviale) si preferisce invece dividere l'intera espressione per il peso specifico $rho g$, definendo il *carico idraulico*:

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

#figure(align(center)[#include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig01.typ"
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

#figure(canvas(length: 1.4cm, {
  import draw: *

  // --- VISTA 3D (pannello sinistro) ---
  line((1.95, -1.26), (1.95, -1.45), stroke: (paint: gray.darken(25%), thickness: 0.7pt, dash: "dash-dotted"))
  line((1.95, 2.12), (1.95, 2.38), stroke: (paint: gray.darken(25%), thickness: 0.7pt, dash: "dash-dotted"))

  // Disco di carta 3D
  circle((1.95, -0.68), radius: (1.65, 0.53), fill: gray.transparentize(60%), stroke: none)
  rect((0.30, -0.68), (3.60, -0.60), fill: gray.transparentize(60%), stroke: none)
  circle((1.95, -0.60), radius: (1.65, 0.53), fill: gray.transparentize(82%), stroke: none)
  arc((1.95, -0.68), start: 180deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)
  line((0.30, -0.68), (0.30, -0.60), stroke: 0.9pt + black)
  line((3.60, -0.68), (3.60, -0.60), stroke: 0.9pt + black)
  arc((1.95, -0.60), start: 0deg, stop: 19.9deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)
  arc((1.95, -0.60), start: 160.1deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)

  // Frecce radiali in uscita in 3D
  line((3.35, -0.42), (3.90, -0.42), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((0.55, -0.42), (0.00, -0.42), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((1.95, -0.80), (1.95, -1.20), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((2.90, -0.73), (3.33, -0.86), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((1.00, -0.73), (0.57, -0.86), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))

  // Flangia della bobina 3D
  circle((1.95, -0.24), radius: (1.65, 0.53), fill: gray.transparentize(70%), stroke: none)
  rect((0.30, -0.24), (3.60, -0.10), fill: gray.transparentize(70%), stroke: none)
  circle((1.95, -0.10), radius: (1.65, 0.53), fill: gray.transparentize(84%), stroke: none)
  arc((1.95, -0.24), start: 180deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)
  line((0.30, -0.24), (0.30, -0.10), stroke: 0.95pt + black)
  line((3.60, -0.24), (3.60, -0.10), stroke: 0.95pt + black)
  arc((1.95, -0.10), start: 0deg, stop: 70.2deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)
  arc((1.95, -0.10), start: 109.8deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)

  // Condotto verticale 3D
  circle((1.95, -0.10), radius: (0.56, 0.18), fill: gray.transparentize(75%), stroke: none)
  rect((1.39, -0.10), (2.51, 1.55), fill: gray.transparentize(75%), stroke: none)
  circle((1.95, 1.55), radius: (0.56, 0.18), fill: gray.transparentize(84%), stroke: none)
  circle((1.95, 1.55), radius: (0.42, 0.135), fill: gray.transparentize(55%), stroke: none)
  arc((1.95, -0.10), start: 180deg, stop: 360deg, radius: (0.56, 0.18), anchor: "origin", stroke: 0.95pt + black)
  line((1.39, -0.10), (1.39, 1.55), stroke: 0.95pt + black)
  line((2.51, -0.10), (2.51, 1.55), stroke: 0.95pt + black)
  circle((1.95, 1.55), radius: (0.56, 0.18), stroke: 0.95pt + black)
  circle((1.95, 1.55), radius: (0.42, 0.135), stroke: 0.8pt + black)

  // Frecce del flusso in ingresso 3D
  line((1.75, 2.05), (1.75, 1.57), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((1.95, 2.05), (1.95, 1.57), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))
  line((2.15, 2.05), (2.15, 1.57), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))


  // --- SEZIONE 2D (pannello destro) ---
  line((7.35, -1.30), (7.35, 2.38), stroke: (paint: gray.darken(25%), thickness: 0.7pt, dash: "dash-dotted"))

  // Riempimento pareti a L
  line(
    (6.81, 1.55), (6.81, -0.24), (5.55, -0.24), (5.55, -0.10), (6.67, -0.10), (6.67, 1.55),
    close: true, fill: gray.transparentize(86%), stroke: none
  )
  line(
    (7.89, 1.55), (7.89, -0.24), (9.15, -0.24), (9.15, -0.10), (8.03, -0.10), (8.03, 1.55),
    close: true, fill: gray.transparentize(86%), stroke: none
  )

  // Tratteggio parete sinistra
  line((6.67, -0.10), (6.81, 0.04), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.06), (6.81, 0.20), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.22), (6.81, 0.36), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.38), (6.81, 0.52), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.54), (6.81, 0.68), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.70), (6.81, 0.84), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 0.86), (6.81, 1.00), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 1.02), (6.81, 1.16), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 1.18), (6.81, 1.32), stroke: 0.45pt + gray.darken(25%))
  line((6.67, 1.34), (6.81, 1.48), stroke: 0.45pt + gray.darken(25%))
  line((5.60, -0.24), (5.74, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((5.76, -0.24), (5.90, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((5.92, -0.24), (6.06, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((6.08, -0.24), (6.22, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((6.24, -0.24), (6.38, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((6.40, -0.24), (6.54, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((6.56, -0.24), (6.70, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((6.67, -0.24), (6.81, -0.10), stroke: 0.45pt + gray.darken(25%))

  // Tratteggio parete destra
  line((7.89, -0.10), (8.03, 0.04), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.06), (8.03, 0.20), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.22), (8.03, 0.36), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.38), (8.03, 0.52), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.54), (8.03, 0.68), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.70), (8.03, 0.84), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 0.86), (8.03, 1.00), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 1.02), (8.03, 1.16), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 1.18), (8.03, 1.32), stroke: 0.45pt + gray.darken(25%))
  line((7.89, 1.34), (8.03, 1.48), stroke: 0.45pt + gray.darken(25%))
  line((7.89, -0.24), (8.03, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.05, -0.24), (8.19, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.21, -0.24), (8.35, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.37, -0.24), (8.51, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.53, -0.24), (8.67, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.69, -0.24), (8.83, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.85, -0.24), (8.99, -0.10), stroke: 0.45pt + gray.darken(25%))
  line((8.99, -0.24), (9.13, -0.10), stroke: 0.45pt + gray.darken(25%))

  // Contorni pareti a L e disco di carta 2D
  line((6.67, 1.55), (6.67, -0.10), (5.55, -0.10), (5.55, -0.24), (6.81, -0.24), (6.81, 1.55), stroke: 1pt + black)
  line((7.89, 1.55), (7.89, -0.24), (9.15, -0.24), (9.15, -0.10), (8.03, -0.10), (8.03, 1.55), stroke: 1pt + black)
  rect((5.55, -0.68), (9.15, -0.60), fill: gray.transparentize(70%), stroke: 1pt + black)

  // Frecce del flusso in ingresso 2D
  line((6.95, 1.48), (6.95, 1.15), mark: (end: ">"), stroke: 0.9pt + rgb(140, 45, 25))
  line((7.15, 1.48), (7.15, 1.15), mark: (end: ">"), stroke: 0.9pt + rgb(140, 45, 25))
  line((7.35, 1.48), (7.35, 1.15), mark: (end: ">"), stroke: 0.9pt + rgb(140, 45, 25))
  line((7.55, 1.48), (7.55, 1.15), mark: (end: ">"), stroke: 0.9pt + rgb(140, 45, 25))
  line((7.75, 1.48), (7.75, 1.15), mark: (end: ">"), stroke: 0.9pt + rgb(140, 45, 25))

  // Linee di corrente 2D
  line((6.95, 1.05), (6.95, -0.14), stroke: 0.95pt + rgb(140, 45, 25))
  bezier((6.95, -0.14), (6.81, -0.34), (6.95, -0.25), (6.89, -0.34), stroke: 0.95pt + rgb(140, 45, 25))
  line((6.81, -0.34), (5.08, -0.34), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))

  line((7.11, 1.05), (7.11, -0.15), stroke: 0.95pt + rgb(140, 45, 25))
  bezier((7.11, -0.15), (6.81, -0.49), (7.11, -0.34), (6.98, -0.49), stroke: 0.95pt + rgb(140, 45, 25))
  line((6.81, -0.49), (5.08, -0.49), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))

  line((7.75, 1.05), (7.75, -0.14), stroke: 0.95pt + rgb(140, 45, 25))
  bezier((7.75, -0.14), (7.89, -0.34), (7.75, -0.25), (7.81, -0.34), stroke: 0.95pt + rgb(140, 45, 25))
  line((7.89, -0.34), (9.65, -0.34), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))

  line((7.59, 1.05), (7.59, -0.15), stroke: 0.95pt + rgb(140, 45, 25))
  bezier((7.59, -0.15), (7.89, -0.49), (7.59, -0.34), (7.72, -0.49), stroke: 0.95pt + rgb(140, 45, 25))
  line((7.89, -0.49), (9.65, -0.49), mark: (end: ">"), stroke: 0.95pt + rgb(140, 45, 25))

  // Linee tratteggiate di efflusso
  line((5.55, -0.24), (5.08, -0.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))
  line((5.55, -0.60), (5.08, -0.74), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))
  line((9.15, -0.24), (9.65, -0.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))
  line((9.15, -0.60), (9.65, -0.74), stroke: (dash: "dashed", thickness: 0.6pt, paint: gray.darken(20%)))

  // Quote r1, r2, h
  line((7.89, 1.55), (7.89, 1.92), stroke: 0.6pt + black)
  line((7.35, 1.82), (7.89, 1.82), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((7.62, 1.92), text(size: 7.5pt)[$r_1$], anchor: "south")

  line((9.15, -0.10), (9.15, 2.38), stroke: 0.6pt + black)
  line((7.35, 2.26), (9.15, 2.26), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((8.25, 2.34), text(size: 7.5pt)[$r_2$], anchor: "south")

  line((5.55, -0.24), (4.82, -0.24), stroke: 0.6pt + black)
  line((5.55, -0.60), (4.82, -0.60), stroke: 0.6pt + black)
  line((4.92, -0.60), (4.92, -0.24), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((4.80, -0.42), text(size: 7.5pt)[$h$], anchor: "east")

  // Etichette A, B, C, D
  content((7.47, 0.55), text(size: 7.5pt)[$A$])
  content((6.72, -1.22), text(size: 7.5pt)[$B$])
  line((6.78, -1.10), (7.08, -0.44), mark: (end: ">"), stroke: 0.6pt + gray.darken(30%))
  content((6.05, -1.22), text(size: 7.5pt)[$C$])
  line((6.12, -1.10), (6.35, -0.49), mark: (end: ">"), stroke: 0.6pt + gray.darken(30%))
  content((9.75, -1.22), text(size: 7.5pt)[$D$])
  line((9.68, -1.10), (9.38, -0.49), mark: (end: ">"), stroke: 0.6pt + gray.darken(30%))


}))

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

    
  ],
  [
    #figure(fig-fh())
  ]
)
L'equilibrio del disco è tuttavia *instabile*: poiché $F prop 1\/h^2$ mentre il peso $P = m g$ è indipendente da $h$:
    - se una perturbazione allontana la carta ($h > h_"eq"$), la forza aerodinamica diminuisce ($F < P$) e la carta cade;
    - se una perturbazione avvicina la carta alla bobina ($h < h_"eq"$), la forza aumenta ($F > P$) aspirando la carta fino a chiudere il canale.

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
== Applicazione: Velocità di efflusso da un serbatoio (Formula di Torricelli) e tempo di svuotamento
Consideriamo un serbatoio contenente acqua fino a un'altezza $h$, dotato di un foro sul fondo o sulla parete inferiore da cui fuoriesce un getto d'acqua. Tracciamo una linea di corrente che parte da un punto $A$ sul pelo libero (a quota $z_A$) e arriva in un punto $B$ all'uscita del foro (a quota $z_B$, appena a valle della sezione contratta dove le linee di corrente del getto tornano parallele).
Applicando il Teorema di Bernoulli lungo la linea di corrente tra $A$ e $B$:
$ 1/2 rho u_A^2 + p_A + rho g z_A = 1/2 rho u_B^2 + p_B + rho g z_B $
Valutiamo i singoli termini:
- Sul pelo libero $A$ (assumendo la sezione del serbatoio molto più grande di quella del foro) il fluido è pressoché fermo, quindi $u_A approx 0$.
- Sia il pelo libero in $A$ sia il getto libero in $B$ sono a diretto contatto con l'atmosfera. A rigore, tra la quota $z_A$ e la quota $z_B$ sussiste una variazione idrostatica della pressione atmosferica pari a:
$ p_B - p_A = rho_"aria" g (z_A - z_B) $
Tuttavia, poiché la densità dell'aria ($rho_"aria" approx 1 "kg"/"m"^3$) è circa un millesimo della densità dell'acqua ($rho_"acqua" approx 1000 "kg"/"m"^3$), il termine $rho_"aria" g (z_A - z_B)$ è del tutto trascurabile rispetto a $rho g (z_A - z_B)$ e possiamo porre in prima approssimazione $p_A approx p_B = p_"atm"$.

Semplificando le pressioni e dividendo per $rho$, otteniamo la velocità di efflusso (formula di Torricelli):
$ 1/2 u_B^2 = g (z_A - z_B) ==> u_B = sqrt(2 g (z_A - z_B)) = sqrt(2 g h) $
dove $h = z_A - z_B$ è il battente idrostatico sopra il foro.

// [DA AUDIO]
#figure(
  align(center)[#canvas(length: 1cm, {
  import draw: *

  circle((1.8, 2.75), radius: (1.4, 0.39), fill: gray.transparentize(86%), stroke: none)
  circle((1.8, 0.85), radius: (1.4, 0.39), fill: gray.transparentize(92%), stroke: none)
  circle((1.8, 0.85), radius: (0.2, 0.06), fill: gray.transparentize(72%), stroke: none)

  arc((1.8, 0.85), start: 0deg, stop: 180deg, radius: (1.4, 0.39), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((1.8, 0.85), start: 180deg, stop: 360deg, radius: (1.4, 0.39), anchor: "origin", stroke: 1pt)
  line((0.4, 0.85), (0.4, 3.2), stroke: 1pt)
  line((3.2, 0.85), (3.2, 3.2), stroke: 1pt)
  circle((1.8, 3.2), radius: (1.4, 0.39), stroke: 1pt)
  circle((1.8, 2.75), radius: (1.4, 0.39), stroke: 0.85pt)
  circle((1.8, 0.85), radius: (0.2, 0.06), stroke: 0.75pt)

  line((0.75, 2.0), (0.75, 2.75), mark: (end: ">"), stroke: 0.7pt)
  line((0.75, 1.6), (0.75, 0.85), mark: (end: ">"), stroke: 0.7pt)
  content((0.75, 1.8), text(size: 8.5pt)[$Delta$], anchor: "center")

  circle((1.85, 2.75), radius: 0.045, fill: black, stroke: none)
  content((1.94, 2.84), text(size: 8.5pt)[$A$], anchor: "south-west")

  bezier((1.85, 2.75), (1.8, 0.45), (1.82, 1.9), (1.8, 1.2), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((1.6, 0.85), (1.67, 0.45), (1.65, 0.7), (1.67, 0.58), stroke: 0.8pt)
  line((1.67, 0.45), (1.67, 0.15), stroke: 0.8pt)
  bezier((2.0, 0.85), (1.93, 0.45), (1.95, 0.7), (1.93, 0.58), stroke: 0.8pt)
  line((1.93, 0.45), (1.93, 0.15), stroke: 0.8pt)

  arc((1.8, 0.45), start: 0deg, stop: 180deg, radius: (0.13, 0.04), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  arc((1.8, 0.45), start: 180deg, stop: 360deg, radius: (0.13, 0.04), anchor: "origin", stroke: 0.65pt)
  arc((1.8, 0.15), start: 0deg, stop: 180deg, radius: (0.13, 0.04), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  arc((1.8, 0.15), start: 180deg, stop: 360deg, radius: (0.13, 0.04), anchor: "origin", stroke: 0.65pt)
  line((1.8, 0.45), (1.8, 0.08), mark: (end: ">"), stroke: 0.7pt)

  circle((1.8, 0.45), radius: 0.04, fill: black, stroke: none)
  content((1.98, 0.45), text(size: 8.5pt)[$B$], anchor: "west")

  circle((1.8, 0.62), radius: 0.6, stroke: 0.75pt)
  bezier((2.4, 0.62), (4.45, 2.6), (3.45, 0.62), (3.35, 2.6), mark: (end: ">"), stroke: 0.75pt)

  line((5.0, 2.27), (8.7, 2.27), (9.6, 2.83), (5.9, 2.83), close: true, fill: gray.transparentize(84%), stroke: none)
  line((5.0, 2.27), (8.7, 2.27), (8.7, 2.13), (5.0, 2.13), close: true, fill: gray.transparentize(72%), stroke: none)
  line((8.7, 2.27), (9.6, 2.83), (9.6, 2.69), (8.7, 2.13), close: true, fill: gray.transparentize(77%), stroke: none)
  circle((7.3, 2.55), radius: (0.7, 0.2), fill: white, stroke: none)
  circle((7.3, 1.15), radius: (0.45, 0.13), fill: gray.transparentize(88%), stroke: none)

  bezier((6.83, 2.41), (6.9, 2.13), (6.855, 2.316), (6.878, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((6.9, 2.13), (7.0, 1.15), (6.965, 1.813), (7.0, 1.497), stroke: 0.6pt)
  line((7.0, 1.15), (7.0, 0.55), stroke: 0.6pt)

  bezier((7.07, 2.41), (7.1, 2.13), (7.082, 2.316), (7.092, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.1, 2.13), (7.15, 1.15), (7.132, 1.813), (7.15, 1.497), stroke: 0.6pt)
  line((7.15, 1.15), (7.15, 0.55), stroke: 0.6pt)

  line((7.3, 2.41), (7.3, 2.13), stroke: (dash: "dashed", thickness: 0.55pt))
  line((7.3, 2.13), (7.3, 0.55), stroke: 0.6pt)

  bezier((7.53, 2.41), (7.5, 2.13), (7.518, 2.316), (7.508, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.5, 2.13), (7.45, 1.15), (7.468, 1.813), (7.45, 1.497), stroke: 0.6pt)
  line((7.45, 1.15), (7.45, 0.55), stroke: 0.6pt)

  bezier((7.77, 2.41), (7.7, 2.13), (7.745, 2.316), (7.722, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.7, 2.13), (7.6, 1.15), (7.635, 1.813), (7.6, 1.497), stroke: 0.6pt)
  line((7.6, 1.15), (7.6, 0.55), stroke: 0.6pt)

  bezier((6.6, 2.41), (6.7, 2.13), (6.637, 2.316), (6.67, 2.222), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((6.7, 2.13), (6.85, 1.15), (6.797, 1.813), (6.85, 1.497), stroke: 1pt)
  line((6.85, 1.15), (6.85, 0.55), stroke: 1pt)

  bezier((8.0, 2.41), (7.9, 2.13), (7.963, 2.316), (7.93, 2.222), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((7.9, 2.13), (7.75, 1.15), (7.803, 1.813), (7.75, 1.497), stroke: 1pt)
  line((7.75, 1.15), (7.75, 0.55), stroke: 1pt)

  arc((7.3, 1.15), start: 0deg, stop: 180deg, radius: (0.45, 0.13), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((7.3, 1.15), start: 180deg, stop: 360deg, radius: (0.45, 0.13), anchor: "origin", stroke: 0.85pt)

  arc((7.3, 0.55), start: 0deg, stop: 180deg, radius: (0.45, 0.13), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((7.3, 0.55), start: 180deg, stop: 360deg, radius: (0.45, 0.13), anchor: "origin", stroke: 1pt)

  line((5.0, 2.27), (8.7, 2.27), (9.6, 2.83), (5.9, 2.83), close: true, stroke: 0.9pt)
  line((5.0, 2.27), (5.0, 2.13), (8.7, 2.13), (8.7, 2.27), stroke: 0.9pt)
  line((8.7, 2.13), (9.6, 2.69), (9.6, 2.83), stroke: 0.9pt)
  circle((7.3, 2.55), radius: (0.7, 0.2), stroke: 0.9pt)
  arc((7.3, 2.41), start: 20.5deg, stop: 159.5deg, radius: (0.7, 0.2), anchor: "origin", stroke: 0.75pt)

  line((6.6, 2.62), (6.6, 3.22), stroke: 0.55pt)
  line((8.0, 2.62), (8.0, 3.22), stroke: 0.55pt)
  line((7.1, 3.08), (6.6, 3.08), mark: (end: ">"), stroke: 0.7pt)
  line((7.5, 3.08), (8.0, 3.08), mark: (end: ">"), stroke: 0.7pt)
  content((7.3, 3.08), text(size: 8.5pt)[$d$], anchor: "center")

  line((4.55, 2.41), (6.56, 2.41), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.55, 1.15), (6.8, 1.15), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.65, 1.98), (4.65, 2.41), mark: (end: ">"), stroke: 0.7pt)
  line((4.65, 1.58), (4.65, 1.15), mark: (end: ">"), stroke: 0.7pt)
  content((4.65, 1.78), text(size: 8.5pt)[$delta tilde d$], anchor: "center")

  circle((7.3, 1.15), radius: 0.045, fill: black, stroke: none)
  rect((7.36, 0.87), (7.58, 1.09), fill: white, stroke: none)
  content((7.47, 0.98), text(size: 8.5pt)[$B$], anchor: "center")

  line((6.18, 0.45), (6.78, 0.72), mark: (end: ">"), stroke: 0.7pt)
  content((5.5, 0.38), text(size: 8pt)[traiettorie], anchor: "center")
  content((5.5, 0.12), text(size: 8pt)[parallele], anchor: "center")

  content((8.8, 0.55), text(size: 8pt)[Vena], anchor: "center")
  content((8.8, 0.29), text(size: 8pt)[contracta], anchor: "center")
})]
)








// [DA AUDIO]
=== Calcolo del tempo di svuotamento del serbatoio
Vogliamo ora calcolare il tempo $tau$ necessario a svuotare completamente un serbatoio di sezione trasversale costante $S$, partendo da un'altezza iniziale $h(0) = h_0$, attraverso un foro sul fondo di area $A << S$.
Poiché il foro è molto piccolo rispetto alla sezione del serbatoio ($A << S$), lo svuotamento avviene lentamente e in ogni istante la velocità di efflusso è data da $u(t) = sqrt(2 g h(t))$, la quale diminuisce nel tempo man mano che il livello $h(t)$ si abbassa.

Applichiamo il principio di conservazione della massa (che per un fluido a densità costante $rho = "cost."$ equivale alla conservazione del volume):
1. La massa d'acqua $G(t)$ contenuta nel serbatoio all'istante $t$ è pari al prodotto tra densità e volume:
$ G(t) = rho S h(t) $
2. La variazione nel tempo della massa contenuta nel serbatoio deve eguagliare l'opposto del flusso di massa uscente dal foro:
$ (d G) / (d t) = -rho Q $
dove il segno meno indica che la massa nel serbatoio diminuisce nel tempo e $Q$ è la portata volumetrica (flusso di volume) uscente dal foro di sezione $A$:
$ Q = A u(t) = A sqrt(2 g h(t)) $
3. Sostituendo l'espressione di $G(t)$ e di $Q$ nell'equazione di bilancio della massa:
$ (d) / (d t) (rho S h) = -rho A sqrt(2 g h) $
Essendo la densità $rho$ e la sezione $S$ costanti, semplificando $rho$ otteniamo il bilancio di volume:
$ S (d h) / (d t) = -A sqrt(2 g) h^(1/2) ==> (d h) / (d t) = - A / S sqrt(2 g) h^(1/2) $
4. Separiamo le variabili e integriamo tra l'istante iniziale $t = 0$ (in cui $h = h_0$) e l'istante di completo svuotamento $t = tau$ (in cui $h = 0$):
$ integral_(h_0)^0 h^(-1/2) dif h = - A / S sqrt(2 g) integral_0^tau dif t $
$ lr([ 2 h^(1/2) ])_(h_0)^0 = - A / S sqrt(2 g) tau ==> -2 h_0^(1/2) = - A / S sqrt(2 g) tau $
Ricavando $tau$, si ottiene la formula per il tempo di svuotamento del serbatoio:
$ tau = (2 h_0^(1/2) S) / (A sqrt(2 g)) = S / A sqrt((2 h_0) / g) $


