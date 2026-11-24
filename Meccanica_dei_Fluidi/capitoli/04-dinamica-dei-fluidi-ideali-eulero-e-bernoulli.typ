#import "../template.typ": *
#show: conf
#show figure: set text(size: 9pt)   // etichette delle figure a 9pt, come nel modello

= Dinamica dei Fluidi Ideali (Eulero e Bernoulli)

== Bilancio della quantità di moto

=== Teorema del trasporto ed equazione di continuità

Il teorema del trasporto di Reynolds si può riscrivere in una forma che incorpora già l'equazione di continuità. Lo applichiamo a una grandezza del tipo $phi = rho chi$, dove $chi$ è una generica grandezza specifica scalare: usare uno scalare al posto del vettore velocità $arrow(u)$ rende i passaggi più leggeri, e il risultato si estende poi a ogni componente di $arrow(u)$.

$ dif / (dif t) integral_(cal(D)(t)) rho chi dif cal(V) = integral_(cal(D)(t)) underbrace((partial (rho chi)) / (partial t), "termine locale") dif cal(V) + integral_(cal(S)(t)) underbrace(rho chi (arrow(u)_S dot arrow(n)), "flusso al contorno") dif cal(S) $ <eq:reynolds_rho_chi>

==== Passo 1: il termine locale

Vogliamo riscrivere $(partial (rho chi)) \/ (partial t)$ in modo che compaia la derivata materiale di $chi$. La regola del prodotto dà

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) + chi (partial rho) / (partial t) $

e la derivata della densità si elimina con l'equazione di continuità, $(partial rho) \/ (partial t) = -(partial (rho u_j)) \/ (partial x_j)$:

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) - chi (partial (rho u_j)) / (partial x_j) $

L'ultimo termine si trasforma con la regola del prodotto letta al contrario, $b (partial a) \/ (partial x_j) = (partial (a b)) \/ (partial x_j) - a (partial b) \/ (partial x_j)$, con $a = rho u_j$ e $b = chi$:

$ (partial (rho chi)) / (partial t) = rho (partial chi) / (partial t) - lr([ (partial (chi rho u_j)) / (partial x_j) - rho u_j (partial chi) / (partial x_j) ]) $

Raccogliendo $rho$ tra il primo e l'ultimo addendo compare la derivata lagrangiana (o materiale) $(D chi) \/ (D t)$:

$ (partial (rho chi)) / (partial t) = rho underbrace(lr([ (partial chi) / (partial t) + u_j (partial chi) / (partial x_j) ]), (D chi) / (D t)) - (partial (rho chi u_j)) / (partial x_j) = rho (D chi) / (D t) - (partial (rho chi u_j)) / (partial x_j) $

La variazione locale di $rho chi$ si separa quindi in un termine che segue la particella fluida e in un termine di divergenza.

==== Passo 2: sostituzione e teorema di Gauss

Sostituiamo questo risultato nell'@eq:reynolds_rho_chi. Il teorema della divergenza trasforma l'integrale di volume della divergenza in un integrale di superficie,

$ integral_(cal(D)(t)) (partial (rho chi u_j)) / (partial x_j) dif cal(V) = integral_(cal(S)(t)) rho chi u_j n_j dif cal(S) $

e i due flussi al contorno si raccolgono in un unico integrale. Si ottiene una relazione del tutto generale, valida per un volume di controllo qualsiasi e senza alcuna ipotesi sulla densità:

$ dif / (dif t) integral_(cal(D)) rho chi dif cal(V) = integral_(cal(D)) rho (D chi) / (D t) dif cal(V) + integral_(cal(S)) rho chi (arrow(u)_S - arrow(u)) dot arrow(n) dif cal(S) $

Se il dominio è *materiale*, cioè la sua frontiera si muove in ogni punto con il fluido ($arrow(u)_S = arrow(u)$), il flusso relativo si annulla. La derivata totale entra allora sotto il segno di integrale e diventa una derivata lagrangiana moltiplicata per $rho$:

$ dif / (dif t) integral_(cal(D)(t)) rho chi dif cal(V) = integral_(cal(D)(t)) rho (D chi) / (D t) dif cal(V) $ <eq:reynolds_materiale>

Ponendo $chi = u_i$ si ottiene la variazione della quantità di moto del volume materiale di fluido:

$ dif / (dif t) integral_(cal(D)(t)) rho arrow(u) dif cal(V) = integral_(cal(D)(t)) rho (D arrow(u)) / (D t) dif cal(V) $

=== Forze agenti sul volume materiale

Per il secondo principio della dinamica, la variazione della quantità di moto del dominio materiale $cal(D)(t)$ è uguale alla risultante delle forze di volume $arrow(F)_V$ e delle forze di superficie $arrow(F)_S$:

$ integral_(cal(D)(t)) rho (D arrow(u)) / (D t) dif cal(V) = arrow(F)_V + arrow(F)_S = integral_(cal(D)(t)) rho arrow(g) dif cal(V) + integral_(cal(S)(t)) bold(sigma) dot arrow(n) dif cal(S) $

- Le *forze di volume* agiscono su tutto il fluido contenuto nel dominio; nel nostro caso sono dovute alla gravità:
  $ arrow(F)_V = integral_(cal(D)(t)) rho arrow(g) dif cal(V) quad <==> quad F_(V,i) = integral_(cal(D)(t)) rho g_i dif cal(V) $
- Le *forze di superficie* agiscono solo sulla frontiera $cal(S)(t)$. Per il teorema del tetraedro di Cauchy si esprimono tramite il tensore degli sforzi $bold(sigma)$, del secondo ordine: il vettore sforzo, cioè la forza per unità di superficie agente su un elemento di normale $arrow(n)$, è $arrow(sigma)_n = bold(sigma) dot arrow(n)$, ovvero $(sigma_n)_i = sigma_(i j) n_j$. Quindi
  $ arrow(F)_S = integral_(cal(S)(t)) bold(sigma) dot arrow(n) dif cal(S) quad <==> quad F_(S,i) = integral_(cal(S)(t)) sigma_(i j) n_j dif cal(S) $

Anche qui non si fa alcuna ipotesi sulla densità, che può essere costante o variabile.

Il tensore degli sforzi $sigma_(i j)$ è simmetrico e si scompone in due contributi:

$ sigma_(i j) = underbrace((sigma_(i j))_"eq", "statico") + underbrace((sigma_(i j))_"dis", "viscoso") $

1. Il *contributo statico* (o di equilibrio) $(sigma_(i j))_"eq"$ esiste sia con il fluido in quiete sia con un campo di velocità uniforme. A scala microscopica l'agitazione termica delle molecole è caotica e isotropa (gli urti hanno la stessa intensità in tutte le direzioni), perciò il tensore ha solo le tre componenti diagonali, tutte uguali a $-p$:
   $ (sigma_(i j))_"eq" = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) = -p delta_(i j) $
   Applicato a un generico versore $arrow(n) = (n_x, n_y, n_z)^T$, fornisce lo sforzo statico:
   $ (sigma_n)_i = (sigma_(i j))_"eq" n_j = -p n_i quad <==> quad arrow(sigma)_n = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) mat(n_x; n_y; n_z) = mat(-p n_x; -p n_y; -p n_z) = -p arrow(n) $
2. Il *contributo dissipativo* (o viscoso) $(sigma_(i j))_"dis"$, che indicheremo anche con $tau_(i j)$, compare quando il campo di velocità $arrow(u)(arrow(x))$ non è uniforme. Descrive la quantità di moto trasmessa dallo scorrimento relativo tra strati di fluido (attrito interno) e dipende dai gradienti spaziali della velocità.

=== Equazione di Cauchy ed equazione di Eulero

Con il teorema di Gauss l'integrale delle forze di superficie diventa un integrale di volume:

$ integral_(cal(D)) rho (D arrow(u)) / (D t) dif cal(V) = integral_(cal(D)) rho arrow(g) dif cal(V) + integral_(cal(S)) bold(sigma) dot arrow(n) dif cal(S) = integral_(cal(D)) rho arrow(g) dif cal(V) + integral_(cal(D)) nabla dot bold(sigma) dif cal(V) $

e tutti i termini si raccolgono sotto un unico integrale sul volume materiale:

$ integral_(cal(D)(t)) lr([ rho (D u_i) / (D t) - rho g_i - (partial sigma_(i j)) / (partial x_j) ]) dif cal(V) = 0 $

Poiché il volume $cal(D)(t)$ è arbitrario per forma e dimensione (al limite $cal(V) arrow.r 0$ si considera una singola particella fluida), l'integrando deve annullarsi in ogni punto. Si ottiene l'equazione indefinita del moto di Cauchy:

$ rho (D u_i) / (D t) = rho g_i + (partial sigma_(i j)) / (partial x_j) $ <eq:cauchy_moto>

Se si trascurano gli effetti viscosi ($tau_(i j) = 0$), il tensore degli sforzi conserva la struttura isotropa del fluido in quiete, $sigma_(i j) = -p delta_(i j)$. La sua divergenza vale $(partial (-p delta_(i j))) \/ (partial x_j) = -(partial p) \/ (partial x_i)$, quindi:

$ rho (D u_i) / (D t) = rho g_i + (partial sigma_(i j)) / (partial x_j) = rho g_i - (partial) / (partial x_j) (p delta_(i j)) = rho g_i - (partial p) / (partial x_i) $

È l'*equazione di Eulero*:

$ rho (D u_i) / (D t) = rho g_i - (partial p) / (partial x_i) quad <==> quad rho (D arrow(u)) / (D t) = rho arrow(g) - nabla p $ <eq:eulero>

L'@eq:eulero descrive i *fluidi non viscosi*, detti anche *fluidi ideali*, nei quali si trascura l'attrito interno.

== Caso statico

=== Legge di Stevino

Vogliamo determinare le forze che un fluido in quiete ($arrow(u) = arrow(0)$) esercita su un corpo immerso. In assenza di moto gli sforzi viscosi sono nulli anche per un fluido reale, e il tensore degli sforzi si riduce alla sola pressione: $bold(sigma) = -p bold(I)$.

Prendiamo l'asse $x_3$ verticale verso l'alto, con $x_3 = 0$ sulla superficie libera, dove agisce la pressione ambiente $p_0$. La gravità è diretta nel verso negativo di $x_3$:

$ arrow(g) = mat(0; 0; -g) $

Con $arrow(u) = arrow(0)$ l'equazione di Eulero si riduce a $-nabla p + rho arrow(g) = 0$. Le componenti orizzontali danno $(partial p) \/ (partial x_1) = (partial p) \/ (partial x_2) = 0$, quella verticale l'equazione fondamentale dell'idrostatica:

$ - (partial p) / (partial x_3) = rho g $

Per un fluido omogeneo e incomprimibile ($rho = rho_0 = "cost"$) si integra per separazione di variabili tra la superficie libera ($x_3 = 0$, $p = p_0$) e una quota generica $x_3$:

$ - integral_(p_0)^p dif p = integral_0^(x_3) rho_0 g dif x_3 quad arrow.r.double quad p_0 - p = rho_0 g x_3 $

da cui la *legge di Stevino*:

$ p(x_3) = p_0 - rho_0 g x_3 $ <eq:stevino_cap4>

#nota[
  *Segno di $x_3$.* Poiché l'asse $x_3$ è rivolto verso l'alto, tutti i punti all'interno del fluido hanno $x_3 < 0$. Il termine $-rho_0 g x_3$ è quindi positivo e la pressione cresce linearmente con la profondità $h = -x_3$.
]

*Esempio (acqua).* Con $rho_0 = 10^3 thin "kg"\/"m"^3$ e $g approx 10 thin "m"\/"s"^2$, un aumento di profondità $|Delta x_3| = 10 thin "m"$ comporta un aumento di pressione

$ rho_0 g |Delta x_3| approx 10^3 dot 10 dot 10 = 10^5 thin "Pa" = 1 thin "atm" $

In acqua la pressione cresce dunque di circa un'atmosfera ogni dieci metri di profondità.

=== Principio di Archimede

Consideriamo un corpo di volume $V$ delimitato dalla superficie chiusa $S$, con $arrow(n)$ normale uscente dal corpo (quindi rivolta verso il fluido). La forza elementare esercitata dal fluido su un elemento $dif S$ è

$ dif arrow(F)_A = arrow(sigma)_n dif S = bold(sigma) dot arrow(n) dif S = -p bold(I) dot arrow(n) dif S $

e in notazione indiciale

$ dif (F_A)_i = (sigma_n)_i dif S = sigma_(i j) n_j dif S = -p delta_(i j) n_j dif S $

Integrando su $S$ e passando al volume con il teorema di Gauss:

$ (F_A)_i = - integral_S p delta_(i j) n_j dif S = - integral_V partial / (partial x_j) (p delta_(i j)) dif V $

Nella somma su $j$ la delta di Kronecker lascia solo $j = i$, quindi $(partial (p delta_(i j))) \/ (partial x_j) = (partial p) \/ (partial x_i)$. Dall'equazione dell'idrostatica, $(partial p) \/ (partial x_i) = rho g_i$:

$ (F_A)_i = integral_V - (partial p) / (partial x_i) dif V = integral_V - rho g_i dif V $

Se il campo di gravità è uniforme, $g_i$ esce dall'integrale:

$ (F_A)_i = - g_i integral_V rho dif V = - g_i M_f $

dove $M_f$ è la *massa di fluido spostato*, cioè la massa di fluido che occuperebbe il volume $V$ del corpo:

$ M_f = integral_V rho dif V $

In forma vettoriale si ottiene il *principio di Archimede*:

$ arrow(F)_A = - M_f arrow(g) $ <eq:archimede_cap4>

La forza che un fluido in quiete esercita su un corpo immerso, di forma qualsiasi, è opposta a $arrow(g)$ (cioè diretta verso l'alto) e ha intensità pari al peso del fluido spostato.

== Energia cinetica e teorema di Bernoulli

Passiamo ora alle conseguenze energetiche del bilancio di quantità di moto. Considerando un fluido a densità costante ci limitiamo all'energia meccanica, senza ricorrere al primo principio della termodinamica, che includerebbe anche gli scambi di energia interna e di calore.

Il teorema di Bernoulli si basa su quattro ipotesi:
1. flusso *inviscido*, già assunto nell'@eq:eulero;
2. flusso *stazionario*, $partial \/ partial t = 0$;
3. flusso *incomprimibile*, $rho = "cost"$, che permette di portare $rho$ dentro gli operatori differenziali;
4. forze di volume *conservative*, cioè esistenza di un potenziale gravitazionale $psi$.

=== Energia cinetica

Il prodotto scalare della velocità $arrow(u) = (u_1, u_2, u_3)^T$ per se stessa dà il quadrato del modulo:

$ arrow(u) dot arrow(u) = u_i u_i = u_1^2 + u_2^2 + u_3^2 = u^2 $

La quantità $1/2 u^2$ è l'energia cinetica per unità di massa; moltiplicata per $rho$ dà l'*energia cinetica per unità di volume*:

$ E_c = 1/2 rho u^2 $

=== Bilancio dell'energia meccanica

Moltiplichiamo scalarmente per $arrow(u)$ l'equazione del moto (@eq:cauchy_moto), cioè moltiplichiamo per $u_i$ e sommiamo sull'indice ripetuto. Per un fluido ideale, $sigma_(i j) = -p delta_(i j)$:

$ underbrace(rho u_i (D u_i) / (D t), "termine inerziale") = u_i (partial sigma_(i j)) / (partial x_j) + rho u_i g_i = underbrace(-u_i (partial p) / (partial x_i) + rho u_i g_i, "pressione e gravità") $

==== Termine inerziale

Per una generica funzione $A(arrow(x), t)$ vale

$ (D) / (D t) lr(( A^2 / 2 )) = 1/2 dot 2 A (D A) / (D t) = A (D A) / (D t) $

Applicandola a ogni componente di velocità ($A = u_i$):

$ u_i (D u_i) / (D t) = (D) / (D t) lr(( u_i u_i / 2 )) = (D) / (D t) lr(( u^2 / 2 )) $

e, essendo $rho$ costante (ipotesi 3), possiamo portarla dentro la derivata materiale:

$ rho u_i (D u_i) / (D t) = rho (D) / (D t) lr(( u^2 / 2 )) = (D) / (D t) lr(( rho u^2 / 2 )) $

==== Termine di gravità

Il termine di pressione $-u_i (partial p) \/ (partial x_i)$ contiene già un gradiente; vogliamo scrivere nella stessa forma anche il termine gravitazionale $rho u_i g_i$. Il campo $arrow(g)$ è irrotazionale ($nabla times arrow(g) = 0$), quindi conservativo, e ammette un potenziale $psi$:

$ arrow(g) = -nabla psi quad <==> quad g_i = -(partial psi) / (partial x_i) $

Con l'asse $x_3$ verticale verso l'alto,

$ arrow(g) = mat(g_1; g_2; g_3) = mat(0; 0; -g) , quad arrow(x) = mat(x_1; x_2; x_3) $

e il potenziale vale

$ psi = -g_i x_i = -(g_1 x_1 + g_2 x_2 + g_3 x_3) = - lr(( 0 dot x_1 + 0 dot x_2 + (-g) dot x_3 )) = g x_3 $

Infatti $-(partial psi) \/ (partial x_3) = -(partial (g x_3)) \/ (partial x_3) = -g = g_3$. Sostituendo $g_i = -(partial psi) \/ (partial x_i)$ e portando di nuovo $rho$ dentro la derivata:

$ rho u_i g_i = rho u_i lr(( -(partial psi) / (partial x_i) )) = -u_i (partial (rho psi)) / (partial x_i) = -u_i (partial (rho g x_3)) / (partial x_i) $

==== Forma finale

Mettendo insieme i due risultati, il bilancio dell'energia meccanica diventa

$ (D) / (D t) lr(( rho u^2 / 2 )) = -u_i (partial p) / (partial x_i) - u_i (partial (rho psi)) / (partial x_i) $

Sviluppando la derivata materiale, $D \/ (D t) = partial \/ (partial t) + u_i thin partial \/ (partial x_i)$, si separa il contributo locale da quello convettivo:

$ underbrace((partial) / (partial t) lr(( rho u^2 / 2 )), "variazione locale") + underbrace(u_i (partial) / (partial x_i) lr(( rho u^2 / 2 )), "flusso convettivo") = underbrace(-u_i (partial p) / (partial x_i) - u_i (partial (rho psi)) / (partial x_i), "flussi di energia") $

Portando tutto a primo membro:

$ (partial) / (partial t) lr(( rho u^2 / 2 )) + u_i (partial) / (partial x_i) lr(( rho u^2 / 2 )) + u_i (partial p) / (partial x_i) + u_i (partial (rho psi)) / (partial x_i) = 0 $

Il primo termine è la variazione nel tempo dell'energia cinetica in un punto fisso dello spazio; il secondo è il suo trasporto convettivo; gli ultimi due sono i flussi di energia meccanica associati al lavoro delle forze di pressione e di gravità.

Per moto stazionario (ipotesi 2) il primo termine si annulla. Attenzione: la stazionarietà annulla solo la derivata locale $partial \/ partial t$, non l'intera derivata materiale, di cui resta il contributo convettivo $u_i thin partial \/ (partial x_i)$, cioè $arrow(u) dot nabla$. I termini rimasti si raccolgono in un'unica derivata direzionale:

$ u_i (partial) / (partial x_i) underbrace(lr([ rho u^2 / 2 + p + rho psi ]), cal(H)) = 0 $

=== Carico totale e carico idraulico

La quantità tra parentesi è il *trinomio di Bernoulli*, $cal(H) = p + rho psi + rho u^2 \/ 2$: rappresenta la densità di energia meccanica, detta anche *carico totale* per unità di volume.

$ cal(H) = rho u^2 / 2 + p + rho g x_3 $ <eq:def_carico_bernoulli>

Ogni addendo ha le dimensioni di una pressione ($"Pa" = "N"\/"m"^2 = "J"\/"m"^3$). Questa forma è tipica dell'aerodinamica, dove si misurano direttamente differenze di pressione. In idraulica (per esempio in quella fluviale) si preferisce dividere per il peso specifico $rho g$ e usare il *carico idraulico*, che ha le dimensioni di una lunghezza ($"m"$) e si misura come altezza di una colonna d'acqua:

$ H_"idr" = cal(H) / (rho g) = u^2 / (2 g) + p / (rho g) + x_3 $

=== Teorema di Bernoulli

In notazione vettoriale l'equazione per $cal(H)$ è un prodotto scalare nullo:

$ u_i (partial cal(H)) / (partial x_i) = arrow(u) dot nabla cal(H) = 0 quad <==> quad nabla cal(H) perp arrow(u) $

dato che il prodotto scalare di due vettori non nulli è zero solo se sono perpendicolari.

Una linea di corrente è, per definizione, tangente in ogni punto alla velocità locale. Detti $s$ l'ascissa curvilinea lungo la linea di corrente e $arrow(t) = arrow(u) \/ abs(arrow(u))$ il versore tangente, $nabla cal(H)$ è quindi perpendicolare alla linea di corrente in ogni suo punto. Proiettandolo su $arrow(t)$ si ottiene la derivata direzionale di $cal(H)$ lungo la linea di corrente, che è nulla:

$ (partial cal(H)) / (partial s) = nabla cal(H) dot arrow(t) = nabla cal(H) dot arrow(u) / abs(arrow(u)) = 0 $

Il carico totale resta quindi costante lungo ogni linea di corrente. È il *teorema di Bernoulli*:

$ cal(H) = 1/2 rho u^2 + p + rho g x_3 = "cost" quad "lungo una linea di corrente" $ <eq:teorema_bernoulli>

Ne esiste anche una forma più forte, valida per moti irrotazionali, in cui $cal(H)$ è costante in tutto il campo di moto e non solo lungo la singola linea di corrente.

Il teorema esprime la *conservazione dell'energia meccanica*. Nel modello di Eulero ($sigma_(i j) = -p delta_(i j)$) non c'è alcun termine viscoso che possa dissipare energia meccanica in calore: per questo un fluido descritto da questo modello si dice *ideale*, in contrapposizione a un fluido reale. Come ogni idealizzazione, porta a delle discrepanze rispetto al comportamento reale.

=== Applicazione: portanza su un profilo alare

Il teorema di Bernoulli spiega, in prima approssimazione, l'origine della *portanza* su un profilo alare investito da una corrente.

#figure(align(center)[#include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig01.typ"
])

==== Velocità e pressione attorno al profilo

La forma del profilo costringe le linee di corrente ad addensarsi sopra di esso (*dorso*) e a diradarsi sotto (*ventre*). Per la conservazione della massa tra linee di corrente adiacenti, dove le linee si avvicinano il fluido accelera ($u^+$, sul dorso) e dove si allontanano rallenta ($u^-$, sul ventre).

Il profilo è sottile, quindi la variazione di quota tra dorso e ventre è trascurabile ($rho g x_3 approx "cost"$) e lungo ogni linea di corrente l'@eq:teorema_bernoulli si riduce a

$ 1/2 rho u^2 + p = "cost" quad arrow.r.double quad p = "cost" - 1/2 rho u^2 $

Sul dorso la velocità aumenta e la pressione diminuisce (depressione, $p^-$); sul ventre la velocità diminuisce e la pressione aumenta (sovrappressione, $p^+$).

==== Forza risultante

La forza esercitata dal fluido sulla superficie chiusa $S$ del profilo è l'integrale del vettore sforzo $arrow(sigma)_n = bold(sigma) dot arrow(n)$, con $arrow(n)$ normale uscente dal profilo (cioè diretta dal corpo verso il fluido):

$ F_i = integral_S sigma_(i j) n_j dif S $

Per un fluido ideale $sigma_(i j) = -p delta_(i j)$ e, poiché $delta_(i j) n_j = n_i$,

$ F_i = integral_S (-p delta_(i j)) n_j dif S = - integral_S p n_i dif S quad <==> quad arrow(F) = - integral_S p arrow(n) dif S $

Il segno meno dice che la pressione spinge sempre contro la superficie, nella direzione di $-arrow(n)$, verso l'interno del corpo. Misurando la pressione rispetto a quella atmosferica indisturbata:
- sul *ventre* $arrow(n)$ punta verso il basso, quindi $-arrow(n)$ verso l'alto; la pressione relativa è positiva ($p^+ > 0$) e spinge il profilo verso l'alto;
- sul *dorso* $arrow(n)$ punta verso l'alto, quindi $-arrow(n)$ verso il basso; la pressione relativa è negativa ($p^- < 0$, aspirazione) e il prodotto con $-arrow(n)$ dà anche qui un contributo verso l'alto.

Sommando su tutta la superficie, la risultante delle pressioni è una forza verticale verso l'alto che sostiene il profilo: la *portanza*.

=== Applicazione: tubo di Pitot

#figure(include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig02.typ")

Il tubo di Pitot è un piccolo cilindro disposto lungo la direzione del flusso. Al suo interno corrono due canalini: uno assiale, aperto sulla punta (presa totale o di ristagno, punto $0$), e uno collegato a una presa laterale sulla parete del cilindro (presa statica). Nei canalini il fluido è fermo, ma trasmette praticamente all'istante le pressioni alle due facce di un trasduttore differenziale, che misura la differenza tra la pressione di ristagno $p_0$ e la pressione statica $p_1$.

Il funzionamento si basa su tre considerazioni.
- *Velocità relativa e allineamento.* In aeronautica il tubo misura la velocità dell'aereo rispetto all'aria circostante. Coincide con la velocità rispetto al suolo solo in assenza di vento, e può differirne molto in presenza di correnti in quota come le correnti a getto. Lo strumento va allineato al flusso; se la direzione della corrente non è nota si usano sonde direzionali (per esempio la _sonda a tre fori_), che si ruotano finché i due fori laterali simmetrici registrano la stessa pressione.
- *Flusso uniforme a monte.* Le dimensioni trasversali del tubo sono molto piccole rispetto alle scale su cui varia il campo di moto esterno, per cui alla scala dello strumento il flusso indisturbato a monte (sezione $1$) si può considerare uniforme, con $u_1$, $p_1$ e $cal(H)$ costanti. Inoltre il cilindro perturba poco il flusso tangente alla sua parete, quindi la presa laterale rileva proprio la pressione statica indisturbata $p_1$.
- *Punto di ristagno.* Le linee di corrente che investono un corpo (o, al limite, un getto che colpisce perpendicolarmente una parete piana) si dividono, passando in parte da un lato e in parte dall'altro. Per simmetria c'è sempre una linea di corrente centrale che termina sul corpo in un *punto di ristagno* (o di arresto), qui il punto $0$. È un'astrazione matematica che individua la piccola regione frontale in cui la velocità si annulla ($u_0 = 0$); lì, per il teorema di Bernoulli, la pressione è massima.

Applichiamo l'@eq:teorema_bernoulli lungo la linea di corrente centrale, tra la sezione indisturbata $1$ e il punto di ristagno $0$, che si trovano alla stessa quota. Con $u_0 = 0$ la differenza di pressione misurata è la *pressione dinamica* $1\/2 rho u_1^2$:

$ p_1 + 1/2 rho u_1^2 = p_0 + 1/2 rho u_0^2 quad arrow.r.double quad 1/2 rho u_1^2 = p_0 - p_1 $

da cui la velocità del flusso indisturbato, ricavata dalla sola misura differenziale $Delta p = p_0 - p_1$:

$ u_1 = sqrt((2 (p_0 - p_1)) / rho) $

== Il modello di fluido ideale

=== Sistema di equazioni e condizioni al contorno

Per un fluido incomprimibile ($rho = "cost"$) l'equazione di Eulero (tre equazioni scalari) e l'equazione di continuità formano un *sistema chiuso* di quattro equazioni nelle quattro incognite $u_1, u_2, u_3, p$:

$ cases(
  nabla dot arrow(u) = 0,
  rho (D arrow(u)) / (D t) = rho arrow(g) - nabla p
) $

Per risolverlo in un dominio assegnato (per esempio un condotto convergente) servono condizioni iniziali e condizioni al contorno: le distribuzioni di velocità e pressione nella sezione di ingresso e le condizioni sulle pareti solide.

Proprio sulle pareti l'assenza di viscosità cambia le cose.
- In un *fluido reale* le molecole a contatto con una parete fissa la urtano cedendole quantità di moto. Nasce così uno sforzo tangenziale (attrito di parete) che annulla la velocità sulla parete: $arrow(u) = arrow(0)$.
- In un *fluido ideale* il tensore $sigma_(i j) = -p delta_(i j)$ trasmette solo sforzi normali alla parete. Il modello di Eulero non prevede attrito tangenziale e non può quindi impedire al fluido di scorrere lungo la parete.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    Per un fluido ideale l'unica condizione che si può imporre su una parete solida ferma è che il fluido non la attraversi. È la *condizione di impermeabilità*, che annulla solo la componente di velocità normale alla parete:
    $ arrow(u) dot arrow(n) = 0 quad "sulla parete" $
  ],
  [
    #figure(include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig03.typ")
  ]
)

=== Equazioni di Eulero per componenti

Scriviamo per esteso le tre componenti dell'@eq:eulero in un riferimento cartesiano $(x_1, x_2, x_3)$, ovvero $(x, y, z)$, con velocità $(u_1, u_2, u_3)$, ovvero $(u, v, w)$, e gravità verticale $arrow(g) = (0, 0, -g)^T$. Con la convenzione di Einstein sull'indice ripetuto $j$, la derivata materiale è

$ (D u_i) / (D t) = (partial u_i) / (partial t) + u_j (partial u_i) / (partial x_j) = (partial u_i) / (partial t) + u_1 (partial u_i) / (partial x_1) + u_2 (partial u_i) / (partial x_2) + u_3 (partial u_i) / (partial x_3) $

e il sistema diventa

$ cases(
  rho lr([ (partial u_1) / (partial t) + u_1 (partial u_1) / (partial x_1) + u_2 (partial u_1) / (partial x_2) + u_3 (partial u_1) / (partial x_3) ]) = rho g_1 - (partial p) / (partial x_1),
  rho lr([ (partial u_2) / (partial t) + u_1 (partial u_2) / (partial x_1) + u_2 (partial u_2) / (partial x_2) + u_3 (partial u_2) / (partial x_3) ]) = rho g_2 - (partial p) / (partial x_2),
  rho lr([ (partial u_3) / (partial t) + u_1 (partial u_3) / (partial x_1) + u_2 (partial u_3) / (partial x_2) + u_3 (partial u_3) / (partial x_3) ]) = rho g_3 - (partial p) / (partial x_3)
) $

con $g_1 = g_2 = 0$ e $g_3 = -g$. La forma estesa mette in evidenza l'accoppiamento non lineare del trasporto convettivo: in ogni equazione ciascuna componente della velocità interagisce con i gradienti di tutte le componenti.

== Efflusso da un serbatoio

=== Formula di Torricelli

Un serbatoio contiene acqua fino a un'altezza $h$ e ha un foro sul fondo o nella parte bassa della parete, da cui esce un getto. Seguiamo una linea di corrente che parte da un punto $A$ sul pelo libero (quota $z_A$) e arriva in un punto $B$ nel getto (quota $z_B$), appena a valle della vena contratta, dove le traiettorie tornano parallele. Il teorema di Bernoulli tra $A$ e $B$ dà

$ 1/2 rho u_A^2 + p_A + rho g z_A = 1/2 rho u_B^2 + p_B + rho g z_B $

- Se la sezione del serbatoio è molto più grande di quella del foro, sul pelo libero il fluido è praticamente fermo: $u_A approx 0$.
- Sia il pelo libero sia il getto sono a contatto con l'atmosfera. A rigore la pressione atmosferica varia con la quota,
  $ p_B - p_A = rho_"aria" g (z_A - z_B) $
  ma la densità dell'aria ($approx 1 thin "kg"\/"m"^3$) è circa un millesimo di quella dell'acqua ($approx 1000 thin "kg"\/"m"^3$). Il termine è quindi trascurabile rispetto a $rho g (z_A - z_B)$ e in prima approssimazione si pone $p_A approx p_B = p_"atm"$.

Semplificando le pressioni e dividendo per $rho$ si ottiene la velocità di efflusso, *formula di Torricelli*:

$ 1/2 u_B^2 = g (z_A - z_B) quad arrow.r.double quad u_B = sqrt(2 g (z_A - z_B)) = sqrt(2 g h) $

dove $h = z_A - z_B$ è il battente sopra il foro.

// [DA AUDIO]
#figure(
  align(center)[#include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig04.typ"]
)

// [DA AUDIO]
=== Tempo di svuotamento

Calcoliamo il tempo $tau$ necessario a svuotare un serbatoio di sezione costante $S$, inizialmente pieno fino a $h(0) = h_0$, attraverso un foro sul fondo di area $A << S$. Poiché il foro è piccolo, lo svuotamento è lento e in ogni istante vale la formula di Torricelli, $u(t) = sqrt(2 g h(t))$: la velocità di efflusso cala man mano che il livello $h(t)$ si abbassa.

Usiamo la conservazione della massa, che per $rho = "cost"$ equivale alla conservazione del volume.

1. La massa d'acqua nel serbatoio all'istante $t$ è
   $ G(t) = rho S h(t) $
2. La sua variazione nel tempo è uguale e opposta al flusso di massa uscente dal foro:
   $ (dif G) / (dif t) = -rho Q $
   Il segno meno indica che la massa nel serbatoio diminuisce; $Q$ è la portata volumetrica uscente dal foro di area $A$:
   $ Q = A u(t) = A sqrt(2 g h(t)) $
3. Sostituendo $G$ e $Q$:
   $ (dif) / (dif t) (rho S h) = -rho A sqrt(2 g h) $
   Con $rho$ e $S$ costanti, semplificando $rho$ si ottiene il bilancio di volume:
   $ S (dif h) / (dif t) = -A sqrt(2 g) h^(1/2) quad arrow.r.double quad (dif h) / (dif t) = - A / S sqrt(2 g) h^(1/2) $
4. Separiamo le variabili e integriamo tra l'istante iniziale ($t = 0$, $h = h_0$) e quello di svuotamento completo ($t = tau$, $h = 0$):
   $ integral_(h_0)^0 h^(-1/2) dif h = - A / S sqrt(2 g) integral_0^tau dif t $
   $ lr([ 2 h^(1/2) ])_(h_0)^0 = - A / S sqrt(2 g) tau quad arrow.r.double quad -2 h_0^(1/2) = - A / S sqrt(2 g) tau $

Il tempo di svuotamento è quindi

$ tau = (2 h_0^(1/2) S) / (A sqrt(2 g)) = S / A sqrt((2 h_0) / g) $

== Esercizio: disco di carta sospeso sotto una bobina

#figure(include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig05.typ")

Si soffia aria in un condotto verticale (la bobina), sotto il quale si trova un disco di carta di superficie $S$. La carta resta sospesa in equilibrio se il suo peso è bilanciato da una forza aerodinamica verticale diretta verso l'alto.

Per un fluido ideale il tensore degli sforzi è la sola pressione isotropa,

$ bold(sigma) = -p bold(I) quad <==> quad sigma_(i j) = -p delta_(i j) $

quindi la forza sulla carta dipende solo dalla distribuzione di pressione sulle sue due facce:

$ arrow(F) = integral_S bold(sigma) dot arrow(n) dif S = - integral_S p arrow(n) dif S $

=== Ipotesi

#set enum(numbering: "a)")
+ *Fluido incomprimibile, gravità trascurabile* ($rho = "cost"$, $arrow(g) = arrow(0)$). Il soffio ha una velocità di pochi metri al secondo, molto inferiore a quella del suono ($M << 1$), quindi la densità dell'aria è costante; si trascurano inoltre le variazioni di quota nell'aria.
+ *Moto stazionario e assialsimmetrico* ($partial \/ partial t = 0$; $u_r (r, z)$, $u_z (r, z)$). Il moto è stazionario perché, con un soffio continuo, la carta resta ferma. La coordinata radiale $r$ è misurata dall'asse del condotto, e il moto non dipende dall'angolo azimutale $theta$.
+ *Separazione di scale* ($r_1 >> h$, $r_2 - r_1 >> h$). Qui $r_1$ è il raggio del condotto verticale, $r_2$ il raggio esterno della bobina (e del disco) e $h$ lo spessore dell'intercapedine tra bobina e carta. Le dimensioni radiali superano $h$ di uno o più ordini di grandezza: vista da lontano la carta sembra quasi a contatto con la bobina, mentre l'aria defluisce radialmente nella sottile intercapedine.

=== Velocità nelle tre zone

Dividiamo il dominio in tre regioni:
- *zona A*: il condotto verticale di ingresso, di sezione $pi r_1^2$ e velocità media $U_A$;
- *zona B*: la regione di svolta, dove le linee di corrente si piegano in direzione radiale; la sezione cilindrica d'ingresso nel canale è $2 pi r_1 h$ e la velocità media $U_B$;
- *zona C*: il canale radiale sottile tra $r_1$ e $r_2$, di spessore costante $h$.

La portata volumetrica $q$ si conserva tra il condotto (A) e l'ingresso del canale radiale (B):

$ q = pi r_1^2 U_A = 2 pi r_1 h U_B quad arrow.r.double quad (U_A) / (U_B) = (2 h) / r_1 << 1 $

Poiché $r_1 \/ (2 h) >> 1$, nel canale radiale la velocità è da 10 a 100 volte maggiore che nel condotto verticale:

$ U_B = r_1 / (2 h) U_A >> U_A $

=== Distribuzione delle pressioni

==== Ordini di grandezza nella zona A

Stimiamo le variazioni di pressione nel condotto partendo dall'equazione di Eulero stazionaria con $arrow(g) = arrow(0)$. Approssimando le derivate con rapporti incrementali sulla scala $r_1$, il termine convettivo, e con esso le variazioni di pressione, sono dell'ordine di $rho U_A^2$:

$ nabla p = - rho arrow(u) dot nabla arrow(u) , quad rho arrow(u) dot nabla arrow(u) = O(rho (U_A^2) / r_1) quad arrow.r.double quad Delta p_A tilde.op rho U_A^2 $

Poiché $U_A tilde.op U_B h \/ r_1 << U_B$, queste variazioni sono trascurabili rispetto all'energia cinetica per unità di volume nel canale radiale: $Delta p_A << rho U_B^2$.

==== Bernoulli tra A e C

Applichiamo l'@eq:teorema_bernoulli lungo una linea di corrente che va dal condotto (A) a un raggio generico $r$ nel canale radiale (C), trascurando il termine gravitazionale:

$ p_C + 1/2 rho U_C^2 = p_A + 1/2 rho U_A^2 $

La separazione di scale semplifica l'equazione in due modi:
- il termine cinetico a monte è trascurabile, $1/2 rho U_A^2 << 1/2 rho U_B^2$;
- poiché $Delta p_A << rho U_B^2$, la pressione nella zona centrale si può considerare uniforme, $p_A = "cost"$.

Resta quindi

$ p_A = p_C + 1/2 rho U_C^2 $ <eq:bernoulli_AC>

=== Calcolo della forza

#figure(include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig06.typ")

Sulla faccia inferiore della carta agisce uniformemente la pressione atmosferica $p_0$, che dà una spinta verso l'alto $p_0 S$. Sulla faccia superiore si distinguono due regioni:
- $S_1$, il cerchio centrale di raggio $r_1$, colpito dal getto verticale, a pressione uniforme $p_A$;
- $S_2$, la corona circolare tra $r_1$ e $r_2$ (il canale radiale), a pressione variabile $p_C (r)$.

La forza verticale complessiva $F$, positiva verso l'alto, è la somma dei due contributi:

$ F = integral_(S_1) (p_0 - p_A) dif S_1 + integral_(S_2) [p_0 - p_C (r)] dif S_2 $ <eq:forza_bobina_int>

==== Pressione nel canale radiale

Le differenze di pressione si ricavano da Bernoulli (@eq:bernoulli_AC) e dalla continuità nel canale radiale, dove la portata $q$ attraversa la superficie cilindrica $2 pi r h$:

$ p_A = 1/2 rho U_C^2 (r) + p_C (r) , quad U_C (r) = q / (2 pi r h) $

Sostituendo la velocità:

$ p_C (r) = p_A - 1/2 rho U_C^2 (r) = p_A - 1/8 (rho q^2) / (pi^2 h^2 r^2) $

Al crescere di $r$ aumenta la sezione di passaggio $2 pi r h$; per conservare la portata la velocità cala come $1\/r$ e, per Bernoulli, la pressione cresce verso l'uscita. All'estremità del canale ($r = r_2$) l'aria sbocca in atmosfera, quindi $p_C (r_2) = p_0$:

$ p_C (r_2) = p_A - 1/8 (rho q^2) / (pi^2 h^2 r_2^2) = p_0 quad arrow.r.double quad p_0 - p_A = - (rho q^2) / (8 pi^2 h^2 r_2^2) $

Questa differenza è sempre negativa ($p_A > p_0$): nella regione centrale $S_1$ il getto crea una sovrappressione che spinge la carta verso il basso.

Nel canale radiale, usando l'espressione di $p_C (r)$:

$ p_0 - p_C (r) = (p_0 - p_A) + 1/8 (rho q^2) / (pi^2 h^2 r^2) $

e sostituendo $p_0 - p_A$, con il fattore comune $(rho q^2) \/ (8 pi^2 h^2)$ raccolto:

$ p_0 - p_C (r) = - (rho q^2) / (8 pi^2 h^2 r_2^2) + (rho q^2) / (8 pi^2 h^2 r^2) = (rho q^2) / (8 pi^2 h^2) (1/r^2 - 1/r_2^2) $

Per $r_1 < r < r_2$ si ha $1\/r^2 > 1\/r_2^2$, quindi $p_C (r) < p_0$: l'alta velocità nel canale crea una depressione rispetto all'atmosfera (effetto di aspirazione, _suction_) che tira la carta verso l'alto nella corona $S_2$.

==== Integrazione

I due integrali dell'@eq:forza_bobina_int si calcolano così:
- su $S_1$ la pressione $p_A$ è uniforme, e l'integrale è il prodotto per l'area del cerchio:
  $ integral_(S_1) (p_0 - p_A) dif S_1 = (p_0 - p_A) pi r_1^2 $
- su $S_2$ la pressione dipende solo da $r$, e si integra su anelli di area $dif S_2 = 2 pi r dif r$:
  $ integral_(S_2) (p_0 - p_C (r)) dif S_2 = integral_(r_1)^(r_2) (p_0 - p_C (r)) 2 pi r dif r $

La forza è dunque la somma della spinta sul cerchio centrale (negativa) e dell'aspirazione sulla corona:

$ F = underbrace((p_0 - p_A) pi r_1^2, "spinta su " S_1) + underbrace(integral_(r_1)^(r_2) [p_0 - p_C (r)] 2 pi r dif r, "aspirazione su " S_2) $

Sostituendo le differenze di pressione e portando fuori i fattori costanti:

$ F = - (rho q^2) / (8 pi^2 h^2 r_2^2) pi r_1^2 + 2 pi (rho q^2) / (8 pi^2 h^2) integral_(r_1)^(r_2) (1/r^2 - 1/r_2^2) r dif r $

Raccogliamo $(rho q^2) \/ (4 pi h^2)$ e distribuiamo $r$ nell'integrale:

$
  F &= (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + integral_(r_1)^(r_2) (1/r^2 - 1/r_2^2) r dif r } \
    &= (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + integral_(r_1)^(r_2) 1/r dif r - integral_(r_1)^(r_2) r / r_2^2 dif r }
$

Il primo integrale dà un logaritmo, il secondo una primitiva quadratica:

$ F = (rho q^2) / (4 pi h^2) { - 1/2 (r_1/r_2)^2 + ln (r_2/r_1) - [ r^2 / (2 r_2^2) ]_(r_1)^(r_2) } $

Valutando la primitiva compare un termine $1/2 (r_1 \/ r_2)^2$ che elide quello già presente:

$ F = (rho q^2) / (4 pi h^2) { cancel(- 1/2 (r_1/r_2)^2) + ln (r_2/r_1) - 1/2 + cancel(1/2 (r_1/r_2)^2) } $

Restano il contributo logaritmico dell'aspirazione e un termine costante. Introducendo il *fattore di forma* $Lambda = r_2 \/ r_1$:

$ F = (rho q^2) / (4 pi h^2) { ln Lambda - 1/2 } , quad Lambda = r_2 / r_1 $

=== Condizione di sollevamento e stabilità

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.3em,
  align: (left + horizon, center + horizon),
  [
    La forza è diretta verso l'alto ($F > 0$) se $ln Lambda - 1/2 > 0$:
    $ ln Lambda > 1/2 quad arrow.r.double quad Lambda = r_2 / r_1 > e^(1/2) approx 1.65 $
    La corona in depressione deve cioè avere raggio esterno $r_2 > sqrt(e) thin r_1 approx 1.65 thin r_1$ per vincere la spinta verso il basso del getto sul cerchio centrale.
  ],
  [
    #figure(include "../figs/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli-fig07.typ")
  ]
)

L'equilibrio è però *instabile*, perché $F prop 1\/h^2$ mentre il peso $P = m g$ non dipende da $h$:
- se una perturbazione allontana la carta ($h > h_"eq"$), la forza diminuisce ($F < P$) e la carta cade;
- se la avvicina alla bobina ($h < h_"eq"$), la forza aumenta ($F > P$) e la carta viene risucchiata fino a chiudere il canale.

#nota[
  *Limite del modello.* Per $h arrow.r 0$ la formula prevede una forza infinita, un risultato non fisico. Dipende dall'aver trascurato la viscosità, i cui effetti diventano dominanti quando l'intercapedine è molto sottile.
]