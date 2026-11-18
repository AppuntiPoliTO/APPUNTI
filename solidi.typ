#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)


#set heading(numbering: "1.")
= *Solidi Assialsimmetrici e Recipienti in Pressione*

== Solidi assialsimmetrici

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 0.1cm,
  align: (left + horizon, center + horizon),
  [Un solido assialsimmetrico è generato idealmente dalla rivoluzione di una sezione piana nell'intorno
di un asse di riferimento, che costituisce quindi un asse di rotazione e
di simmetria per la figura. L'analisi tensionale dei solidi assialsimmetrici serve a risolvere le problematiche strutturali di oggetti generati dalla rivoluzione di una sezione geometrica piana attorno a un asse di simmetria (es. reattori nucleari, recipienti in pressione, bombole per gas e silos).
In questi corpi la sezione trasversale non è trascurabile rispetto alla lunghezza dell'elemento. Pertanto, il modello semplificato della trave di De Saint-Venant risulta inapplicabile per calcolare tensioni, deformazioni e spostamenti.],[#include "figs/solidi-fig01.typ"])

Affinché la trattazione sia rigorosa, imponiamo un triplice vincolo sulle condizioni iniziali del modello:
1.  *Assialsimmetria geometrica:* Il solido deve avere una geometria caratterizzata da una simmetria assiale, ad esempio un cilindro è un rettangolo rivoluzionato attorno all'asse centrale.
2. *Carico assialsimmetrico:* Le azioni applicate devono essere uniformi lungo l'intera circonferenza. Non ci devono essere distribuzioni non uniformi di pressione. Nel caso ci fossero però è ancora possibile studiare il solido come assialsimmetrico ma unendo gli effetti di differenti distribuzioni di pressione, questo metodo non viene affrontato però in questo corso. 
3.  *Materiale assialsimmetrico:* Le proprietà elastiche del materiale devono rimanere costanti muovendosi lungo una circonferenza. Nonostante sia preferibile usare materiali isotropi è ammissibile utilizzare materiali ortotropi, purché le direzioni dell'ortotropia coincidano con le coordinate radiali e circonferenziali.

Soddisfatto questo triplice requisito, ne consegue che nessuna grandezza meccanica (tensioni $sigma$, deformazioni $epsilon$, spostamenti $u$) dipenda dall'angolo al centro $theta$. Pertanto, lo stato di tensione dipende esclusivamente dalla sola coordinata radiale $r$:
$ sigma(r,theta , z) = sigma(r) $

== Classificazione geometrica

#grid(
  columns: (1.8fr, 1fr),
  column-gutter: 0.1cm,
  align: (left + horizon, center + horizon),[In base alle proporzioni dominanti tra sviluppo assiale e spessore radiale, i solidi si distinguono in:
- *Tubi*: La lunghezza di estrusione assiale è preponderante ($L >> D$). I tubi sono classificati in base al valore di $s/r_i$:\
  - Spesso se $s/r_i> 0.1 &=> sigma(r) "costante" quad &"Teoria di Mariotte"$ \ 
  - Sottile se $s/r_i <= 0.1 &=> sigma(r) "variabile" quad &"Teoria di Lamé"$ 
  Le pareti oppongono inerzia ai tentativi di allungamento assiale, imponendo cinematicamente uno stato di deformazione piana generalizzata ($epsilon_z = "cost"$) o piano ($epsilon_z = 0$). Lo stato tensionale è triassiale, con $sigma_r$, $sigma_c$ e $sigma_z$ attive. Nei tubi $sigma_z$ dipende dalle condizioni di vincolo degli estremi del tubo. Mentre $sigma_r$ e $sigma_c$ dipendono dalle condizioni di carico in termini di $p_i$ e $p_e$, questi ultimi sono quindi indipendenti dalle condizioni di vincolo degli estremi.
- *Dischi*: Lo sviluppo radiale ha preminenza, mentre lo spessore assiale è drasticamente ridotto ($L << D$).
  Generalmente il disco non è cavo, infatti può essere pieno o forato con un diametro interno molto ristretto.
  Essendo le facce laterali libere da carichi, la tensione assiale è nulla, instaurando un puro stato di tensione piano (biassiale). Si assume $sigma_z = 0$.
- *Anelli*: Elementi aventi dimensioni ridotte sia in spessore assiale sia radialmente (anelli sottili).

Come equazioni risolventi vengono usate le equazioni di equilibrio di congruenza ed elasticità del materiale.],[#include "figs/solidi-fig02.typ"])


#v(1em)

== Recipienti cilindrici in pressione

I recipienti cilindrici in pressione sono solidi assialsimmetrici complessi, il cui comportamento meccanico dipende fortemente dalle condizioni di vincolo. Dal punto di vista strutturale, si distinguono per le seguenti caratteristiche:
- Geometria e componenti: Sono composti da una superficie laterale continua (il mantello) e da chiusure d'estremità (fondi).
- Condizioni vincolari d'estremità: Un solido cilindrico può avere estremità libere (che consentono la libera deformazione), estremità rigidamente incastrate, oppure, come nel caso dei recipienti in pressione, estremità vincolate tramite la saldatura dei fondi.
- Analisi teorica: Lo studio del comportamento meccanico dei fondi viene condotto applicando la teoria dei gusci (shell) e delle piastre.
- Effetti locali: Il collegamento rigido (saldatura) tra il mantello e i fondi rappresenta una discontinuità geometrica e strutturale che genera i cosiddetti effetti di bordo, i quali richiedono un'attenta valutazione in fase di progettazione."

== Tubo sottile con pressione interna (Mariotte)
#grid(
  columns: (0.9fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),[#include "figs/solidi-fig03.typ"],[#include "figs/solidi-fig04.typ"])
Nel caso di un tubo con pressione interna $p_i$, andiamo a determinare
le tensioni.

#strong[Tensione radiale ($sigma_r$):] In corrispondenza del bordo
interno, l'equilibrio richiede che la tensione eguagli la pressione del
gas. Essa risulta compressiva e quindi viene assunta concettualmente di
segno negativo. Anche se al bordo esterno la pressione potrebbe essere
nulla (es. nel vuoto spaziale), si utilizza convenzionalmente il valore
dominante imposto dall'interno: $ sigma_r = - p_i $

#strong[Tensione circonferenziale ($sigma_c$):] Si valuta l'equilibrio
studiando una sezione diametrale longitudinale. La pressione interna
tende a distaccare in due i semigusci del recipiente. La spinta di
distacco totale corrisponde alla pressione moltiplicata per l'area
rettangolare diametrale proiettata, ovvero $p_i dot.op D_i dot.op L$.
Questa forza è bilanciata esclusivamente dalla reazione offerta dalle
due "bretelle" laterali (lo spessore del mantello $s$ tagliato su due
fronti lunghi $L$), dove agisce in estensione la tensione $sigma_c$:
$ sigma_c dot.op s dot.op L dot.op 2 = p_i dot.op D_i dot.op L $
Semplificando la lunghezza assiale, si ottiene:
$ sigma_c = p_i frac(D_i, 2 s) = c o s t $ Poiché $D_i gt.double s$,
l'entità della tensione circonferenziale risulta notevolmente superiore
alla semplice pressione ed è per la sua natura descritta anche come
"tensione membranale".

La determinazione dello stato tensionale si avvale delle equazioni *costitutive*, le quali legano le deformazioni $epsilon$ agli sforzi $sigma$. Oltre al comportamento elastico lineare governato dal modulo $E$, esse includono l'effetto di richiamo trasversale (coefficiente di Poisson $nu$) e gli effetti di dilatazione termica (coefficiente $alpha$). Costituiscono la generalizzazione spaziale della Legge di Hooke:
$ epsilon_c &= 1/E [sigma_c - nu (sigma_r + sigma_z)] + alpha Delta T \ 
epsilon_r &= 1/E [sigma_r - nu (sigma_c + sigma_z)] + alpha Delta T \ 
epsilon_z &= underbrace(1/E [sigma_z - nu (sigma_r + sigma_c)],"dilatazione"\ "meccanica") + underbrace(alpha Delta T,"dilatazione"\ "termica") $ 

#strong[Equazione di congruenza]:\ Per la completa simmetria, l'unico
spostamento rilevante si verifica in direzione radiale, definito con
$u$. Se si considera una circonferenza di raggio $r$ nello stato
indeformato, la sua lunghezza iniziale è $l_i = 2 pi r$. Dopo
l'espansione causata, ad esempio, dalla pressione, il nuovo raggio sarà
$r + u$, con lunghezza circonferenziale finale $l_f = 2 pi\(r + u\)$. 
#grid(
  columns: (0.8fr, 1fr),
  column-gutter: 0cm,
  align: (left + horizon, center + horizon),[La
deformazione circonferenziale è per definizione il rapporto percentuale
dell'allungamento: \ $ epsilon.alt_c = frac(l_f - l_i, l_i) = frac(2 pi\(r + u\)- 2 pi r, 2 pi r) = u / r $ Da questa si ricava la relazione inversa che permette il calcolo dello
spostamento radiale, di estremo interesse in progettazione: \ $ u = epsilon.alt_c dot.op r = epsilon.alt_c D/2 $],[
#include "figs/solidi-fig05.typ"
]
) 

#let aggiunta(body) = block(fill: rgb("#1760cf"), stroke: (left: 2pt + rgb("#2f6fdb")), inset: 8pt, width: 100%, body)

=== Tubo sottile liberamente dilatabile, munito di fondi
*1. Tubo sottile con fondi (libero di dilatarsi):* Nei tubi sottili con estremità chiuse (es. recipienti in pressione), la pressione interna $p_i$ genera una forza assiale sulle superfici di base pari a $p_i (pi D_i^2)/4$. Questa forza deve essere equilibrata dalla tensione assiale $sigma_z$ agente sull'area della sezione trasversale del mantello, pari a $pi D_i s$. Dall'equilibrio alla traslazione assiale si ottiene:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    $ sigma_z dot pi D_i s = p_i (pi D_i^2)/4 => sigma_z = (p_i D_i) / (4 s) = sigma_c / 2 = "costante" $
    Poiché in un tubo sottile il diametro medio $D_s$ è approssimabile al diametro interno $D_i$, la tensione assiale risulta pari alla metà della tensione circonferenziale $sigma_c$.
  ],
  [
#include "figs/solidi-fig06.typ"
  ]
)
#v(1em)

Sostituendo le tensioni principali $sigma_r, sigma_c, sigma_z$ nelle equazioni costitutive di Hooke (e considerando $sigma_r approx -p_i$ al bordo interno), si determinano la deformazione circonferenziale $epsilon_c$ e il conseguente spostamento radiale $u_i$ al bordo interno:
$ epsilon_c &= p_i/E [ D_i/(2 s) (1 - nu/2) + nu ] + alpha Delta T \ 
  u_i &= epsilon_c dot D_i/2 = D_i/2 { p_i/E [ D_i/(2 s) (1 - nu/2) + nu ] + alpha Delta T } $

*2. Tubo aperto o sconnesso (assialmente scarico)*
Se il tubo è interrotto o le giunzioni non trasmettono sforzi assiali (es. per la presenza di soffietti elastici di dilatazione), la parete non oppone vincoli in direzione longitudinale. Si pone pertanto $sigma_z = 0$. Le deformazioni conseguenti sono:
$ epsilon_c &= p_i/E [ D_i/(2 s) + nu ] + alpha Delta T \
  u_i &= epsilon_c D_i/2 = D_i/2 { p_i/E [ D_i/(2 s) + nu ] + alpha Delta T } $

*3. Tubo incastrato agli estremi*
Se le estremità sono rigidamente bloccate a pareti che impediscono l'allungamento longitudinale, si impone il vincolo cinematico nullo $epsilon_z = 0$. Dalla terza equazione di Hooke si deduce che si sviluppa una tensione assiale indotta dall'effetto Poisson (causato dalle tensioni nel piano) e dalle eventuali variazioni termiche ostacolate:
$ epsilon_z &= 1/E [sigma_z - nu (sigma_r + sigma_c)] + alpha Delta T = 0 \ 
  sigma_z &= nu (sigma_r + sigma_c) - E alpha Delta T = nu p_i ( D_i/(2 s) - 1 ) - E alpha Delta T $
  Sostituendo le tensioni $sigma_r$, $sigma_c$ e $sigma_z$ nelle equazioni costitutive:

$ epsilon_c = p_i / E (1 + nu) [ D_i / (2s) (1 - nu) + nu ] + alpha Delta T (1 + nu) $

e quindi

$ u_i = D_i / 2 epsilon_c = D_i / 2 \{ p_i / E (1 + nu) [ D_i / (2s) (1 - nu) + nu ] + alpha Delta T (1 + nu) \} $

#pagebreak()
== Tubo spesso: Teoria di Lamé


#grid(
  columns: (2fr, 1fr),
  column-gutter: 1cm,
  align: (left + horizon, center + horizon),
  [
   Quando decade l'ipotesi di spessore sottile, la distribuzione tensionale non è più uniforme ma varia radialmente all'interno dello spessore. Per valutare lo stato di sforzo, si analizza un concio elementare di continuo spaziale delimitato da due raggi contigui $r$ e $r + dif r$.  Il modello assume condizioni di assialsimmetria: forze e momenti associati alla coordinata angolare $theta$ sono nulli. Tutte le grandezze cinematiche e tensionali dipendono unicamente dalla coordinata radiale $r$. Sul piano della sezione, le uniche tensioni principali attive sono la tensione radiale $sigma_r$ e la tensione circonferenziale $sigma_c$. 
   L'equilibrio alla traslazione radiale si ottiene isolando un concio elementare di profondità assiale $b$.
    
  ],
  move(dx: +17pt)[ 
#include "figs/solidi-fig07.typ"
  ]
)
Delle 6 equazioni di equilibrio nello spazio tridimensionale del solido 5 sono soddisfatte per via della simmetria:
    - l’equilibrio alla traslazione assiale, secondo a
  - l’equilibrio alla rotazione attorno al raggio r
  - l’equilibrio alla rotazione attorno all’asse c
    perchè sono nulle le forze ortogonali al piano r-c
  - l’equilibrio alla rotazione attorno all’asse a
  - l’equilibrio alla traslazione secondo c
    perché le forze, nel piano r-c, sono simmetriche
    rispetto alla bisettrice
    dunque rimane utile solo:
    la traslazione secondo il raggio r
#v(1em)

=== Equazioni di equilibrio


#grid(
  columns: (0.9fr, 1fr),
  column-gutter: 1.2cm,
  align: (left + horizon, center + horizon),
  [
Costruendo il nostro concio elementare molto simile al cubetto elementare studiato in FMS notiamo che la forza applicata sulla faccia superiore diretta verso l'alto è uguale alla forza applicata sulla faccia inferiore diretta verso il basso con l'aggiunta di una variazione dipendente dal raggio.\
Inoltre per le forze parallele all'asse c notiamo che queste sono identiche a causa delle condizioni poste a priori le quali affermano che le tensioni su una circonferenza di raggio fissato sono uguali.

  ],
  move(dx: +11pt)[
#include "figs/solidi-fig08.typ"
  ]
)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2cm,
  align: (left + horizon, center + horizon), [La risultante radiale delle forze dovute alla tensione circonferenziale è $sigma_c dot "dr" dot b dot sin((dif theta)/2) $ essendo $sin((dif theta )/2) approx (dif theta)/2$ $arrow.r sigma_c dot d r dot b dot (dif theta)/2.$\ Nel concio elementare un eventuale carico di volume si scrive come $Phi_v dot r dif theta dot b dot d r. $\ Pertanto nell'equazione di equilibrio figurano:\ 
$sigma_r arrow.r dif/ (dif r)(sigma_r dot r dot dif theta dot b) dif r arrow.r Phi_V  dot r dot dif theta dot b dot dif r \ sigma_c arrow.r - sigma_C dot dif r dot b dot dif theta$ \ Considerando b non dipendente da r e nessun carico volumetrico applicato otteniamo:\ $cancel(b dot dif theta) dif/(dif r)(sigma_r dot r ) cancel(dif r) - sigma_C cancel(dot b dot dif theta dot dif r)= 0 $ \  ],
  
  move(dx: -7pt)[#include "figs/solidi-fig09.typ"])
Questa equazione può essere scritta in due forme equivalenti, utili per legare la tensione circonferenziale alla variazione dello sforzo radiale nello spessore:
  $ sigma_c &= dif/(dif r) (sigma_r dot r) quad & (1^a " forma") \ 
  sigma_c &= r (dif sigma_r)/(dif r) + sigma_r quad & (2^a " forma") $

#pagebreak()
 
=== Equazioni di congruenza
Per risolvere il problema iperstatico, è necessario legare le deformazioni allo spostamento radiale $u$:
$ cases(
    epsilon_r = (dif u)/(dif r), 
    epsilon_c = u/r 
  ) => epsilon_r = dif / (dif r )(epsilon_c dot r) $

Derivando rispetto a $r$ l'espressione dello spostamento $u$ ricavata dalla deformazione circonferenziale, e uguagliandola alla deformazione radiale, si ottiene l'equazione di compatibilità cinematica (o congruenza):
$ epsilon_r = dif /(dif r)(epsilon_c dot r) => 
  cases(
    dif /(dif r)(epsilon_c dot r) - epsilon_r = 0 quad & (1^a " forma"), 
    (dif epsilon_c)/(dif r) r - (epsilon_r - epsilon_c) = 0 quad & (2^a " forma")
  ) $
// Titolo

== Equazioni costitutive del materiale

#v(0.5em)

// Sottotitolo e nota in alto a destra
Come esempio si consideri qui il caso del disco con “tensione piana” $=> sigma_a = 0$,


#v(0.5em)

// Blocco equazioni principali con linee separatrici
// Usiamo una table per gestire facilmente le linee a croce (T rovesciata)
#table(
  columns: (1fr, 1fr),
  stroke: none,
  align: center + horizon,
  gutter: -5cm,
  
  // Colonna Sinistra
  [
    
    #text(fill: black, weight: "bold", size: 13pt)[Prima forma]
    $ epsilon_r = 1/E (sigma_r - nu sigma_c) $
    $ epsilon_c = 1/E (sigma_c - nu sigma_r) $
    
    
  ],
  
  // Colonna Destra
  [
   
    #text(fill: black, weight: "bold", size: 13pt)[Seconda forma]
    $ sigma_r = E/(1-nu^2) (epsilon_r + nu epsilon_c) $
    $ sigma_c = E/(1-nu^2) (epsilon_c + nu epsilon_r) $
    
   
  ]
)



// Blocco N.B.
#box(inset: (left: 1em))[

    N.B.
    $sigma_a = 0$
    $arrow$
    $epsilon_a = - nu/E (sigma_r + sigma_c)$
  )
]



// Testo prima dei riquadri finali
#text[Per sottrazione diretta si ottengono, rispettivamente:]


// Riquadri rossi finali
#grid(
  columns: (1fr, 1fr),
  gutter: -5cm,
  align: center,
  
  // Riquadro Sinistro
  rect(stroke: 2pt , inset: (x: 0.5em, y: 1em))[
    $ (epsilon_c - epsilon_r) = 1/E (1+nu)(sigma_c - sigma_r) $
  ],
  
  // Riquadro Destro
  rect(stroke: 2pt , inset: (x: 0.5em, y: 1em))[
    $ (sigma_r - sigma_c) = E/(1-nu^2) (1-nu)(epsilon_r - epsilon_c) $
  ]
)
=== Soluzione generale equazioni di Lamé
Mettendo a sistema l'equazione di equilibrio e l'equazione di congruenza tramite le equazioni costitutive del materiale (legge di Hooke generalizzata), si ottiene un sistema di equazioni differenziali la cui integrazione fornisce la soluzione di Lamé per le tensioni nel piano:
$ sigma_r &= A - B/r^2 \ 
  sigma_c &= A + B/r^2 $
//fede arrivato fino a qui
Da queste espressioni si nota che, in ogni punto dello spessore, la somma delle tensioni principali nel piano è costante: $sigma_r + sigma_c = 2 A$. Le costanti di integrazione $A$ e $B$ si calcolano imponendo le condizioni al contorno, ovvero uguagliando la tensione radiale alle superfici interna ed esterna alle rispettive pressioni (considerate negative in quanto sforzi di compressione):
$ sigma_(r i) &= -p_i \ 
  sigma_(r e) &= -p_e $

Risolvendo il sistema ai bordi di raggio $r_i = D_i/2$ e $r_e = D_e/2$, si ottengono le espressioni generali delle costanti in funzione delle geometrie e dei carichi:
$ A &= (p_i D_i^2 - p_e D_e^2) / (D_e^2 - D_i^2) \ 
  B &= ((p_i - p_e) D_i^2 D_e^2) / (4 (D_e^2 - D_i^2)) $
#pagebreak()
== Tubo spesso con pressione interna ed esterna
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2cm,
  align: (left + horizon, center + horizon),[Nel caso generale, il solido è soggetto contemporaneamente a una
pressione interna $p_i$ e a una pressione esterna $p_e$. Questo scenario
è tipico di tubazioni (gasdotti) sottoposte alla pressione del fluido
interno e a quella atmosferica esterna, oppure di alberi e mozzi
soggetti a forzamento. Nei dischi da turbina, l'interazione con le
palette (collegate tramite pin) può essere schematizzata come una
pressione, sebbene di segno opposto qualora generi una trazione verso
l'esterno.],[#include "figs/solidi-fig10.typ"]
)

Le condizioni al contorno si scrivono come:
$ cases( sigma_(r i) = - p_i = A - B / r_i^2,
sigma_(r e) = - p_e = A - B / r_e^2) $

Risolvendo il sistema, le costanti $A$ e $B$ in forma letterale
risultano dipendenti dai quadrati dei diametri $D_i$ e $D_e$:
$ A = p_i frac(D_i^2, D_e^2 - D_i^2) - p_e frac(D_e^2, D_e^2 - D_i^2) $
$ B = p_i / 4 frac(D_i^2 D_e^2, D_e^2 - D_i^2) - p_e / 4 frac(D_i^2 D_e^2, D_e^2 - D_i^2) $
Sostituendo $A$ e $B$ nelle equazioni generali di Lamé, si ricava
l'andamento delle tensioni per un generico raggio $r = D\/2$:
$ sigma_r = - p_i frac((D_i / D)^2 - (D_i / D_e)^2, 1 - (D_i / D_e)^2) - p_e frac(1 - (D_i / D)^2, 1 - (D_i / D_e)^2) $

$ sigma_c = p_i frac((D_i / D)^2 + (D_i / D_e)^2, 1 - (D_i / D_e)^2) - p_e frac(1 + (D_i / D)^2, 1 - (D_i / D_e)^2) $

La variabile indipendente è nascosta nel termine $D$ posto al
denominatore.
#pagebreak()
=== Solo pressione interna
 Le condizioni al contorno sono 
$ cases( sigma_r\(r_i\)= - p_i,
 sigma_r\(r_e\)= 0 ) arrow.double A = p_i D_i^2/(D_e^2 - D_i^2) quad sigma_r + sigma_c = 2A = "cost" $ 
#v(1em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [Tracciando il grafico in funzione del raggio $r$,
la tensione radiale $sigma_r$ parte dal valore negativo $- p_i$ sul
bordo interno e sale con un andamento non lineare curvilineo fino ad
annullarsi in corrispondenza del bordo esterno. Poiché $sigma_c$ e
$sigma_r$ sono simmetriche rispetto al valore medio costante $A$ (poiché
$sigma_c = A + B\/r^2$ e $sigma_r = A - B\/r^2$), graficamente basta
individuare l'asintoto orizzontale di valore $A$ e "ribaltare" la curva
di $sigma_r$ rispetto ad esso. Si ottiene così la curva superiore di
$sigma_c$, che raggiunge il suo valore massimo al bordo interno. In
questo scenario, la differenza massima tra le tensioni principali (utile
per il criterio di Tresca) si verifica indiscutibilmente al bordo
interno, che risulta il punto maggiormente sollecitato.
    Il punto più sollecitato si trova al bordo interno, a contatto con il fluido. Essendo la funzione della sollecitazione decrescente col quadrato del raggio, la differenza tra le tensioni principali è sempre massima al bordo interno $r_i$.
  ],
  [
    #include "figs/solidi-fig11.typ"
  ]
)
#v(1em)

=== Solo pressione esterna
Un'applicazione notevole per il caso di carico esterno è rappresentata dal mozzo del disco di turbina, ove le forze centrifughe della palettatura applicano una trazione esterna.
Nel caso di schiacciamento idrostatico esterno (o interferenza), si ha compressione al bordo esterno e scarico nullo all'interno. Le condizioni al contorno diventano:
$ cases(
  sigma_(r e) = - p_e, 
  sigma_(r i) = 0) quad => quad 
  A = -p_e D_e^2/(D_e^2-D_i^2) quad sigma_r + sigma_c = 2A = "cost" $ 
#v(1em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
   In questo caso, la curva $sigma_r$ parte da
  zero al bordo interno e decresce fino a $- p_e$ al bordo esterno,
  formando una sorta di "ugello" con curvatura rivolta verso il basso.
  Disegnando l'asintoto di simmetria $A$ (che ora si trova nel semipiano
  negativo) e ribaltando la curva, si individua $sigma_c$. Nonostante il
  carico sia applicato esternamente, il punto più sollecitato (dove si ha
  il valore massimo in modulo della tensione e la massima differenza tra
  le principali) rimane il bordo interno. Questo risultato,
  controintuitivo, è dovuto al fatto che il bordo interno ha un diametro
  minore e una curvatura più accentuata su cui si concentra la tensione.
  ],
  [
   #include "figs/solidi-fig12.typ"
  ]
)
#pagebreak()
== Regola del Biliardo (Metodo Grafico di Strozzi)
Tracciare a mano le iperboli in funzione di $r$ espone al rischio di
interpretare male la concavità e la convessità, portando a conclusioni
errate sul punto di massima sollecitazione. Per ovviare a questo
problema, il Professor Strozzi ha introdotto un metodo basato su un
cambio di coordinate: ponendo l'asse delle ascisse proporzionale a
$1\/r^2$, le equazioni di $sigma_r$ e $sigma_c$ diventano rette. Nel caso della pressione esterna, la procedura 
si articola come segue: 
#grid(columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),

[*1.* Sull'asse orizzontale si riportano i valori
da $1\/r_e^2$ a $1\/r_i^2$. Si nota che, essendo inversamente
proporzionale, $1\/r_e^2$ (il raggio più grande) si trova più vicino
all'origine rispetto a $1\/r_i^2$. \ *2.* Si traccia il punto della
condizione al bordo interno (ascissa $1\/r_i^2$, ordinata $0$). \ *3.* Si
traccia il punto della condizione al bordo esterno (ascissa $1\/r_e^2$,
ordinata $- p_e$). \ *4.* Si uniscono i due punti con un segmento
rettilineo, che rappresenta l'esatto andamento della tensione $sigma_r$.
\ *5.* Si prolunga questa retta fino a intersecare l'asse delle ordinate
(ascissa $1\/r^2 = 0$). L'ordinata di questa intersezione fornisce
direttamente il valore numerico della costante $A$.\  *6.* Immaginando
l'asse delle ordinate come la sponda di un biliardo, il segmento subisce
un urto e "rimbalza" in maniera perfettamente speculare. Tracciando
questa retta simmetrica dal punto $A$ all'indietro, si ottiene la retta
che descrive $sigma_c$. Le intersezioni di quest'ultima con le verticali
dei due raggi forniscono i valori esatti di $sigma_c$ ai bordi.

Questo metodo permette di calcolare graficamente tutte le tensioni con
estrema precisione e senza alcun dubbio sulle pendenze.],[#include "figs/solidi-fig13.typ"])





//aggiungere immagine slide


== Condizioni di vincolo assiale per il tubo spesso
La tensione assiale $sigma_z$ dipende dai vincoli d'installazione:


- *Tubo spesso con coperchi o fondi di tenuta (libero di dilatarsi assialmente)*
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
  Il gas interno esercita una pressione sui fondi, tendendo ad allungare il recipiente. Questa spinta deve essere bilanciata dalla tensione longitudinale $sigma_z$, che si distribuisce sull'area della corona circolare.
    L'equilibrio impone l'uguaglianza tra spinta e reazione della parete resistente:
    $ sigma_z (pi (D_e^2 - D_i^2))/4 = p_i dot (pi D_i^2)/4 arrow.double
      sigma_z = (p_i D_i^2)/(D_e^2 - D_i^2) = A = "cost" $ 
  ],
  [
    #include "figs/solidi-fig14.typ"
  ]
)
#v(1em)

- *Tubo spesso aperto (assialmente scarico)*
  Il condotto non oppone vincoli d'espansione. Pertanto $sigma_z = 0$. La deformazione longitudinale $epsilon_z$ generata è costante e non nulla, indicando che le sezioni trasversali rimangono piane:
  $ epsilon_z = - 1/E [nu (sigma_r + sigma_c)] + alpha Delta T = - nu/E (2 A) + alpha Delta T = "costante" $ 

- *Tubo spesso con estremi incastrati*
  L'allungamento assiale è impedito dai vincoli rigidi, determinando $epsilon_z = 0$. La dilatazione trattenuta genera una tensione di trazione $sigma_z$. 

  Assumendo l'assenza di variazioni termiche ($Delta T = 0$), la legge di Hooke fornisce:
  $ epsilon_z &= 1/E [sigma_z - nu (sigma_r + sigma_c)]+ alpha Delta T = 1/E [sigma_z - nu (2 A)]+ alpha Delta T = 0 $  
  $"La tensione assiale risulta:" \
    sigma_z &= 2 nu A + alpha Delta T $
 
    Sapendo che il coefficiente di Poisson $nu$ è generalmente compreso
  tra $0.3$ e $0.4$, $2 nu$ vale circa $0.6 div 0.8$. Dunque,
  graficamente, il valore della tensione assiale si colloca sempre tra
  l'asse zero (tubo aperto) e la retta $A$ (tubo con fondi). Questo
  significa che, nella determinazione della differenza massima tra le
  tensioni principali (Criterio di Tresca), la $sigma_z$ raramente
  risulta essere quella predominante, rimanendo quasi sempre confinata
  "a sandwich" tra $sigma_r$ e $sigma_c$, le quali definiscono la
  differenza massima.

== Spostamento radiale
Dall'equazione di congruenza $u = epsilon_c dot r$, integrando le relazioni costitutive di Hooke e inserendo le soluzioni di Lamé per $sigma_r$ e $sigma_c$, ricaviamo lo spostamento radiale:
$ u &= r/E [sigma_c - nu (sigma_r + sigma_z)] + r alpha Delta T \
  u &= r/E [(A + B/r^2) - nu (A - B/r^2) - nu sigma_z] + r alpha Delta T \
  u &= r/E [A(1-nu) + B/r^2 (1+nu) - nu sigma_z] + r alpha Delta T $

Nel caso di un serbatoio libero alle estremità ($sigma_z=0$), l'espressione si semplifica in:
$ u = r/E [A(1-nu) + B/r^2 (1+nu)] + r alpha Delta T $
Le costanti $A$ e $B$ si determinano imponendo le condizioni al contorno.

== Caso dell'albero pieno
<caso-dellalbero-pieno>
Un caso particolare di applicazione delle equazioni di Lamé si verifica
nello studio del collegamento forzato albero-mozzo, dove l'albero
interno può essere considerato come un tubo di spessore infinito con
foro centrale nullo ($r_i = 0$). Dal punto di vista matematico, se
$r_i arrow.r 0$, l'equazione $B\/r^2$ genererebbe una singolarità
portando il termine all'infinito. L'unico modo fisico per evitare la
singolarità è imporre che la costante $B$ sia nulla:
$ B = 0 arrow.r.double.long sigma_r = sigma_c = A = - p_e = upright("costante") $
Pertanto, in un albero pieno soggetto a una pressione esterna $p_e$
(dovuta al forzamento col mozzo), lo stato di tensione è uniforme su
tutto il raggio, sia in direzione radiale che circonferenziale.

In queste condizioni, lo spostamento radiale $u$ al bordo dell'albero
assume una forma analitica compatta:
$ u = - p_e frac(D, 2 E)\(1 - nu\)+ D / 2 alpha Delta T $

== Tubo spesso: formula di progetto
Per la verifica di resistenza del materiale si raggruppano le costanti in un parametro adimensionale $beta = D_i / D_e$.

*Caso di Pressione Interna:* Il punto critico si trova in corrispondenza del raggio interno $r_i$, dove le tre tensioni principali risultano:
$ sigma_r &= -p_i \ 
  sigma_c &= 2 A + p_i $
  $ sigma_z &= 0 quad "(tubo aperto)" quad
  "oppure " quad sigma_z &= A quad "(tubo con fondi)" $


  Applicando il criterio di Von Mises per lo stato di tensione biassiale ($sigma_z = 0$), l'equazione si semplifica nella forma :
  $ sigma_"id" = sqrt(sigma_c^2 + sigma_r^2 - sigma_r sigma_c) $

Esprimendola in funzione esclusiva del parametro $beta$, la tensione ideale al bordo interno assume l'espressione:
$ sigma_"id" = p_i sqrt( ((1+beta^2)/(1-beta^2))^2 + 1 + ((1+beta^2)/(1-beta^2)) ) => sigma_"id" = p_i (sqrt(3+beta^4)) / (1-beta^2) $
Ponendo come condizione di sicurezza che tale spinta ideale eguagli la tensione ammissibile ($sigma_"id" = sigma_"amm"$), si ricava la pressione massima tollerabile:
$ p_"amm" = sigma_"amm" (1-beta^2)/(sqrt(3+beta^4)) $

== Anello sottile rotante
#grid(
  columns: (1fr, 1fr),
  rows: (2),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'ultimo caso studiato riguarda un anello sottile radiale rotante,
assimilabile a un tubo in parete sottile ma con spessore ridotto
($L lt.double D$, $s\/r_i lt.eq 0.1$). È il caso tipico dell'anello
interno di un cuscinetto calettato su un albero, ruotante a velocità
angolare $omega$ costante. L'azione non è una pressione statica, ma una
forza centrifuga originata dalla massa del corpo in rotazione.

],[#include "figs/solidi-fig15.typ"
],[Sull'elemento infinitesimo di volume $d V = s B dot.op r d phi.alt$ (con
spessore radiale $s$ e profondità assiale $B$), agisce una forza
centrifuga radiale:
$ d F = d m omega^2 r = rho d V omega^2 r = rho s B omega^2 r^2 d phi.alt $],[
#include "figs/solidi-fig16.typ"

])
#grid(
  columns: (1.6fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Questa forza non è una semplice azione idraulica: deve essere bilanciata
tramite l'integrazione di tutte le componenti radiali lungo lo sviluppo
dell'anello:
$ F^omega = integral_0^pi d F sin phi.alt = 2 rho omega^2 r^2 s B $
L'equilibrio radiale dell'anello è garantito dalla reazione opposta
fornita dalla tensione circonferenziale centrifuga $sigma_c^omega$ su
due facce di area $s dot.op B$:
$ 2 T = F^omega arrow.r.double.long 2 sigma_c^omega s B = 2 rho omega^2 r^2 s B arrow.r.double.long sigma_c^omega = rho omega^2 r^2 $
Dato che lo spessore dell'anello è esiguo, è lecito approssimare
$r tilde.equiv D_e\/2$, ottenendo un valore costante:
$ sigma_c^omega tilde.equiv rho omega^2 D_e^2 / 4 = sigma_0 = upright("costante") $
Le tensioni radiale e assiale per effetto centrifugo sono invece nulle
($sigma_r^omega = sigma_z^omega = 0$).],[#include "figs/solidi-fig17.typ"])
#strong[Problema del calettamento (Scalettamento):] Per garantire che
l'anello interno del cuscinetto rimanga solidale all'albero durante il
funzionamento, è fondamentale misurare lo spostamento radiale causato
dalla forza centrifuga sul bordo interno, poiché un eccessivo
allargamento comporterebbe la perdita di interferenza e il conseguente
distacco dell'anello (fenomeno di "scalettamento"). La deformazione
circonferenziale è data unicamente dalla legge di Hooke
($epsilon_c = sigma_c^omega\/E$). Lo spostamento radiale al bordo
interno (di raggio $D_i\/2$) vale pertanto:
$ u_i^omega = D_i / 2 epsilon_c = D_i / 2 sigma_c^omega / E = frac(D_i rho omega^2 D_e^2, 8 E) $
Si nota l'uso ibrido del diametro interno $D_i$ (posizione in cui si
calcola fisicamente l'aderenza) e del diametro esterno $D_e$ (impiegato
in senso conservativo per il calcolo della forza centrifuga, essendo il
punto a massima energia cinetica).
#pagebreak()