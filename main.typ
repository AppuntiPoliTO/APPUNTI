#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)
// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)


#set heading(numbering: "1.")
#outline()

= L1 ANL2
<l1-anl2>
22/09/2025 
== Calcolo differenziale per funzioni in più variabili

Sia:
$ f : bb(R)^n arrow.r bb(R)\,#h(2em) y = f\(x_1\,x_2\,dots.h\,x_n\) $
Per noi, nella maggior parte dei casi n assumerà il valore di 2 o 3. Per
velocizzare la scrittura, potremmo spesso trovare scritto:
$ f\(p\)quad upright("con") quad p =\(x_i\,y_i\,z_i\)in bb(R) $ ove p
rappresenta le coordinate x y e x del punto indicato.

=== Dominio di una funzione in più variabili
<dominio-di-una-funzione-in-più-variabili>
Esso non è null'altro che l'insieme dei possibili valori assumibili
dalle n variabili che rendono ben definita la f.~Da ciò si evince che
esso sarà un sottoinsieme di quello di partenza.
$ f : bb(R)^2 arrow.r bb(R)\,#h(2em) upright(d o m) thin f subset.eq bb(R)^2 $
Di seguito alcuni esempi di calcolo del dominio di una funzione in più
variabili:
$ f\(x\,y\)= x^2 + y^2 #h(2em) upright(d o m) thin f = bb(R)^2 $
$ f\(x\,y\)= e^(thin x - y) cos\(x + y\)#h(2em) upright(d o m) thin f = bb(R)^2 $
$ f\(x\,y\)= frac(2 x + y, x^2 + y^2) #h(2em) upright(d o m) thin f = {\(x\,y\)in bb(R)^2 : x^2 + y^2 eq.not 0 } #h(2em) upright(d o m) thin f = bb(R)^2 eq.not { 0\,0 } $
$ f\(x\,y\)= frac(e^(thin x + y^2), x - 3) #h(2em) upright(d o m) thin f = {\(x\,y\)in bb(R)^2 : x eq.not 3 } $
$ f\(x\,y\)= ln #scale(x: 120%, y: 120%)[\(] y - x + 1 #scale(x: 120%, y: 120%)[\)] #h(2em) upright(d o m) thin f = {\(x\,y\)in bb(R)^2 : y - x + 1 > 0 } $
$ f\(x\,y\,z\)= frac(sqrt(x^2 + y^2 + z^2), x - 3) #h(2em) upright(d o m) thin f = {\(x\,y\,z\)in bb(R)^3 : x eq.not 3 } $

=== Rappresentazione grafica delle funzioni in più variabili
<rappresentazione-grafica-delle-funzioni-in-più-variabili>
$ f : bb(R)^2 arrow.r bb(R) #h(2em) upright("il grafico di ") f upright(" è in ") bb(R)^3 $
$ f : bb(R)^3 arrow.r bb(R) #h(2em) upright("il grafico di ") f upright(" è in ") bb(R)^4 $
Risulta quindi evidente che noi potremmo disegnare il grafico solamente
delle funzioni in 2 variabili, e a dire il vero, neanche sempre, in
quanto spesso saranno veramente molto complicati da rappresentare in
maniera veritiera.
$ bold("Def:") quad upright("presa ") f : D subset.eq bb(R)^2 arrow.r bb(R)\,quad upright("il grafico è il sottoinsieme di ") bb(R)^3 upright(" dato da") $
$ f = {\(x\,y\,z\)in bb(R)^3 :\(x\,y\)in D\,thick z = f\(x\,y\)} $

Una alternativa ampiamente adoperata al grafico classico in 3 dimensioni
sono gli insiemi di livello.
$ bold("Def:") quad f : bb(R)^n arrow.r bb(R)\,thick c in bb(R) . $
$ upright("L’insieme di livello ") c upright(" per ") f upright(" è il sottoinsieme del ") upright(d o m) thin f upright(" su cui ") f upright(" vale ") c : $
$ {\(x_1\,x_2\,dots.h\,x_m\)in bb(R)^n : f\(x_1\,x_2\,dots.h\,x_n\)= c } $
$ upright("Si dice ") f^(- 1)\(c\). $ Nota bene: Siccome sono
sottoinsiemi del dominio di f, essi possono essere adoperati per
disegnare sia funzioni in 2 che in 3 variabili. Qui di seguito riporto
un esempio di curva di livello per una funzione in due variabili.

== Concetto di Limite
<concetto-di-limite>
Il limite mi permette di dire come si comporta una funzione, quando
suo dominio mi avvicino ad un punto specifico. La distanza tra x ed y è
banalmente esprimibile come (x - y), questo se lavoriamo però in una
unica dimensione, nel piano e nello spazio, più generalmente possiamo
usare:

$ d\(P_1\,P_2\)= sqrt(\(x_1 - x_2\)^2 +\(y_1 - y_2\)^2) $ Mentre in
dimensione 3:
$ d\(P_1\,P_2\)= sqrt(\(x_1 - x_2\)^2 +\(y_1 - y_2\)^2 +\(z_1 - z_2\)^2) $
La notazione che useremo è: $\|p\|= parallel p parallel_2$ ovvero
useremo sia il modulo che la norma 2.

Definizione di intorno: Dato un punto $P_0$ e un numero
$R in bb(R)\,R > 0$, si dice intorno di $P_0$ di raggio $R$ l'insieme:
$ B_R\(P_0\)= { P in bb(R)^m :\|P - P_0\|< R } $ In $bb(R)^2$, posto
$P_0 =\(x_0\,y_0\)$, si ha
$ B_R\(P_0\)= {\(x\,y\)in bb(R)^2 : sqrt(\(x - x_0\)^2 +\(y - y_0\)^2) < R } . $
da cui otteniamo:
$\(x - x_0\)^2 +\(y - y_0\)^2 < R^2 thick thick thick arrow.r thick thick thick$
circonferenza Quindi l'intorno, graficamente non è null'altro che una
circonferenza.

Definizione di aperto Un insieme $A subset.eq bb(R)^n$ si dice aperto se
$forall P_0 in A$ esiste un intorno $B_r\(P_0\)$ totalmente contenuto in
$A$.

Definizione di punto interno $P_0$ si dice interno per l'insieme A se
esiste un intorno di $P_0$ totalmente contenuto in A

Definizione di chiuso Un insieme $A subset.eq bb(R)^n$ si dice chiuso se
il complementare è aperto, cioè $bb(R)^n\\A$ è aperto.

Definizione di frontiera Definizione di frontiera: un punto $P_0$ si
dice di frontiera per $A$ se qualunque intorno di $P_0$ contiene sia
punti di $A$ sia punti del complementare di $bb(R)^n\\A$.

L'unione di tutti i punti di frontiera di $A$ si dice frontiera (o
bordo) di $A$ e si indica con $partial A$.

In forma insiemistica:
$ partial A = overline(A) inter overline(bb(R)^n\\A) $

Definizione (limite per funzioni di $n$ variabili): sia
$f : upright(d o m) subset.eq bb(R)^m arrow.r bb(R)$, sia $P_0$ punto
interno al dominio.

Si dice: $ lim_(P arrow.r P_0) f\(P\)= l in bb(R) $ se:
$forall thin epsilon > 0 thick exists thin delta > 0 : thick 0 <\|P - P_0\|< delta thick thick arrow.r.double thick thick\|f\(P\)- l\|< epsilon$.

Nota ben: tutte le propietà dei limiti già viste in Analisi I, restano
valide anche qui.

Osservazione: nelle funzioni in più variabili, la condizione di
esistenza di un limite è molto più difficile rispetto a quella in una
variabile.

== Tecniche di studio dei limiti in più variabili
<tecniche-di-studio-dei-limiti-in-più-variabili>
Quando si studiano limiti in più variabili, #strong[non basta provare
qualche cammino]: bisogna adottare tecniche sistematiche per verificare
se il limite esiste davvero.

=== 1. Cammini semplici
<cammini-semplici>
Si inizia controllando lungo: - gli #strong[assi] ($x = 0$, $y = 0$); -
alcune #strong[rette] ($y = k x$); - alcune #strong[parabole] o curve
elementari.

Se già due cammini diversi danno risultati diversi, il limite
#strong[non esiste].

=== 2. Metodo delle polari
<metodo-delle-polari>
Molto usato quando il punto di accumulazione è l'origine $\(0\,0\)$.

Si pone:
$ x = r cos theta\,quad y = r sin theta\,quad r arrow.r 0^(+) . $

Così il limite diventa:
$ lim_(\(x\,y\)arrow.r\(0\,0\)) f\(x\,y\)= lim_(r arrow.r 0^(+)) f\(r cos theta\,r sin theta\). $

Se il risultato dipende da $theta$, il limite #strong[non esiste]. \ Se
è lo stesso per ogni $theta$, il limite esiste ed è quello.

Attenzione: questo metodo verifica solo cammini #strong[radiali] (rette
passanti per l'origine). Non basta se esistono cammini più “curvi” (come
$y = x^2$).

=== 3. Metodo $y = k x^m$
<metodo-y-kxm>
Una strategia molto efficace è imporre una relazione di tipo:
$ y = k x^m\, $ dove $k in bb(R)$ e $m > 0$.

- Se il limite dipende da $k$ o da $m$, il limite #strong[non esiste]. \
- Se è indipendente da $k$ e $m$, il limite #strong[esiste].

Questo metodo intercetta i casi in cui le potenze dominanti al
numeratore e al denominatore si bilanciano.

=== 4. Metodo delle stime (confronto)
<metodo-delle-stime-confronto>
Se riesci a trovare una maggiorazione del tipo:
$ \|f\(x\,y\)\|lt.eq g\(x\,y\)\,quad lim_(\(x\,y\)arrow.r\(0\,0\)) g\(x\,y\)= 0\, $
allora per il #strong[teorema dei due carabinieri] hai che
$lim f\(x\,y\)= 0$. \ È un approccio rigoroso che si usa quando la
funzione è “complicata”, ma si può stimare facilmente.

=== 5. Approccio $epsilon$--$delta$
<approccio-varepsilondelta>
È la definizione formale:
$ lim_(x arrow.r x_0) f\(x\)= L arrow.l.r.double forall epsilon > 0 thick exists delta > 0 : 0 < parallel x - x_0 parallel < delta thick arrow.r.double thick\|f\(x\)- L\|< epsilon . $

Questo approccio si usa nei #strong[compiti teorici]: è più faticoso, ma
garantisce rigore assoluto, viene anche spesso indicato con il nome di
tecnica del maggiorativo.

== Schema pratico
<schema-pratico>
+ #strong[Prova assi e rette] → se già vedi valori diversi, il limite
  non esiste. \
+ #strong[Polari] → se dipende da $theta$, non esiste. \
+ #strong[Cammini $y = k x^m$] → verifica eventuali dipendenze da
  $k\,m$. \
+ #strong[Se sospetti che il limite sia 0] → usa una stima di confronto.
  \
+ #strong[Se richiesto in teoria] → formalizza con $epsilon$--$delta$.

== Esempio:
<esempio>
$ lim_(\(x\,y\)arrow.r\(0\,0\)) frac(x^2 y, x^4 + y^2) . $

- Assi: limite $0$. \
- Rette $y = k x$: limite $0$. \
- Parabola $y = x^2$: limite $1\/2$.

Limite quindi #strong[non esiste].

= L2 ANL2
<l2-anl2>
24/09/2025
== Definizione di continuità: \ Presa
$f : D subset.eq bb(R)^n arrow.r bb(R)$ \ diciamo che $f$ è continua nel
punto $p_0$ se

$ lim_(p arrow.r p_0) f\(p\)= f\(p_0\) $ Diciamo quindi che $f$ è
continua in tutto il dominio se è continua in tutti i punti del dominio.

== Calcolo differenziale:
<calcolo-differenziale>
Intuitivamente con la derivata di una funzione cerco di quantificare la
variazione della funzione quando, nel dominio, mi muovo di poco intorno
ad un punto dato.

Per $f$ in una variabile:

$ f'\(x_0\)= lim_(x arrow.r x_0) frac(f\(x\)- f\(x_0\), x - x_0) $ Per
$f$ in $n$ variabili, devo precisare come mi muovo nel dominio, vicino
al punto $p_0$.

Partiamo con i percorsi più semplici in dimensione 2:

$f : D subset.eq bb(R)^2 arrow.r bb(R)$

$f\(x\,y\)$

- $\(x_0\,y_0\)$ punto di riferimento \
- $\(x\,y_0\)$ varia $x$ \
- $\(x_0\,y\)$ varia $y$

La funzione lungo $x$ diventa $f\(x\,y_0\)$ mentre lungo $y$ diventa
$f\(x_0\,y\)$.

== Definizione di derivata parziale:
<definizione-di-derivata-parziale>
Presa $f : D subset.eq bb(R)^2 arrow.r bb(R)$, e $p_0$ punto interno a
$D$, \ $f$ è parzialmente derivabile rispetto ad $x$ nel punto
$p_0 =\(x_0\,y_0\)$ se la $f$ di una variabile $g\(x\)= f\(x\,y_0\)$ è
derivabile in $x = x_0$, cioè se

$ lim_(h arrow.r 0) frac(f\(x_0 + h\,y_0\)- f\(x_0\,y_0\), h) $

esiste e finito.

In tal caso:

$ frac(partial f, partial x)\(x_0\,y_0\)= partial_x f\(x_0\,y_0\) $

Analogamente vale tutto anche per $y$:

$ frac(partial f, partial y)\(x_0\,y_0\) $

#strong[Nota bene:] non scrivere mai $f'\(x_0\,y_0\)$, si deve scrivere
$frac(partial f, partial x)\(x_0\,y_0\)$.

== Calcolo delle derivate parziali:
<calcolo-delle-derivate-parziali>
Quando calcolo la derivata parziale rispetto ad una variabile considero
tutte le altre come se fossero costanti.

#strong[Esempio:] \ $f\(x\,y\)= x^3 + y cos\(x + y\)$

$ frac(partial f, partial x) = 3 x^2 - y sin\(x + y\) $

$ frac(partial f, partial y) = cos\(x + y\)- y sin\(x + y\) $

Analogamente possiamo lavorare in 3 dimensioni:

$ frac(partial f, partial x)\(x_0\,y_0\,z_0\)= lim_(x arrow.r x_0) frac(f\(x\,y_0\,z_0\)- f\(x_0\,y_0\,z_0\), x - x_0) $

$ frac(partial f, partial y)\(x_0\,y_0\,z_0\)= lim_(y arrow.r y_0) frac(f\(x_0\,y\,z_0\)- f\(x_0\,y_0\,z_0\), y - y_0) $

$ frac(partial f, partial z)\(x_0\,y_0\,z_0\)= lim_(z arrow.r z_0) frac(f\(x_0\,y_0\,z\)- f\(x_0\,y_0\,z_0\), z - z_0) $
\ #strong[Esempio in $bb(R)^3$:]

Sia $f\(x\,y\,z\)= x^2 y + y z^3$.

- Derivata rispetto ad $x$: \
  $ frac(partial f, partial x)\(x\,y\,z\)= 2 x y $

- Derivata rispetto ad $y$: \
  $ frac(partial f, partial y)\(x\,y\,z\)= x^2 + z^3 $

- Derivata rispetto ad $z$: \
  $ frac(partial f, partial z)\(x\,y\,z\)= 3 y z^2 $

Per $f$ in una variabile l'esistenza della derivata in un punto in
$bb(R)$ implica la continuità nel medesimo punto. \ In più variabili ciò
non è detto.

#strong[Esempio:]

$ f\(x\,y\)= cases(delim: "{", frac(x y, x^2 + y^2) & upright("per ")\(x\,y\)eq.not\(0\,0\), 0 & upright("per ")\(x\,y\)=\(0\,0\)) $
\ Già sappiamo che \
$ lim_(\(x\,y\)arrow.r\(0\,0\)) frac(x y, x^2 + y^2) eq.not 0 $ \ quindi
$f$ #strong[non è continua] in $\(0\,0\)$.

$ lim_(x arrow.r 0) frac(f\(x\,0\)- f\(0\,0\), x - 0) = frac(f\(x\,0\), x) = 0 / 0 = lim_(y arrow.r 0) f\(x_0\,y\,0\) $
\ Questo vuol dire che esistono le derivate in 0, ma $f$ non è continua.

== Vettore direzionale e derivata direzionale
<vettore-direzionale-e-derivata-direzionale>
=== Vettore direzionale
<vettore-direzionale>
Dato un punto $p_0 =\(x_0\,y_0\)in bb(R)^2$ e un versore
$v =\(v_1\,v_2\)$ con $parallel v parallel = 1$, il vettore $v$ indica
la #strong[direzione] lungo cui vogliamo osservare come varia la
funzione $f : bb(R)^2 arrow.r bb(R)$.

Il vettore direzionale non è altro che un vettore di lunghezza unitaria
che rappresenta la direzione scelta.

=== Derivata direzionale
<derivata-direzionale>
La #strong[derivata direzionale] di $f$ in $p_0$ lungo la direzione $v$
è definita come:

$ D_v f\(p_0\)= lim_(h arrow.r 0) frac(f\(p_0 + h v\)- f\(p_0\), h) $

Se $f$ è differenziabile in $p_0$, allora la derivata direzionale può
essere calcolata come prodotto scalare tra il #strong[gradiente] e il
vettore direzionale:

$ D_v f\(p_0\)= nabla f\(p_0\)dot.op v $

dove $nabla f\(p_0\)=\(partial_x f\(p_0\)\,partial_y f\(p_0\)\)$.

=== Esempio
<esempio-1>
Sia $f\(x\,y\)= x^2 + y^2$ e prendiamo $p_0 =\(1\,2\)$. \ Consideriamo
la direzione $v =\(3\,4\)$ che va normalizzata:

$ v = frac(\(3\,4\), sqrt(3^2 + 4^2)) = (3 / 5 \, 4 / 5) $

Il gradiente è:

$ nabla f\(x\,y\)=\(2 x\,2 y\) $

Quindi in $p_0 =\(1\,2\)$:

$ nabla f\(1\,2\)=\(2\,4\) $

La derivata direzionale è:

$ D_v f\(1\,2\)=\(2\,4\)dot.op (3 / 5 \, 4 / 5) = 6 / 5 + 16 / 5 = 22 / 5 $

La derivata direzionale misura la velocità di variazione della funzione
nella direzione $v$, mentre il vettore direzionale specifica la
direzione stessa.

== Differenziabilità di una funzione
<differenziabilità-di-una-funzione>
Diremo che una funzione $f$ si dice #strong[differenziabile] in un punto
$x_0$, interno al suo dominio, se esiste $nabla f\(x_0\)$ e se vale la
formula:
$ f\(x\)= f\(x_0\)+ nabla f\(x_0\)dot.op\(x - x_0\)+ o\(parallel x - x_0 parallel\)\,quad x arrow.r x_0 $

Nel caso di funzioni di due variabili, la condizione di
differenziabilità in un punto~ $x_0\,y_0$ equivale all'esistenza di un
#strong[piano tangente] al grafico della funzione in quel punto.

La relazione generale è: \$\$

z = f(x\_0,y\_0) + f(x\_0,y\_0) \((x,y) - (x\_0,y\_0))

\$\$

che, scritta in forma esplicita, diventa: 

$$ z = f(x_0,y_0) + \(x_0,y_0),(x - x_0) + (x_0,y_0),(y - y_0) $$

Questo piano rappresenta la migliore approssimazione lineare del grafico
di $f$ in un intorno del punto $x_0\,y_0$

Tralasciando i termini di ordine superiore, si scrive anche:

\$\$

f(x) f(x\_0) + f(x\_0) \(x - x\_0)

\$\$

= L3 ANL2
<l3-anl2>
29/07/2025 
== Dimostrazione continuità con Taylor Mentre per
$f : bb(R) arrow.r bb(R)$ ciò è vero, ciò si dimostra con lo sviluppo di
Taylor di primo ordine.

$ f\(x\)= f\(x_0\)+ f'\(x_0\)\(x - x_0\)+ O\(x - x_0\) $

dove $O\(x - x_0\)arrow.r 0$ per $x arrow.r x_0$. \ Per vedere se è
continua:

$ lim_(x arrow.r x_0) f\(x\)= f\(x_0\)+ cancel(f'\(x_0\)\(x - x_0\)) arrow.r f\(x_0\) $

Ciò implica che $f$ sia continua in $x_0$.

Per $f$ in più variabili introduco la seguente definizione:

== Differenziabilità
<differenziabilità>
Presa $f : D subset.eq bb(R)^2 arrow.r bb(R)$, $P_0\(x_0\,y_0\)in D$,
diremo che $f$ è differenziabile in $P_0$ se vale

$ f\(x\,y\)= f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\)\(y - y_0\)+ o #h(-0.167em) (sqrt(\(x - x_0\)^2 +\(y - y_0\)^2)) $

per $\(x\,y\)arrow.r\(x_0\,y_0\)$.

Qui l'$o$ piccolo è la distanza in $bb(R)^2$.

Analogamente possiamo introdurre l'incremento $h\,k$:

$ f\(x_0 + h\,y_0 + k\)= f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)h + frac(partial f, partial y)\(x_0\,y_0\)k + o #h(-0.167em) (sqrt(h^2 + k^2)) $
#strong[Proposizione:] \ Se $f$ è differenziabile in un punto $P_0$,
allora $f$ è anche continua in $P_0$.

#strong[Dimostrazione:] \ Per la differenziabilità so che

$ f\(x\,y\)= f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\)\(y - y_0\)+ o #h(-0.167em) (sqrt(\(x - x_0\)^2 +\(y - y_0\)^2)) $

Se passo al limite per $\(x\,y\)arrow.r\(x_0\,y_0\)$

$ lim_(\(x\,y\)arrow.r\(x_0\,y_0\)) f\(x\,y\)= f\(x_0\,y_0\)+ o\(1\) $

che coincide con $f\(x_0\,y_0\)$. \ Dunque $f$ è continua in $P_0$.

L'idea è che la differenziabilità fornisce una #emph[buona
approssimazione lineare] della funzione attorno a $P_0$. \ Infatti, la
funzione può essere scritta come il valore nel punto $P_0$ più una parte
lineare (legata alle derivate parziali) più un errore infinitesimo
$o\(dot.op\)$ che tende a zero più velocemente della distanza da $P_0$.

Quando $\(x\,y\)$ si avvicina a $\(x_0\,y_0\)$, sia i termini lineari
che l'errore tendono a zero, e quindi il valore della funzione tende a
$f\(x_0\,y_0\)$. Questo è esattamente il significato della continuità.

== Criterio di differenziabilità
<criterio-di-differenziabilità>
Se le $frac(partial f, partial x)$ e $frac(partial f, partial y)$
esistono e sono continue nel dominio, allora la $f$ è differenziabile
nel suo dominio.

#strong[Esempio:]
$ f\(x\,y\)= e^x sin\(x y\)\,quad upright("dom ") f\(x\,y\)= bb(R)^2 $

Calcoliamo le derivate parziali:

$ frac(partial f, partial x) = e^x sin\(x y\)+ y e^x cos\(x y\)\,quad upright("dom ") frac(partial f, partial x) = bb(R)^2 $
$ frac(partial f, partial y) = x e^x cos\(x y\)\,quad upright("dom ") frac(partial f, partial y) = bb(R)^2 $
Poiché entrambe le derivate parziali sono continue, $f\(x\,y\)$ è
differenziabile nel suo dominio.

== Definizione di gradiente
<definizione-di-gradiente>
Sia $f : bb(R)^2 arrow.r bb(R)$ differenziabile in $P_0$, il vettore di
$bb(R)^2$ dato da

$ nabla f\(x_0\,y_0\)= (frac(partial f, partial x) \( x_0 \, y_0 \) \, thick frac(partial f, partial y) \( x_0 \, y_0 \)) $

si dice #strong[gradiente] di $f$ nel punto $P_0$.

#strong[Osservazione:] \ Usando il gradiente posso scrivere la
definizione di differenziabilità in forma compatta.

Sia $P =\(x\,y\)$, $P_0 =\(x_0\,y_0\)$. Allora
$ P - P_0 =\(x - x_0\,thick y - y_0\) $ e
$ frac(partial f, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\)\(y - y_0\) $

si può scrivere come

$ nabla f\(P_0\)dot.op\(P - P_0\) $ dove $dot.op$ indica il prodotto
scalare.

La differenziabilità di $f$ in $P_0$ si scrive:

$ f\(P\)= f\(P_0\)+ nabla f\(P_0\)dot.op\(P - P_0\)+ o\(\|P - P_0\|\)quad upright("per ") P arrow.r P_0 $

== Definizione di piano tangente
<definizione-di-piano-tangente>
Sia $f : bb(R)^2 arrow.r bb(R)$ differenziabile in $P_0 =\(x_0\,y_0\)$,
allora si dice #strong[piano tangente] al grafico di $f$ nel punto
$\(P_0\,f\(P_0\)\)$ il piano di equazione
$ z = f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\)\(y - y_0\) $

#strong[Osservazione:] \ Sapere che $f$ è differenziabile assicura che
il piano tangente sia una buona approssimazione della $f$ in $P_0$, in
quanto l'errore è $o\(\|P - P_0\|\)$.

Usando il piano tangente trovo subito un #strong[vettore normale] al
grafico di $f$ differenziabile nel punto $\(P_0\,f\(P_0\)\)$:

$ arrow(N) = (frac(partial f, partial x) \( x_0 \, y_0 \) \, thick frac(partial f, partial y) \( x_0 \, y_0 \) \, thick - 1) quad upright("(verso il basso)") $

#strong[Osservazione:] \ Questo vettore punta verso il basso perché la
terza componente è negativa. \ Un vettore normale che punta verso l'alto
sarà:

$ arrow(N) = (- frac(partial f, partial x) \( x_0 \, y_0 \) \, thick - frac(partial f, partial y) \( x_0 \, y_0 \) \, thick 1) quad upright("(verso l’alto)") $
Per $f$ in 3 variabili:

$f$ è differenziabile in $P_0\(x_0\,y_0\,z_0\)$ se:

$ f\(x\,y\,z\)= f\(x_0\,y_0\,z_0\)+ frac(partial f, partial x)\(x_0\,y_0\,z_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\,z_0\)\(y - y_0\)+ frac(partial f, partial z)\(x_0\,y_0\,z_0\)\(z - z_0\)+ o #h(-0.167em) (sqrt(\(x - x_0\)^2 +\(y - y_0\)^2 +\(z - z_0\)^2)) $

per $\(x\,y\,z\)arrow.r\(x_0\,y_0\,z_0\)$.

O analogamente:
$ f\(P\)= f\(P_0\)+ nabla f\(P_0\)dot.op\(P - P_0\)+ o\(\|P - P_0\|\) $

con
$ nabla f\(P_0\)= (frac(partial f, partial x) \( P_0 \) \, thick frac(partial f, partial y) \( P_0 \) \, thick frac(partial f, partial z) \( P_0 \)) . $

== Gradiente e derivate direzionali
<gradiente-e-derivate-direzionali>
Ricordando che, preso $arrow(v) =\(alpha\,beta\)in bb(R)^2$, la derivata
direzionale di $f$ lungo $arrow(v)$ nel punto $P_0 =\(x_0\,y_0\)$ è:

$ frac(partial f, partial arrow(v))\(P_0\)= lim_(h arrow.r 0) frac(f\(P_0 + h arrow(v)\)- f\(P_0\), h) $
cioè
$ lim_(h arrow.r 0) frac(f\(x_0 + h alpha\,thick y_0 + h beta\)- f\(x_0\,y_0\), h) $
Se $f$ è differenziabile in $P_0$, per la definizione abbiamo:

$ f\(x_0 + h alpha\,y_0 + h beta\)= f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)h alpha + frac(partial f, partial y)\(x_0\,y_0\)h beta + o #h(-0.167em) (\( h alpha \)^2 + \( h beta \)^2) $

Per $h arrow.r 0$,
$o #h(-0.167em) (h^2 \( alpha^2 + beta^2 \)) = o\(h^2\)= o\(\|h\|\)$.
(In quanto $alpha\,beta$ sono le due componenti di un versore e hanno
modulo unitario.)

Tornando alla definizione di derivata direzionale:
$ frac(partial f, partial arrow(u))\(P_0\)= lim_(h arrow.r 0) frac(f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)h alpha + frac(partial f, partial y)\(x_0\,y_0\)h beta + o\(\|h\|\)- f\(x_0\,y_0\), h) $
$ = lim_(h arrow.r 0) frac(h (frac(partial f, partial x) \( x_0 \, y_0 \) alpha + frac(partial f, partial y) \( x_0 \, y_0 \) beta) + o\(\|h\|\), h) $
$ = frac(partial f, partial x)\(x_0\,y_0\)alpha + frac(partial f, partial y)\(x_0\,y_0\)beta = nabla f\(P_0\)dot.op arrow(u) $

#strong[Quindi:]

$ frac(partial f, partial arrow(u))\(P_0\)= nabla f\(P_0\)dot.op arrow(u) $

#strong[Quesito:] per quale versore $arrow(u)$ la derivata direzionale
$frac(partial f, partial arrow(u))$ è massima/minima?

Se $f$ è differenziabile:

$ frac(partial f, partial arrow(u))\(P_0\)= nabla f\(P_0\)dot.op arrow(u) =\|nabla f\(P_0\)\|thin\|arrow(u)\|cos alpha =\|nabla f\(P_0\)\|cos alpha $

La derivata direzionale $frac(partial f, partial arrow(u))$ sarà
#strong[massima] se
$cos alpha = 1 thick thick arrow.r.double thick thick alpha = 0^compose$,
\ ossia quando $nabla f$ e $arrow(u)$ sono #strong[paralleli].

Quindi $nabla f$ nel punto $P_0$ indica la direzione di #strong[massima
crescita] per $f$ vicino a $P_0$.

La derivata direzionale $frac(partial f, partial arrow(u))$ sarà
#strong[minima] se
$cos alpha = - 1 thick thick arrow.r.double thick thick alpha = 180^compose$,
\ ossia quando $nabla f$ e $arrow(u)$ sono #strong[antiparalleli].

Quindi la direzione opposta al gradiente $nabla f\(P_0\)$ indica la
direzione di #strong[minima crescita] per $f$ vicino a $P_0$.

== Funzione radiale
<funzione-radiale>
#strong[Definizione:] \ Una $f : bb(R)^2 arrow.r bb(R)$ si dice
#strong[radiale] se il valore assunto da $f$ in un punto $P$ dipende
solo dalla distanza del punto $P$ dall'origine $\(0\,0\)$.

Se $f$ è radiale allora: \ se $\(x_1\,y_1\)$ e $\(x_2\,y_2\)$ hanno la
stessa distanza dall'origine, allora

$ f\(x_1\,y_1\)= f\(x_2\,y_2\) $

Cioè $f$ è costante su ogni circonferenza centrata nell'origine.

In formule, $f$ radiale
$arrow.l.r.double exists thick g :\[0\,+ oo\)arrow.r bb(R)$ tale che:

$ f\(x\,y\)= g #h(-0.167em) (sqrt(x^2 + y^2)) $

#strong[Esempi:] 1. \
$ f\(x\,y\)= x^2 + y^2 quad upright("è radiale con ") g\(t\)= t^2 $ 2. \
$ f\(x\,y\)= frac(1, x^2 + y^2 + 1) quad upright("è radiale con ") g\(t\)= frac(1, t^2 + 1) $
\3. \
$ f\(x\,y\)= x sqrt(x^2 + y^2) quad upright("non è radiale, in quanto ") g\(t\)= x dot.op t $

#strong[Proprietà:] \ - Il grafico di una $f$ radiale è sempre una
superficie di rivoluzione attorno all'asse $z$.

- Se $f$ è radiale, allora

$ f\(x\,y\)= g #h(-0.167em) (sqrt(x^2 + y^2)) $ Calcoliamo le derivate
parziali:

$ frac(partial f, partial x)\(x\,y\)= g' #h(-0.167em) (sqrt(x^2 + y^2)) dot.op frac(partial, partial x) #h(-0.167em) (sqrt(x^2 + y^2)) = g' #h(-0.167em) (sqrt(x^2 + y^2)) dot.op x / sqrt(x^2 + y^2) $

$ frac(partial f, partial y)\(x\,y\)= g' #h(-0.167em) (sqrt(x^2 + y^2)) dot.op frac(partial, partial y) #h(-0.167em) (sqrt(x^2 + y^2)) = g' #h(-0.167em) (sqrt(x^2 + y^2)) dot.op y / sqrt(x^2 + y^2) $

Quindi il gradiente è
$ nabla f\(x\,y\)= g' #h(-0.167em) (sqrt(x^2 + y^2)) dot.op (x / sqrt(x^2 + y^2) \, thick y / sqrt(x^2 + y^2)) $
oppure, in forma compatta:
$ nabla f\(P\)= g'\(\|P\|\)thin frac(P, \|P\|) $ dove $frac(P, \|P\|)$ è
il #strong[versore] parallelo a $P$.

= L4 ANL2
<l4-anl2>
01/08/2025
== Derivate parziali di ordine superiore alla prima Sia
$f\(x\,y\)$: siccome $frac(partial f, partial x)$ e
$frac(partial f, partial y)$ sono a loro volta funzioni in due
variabili, posso provare a derivarle ulteriormente.
$ frac(partial, partial x) (frac(partial f, partial x) \( x \, y \)) = frac(partial^2 f, partial x^2)\(x\,y\) $

$ frac(partial, partial y) (frac(partial f, partial x) \( x \, y \)) = frac(partial^2 f, partial y partial x)\(x\,y\) $

$ frac(partial, partial x) (frac(partial f, partial y) \( x \, y \)) = frac(partial^2 f, partial x partial y)\(x\,y\) $

$ frac(partial, partial y) (frac(partial f, partial y) \( x \, y \)) = frac(partial^2 f, partial y^2)\(x\,y\) $
Come possiamo notare sono presenti, due derivate parziali dette pure,
ovvero quelle con solo componente $x$ e $y$ a denominatore; e miste,
ovvero quelle ove a denominatore compare sia la $x$ che la $y$

Per $f$ in 2 variabili ci sono 2 derivate prime, \ 4 derivate parziali
seconde, 8 derivate parziali terze.

In generale, vale $2^m$ variabili con $m =$ ordine di derivazione.

Per $f\(x\,y\,z\)$ in 3 variabili ho: - 3 derivate di primo ordine \ - 9
derivate di secondo ordine \ - 27 derivate di terzo ordine \
$ 3^m thick thick arrow.r thick thick n^m quad upright("con ") n = upright("numero di coordinate") $
\#\# Notazione
$ frac(partial^4 g, partial z thin partial y^2 thin partial x)\(x\,y\,z\)= frac(partial, partial z) (frac(partial, partial y) (frac(partial, partial y) (frac(partial g, partial x))))\(x\,y\,z\) $
$ frac(partial^4 g, partial y thin partial z thin partial y thin partial x)\(x\,y\,z\)= frac(partial, partial y) (frac(partial, partial z) (frac(partial, partial y) (frac(partial g, partial x))))\(x\,y\,z\) $

Già per $f\(x\,y\)$ potrei chiedermi se le due derivate miste seconde
coincidono. \ In generale #strong[no], in quanto l'ordine è fissato. \ A
dire il vero però, per molte classi di $f$ esse coincidono, portando il
calcolo complessivo delle derivate, da un generale di $n^2$ a
$frac(n\(n + 1\), 2)$

= Teorema di Schwarz
<teorema-di-schwarz>
Se le derivate miste
$ frac(partial^2 g, partial y thin partial x)\,quad frac(partial^2 g, partial x thin partial y) $
esistono e sono continue in $upright(D o m)\(g\)$, allora coincidono in
tale dominio.

== Esempio
<esempio-2>
Sia
$ f\(x\,y\)= e^(x^2) sin\(x y\)\,#h(2em) upright(D o m)\(f\)= bb(R)^2 $
Calcoliamo le derivate miste:

+ Prima rispetto a $x$:
  $ frac(partial f, partial x) = 2 x e^(x^2) sin\(x y\)+ e^(x^2) dot.op y cos\(x y\) $
  Poi:
  $ frac(partial^2 f, partial y thin partial x) = frac(partial, partial y) #h(-0.167em) (frac(partial f, partial x)) = 2 x e^(x^2) dot.op x cos\(x y\)+ e^(x^2) cos\(x y\)- e^(x^2) y sin\(x y\) $
+ Prima rispetto a $y$:
  $ frac(partial f, partial y) = e^(x^2) dot.op x cos\(x y\) $ Poi:
  $ frac(partial^2 f, partial x thin partial y) = frac(partial, partial x) #h(-0.167em) (frac(partial f, partial y)) = 2 x e^(x^2) cos\(x y\)+ e^(x^2)\(- y sin\(x y\)\) $

Confrontando si vede che:
$ frac(partial^2 f, partial y thin partial x) = frac(partial^2 f, partial x thin partial y) $
\#\# Osservazione Il #strong[teorema di Schwarz] vale per ogni coppia di
derivate in cui ciascuna variabile viene utilizzata lo stesso numero di
volte. \ In altre parole, tutte le derivate miste di uguale ordine e con
la stessa molteplicità di variabili coincidono, se sono continue.

== Notazione
<notazione>
$f in C^2\(upright(D o m)\)$ significa che tutte le derivate parziali
seconde di $f$ sono continue nel dominio.

La scorsa lezione abbiamo visto che, se $f in C^1\(upright(D o m)\)$,
posso approssimare $f$ in un punto con lo sviluppo lineare (un polinomio
di grado 1):

$ f\(P\)= f\(P_0\)+ nabla f\(P_0\)dot.op\(P - P_0\)+ o\(\|P - P_0\|\)quad upright("(Polinomio di Taylor)") $
Per $f$ in una variabile, se esiste $f''\(x_0\)$, posso migliorare
l'approssimazione:

$ f\(x\)= f\(x_0\)+ f'\(x_0\)\(x - x_0\)+ 1 / 2 f''\(x_0\)\(x - x_0\)^2 + o #scale(x: 120%, y: 120%)[\(]\(x - x_0\)^2 #scale(x: 120%, y: 120%)[\)] $
Anche in più variabili esiste ciò. Prendendo $f\(x\,y\)$:

$ f\(x\,y\)approx a + b_1\(x - x_0\)+ b_2\(y - y_0\)+ c_1\(x - x_0\)^2 + c_2\(y - y_0\)^2 + c_3\(x - x_0\)\(y - y_0\) $
con $a\,b_1\,b_2\,c_1\,c_2\,c_3 in bb(R)$.

== Definizione (Polinomio di Taylor del 2° ordine)
<definizione-polinomio-di-taylor-del-2-ordine>
Sia $f\(x\,y\)$ e sia $P_0 =\(x_0\,y_0\)$. \ Il polinomio $T\(x\,y\)$ è:

$ T\(x\,y\)= f\(x_0\,y_0\)+ frac(partial f, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial f, partial y)\(x_0\,y_0\)\(y - y_0\) $

$ + 1 / 2 frac(partial^2 f, partial x^2)\(x_0\,y_0\)\(x - x_0\)^2 + 1 / 2 frac(partial^2 f, partial y^2)\(x_0\,y_0\)\(y - y_0\)^2 + frac(partial^2 f, partial x partial y)\(x_0\,y_0\)\(x - x_0\)\(y - y_0\) $

Si chiama #strong[polinomio di Taylor del secondo ordine] in
$\(x_0\,y_0\)$.

Nota bene: il termine miste non presenta il termine un mezzo, in quanto,
siccome le due derivate miste sono uguali, si sommano a vicenda portando
la struttura del polinomio come quella enunciata sopra.

== Teorema di Taylor
<teorema-di-taylor>
Sia $f : D subset bb(R)^2 arrow.r bb(R)$ di classe $C^2$ in $D$ e sia
$P_0 =\(x_0\,y_0\)in D$. \ Allora:

$ f\(x\,y\)= T\(x\,y\)+ o #h(-0.167em) #scale(x: 120%, y: 120%)[\(]\(x - x_0\)^2 +\(y - y_0\)^2 #scale(x: 120%, y: 120%)[\)] $

Inoltre, $T\(x\,y\)$ è l'unico polinomio di grado 2 con questa
proprietà. Volendo, posso anche scrivere:

$ T\(x\,y\)= f\(P_0\)+ nabla f\(P_0\)dot.op\(P - P_0\)+ 1 / 2 H f\(x_0\,y_0\)thin\[P - P_0\,P - P_0\] $

dove $H f$ è la matrice hessiana di $f$.

Presa $f : bb(R)^2 arrow.r bb(R)$, si definisce:

$ H f\(x\,y\)= mat(delim: "(", frac(partial^2 f, partial x^2)\(x\,y\), frac(partial^2 f, partial x partial y)\(x\,y\); frac(partial^2 f, partial y partial x)\(x\,y\), frac(partial^2 f, partial y^2)\(x\,y\)) = mat(delim: "(", partial_x (frac(partial f, partial x) \( x \, y \)), partial_y (frac(partial f, partial x) \( x \, y \)); partial_x (frac(partial f, partial y) \( x \, y \)), partial_y (frac(partial f, partial y) \( x \, y \))) $

Si chiama #strong[Hessiana] di $f$. Nota come le derivate parziali che
sopra avevamo definito #strong[pure] sono sulla diagonale principale.
\#\# Osservazione Se $f in C^2\(D\)$ allora $H f\(x\,y\)$ è simmetrica.

Sia $A in bb(R)^(2 times 2)$ simmetrica:
$ A = mat(delim: "(", a, b; b, c)\,#h(2em) X = vec(x, y) $

Allora: $ A dot.op X = vec(a x + b y, b x + c y) $

$ X^T A X = x\(a x + b y\)+ y\(b x + c y\)= a x^2 + b x y + b x y + c y^2 = a x^2 + 2 b x y + c y^2 $

Prendiamo la matrice $ A = 1 / 2 H f\(P_0\)\,#h(2em) X =\(P - P_0\) $

Allora:
$ \(P - P_0\)^T thin 1 / 2 H f\(P_0\)thin\(P - P_0\)= 1 / 2 frac(partial^2 f, partial x^2)\(P_0\)\(x - x_0\)^2 + frac(partial^2 f, partial x partial y)\(P_0\)\(x - x_0\)\(y - y_0\)+ 1 / 2 frac(partial^2 f, partial y^2)\(P_0\)\(y - y_0\)^2 $
Esplicitando tutti i conti si otterrà esattamente la formula del
polinomio sopra enunciata.

== Osservazione
<osservazione>
Dato $f : bb(R)^n arrow.r bb(R)$ di classe $C^2$, si definisce la
#strong[matrice Hessiana] di $f$ in un punto $x$ come

$ H f\(x\)= mat(delim: "(", frac(partial^2 f, partial x_1^2)\(x\), dots.h.c, frac(partial^2 f, partial x_1 partial x_n)\(x\); dots.v, dots.down, dots.v; frac(partial^2 f, partial x_n partial x_1)\(x\), dots.h.c, frac(partial^2 f, partial x_n^2)\(x\)) . $

La #strong[traccia] dell'Hessiana (cioè la somma degli elementi sulla
diagonale principale) è detta #strong[Laplaciano] della funzione:

$ Delta f\(x\)= "tr"\(H f\(x\)\)= sum_(i = 1)^n frac(partial^2 f, partial x_i^2)\(x\). $
\#\#\# Interpretazione Il Laplaciano misura la #strong[curvatura media]
della funzione nei pressi di un punto.

- In $bb(R)^2$:
  $ Delta f\(x\,y\)= frac(partial^2 f, partial x^2)\(x\,y\)+ frac(partial^2 f, partial y^2)\(x\,y\). $
- In $bb(R)^3$:
  $ Delta f\(x\,y\,z\)= frac(partial^2 f, partial x^2)\(x\,y\,z\)+ frac(partial^2 f, partial y^2)\(x\,y\,z\)+ frac(partial^2 f, partial z^2)\(x\,y\,z\). $

== Forma compatta del polinomio di Taylor
<forma-compatta-del-polinomio-di-taylor>
$ T\(P\)= f\(P_0\)+ nabla f\(P_0\)dot.op\(P - P_0\)+\(P - P_0\)^T thin 1 / 2 H f\(P_0\)thin\(P - P_0\) $
Come di consueto, anche in questo caso, ben lavorassimo in più
variabili, la formula non cambierebbe, basta aggiungere le nuove
componenti e il gioco è fatto.

= Approfondimenti
<approfondimenti>
== Convessità
<convessità>
Il concetto di convessità (globale e locale) per funzioni di una
variabile reale si generalizza naturalmente alle funzioni di più
variabili reali.

La #strong[convessità globale] si esprime attraverso la proprietà di
convessità dell'#strong[epigrafico] della funzione. \ Sia
$f : C subset.eq bb(R)^n arrow.r bb(R)$ con $C$ insieme convesso, e sia

$ E_f = {\(x\,y\)in bb(R)^(n + 1) : x in C\,thin y gt.eq f\(x\)} $

il suo epigrafico. Diciamo che $f$ è #strong[convessa] su $C$ se
l'insieme $E_f$ è convesso.

La #strong[convessità locale] si esprime attraverso la posizione del
grafico della funzione rispetto al suo piano tangente in un punto. \ Se
$f$ è differenziabile in $x_0 in upright(d o m) thin f$, diciamo che $f$
è #strong[convessa in $x_0$] se esiste un intorno $B_r\(x_0\)$ tale che

$ f\(x\)gt.eq f\(x_0\)+ nabla f\(x_0\)dot.op\(x - x_0\)\,#h(2em) forall x in B_r\(x_0\). $

Se la disuguaglianza è stretta per ogni $x eq.not x_0$, diciamo che $f$
è #strong[strettamente convessa] in $x_0$.

Per funzioni differenziabili, la convessità locale in ogni punto di un
convesso $C subset.eq upright(d o m) thin f$ equivale alla convessità
globale di $f$ su $C$.

Se $f$ è di classe $C^2$ in un intorno di $x_0$, allora usando il
Teorema 2.21 e le proprietà della matrice Hessiana $H f\(x_0\)$, si può
affermare:

- $H f\(x_0\)$ #strong[semidefinita positiva]
  $thick thick arrow.l.r.double thick thick$ $f$ è convessa in $x_0$ \
- $H f\(x_0\)$ #strong[definita positiva]
  $thick thick arrow.l.r.double thick thick$ $f$ è strettamente convessa
  in $x_0$

=== Richiamo: matrici definite positive
<richiamo-matrici-definite-positive>
Sia $A in bb(R)^(n times n)$ una matrice simmetrica, ricordiamo i
concetti sopra introdotti sulle matrice simmetriche:

- $A$ è #strong[definita positiva]
  $arrow.l.r.double thick v^T A v > 0 quad forall v in bb(R)^n\\{ 0 }$
- $A$ è #strong[semi-definita positiva]
  $arrow.l.r.double thick v^T A v gt.eq 0 quad forall v in bb(R)^n$
- $A$ è #strong[indefinita] se esistono $v_1\,v_2$ tali che
  $v_1^T A v_1 > 0$ e $v_2^T A v_2 < 0$.

= L5 ANL2
<l5-anl2>
01/10/2025 
==Punti estremi per funzioni in più variabili

Sia $f : D arrow.r bb(R)$, con $D subset.eq bb(R)^n$, una funzione reale
di più variabili.

=== Minimo globale (o assoluto)
<minimo-globale-o-assoluto>
Un punto $upright(bold(p))_0 in D$ è un #strong[minimo globale] se:
$ f\(upright(bold(p))_0\)lt.eq f\(upright(bold(p))\)quad forall upright(bold(p)) in D $

=== Minimo locale (o relativo)
<minimo-locale-o-relativo>
Un punto $upright(bold(p))_0 in D$ è un #strong[minimo locale] se:
$ f\(upright(bold(p))_0\)lt.eq f\(upright(bold(p))\)quad forall upright(bold(p)) in B_r\(upright(bold(p))_0\) $
per un certo $r > 0$, dove $B_r\(upright(bold(p))_0\)$ è la palla aperta
di raggio $r$ centrata in $upright(bold(p))_0$.

#quote(block: true)[
#emph[Nota]: Il minimo locale richiede che la disuguaglianza valga solo
in un intorno del punto, non su tutto il dominio.
]

=== Massimo globale (o assoluto)
<massimo-globale-o-assoluto>
Un punto $upright(bold(p))_0 in D$ è un #strong[massimo globale] se:
$ f\(upright(bold(p))_0\)gt.eq f\(upright(bold(p))\)quad forall upright(bold(p)) in D $

=== Massimo locale (o relativo)
<massimo-locale-o-relativo>
Un punto $upright(bold(p))_0 in D$ è un #strong[massimo locale] se:
$ f\(upright(bold(p))_0\)gt.eq f\(upright(bold(p))\)quad forall upright(bold(p)) in B_r\(upright(bold(p))_0\) $
per un certo $r > 0$.

== Esempio
<esempio-3>
- Consideriamo la funzione: $ f\(x\,y\)= x^2 + y^2 $

Il punto $\(0\,0\)$ è un #strong[punto di minimo globale], perché:
$ f\(0\,0\)= 0 lt.eq x^2 + y^2 = f\(x\,y\)quad forall\(x\,y\)in bb(R)^2 $

Inoltre, essendo il minimo globale, è anche un minimo locale.

- Consideriamo la funzione: $ f\(x\,y\)= x^2 + y^2 -\(x^2 + y^2\)^2 $

Possiamo riscriverla come:
$ f\(x\,y\)=\(x^2 + y^2\)[1 - \( x^2 + y^2 \)] $

Il punto $\(0\,0\)$ è un #strong[punto di minimo locale], perché:
$ f\(0\,0\)= 0 < f\(x\,y\)quad upright("per ")\(x\,y\)in B_(1 / 2)\(0\,0\) $

Tuttavia, non è un #strong[minimo globale], perché esistono punti
$\(x\,y\)$ tali che $x^2 + y^2 > 1$, per i quali: $ f\(x\,y\)< 0 $

Quindi, in tali punti, $f\(x\,y\)< f\(0\,0\)$.

== Definizione: Punto stazionario (o critico)
<definizione-punto-stazionario-o-critico>
Sia $f : D arrow.r bb(R)$, con $D subset.eq bb(R)^n$, di classe $C^1$ in
$D$. \ Un punto $upright(bold(p))_0$ interno a $D$ si dice #strong[punto
critico] (o #strong[stazionario]) di $f$ se:
$ nabla f\(upright(bold(p))_0\)= arrow(0) $ dove $arrow(0)$ indica il
vettore nullo in $bb(R)^n$.

== Teorema di Fermat (per funzioni di più variabili)
<teorema-di-fermat-per-funzioni-di-più-variabili>
Sia $f : D arrow.r bb(R)$, con $D subset.eq bb(R)^n$, di classe $C^1$ in
$D$. \ Se $upright(bold(p))_0$ è un punto interno a $D$ ed è un
#strong[massimo o minimo locale] di $f$, allora $upright(bold(p))_0$ è
critico per $f$, cioè: $ nabla f\(upright(bold(p))_0\)= arrow(0) $

#quote(block: true)[
Questo teorema fornisce una condizione necessaria per l'esistenza di
estremi locali interni al dominio.
]

== Dimostrazione del Teorema di Fermat (caso di due variabili)
<dimostrazione-del-teorema-di-fermat-caso-di-due-variabili>
Sia $f : D arrow.r bb(R)$, con $D subset.eq bb(R)^2$, di classe $C^1$ in
$D$. \ Sia $upright(bold(p))_0 =\(x_0\,y_0\)$ un punto interno a $D$ e
sia un #strong[minimo locale] per $f$.

Allora, per definizione:
$ f\(x\,y\)gt.eq f\(x_0\,y_0\)quad forall\(x\,y\)in B_r\(x_0\,y_0\) $

In particolare, fissando $y = y_0$, si ottiene che la funzione di una
variabile: $ g\(x\)= f\(x\,y_0\) $ ha un minimo locale in $x = x_0$.

Per il Teorema di Fermat per funzioni di una variabile (Analisi I),
segue che: $ g'\(x_0\)= 0 $

Ma per definizione di derivata parziale:
$ frac(partial f, partial x)\(x_0\,y_0\)= g'\(x_0\)= 0 $

Analogamente, fissando $x = x_0$, si considera: $ h\(y\)= f\(x_0\,y\) $
che ha un minimo locale in $y = y_0$, quindi:
$ h'\(y_0\)= 0 quad arrow.r.double quad frac(partial f, partial y)\(x_0\,y_0\)= 0 $

Pertanto:
$ nabla f\(x_0\,y_0\)= (frac(partial f, partial x) \( x_0 \, y_0 \) \, frac(partial f, partial y) \( x_0 \, y_0 \)) =\(0\,0\) $

Questo dimostra che $upright(bold(p))_0$ è un punto critico.

== Esempio: Funzione $f\(x\,y\)= x y$
<esempio-funzione-fxy-xy>
Cerchiamo i punti critici.

Il gradiente è:
$ nabla f\(x\,y\)= (frac(partial f, partial x) \( x \, y \) \, frac(partial f, partial y) \( x \, y \)) =\(y\,x\) $

Poniamo $nabla f\(x\,y\)=\(0\,0\)$: $ {y = 0\
x = 0 quad arrow.r.double quad\(x\,y\)=\(0\,0\) $

Quindi l'unico punto critico è $\(0\,0\)$.

-- \#\#\# Analisi del comportamento in un intorno di $\(0\,0\)$

Consideriamo i quadranti:

- Nel #strong[I° e III° quadrante] ($x y > 0$): $f\(x\,y\)> 0$
- Nel #strong[II° e IV° quadrante] ($x y < 0$): $f\(x\,y\)< 0$

Poiché in ogni intorno di $\(0\,0\)$ esistono punti dove $f > 0$ e punti
dove $f < 0$, il punto $\(0\,0\)$ non è né un massimo né un minimo
locale.

=== Definizione: Punto di sella
<definizione-punto-di-sella>
Un punto critico $upright(bold(p))_0$ si dice #strong[punto di sella] se
in ogni suo intorno esistono punti in cui la funzione assume valori
maggiori e minori di $f\(upright(bold(p))_0\)$.

Nel nostro caso, $\(0\,0\)$ è un #strong[punto di sella], perché:
$ f\(0\,0\)= 0\,quad upright("ma ") exists\(x\,y\)upright(" vicini a ")\(0\,0\)upright(" tali che ") f\(x\,y\)> 0 upright(" e ") f\(x\,y\)< 0 $

```tikz
\usepackage{amsmath,amssymb}
\usepackage{tikz-3dplot}
\begin{document}

\tdplotsetmaincoords{70}{110}

\begin{tikzpicture}[scale=3,tdplot_main_coords]

% Disegna gli assi cartesiani
\draw[thick,->] (-1.5,0,0) -- (1.5,0,0) node[anchor=north east]{$x$};
\draw[thick,->] (0,-1.5,0) -- (0,1.5,0) node[anchor=north west]{$y$};
\draw[thick,->] (0,0,-1.5) -- (0,0,1.5) node[anchor=south]{$z$};

% Riempimento della superficie con patch azzurre
\foreach \x [evaluate=\x as \xnext using \x+0.2] in {-1.2,-1.0,...,1.0}{
    \foreach \y [evaluate=\y as \ynext using \y+0.2] in {-1.2,-1.0,...,1.0}{
        \pgfmathsetmacro{\z}{\x*\x-\y*\y}
        \pgfmathsetmacro{\znextx}{(\xnext)*(\xnext)-\y*\y}
        \pgfmathsetmacro{\znexty}{\x*\x-(\ynext)*(\ynext)}
        \pgfmathsetmacro{\znextxy}{(\xnext)*(\xnext)-(\ynext)*(\ynext)}
        
        \fill[cyan!60!blue,opacity=0.6] 
            (\x,\y,\z) -- 
            (\xnext,\y,\znextx) -- 
            (\xnext,\ynext,\znextxy) -- 
            (\x,\ynext,\znexty) -- 
            cycle;
    }
}

% Griglia lungo x (fissando y)
\foreach \y in {-1.2,-0.8,-0.4,0,0.4,0.8,1.2}{
    \draw[blue!70,opacity=0.4,line width=0.3pt] plot[variable=\x,domain=-1.2:1.2,samples=30] 
        (\x,\y,{\x*\x-\y*\y});
}

% Griglia lungo y (fissando x)
\foreach \x in {-1.2,-0.8,-0.4,0,0.4,0.8,1.2}{
    \draw[blue!70,opacity=0.4,line width=0.3pt] plot[variable=\y,domain=-1.2:1.2,samples=30] 
        (\x,\y,{\x*\x-\y*\y});
}

% Etichetta della superficie
\node at (0.8,0.8,1.0) {$z = x^2 - y^2$};

% Punto sella nell'origine
\fill[black] (0,0,0) circle (1pt);
\node[anchor=south west] at (0,0,0.1) {sella};

\end{tikzpicture}
\end{document}
```

Il paraboloide iperbolico (Pringless) è un esempio lampante di funzione
con punto di sella.

== Osservazione
<osservazione-1>
Per funzioni di una variabile, se $f'\(x_0\)= 0$ e $f''\(x_0\)eq.not 0$,
allora $x_0$ è un punto di massimo o minimo locale. \ Per funzioni di
più variabili, #strong[non basta solo il gradiente nullo]: occorre
studiare la matrice Hessiana per classificare il punto critico.

#quote(block: true)[
Il fatto che un punto critico sia di sella implica che non è un estremo
locale.
]

== Teorema: Classificazione dei punti critici in due variabili
<teorema-classificazione-dei-punti-critici-in-due-variabili>
Sia $f : D subset.eq bb(R)^2 arrow.r bb(R)$ di classe $C^2$ in $D$, e
sia $upright(bold(p))_0$ un punto critico di $f$. Sia
$H_f\(upright(bold(p))_0\)$ la matrice Hessiana di $f$ in
$upright(bold(p))_0$.

Allora:

+ Se $det H_f\(upright(bold(p))_0\)< 0$ → $upright(bold(p))_0$ è un
  #strong[punto di sella].

+ Se $det H_f\(upright(bold(p))_0\)> 0$, allora:

  - Se $frac(partial^2 f, partial x^2)\(upright(bold(p))_0\)> 0$ →
    $upright(bold(p))_0$ è un #strong[punto di minimo locale].
  - Se $frac(partial^2 f, partial x^2)\(upright(bold(p))_0\)< 0$ →
    $upright(bold(p))_0$ è un #strong[punto di massimo locale].

+ Se $det H_f\(upright(bold(p))_0\)= 0$ → il metodo non dà informazioni
  sulla natura di $upright(bold(p))_0$.

== Commenti
<commenti>
- Il punto 3) non esaurisce tutti i casi possibili. Esempi:

=== Esempio 1: Funzione con $det H_f\(upright(bold(p))_0\)= 0$ e punto di minimo
<esempio-1-funzione-con-det-h_fmathbfp_0-0-e-punto-di-minimo>
Sia $f\(x\,y\)= x^4 + y^4$. \ Il gradiente è:
$ nabla f\(x\,y\)=\(4 x^3\,4 y^3\) $ Ponendo $nabla f\(x\,y\)=\(0\,0\)$,
si ottiene $\(x\,y\)=\(0\,0\)$.

La matrice Hessiana è:
$ H_f\(x\,y\)= mat(delim: "[", 12 x^2, 0; 0, 12 y^2) quad arrow.r.double quad H_f\(0\,0\)= mat(delim: "[", 0, 0; 0, 0) quad arrow.r.double quad det H_f\(0\,0\)= 0 $

Tuttavia, $\(0\,0\)$ è un #strong[punto di minimo globale], poiché
$f\(x\,y\)gt.eq 0 = f\(0\,0\)$ per ogni $\(x\,y\)in bb(R)^2$.

=== Esempio 2: Funzione con $det H_f\(upright(bold(p))_0\)= 0$ e punto di massimo
<esempio-2-funzione-con-det-h_fmathbfp_0-0-e-punto-di-massimo>
Sia $f\(x\,y\)= - x^4 - y^4$. \ Analogamente,
$nabla f\(0\,0\)=\(0\,0\)$, e:
$ H_f\(0\,0\)= mat(delim: "[", 0, 0; 0, 0) quad arrow.r.double quad det H_f\(0\,0\)= 0 $

Ma $\(0\,0\)$ è un #strong[punto di massimo globale], poiché
$f\(x\,y\)lt.eq 0 = f\(0\,0\)$ per ogni $\(x\,y\)in bb(R)^2$.

#quote(block: true)[
Pertanto, quando $det H_f\(upright(bold(p))_0\)= 0$, non si può
concludere nulla: occorre analizzare il comportamento della funzione in
un intorno del punto con altri metodi (es. studio diretto del segno,
sviluppo di Taylor, ecc.).
]

== Teorema: Classificazione dei punti critici in $n$ variabili
<teorema-classificazione-dei-punti-critici-in-n-variabili>
Sia $f : D subset.eq bb(R)^n arrow.r bb(R)$ di classe $C^2$ in $D$, e
sia $upright(bold(p))_0$ un punto critico di $f$. Siano
$lambda_1\,lambda_2\,dots.h\,lambda_n$ gli autovalori della matrice
Hessiana $H_f\(upright(bold(p))_0\)$.

Allora:

+ Se tutti gli autovalori sono $> 0$ → $upright(bold(p))_0$ è un
  #strong[punto di minimo locale].

+ Se tutti gli autovalori sono $< 0$ → $upright(bold(p))_0$ è un
  #strong[punto di massimo locale].

+ Se ci sono autovalori di segno opposto → $upright(bold(p))_0$ è un
  #strong[punto di sella].

+ Se un autovalore è nullo e tutti gli altri hanno lo stesso segno → non
  si può dire nulla sulla natura di $upright(bold(p))_0$.

#quote(block: true)[
Questo teorema generalizza al caso $n$-dimensionale il criterio basato
sul determinante e sulla derivata seconda parziale per il caso
bidimensionale.
]

= L6 ANL2
<l6-anl2>
06/10/2025 
== Campi vettoriali, introduzione
e casi Fino a questo punto, abbiamo considerato due classi principali di
funzioni:

- $f : bb(R) arrow.r bb(R)$ --- funzioni reali di una variabile reale
  (Analisi I).
- $f : bb(R)^m arrow.r bb(R)$ con $m gt.eq 2$ --- funzioni scalari di
  più variabili.

In entrambi i casi, l'immagine è un numero reale (uno scalare).

== Caso generale: Funzioni a valori vettoriali
<caso-generale-funzioni-a-valori-vettoriali>
Il contesto più generale prevede funzioni del tipo:

$ f : bb(R)^n arrow.r bb(R)^m\,quad n\,m in bb(N)\,thick n\,m gt.eq 1 . $

#quote(block: true)[
#strong[Nota]: Nella trascrizione originale compare $n\,m in bb(R)$, ma
si tratta quasi certamente di un errore tipografico. Le dimensioni dello
spazio euclideo sono numeri naturali.
]

Tali funzioni sono dette #strong[funzioni a valori vettoriali], poiché
restituiscono un vettore in $bb(R)^m$.

== Oggetto di studio: Campi vettoriali
<oggetto-di-studio-campi-vettoriali>
In questo corso, ci concentreremo sul caso in cui dominio e codominio
hanno la stessa dimensione:

=== Definizione
<definizione>
Un #strong[campo vettoriale] è una funzione
$ upright(bold(F)) : bb(R)^m arrow.r bb(R)^m\,quad m gt.eq 2\, $ che
associa a ogni punto $upright(bold(x)) in bb(R)^m$ un vettore
$upright(bold(F))\(upright(bold(x))\)in bb(R)^m$.

== Casi rilevanti
<casi-rilevanti>
=== Campo vettoriale piano ($m = 2$)
<campo-vettoriale-piano-m-2>
- Dominio e codominio: $bb(R)^2$.
- Scrittura esplicita:
  $ upright(bold(F))\(x\,y\)= #scale(x: 120%, y: 120%)[\(] F_1\(x\,y\)\,thin F_2\(x\,y\)#scale(x: 120%, y: 120%)[\)]\, $
  dove $F_1\,F_2 : bb(R)^2 arrow.r bb(R)$ sono funzioni scalari di
  classe opportuna (es. $C^1$).
- Tali campi sono detti #strong[piani].

#emph[Esempio]: $upright(bold(F))\(x\,y\)=\(- y\,x\)$ rappresenta un
campo di rotazione nel piano.

=== Campo vettoriale spaziale ($m = 3$)
<campo-vettoriale-spaziale-m-3>
- Dominio e codominio: $bb(R)^3$.
- Scrittura esplicita:
  $ upright(bold(F))\(x\,y\,z\)= #scale(x: 120%, y: 120%)[\(] F_1\(x\,y\,z\)\,thin F_2\(x\,y\,z\)\,thin F_3\(x\,y\,z\)#scale(x: 120%, y: 120%)[\)]\, $
  con $F_1\,F_2\,F_3 : bb(R)^3 arrow.r bb(R)$.
- Tali campi sono detti #strong[spaziali].

#emph[Esempio]: $upright(bold(F))\(x\,y\,z\)=\(x\,y\,z\)$ è il campo
radiale uscente dall'origine.

== Componenti di un campo vettoriale
<componenti-di-un-campo-vettoriale>
Sia $upright(bold(F)) : bb(R)^3 arrow.r bb(R)^3$ un campo vettoriale. Le
funzioni $F_1\,F_2\,F_3$ che ne compongono le componenti sono dette
#strong[componenti del campo $upright(bold(F))$].

Il campo si scrive vettorialmente nella forma:

$ upright(bold(F))\(x\,y\,z\)= #scale(x: 120%, y: 120%)[\(] F_1\(x\,y\,z\)\,thin F_2\(x\,y\,z\)\,thin F_3\(x\,y\,z\)#scale(x: 120%, y: 120%)[\)] $

oppure, in notazione vettoriale con versori:

$ upright(bold(F))\(x\,y\,z\)= F_1\(x\,y\,z\)thin arrow(dotless.i) + F_2\(x\,y\,z\)thin arrow(dotless.j) + F_3\(x\,y\,z\)thin arrow(k) $

== Dominio di un campo vettoriale
<dominio-di-un-campo-vettoriale>
Il dominio di un campo vettoriale è l'intersezione dei domini delle sue
componenti:

#quote(block: true)[
Il dominio è l'insieme su cui tutte le componenti sono definite
simultaneamente.
]

=== Esempio
<esempio-4>
Sia:
$ upright(bold(F))\(x\,y\,z\)= (x y thin e^z \, thin 1 / 2 x - z \, thin e^(- 1\/y^2)) $

Allora: - $F_1\(x\,y\,z\)= x y thin e^z$ è definita su tutto $bb(R)^3$.
\- $F_2\(x\,y\,z\)= 1 / 2 x - z$ è definita su tutto $bb(R)^3$. -
$F_3\(x\,y\,z\)= e^(- 1\/y^2)$ richiede $y eq.not 0$, poiché $1\/y^2$
non è definito per $y = 0$.

Quindi:
$ upright(d o m) thin upright(bold(F)) = {\( x \, y \, z \) in bb(R)^3 : x in bb(R) \, thin y eq.not 0 \, thin z in bb(R)} $

== A cosa servono i campi vettoriali?
<a-cosa-servono-i-campi-vettoriali>
I campi vettoriali modellano grandezze fisiche che hanno direzione,
verso e intensità in ogni punto dello spazio. Un esempio tipico è
#strong[la forza].

== Esempio tipico: Campo gravitazionale
<esempio-tipico-campo-gravitazionale>
Consideriamo il campo gravitazionale generato da una massa puntiforme
$M$ posta nell'origine.

Il campo gravitazionale $upright(bold(g))$ in un punto
$upright(bold(r)) =\(x\,y\,z\)$ è diretto verso la massa $M$ e ha modulo
proporzionale a $1\/r^2$, dove $r = parallel upright(bold(r)) parallel$.

In formula:
$ upright(bold(g))\(upright(bold(r))\)= - G frac(M, parallel upright(bold(r)) parallel^3) upright(bold(r))\,quad upright(bold(r)) eq.not upright(bold(0)) $

Dove: - $G$ è la costante di gravitazione universale, -
$upright(bold(r)) =\(x\,y\,z\)$, -
$parallel upright(bold(r)) parallel = sqrt(x^2 + y^2 + z^2)$.

Questo campo è definito su $bb(R)^3\\{ upright(bold(0)) }$, poiché non è
definito nel punto in cui si trova la massa sorgente.

= L7 ANL2
<l7-anl2>
08/10/2025 
== Calcolo integrale per funzioni in più variabili

=== Integrali doppi
<integrali-doppi>
==== Nozione di integrale per funzioni di due variabili
<nozione-di-integrale-per-funzioni-di-due-variabili>
Già sappiamo che per funzioni di una variabile $f\(x\)$, se esiste
un'appropriata definizione, l'integrale definito di $f$ sull'intervallo
$\[a\,b\]$ è: $ integral_a^b f\(x\)thin d x $

Quando è ben definito, questo integrale rappresenta geometricamente
#strong[l'area sottesa dal grafico di $f$] nell'intervallo $\[a\,b\]$.

#quote(block: true)[
Area = $integral_a^b f\(x\)thin d x$
]

Passiamo ora a considerare una funzione di due variabili: $f\(x\,y\)$.

== Interpretazione geometrica dell'integrale doppio
<interpretazione-geometrica-dellintegrale-doppio>
Sia $f : D subset.eq bb(R)^2 arrow.r bb(R)$ una funzione continua e non
negativa su un dominio $D$.

L'integrale doppio: $ integral.double_D f\(x\,y\)thin d x d y $
rappresenta #strong[il volume del solido] compreso tra:

- il grafico di $f\(x\,y\)$,
- il piano $x y$ (cioè il piano $z = 0$),
- e il cilindro verticale di base $D$.

#quote(block: true)[
Il volume è calcolato come somma infinitesima delle aree delle sezioni
verticali moltiplicate per l'altezza $f\(x\,y\)$.
]

== Domanda fondamentale
<domanda-fondamentale>
Come si calcola il #strong[volume sotteso dal grafico di $f\(x\,y\)$]?

== Altro esempio: densità di massa
<altro-esempio-densità-di-massa>
Supponiamo di avere una lamina piana con forma descritta da un dominio
$D subset.eq bb(R)^2$, e di conoscere in ogni punto $\(x\,y\)in D$ la
#strong[densità di massa] $rho\(x\,y\)$.

Allora la #strong[massa totale] della lamina è data da:
$ M = integral.double_D rho\(x\,y\)thin d x d y $ Questo mostra che
l'integrale doppio non rappresenta solo un volume geometrico, ma anche
grandezze fisiche come massa, carica, probabilità, ecc., a seconda del
significato di $f\(x\,y\)$.

== Costruzione dell'integrale doppio
<costruzione-dellintegrale-doppio>
Sia data una funzione $f : D subset.eq bb(R)^2 arrow.r bb(R)$, dove il
dominio di integrazione $D$ è un sottoinsieme di $bb(R)^2$
#strong[aperto, limitato e di area positiva].

=== Passo 1: Suddivisione del dominio
<passo-1-suddivisione-del-dominio>
Per ogni numero naturale $m in bb(N)$, si fissa un numero $delta_m > 0$
tale che: $ delta_m arrow.r 0 quad upright("per ") m arrow.r + oo $

Per ogni $m$, si suddivide il dominio $D$ in quadratini di lato
$delta_m$. Indichiamo con $Q_(i j)^m$ il generico quadratino della
suddivisione.

Allora, per costruzione:
$ upright("lato di ") Q_(i j)^m = delta_m quad arrow.r.double quad upright("Area")\(Q_(i j)^m\)= delta_m^2 quad forall i\,j $

#quote(block: true)[
Questa suddivisione permette di approssimare l'integrale doppio come
somma di volumi di parallelepipedi elementari.
]

```tikz
\usepackage{amsmath,amssymb}
\usetikzlibrary{arrows.meta}

\begin{document}

\tikzset{every picture/.style={line width=0.75pt}}

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]

% Rettangolo principale riempito
\draw[fill=cyan!40!white, draw=black, line width=0.8pt] 
    (100,100) rectangle (350,300);

% Griglia interna orizzontale
\draw[black!30, line width=0.4pt] (100,150) -- (350,150);
\draw[black!30, line width=0.4pt] (100,200) -- (350,200);
\draw[black!30, line width=0.4pt] (100,250) -- (350,250);

% Griglia interna verticale
\draw[black!30, line width=0.4pt] (150,100) -- (150,300);
\draw[black!30, line width=0.4pt] (225,100) -- (225,300);
\draw[black!30, line width=0.4pt] (287,100) -- (287,300);

% Asse x
\draw[thick,->] (50,330) -- (380,330);
\node[right] at (380,330) {$x$};

% Asse y
\draw[thick,->] (70,320) -- (70,70);
\node[above] at (70,70) {$y$};

% Linee tratteggiate verticali
\draw[dashed, gray] (100,300) -- (100,330);
\draw[dashed, gray] (150,300) -- (150,330);
\draw[dashed, gray] (225,300) -- (225,330);
\draw[dashed, gray] (287,300) -- (287,330);
\draw[dashed, gray] (350,300) -- (350,330);

% Etichette asse x
\node[below] at (100,340) {$a = x_0$};
\node[below] at (150,340) {$x_1$};
\node[below] at (225,340) {$x_2$};
\node[below] at (287,340) {$x_3$};
\node[below] at (350,340) {$b = x_4$};

% Etichette asse y
\node[left] at (60,300) {$c = y_0$};
\node[left] at (60,250) {$y_1$};
\node[left] at (60,200) {$y_2$};
\node[left] at (60,150) {$y_3$};
\node[left] at (60,100) {$d = y_3$};

% Etichetta centrale
\node at (225,200) {$B_{32} = I_3 \times J_2$};

\end{tikzpicture}

\end{document}
```

== Passo 2: Approssimazione del volume
<passo-2-approssimazione-del-volume>
Per ogni quadratino $Q_(i j)^m$ della suddivisione, si sceglie un punto
arbitrario $\(x_(i j)^m\,y_(i j)^m\)in Q_(i j)^m$.

Si costruisce il #strong[parallelepipedo] di:

- base: $Q_(i j)^m$,
- altezza: $f\(x_(i j)^m\,y_(i j)^m\)$.

Allora, il volume di questo parallelepipedo è approssimativamente uguale
al volume sotteso dal grafico di $f$ sopra $Q_(i j)^m$.

In particolare:
$ upright("Volume del parallelepipedo") = f\(x_(i j)^m\,y_(i j)^m\)dot.op upright("Area")\(Q_(i j)^m\)= f\(x_(i j)^m\,y_(i j)^m\)dot.op delta_m^2 $

La somma dei volumi di tutti i parallelepipedi che intersecano $D$
fornisce una #strong[approssimazione del volume totale] sotteso dal
grafico di $f$ su $D$:
$ sum_(i\,j) f\(x_(i j)^m\,y_(i j)^m\)dot.op delta_m^2 $

#quote(block: true)[
Questa somma è detta #strong[somma integrale] o #strong[somma di
Riemann] per l'integrale doppio.
]

== Passo 3: Somma integrale
<passo-3-somma-integrale>
Si sommano i volumi dei parallelepipedi costruiti su tutti i quadratini
$Q_(i j)^m$ che intersecano $D$:

$ sum_(i\,j) delta_m^2 dot.op f\(x_(i j)^m\,y_(i j)^m\)= delta_m^2 sum_(i\,j) f\(x_(i j)^m\,y_(i j)^m\) $

Questa somma approssima il volume sotteso dal grafico di $f$ sul dominio
$D$.

== Passo 4: Definizione dell'integrale doppio
<passo-4-definizione-dellintegrale-doppio>
Se il limite seguente esiste finito:
$ lim_(m arrow.r + oo) delta_m^2 sum_(i\,j) f\(x_(i j)^m\,y_(i j)^m\) $

allora tale limite si chiama #strong[integrale doppio] di $f$ su $D$, e
si denota con:

$ integral.double_D f\(x\,y\)thin d x d y quad upright("oppure") quad integral_D f\(x\,y\)thin d x d y $

== Notazione
<notazione-1>
Le notazioni più comuni per l'integrale doppio sono:

- $integral.double_D f\(x\,y\)thin d x d y$
- $integral_D f\(x\,y\)thin d x d y$

#quote(block: true)[
Il simbolo $integral.double$ sottolinea che si tratta di un integrale in
due variabili, ma è equivalente a $integral_D$ quando il contesto è
chiaro.
]

== Proprietà elementari degli integrali doppi
<proprietà-elementari-degli-integrali-doppi>
=== 1) Linearità
<linearità>
Siano $f\,g : D subset.eq bb(R)^2 arrow.r bb(R)$ funzioni continue su un
dominio $D$, e siano $alpha\,beta in bb(R)$. Allora:

$ integral.double_D [alpha f \( x \, y \) + beta g \( x \, y \)] d x d y = alpha integral.double_D f\(x\,y\)thin d x d y + beta integral.double_D g\(x\,y\)thin d x d y $

#quote(block: true)[
Questa proprietà permette di spezzare l'integrale di una combinazione
lineare in somma di integrali.
]

=== 2) Additività rispetto al dominio
<additività-rispetto-al-dominio>
Sia $f : D subset.eq bb(R)^2 arrow.r bb(R)$ continua, e sia
$D = D_1 union D_2$, con $D_1 inter D_2$ di area nulla. Allora:

$ integral.double_D f\(x\,y\)thin d x d y = integral.double_(D_1) f\(x\,y\)thin d x d y + integral.double_(D_2) f\(x\,y\)thin d x d y $

#quote(block: true)[
L'ipotesi che l'intersezione abbia area nulla garantisce che non si
contano due volte i punti comuni.
]

== 3) Monotonia
<monotonia>
Sia $f gt.eq 0$ su $D$. Allora:
$ integral.double_D f\(x\,y\)thin d x d y gt.eq 0 $

=== Conseguenze
<conseguenze>
- Se $f gt.eq g$ in $D$, allora:
  $ integral.double_D f\(x\,y\)thin d x d y gt.eq integral.double_D g\(x\,y\)thin d x d y $

- Vale la disuguaglianza triangolare:
  $ lr(|integral.double_D f \( x \, y \) thin d x d y|) lt.eq integral.double_D\|f\(x\,y\)\|thin d x d y $

== 4) Integrale di una funzione costante
<integrale-di-una-funzione-costante>
Se $f\(x\,y\)= 1$ per ogni $\(x\,y\)in D$, allora:
$ integral.double_D f\(x\,y\)thin d x d y = integral.double_D 1 thin d x d y = upright("area")\(D\) $

#quote(block: true)[
Questo mostra che l'integrale doppio della funzione costante 1 su un
dominio $D$ coincide con l'area di $D$.
]

```tikz
\usepackage{amsmath,amssymb}
\usetikzlibrary{arrows.meta}

\begin{document}

\tikzset{every picture/.style={line width=0.75pt}}

\begin{tikzpicture}[x=0.75pt,y=0.75pt,yscale=-1,xscale=1]

% Asse z
\draw[thick,-stealth] (200,280) -- (200,50);
\node[above] at (200,45) {$z$};

% Asse x
\draw[thick,-stealth] (200,280) -- (80,330);
\node[below left] at (75,335) {$x$};

% Asse y
\draw[thick,-stealth] (200,280) -- (380,280);
\node[right] at (385,280) {$y$};

% Piano B (rettangolo in prospettiva con foro interno)
% Contorno esterno del rettangolo
\coordinate (A1) at (100,260);
\coordinate (A2) at (340,240);
\coordinate (A3) at (360,300);
\coordinate (A4) at (120,320);

% Riempimento piano B con foro
\fill[cyan!40!white, opacity=0.7] (A1) -- (A2) -- (A3) -- (A4) -- cycle;

% Foro interno Ω (forma irregolare chiusa)
\fill[white] plot[smooth cycle, tension=0.8] coordinates {
    (190,270) (210,265) (240,268) (250,275) (245,283) (225,285) (200,282) (185,278)
};

% Bordi del piano B
\draw[black, line width=0.8pt] (A1) -- (A2) -- (A3) -- (A4) -- cycle;

% Bordo del foro Ω
\draw[black, line width=0.8pt] plot[smooth cycle, tension=0.8] coordinates {
    (190,270) (210,265) (240,268) (250,275) (245,283) (225,285) (200,282) (185,278)
};

% Etichette
\node at (260,275) {$\Omega$};
\node at (340,315) {$B$};

% Sezione superiore (forma irregolare sopra l'asse z)
\fill[cyan!50!white, opacity=0.6] plot[smooth cycle, tension=0.9] coordinates {
    (170,120) (190,115) (220,112) (245,118) (250,125) (240,130) (210,132) (180,128)
};

\draw[black, line width=0.8pt] plot[smooth cycle, tension=0.9] coordinates {
    (170,120) (190,115) (220,112) (245,118) (250,125) (240,130) (210,132) (180,128)
};

% Linee di connessione tratteggiate (opzionali, per mostrare la proiezione)
\draw[gray, dashed, line width=0.5pt] (200,120) -- (200,260);

\end{tikzpicture}

\end{document}
```

== Calcolo degli integrali doppi
<calcolo-degli-integrali-doppi>
=== Idea euristica
<idea-euristica>
L'idea fondamentale per calcolare un integrale doppio è quella di
ridurlo a due integrali semplici, ciascuno rispetto a una delle due
variabili.

Tuttavia, sorge un problema: #strong[il dominio $D$] su cui si integra
può avere forma arbitraria, e non sempre è facile applicare direttamente
questa riduzione.

Per questo, si inizia considerando domini particolari per i quali
l'integrazione è “facile”.

== 1) Domini convessi in $y$ (o verticalmente convessi)
<domini-convessi-in-y-o-verticalmente-convessi>
Un dominio $D subset.eq bb(R)^2$ si dice #strong[convesso in $y$] se è
una regione del piano compresa tra i grafici di due funzioni della sola
variabile $x$.

In formula:
$ D = {\( x \, y \) in bb(R)^2 : a lt.eq x lt.eq b \, med alpha \( x \) lt.eq y lt.eq beta \( x \)} $

dove $alpha\,beta :\[a\,b\]arrow.r bb(R)$ sono funzioni continue, con
$alpha\(x\)lt.eq beta\(x\)$ per ogni $x in\[a\,b\]$.

#quote(block: true)[
In questo caso, l'integrale doppio si può calcolare come integrale
iterato rispetto a $y$ prima e poi a $x$.
]

= L8 ANL2
<l8-anl2>
13/10/2025

Questa sarebbe la prima videolezione cha ha caricato, prima o poi la
farò

= L9 ANL2
<l9-anl2>
== Esercizi integrali doppi con sostituzione Non mi sembra il
caso di andare a ricopiare dei banali esercizi, quindi questa lezione
sarà vuota.

= L10 ANL2
<l10-anl2>
20/10/2025 \# Integrali Tripli #strong[Idea:] prendo una funzione
$f\(x\,y\,z\)$ in 3 variabili e cerco di definire un integrale su un
dominio $Omega$ di volume positivo.

== Costruzione dell'integrale triplo
<costruzione-dellintegrale-triplo>
Presa $f : Omega subset.eq bb(R)^3 arrow.r bb(R)$ continua, con $Omega$
aperto, limitato, di volume positivo.

#block[
#set enum(numbering: "1)", start: 1)
+ Spezzo $Omega$ in tanti cubetti generici di lato $delta_m > 0$
  $ upright("vol") (Q_(i j k)^m) = delta_m^3 quad forall i\,j\,k $ Fas

+ Per ogni cubetto $Q_(i j k)^m$ scelgo un punto
  $\(x_(i j k)^m\,y_(i j k)^m\,z_(i j k)^m\)$ e considero
  $ f\(x_(i j k)^m\,y_(i j k)^m\,z_(i j k)^m\)dot.op upright("vol") (Q_(i j k)^m) $

+ Prendo la somma su tutti i cubetti:
  $ sum_(i\,j\,k) f\(x_(i j k)^m\,y_(i j k)^m\,z_(i j k)^m\)dot.op upright("vol") (Q_(i j k)^m) $
  $ = delta_m^3 sum_(i\,j\,k) f\(x_(i j k)^m\,y_(i j k)^m\,z_(i j k)^m\) $

+ Se, per $m arrow.r + oo$, con $delta_m arrow.r 0$, esiste il limite
  $ lim_(m arrow.r + oo) delta_m^3 sum_(i\,j\,k) f\(x_(i j k)^m\,y_(i j k)^m\,z_(i j k)^m\) $
  lo chiamo #strong[integrale triplo di $f$ su $Omega$].
]

#strong[Osservazione:] se $f$ è continua, il limite esiste.

#strong[NOTAZIONE:]
$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z quad\,quad integral_Omega f\(x\,y\,z\)thin d x thin d y thin d z $

== Prime proprietà
<prime-proprietà>
#block[
#set enum(numbering: "1)", start: 1)
+ #strong[Linearità]
]

Siano $f\,g : Omega subset.eq bb(R)^3 arrow.r bb(R)$ continue, e
$alpha\,beta in bb(R)$, allora:
$ integral.triple_Omega [alpha f \( x \, y \, z \) + beta g \( x \, y \, z \)] d x thin d y thin d z = alpha integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z + beta integral.triple_Omega g\(x\,y\,z\)thin d x thin d y thin d z $

#block[
#set enum(numbering: "1)", start: 2)
+ #strong[Additività rispetto al dominio]
]

Presa $f : Omega subset.eq bb(R)^3 arrow.r bb(R)$ continua, se
$Omega = Omega_1 union Omega_2$ con
$upright("vol") (Omega_1 inter Omega_2) = 0$, allora:
$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.triple_(Omega_1) f\(x\,y\,z\)thin d x thin d y thin d z + integral.triple_(Omega_2) f\(x\,y\,z\)thin d x thin d y thin d z $

#block[
#set enum(numbering: "1)", start: 3)
+ #strong[Monotonia]
]

Se $f gt.eq 0$ su $Omega$ $arrow.r.double.long$
$integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z gt.eq 0$

#strong[Conseguenze:] - Se $f gt.eq g$ su $Omega$ $arrow.r.double.long$
$integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z gt.eq integral.triple_Omega g\(x\,y\,z\)thin d x thin d y thin d z$
\-
$lr(|integral.triple_Omega f \( x \, y \, z \) thin d x thin d y thin d z|) lt.eq integral.triple_Omega\|f\(x\,y\,z\)\|thin d x thin d y thin d z$

#block[
#set enum(numbering: "1)", start: 4)
+ Se prendo $f\(x\,y\,z\)= 1$ $forall\(x\,y\,z\)in Omega$, allora:
  $ integral.triple_Omega 1 thin d x thin d y thin d z = upright("vol")\(Omega\) $
]

== Calcolo degli integrali tripli
<calcolo-degli-integrali-tripli>
#strong[Euristica:] provo a spezzare l'integrale triplo in una sequenza
di un integrale doppio e un integrale singolo.

Anche qui è il #strong[dominio] che deve farci capire come ridurre.

=== INTEGRAZIONE PER FILI
<integrazione-per-fili>
#strong[Def. (Dominio convesso in $z$)] \ Diciamo che un dominio
$Omega subset.eq bb(R)^3$ è convesso in $z$ se $Omega$ è una regione di
spazio contenuta tra il grafico di due funzioni delle variabili $x\,y$.

!\[\[Pasted image 20251020164942.png\]\]

In formule:
$ Omega = {\( x \, y \, z \) in bb(R)^3 : \( x \, y \) in D \, thick alpha \( x \, y \) lt.eq z lt.eq beta \( x \, y \)} $

con - $alpha\(x\,y\)= upright("bordo inferiore di ") Omega$ -
$beta\(x\,y\)= upright("bordo superiore di ") Omega$ -
$D = upright("proiezione di ") Omega upright(" sul piano ") x y$

#strong[Oss:] \ $Omega$ non è convesso in $z$ se i filamenti sono
disgiunti.

== Formula di riduzione per domini convessi in $z$:
<formula-di-riduzione-per-domini-convessi-in-z>
$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.double_D (integral_(alpha\(x\,y\))^(beta\(x\,y\)) f \( x \, y \, z \) thin d z) d x thin d y $

#strong[Prima faccio l'integrale singolo in $z$, poi quello doppio in
$x\,y$.]

!\[\[Pasted image 20251020164921.png\]\]

Questa è la formula di integrazione per #strong[fili paralleli all'asse
$z$].

Analogamente, posso avere:

- #strong[domini convessi in $y$] \
  $ Omega = {\( x \, y \, z \) in bb(R)^3 : \( x \, z \) in D \, thick alpha \( x \, z \) lt.eq y lt.eq beta \( x \, z \)} $
  \ con $D = upright("proiezione di ") Omega upright(" sul piano ") x z$

  → #strong[Integrazione per fili paralleli all'asse $y$]: \
  $ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.double_D (integral_(alpha\(x\,z\))^(beta\(x\,z\)) f \( x \, y \, z \) thin d y) d x thin d z $

- #strong[dominio convesso in $x$] \
  $ Omega = {\( x \, y \, z \) in bb(R)^3 : \( y \, z \) in D \, thick alpha \( y \, z \) lt.eq x lt.eq beta \( y \, z \)} $

  → #strong[Integrazione per fili paralleli all'asse $x$]: \
  $ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.double_D (integral_(alpha\(y\,z\))^(beta\(y\,z\)) f \( x \, y \, z \) thin d x) d y thin d z $

== INTEGRAZIONE PER STRATI
<integrazione-per-strati>
Prendiamo $Omega$ come in figura:

- $Omega_(macron(z)) = upright("intersezione tra ") Omega upright(" e il piano ") z = macron(z)$
- $D_(macron(z)) = upright("proiezione di ") Omega_(macron(z)) upright(" sul piano ") x y$

Per ogni $z in\[c\,d\]$ c'è una sezione $D_z$ \
$arrow.r.double.long Omega = {\( x \, y \, z \) in bb(R)^3 : c lt.eq z lt.eq d \, thick \( x \, y \) in D_z}$

con \
$\[c\,d\]= upright("proiezione di ") Omega upright(" sull’asse ") z$

Avendo scelto $Omega$ in questo modo, posso usare la formula di
integrazione per #strong[strati paralleli al piano $x y$]:
$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral_c^d (integral.double_(D_z) f \( x \, y \, z \) thin d x thin d y) d z $

#strong[Prima faccio l'integrale doppio in $x\,y$, poi quello singolo in
$z$.]

Formule assolutamente analoghe si hanno per strati paralleli al piano
$x z$ o al piano $y z$.

== CAMBI DI VARIABILI PER INTEGRALI TRIPLI
<cambi-di-variabili-per-integrali-tripli>
=== Trasformazioni
<trasformazioni>
#strong[Idea:] cerco tre nuove variabili $u\,v\,w$ che diano un sistema
di riferimento in $bb(R)^3$ e cerco il modo di passare da $x\,y\,z$ a
$u\,v\,w$.

$ {x = x\(u\,v\,w\)\
y = y\(u\,v\,w\)\
z = z\(u\,v\,w\) arrow.r.double.long\(x\,y\,z\)= Phi\(u\,v\,w\) $

con $Phi$ campo vettoriale in 3 dimensioni: \
$Phi : Omega' arrow.r Omega$ e: - biunivoco - di classe $C^1$ -
$det J Phi\(u\,v\,w\)eq.not 0 quad forall\(u\,v\,w\)in Omega'$ \ (almeno
fuori di un insieme di volume nullo)

Allora:
$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.triple_(Omega') f (Phi \( u \, v \, w \)) lr(|det J Phi \( u \, v \, w \)|) d u thin d v thin d w $

== CASI SPECIFICI
<casi-specifici>
=== Coordinate cilindriche $\(rho\,theta\,z\)$
<coordinate-cilindriche-rho-theta-z>
- $rho$: distanza di $Q$ dall'origine (proiezione sul piano $x y$)
- $theta$: angolo tra $accent(O x, ⃗)$ e il semiasse positivo delle $x$
- $z$: uguale a $z$ cartesiana

Per definizione: \
$rho in\[0\,+ oo\)\,thick theta in\[0\,2 pi\)\,thick z in bb(R)$

#strong[Domanda:] $\(rho\,theta\,z\)$ sono un sistema di riferimento in
$bb(R)^3$?

- Se fisso il valore di $rho$: \ superficie laterale di un cilindro di
  altezza $1$ e raggio $rho$

- Se fisso $theta$: \ semipiano che parte dell'asse $z$ e inclinato di
  $theta$ rispetto al semiasse positivo delle $x$

Se fisso $rho\,theta$ ottengo una retta $parallel$ all'asse $z$, e
aggiungendo anche $z$, ottengo univocamente un solo punto.

#strong[N.B.] per i punti dell'asse $z$: \ $rho = 0$, ma $theta$
#strong[non è definito].

È un sistema di riferimento.

Come si legano a $x\,y\,z$?

$ {x = rho cos theta\
y = rho sin theta\
z = z arrow.r.double.long Phi\(rho\,theta\,z\)=\(rho cos theta\,rho sin theta\,z\) $

$rho\,theta$ sono le coordinate polari nel piano $x y$.

Quindi:
$ det J Phi\(rho\,theta\,z\)= mat(delim: "|", cos theta, - rho sin theta, 0; sin theta, rho cos theta, 0; 0, 0, 1) = mat(delim: "|", cos theta, - rho sin theta; sin theta, rho cos theta) = rho gt.eq 0 $

ed è nullo solo sull'asse $z$. \#\#\# Nell'integrale:

$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.triple_(Omega') f\(rho cos theta\,rho sin theta\,z\)dot.op rho thin d rho thin d theta thin d z $

#strong[Osservazione:] sono particolarmente utili quando in $Omega$ ci
sono palle del tipo $x^2 + y^2$. \#\#\# Coordinate sferiche
$\(rho\,theta\,phi\)$

- $rho$: distanza di $P$ da $O$
- $theta$: angolo tra $accent(O x, ⃗)$ e il semiasse positivo delle $x$
- $phi$: angolo tra $accent(O z, ⃗)$ e il semiasse positivo delle $z$

Per definizione: \
$rho in\[0\,+ oo\)\,thick theta in\[0\,2 pi\)\,thick phi in\[0\,pi\]$

#strong[Come si legano a $x\,y\,z$?]

$ {x = rho sin phi cos theta\
y = rho sin phi sin theta\
z = rho cos phi arrow.r.double.long Phi\(rho\,theta\,phi\)=\(rho sin phi cos theta\,rho sin phi sin theta\,rho cos phi\) $

Lo Jacobiano è:

$ det J Phi\(rho\,theta\,phi\)= mat(delim: "|", sin phi cos theta, - rho sin phi sin theta, rho cos phi cos theta; sin phi sin theta, rho sin phi cos theta, rho cos phi sin theta; cos phi, 0, - rho sin phi) $
$ = dots.h = - rho^2 sin phi $

Siccome $phi in\[0\,pi\]arrow.r.double.long sin phi gt.eq 0$ \
$arrow.r.double.long - rho^2 sin phi lt.eq 0$

Quindi: $ lr(|det J Phi \( rho \, theta \, phi \)|) = rho^2 sin phi $
\#\#\# Nell'integrale:

$ integral.triple_Omega f\(x\,y\,z\)thin d x thin d y thin d z = integral.triple_(Omega') f\(rho sin phi cos theta\,rho sin phi sin theta\,rho cos phi\)dot.op rho^2 sin phi thin d rho thin d theta thin d phi $

#strong[Osservazione:] sono particolarmente utili quando in $Omega$ ci
sono palle del tipo $x^2 + y^2 + z^2$.

= L11 ANL2
<l11-anl2>
22/10/2025 \# Esercizi integrali tripli con sostituzione Non mi sembra
il caso di andare a ricopiare dei banali esercizi, quindi questa lezione
sarà vuota.

= L12 ANL2
<l12-anl2>
26/10/2025 \# Curve parametriche

== Definizione di curva parametrica
<definizione-di-curva-parametrica>
Una curva parametrica è una funzione continua
$gamma :\[a\,b\]arrow.r bb(R)^n$. Ad esempio, in $bb(R)^3$:

$ gamma\(t\)=\(x\(t\)\,y\(t\)\,z\(t\)\)\,quad forall t in\[a\,b\] $

#quote(block: true)[
Graficamente, si rappresenta il parametro $t$ sull'intervallo $\[a\,b\]$
e il corrispondente percorso $gamma\(t\)$ nello spazio $bb(R)^3$, con
assi $x$, $y$, $z$, che va dal punto $gamma\(a\)$ al punto $gamma\(b\)$.
]

== Curve di classe $C^1$
<curve-di-classe-c1>
La curva $gamma :\[a\,b\]arrow.r bb(R)^3$ si dice di classe $C^1$ se le
sue componenti $x\(t\)$, $y\(t\)$, $z\(t\)$ sono tutte funzioni di
classe $C^1$ sull'intervallo $\[a\,b\]$.

== Sostegno di una curva
<sostegno-di-una-curva>
L'immagine della curva $gamma :\[a\,b\]arrow.r bb(R)^n$, cioè

$ gamma\(\[a\,b\]\):= {P in bb(R)^n : exists thin t in \[ a \, b \] upright(" tale che ") gamma \( t \) = P} $

si dice #strong[sostegno della curva] $gamma$.

=== Osservazione sul sostegno
<osservazione-sul-sostegno>
Graficamente, il sostegno è il disegno nello spazio di arrivo di tutti i
punti toccati almeno una volta dalla curva $gamma$.

#quote(block: true)[
#strong[Attenzione]: sostegno e curva sono due cose diverse.
]

Curve diverse possono avere lo stesso sostegno.

==== Esempio
<esempio-5>
Siano le curve $gamma_1 :\[0\,1\]arrow.r bb(R)^2$ e
$gamma_2 :\[0\,1\]arrow.r bb(R)^2$ definite da:

$ gamma_1\(t\)=\(t\,t\)\,quad gamma_2\(t\)=\(t^2\,t^2\) $

Notiamo che:

- $gamma_1\(0\)=\(0\,0\)= gamma_2\(0\)$
- $gamma_1\(1\)=\(1\,1\)= gamma_2\(1\)$

Inoltre, siccome le due componenti di $gamma_1$ sono uguali tra loro per
ogni $t$, il sostegno di $gamma_1$ si trova sulla retta $x = y$.

== Esempi di curve
<esempi-di-curve>
=== Esempio 1: Circonferenza
<esempio-1-circonferenza>
Sia la curva $gamma :\[0\,2 pi\]arrow.r bb(R)^2$ definita da:

$ gamma\(t\)=\(R cos t\,R sin t\)\,quad upright("con ") R > 0 upright(" fissato") $

!\[\[Pasted image 20251026162322.png\]\]

#strong[Qual è il sostegno di $gamma$?]

Notiamo che:

$ x^2\(t\)+ y^2\(t\)= R^2 cos^2 t + R^2 sin^2 t = R^2\(cos^2 t + sin^2 t\)= R^2\,quad forall t in\[0\,2 pi\] $

$arrow.r.double$ I punti del sostegno di $gamma$ verificano l'equazione:

$ x^2\(t\)+ y^2\(t\)= R^2 $

che rappresenta una #strong[circonferenza di centro $\(0\,0\)$ e raggio
$R$].

=== Esempio 2: Spirale
<esempio-2-spirale>
Sia la curva $gamma :\[0\,6 pi\]arrow.r bb(R)^2$ definita da:

$ gamma\(t\)=\(t cos t\,t sin t\) $

#strong[Qual è il sostegno di $gamma$?]

Notiamo che:

$ x^2\(t\)+ y^2\(t\)= t^2 cos^2 t + t^2 sin^2 t = t^2 $

$arrow.r.double$ Il punto $gamma\(t\)$ si allontana sempre più
dall'origine $\(0\,0\)$ al crescere di $t$.

#quote(block: true)[
#strong[Qualitativamente], il sostegno è una #strong[spirale in
$bb(R)^2$].
]

=== Esempio 3: Spirale in $bb(R)^3$
<esempio-3-spirale-in-mathbbr3>
Sia la curva $gamma : [0 \, 5 / 2 pi] arrow.r bb(R)^3$ definita da:

$ gamma\(t\)=\(cos t\,sin t\,t\) $

!\[\[Pasted image 20251026162421.png|350\]\]|

#strong[Qual è il sostegno di $gamma$?]

Notiamo che:

$ x^2\(t\)+ y^2\(t\)= cos^2 t + sin^2 t = 1\,quad forall t $

$arrow.r.double$ Il punto $gamma\(t\)$ sta sempre sulla superficie del
cilindro di equazione:

$ x^2 + y^2 = 1 quad upright("in ") bb(R)^3 $

#quote(block: true)[
#strong[Qualitativamente], il sostegno è un'#strong[elisse in $bb(R)^3$]
(più precisamente, una elicoidale o elica circolare).
]

== Vettore tangente e curve regolari
<vettore-tangente-e-curve-regolari>
=== Definizione di vettore tangente
<definizione-di-vettore-tangente>
Data una curva $gamma :\[a\,b\]arrow.r bb(R)^n$ di classe $C^1$, si dice
#strong[vettore tangente] a $gamma\(t\)$ o #strong[velocità] di
$gamma\(t\)$ il vettore $gamma'\(t\)$. Ad esempio, se
$gamma :\[a\,b\]arrow.r bb(R)^3$, con
$gamma\(t\)=\(x\(t\)\,y\(t\)\,z\(t\)\)$, allora:

$ gamma'\(t\)=\(x'\(t\)\,y'\(t\)\,z'\(t\)\) $

!\[\[Pasted image 20251026162535.png|450\]\]

#quote(block: true)[
#emph[Graficamente]: il vettore tangente $gamma'\(t_1\)$ e
$gamma'\(t_2\)$ sono rappresentati come frecce che partono dai punti
$gamma\(t_1\)$ e $gamma\(t_2\)$ sulla curva, indicando la direzione
istantanea del moto.
]

=== Definizione di curva regolare
<definizione-di-curva-regolare>
Una curva $gamma :\[a\,b\]arrow.r bb(R)^n$ si dice #strong[regolare] se:

+ $gamma in C^1$
+ $gamma'\(t\)eq.not arrow(0)$ (vettore nullo) per ogni $t in\[a\,b\]$

La curva $gamma$ si dice #strong[regolare a tratti] se esistono punti
$a < c_1 < c_2 < dots.h < c_n < b$ tali che $gamma$ è regolare su tutti
gli intervalli $\[a\,c_1\]$, $\[c_1\,c_2\]$, $\[c_2\,c_3\]$, …,
$\[c_n\,b\]$.

#quote(block: true)[
#emph[Graficamente]: una curva irregolare può presentare “spigoli” o
punti angolosi nei punti $c_1\,c_2\,c_3$, dove la derivata non è
definita o è nulla, ma è regolare sui tratti intermedi.
]

Di seguito riporto invece l'esempio di una curva irregolare: !\[\[Pasted
image 20251026162634.png|350\]\]

=== Esempio tipico di curva regolare a tratti
<esempio-tipico-di-curva-regolare-a-tratti>
Un esempio tipico di curva regolare a tratti è il bordo di un poligono.
La curva è costituita da segmenti rettilinei (regolari) collegati tra
loro, con possibili spigoli ai vertici.

=== Definizione di curva semplice
<definizione-di-curva-semplice>
Una curva $gamma :\[a\,b\]arrow.r bb(R)^n$ si dice #strong[semplice] se
$gamma$ è iniettiva su $\[a\,b\)$, cioè:

$ t_1 eq.not t_2 quad arrow.r.double quad gamma\(t_1\)eq.not gamma\(t_2\) $

#quote(block: true)[
#emph[Graficamente], ciò significa che il sostegno di $gamma$ non ha
auto-intersezioni.
]

=== Definizione di curva chiusa
<definizione-di-curva-chiusa>
Una curva $gamma :\[a\,b\]arrow.r bb(R)^n$ si dice #strong[chiusa] se:

$ gamma\(a\)= gamma\(b\) $

== Parametrizzazione di un sostegno
<parametrizzazione-di-un-sostegno>
Quando ci viene dato il sostegno di una curva $gamma$ e dobbiamo trovare
le equazioni di una curva che lo percorre, si dice che dobbiamo
#strong[parametrizzare] quel sostegno.

In generale, questo può essere molto difficile.

=== Caso semplice: curve cartesiane nel piano
<caso-semplice-curve-cartesiane-nel-piano>
Una curva in $bb(R)^2$ si dice #strong[cartesiana] se è il grafico di
una funzione in una variabile $f :\[a\,b\]arrow.r bb(R)$.

#quote(block: true)[
#emph[\(Disegno schematico: piano cartesiano con asse $x$ e $y$. Una
curva liscia che rappresenta il grafico di una funzione $f$. Un punto
generico sulla curva è indicato come $\(t\,f\(t\)\)$\.)]
]

In questo caso, una parametrizzazione banale è:

$ gamma\(t\)=\(t\,f\(t\)\) $

=== Esempio: Parametrizzare il grafico di $log x$ su $\[1\,2\]$
<esempio-parametrizzare-il-grafico-di-log-x-su-12>
La funzione è $f\(x\)= log x$, definita sull'intervallo $\[1\,2\]$.

$arrow.r.double$ Una parametrizzazione naturale è:

$ gamma\(t\)=\(t\,log t\)\,quad gamma :\[1\,2\]arrow.r bb(R)^2 $

== Lunghezza di una curva
<lunghezza-di-una-curva>
=== Definizione
<definizione-1>
Sia $gamma :\[a\,b\]arrow.r bb(R)^n$ una curva regolare a tratti. La
#strong[lunghezza] di $gamma$ è definita come:

$ upright("lung")_b\(gamma\):= integral_a^b\|gamma'\(t\)\|thin d t $

Per esempio, se $gamma :\[a\,b\]arrow.r bb(R)^3$, con
$gamma\(t\)=\(x\(t\)\,y\(t\)\,z\(t\)\)$, allora:

$ upright("lung")_b\(gamma\)= integral_a^b sqrt(\(x'\(t\)\)^2 +\(y'\(t\)\)^2 +\(z'\(t\)\)^2) thin d t $

#quote(block: true)[
#strong[Osservazione]: questa definizione coincide con la lunghezza del
sostegno solo se la curva è semplice.
]

!\[\[Pasted image 20251026162723.png|450\]\]

=== Giustificazione costruttiva della formula
<giustificazione-costruttiva-della-formula>
Perché proprio questa formula?

Consideriamo un piccolo pezzo del sostegno della curva, tra i punti
$gamma\(t_m\)$ e $gamma\(t_(m + 1)\)$. Se l'intervallo
$\[t_m\,t_(m + 1)\]$ è sufficientemente piccolo, il segmento che
congiunge i due punti approssima bene l'arco di curva.

Approssimando la lunghezza dell'arco nello spazio con la lunghezza del
segmento rettilineo che lo congiunge, si ha:

$ upright("lunghezza dell’arco") approx upright("lunghezza del segmento") =\|gamma\(t_(m + 1)\)- gamma\(t_m\)\| $

Per il teorema di Lagrange (o del valor medio), se $gamma$ è derivabile,
esiste un punto $xi_m in\(t_m\,t_(m + 1)\)$ tale che:

$ \|gamma\(t_(m + 1)\)- gamma\(t_m\)\|approx\|gamma'\(xi_m\)\|dot.op\(t_(m + 1) - t_m\) $

Se consideriamo una partizione dell'intervallo $\[a\,b\]$ in $N$
sottointervalli di ampiezza $\(t_(m + 1) - t_m\)$, sommando su tutti i
pezzi otteniamo:

$ upright("lung")_b\(gamma\)approx sum_(m = 1)^N\|gamma'\(t_m\)\|\(t_(m + 1) - t_m\) $

Passando al limite per $N arrow.r + oo$, la sommatoria diventa
l'integrale:

$ upright("lung")_b\(gamma\)= integral_a^b\|gamma'\(t\)\|thin d t $

= L13 ANL2
<l13-anl2>
27/10/2025

= Integrali curvilinei
<integrali-curvilinei>
#strong[Idea]: Integrare su un dominio di integrazione che è una curva
parametrica. \#\# Possibile applicazione: - Grafico di $f\(x\,y\)$
ristretto al percorso curvilineo nel dominio $D$. - Nel dominio, si
integra lungo un percorso 1D. - Area = $? ?$

== Tipologie di integrali curvilinei:
<tipologie-di-integrali-curvilinei>
=== 1ª specie:
<ª-specie>
Integrale di una funzione scalare lungo una curva.

=== 2ª specie:
<ª-specie-1>
Integrale di un campo vettoriale lungo una curva orientata.

== Definizione (integrale curvilineo di 1ª specie)
<definizione-integrale-curvilineo-di-1ª-specie>
Sia $gamma :\[a\,b\]arrow.r bb(R)^m$ una curva regolare e sia
$f : bb(R)^m arrow.r bb(R)$ continua. Si definisce #strong[integrale
curvilineo di $f$ lungo $gamma$] (o integrale curvilineo di 1ª specie)
la quantità:

$ integral_gamma f thin d s := integral_a^b f\(gamma\(t\)\)thin parallel gamma'\(t\)parallel thin d t $

=== Osservazioni:
<osservazioni>
- Se $gamma :\[a\,b\]arrow.r bb(R)^2$, con
  $gamma\(t\)=\(x\(t\)\,y\(t\)\)$ e $f : bb(R)^2 arrow.r bb(R)$, allora:
  $ integral_gamma f thin d s = integral_a^b f\(x\(t\)\,y\(t\)\)sqrt(\(x'\(t\)\)^2 +\(y'\(t\)\)^2) thin d t $

- Se $gamma :\[a\,b\]arrow.r bb(R)^3$, con
  $gamma\(t\)=\(x\(t\)\,y\(t\)\,z\(t\)\)$ e $f : bb(R)^3 arrow.r bb(R)$,
  allora:
  $ integral_gamma f thin d s = integral_a^b f\(x\(t\)\,y\(t\)\,z\(t\)\)sqrt(\(x'\(t\)\)^2 +\(y'\(t\)\)^2 +\(z'\(t\)\)^2) thin d t $

=== Caso particolare:
<caso-particolare>
Se $f\(x\,y\,z\)= 1$ per ogni $\(x\,y\,z\)$, allora:

$ integral_gamma 1 thin d s = integral_a^b parallel gamma'\(t\)parallel thin d t = upright("lunghezza di ") gamma $

dove $gamma :\[a\,b\]arrow.r bb(R)^3$.

=== Osservazione:
<osservazione-2>
Abbiamo definito l'integrale curvilineo per curve regolari. Se
$gamma :\[a\,b\]arrow.r bb(R)^m$ è regolare a tratti, cioè $gamma$ è
unione di un numero finito $gamma_1\,gamma_2\,dots.h\,gamma_k$ di curve
regolari, allora:

$ integral_gamma f thin d s = integral_(gamma_1) f thin d s + integral_(gamma_2) f thin d s + dots.h + integral_(gamma_k) f thin d s $

== Esempio:
<esempio-6>
Calcolare $integral_gamma x^2 y thin d s$ con $gamma$ il bordo del
semicerchio superiore di centro $\(0\,0\)$ e raggio $2$, percorso
esattamente una volta.

Disegno del sostegno di $gamma$: - Il sostegno è la semicirconferenza
superiore centrata nell'origine con raggio $2$. - È #strong[regolare a
tratti] (in questo caso, si può parametrizzare come un'unica curva
regolare).

Per parametrizzare il sostegno della curva $gamma$, si procede in due
parti:

+ #strong[Arco di circonferenza] da $\(2\,0\)$ a $\(- 2\,0\)$:
  $ gamma_1\(t\)=\(2 cos t\,2 sin t\)\,quad t in\[0\,pi\] $ con
  derivata: $ gamma'_1\(t\)=\(- 2 sin t\,2 cos t\) $

+ #strong[Segmento di retta] da $\(- 2\,0\)$ a $\(2\,0\)$:
  $ gamma_2\(t\)=\(t\,0\)\,quad t in\[- 2\,2\] $ con derivata:
  $ gamma'_2\(t\)=\(1\,0\) $

Pertanto, $gamma = gamma_1 union gamma_2$.

Calcolo dell'integrale:

$ integral_gamma x^2 y thin d s = integral_(gamma_1) x^2 y thin d s + integral_(gamma_2) x^2 y thin d s $

Sostituendo le parametrizzazioni:

- Per $gamma_1$:
  $ integral_0^pi\(2 cos t\)^2 dot.op\(2 sin t\)dot.op sqrt(\(- 2 sin t\)^2 +\(2 cos t\)^2) thin d t $

- Per $gamma_2$:
  $ integral_(- 2)^2 t^2 dot.op 0 dot.op sqrt(1^2 + 0^2) thin d t = integral_(- 2)^2 0 thin d t = 0 $

Semplificando l'integrale su $gamma_1$:

$ = integral_0^pi 4 cos^2 t dot.op 2 sin t dot.op sqrt(4 sin^2 t + 4 cos^2 t) thin d t = integral_0^pi 8 cos^2 t sin t dot.op sqrt(4\(sin^2 t + cos^2 t\)) thin d t $

$ = integral_0^pi 8 cos^2 t sin t dot.op 2 thin d t = 16 integral_0^pi cos^2 t sin t thin d t $
Risolvendo l'integrale definito:

$ = - 16 [frac(cos^3 t, 3)]_0^pi = - 16 (frac(cos^3 pi, 3) - frac(cos^3 0, 3)) = - 16 (frac(\(- 1\)^3, 3) - frac(\(1\)^3, 3)) = - 16 (- 1 / 3 - 1 / 3) = - 16 (- 2 / 3) = 32 / 3 $
Il risultato finale è quindi: $ integral_gamma x^2 y thin d s = 32 / 3 $

== Definizione (integrale curvilineo di 2ª specie)
<definizione-integrale-curvilineo-di-2ª-specie>
Sia $gamma :\[a\,b\]arrow.r bb(R)^m$ una curva regolare e sia
$upright(bold(F)) : bb(R)^m arrow.r bb(R)^m$ un campo vettoriale
continuo. Si definisce #strong[integrale curvilineo di
$upright(bold(F))$ lungo $gamma$] (o integrale curvilineo di 2ª specie)
la quantità:

$ integral_gamma upright(bold(F)) dot.op d upright(bold(l)) := integral_gamma upright(bold(F)) dot.op upright(bold(tau)) thin d s $

dove: - $upright(bold(tau))$ è il versore tangente alla curva $gamma$,
orientato nel verso del moto. - Il prodotto
$upright(bold(F)) dot.op upright(bold(tau))$ è un prodotto scalare, che
restituisce una funzione scalare.

=== Osservazione:
<osservazione-3>
La definizione di integrale curvilineo di 2ª specie si ricava da quella
di 1ª specie considerando il campo scalare
$f = upright(bold(F)) dot.op upright(bold(tau))$:

$ integral_gamma upright(bold(F)) dot.op d upright(bold(l)) = integral_gamma\(upright(bold(F)) dot.op upright(bold(tau))\)thin d s = integral_gamma upright(bold(F)) dot.op frac(gamma'\(t\), parallel gamma'\(t\)parallel) thin d s $

Sostituendo la definizione di
$d s = parallel gamma'\(t\)parallel thin d t$:

$ = integral_a^b upright(bold(F))\(gamma\(t\)\)dot.op frac(gamma'\(t\), parallel gamma'\(t\)parallel) dot.op parallel gamma'\(t\)parallel thin d t = integral_a^b upright(bold(F))\(gamma\(t\)\)dot.op gamma'\(t\)thin d t $

Per un campo $upright(bold(F)) : bb(R)^2 arrow.r bb(R)^2$ con
$gamma\(t\)=\(x\(t\)\,y\(t\)\)$, si ha:

$ integral_gamma upright(bold(F)) dot.op d upright(bold(l)) = integral_a^b [F_1 \( x \( t \) \, y \( t \) \) dot.op x' \( t \) + F_2 \( x \( t \) \, y \( t \) \) dot.op y' \( t \)] thin d t $

=== Interpretazione fisica (lavoro di un campo vettoriale)
<interpretazione-fisica-lavoro-di-un-campo-vettoriale>
L'integrale curvilineo di 2ª specie
$integral_gamma upright(bold(F)) dot.op d upright(bold(l))$ rappresenta
il #strong[lavoro] compiuto dal campo vettoriale $upright(bold(F))$
lungo la curva $gamma$.

- Si considera una suddivisione dell'intervallo $\[a\,b\]$ in
  sottointervalli $\[t_m\,t_(m + 1)\]$.
- Il lavoro elementare lungo il tratto della curva da $gamma\(t_m\)$ a
  $gamma\(t_(m + 1)\)$ è approssimato da:
  $ upright(bold(F))\(gamma\(t_m\)\)dot.op\(gamma\(t_(m + 1)\)- gamma\(t_m\)\) $
- Applicando il teorema di Lagrange e passando al limite per
  $m arrow.r + oo$, si ottiene la somma di Riemann:
  $ sum_m upright(bold(F))\(gamma\(t_m\)\)dot.op gamma'\(t_m\)\(t_(m + 1) - t_m\) $
- Al limite, questa somma converge all'integrale definito:
  $ integral_a^b upright(bold(F))\(gamma\(t\)\)dot.op gamma'\(t\)thin d t = integral_gamma upright(bold(F)) dot.op d upright(bold(l)) $

Quindi, il lavoro totale di $upright(bold(F))$ lungo $gamma$ è dato da:

$ upright("Lavoro") = integral_gamma upright(bold(F)) dot.op d upright(bold(l)) $

=== Osservazione 1: Curva chiusa e circuitazione
<osservazione-1-curva-chiusa-e-circuitazione>
Se $gamma$ è una curva #strong[chiusa], l'integrale curvilineo di
$upright(bold(F))$ lungo $gamma$ si chiama #strong[circuitazione] di
$upright(bold(F))$ lungo $gamma$:

$ integral.cont_gamma upright(bold(F)) dot.op d upright(bold(l)) $

=== Osservazione 2: Dipendenza dal verso di percorrenza
<osservazione-2-dipendenza-dal-verso-di-percorrenza>
- Per gli #strong[integrali di 1ª specie] (integrale di una funzione
  scalare), il valore #strong[non dipende] dal verso di percorrenza
  della curva. Se $gamma_1$ e $gamma_2$ sono la stessa curva percorsa in
  versi opposti, allora:
  $ integral_(gamma_1) f thin d s = integral_(gamma_2) f thin d s $

- Per gli #strong[integrali di 2ª specie] (integrale di un campo
  vettoriale), il valore #strong[dipende] dal verso di percorrenza. Se
  $gamma_1$ e $gamma_2$ sono la stessa curva percorsa in versi opposti,
  allora:
  $ integral_(gamma_1) upright(bold(F)) dot.op d upright(bold(l)) = - integral_(gamma_2) upright(bold(F)) dot.op d upright(bold(l)) $

Questa proprietà discende direttamente dalla definizione, poiché
invertire il verso di percorrenza equivale a cambiare il segno del
vettore tangente $gamma'\(t\)$.

= L14 ANL2
<l14-anl2>
29/10/2025

= Esistenza di Primitive e Campi Gradienti
<esistenza-di-primitive-e-campi-gradienti>
== Funzioni Reali di Una Variabile
<funzioni-reali-di-una-variabile>
Sia $f : bb(R) arrow.r bb(R)$ una funzione continua. Allora esiste una
funzione $F : bb(R) arrow.r bb(R)$ tale che:

$ F'\(x\)= f\(x\)quad forall x in bb(R) $

La funzione $F$ è detta #strong[primitiva] di $f$. Un esempio di
primitiva è data dall'integrale definito:

$ F\(x\)= integral_a^x f\(t\)thin d t $

== Generalizzazione a $bb(R)^m$ con $m gt.eq 2$
<generalizzazione-a-mathbbrm-con-m-geq-2>
Analogamente, si potrebbe chiedere se, data una funzione continua
$F : bb(R)^m arrow.r bb(R)^m$ (con $m gt.eq 2$), esista una funzione
$U : bb(R)^m arrow.r bb(R)$ tale che:

$ F = nabla U $

In generale, la risposta è #strong[no].

=== Controesempio in $bb(R)^2$
<controesempio-in-mathbbr2>
Consideriamo la funzione $F : bb(R)^2 arrow.r bb(R)^2$ definita da:

$ F\(x\,y\)=\(- y\,x\) $

Non è possibile scrivere $F$ come gradiente di alcuna funzione
$U : bb(R)^2 arrow.r bb(R)$.

Per convincersene, supponiamo per assurdo che esista una funzione
$U : bb(R)^2 arrow.r bb(R)$ tale che:

$ nabla U\(x\,y\)=\(- y\,x\)quad forall\(x\,y\)in bb(R)^2 $

== Dimostrazione per Assurdo: Il Teorema di Schwarz
<dimostrazione-per-assurdo-il-teorema-di-schwarz>
Supponendo che esista una funzione $U : bb(R)^2 arrow.r bb(R)$ tale che
$nabla U\(x\,y\)=\(- y\,x\)$, allora le sue derivate parziali devono
soddisfare:

$ {frac(partial U, partial x)\(x\,y\)= - y\
frac(partial U, partial y)\(x\,y\)= x $

Poiché le derivate parziali $frac(partial U, partial x)$ e
$frac(partial U, partial y)$ sono funzioni continue (essendo
polinomiali), ne consegue che $U in C^2\(bb(R)^2\)$. Per il
#strong[Teorema di Schwarz], le derivate parziali miste devono essere
uguali:

$ frac(partial^2 U, partial x partial y)\(x\,y\)= frac(partial^2 U, partial y partial x)\(x\,y\)quad forall\(x\,y\)in bb(R)^2 $

Tuttavia, calcolando le derivate miste a partire dalle ipotesi:

$ frac(partial^2 U, partial x partial y)\(x\,y\)= frac(partial, partial x) (frac(partial U, partial y)) = frac(partial, partial x)\(x\)= 1 $

$ frac(partial^2 U, partial y partial x)\(x\,y\)= frac(partial, partial y) (frac(partial U, partial x)) = frac(partial, partial y)\(- y\)= - 1 $

Si ottiene una contraddizione, poiché $1 eq.not - 1$.

$ arrow.r.double upright("Impossibile.") $

Pertanto, la funzione $F\(x\,y\)=\(- y\,x\)$ non può essere il gradiente
di alcuna funzione scalare $U$.

= Campi Conservativi
<campi-conservativi>
== Definizione di Insieme Connesso
<definizione-di-insieme-connesso>
Un insieme $Omega subset.eq bb(R)^m$ si dice #strong[connesso] se, per
ogni coppia di punti nell'insieme, esiste una curva che li connette e
che è totalmente contenuta in $Omega$.

- #strong[Esempi di insiemi connessi:] un disco, un anello (anche se
  "bucato"), o qualsiasi regione senza "buchi" che separino le
  componenti.
- #strong[Esempio di insieme non connesso:] due dischi separati, poiché
  non esiste una curva continua che colleghi un punto del primo disco a
  un punto del secondo senza uscire dall'insieme.

#quote(block: true)[
#emph[Intuitivamente: "Connesso" = "fatto di un unico pezzo".]
]

== Definizione di Campo Conservativo
<definizione-di-campo-conservativo>
Sia $Omega subset.eq bb(R)^m$ un insieme connesso e sia
$F : Omega arrow.r bb(R)^m$ un campo vettoriale continuo. Il campo $F$
si dice #strong[conservativo] su $Omega$ se esiste una funzione
$U : Omega arrow.r bb(R)$ tale che:

$ nabla U\(arrow(r)\)= F\(arrow(r)\)quad forall arrow(r) in Omega $

Tale funzione $U$ viene chiamata #strong[potenziale] di $F$.

== Osservazione: Infiniti Potenziali
<osservazione-infiniti-potenziali>
Se $U$ è un potenziale per il campo conservativo $F$, allora anche
$U + c$, con $c in bb(R)$, è un potenziale per $F$. Ciò significa che un
campo conservativo ammette #strong[infiniti potenziali], tutti
differenziati da una costante additiva.

== Teorema Fondamentale per i Campi Conservativi
<teorema-fondamentale-per-i-campi-conservativi>
Sia $F : Omega subset.eq bb(R)^m arrow.r bb(R)^m$ un campo conservativo
e sia $gamma :\[a\,b\]arrow.r Omega$ una curva regolare. Allora:

$ integral_gamma F dot.op d arrow(l) = U\(gamma\(b\)\)- U\(gamma\(a\)\) $

dove $U$ è un potenziale di $F$.

=== Conseguenza Importante
<conseguenza-importante>
Questo teorema implica che il lavoro compiuto dal campo $F$ lungo un
percorso dipende #strong[solo] dai punti iniziale e finale, e non dal
percorso stesso. In altre parole, il valore dell'integrale di linea è
indipendente dalla traiettoria scelta tra i due punti.

= Teorema di Caratterizzazione dei Campi Conservativi
<teorema-di-caratterizzazione-dei-campi-conservativi>
Sia $F : Omega subset.eq bb(R)^m arrow.r bb(R)^m$ un campo vettoriale
continuo. Le seguenti tre affermazioni sono equivalenti:

+ #strong[$F$ è conservativo in $Omega$.]
  - Esiste un potenziale $U : Omega arrow.r bb(R)$ tale che
    $nabla U = F$.
+ #strong[L'integrale di linea è indipendente dal percorso.]
  - Se $gamma_1$ e $gamma_2$ sono due curve regolari e semplici in
    $Omega$ con lo stesso punto di partenza $A$ e lo stesso punto di
    arrivo $B$, allora:
    $ integral_(gamma_1) F dot.op d arrow(l) = integral_(gamma_2) F dot.op d arrow(l) $
+ #strong[L'integrale di linea su una curva chiusa è nullo.]
  - Se $gamma$ è una curva regolare e chiusa in $Omega$, allora:
    $ integral.cont_gamma F dot.op d arrow(l) = 0 $

== Problemi Pratici
<problemi-pratici>
+ #strong[Come riconoscere se un campo $F$ è conservativo?]
  - Verificare se le condizioni del teorema sopra enunciato sono
    soddisfatte (ad esempio, controllando se l'integrale lungo una curva
    chiusa qualsiasi è nullo).
+ #strong[Se $F$ è conservativo, come calcolare esplicitamente un
  potenziale?]
  - Risolvere il sistema di equazioni differenziali parziali dato da
    $nabla U = F$, integrando le componenti del campo.

= Costruzione Esplicita di un Potenziale
<costruzione-esplicita-di-un-potenziale>
Sia $F : bb(R)^2 arrow.r bb(R)^2$ un campo vettoriale continuo, con
componenti $F\(x\,y\)=\(F_1\(x\,y\)\,F_2\(x\,y\)\)$. Supponiamo che $F$
sia conservativo. Cerchiamo una funzione $U : bb(R)^2 arrow.r bb(R)$
tale che:

$ nabla U\(x\,y\)= F\(x\,y\)quad forall\(x\,y\)in bb(R)^2 $

Questo equivale a risolvere il sistema:

$ {frac(partial U, partial x)\(x\,y\)= F_1\(x\,y\)\
frac(partial U, partial y)\(x\,y\)= F_2\(x\,y\) $

== Procedura
<procedura>
=== Step 1: Integrazione Parziale
<step-1-integrazione-parziale>
Integriamo la prima equazione rispetto alla variabile $x$, trattando $y$
come costante. Otteniamo:

$ U\(x\,y\)= integral F_1\(x\,y\)thin d x + c\(y\) $

Dove $c\(y\)$ è una funzione arbitraria che dipende solo da $y$, poiché
la derivata parziale rispetto a $x$ di qualsiasi funzione di $y$ è
nulla.

=== Step 2: Determinazione della Funzione $c\(y\)$
<step-2-determinazione-della-funzione-cy>
Sostituiamo l'espressione trovata per $U\(x\,y\)$ nella seconda
equazione del sistema:

$ frac(partial, partial y) (integral F_1 \( x \, y \) thin d x + c \( y \)) = F_2\(x\,y\) $

Applicando la derivata parziale rispetto a $y$:

$ frac(partial, partial y) (integral F_1 \( x \, y \) thin d x) + c'\(y\)= F_2\(x\,y\) $

Isoliamo $c'\(y\)$:

$ c'\(y\)= F_2\(x\,y\)- frac(partial, partial y) (integral F_1 \( x \, y \) thin d x) $

Infine, integriamo rispetto a $y$ per trovare $c\(y\)$:

$ c\(y\)= integral [F_2 \( x \, y \) - frac(partial, partial y) (integral F_1 \( x \, y \) thin d x)] d y $

Questa espressione, se ben definita e indipendente da $x$, fornisce la
funzione incognita $c\(y\)$, completando la costruzione del potenziale
$U\(x\,y\)$.

= Costruzione di un Potenziale in $bb(R)^3$
<costruzione-di-un-potenziale-in-mathbbr3>
Il metodo descritto per $bb(R)^2$ si generalizza direttamente a
$bb(R)^3$. Sia $F : bb(R)^3 arrow.r bb(R)^3$ un campo vettoriale
continuo, con componenti
$F\(x\,y\,z\)=\(F_1\(x\,y\,z\)\,F_2\(x\,y\,z\)\,F_3\(x\,y\,z\)\)$, e
supponiamo che sia conservativo. Cerchiamo $U : bb(R)^3 arrow.r bb(R)$
tale che $nabla U = F$.

== Procedura
<procedura-1>
=== Step 1: Integrazione Parziale rispetto a $x$
<step-1-integrazione-parziale-rispetto-a-x>
Integriamo la prima componente del gradiente:

$ frac(partial U, partial x)\(x\,y\,z\)= F_1\(x\,y\,z\) $

Ottenendo:

$ U\(x\,y\,z\)= integral F_1\(x\,y\,z\)thin d x + c\(y\,z\) $

Dove $c\(y\,z\)$ è una funzione arbitraria che dipende solo da $y$ e
$z$.

=== Step 2: Determinazione della Funzione $c\(y\,z\)$
<step-2-determinazione-della-funzione-cyz>
Sostituiamo l'espressione di $U$ nella seconda equazione del sistema:

$ frac(partial U, partial y)\(x\,y\,z\)= F_2\(x\,y\,z\) $

Calcolando la derivata parziale rispetto a $y$:

$ frac(partial, partial y) (integral F_1 \( x \, y \, z \) thin d x + c \( y \, z \)) = F_2\(x\,y\,z\) $

Da cui:

$ frac(partial, partial y) (integral F_1 \( x \, y \, z \) thin d x) + frac(partial c, partial y)\(y\,z\)= F_2\(x\,y\,z\) $

Isoliamo $frac(partial c, partial y)$:

$ frac(partial c, partial y)\(y\,z\)= F_2\(x\,y\,z\)- frac(partial, partial y) (integral F_1 \( x \, y \, z \) thin d x) $

Integriamo ora rispetto a $y$:

$ c\(y\,z\)= integral [F_2 \( x \, y \, z \) - frac(partial, partial y) (integral F_1 \( x \, y \, z \) thin d x)] d y + k\(z\) $

Dove $k\(z\)$ è una nuova funzione arbitraria che dipende solo da $z$.

=== Step 3: Determinazione della Funzione $k\(z\)$
<step-3-determinazione-della-funzione-kz>
Infine, sostituiamo l'espressione completa di $U\(x\,y\,z\)$ nella terza
equazione del sistema:

$ frac(partial U, partial z)\(x\,y\,z\)= F_3\(x\,y\,z\) $

Questa equazione permetterà di determinare $k\(z\)$, completando la
costruzione esplicita del potenziale.

= Condizioni per la Conservatività di un Campo Vettoriale
<condizioni-per-la-conservatività-di-un-campo-vettoriale>
Ritorniamo al problema pratico: dato un campo vettoriale continuo
$F : Omega subset.eq bb(R)^3 arrow.r bb(R)^3$, come riconoscere se è
conservativo?

== Ricerca di una Condizione Sufficiente
<ricerca-di-una-condizione-sufficiente>
Invece di cercare una condizione necessaria e sufficiente (che può
essere complessa), è spesso più utile trovare una #strong[condizione
sufficiente] per la conservatività. Questo significa trovare un criterio
che, se soddisfatto, garantisce che il campo sia conservativo.

#quote(block: true)[
#emph[Nota Bene: Non si tratta di una domanda banale. In generale, è più
semplice trovare una condizione necessaria.]
]

== Condizione Necessaria
<condizione-necessaria>
Se $F$ è conservativo, allora esiste un potenziale $U$ tale che
$nabla U = F$. Se inoltre $F$ è di classe $C^1\(Omega\)$, allora anche
$U$ sarà di classe $C^2\(Omega\)$. Per il Teorema di Schwarz, le
derivate miste di $U$ devono essere uguali. Questo implica una
condizione necessaria su $F$.

=== Osservazione Cruciale
<osservazione-cruciale>
Se una certa condizione (da determinare) #strong[non] vale per $F$,
allora $F$ #strong[non] è conservativo. Questa è una conseguenza diretta
della condizione necessaria: se il campo fosse conservativo, la
condizione dovrebbe valere. Se non vale, il campo non può essere
conservativo.

= Il Rotore di un Campo Vettoriale
<il-rotore-di-un-campo-vettoriale>
== Derivazione della Condizione Necessaria
<derivazione-della-condizione-necessaria>
Applicando il Teorema di Schwarz alle derivate miste del potenziale $U$,
si ottiene una condizione necessaria per la conservatività di un campo
$F =\(F_1\,F_2\,F_3\)$ di classe $C^1\(Omega\)$:

$ {frac(partial F_2, partial x)\(x\,y\,z\)= frac(partial F_1, partial y)\(x\,y\,z\)\
frac(partial F_3, partial x)\(x\,y\,z\)= frac(partial F_1, partial z)\(x\,y\,z\)\
frac(partial F_3, partial y)\(x\,y\,z\)= frac(partial F_2, partial z)\(x\,y\,z\) $

Questa condizione può essere espressa in modo compatto utilizzando
l'operatore #strong[rotore].

== Definizione del Rotore
<definizione-del-rotore>
Sia $F : bb(R)^3 arrow.r bb(R)^3$, con $F =\(F_1\,F_2\,F_3\)$. Il
#strong[rotore] di $F$, denotato $nabla times F$, è un campo vettoriale
definito da:

$ nabla times F\(x\,y\,z\)= (frac(partial F_3, partial y) - frac(partial F_2, partial z) \, frac(partial F_1, partial z) - frac(partial F_3, partial x) \, frac(partial F_2, partial x) - frac(partial F_1, partial y)) $

La condizione necessaria per la conservatività diventa quindi:

$ nabla times F = arrow(0) $

=== Caso Particolare: $bb(R)^2$
<caso-particolare-mathbbr2>
Per un campo $F : bb(R)^2 arrow.r bb(R)^2$, con $F =\(F_1\,F_2\)$, il
rotore è un campo scalare (o un vettore lungo l'asse $z$):

$ nabla times F\(x\,y\)= (0 \, 0 \, frac(partial F_2, partial x) - frac(partial F_1, partial y)) $

Pertanto, la condizione necessaria per la conservatività in $bb(R)^2$ è:

$ frac(partial F_2, partial x) - frac(partial F_1, partial y) = 0 $

= Teorema e Conseguenze sul Rotore
<teorema-e-conseguenze-sul-rotore>
== Teorema Fondamentale
<teorema-fondamentale>
Se un campo vettoriale $F$ è di classe $C^1$ e conservativo, allora il
suo rotore è identicamente nullo:

$ nabla times F = arrow(0) $

Questa è una #strong[condizione necessaria] per la conservatività.

== Osservazione: Campi Irrotazionali
<osservazione-campi-irrotazionali>
I campi vettoriali per i quali $nabla times F equiv arrow(0)$ sono detti
#strong[irrotazionali].

=== Conseguenza Logica
<conseguenza-logica>
Da quanto sopra, si deduce che:

$ F upright(" di classe ") C^1 upright(" e conservativo") arrow.r.double.long F upright(" irrotazionale") $

Questo fornisce uno strumento pratico: se si calcola il rotore di un
campo e questo non è nullo, allora il campo #strong[non] può essere
conservativo.

= L15 ANL2
<l15-anl2>
03/10/2025

= Definizione di Insieme Semplicemente Connesso
<definizione-di-insieme-semplicemente-connesso>
Un insieme $Omega subset.eq bb(R)^m$ si dice #strong[semplicemente
connesso] se è connesso e ogni curva chiusa contenuta in $Omega$ può
essere deformata con continuità, rimanendo in $Omega$, fino a ridursi a
un unico punto appartenente a $Omega$.

== Esempi
<esempi>
=== 1 Insieme semplicemente connesso
<insieme-semplicemente-connesso>
Un dominio piano privo di "buchi", come illustrato nella figura
sottostante, è semplicemente connesso. Ogni curva chiusa interna può
essere contratta a un punto senza uscire dall'insieme. \#\#\# 2 Insieme
non semplicemente connesso Un anello (dominio piano con un buco
centrale) non è semplicemente connesso. Una curva chiusa che avvolge il
buco non può essere contratta a un punto senza attraversare la regione
esclusa.

$ upright("Non è semplicemente connesso") $ \#\#\# 3 Piano privato di un
punto L'insieme $bb(R)^2\\{ upright("punto") }$ non è semplicemente
connesso. Una curva chiusa che circonda il punto mancante non può essere
contratta a un punto senza passare per il punto rimosso.

$ bb(R)^2\\{ P } quad upright("non è semplicemente connesso") $

= Teorema sulla Conservatività di Campi Vettoriali
<teorema-sulla-conservatività-di-campi-vettoriali>
Sia $upright(bold(F)) : Omega subset.eq bb(R)^m arrow.r bb(R)^m$ un
campo vettoriale di classe $C^1$. Se:

- $upright(bold(F))$ è irrotazionale in $Omega$, cioè
  $nabla times upright(bold(F)) = upright(bold(0))$ in $Omega$,
- $Omega$ è semplicemente connesso,

allora $upright(bold(F))$ è conservativo in $Omega$.

= Teorema di Green in Dimensione Due
<teorema-di-green-in-dimensione-due>
== Obiettivo
<obiettivo>
Trovare una formula che semplifichi il calcolo della circuitazione di un
campo vettoriale lungo una curva chiusa, anche nel caso in cui il campo
non sia necessariamente conservativo.

== Definizione: Curva di Jordan
<definizione-curva-di-jordan>
Una curva chiusa e semplice in $bb(R)^2$ si dice #strong[curva di
Jordan].

== Definizione: Dominio di Jordan
<definizione-dominio-di-jordan>
Un sottoinsieme $D subset.eq bb(R)^2$ il cui bordo $partial D$ è
l'unione di un numero finito di curve di Jordan si dice #strong[dominio
di Jordan].

= Orientazione Positiva di un Dominio di Jordan
<orientazione-positiva-di-un-dominio-di-jordan>
Sia $D subset.eq bb(R)^2$ un dominio di Jordan e $partial D$ il suo
bordo. Si dice che $partial D$ è #strong[orientato positivamente] se,
percorrendo $partial D$, si lascia l'interno di $D$ alla propria
sinistra.

== Esempi grafici
<esempi-grafici>
- Per un dominio semplice (senza buchi), l'orientamento positivo
  corrisponde al senso antiorario.
- Per un dominio con buchi, il bordo esterno è orientato in senso
  antiorario, mentre i bordi interni (intorno ai buchi) sono orientati
  in senso orario.

= Teorema di Green
<teorema-di-green>
Sia $D subset.eq bb(R)^2$ un dominio di Jordan la cui frontiera
$partial D$ sia regolare a tratti e orientata positivamente. Sia
$upright(bold(F)) : D arrow.r bb(R)^2$ un campo vettoriale di classe
$C^1$. Allora:

$ integral.cont_(partial D^(+)) upright(bold(F)) dot.op d upright(bold(l)) = integral.double_D (frac(partial F_2, partial x) - frac(partial F_1, partial y)) d x thin d y $
oppure, in notazione vettoriale:

$ integral.cont_(partial D^(+)) upright(bold(F)) dot.op d upright(bold(l)) = integral.double_D\(nabla times upright(bold(F))\)dot.op upright(bold(k)) thin d x thin d y $
dove $partial D^(+)$ indica il bordo di $D$ orientato positivamente, e
$upright(bold(k))$ è il versore dell'asse $z$.

= Conseguenza del Teorema di Green
<conseguenza-del-teorema-di-green>
Sia $upright(bold(F)) : bb(R)^2\\{\(0\,0\)} arrow.r bb(R)^2$ un campo
vettoriale di classe $C^1$ e irrotazionale in $bb(R)^2\\{\(0\,0\)}$.
\#\# Lemma Se $gamma_1\,gamma_2$ sono due curve chiuse, semplici e
regolari a tratti, che avvolgono il punto $\(0\,0\)$ nello stesso verso
(entrambe orarie o entrambe antiorarie), allora:

$ integral.cont_(gamma_1) upright(bold(F)) dot.op d upright(bold(l)) = integral.cont_(gamma_2) upright(bold(F)) dot.op d upright(bold(l)) $
\#\#\# Interpretazione geometrica Il lemma implica che, per campi
irrotazionali in domini non semplicemente connessi (come
$bb(R)^2\\{\(0\,0\)}$), l'integrale curvilineo lungo curve chiuse che
“avvolgono” lo stesso “buco” dipende solo dal numero di avvolgimenti e
dal verso, ma non dalla forma specifica della curva.

= L16 ANL2
<l16-anl2>
05/11/2025

= Integrali di Superficie
<integrali-di-superficie>
== Definizione di Superficie Cartesiana
<definizione-di-superficie-cartesiana>
Si consideri un sottoinsieme $Sigma subset bb(R)^3$. Si definisce
#strong[superficie cartesiana] l'insieme dei punti
$\(x\,y\,z\)in bb(R)^3$ tali che $z = g\(x\,y\)$, dove
$g : D subset bb(R)^2 arrow.r bb(R)$ è una funzione reale di due
variabili definite su un dominio $D$.

Formalmente:
$ Sigma = {\( x \, y \, z \) in bb(R)^3 : \( x \, y \) in D \, med z = g \( x \, y \)} $
\#\#\# Rappresentazione Grafica Nello spazio tridimensionale $bb(R)^3$,
la superficie $Sigma$ corrisponde al grafico della funzione $g\(x\,y\)$.
Ogni punto $\(x\,y\)in D$ determina univocamente un punto
$\(x\,y\,g\(x\,y\)\)$ sulla superficie. La proiezione ortogonale di
$Sigma$ sul piano $x y$ coincide con il dominio $D$.

La rappresentazione grafica evidenzia la relazione tra il dominio $D$
nel piano e la superficie $Sigma$ nello spazio, attraverso la mappa
$\(x\,y\)mapsto\(x\,y\,g\(x\,y\)\)$.

!\[\[Pasted image 20251109084415.png\]\] \#\# Osservazione: Limiti della
Definizione di Superficie Cartesiana La definizione precedente, basata
sul grafico di una funzione $g : D subset bb(R)^2 arrow.r bb(R)$, è
sufficiente per descrivere molte superfici comuni, ma non è esaustiva.
Esistono oggetti geometrici comunemente denominati "superfici" che non
possono essere rappresentati come grafico di una singola funzione di due
variabili.

Esempi notevoli:

- #strong[Sfera]: Non può essere descritta globalmente come grafico di
  una funzione $z = g\(x\,y\)$, poiché per ogni punto $\(x\,y\)$ nel
  disco unitario corrispondono due valori di $z$ (emisfero superiore e
  inferiore).
- #strong[Calotta sferica con tappo]: Anche in questo caso, la presenza
  di una porzione piana (il tappo) richiede una descrizione multipla o
  parametrica.
- #strong[Toro]: La sua topologia non consente una rappresentazione
  globale come grafico cartesiano.

Pertanto, la definizione di superficie cartesiana è utile per un'analisi
locale, ma insufficiente per trattare superfici globalmente complesse.

== Vantaggi delle Superfici Cartesiane
<vantaggi-delle-superfici-cartesiane>
Nonostante i limiti sopra menzionati, le superfici cartesiane offrono
vantaggi significativi quando la funzione $g$ è di classe $C^1\(D\)$
(continuamente differenziabile su $D$):

- #strong[Piano tangente]: In ogni punto
  $\(x_0\,y_0\,g\(x_0\,y_0\)\)in Sigma$, esiste un piano tangente ben
  definito, dato dall'equazione:
  $ z - g\(x_0\,y_0\)= frac(partial g, partial x)\(x_0\,y_0\)\(x - x_0\)+ frac(partial g, partial y)\(x_0\,y_0\)\(y - y_0\) $

- #strong[Vettore normale]: In ogni punto regolare, il vettore normale
  alla superficie è dato da:
  $ arrow(n) = (- frac(partial g, partial x) \, - frac(partial g, partial y) \, 1) $
  ed è non nullo grazie all'ipotesi di differenziabilità.

Queste proprietà sono fondamentali per lo sviluppo degli integrali di
superficie e per l'applicazione del teorema della divergenza e di
Stokes.

== Vettore Normale alla Superficie Cartesiana
<vettore-normale-alla-superficie-cartesiana>
Dato un punto $\(x_0\,y_0\)in D$, il vettore normale al grafico di $g$
nel punto $\(x_0\,y_0\,g\(x_0\,y_0\)\)$ è definito come:

$ arrow(N)\(x_0\,y_0\)= (- frac(partial g, partial x) \( x_0 \, y_0 \) \, med - frac(partial g, partial y) \( x_0 \, y_0 \) \, med 1) $

Tale vettore punta verso l'alto (verso il semispazio $z > 0$ rispetto
alla superficie). Se si desidera un vettore normale orientato verso il
basso, si utilizza:

$ arrow(N)\(x_0\,y_0\)= (frac(partial g, partial x) \( x_0 \, y_0 \) \, med frac(partial g, partial y) \( x_0 \, y_0 \) \, med - 1) $
\#\# Definizione: Area di una Superficie Cartesiana Sia
$Sigma subset bb(R)^3$ una superficie cartesiana, data dal grafico di
una funzione $g : D subset bb(R)^2 arrow.r bb(R)$ di classe $C^1\(D\)$.

L'#strong[area di $Sigma$] è la quantità reale non negativa definita
dall'integrale doppio:

$ upright("Area")\(Sigma\)= integral.double_D ∥arrow(N) \( x \, y \)∥ thin d x thin d y = integral.double_D sqrt((frac(partial g, partial x) \( x \, y \))^2 + (frac(partial g, partial y) \( x \, y \))^2 + 1) thin d x thin d y $

Dove $arrow(N)\(x\,y\)$ è il vettore normale alla superficie, definito
come sopra.

= Integrali di Superficie
<integrali-di-superficie-1>
== Classificazione degli Integrali di Superficie
<classificazione-degli-integrali-di-superficie>
Gli integrali di superficie si distinguono in due tipologie
fondamentali, a seconda della natura della grandezza che si intende
integrare:

- #strong[Integrale di superficie di I specie]: integrazione di una
  funzione scalare $f : bb(R)^3 arrow.r bb(R)$.
- #strong[Integrale di superficie di II specie]: integrazione di un
  campo vettoriale $arrow(F) : bb(R)^3 arrow.r bb(R)^3$.

== Definizione: Integrale di Superficie di I Specie
<definizione-integrale-di-superficie-di-i-specie>
Sia $Sigma subset bb(R)^3$ una superficie cartesiana, data dal grafico
di una funzione $g : D subset bb(R)^2 arrow.r bb(R)$ di classe
$C^1\(D\)$.

Sia $f : bb(R)^3 arrow.r bb(R)$ una funzione continua.

Si definisce #strong[integrale di superficie di $f$ su $Sigma$] (o
integrale di superficie di I specie) la quantità:

$ integral.double_Sigma f\(x\,y\,z\)thin d sigma := integral.double_D f\(x\,y\,g\(x\,y\)\)∥arrow(N) \( x \, y \)∥ thin d x thin d y $

che, esplicitando la norma del vettore normale, diventa:

$ integral.double_Sigma f\(x\,y\,z\)thin d sigma = integral.double_D f\(x\,y\,g\(x\,y\)\)sqrt((frac(partial g, partial x) \( x \, y \))^2 + (frac(partial g, partial y) \( x \, y \))^2 + 1) thin d x thin d y $

Dove $arrow(N)\(x\,y\)$ è il vettore normale alla superficie, definito
come sopra.

== Osservazione: Indipendenza degli Integrali di I Specie dall'Orientamento
<osservazione-indipendenza-degli-integrali-di-i-specie-dallorientamento>
Gli integrali di superficie di I specie #strong[non dipendono]
dall'orientazione del vettore normale. Infatti, la quantità integranda
contiene la norma $∥arrow(N) \( x \, y \)∥$, che è invariante rispetto
al segno del vettore normale.

== Definizione: Integrale di Superficie di II Specie
<definizione-integrale-di-superficie-di-ii-specie>
Sia $Sigma subset bb(R)^3$ una superficie cartesiana, data dal grafico
di una funzione $g : D subset bb(R)^2 arrow.r bb(R)$ di classe
$C^1\(D\)$.

Sia $arrow(N)\(x\,y\)$ il vettore normale alla superficie, definito come
sopra, e sia $arrow(n)\(x\,y\)$ il corrispondente #strong[versore
normale associato]:

$ arrow(n)\(x\,y\)= frac(arrow(N)\(x\,y\), ∥arrow(N) \( x \, y \)∥) $

Sia $arrow(F) : bb(R)^3 arrow.r bb(R)^3$ un campo vettoriale continuo.

Si definisce #strong[integrale di superficie di $arrow(F)$ attraverso
$Sigma$ nella direzione del versore $arrow(n)$] (o integrale di
superficie di II specie) la quantità:

$ integral.double_Sigma arrow(F) dot.op arrow(n) thin d sigma := integral.double_D arrow(F)\(x\,y\,g\(x\,y\)\)dot.op frac(arrow(N)\(x\,y\), ∥arrow(N) \( x \, y \)∥) ∥arrow(N) \( x \, y \)∥ thin d x thin d y $

Semplificando, si ottiene:
$ integral.double_Sigma arrow(F) dot.op arrow(n) thin d sigma = integral.double_D arrow(F)\(x\,y\,g\(x\,y\)\)dot.op arrow(N)\(x\,y\)thin d x thin d y $
dove il prodotto scalare è calcolato in $bb(R)^3$.

== Osservazione: Dipendenza dagli Integrali di II Specie dall'Orientamento
<osservazione-dipendenza-dagli-integrali-di-ii-specie-dallorientamento>
Gli integrali di superficie di II specie #strong[dipendono]
dall'orientazione del vettore normale. Più precisamente, se $arrow(N)$ è
il vettore normale che punta verso l'alto e
$arrow(tilde(N)) = - arrow(N)$ è quello che punta verso il basso,
allora:

$ integral.double_Sigma arrow(F) dot.op arrow(n)_(upright("alto")) thin d sigma = - integral.double_Sigma arrow(F) dot.op arrow(n)_(upright("basso")) thin d sigma $

Pertanto, la scelta dell'orientamento della normale determina il segno
dell'integrale.

== A cosa servono gli integrali di superficie di II specie?
<a-cosa-servono-gli-integrali-di-superficie-di-ii-specie>
Gli integrali di superficie di II specie trovano la loro principale
applicazione nel calcolo del #strong[flusso] di un campo vettoriale
attraverso una superficie.

=== Caso semplice: Campo costante e superficie piana
<caso-semplice-campo-costante-e-superficie-piana>
Supponiamo che: - $arrow(F)$ sia un campo vettoriale costante (cioè
indipendente dal punto), - $Sigma$ sia una superficie piana.

Allora, il flusso di $arrow(F)$ attraverso $Sigma$ nella direzione del
versore normale $arrow(n)$ è dato da:
$ upright("Flusso") = upright("Area")\(Sigma\)dot.op\(arrow(F) dot.op arrow(n)\) $
Questa quantità rappresenta la componente del campo $arrow(F)$
perpendicolare alla superficie, moltiplicata per l'area della superficie
stessa.

=== Caso generale: Campo non costante e superficie non piana
<caso-generale-campo-non-costante-e-superficie-non-piana>
Nel caso in cui: - $arrow(F)$ sia un campo vettoriale non costante, -
$Sigma$ sia una superficie non piana,

Il flusso di $arrow(F)$ attraverso $Sigma$ nella direzione del versore
normale $arrow(n)$ è definito come l'integrale di superficie di II
specie:
$ upright("Flusso") = integral.double_Sigma arrow(F) dot.op arrow(n) thin d sigma $
Questa definizione generalizza il caso piano e costante, sommando
localmente il prodotto scalare $arrow(F) dot.op arrow(n)$ pesato
dall'elemento di area $d sigma$, per ogni punto della superficie.

= L17 ANL2
<l17-anl2>
10/11/2025 \# Teorema di Gauss o della Divergenza

== Definizione di Divergenza
<definizione-di-divergenza>
Sia $upright(bold(F)) : bb(R)^m arrow.r bb(R)^m$ un campo vettoriale
differenziabile, espresso come:

$ upright(bold(F))\(x_1\,dots.h\,x_m\)= (F_1 \( x_1 \, dots.h \, x_m \) \, F_2 \( x_1 \, dots.h \, x_m \) \, dots.h \, F_m \( x_1 \, dots.h \, x_m \)) $

La #strong[divergenza] di $upright(bold(F))$ è definita come l'operatore
scalare:

$ "div" upright(bold(F))\(x_1\,dots.h\,x_m\)= nabla dot.op upright(bold(F))\(x_1\,dots.h\,x_m\):= sum_(i = 1)^m frac(partial F_i, partial x_i) $
\#\#\# Osservazione: Caso bidimensionale Nel caso particolare in cui
$upright(bold(F)) : bb(R)^2 arrow.r bb(R)^2$, con:

$ upright(bold(F))\(x\,y\)= (F_1 \( x \, y \) \, F_2 \( x \, y \)) $

La divergenza assume la forma:
$ nabla dot.op upright(bold(F))\(x\,y\)= frac(partial F_1, partial x)\(x\,y\)+ frac(partial F_2, partial y)\(x\,y\) $

== Definizione di Solido e Bordo in $bb(R)^3$
<definizione-di-solido-e-bordo-in-mathbbr3>
=== Osservazione: Solido tridimensionale
<osservazione-solido-tridimensionale>
In questo contesto, un #strong[solido] in $bb(R)^3$ è definito come una
regione chiusa e limitata dello spazio tridimensionale, avente volume
positivo e racchiusa all'interno di una superficie.

!\[\[Pasted image 20251110165709.png|450\]\]

Sia $Omega subset bb(R)^3$ tale regione. La superficie che delimita
$Omega$, separando il suo interno dal resto di $bb(R)^3$, è detta
#strong[bordo] di $Omega$ e si denota con $partial Omega$.

=== Orientamento della normale
<orientamento-della-normale>
In ogni punto regolare della superficie $partial Omega$, è possibile
definire un #strong[vettore normale unitario] $arrow(n)$, orientato in
modo da essere #strong[uscente] da $Omega$. Tale vettore è fondamentale
per la formulazione del Teorema della Divergenza.

= Teorema di Gauss (della Divergenza)
<teorema-di-gauss-della-divergenza>
Sia $Omega subset bb(R)^3$ un solido regolare, e sia $upright(bold(n))$
il versore normale uscente sul suo bordo $partial Omega$. Sia inoltre
$upright(bold(F)) : bb(R)^3 arrow.r bb(R)^3$ un campo vettoriale di
classe $C^1$.

Allora vale la seguente uguaglianza:

$ integral.double_(partial Omega) upright(bold(F)) dot.op upright(bold(n)) d sigma = integral.triple_Omega "div" upright(bold(F)) d x d y d z $

Il membro sinistro rappresenta il #strong[flusso] del campo
$upright(bold(F))$ attraverso la superficie $partial Omega$, orientata
secondo la normale uscente.

= Teorema di Stokes
<teorema-di-stokes>
Sia $Sigma subset bb(R)^3$ una superficie cartesiana, grafico di una
funzione $g : D subset bb(R)^2 arrow.r bb(R)$ di classe $C^1$, con $D$
regione di Jordan. Sia $upright(bold(n))$ il versore normale a $Sigma$
che punta verso l'alto (orientamento standard).

Sia $upright(bold(F)) : bb(R)^3 arrow.r bb(R)^3$ un campo vettoriale di
classe $C^1$. Orientando il bordo $partial Sigma$ positivamente (secondo
la regola della mano destra rispetto a $upright(bold(n))$), si ha:

$ integral.double_Sigma\(nabla times upright(bold(F))\)dot.op upright(bold(n)) d sigma = integral.cont_(partial Sigma^(+)) upright(bold(F)) dot.op d upright(bold(l)) $

Questa relazione esprime l'uguaglianza tra il flusso del rotore di
$upright(bold(F))$ attraverso la superficie $Sigma$ e la circuitazione
di $upright(bold(F))$ lungo il suo bordo orientato.

Ove il versore $arrow(n)$ rappresenta il vettore localmente ortogonale
alla superficie:

!\[\[Pasted image 20251110165903.png|450\]\]

== Osservazioni sul bordo di una superficie cartesiana
<osservazioni-sul-bordo-di-una-superficie-cartesiana>
=== 1. Parametrizzazione del bordo
<parametrizzazione-del-bordo>
Sia $Sigma$ la superficie cartesiana definita come grafico di
$g : D subset bb(R)^2 arrow.r bb(R)$, con $D$ regione di Jordan. Allora
il suo bordo $partial Sigma$ è dato da:

$ partial Sigma = {\( x \, y \, z \) in bb(R)^3 : \( x \, y \) in partial D \, thick z = g \( x \, y \)} $

Per parametrizzare concretamente $partial Sigma$ in modo orientato
positivamente, è sufficiente partire da una parametrizzazione
$overline(gamma) :\[a\,b\]arrow.r bb(R)^2$ del bordo $partial D$,
orientato positivamente (cioè in senso antiorario). La parametrizzazione
di $partial Sigma$ si ottiene componendo con $g$:

$ gamma\(t\)= (x \( t \) \, y \( t \) \, g \( x \( t \) \, y \( t \) \)) $

dove $overline(gamma)\(t\)=\(x\(t\)\,y\(t\)\)$.

=== 2. Relazione tra Teorema di Green e Teorema di Stokes
<relazione-tra-teorema-di-green-e-teorema-di-stokes>
Il #strong[Teorema di Green] è un caso particolare del #strong[Teorema
di Stokes], ottenuto considerando una superficie $Sigma$ giacente nel
piano $x y$, cioè con $z = 0$. In tal caso:

- La regione $D subset bb(R)^2$ è una regione di Jordan.
- Il bordo $partial D$ è orientato positivamente (antiorario).
- Il versore normale alla superficie è $upright(bold(n)) =\(0\,0\,1\)$,
  diretto verso l'alto.

La formulazione di Green diventa allora:

$ integral.double_D (frac(partial Q, partial x) - frac(partial P, partial y)) d x d y = integral.cont_(partial D^(+)) P d x + Q d y $

Che corrisponde al caso bidimensionale del flusso del rotore lungo il
bordo della superficie.

== Applicazione del Teorema di Stokes al caso piano
<applicazione-del-teorema-di-stokes-al-caso-piano>
Sia $upright(bold(F))\(x\,y\)=\(F_1\(x\,y\)\,F_2\(x\,y\)\)$ un campo
vettoriale in $bb(R)^2$. Estendiamolo a $bb(R)^3$ come:

$ upright(bold(F))\(x\,y\,z\)=\(F_1\(x\,y\)\,F_2\(x\,y\)\,0\) $

Applichiamo il Teorema di Stokes alla superficie
$Sigma = D times { 0 }$, dove $D subset bb(R)^2$ è una regione di
Jordan. Il bordo $partial Sigma$ coincide con $partial D$, orientato
positivamente.

Allora:

$ integral.cont_(partial D^(+)) upright(bold(F)) dot.op d upright(bold(l)) = integral.double_Sigma\(nabla times upright(bold(F))\)dot.op upright(bold(n)) d sigma $

Poiché $upright(bold(n)) =\(0\,0\,1\)$ e
$nabla times upright(bold(F)) = (0 \, 0 \, frac(partial F_2, partial x) - frac(partial F_1, partial y))$,
si ottiene:

$ integral.cont_(partial D^(+)) F_1 d x + F_2 d y = integral.double_D (frac(partial F_2, partial x) - frac(partial F_1, partial y)) d x d y $

che è la formulazione classica del #strong[Teorema di Green].

== Interpretazione fisica del Teorema di Stokes
<interpretazione-fisica-del-teorema-di-stokes>
Il Teorema di Stokes può essere espresso anche nella seguente forma
equivalente:

#quote(block: true)[
#emph[Il flusso del rotore di $upright(bold(F))$ attraverso una
superficie $Sigma$, nella direzione del versore normale che punta verso
l'alto, dipende solo dalla circuitazione di $upright(bold(F))$ lungo la
curva che costituisce il bordo di $Sigma$.]
]

Questa proprietà sottolinea la natura topologica del teorema: il valore
dell'integrale di superficie non dipende dalla forma della superficie,
ma solo dal suo bordo e dall'orientamento.

= L18 ANL2
<l18-anl2>
12/10/2025 \# Serie Numeriche

== Definizione e Concetto Fondamentale
<definizione-e-concetto-fondamentale>
L'idea centrale delle serie numeriche è attribuire un senso rigoroso
alla somma di una quantità infinita di numeri. L'ingrediente
fondamentale per costruire tale concetto sono le successioni.

=== Successione
<successione>
Una #strong[successione] è una lista infinita di numeri, indicata con
$\(a_m\)_(m in bb(N))$.

==== Esempi
<esempi-1>
- Successione armonica: $1\,1 / 2\,1 / 3\,1 / 4\,dots.h$, definita da
  $a_m = 1 / m$ per ogni $m in bb(N)$.
- Successione esponenziale: $2\,2^2\,2^3\,2^4\,dots.h$, definita da
  $a_m = 2^m$ per ogni $m in bb(N)$.

== Limite di una Successione
<limite-di-una-successione>
=== Limite Finito
<limite-finito>
Una successione $\(a_m\)_m$ ha #strong[limite finito] $ell in bb(R)$ se:
$ lim_(m arrow.r + oo) a_m = ell $ ciò equivale a dire che, per ogni
$epsilon > 0$, esiste un indice $overline(m) in bb(N)$ tale che:
$ forall m > overline(m) : quad\|a_m - ell\|< epsilon $ \#\#\# Limite
Infinito (Positivo) Una successione $\(a_m\)_m$ ha #strong[limite
$+ oo$] se: $ lim_(m arrow.r + oo) a_m = + oo $ ciò equivale a dire che,
per ogni $M > 0$, esiste un indice $overline(m) in bb(N)$ tale che:
$ forall m > overline(m) : quad a_m > M $

=== Limite Infinito (Negativo)
<limite-infinito-negativo>
Per analogia, si definisce il limite $- oo$:
$ lim_(m arrow.r + oo) a_m = - oo $

== Osservazione Critica
<osservazione-critica>
Non tutte le successioni ammettono limite. Esistono successioni che
oscillano o non convergono a nessun valore finito o infinito.

== Proprietà delle Successioni
<proprietà-delle-successioni>
=== Definitivamente Vera
<definitivamente-vera>
Una proprietà $P\(m\)$ relativa a una successione $\(a_m\)_m$ si dice
#strong[definitivamente vera] se esiste un indice $overline(m) in bb(N)$
tale che $P\(m\)$ è vera per ogni $m > overline(m)$.

==== Esempio
<esempio-7>
Data la successione $a_m = frac(99, m + 1)$, si consideri la
disuguaglianza: $ a_m > 99 / 100 $ Questa è definitivamente vera.
Infatti:
$ frac(99, m + 1) > 99 / 100 quad arrow.l.r.double quad m + 1 < 100 quad arrow.l.r.double quad m < 99 $
Tuttavia, l'analisi corretta richiede di invertire il ragionamento: la
disuguaglianza $a_m > 99 / 100$ è vera per $m < 99$, ma non per $m$
sufficientemente grandi. Pertanto, in questo caso specifico, la
proprietà non è definitivamente vera per $m arrow.r + oo$. L'esempio
illustra l'importanza di verificare con attenzione la direzione della
disuguaglianza e il comportamento asintotico.

=== Crescenza e Limitatezza
<crescenza-e-limitatezza>
==== Successione Crescente
<successione-crescente>
Una successione $\(a_m\)_m$ si dice #strong[crescente] se:
$ a_(m + 1) gt.eq a_m quad forall m in bb(N) $

==== Successione Limitata
<successione-limitata>
Una successione $\(a_m\)_m$ si dice #strong[limitata] se esiste una
costante $M > 0$ tale che: $ \|a_m\|lt.eq M quad forall m in bb(N) $

== Proprietà delle Successioni: Crescenza e Limitatezza (Continuazione)
<proprietà-delle-successioni-crescenza-e-limitatezza-continuazione>
=== Teorema Fondamentale sulle Successioni Monotone
<teorema-fondamentale-sulle-successioni-monotone>
Se una successione $\(a_m\)_m$ è #strong[crescente] e #strong[limitata
superiormente], allora essa ammette limite finito:
$ \(a_m\)_m upright(" crescente") and upright("limitata") quad arrow.r.double quad exists thin ell in bb(R) : lim_(m arrow.r + oo) a_m = ell $

Inoltre, se la successione è crescente ma #strong[non limitata], allora:
$ lim_(m arrow.r + oo) a_m = + oo $

==== Osservazione
<osservazione-4>
Se $lim_(m arrow.r + oo) a_m = ell in bb(R)$, allora la successione
$\(a_m\)_m$ è necessariamente #strong[limitata].

== Costruzione delle Serie Numeriche
<costruzione-delle-serie-numeriche>
=== Domanda Fondamentale
<domanda-fondamentale-1>
Data una successione $\(a_m\)_m$, come si definisce rigorosamente la
somma infinita:
$ sum_(m = 0)^(+ oo) a_m = a_0 + a_1 + a_2 + dots.h thin ? $

=== Risposta: Successione delle Somme Parziali
<risposta-successione-delle-somme-parziali>
Per dare senso alla somma infinita, si costruisce la #strong[successione
delle somme parziali] $\(S_N\)_N$, definita per ogni $N in bb(N)$ come:
$ S_0 = a_0 $ $ S_1 = a_0 + a_1 $ $ S_2 = a_0 + a_1 + a_2 $
$ S_3 = a_0 + a_1 + a_2 + a_3 $ $ dots.v $
$ S_N = sum_(m = 0)^N a_m = a_0 + a_1 + dots.h + a_N $ La serie numerica
$sum_(m = 0)^(+ oo) a_m$ converge se e solo se la successione
$\(S_N\)_N$ converge a un limite finito.

== Definizione di Serie Numerica
<definizione-di-serie-numerica>
Si dice che la serie $sum_(m = 0)^(+ oo) a_m$ #strong[ha limite] se
esiste il limite della successione delle somme parziali $\(S_N\)_N$,
cioè: $ sum_(m = 0)^(+ oo) a_m = lim_(N arrow.r + oo) S_N $

== Classificazione delle Serie
<classificazione-delle-serie>
Data una serie $sum_(m = 0)^(+ oo) a_m$, si distinguono i seguenti casi
in base al comportamento della successione $\(S_N\)_N$:

- #strong[Convergente]: se $lim_(N arrow.r + oo) S_N$ esiste ed è
  finito.
- #strong[Divergente positivamente (o positivamente divergente)]: se
  $lim_(N arrow.r + oo) S_N = + oo$.
- #strong[Divergente negativamente (o negativamente divergente)]: se
  $lim_(N arrow.r + oo) S_N = - oo$.
- #strong[Oscillante (o indeterminata)]: se $lim_(N arrow.r + oo) S_N$
  non esiste.

== Esempio: Serie Oscillante
<esempio-serie-oscillante>
Consideriamo la serie:
$ sum_(m = 0)^(+ oo)\(- 1\)^m = 1 - 1 + 1 - 1 + dots.h $

La successione dei termini è definita da:
$ a_m = cases(delim: "{", 1 & upright("se ") m upright(" è pari"), - 1 & upright("se ") m upright(" è dispari")) $

Le somme parziali risultano: $ S_0 = a_0 = 1 $
$ S_1 = a_0 + a_1 = 1 - 1 = 0 $
$ S_2 = a_0 + a_1 + a_2 = 1 - 1 + 1 = 1 $
$ S_3 = a_0 + a_1 + a_2 + a_3 = 1 - 1 + 1 - 1 = 0 $ $ dots.v $

In generale:
$ S_N = cases(delim: "{", 1 & upright("se ") N upright(" è pari"), 0 & upright("se ") N upright(" è dispari")) $

Poiché la successione $\(S_N\)_N$ oscilla tra i valori $0$ e $1$ e non
tende a un limite, si conclude che:
$ lim_(N arrow.r + oo) S_N quad upright("NON esiste") $

Pertanto, la serie $sum_(m = 0)^(+ oo)\(- 1\)^m$ è #strong[oscillante].

== Esempio: Serie Geometrica
<esempio-serie-geometrica>
Consideriamo la serie geometrica:
$ 1 + 1 / 2 + 1 / 4 + 1 / 8 + dots.h + 1 / 2^m + dots.h = 2 $ che si
scrive in notazione compatta come: $ sum_(m = 0)^(+ oo) 1 / 2^m = 2 $

== Calcolo della Somma di una Serie Geometrica
<calcolo-della-somma-di-una-serie-geometrica>
Sia data la #strong[serie geometrica di ragione $q$], con $q eq.not 1$,
definita da: $ sum_(m = 0)^(+ oo) q^m = 1 + q + q^2 + q^3 + dots.h $

Per calcolarne la somma, si considera la somma parziale $N$-esima:
$ S_N = sum_(m = 0)^N q^m = 1 + q + q^2 + dots.h + q^N $

Moltiplicando ambo i membri per $q$:
$ q S_N = q + q^2 + q^3 + dots.h + q^(N + 1) $

Sottraendo membro a membro: $ \(1 - q\)S_N = 1 - q^(N + 1) $

Da cui, se $q eq.not 1$:
$ S_N = frac(1 - q^(N + 1), 1 - q) = frac(q^(N + 1) - 1, q - 1) $

Passando al limite per $N arrow.r + oo$:
$ lim_(N arrow.r + oo) S_N = lim_(N arrow.r + oo) frac(q^(N + 1) - 1, q - 1) = cases(delim: "{", + oo & upright("se ") q > 1, frac(1, 1 - q) & upright("se ")\|q\|< 1, upright("non esiste") & upright("se ") q lt.eq - 1) $

=== Conclusione
<conclusione>
Se $\|q\|< 1$, la serie geometrica converge e la sua somma è:
$ sum_(m = 0)^(+ oo) q^m = frac(1, 1 - q) $

== Osservazione Importante
<osservazione-importante>
Il calcolo del limite della successione delle somme parziali $\(S_N\)_N$
è il metodo rigoroso e fondamentale per determinare la somma di una
serie. Non esistono scorciatoie generali: ogni serie deve essere
studiata attraverso il comportamento asintotico delle sue somme
parziali.

== Classificazione Generale delle Serie
<classificazione-generale-delle-serie>
In base al comportamento della successione $\(S_N\)_N$, una serie
$sum_(m = 0)^(+ oo) a_m$ può essere:

- #strong[Convergente]: se $lim_(N arrow.r + oo) S_N$ esiste ed è
  finito.
- #strong[Divergente]: se $lim_(N arrow.r + oo) S_N = plus.minus oo$.
- #strong[Oscillante (indeterminata)]: se $lim_(N arrow.r + oo) S_N$ non
  esiste.

= L19 ANL2
<l19-anl2>
17/11/2025 \# Serie Telescopiche Una serie telescopica è una serie della
forma $sum_(m = 0)^(+ oo) a_m$, in cui ogni termine $a_m$ può essere
espresso come differenza di due termini consecutivi di una successione
$\(b_m\)_m$, ossia:

$ a_m = b_(m + 1) - b_m\,quad forall m . $ \#\# Esempio La serie
$sum_(m = 1)^(+ oo) (frac(1, m + 1) - 1 / m)$ è telescopica, poiché i
suoi termini soddisfano la relazione $a_m = b_(m + 1) - b_m$ con
$b_m = 1 / m$ per ogni $m gt.eq 1$.

== Calcolo della Somma Parziale
<calcolo-della-somma-parziale>
Per calcolare la somma parziale $S_N = sum_(m = 0)^N a_m$, si sviluppa
esplicitamente la somma:

$ S_N = a_0 + a_1 + dots.h.c + a_N =\(b_1 - b_0\)+\(b_2 - b_1\)+\(b_3 - b_2\)+ dots.h.c +\(b_(N + 1) - b_N\). $

Osservando che i termini intermedi si annullano a coppie, si ottiene:

$ S_N = b_(N + 1) - b_0 . $

== Calcolo della Somma della Serie
<calcolo-della-somma-della-serie>
La somma della serie è definita come il limite della somma parziale al
tendere di $N$ all'infinito:

$ sum_(m = 0)^(+ oo) a_m = lim_(N arrow.r + oo) S_N = lim_(N arrow.r + oo)\(b_(N + 1) - b_0\). $

Poiché $lim_(N arrow.r + oo) b_(N + 1) = lim_(N arrow.r + oo) b_N$, si
conclude:

$ sum_(m = 0)^(+ oo) a_m = lim_(N arrow.r + oo) b_N - b_0 . $ \#\# Caso
Generale con Indice Iniziale Diverso da Zero Se la serie inizia
dall'indice $m = 0$ e i termini sono della forma
$a_m = b_m - b_(m + 1)$, allora la somma della serie è data da:

$ sum_(m = 0)^(+ oo) a_m = b_0 - lim_(N arrow.r + oo) b_N . $

== Esempio di Applicazione: Serie Logaritmica
<esempio-di-applicazione-serie-logaritmica>
Si consideri la serie $sum_(m = 1)^(+ oo) log (1 + 1 / m)$. Si osserva
che:

$ log (1 + 1 / m) = log (frac(m + 1, m)) = log\(m + 1\)- log\(m\). $

Pertanto, la serie è telescopica con $a_m = b_(m + 1) - b_m$, dove
$b_m = log\(m\)$ per ogni $m gt.eq 1$.

La somma parziale fino a $N$ è:

$ S_N = sum_(m = 1)^N (log \( m + 1 \) - log \( m \)) = log\(N + 1\)- log\(1\)= log\(N + 1\). $

Passando al limite per $N arrow.r + oo$:

$ sum_(m = 1)^(+ oo) log (1 + 1 / m) = lim_(N arrow.r + oo) log\(N + 1\)- log\(1\)= lim_(N arrow.r + oo) log\(N\)= + oo . $

== Conclusione
<conclusione-1>
La serie $sum_(m = 1)^(+ oo) log (1 + 1 / m)$ diverge positivamente.

= Serie di Mengoli
<serie-di-mengoli>
== Definizione e Calcolo della Somma
<definizione-e-calcolo-della-somma>
Si consideri la serie $sum_(m = 1)^(+ oo) frac(1, m\(m + 1\))$. Si
osserva che:

$ frac(1, m\(m + 1\)) = 1 / m - frac(1, m + 1)\,quad forall m gt.eq 1 . $

Pertanto, la serie è telescopica con $a_m = b_m - b_(m + 1)$, dove
$b_m = 1 / m$ per ogni $m gt.eq 1$.

La somma parziale fino a $N$ è:

$ S_N = sum_(m = 1)^N (1 / m - frac(1, m + 1)) = 1 - frac(1, N + 1) . $

Passando al limite per $N arrow.r + oo$:

$ sum_(m = 1)^(+ oo) frac(1, m\(m + 1\)) = lim_(N arrow.r + oo) (1 - frac(1, N + 1)) = 1 . $

== Osservazione Generale sulla Convergenza
<osservazione-generale-sulla-convergenza>
In generale, per determinare il comportamento di una serie (convergenza,
divergenza o oscillazione), si cerca di ridurre il problema a un calcolo
diretto dei termini $a_m$, se possibile, evitando di manipolare
esplicitamente le somme parziali $S_N$. Tale approccio è preferibile
quando la struttura della serie lo consente, come nel caso delle serie
telescopiche.

= Condizione Necessaria per la Convergenza di una Serie
<condizione-necessaria-per-la-convergenza-di-una-serie>
== Enunciato
<enunciato>
Se la serie $sum_m a_m$ converge, allora:

$ lim_(m arrow.r + oo) a_m = 0 . $

== Osservazioni
<osservazioni-1>
- Tale condizione è #strong[sempre valida], indipendentemente dalla
  natura dei termini $a_m$.
- Tuttavia, #strong[non è sufficiente] per garantire la convergenza
  della serie.

=== Controesempio
<controesempio>
La serie $sum_(m = 1)^(+ oo) log (1 + 1 / m)$ diverge positivamente,
nonostante:

$ a_m = log (1 + 1 / m) arrow.r 0 quad upright("per") quad m arrow.r + oo . $

= Proprietà Generali delle Serie Convergenti
<proprietà-generali-delle-serie-convergenti>
== Somma di Serie Convergenti
<somma-di-serie-convergenti>
Siano $sum_m a_m$ e $sum_m b_m$ due serie convergenti. Allora la serie
somma converge e vale:

$ sum_m\(a_m + b_m\)= sum_m a_m + sum_m b_m . $

== Prodotto di una Serie per uno Scalare
<prodotto-di-una-serie-per-uno-scalare>
Sia $sum_m a_m$ una serie convergente e $lambda in bb(R)$, con
$lambda eq.not 0$. Allora la serie scalata converge e vale:

$ sum_m\(lambda a_m\)= lambda sum_m a_m . $

= Serie a Termini Positivi
<serie-a-termini-positivi>
Una serie $sum_m a_m$ è detta a termini positivi se $a_m > 0$ per ogni
$m$.

== Proprietà Fondamentale
<proprietà-fondamentale>
Le serie a termini positivi sono particolarmente semplici da analizzare
perché la successione delle somme parziali $\(S_N\)_N$, definita da:

$ S_N = sum_(m = 0)^N a_m = a_0 + a_1 + dots.h.c + a_(N - 1) + a_N\, $

è #strong[strettamente crescente]. Infatti, poiché $a_N > 0$, si ha:

$ S_N = S_(N - 1) + a_N > S_(N - 1) . $

== Comportamento della Serie
<comportamento-della-serie>
Essendo $\(S_N\)_N$ monotona crescente, il limite
$lim_(N arrow.r + oo) S_N$ esiste sempre nel campo esteso dei reali
$bb(R) union { + oo }$, e può assumere solo due valori:

- un numero reale finito $ell in bb(R)$ → la serie #strong[converge]\;
- $+ oo$ → la serie #strong[diverge positivamente].

Non esistono altre possibilità: una serie a termini positivi #strong[non
può oscillare].

== Criterio di Distinzione
<criterio-di-distinzione>
Per distinguere tra convergenza e divergenza, si utilizzano i criteri di
convergenza specifici per serie a termini positivi (ad esempio, criterio
del confronto, del rapporto, della radice, ecc.), che saranno trattati
in seguito.

= Criteri di Convergenza per Serie a Termini Positivi
<criteri-di-convergenza-per-serie-a-termini-positivi>
== 1. Criterio del Confronto
<criterio-del-confronto>
Siano $sum_m a_m$ e $sum_m b_m$ due serie a termini positivi, ossia
$a_m > 0$ e $b_m > 0$ per ogni $m$. Supponiamo che:

$ a_m lt.eq b_m quad upright("definitivamente (cioe per ") m upright(" sufficientemente grande)") . $

Allora valgono le seguenti implicazioni:

- Se $sum_m b_m$ converge, allora $sum_m a_m$ converge.
- Se $sum_m a_m$ diverge, allora $sum_m b_m$ diverge.

=== Esempio: Problema di Basilea
<esempio-problema-di-basilea>
Si consideri la serie
$sum_(m = 1)^(+ oo) 1 / m^2 = 1 + 1 / 4 + 1 / 9 + dots.h.c$, nota come
problema di Basilea. Essendo $a_m = 1 / m^2 > 0$, si tratta di una serie
a termini positivi.

Per studiarne la convergenza, la confrontiamo con la serie telescopica
$sum_(m = 1)^(+ oo) frac(2, m\(m + 1\))$, già dimostrata convergente
(somma uguale a 2).

Verifichiamo se $a_m lt.eq b_m$ definitivamente, cioè se:

$ 1 / m^2 lt.eq frac(2, m\(m + 1\)) . $

Risolvendo la disuguaglianza:

$ 1 / m^2 lt.eq frac(2, m\(m + 1\)) arrow.l.r.double m + 1 lt.eq 2 m arrow.l.r.double 1 lt.eq m . $

La disuguaglianza è vera per ogni $m gt.eq 1$. Pertanto, poiché
$sum_(m = 1)^(+ oo) frac(2, m\(m + 1\))$ converge, per il criterio del
confronto anche $sum_(m = 1)^(+ oo) 1 / m^2$ converge.

=== Applicazione del Criterio del Confronto: Conclusione
<applicazione-del-criterio-del-confronto-conclusione>
Dalla disuguaglianza:

$ sum_(m = 1)^(+ oo) frac(2, m\(m + 1\)) = 2 sum_(m = 1)^(+ oo) (1 / m - frac(1, m + 1)) = 2 < + oo\, $

si deduce, per il criterio del confronto, che la serie
$sum_(m = 1)^(+ oo) 1 / m^2$ converge.

=== Esempio: Divergenza della Serie Armonica
<esempio-divergenza-della-serie-armonica>
Si consideri la serie armonica
$sum_(m = 1)^(+ oo) 1 / m = 1 + 1 / 2 + 1 / 3 + dots.h.c$.

Per dimostrarne la divergenza, si utilizza una disuguaglianza nota:

$ x > log\(1 + x\)\,quad forall x > 0 . $

Applicando tale disuguaglianza con $x = 1 / m$, si ottiene:

$ 1 / m > log (1 + 1 / m)\,quad forall m gt.eq 1 . $

Pertanto, ponendo $b_m = 1 / m$ e $a_m = log (1 + 1 / m)$, risulta
$b_m > a_m$ per ogni $m$. Poiché la serie
$sum_(m = 1)^(+ oo) a_m = sum_(m = 1)^(+ oo) log (1 + 1 / m)$ diverge
positivamente (come già dimostrato in precedenza), per il criterio del
confronto anche la serie armonica $sum_(m = 1)^(+ oo) 1 / m$ diverge
positivamente.

== 2. Criterio del Confronto Asintotico
<criterio-del-confronto-asintotico>
Siano $sum_m a_m$ e $sum_m b_m$ due serie a termini positivi, ossia
$a_m > 0$ e $b_m > 0$ per ogni $m$. Supponiamo che:

$ lim_(m arrow.r + oo) a_m / b_m = ell eq.not 0 . $

Allora le due serie hanno lo #strong[stesso carattere], cioè:

- Se $sum_m b_m$ converge, allora $sum_m a_m$ converge.
- Se $sum_m b_m$ diverge, allora $sum_m a_m$ diverge.

=== Esempio di Applicazione
<esempio-di-applicazione>
Si consideri la serie
$sum_(m = 1)^(+ oo) frac(m^3 + 2 m + 3, 3 m^5 - 2 m^2 + 1)$.

Per studiarne il comportamento, si analizza il termine generale
$a_m = frac(m^3 + 2 m + 3, 3 m^5 - 2 m^2 + 1)$. Per $m arrow.r + oo$, i
termini di ordine inferiore sono trascurabili rispetto ai termini di
grado massimo:

$ a_m = frac(m^3 + o\(m^3\), 3 m^5 + o\(m^5\)) tilde.op frac(m^3, 3 m^5) = frac(1, 3 m^2) . $

Ponendo $b_m = frac(1, 3 m^2)$, si calcola il limite:

$ lim_(m arrow.r + oo) a_m / b_m = lim_(m arrow.r + oo) frac(m^3 + 2 m + 3, 3 m^5 - 2 m^2 + 1) / frac(1, 3 m^2) = lim_(m arrow.r + oo) frac(3 m^2\(m^3 + 2 m + 3\), 3 m^5 - 2 m^2 + 1) = 1 eq.not 0 . $

Poiché
$sum_(m = 1)^(+ oo) b_m = sum_(m = 1)^(+ oo) frac(1, 3 m^2) = 1 / 3 sum_(m = 1)^(+ oo) 1 / m^2$
converge (come già dimostrato), per il criterio del confronto asintotico
anche la serie originaria converge.

== 3. Criterio del Rapporto
<criterio-del-rapporto>
Sia $sum_m a_m$ una serie a termini positivi, ossia $a_m > 0$ per ogni
$m$. Supponiamo che esista $ell in bb(R)$ tale che:

$ lim_(m arrow.r + oo) a_(m + 1) / a_m = ell . $

Allora valgono le seguenti implicazioni:

- Se $ell < 1$, la serie $sum_m a_m$ converge.
- Se $ell > 1$, la serie $sum_m a_m$ diverge.
- Se $ell = 1$, il criterio non fornisce informazioni sul carattere
  della serie.

=== Osservazione
<osservazione-5>
Il caso $ell = 1$ è #strong[indeterminato] e richiede l'uso di altri
criteri per stabilire il comportamento della serie.

=== Esempi
<esempi-2>
==== Esempio 1: Serie Armonica (Divergente)
<esempio-1-serie-armonica-divergente>
Si consideri la serie armonica $sum_(m = 1)^(+ oo) 1 / m$, già nota per
divergere. Applicando il criterio del rapporto:

$ a_m = 1 / m\,quad a_(m + 1) / a_m = frac(1, m + 1) / 1 / m = frac(m, m + 1) . $

Calcolando il limite:

$ lim_(m arrow.r + oo) a_(m + 1) / a_m = lim_(m arrow.r + oo) frac(m, m + 1) = 1 . $

Il criterio del rapporto non fornisce informazioni, come atteso, poiché
$ell = 1$.

==== Esempio 2: Serie $sum_(m = 1)^(+ oo) 1 / m^2$ (Convergente)
<esempio-2-serie-sum_m1infty-frac1m2-convergente>
Si consideri la serie $sum_(m = 1)^(+ oo) 1 / m^2$, già nota per
convergere. Applicando il criterio del rapporto:

$ a_m = 1 / m^2\,quad a_(m + 1) / a_m = frac(1, \(m + 1\)^2) / 1 / m^2 = (frac(m, m + 1))^2 . $

Calcolando il limite:

$ lim_(m arrow.r + oo) a_(m + 1) / a_m = lim_(m arrow.r + oo) (frac(m, m + 1))^2 = 1 . $

Anche in questo caso, il criterio del rapporto non fornisce
informazioni, poiché $ell = 1$.

== 4. Criterio della Radice
<criterio-della-radice>
Sia $sum_m a_m$ una serie a termini positivi, ossia $a_m > 0$ per ogni
$m$. Supponiamo che esista $ell in bb(R)$ tale che:

$ lim_(m arrow.r + oo) root(m, a_m) = ell . $

Allora valgono le seguenti implicazioni:

- Se $ell < 1$, la serie $sum_m a_m$ converge.
- Se $ell > 1$, la serie $sum_m a_m$ diverge.
- Se $ell = 1$, il criterio non fornisce informazioni sul carattere
  della serie.

=== Osservazione
<osservazione-6>
Il caso $ell = 1$ è #strong[indeterminato] e richiede l'uso di altri
criteri per stabilire il comportamento della serie.

=== Esempi
<esempi-3>
==== Esempio 1: Serie Armonica (Divergente)
<esempio-1-serie-armonica-divergente-1>
Si consideri la serie armonica $sum_(m = 1)^(+ oo) 1 / m$, già nota per
divergere. Applicando il criterio della radice:

$ a_m = 1 / m\,quad root(m, a_m) = root(m, 1 / m) = 1 / root(m, m) . $

Calcolando il limite:

$ lim_(m arrow.r + oo) root(m, a_m) = lim_(m arrow.r + oo) 1 / root(m, m) = 1\, $

poiché $lim_(m arrow.r + oo) root(m, m) = 1$. Il criterio della radice
non fornisce informazioni, come atteso.

==== Esempio 2: Serie $sum_(m = 1)^(+ oo) 1 / m^2$ (Convergente)
<esempio-2-serie-sum_m1infty-frac1m2-convergente-1>
Si consideri la serie $sum_(m = 1)^(+ oo) 1 / m^2$, già nota per
convergere. Applicando il criterio della radice:

$ a_m = 1 / m^2\,quad root(m, a_m) = root(m, 1 / m^2) = frac(1, \(root(m, m)\)^2) . $

Calcolando il limite:

$ lim_(m arrow.r + oo) root(m, a_m) = lim_(m arrow.r + oo) frac(1, \(root(m, m)\)^2) = 1\, $

poiché $lim_(m arrow.r + oo) root(m, m) = 1$. Anche in questo caso, il
criterio della radice non fornisce informazioni, poiché $ell = 1$.

== 5. Criterio Integrale
<criterio-integrale>
=== Motivazione
<motivazione>
Data una serie $sum_m a_m$ a termini positivi, si osserva che i punti
$\(m\,a_m\)$ possono essere interpretati come campionamenti di una
funzione $f\(x\)$ tale che:

$ f\(m\)= a_m\,quad forall m . $

Ci si chiede se esista un legame tra il comportamento della serie
$sum_(m = 1)^(+ oo) a_m$ e l'integrale improprio
$integral_1^(+ oo) f\(x\)thin d x$.

=== Enunciato del Criterio Integrale
<enunciato-del-criterio-integrale>
Sia $f :\[1\,+ oo\)arrow.r bb(R)$ una funzione tale che:

- è continua;
- è positiva ($f\(x\)> 0$ per ogni $x gt.eq 1$);
- è decrescente.

Si definisca $a_m = f\(m\)$ per ogni $m gt.eq 1$. Allora la serie
$sum_(m = 1)^(+ oo) a_m$ e l'integrale improprio
$integral_1^(+ oo) f\(x\)thin d x$ hanno lo #strong[stesso carattere],
cioè:

- Se $integral_1^(+ oo) f\(x\)thin d x$ converge, allora
  $sum_(m = 1)^(+ oo) a_m$ converge.
- Se $integral_1^(+ oo) f\(x\)thin d x$ diverge, allora
  $sum_(m = 1)^(+ oo) a_m$ diverge.

=== Criterio Integrale: Applicazione alle Serie di Riemann
<criterio-integrale-applicazione-alle-serie-di-riemann>
==== Osservazione Importante
<osservazione-importante-1>
Si consideri la funzione $f\(x\)= 1 / x^alpha$, con $alpha > 0$. Tale
funzione è:

- continua in $\[1\,+ oo\)$\;
- positiva per ogni $x gt.eq 1$\;
- decrescente per ogni $x gt.eq 1$ (poiché la derivata
  $f'\(x\)= - alpha x^(- alpha - 1) < 0$).

Pertanto, il criterio integrale è applicabile alla serie
$sum_(m = 1)^(+ oo) 1 / m^alpha$, nota come #strong[serie di Riemann].

=== Comportamento dell'Integrale Improprio
<comportamento-dellintegrale-improprio>
Si calcola l'integrale improprio:

$ integral_1^(+ oo) 1 / x^alpha thin d x = cases(delim: "{", upright("converge") & upright("se ") alpha > 1\,, upright("diverge") & upright("se ") alpha lt.eq 1 .) $

=== Conclusione: Carattere della Serie di Riemann
<conclusione-carattere-della-serie-di-riemann>
Per il criterio integrale, la serie di Riemann
$sum_(m = 1)^(+ oo) 1 / m^alpha$ ha lo stesso carattere dell'integrale:

$ sum_(m = 1)^(+ oo) 1 / m^alpha = cases(delim: "{", upright("converge") & upright("se ") alpha > 1\,, upright("diverge") & upright("se ") alpha lt.eq 1 .) $

= L20 ANL2
<l20-anl2>
19/11/2025 \# Serie a termini di segno qualunque Si consideri una serie
del tipo: $ sum_m a_m $ dove i termini $a_m$ possono essere positivi o
negativi.

#strong[Nota Bene.] Nessuno dei criteri visti per le serie a termini
positivi si applica direttamente a questa classe di serie.

== Definizione: Convergenza assoluta
<definizione-convergenza-assoluta>
Si dice che la serie $sum_m a_m$ è #strong[assolutamente convergente] se
la serie dei valori assoluti: $ sum_m\|a_m\| $ è convergente.

#strong[Nota Bene.] Poiché $sum_m\|a_m\|$ è una serie a termini
positivi, per studiarne la convergenza si possono applicare tutti i
criteri precedentemente esposti.

== Teorema: Convergenza assoluta implica convergenza
<teorema-convergenza-assoluta-implica-convergenza>
Se la serie $sum_m a_m$ è assolutamente convergente, cioè se:

$ sum_m\|a_m\|quad upright("converge")\, $ allora la serie originaria
converge:

$ sum_m a_m quad upright("converge") . $ \#\# Dimostrazione del Teorema
Per dimostrare che la convergenza assoluta implica la convergenza, si
osserva che:

$ a_m +\|a_m\|= cases(delim: "{", a_m + a_m = 2 a_m & upright("se ") a_m gt.eq 0, a_m - a_m = 0 & upright("se ") a_m < 0) $

Di conseguenza, per ogni $m$ si ha:

$ a_m +\|a_m\|gt.eq 0 $

e inoltre:

$ a_m +\|a_m\|lt.eq 2\|a_m\| $

Poiché, per ipotesi, $sum_m\|a_m\|$ converge, per il #strong[criterio
del confronto] (applicato alla serie a termini positivi
$sum_m\(a_m +\|a_m\|\)$), si conclude che anche la serie:

$ sum_m\(a_m +\|a_m\|\) $ è convergente.

Si può quindi riscrivere la serie originaria come differenza di due
serie convergenti:

$ sum_m a_m = sum_m (\( a_m + \| a_m \| \) - \| a_m \|) = sum_m\(a_m +\|a_m\|\)- sum_m\|a_m\| $

Essendo entrambe le serie a destra convergenti, ne segue che:

$ sum_m a_m quad upright("converge") . $ \#\# Osservazione Importante La
convergenza assoluta è una condizione sufficiente, ma non necessaria,
per la convergenza di una serie. Esistono cioè serie $sum_m a_m$ che
sono convergenti, ma per le quali la serie dei valori assoluti
$sum_m\|a_m\|$ non converge.

== Caso particolare: Serie a termini di segno alternato
<caso-particolare-serie-a-termini-di-segno-alternato>
Un caso specifico di serie a termini di segno qualunque è rappresentato
dalle #strong[serie a termini di segno alternato], della forma:

$ sum_m\(- 1\)^m a_m\,quad upright("con ") a_m > 0 quad forall m . $

=== Criterio di Leibniz
<criterio-di-leibniz>
Sia data la serie $sum_m\(- 1\)^m a_m$, con $a_m > 0$ per ogni $m$. Se
sono soddisfatte le seguenti due condizioni:

+ $lim_(m arrow.r + oo) a_m = 0$,
+ la successione $\(a_m\)_m$ è #strong[decrescente definitivamente],
  cioè esiste un indice $overline(m)$ tale che $a_(m + 1) lt.eq a_m$ per
  ogni $m gt.eq overline(m)$,

allora la serie converge:

$ sum_m\(- 1\)^m a_m quad upright("converge") . $ \#\#\# Osservazione
Importante Se non è soddisfatta la prima condizione del criterio di
Leibniz, cioè se:

$ lim_(m arrow.r + oo) a_m eq.not 0\, $

allora il termine generale della serie non tende a zero:

$ lim_(m arrow.r + oo)\(- 1\)^m a_m eq.not 0 . $

Di conseguenza, viene violata la #strong[condizione necessaria per la
convergenza] di una serie, e pertanto:

$ sum_m\(- 1\)^m a_m quad upright("non converge") . $

== Osservazione: Applicabilità del criterio di Leibniz
<osservazione-applicabilità-del-criterio-di-leibniz>
Se la successione $\(a_m\)_m$ non è decrescente, il criterio di Leibniz
non può essere applicato. Tuttavia, ciò non implica necessariamente che
la serie diverga; semplicemente, non si può utilizzare questo strumento
per stabilirne la convergenza.

=== Esempio: Serie armonica alternata
<esempio-serie-armonica-alternata>
Si consideri la serie:

$ sum_(m = 1)^(+ oo) frac(\(- 1\)^(m + 1), m) = 1 - 1 / 2 + 1 / 3 - 1 / 4 + dots.h.c $

Per studiarne la convergenza assoluta, si analizza la serie dei valori
assoluti:

$ sum_(m = 1)^(+ oo) lr(|frac(\(- 1\)^(m + 1), m)|) = sum_(m = 1)^(+ oo) 1 / m $

Questa è la #strong[serie armonica], nota per essere divergente.
Pertanto:

$ sum_(m = 1)^(+ oo) frac(\(- 1\)^(m + 1), m) quad upright("non è assolutamente convergente") . $

Tuttavia, poiché la serie è a segni alternati e della forma
$sum_m\(- 1\)^m a_m$ con $a_m = 1 / m > 0$, si può applicare il criterio
di Leibniz.

Verifichiamo le ipotesi:

+ $lim_(m arrow.r + oo) a_m = lim_(m arrow.r + oo) 1 / m = 0$ ---
  #strong[verificata].

+ La successione $\(a_m\)_m = (1 / m)_m$ è definitivamente decrescente,
  poiché per ogni $m gt.eq 1$ si ha:
  $ a_(m + 1) = frac(1, m + 1) lt.eq 1 / m = a_m $

  --- #strong[verificata].

Pertanto, per il criterio di Leibniz, la serie converge:

$ sum_(m = 1)^(+ oo) frac(\(- 1\)^(m + 1), m) quad upright("converge") . $

Andando oltre a quanto ci viene normalmente chiesto possiamo anche
notare come, la serie sopra riportata, non sia null'altro che lo
sviluppo in serie di Taylor del logaritmo naturale, difatti:

$ sum_(m = 1)^(+ oo) frac(\(- 1\)^(m + 1), m) = ln 2 $ Per $\|x\|< 1$
vale la serie geometrica
$ frac(1, 1 + x) = sum_(m = 0)^(+ oo)\(- 1\)^m x^m . $

Si tratta di una serie di potenze con raggio di convergenza $1$, per cui
è lecito integrare termine a termine su ogni intervallo $\[0\,x\]$ con
$x in\(- 1\,1\)$:
$ integral_0^x frac(1, 1 + t) thin d t = integral_0^x sum_(m = 0)^(+ oo)\(- 1\)^m t^m thin d t = sum_(m = 0)^(+ oo) integral_0^x\(- 1\)^m t^m thin d t . $

Calcoliamo i due lati.

Lato sinistro:
$ integral_0^x frac(1, 1 + t) thin d t = ln\(1 + x\)\,#h(2em) x > - 1 . $

Lato destro:
$ integral_0^x\(- 1\)^m t^m thin d t =\(- 1\)^m frac(x^(m + 1), m + 1)\, $
dunque
$ sum_(m = 0)^(+ oo) integral_0^x\(- 1\)^m t^m thin d t = sum_(m = 0)^(+ oo)\(- 1\)^m frac(x^(m + 1), m + 1) . $

Otteniamo quindi, per ogni $x in\(- 1\,1\)$,
$ ln\(1 + x\)= sum_(m = 0)^(+ oo)\(- 1\)^m frac(x^(m + 1), m + 1) . $

Rindicizzando con $n = m + 1$ (cioè $m = n - 1$), otteniamo
$ ln\(1 + x\)= sum_(n = 1)^(+ oo)\(- 1\)^(n - 1) x^n / n = sum_(n = 1)^(+ oo) frac(\(- 1\)^(n + 1), n) x^n\,#h(2em)\|x\|< 1 . $

La funzione $ln\(1 + x\)$ è continua in $x = 1$ e
$ lim_(x arrow.r 1^(-)) ln\(1 + x\)= ln 2 . $

Per il teorema di Abel sulle serie di potenze, la serie
$ sum_(n = 1)^(+ oo) frac(\(- 1\)^(n + 1), n) x^n $ converge per $x = 1$
e la somma al bordo $x = 1$ è il limite della somma per
$x arrow.r 1^(-)$, cioè
$ sum_(n = 1)^(+ oo) frac(\(- 1\)^(n + 1), n) = lim_(x arrow.r 1^(-)) sum_(n = 1)^(+ oo) frac(\(- 1\)^(n + 1), n) x^n = lim_(x arrow.r 1^(-)) ln\(1 + x\)= ln 2 . $
Pertanto $ sum_(m = 1)^(+ oo) frac(\(- 1\)^(m + 1), m) = ln 2 $ come
volevasi dimostrare.

= Serie di funzioni
<serie-di-funzioni>
Si consideri una successione di funzioni $\(f_m\(x\)\)_(m in bb(N))$,
con $f_m : A subset.eq bb(R) arrow.r bb(R)$ per ogni $m$.

Vogliamo considerare la serie:

$ sum_(m = 0)^(+ oo) f_m\(x\) $ \#\#\# Esempio Sia
$f_m\(x\)= frac(m, x^m + 1)$, con $f_m : bb(R)_(+) arrow.r bb(R)$.

È lecito chiedersi se:

$ sum_(m = 1)^(+ oo) f_m\(x\)= sum_(m = 1)^(+ oo) frac(m, x^m + 1) $

converga. Si osserva che, per un valore specifico come $x = 2$, la serie
diventa:

$ sum_(m = 1)^(+ oo) frac(m, 2^m + 1) $

che è una #strong[serie numerica] (poiché il termine generale dipende
solo da $m$).

== Definizione: Limite puntuale (Convergenza puntuale)
<definizione-limite-puntuale-convergenza-puntuale>
Data una successione di funzioni $\(f_m\(x\)\)_m$ definite su
$A subset.eq bb(R)$, si dice che la serie $sum_m f_m\(x\)$
#strong[converge in $x = x_0 in A$] se la serie numerica:

$ sum_m f_m\(x_0\) $

è convergente.

La serie $sum_m f_m\(x\)$ #strong[converge in $A$] se converge per ogni
$x_0 in A$, cioè se la serie numerica $sum_m f_m\(x_0\)$ converge
$forall x_0 in A$.

=== Domanda fondamentale
<domanda-fondamentale-2>
Trovare tutti i valori di $x$ per cui la serie $sum_m f_m\(x\)$
converge, ovvero determinare l'#strong[insieme di convergenza] della
serie.

= L21 ANL2
<l21-anl2>
24/11/2025 \# Serie di Potenze Una serie di potenze è una serie di
funzioni nella forma:

$ sum_(m = 0)^(+ oo) a_m\(x - x_0\)^m $

dove: - $a_m in bb(R)$ sono i coefficienti della serie; - $x_0 in bb(R)$
è il centro della serie.

== Esempio
<esempio-8>
La serie $sum_(m = 0)^(+ oo) x^m$ è una serie di potenze con: -
$a_m = 1$ per ogni $m in bb(N)$\; - $x_0 = 0$.

== Cambiamento di Variabile
<cambiamento-di-variabile>
Data una serie di potenze centrata in $x_0 in bb(R)$, con
$x_0 eq.not 0$:

$ sum_m a_m\(x - x_0\)^m $

è sempre possibile effettuare il cambiamento di variabile $t = x - x_0$.
La serie diventa:

$ sum_m a_m t^m $

che è una serie di potenze nella variabile $t$, centrata in $0$.

Se si denota con $A subset.eq bb(R)$ l'insieme di convergenza della
serie in $t$, allora l'insieme di convergenza della serie originale in
$x$ è dato da:

$ x in A + x_0 $ \#\# Determinazione dell'Insieme di Convergenza La
domanda fondamentale è: come si determina l'insieme di convergenza di
una serie di potenze centrata in $0$?

Cioè, come si determina l'insieme:

$ {x in bb(R) : sum_(m = 0)^(+ oo) a_m x^m upright(" converge")} ? $

=== Lemma di Abel
<lemma-di-abel>
Se la serie $sum_m a_m x^m$ converge in $x = r$, per un certo
$r in bb(R)$ con $r eq.not 0$, allora la serie converge assolutamente in
ogni punto $x in\(-\|r\|\,\|r\|\)$.

=== Proprietà dell'Insieme di Convergenza
<proprietà-dellinsieme-di-convergenza>
Il teorema afferma che l'insieme di convergenza di una serie di potenze
centrata in $0$ è un intervallo simmetrico rispetto all'origine.

#strong[Nota Bene]: L'insieme di convergenza della serie $sum_m a_m x^m$
contiene sempre almeno il punto $x = 0$.

== Raggio di Convergenza
<raggio-di-convergenza>
=== Definizione (Raggio di Convergenza)
<definizione-raggio-di-convergenza>
Data la serie $sum_m a_m x^m$, si definisce #strong[raggio di
convergenza] della serie la quantità:

$ R := sup {x in bb(R) : sum_m a_m x^m upright(" converge")} . $

=== Osservazione
<osservazione-7>
Per definizione, il raggio di convergenza può assumere i seguenti
valori: - $R = 0$\; - $R in bb(R)^(+)\\{ 0 }$\; - $R = + oo$.

== Teorema sul Raggio di Convergenza
<teorema-sul-raggio-di-convergenza>
Sia $R$ il raggio di convergenza della serie $sum_m a_m x^m$. Allora:

- Se $R = 0$, la serie converge #strong[solo] in $x = 0$.
- Se $R in bb(R)^(+)\\{ 0 }$, la serie converge assolutamente
  nell'intervallo $\(- R\,R\)$ e non converge nei punti di
  $bb(R)\\\[- R\,R\]$.
- Se $R = + oo$, la serie converge assolutamente in tutto $bb(R)$.

== Applicazione del Teorema sul Raggio di Convergenza
<applicazione-del-teorema-sul-raggio-di-convergenza>
Per determinare l'insieme di convergenza di una serie di potenze
$sum_m a_m x^m$, si procede in due fasi:

+ #strong[Calcolo del raggio di convergenza $R$]. Se $R$ è finito,
  allora la serie converge assolutamente nell'intervallo $\(- R\,R\)$ e
  non converge fuori da $\[- R\,R\]$.

+ #strong[Studio della convergenza agli estremi]. Si analizza
  separatamente il comportamento della serie nei punti $x = R$ e
  $x = - R$, caso per caso, poiché il teorema non fornisce informazioni
  su questi punti.

== Calcolo del Raggio di Convergenza
<calcolo-del-raggio-di-convergenza>
Esistono due formule principali per calcolare $R$.

=== 1. Formula della Radice
<formula-della-radice>
Supponiamo che esista il limite:

$ lim_(m arrow.r + oo) root(m, \|a_m\|) = ell\, $

dove $ell in\[0\,+ oo\]$. Allora il raggio di convergenza $R$ è dato da:

$ R = cases(delim: "{", + oo & upright("se ") lim_(m arrow.r + oo) root(m, \|a_m\|) = 0\,, 1 / ell & upright("se ") lim_(m arrow.r + oo) root(m, \|a_m\|) = ell > 0\,, 0 & upright("se ") lim_(m arrow.r + oo) root(m, \|a_m\|) = + oo .) $
\#\#\# 2. Formula del Rapporto Supponiamo che esista il limite:

$ lim_(m arrow.r + oo) lr(|a_(m + 1) / a_m|) = ell\, $

dove $ell in\[0\,+ oo\]$. Allora il raggio di convergenza $R$ è dato da:

$ R = cases(delim: "{", + oo & upright("se ") lim_(m arrow.r + oo) lr(|a_(m + 1) / a_m|) = 0\,, 1 / ell & upright("se ") lim_(m arrow.r + oo) lr(|a_(m + 1) / a_m|) = ell > 0\,, 0 & upright("se ") lim_(m arrow.r + oo) lr(|a_(m + 1) / a_m|) = + oo .) $

= L22 ANL2
<l22-anl2>
26/11/2025 \# Esercizi serie numeriche Non mi sembra il caso di andare a
ricopiare dei banali esercizi, quindi questa lezione sarà vuota.

= L23 ANL2
<l23-anl2>
01/12/2025 \# Proprietà Generali delle Serie di Potenze

== Somma di Serie di Potenze
<somma-di-serie-di-potenze>
Siano date due serie di potenze:

$ sum_(m = 1)^(+ oo) a_m x^m quad upright("con raggio di convergenza ") R_a\, $
$ sum_(m = 1)^(+ oo) b_m x^m quad upright("con raggio di convergenza ") R_b . $

#strong[Domanda:] Qual è il raggio di convergenza $R$ della serie somma:
$ sum_(m = 1)^(+ oo)\(a_m + b_m\)x^m $

#strong[Risposta:] In generale, si ha: $ R gt.eq min { R_a\,R_b } . $

Inoltre, se $R_a eq.not R_b$, allora: $ R = min { R_a\,R_b } . $

=== Esempio
<esempio-9>
Si consideri la serie: $ sum_(m = 1)^(+ oo) (1 + 1 / 2^m) x^m . $

Posto $c_m = a_m + b_m$, con: $ a_m = 1\,quad b_m = 1 / 2^m\, $ si
ottiene:
$ sum_(m = 1)^(+ oo) a_m x^m = sum_(m = 1)^(+ oo) x^m quad arrow.r.double quad R_a = 1\, $
$ sum_(m = 1)^(+ oo) b_m x^m = sum_(m = 1)^(+ oo) x^m / 2^m quad arrow.r.double quad R_b = 2 . $

Pertanto: $ R = min { R_a\,R_b } = 1\, $ che rappresenta il raggio di
convergenza della serie originaria
$sum_(m = 1)^(+ oo) (1 + 1 / 2^m) x^m$.

== Caso Particolare: Raggio di Convergenza Maggiore
<caso-particolare-raggio-di-convergenza-maggiore>
Nel caso in cui $R_a = R_b$, può accadere che il raggio di convergenza
della serie somma sia strettamente maggiore del minimo dei raggi, ossia:
$ R > min { R_a\,R_b } . $

=== Esempio
<esempio-10>
Si considerino le due serie:
$ sum_(m = 1)^(+ oo) a_m x^m quad upright("e") quad sum_(m = 1)^(+ oo) b_m x^m\, $
con coefficienti:
$ a_m = 1 quad forall m\,quad b_m = - 1 quad forall m . $

I rispettivi raggi di convergenza sono: $ R_a = 1\,quad R_b = 1 . $

La serie somma è:
$ sum_(m = 1)^(+ oo)\(a_m + b_m\)x^m = sum_(m = 1)^(+ oo)\(1 - 1\)x^m = sum_(m = 1)^(+ oo) 0 dot.op x^m = 0 . $

Essendo identicamente nulla, tale serie converge per ogni $x in bb(R)$,
pertanto: $ R = + oo . $

= Derivazione di Serie di Potenze
<derivazione-di-serie-di-potenze>
Sia $sum_(m = 0)^(+ oo) a_m x^m$ una serie di potenze con raggio di
convergenza $R > 0$. Sia $S :\(- R\,R\)arrow.r bb(R)$ la funzione somma
della serie, definita da: $ S\(x\)= sum_(m = 0)^(+ oo) a_m x^m . $

== Proposizione: Derivabilità della Funzione Somma
<proposizione-derivabilità-della-funzione-somma>
La funzione somma $S\(x\)$ è derivabile nell'intervallo $\(- R\,R\)$ e
la sua derivata è data da:
$ S'\(x\)= sum_(m = 1)^(+ oo) m a_m x^(m - 1) . $

Questa è una serie di potenze con raggio di convergenza uguale a $R$.

=== Osservazione
<osservazione-8>
È facile convincersi del fatto che il raggio di convergenza di $S'\(x\)$
coincide con quello di $S\(x\)$. Si consideri infatti la formula della
radice per determinare il raggio di convergenza. Per la serie derivata
$sum_(m = 1)^(+ oo) m a_m x^(m - 1)$, si ha:

$ lim_(m arrow.r + oo) root(m, \|m a_m\|) = lim_(m arrow.r + oo) root(m, m) dot.op root(m, \|a_m\|) . $

Poiché: $ lim_(m arrow.r + oo) root(m, m) = 1\, $

segue che:
$ lim_(m arrow.r + oo) root(m, \|m a_m\|) = lim_(m arrow.r + oo) root(m, \|a_m\|) . $

Pertanto, il raggio di convergenza della serie derivata
$sum_(m = 1)^(+ oo) m a_m x^(m - 1)$ coincide con quello della serie
originaria $sum_(m = 0)^(+ oo) a_m x^m$.

== Osservazione: Derivate di Ordine Superiore
<osservazione-derivate-di-ordine-superiore>
La derivata seconda della funzione somma $S\(x\)$ è data da:
$ S''\(x\)= sum_(m = 2)^(+ oo) m\(m - 1\)a_m x^(m - 2) . $

In generale, la derivata $k$-esima è:
$ S^(\(k\))\(x\)= sum_(m = k)^(+ oo) m\(m - 1\)dots.h.c\(m - k + 1\)a_m x^(m - k)\, $
che è anch'essa una serie di potenze con raggio di convergenza $R$. Di
conseguenza, ogni serie di potenze definisce una funzione infinitamente
derivabile ($C^oo$) nell'intervallo aperto di convergenza $\(- R\,R\)$.

= Integrazione di Serie di Potenze
<integrazione-di-serie-di-potenze>
Sia $sum_(m = 0)^(+ oo) a_m x^m$ una serie di potenze con raggio di
convergenza $R > 0$. Sia $S :\(- R\,R\)arrow.r bb(R)$ la funzione somma
della serie, definita da: $ S\(x\)= sum_(m = 0)^(+ oo) a_m x^m . $

== Proposizione: Integrale della Funzione Somma
<proposizione-integrale-della-funzione-somma>
La funzione $S\(x\)$ è integrabile in $\(- R\,R\)$ e il suo integrale
indefinito è dato da:
$ integral_0^x S\(t\)thin d t = sum_(m = 0)^(+ oo) frac(a_m, m + 1) x^(m + 1) . $

Questa è anch'essa una serie di potenze con raggio di convergenza $R$.

== Esempio: Sviluppo in Serie di $log\(1 + x\)$
<esempio-sviluppo-in-serie-di-log1x>
Partiamo dalla serie geometrica convergente per $t in\(- 1\,1\)$:
$ sum_(m = 0)^(+ oo)\(- t\)^m = frac(1, 1 -\(- t\)) = frac(1, 1 + t) . $

Sostituendo $t$ con $x$, si ha per $x in\(- 1\,1\)$:
$ sum_(m = 0)^(+ oo)\(- 1\)^m x^m = frac(1, 1 + x) . $

Integrando entrambi i membri tra $0$ e $x$ (con $x in\(- 1\,1\)$),
otteniamo:
$ integral_0^x sum_(m = 0)^(+ oo)\(- 1\)^m t^m thin d t = integral_0^x frac(1, 1 + t) thin d t . $

Poiché la serie converge uniformemente su ogni intervallo compatto
contenuto in $\(- 1\,1\)$, è lecito scambiare somma e integrale:
$ sum_(m = 0)^(+ oo)\(- 1\)^m integral_0^x t^m thin d t = [log \( 1 + t \)]_0^x . $

Calcolando gli integrali:
$ sum_(m = 0)^(+ oo)\(- 1\)^m [frac(t^(m + 1), m + 1)]_0^x = log\(1 + x\). $

Pertanto:
$ sum_(m = 0)^(+ oo)\(- 1\)^m frac(x^(m + 1), m + 1) = log\(1 + x\)\,quad forall x in\(- 1\,1\). $

=== Osservazione
<osservazione-9>
Riscrivendo la serie in forma esplicita, si ottiene:
$ x - x^2 / 2 + x^3 / 3 - x^4 / 4 + dots.h.c = log\(1 + x\)\,quad forall x in\(- 1\,1\). $

= Serie di Taylor
<serie-di-taylor>
== Domanda Fondamentale
<domanda-fondamentale-3>
Data una funzione $f in C^oo\(bb(R)\)$, è sempre possibile
rappresentarla come una serie di potenze?

Fissiamo un intervallo $I subset.eq bb(R)$, una funzione
$f : I arrow.r bb(R)$ di classe $C^oo$ e un punto $x_0 in I$.

== Definizione: Serie di Taylor
<definizione-serie-di-taylor>
La serie di potenze:
$ sum_(m = 0)^(+ oo) frac(f^(\(m\))\(x_0\), m !)\(x - x_0\)^m $ si
chiama #strong[serie di Taylor] di $f$ centrata in $x_0$.

=== Osservazione
<osservazione-10>
Se si tronca la serie al termine di ordine $N$, si ottiene il polinomio:
$ sum_(m = 0)^N frac(f^(\(m\))\(x_0\), m !)\(x - x_0\)^m = f\(x_0\)+ f'\(x_0\)\(x - x_0\)+ frac(f''\(x_0\), 2 !)\(x - x_0\)^2 + dots.h.c + frac(f^(\(N\))\(x_0\), N !)\(x - x_0\)^N . $

Tale polinomio è detto #strong[polinomio di Taylor di ordine $N$] di $f$
centrato in $x_0$.

== Risposte alle Domande Fondamentali
<risposte-alle-domande-fondamentali>
In generale, la risposta a entrambe le domande è #strong[No].

=== 1) Convergenza della Serie di Taylor
<convergenza-della-serie-di-taylor>
Esistono funzioni $f in C^oo\(bb(R)\)$ la cui serie di Taylor converge
#strong[solo nel punto centrale] $x_0$, ossia ha raggio di convergenza
$R = 0$.

=== 2) Coincidenza con la Funzione Originaria
<coincidenza-con-la-funzione-originaria>
Esistono funzioni $f in C^oo\(bb(R)\)$ la cui serie di Taylor ha raggio
di convergenza $R > 0$, ma #strong[non coincide] con la funzione $f$
nell'intervallo di convergenza $\(- R\,R\)$.

=== Esempio
<esempio-11>
Si consideri la funzione:
$ f\(x\)= cases(delim: "{", e^(- 1 / x) & upright("se ") x > 0\,, 0 & upright("se ") x lt.eq 0 .) $

Questa funzione è di classe $C^oo\(bb(R)\)$. Tuttavia, la sua serie di
Taylor centrata in $x_0 = 0$ è identicamente nulla (tutte le derivate in
$0$ sono nulle), mentre $f\(x\)eq.not 0$ per ogni $x > 0$. Pertanto, la
serie di Taylor non coincide con $f$ in alcun intorno di $0$, nonostante
abbia raggio di convergenza infinito.

== Definizione: Funzione Analitica
<definizione-funzione-analitica>
Sia $I subset.eq bb(R)$ un intervallo, $x_0 in I$ e
$f : I arrow.r bb(R)$ una funzione di classe $C^oo$. Si dice che $f$ è
#strong[analitica] in $x_0$ se esiste un intorno di $x_0$ tale che la
serie di Taylor di $f$ centrata in $x_0$:
$ sum_(m = 0)^(+ oo) frac(f^(\(m\))\(x_0\), m !)\(x - x_0\)^m $ converge
e coincide con $f\(x\)$ per ogni $x$ in quell'intorno.

=== Osservazione
<osservazione-11>
La proprietà di analiticità è più forte della semplice derivabilità
infinita. L'analiticità implica:

- La convergenza della serie di Taylor in un intorno del punto.
- L'identità tra la somma della serie e la funzione stessa in tale
  intorno.

== Domanda: Come Verificare l'Analiticità?
<domanda-come-verificare-lanaliticità>
#strong[Risposta:] Esistono criteri sufficienti, noti come
#strong[criteri di analiticità], che permettono di verificare se una
funzione è analitica in un punto senza dover calcolare esplicitamente
tutte le derivate e studiare la convergenza della serie di Taylor. Tali
criteri sono basati su stime uniformi delle derivate successive o su
proprietà di prolungamento complesso.

== Criterio di Analiticità
<criterio-di-analiticità>
Sia $f : I subset.eq bb(R) arrow.r bb(R)$ una funzione di classe $C^oo$.
Se esistono due costanti $A\,B > 0$ tali che:
$ lr(|f^(\(m\)) \( x \)|) lt.eq A dot.op B^m quad forall x in I\,thick forall m in bb(N)\, $
allora $f$ è #strong[analitica] in $I$.

=== Caso Particolare: Derivate Limitate Uniformemente
<caso-particolare-derivate-limitate-uniformemente>
Se $B = 1$, il criterio diventa:
$ lr(|f^(\(m\)) \( x \)|) lt.eq A quad forall x in I\,thick forall m in bb(N) . $

In altre parole, se tutte le derivate di $f$ sono #strong[limitate
uniformemente] su $I$, allora $f$ è analitica in $I$.

== Altra Applicazione: Risoluzione di Problemi di Cauchy con Serie di Potenze
<altra-applicazione-risoluzione-di-problemi-di-cauchy-con-serie-di-potenze>
Consideriamo il problema di Cauchy: $ {y'\(x\)= y\(x\)\,\
y\(0\)= 1 . $

È noto che la soluzione è $y\(x\)= e^x$. Tuttavia, cerchiamo una
soluzione nella forma di serie di potenze:
$ y\(x\)= sum_(m = 0)^(+ oo) a_m x^m . $

Per trovare i coefficienti $a_m$, sostituiamo la serie nell'equazione
differenziale. Poiché la serie converge uniformemente su ogni compatto
(per ipotesi di convergenza della soluzione), possiamo derivare termine
a termine:
$ y'\(x\)= (sum_(m = 0)^(+ oo) a_m x^m)' = sum_(m = 1)^(+ oo) m a_m x^(m - 1) . $

Imponendo $y'\(x\)= y\(x\)$, si ottiene:
$ sum_(m = 1)^(+ oo) m a_m x^(m - 1) = sum_(m = 0)^(+ oo) a_m x^m . $

Riscrivendo il primo membro con indice $m$ (sostituendo $m - 1$ con
$m$):
$ sum_(m = 0)^(+ oo)\(m + 1\)a_(m + 1) x^m = sum_(m = 0)^(+ oo) a_m x^m . $

Uguagliando i coefficienti delle potenze di $x^m$, si ricava la
relazione di ricorrenza:
$ \(m + 1\)a_(m + 1) = a_m quad forall m in bb(N) . $

Da cui segue: $ a_(m + 1) = frac(a_m, m + 1) quad forall m in bb(N) . $

= L24 ANL2
<l24-anl2>
03/11/2025 \# Esercizi serie numeriche Non mi sembra il caso di andare a
ricopiare dei banali esercizi, quindi questa lezione sarà vuota.

= L25 ANL2
<l25-anl2>
11/12/2025

= Serie di Fourier
<serie-di-fourier>
== Definizione di Funzione Periodica
<definizione-di-funzione-periodica>
Una funzione $f : bb(R) arrow.r bb(R)$ si dice #strong[periodica di
periodo] $T > 0$, o #strong[$T$-periodica], se:

$ f\(x\)= f\(x + T\)quad forall x in bb(R) $

=== Osservazioni
<osservazioni-2>
=== Proprietà di periodicità multipla
<proprietà-di-periodicità-multipla>
Se $f$ è $T$-periodica, allora $f$ è anche $m T$-periodica per ogni
$m in bb(N)$. \ #strong[Dimostrazione:]

$ f\(x + m T\) & = f (x + \( m - 1 \) T + T)\
 & = f (x + \( m - 1 \) T) quad upright("[poiché ") f upright(" è ") T upright("-periodica]")\
 & dots.v\
 & = f\(x\)quad forall x in bb(R) $

=== Trasformazione di scala e periodicità
<trasformazione-di-scala-e-periodicità>
Se $f$ è $T$-periodica, e si definisce $alpha > 0$ e la funzione
$g\(x\)= f\(alpha x\)$, allora $g$ è $T / alpha$-periodica. \
#strong[Dimostrazione:]

$ g (x + T / alpha) & = f (alpha (x + T / alpha))\
 & = f\(alpha x + T\)\
 & = f\(alpha x\)quad upright("[poiché ") f upright(" è ") T upright("-periodica]")\
 & = g\(x\)quad forall x in bb(R) $

= Esempi Notevoli di Funzioni Periodiche
<esempi-notevoli-di-funzioni-periodiche>
Le seguenti funzioni elementari sono periodiche con i rispettivi periodi
fondamentali:

- $sin x$, $cos x$ → $2 pi$-periodiche
- $sin\(2 x\)$, $cos\(2 x\)$ → $pi$-periodiche
- $sin\(3 x\)$, $cos\(3 x\)$ → $frac(2 pi, 3)$-periodiche
- $dots.v$
- $sin\(m x\)$, $cos\(m x\)$ → $frac(2 pi, m)$-periodiche, per
  $m in bb(N)$

= Definizione di Polinomio Trigonometrico
<definizione-di-polinomio-trigonometrico>
Una funzione della forma:

$ a_0 + sum_(m = 1)^N (a_m cos m x + b_m sin m x) $

con $a_0\,a_1\,dots.h\,a_N\,b_1\,dots.h\,b_N in bb(R)$, si dice
#strong[polinomio trigonometrico di grado $N$].

== Esempio
<esempio-12>
$ 1 / sqrt(2) - sqrt(5) cos\(3 x\)+ 23 sin\(7 x\) $

è un polinomio trigonometrico di grado 7, con coefficienti: -
$a_0 = 1 / sqrt(2)$ - $a_3 = - sqrt(5)$ - $b_7 = 23$

== Osservazioni
<osservazioni-3>
+ La somma di due polinomi trigonometrici è ancora un polinomio
  trigonometrico.
+ Il prodotto di due polinomi trigonometrici è ancora un polinomio
  trigonometrico.

== Formule di Werner
<formule-di-werner>
Le formule di Werner consentono di trasformare prodotti di funzioni
trigonometriche in somme. Siano $alpha\,beta in bb(R)$:

$ cos alpha dot.op cos beta & = 1 / 2 cos\(alpha - beta\)+ 1 / 2 cos\(alpha + beta\)\
sin alpha dot.op sin beta & = 1 / 2 cos\(alpha - beta\)- 1 / 2 cos\(alpha + beta\)\
sin alpha dot.op cos beta & = 1 / 2 sin\(alpha + beta\)+ 1 / 2 sin\(alpha - beta\) $

=== Applicazione: Prodotto di coseni con argomenti interi
<applicazione-prodotto-di-coseni-con-argomenti-interi>
Siano $m\,k in bb(N)$. Allora:

$ cos\(m x\)cos\(k x\)= 1 / 2 cos\(\(m - k\)x\)+ 1 / 2 cos\(\(m + k\)x\) $

== Osservazione: Ortogonalità delle Funzioni Trigonometriche
<osservazione-ortogonalità-delle-funzioni-trigonometriche>
Applicando le formule di Werner, si ottengono le seguenti proprietà di
ortogonalità su $\[- pi\,pi\]$:

=== \(1) Prodotto di coseni
<prodotto-di-coseni>
$ integral_(- pi)^pi cos\(m x\)cos\(k x\)d x = cases(delim: "{", 0 & upright("se ") m eq.not k, pi & upright("se ") m = k eq.not 0) quad forall m\,k in bb(N) $

=== \(2) Prodotto di seni
<prodotto-di-seni>
$ integral_(- pi)^pi sin\(m x\)sin\(k x\)d x = cases(delim: "{", 0 & upright("se ") m eq.not k, pi & upright("se ") m = k eq.not 0) quad forall m\,k in bb(N) $

=== \(3) Prodotto misto seno-coseno
<prodotto-misto-seno-coseno>
$ integral_(- pi)^pi sin\(m x\)cos\(k x\)d x = 0 quad forall m\,k in bb(N) $

== Dimostrazione della Proprietà (1)
<dimostrazione-della-proprietà-1>
Si consideri l'integrale:

$ integral_(- pi)^pi cos\(m x\)cos\(k x\)d x = integral_(- pi)^pi [1 / 2 cos \( \( m - k \) x \) + 1 / 2 cos \( \( m + k \) x \)] d x $

=== Caso $m eq.not k$
<caso-m-neq-k>
$ 1 / 2 integral_(- pi)^pi cos\(\(m - k\)x\)d x & = 1 / 2 [frac(sin\(\(m - k\)x\), m - k)]_(- pi)^pi = 0\
1 / 2 integral_(- pi)^pi cos\(\(m + k\)x\)d x & = 1 / 2 [frac(sin\(\(m + k\)x\), m + k)]_(- pi)^pi = 0 $

Quindi, l'integrale totale è nullo.

=== Caso $m = k$
<caso-m-k>
In questo caso, la formula di Werner non è applicabile direttamente. Si
utilizza l'identità:

$ cos^2\(k x\)= frac(1 + cos\(2 k x\), 2) $

Pertanto:

$ integral_(- pi)^pi cos^2\(k x\)d x & = integral_(- pi)^pi frac(1 + cos\(2 k x\), 2) d x\
 & = 1 / 2 integral_(- pi)^pi 1 d x + 1 / 2 integral_(- pi)^pi cos\(2 k x\)d x\
 & = 1 / 2 dot.op 2 pi + 0 = pi $

Ciò dimostra che $integral_(- pi)^pi cos\(m x\)cos\(k x\)d x = pi$
quando $m = k eq.not 0$.

= Sviluppo in Serie di Fourier: Determinazione dei Coefficienti
<sviluppo-in-serie-di-fourier-determinazione-dei-coefficienti>
Sia $f : bb(R) arrow.r bb(R)$ una funzione $2 pi$-periodica. Supponiamo
che $f$ possa essere sviluppata nella forma:

$ f\(x\)= a_0 + sum_(m = 1)^(+ oo) (a_m cos \( m x \) + b_m sin \( m x \)) $

Supponiamo inoltre che:

+ La serie converga per ogni $x in bb(R)$.
+ Si possano scambiare l'ordine della somma e dell'integrale.

#strong[Domanda:] È possibile determinare formule esplicite per i
coefficienti $a_0$, $a_m$, $b_m$ ($m gt.eq 1$)?

== Calcolo del Coefficiente $a_0$
<calcolo-del-coefficiente-a_0>
Integrando entrambi i membri dell'identità tra $- pi$ e $pi$:

$ integral_(- pi)^pi f\(x\)d x = integral_(- pi)^pi a_0 d x + sum_(m = 1)^(+ oo) [integral_(- pi)^pi a_m cos \( m x \) d x + integral_(- pi)^pi b_m sin \( m x \) d x] $

Per le proprietà di ortogonalità dimostrate precedentemente, si ha:

- $integral_(- pi)^pi cos\(m x\)d x = 0$ per ogni $m gt.eq 1$
- $integral_(- pi)^pi sin\(m x\)d x = 0$ per ogni $m gt.eq 1$

Quindi:

$ integral_(- pi)^pi f\(x\)d x = integral_(- pi)^pi a_0 d x = 2 pi a_0 $

Da cui si ricava la formula per $a_0$:

$ a_0 = frac(1, 2 pi) integral_(- pi)^pi f\(x\)d x $

Il coefficiente $a_0$ rappresenta il #strong[valore medio integrale] di
$f$ sull'intervallo $\[- pi\,pi\]$.

== Calcolo dei Coefficienti $a_k$ ($k gt.eq 1$)
<calcolo-dei-coefficienti-a_k-k-geq-1>
Moltiplichiamo l'identità di sviluppo per $cos\(k x\)$ e integriamo su
$\[- pi\,pi\]$:

$ integral_(- pi)^pi f\(x\)cos\(k x\)d x = integral_(- pi)^pi a_0 cos\(k x\)d x + sum_(m = 1)^(+ oo) [integral_(- pi)^pi a_m cos \( m x \) cos \( k x \) d x + integral_(- pi)^pi b_m sin \( m x \) cos \( k x \) d x] $

Per le proprietà di ortogonalità:

- $integral_(- pi)^pi cos\(k x\)d x = 0$ → il primo termine è nullo.
- $integral_(- pi)^pi sin\(m x\)cos\(k x\)d x = 0$ per ogni
  $m\,k in bb(N)$ → tutti i termini con $b_m$ sono nulli.
- $integral_(- pi)^pi cos\(m x\)cos\(k x\)d x = 0$ se $m eq.not k$, e
  $pi$ se $m = k$.

Di conseguenza, nella somma sopravvive solo il termine con $m = k$:

$ integral_(- pi)^pi f\(x\)cos\(k x\)d x = a_k integral_(- pi)^pi cos^2\(k x\)d x = a_k dot.op pi $

Da cui si ottiene la formula per $a_k$:

$ a_k = 1 / pi integral_(- pi)^pi f\(x\)cos\(k x\)d x quad forall k gt.eq 1 $

== Calcolo dei Coefficienti $b_k$ ($k gt.eq 1$)
<calcolo-dei-coefficienti-b_k-k-geq-1>
Moltiplichiamo l'identità di sviluppo per $sin\(k x\)$ e integriamo su
$\[- pi\,pi\]$:

$ integral_(- pi)^pi f\(x\)sin\(k x\)d x = integral_(- pi)^pi a_0 sin\(k x\)d x + sum_(m = 1)^(+ oo) [integral_(- pi)^pi a_m cos \( m x \) sin \( k x \) d x + integral_(- pi)^pi b_m sin \( m x \) sin \( k x \) d x] $

Per le proprietà di ortogonalità:

- $integral_(- pi)^pi sin\(k x\)d x = 0$ → il primo termine è nullo.
- $integral_(- pi)^pi cos\(m x\)sin\(k x\)d x = 0$ per ogni
  $m\,k in bb(N)$ → tutti i termini con $a_m$ sono nulli.
- $integral_(- pi)^pi sin\(m x\)sin\(k x\)d x = 0$ se $m eq.not k$, e
  $pi$ se $m = k$.

Di conseguenza, nella somma sopravvive solo il termine con $m = k$:

$ integral_(- pi)^pi f\(x\)sin\(k x\)d x = b_k integral_(- pi)^pi sin^2\(k x\)d x = b_k dot.op pi $

Da cui si ottiene la formula per $b_k$:

$ b_k = 1 / pi integral_(- pi)^pi f\(x\)sin\(k x\)d x quad forall k gt.eq 1 $

= Definizione di Serie di Fourier
<definizione-di-serie-di-fourier>
Sia $f : bb(R) arrow.r bb(R)$ una funzione $2 pi$-periodica e
integrabile su $\[- pi\,pi\]$. Si definisce #strong[serie di Fourier di
$f$] la serie:

$ f\(x\)tilde.op a_0 + sum_(m = 1)^(+ oo) (a_m cos \( m x \) + b_m sin \( m x \)) $

dove i coefficienti $a_0$, $a_m$, $b_m$ ($m gt.eq 1$) sono dati dalle
formule:

$ a_0 & = frac(1, 2 pi) integral_(- pi)^pi f\(x\)d x\
a_m & = 1 / pi integral_(- pi)^pi f\(x\)cos\(m x\)d x\
b_m & = 1 / pi integral_(- pi)^pi f\(x\)sin\(m x\)d x $

Nota bene: per $m = + oo$ la funzione non è più $tilde.op$ ma bensì $=$

== Osservazione: Semplificazione per Funzioni Pari o Dispari
<osservazione-semplificazione-per-funzioni-pari-o-dispari>
In generale, il calcolo dei coefficienti di Fourier può essere
semplificato sfruttando la simmetria della funzione.

=== Teorema: Funzioni Pari
<teorema-funzioni-pari>
Se $f$ è #strong[pari], cioè $f\(- x\)= f\(x\)$ per ogni $x in bb(R)$,
allora:

$ b_m = 1 / pi integral_(- pi)^pi f\(x\)sin\(m x\)d x = 0 quad forall m gt.eq 1 $

#emph[Dimostrazione:] La funzione integranda $f\(x\)sin\(m x\)$ è
dispari (prodotto di una funzione pari e una dispari), e l'integrale di
una funzione dispari su un intervallo simmetrico rispetto all'origine è
nullo.

Di conseguenza, la serie di Fourier di una funzione pari contiene solo
termini coseno:

$ f\(x\)tilde.op a_0 + sum_(m = 1)^(+ oo) a_m cos\(m x\) $

=== Teorema: Funzioni Dispari
<teorema-funzioni-dispari>
Se $f$ è #strong[dispari], cioè $f\(- x\)= - f\(x\)$ per ogni
$x in bb(R)$, allora:

$ a_m = 1 / pi integral_(- pi)^pi f\(x\)cos\(m x\)d x = 0 quad forall m gt.eq 0 $

#emph[Dimostrazione:] La funzione integranda $f\(x\)cos\(m x\)$ è
dispari (prodotto di una funzione dispari e una pari), e l'integrale di
una funzione dispari su un intervallo simmetrico rispetto all'origine è
nullo.

Di conseguenza, la serie di Fourier di una funzione dispari contiene
solo termini seno:

$ f\(x\)tilde.op sum_(m = 1)^(+ oo) b_m sin\(m x\) $

= L26 ANL2
<l26-anl2>
15/12/2025

= Nozioni sulle Norme
<nozioni-sulle-norme>
Le norme costituiscono un formalismo matematico che consente di
associare a un oggetto (ad esempio, un vettore o una funzione) un numero
reale non negativo, il quale quantifica la "grandezza" o l'ampiezza
dell'oggetto stesso. Tale associazione è fondamentale per definire
concetti come la distanza e la convergenza in spazi vettoriali.

== Distanza Euclidea in $bb(R)^2$
<distanza-euclidea-in-mathbbr2>
Un caso specifico e di rilevante importanza pratica è rappresentato
dalla distanza euclidea tra due vettori nello spazio $bb(R)^2$. Siano
dati due vettori:

$ arrow(v) =\(x_1\,y_1\)\,quad arrow(w) =\(x_2\,y_2\) $

La distanza euclidea tra $arrow(v)$ e $arrow(w)$ è definita come la
norma euclidea della loro differenza:

$ parallel arrow(v) - arrow(w) parallel = sqrt(\(x_1 - x_2\)^2 +\(y_1 - y_2\)^2) $

Questa distanza è strettamente legata alla norma euclidea di un singolo
vettore $arrow(u) =\(x\,y\)$, data da:

$ parallel arrow(u) parallel = sqrt(x^2 + y^2) $

== Altre Norme in $bb(R)^2$
<altre-norme-in-mathbbr2>
Oltre alla norma euclidea, esistono altre definizioni di norma per
vettori in $bb(R)^2$, ciascuna con una propria interpretazione
geometrica e applicativa. Le due più comuni sono:

- #strong[Norma $L^1$ (o norma della somma)]:
  $ parallel arrow(u) parallel_1 =\|x\|+\|y\| $

- #strong[Norma $L^oo$ (o norma del massimo)]:
  $ parallel arrow(u) parallel_oo = max {\|x\|\,\|y\|} $

=== Osservazione: Contesto Applicativo
<osservazione-contesto-applicativo>
Supponiamo di trovarci in una città il cui reticolo stradale è disposto
su una griglia ortogonale (come a Manhattan). In questo contesto, la
distanza percorsa tra due punti non può essere calcolata come la linea
retta (distanza euclidea), ma deve seguire le strade. La distanza
effettiva percorsa corrisponde alla norma $L^1$, ossia $\|x\|+\|y\|$.

=== Equivalenza delle Norme in Spazi di Dimensione Finita
<equivalenza-delle-norme-in-spazi-di-dimensione-finita>
La scelta di una specifica norma non è univoca e dipende sempre dal
contesto e dagli obiettivi dell'analisi. Tuttavia, in uno spazio
vettoriale di dimensione finita, come $bb(R)^n$, tutte le norme sono
equivalenti. Ciò significa che se una successione di vettori converge
rispetto a una norma, essa converge anche rispetto a qualsiasi altra
norma definita nello stesso spazio.

=== Divergenza nel Caso di Dimensione Infinita
<divergenza-nel-caso-di-dimensione-infinita>
Tale proprietà di equivalenza non si estende agli spazi di dimensione
infinita, tipici degli spazi funzionali. In questi contesti, diverse
norme possono produrre topologie radicalmente differenti, influenzando
significativamente la convergenza e le proprietà analitiche delle
funzioni.

== Esempi di Norme per Funzioni
<esempi-di-norme-per-funzioni>
Per illustrare questo concetto, consideriamo lo spazio delle funzioni
continue definite sull'intervallo $\[- pi\,pi\]$. Due esempi di norme
comunemente utilizzate sono:

- #strong[Norma $L^1$]:
  $ parallel f parallel_1 = integral_(- pi)^pi\|f\(x\)\|thin d x $

- #strong[Norma $L^oo$ (norma del massimo o uniforme)]:
  $ parallel f parallel_oo = sup_(x in\[- pi\,pi\])\|f\(x\)\| $

=== Osservazione: Non Equivalenza delle Norme in Spazi Funzionali
<osservazione-non-equivalenza-delle-norme-in-spazi-funzionali>
È possibile dimostrare che esi9stono funzioni per le quali la norma
$L^oo$ è finita, ma la norma quadratica (ad esempio, la norma $L^2$) non
lo è. Viceversa, una funzione può avere norma quadratica finita senza
possedere una norma $L^oo$ finita. Pertanto, in spazi funzionali, il
concetto di "grandezza" di una funzione dipende criticamente dalla norma
scelta, e il viceversa non è sempre vero.

== Teorema sulla Serie di Fourier
<teorema-sulla-serie-di-fourier>
Per le serie di Fourier, un risultato fondamentale è il seguente.

#strong[Teorema:] Sia $f : bb(R) arrow.r bb(R)$ una funzione
$2 pi$-periodica e integrabile sull'intervallo $\[- pi\,pi\]$. Sia $S_N$
l'$N$-esima somma ridotta della serie di Fourier di $f$, definita come:

$ S_N\(x\)= a_0 + sum_(m = 1)^N (a_m cos \( m x \) + b_m sin \( m x \)) $

dove $a_0$, $a_m$, $b_m$ ($m gt.eq 1$) sono i coefficienti di Fourier di
$f$.

Allora, per ogni polinomio trigonometrico $Q$ di grado minore o uguale a
$N$, si ha:

$ parallel f - S_N parallel_2 lt.eq parallel f - Q parallel_2 $

Questo teorema afferma che, nella norma $L^2$, la somma parziale $S_N$
della serie di Fourier rappresenta la migliore approssimazione di $f$
tra tutti i polinomi trigonometrici di grado al più $N$. In altre
parole, $S_N$ minimizza l'errore quadratico medio rispetto a qualsiasi
altro polinomio trigonometrico dello stesso grado.

== Conseguenze del Teorema: Calcolo della Norma $L^2$ dell'Errore
<conseguenze-del-teorema-calcolo-della-norma-l2-dellerrore>
Come conseguenza del teorema precedente, è possibile calcolare
esplicitamente il quadrato della norma $L^2$ dell'errore
$parallel f - S_N parallel_2^2$. Si ha:

$ parallel f - S_N parallel_2^2 = integral_(- pi)^pi\|f\(x\)- S_N\(x\)\|^2 thin d x $

Espandendo l'integrando, si ottiene:

$ = integral_(- pi)^pi\|f\(x\)\|^2 thin d x + integral_(- pi)^pi\|S_N\(x\)\|^2 thin d x - 2 integral_(- pi)^pi f\(x\)S_N\(x\)thin d x $

=== Analisi dei Termini
<analisi-dei-termini>
- Il primo termine è il quadrato della norma $L^2$ di $f$:
  $ integral_(- pi)^pi\|f\(x\)\|^2 thin d x = parallel f parallel_2^2 $

- Il secondo termine, $integral_(- pi)^pi\|S_N\(x\)\|^2 thin d x$, può
  essere sviluppato sostituendo l'espressione di $S_N\(x\)$ e sfruttando
  le proprietà di ortogonalità delle funzioni trigonometriche.
  Espandendo il quadrato si ottiene:

  $ integral_(- pi)^pi lr(|a_0 + sum_(m = 1)^N \( a_m cos \( m x \) + b_m sin \( m x \) \)|)^2 d x $

  Questo integrale si scompone in una somma di integrali. I termini
  incrociati (detti "doppi prodotti"), come $a_0 a_m cos\(m x\)$,
  $a_0 b_m sin\(m x\)$, $a_m a_k cos\(m x\)cos\(k x\)$,
  $b_m b_k sin\(m x\)sin\(k x\)$, e $a_m b_k cos\(m x\)sin\(k x\)$ per
  $m eq.not k$, sono tutti nulli per la proprietà di ortogonalità delle
  funzioni trigonometriche su $\[- pi\,pi\]$. Pertanto, rimangono solo i
  termini quadratici.

  Il risultato finale è:

  $ integral_(- pi)^pi\|S_N\(x\)\|^2 thin d x = 2 pi a_0^2 + pi sum_(m = 1)^N\(a_m^2 + b_m^2\) $

Questo calcolo fornisce un'espressione esplicita per la norma quadratica
dell'approssimazione $S_N$, che è cruciale per valutare la qualità della
convergenza della serie di Fourier.

== Calcolo Esplicito dell'Errore Quadratico Medio
<calcolo-esplicito-dellerrore-quadratico-medio>
Procediamo con il calcolo del termine centrale,
$integral_(- pi)^pi f\(x\)S_N\(x\)thin d x$, per completare
l'espressione di $parallel f - S_N parallel_2^2$.

Sostituendo l'espressione di $S_N\(x\)$, si ottiene:

$ integral_(- pi)^pi f\(x\)S_N\(x\)thin d x = integral_(- pi)^pi a_0 f\(x\)thin d x + sum_(m = 1)^N [a_m integral_(- pi)^pi f \( x \) cos \( m x \) thin d x + b_m integral_(- pi)^pi f \( x \) sin \( m x \) thin d x] $

Per la definizione dei coefficienti di Fourier, sappiamo che:

- $a_0 = frac(1, 2 pi) integral_(- pi)^pi f\(x\)thin d x$
- $a_m = 1 / pi integral_(- pi)^pi f\(x\)cos\(m x\)thin d x$
- $b_m = 1 / pi integral_(- pi)^pi f\(x\)sin\(m x\)thin d x$

Sostituendo queste espressioni, il termine diventa:

$ = 2 pi a_0^2 + pi sum_(m = 1)^N\(a_m^2 + b_m^2\) $

=== Espressione Finale dell'Errore
<espressione-finale-dellerrore>
Riunendo tutti i termini, l'espressione completa per il quadrato della
norma dell'errore è:

$ parallel f - S_N parallel_2^2 = parallel f parallel_2^2 + (2 pi a_0^2 + pi sum_(m = 1)^N \( a_m^2 + b_m^2 \)) - 2 (2 pi a_0^2 + pi sum_(m = 1)^N \( a_m^2 + b_m^2 \)) $

Semplificando, si ottiene:

$ parallel f - S_N parallel_2^2 = parallel f parallel_2^2 - (2 pi a_0^2 + pi sum_(m = 1)^N \( a_m^2 + b_m^2 \)) $

=== Identità di Parseval (Caso Parziale)
<identità-di-parseval-caso-parziale>
Questa relazione può essere riscritta come:

$ 2 pi a_0^2 + pi sum_(m = 1)^N\(a_m^2 + b_m^2\)= parallel f parallel_2^2 - parallel f - S_N parallel_2^2 $

Questa formula mostra che la somma dei quadrati dei coefficienti di
Fourier fino all'ordine $N$ rappresenta la quantità di "energia" (nel
senso della norma $L^2$) catturata dalla somma parziale $S_N$. L'errore
quadratico medio è quindi la differenza tra l'energia totale della
funzione e quella catturata dai primi $N$ termini della serie.

== Convergenza della Serie dei Quadrati dei Coefficienti di Fourier
<convergenza-della-serie-dei-quadrati-dei-coefficienti-di-fourier>
Utilizzando la relazione precedentemente derivata, è possibile
dimostrare una proprietà fondamentale della serie dei quadrati dei
coefficienti di Fourier.

=== Teorema: Convergenza della Serie $sum_(m = 1)^(+ oo)\(a_m^2 + b_m^2\)$
<teorema-convergenza-della-serie-sum_m1infty-a_m2-b_m2>
Se la funzione $f$ appartiene a $L^2\(\[- pi\,pi\]\)$, cioè se
$parallel f parallel_2 < + oo$, allora la serie numerica:

$ sum_(m = 1)^(+ oo)\(a_m^2 + b_m^2\) $

è convergente.

=== Dimostrazione
<dimostrazione>
Sia $c_N$ la somma parziale della serie, definita come:

$ c_N := sum_(m = 1)^N\(a_m^2 + b_m^2\) $

La successione $\(c_N\)_(N in bb(N))$ è: - #strong[Crescente]: poiché
ogni termine $a_m^2 + b_m^2$ è non negativo, si ha $c_(N + 1) gt.eq c_N$
per ogni $N$. - #strong[Limitata superiormente]: utilizzando l'identità
di Parseval parziale, si può scrivere:

$ c_N = 1 / pi (parallel f parallel_2^2 - parallel f - S_N parallel_2^2 - 2 pi a_0^2) $

Poiché $parallel f - S_N parallel_2^2 gt.eq 0$, segue che:

$ c_N lt.eq 1 / pi parallel f parallel_2^2 < + oo $

Poiché la successione $\(c_N\)$ è crescente e limitata superiormente,
per il teorema di convergenza delle successioni monotone, essa ammette
limite finito:

$ lim_(N arrow.r + oo) c_N = lim_(N arrow.r + oo) sum_(m = 1)^N\(a_m^2 + b_m^2\)quad upright("esiste ed è finito") $

Di conseguenza, la serie infinita converge:

$ sum_(m = 1)^(+ oo)\(a_m^2 + b_m^2\)< + oo $

Questa proprietà è un passo cruciale per dimostrare l'identità di
Parseval completa, che stabilisce l'uguaglianza tra l'energia della
funzione e la somma dei quadrati dei suoi coefficienti di Fourier.

== Conseguenze della Convergenza della Serie dei Coefficienti
<conseguenze-della-convergenza-della-serie-dei-coefficienti>
=== 2) Comportamento Asintotico dei Coefficienti di Fourier
<comportamento-asintotico-dei-coefficienti-di-fourier>
Se la serie $sum_(m = 1)^(+ oo)\(a_m^2 + b_m^2\)$ converge, allora
necessariamente il termine generale deve tendere a zero:

$ lim_(m arrow.r + oo)\(a_m^2 + b_m^2\)= 0 $

Poiché $a_m^2 gt.eq 0$ e $b_m^2 gt.eq 0$, questa condizione implica che
entrambi i limiti dei coefficienti devono essere nulli:

$ lim_(m arrow.r + oo) a_m = 0\,quad lim_(m arrow.r + oo) b_m = 0 $

In termini integrali, ciò significa che:

$ lim_(m arrow.r + oo) integral_(- pi)^pi f\(x\)cos\(m x\)thin d x = 0\,quad lim_(m arrow.r + oo) integral_(- pi)^pi f\(x\)sin\(m x\)thin d x = 0 $

Questo risultato è una conseguenza diretta del Lemma di
Riemann-Lebesgue, che verrà enunciato di seguito.

== Lemma di Riemann-Lebesgue
<lemma-di-riemann-lebesgue>
#strong[Enunciato:] Sia $f :\[- pi\,pi\]arrow.r bb(R)$ una funzione
integrabile. Allora:

$ lim_(m arrow.r + oo) integral_(- pi)^pi f\(x\)cos\(m x\)thin d x = 0\,quad lim_(m arrow.r + oo) integral_(- pi)^pi f\(x\)sin\(m x\)thin d x = 0 $

=== Osservazione Grafica
<osservazione-grafica>
Graficamente, il Lemma di Riemann-Lebesgue corrisponde a un effetto di
"cancellazione" delle aree. Consideriamo il prodotto $f\(x\)cos\(m x\)$:
\- Per valori piccoli di $m$, la funzione $cos\(m x\)$ oscilla
lentamente, e l'area sottesa da $f\(x\)cos\(m x\)$ può essere
significativa. - Al crescere di $m$, la frequenza di oscillazione di
$cos\(m x\)$ aumenta drasticamente. Le aree positive e negative di
$f\(x\)cos\(m x\)$ si compensano sempre meglio, portando l'integrale a
tendere a zero.

Questa cancellazione è visibile nei grafici, dove per $m$ grande, le
oscillazioni rapide di $cos\(m x\)$ fanno sì che le aree sopra e sotto
l'asse $x$ si bilancino quasi perfettamente, indipendentemente dalla
forma di $f\(x\)$.

== Teorema di Convergenza in Norma $L^2$ della Serie di Fourier
<teorema-di-convergenza-in-norma-l2-della-serie-di-fourier>
#strong[Teorema:] Sia $f : bb(R) arrow.r bb(R)$ una funzione
$2 pi$-periodica e integrabile sull'intervallo $\[- pi\,pi\]$. Allora la
serie di Fourier di $f$ converge a $f$ nella norma quadratica (norma
$L^2$), ossia:

$ lim_(N arrow.r + oo) parallel f - S_N parallel_2 = 0 $

=== Osservazione: Identità di Parseval
<osservazione-identità-di-parseval>
Come conseguenza diretta di questo teorema e dell'identità di Parseval
parziale precedentemente derivata, si ottiene l'#strong[Identità di
Parseval] completa. Partendo dall'espressione:

$ 2 pi a_0^2 + pi sum_(m = 1)^N\(a_m^2 + b_m^2\)= parallel f parallel_2^2 - parallel f - S_N parallel_2^2 $

Passando al limite per $N arrow.r + oo$ e utilizzando il fatto che
$lim_(N arrow.r + oo) parallel f - S_N parallel_2^2 = 0$, si ha:

$ 2 pi a_0^2 + pi sum_(m = 1)^oo\(a_m^2 + b_m^2\)= parallel f parallel_2^2 $

Questa è l'#strong[Identità di Parseval], che stabilisce un'uguaglianza
tra l'energia totale della funzione $f$ (misurata dalla sua norma $L^2$)
e la somma pesata dei quadrati dei suoi coefficienti di Fourier. Essa
rappresenta una forma di conservazione dell'energia nel passaggio dal
dominio del tempo (o dello spazio) al dominio delle frequenze.

== Osservazione Critica sulla Convergenza Puntuale
<osservazione-critica-sulla-convergenza-puntuale>
#strong[Nota Bene:] La convergenza in norma quadratica (cioè nella norma
$L^2$) #strong[non] garantisce la convergenza puntuale della serie di
Fourier a $f\(x\)$ per ogni $x in\[- pi\,pi\]$.

=== Domanda: Convergenza in Norma Uniforme?
<domanda-convergenza-in-norma-uniforme>
Si può chiedere se sia possibile affermare qualcosa di più forte, come
la convergenza uniforme della serie di Fourier a $f$, ovvero convergenza
nella norma del massimo ($parallel dot.op parallel_oo$).

=== Risposta:
<risposta>
In generale, #strong[no]. La convergenza uniforme non è garantita solo
dall'integrabilità di $f$. Per ottenere la convergenza uniforme, sono
necessarie ipotesi aggiuntive sulla regolarità della funzione $f$.

== Definizione: Funzione Regolare a Tratti
<definizione-funzione-regolare-a-tratti>
Per garantire una convergenza puntuale o uniforme "buona", si introduce
il concetto di funzione regolare a tratti.

Sia $f : bb(R) arrow.r bb(R)$ una funzione $2 pi$-periodica e
integrabile sull'intervallo $\[- pi\,pi\]$. Si dice che $f$ è
#strong[regolare a tratti] su $\[- pi\,pi\]$ se esistono un numero
finito di punti $x_0 < x_1 < dots.h < x_n$ nell'intervallo
$\[- pi\,pi\]$ tali che:

+ $f$ è di classe $C^1$ (ossia continua con derivata prima continua) in
  ogni intervallo aperto $\(x_i\,x_(i + 1)\)$, per
  $i = 0\,dots.h\,n - 1$.
+ Esistono finiti i seguenti limiti:
  - I limiti laterali della funzione stessa:
    $ lim_(x arrow.r x_i^(-)) f\(x\)\,quad lim_(x arrow.r x_i^(+)) f\(x\)quad forall i = 0\,dots.h\,n $
  - I limiti laterali della derivata prima:
    $ lim_(x arrow.r x_i^(-)) f'\(x\)\,quad lim_(x arrow.r x_i^(+)) f'\(x\)quad forall i = 0\,dots.h\,n $

Questa definizione impone che la funzione possa avere un numero finito
di discontinuità di primo tipo (salto) e che la sua derivata possa avere
lo stesso comportamento, ma non ammette discontinuità di seconda specie
o oscillazioni illimitate.

== Teorema di Convergenza Puntuale della Serie di Fourier
<teorema-di-convergenza-puntuale-della-serie-di-fourier>
#strong[Teorema:] Sia $f : bb(R) arrow.r bb(R)$ una funzione
$2 pi$-periodica e regolare a tratti su $\[- pi\,pi\]$. Allora la serie
di Fourier di $f$ converge, in ogni punto $x_0 in bb(R)$, al valore:

$ frac(lim_(x arrow.r x_0^(-)) f\(x\)+ lim_(x arrow.r x_0^(+)) f\(x\), 2) $

=== Osservazioni
<osservazioni-4>
- #strong[Caso di Continuità:] Se $f$ è continua in un punto $x_0$,
  allora i limiti sinistro e destro coincidono con il valore della
  funzione in quel punto. Di conseguenza, la serie di Fourier converge
  esattamente a $f\(x_0\)$.
- #strong[Caso di Discontinuità:] Nei punti di discontinuità di primo
  tipo (salto), la serie di Fourier non converge al valore della
  funzione (che potrebbe essere definito arbitrariamente nel punto di
  salto), ma converge al #strong[punto medio del salto], ossia alla
  media aritmetica dei limiti sinistro e destro.

=== Rappresentazione Grafica
<rappresentazione-grafica>
Graficamente, questo comportamento si manifesta come segue: - La somma
parziale $S_N\(x\)$ della serie di Fourier, per valori grandi di $N$,
approssima molto bene la funzione $f\(x\)$ nei tratti dove $f$ è
continua. - In corrispondenza di un punto di discontinuità, la somma
parziale $S_N\(x\)$ mostra un'oscillazione attorno al punto medio del
salto. Questo fenomeno è noto come "effetto Gibbs", anche se non è
esplicitamente menzionato qui. - Il grafico di $S_N\(x\)$ tende a
"lisciare" la discontinuità, convergendo al valore medio
$frac(f\(x_0^(-)\)+ f\(x_0^(+)\), 2)$.

Questa proprietà fornisce una risposta precisa alla domanda sulla
convergenza puntuale: sotto ipotesi di regolarità a tratti, la serie di
Fourier converge ovunque al valore medio dei limiti laterali.

== Osservazioni Finali sulla Serie di Fourier
<osservazioni-finali-sulla-serie-di-fourier>
=== 1) Generalizzazione a Funzioni di Periodo Arbitrario $T$
<generalizzazione-a-funzioni-di-periodo-arbitrario-t>
Tutta la teoria sviluppata per funzioni $2 pi$-periodiche può essere
estesa, con semplici modifiche, a funzioni periodiche di un periodo
arbitrario $T eq.not 2 pi$.

Sia $f : bb(R) arrow.r bb(R)$ una funzione $T$-periodica e integrabile
sull'intervallo $\[- T\/2\,T\/2\]$. I coefficienti di Fourier di $f$
sono dati da:

- Coefficiente medio:
  $ a_0 = 1 / T integral_(- T\/2)^(T\/2) f\(x\)thin d x $

- Coefficienti cosinusoidali ($m gt.eq 1$):
  $ a_m = 2 / T integral_(- T\/2)^(T\/2) f\(x\)cos (frac(2 pi, T) m x) thin d x $

- Coefficienti sinusoidali ($m gt.eq 1$):
  $ b_m = 2 / T integral_(- T\/2)^(T\/2) f\(x\)sin (frac(2 pi, T) m x) thin d x $

La serie di Fourier di $f$ è quindi:

$ a_0 + sum_(m = 1)^(+ oo) [a_m cos (frac(2 pi, T) m x) + b_m sin (frac(2 pi, T) m x)] $

=== Identità di Parseval per Periodo Generico
<identità-di-parseval-per-periodo-generico>
L'identità di Parseval si generalizza in modo analogo. Per una funzione
$T$-periodica, essa diventa:

$ T a_0^2 + T / 2 sum_(m = 1)^(+ oo)\(a_m^2 + b_m^2\)= parallel f parallel_2^2 $

dove
$parallel f parallel_2^2 = integral_(- T\/2)^(T\/2)\|f\(x\)\|^2 thin d x$.

Le proprietà di convergenza (sia in norma $L^2$ che puntuale, sotto le
ipotesi di regolarità a tratti) rimangono valide anche in questo caso
più generale.

== 2) Serie di Fourier in Campo Complesso
<serie-di-fourier-in-campo-complesso>
La serie di Fourier può essere espressa in una forma più compatta e
potente utilizzando i numeri complessi, sfruttando la #strong[formula di
Eulero]:

$ e^(i theta) = cos theta + i sin theta quad forall theta in bb(R) $

=== Derivazione della Forma Complessa
<derivazione-della-forma-complessa>
Utilizzando la formula di Eulero e le sue conseguenze, si ottiene:

- $e^(- i theta) = cos\(- theta\)+ i sin\(- theta\)= cos theta - i sin theta$
- Sommando e sottraendo le due equazioni:
  $ {cos theta = frac(e^(i theta) + e^(- i theta), 2)\
  sin theta = frac(e^(i theta) - e^(- i theta), 2 i) $

Sostituendo queste espressioni nella serie di Fourier reale:

$ a_0 + sum_(m = 1)^(+ oo) (a_m cos \( m x \) + b_m sin \( m x \)) $

si ottiene:

$ = a_0 + sum_(m = 1)^(+ oo) [a_m frac(e^(i m x) + e^(- i m x), 2) + b_m frac(e^(i m x) - e^(- i m x), 2 i)] $

Raggruppando i termini con $e^(i m x)$ e $e^(- i m x)$, si definiscono i
coefficienti complessi $c_m$ e $c_(- m)$:

$ = a_0 + sum_(m = 1)^(+ oo) [(a_m / 2 - i b_m / 2) e^(i m x) + (a_m / 2 + i b_m / 2) e^(- i m x)] $

Definendo: - $c_0 = a_0$ - $c_m = a_m / 2 - i b_m / 2$ per $m gt.eq 1$ -
$c_(- m) = a_m / 2 + i b_m / 2$ per $m gt.eq 1$

la serie diventa:

$ sum_(m = - oo)^(+ oo) c_m e^(i m x) $

=== Proprietà dei Coefficienti Complessi
<proprietà-dei-coefficienti-complessi>
Si osserva che i coefficienti complessi soddisfano la seguente proprietà
di simmetria coniugata:

$ c_m = overline(c_(- m)) quad forall m gt.eq 1 $

Questa proprietà riflette il fatto che la funzione originale $f\(x\)$ è
reale. La serie di Fourier complessa, quindi, può essere scritta come:

$ sum_(m in bb(Z)) c_m e^(i m x) quad upright("con") quad c_m = overline(c_(- m)) quad forall m $

Questa formulazione è spesso preferita in ambito ingegneristico e fisico
per la sua eleganza e per la facilità con cui si possono manipolare le
operazioni algebriche e differenziali.

= L27 ANL2
<l27-anl2>
17/12/2025

= Esercizi serie di Fourier
<esercizi-serie-di-fourier>
Non mi sembra il caso di andare a ricopiare dei banali esercizi, quindi
questa lezione sarà vuota.
