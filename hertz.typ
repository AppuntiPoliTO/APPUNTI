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
= *Meccanica del Contatto (Teoria di Hertz)*

== Ipotesi del contatto hertziano
// [DA AUDIO]
Si esamina il contatto tra due corpi premuti l'uno contro l'altro in contatto tra di loro attraverso superfici curve, a causa dell'elasticità dei materiali questo contatto avviene fra aree finite e non in un singolo punto o lungo una linea. Nel nostro studio verranno analizzati solo i casi di contatto sfera-sfera e cilindro-cilindro.
L'obiettivo dello studio del contatto hertziano è determinare l'andamento della pressione e l'estensione dell'area di impronta a seguito dell'accostamento sotto carico. Noti questi parametri, è possibile calcolare la distribuzione di tensione all'interno dei corpi solidi per verificare la resistenza strutturale nei punti critici, confrontandola con i limiti di rottura, di snervamento o con le condizioni di innesco per fatica superficiale e usura (come ad esempio il fenomeno del _pitting_ nei fianchi delle ruote dentate).

=== Ipotesi della Teoria di Hertz
<ipotesi-della-teoria-di-hertz>
La formulazione del contatto hertziano si basa su una serie di precise assunzioni geometriche e relative al materiale: 

- *Geometria:* Si analizzano due corpi a contatto modellati analiticamente come superfici tridimensionali (identificate come $Z_1$ e $Z_2$). Si ipotizza che il contatto iniziale avvenga in un punto $O$ non singolare e che esista un piano tangente comune ad entrambe le superfici, nel quale si svilupperà e dilaterà l'impronta al crescere del carico. 

- *Materiale:* Il materiale dei corpi è considerato elastico (si escludono effetti di plasticizzazione nella fase iniziale di accostamento), omogeneo (proprietà chimico-fisiche stabili e costanti in ogni macro-punto del volume, quindi sostanzialmente non poroso) e isotropo (il modulo di Young $E$ e il coefficiente di Poisson $nu$ sono indipendenti dalla direzione di sollecitazione). È inoltre assunta la totale assenza di attrito, ipotizzando che la pressione si scambi unicamente in direzione normale al piano tangente, senza scorrimenti. 

- *Dimensionalità dell'Area:* Si verifica, a posteriori, che la superficie di contatto formatasi sia sufficientemente piccola rispetto ai raggi di curvatura dei corpi affinché lo stato tensionale locale non interferisca con quello globale dell'intera struttura, ma non così infinitesima da generare singolarità tensionali, cioè in modo che non si possa definire una misura di tensione locale nel punto di contatto.

// [DA AUDIO]


#grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [*Superfici $Z_1$ e $Z_2$ a contatto* \
   A livello locale, la geometria delle due superfici può essere modellata tramite due apparenti ellissoidi, identificando per ciascuno due curvature sui rispettivi piani principali. Si definisce un sistema di riferimento locale in cui il punto di primo contatto $O$ è l'origine; l'asse $z$ rappresenta la direzione normale alle superfici (lungo la quale si sviluppa la pressione), mentre il piano $x y$ è il piano di tangenza su cui andrà a formarsi l'impronta di contatto.
  ],
  [
    #include "figs/hertz-fig01.typ"
  ]
)

#v(1em)


=== Geometria del Contatto e Curvature
<geometria-del-contatto-e-curvature>
Per descrivere la forma dell'area di contatto e l'intensità della pressione, è necessario definire la curvatura locale delle superfici. Ogni superficie solida, nell'intorno del punto di contatto, presenta curvature principali nei due piani ortogonali. La curvatura principale, che in letteratura corrisponde al reciproco del diametro (ovvero la metà del reciproco del raggio di curvatura), si definisce separatamente per il Corpo 1 e per il Corpo 2.

// [DA AUDIO]
Da qui l'introduzione del termine $1/2$ nelle formule. Inoltre, nei pedici delle curvature la coordinata $z$ è volutamente omessa in quanto è la direzione normale comune a tutti i piani di sezione.
#pagebreak()
*Superficie $Z_1$* \
#grid(
  columns: (0.7fr, 1fr,),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #box((include "figs/hertz-fig02.typ")) 
  ],
  move(dy: -8pt)[
  #include "figs/hertz-fig03.typ"
  ]
)
Per la superficie 1, indichiamo con $alpha_x$ e $alpha_y$ rispettivamente la curvatura massima e minima, definite perciò curvature principali per un intorno infinitesimo del punto O:
$ alpha_x = 1 / 2 1 / R_(1 x) quad quad ==> quad quad "curvatura massima" $  
$ alpha_y = 1 / 2 1 / R_(1 y) quad quad ==> quad quad "curvatura minima" $ 

#v(1em)

*Superficie $Z_2$* \


#v(3em)

#grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #box((include "figs/hertz-fig04.typ"))
  ],
  move(dy: -13pt)[
    #include "figs/hertz-fig05.typ"
  ]
)
Analogamente, per la superficie 2 definiamo le curvature $beta_x$ e $beta_y$:
$ beta_x = 1 / 2 1 / R_(2 x) quad quad ==> quad quad "curvatura massima" $  
$ beta_y = 1 / 2 1 / R_(2 y) quad quad ==> quad quad "curvatura minima" $ 

#v(1em)
#pagebreak()
=== Convenzione di segno
Nel valutare la geometria relativa dei due corpi, la teoria adotta una specifica convenzione di segno per calcolare gli spostamenti necessari all'accostamento.


#grid(
  columns: (1.6fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + top),
  [- *Corpo 1 convesso, corpo 2 convesso*: Entrambi i raggi di curvatura sono considerati positivi, poiché i centri di curvatura si trovano all'interno dei rispettivi corpi. Se il corpo è convesso (si sviluppa dal lato opposto rispetto al piano tangente), la sua curvatura è positiva. Geometricamente, ciò implica che le superfici convesse si trovino da lati opposti rispetto al piano di tangenza condiviso nel punto di contatto.
    $ alpha_x &= + 1/2 1/R_(1 x) \ 
      beta_x &= + 1/2 1/R_(2 x) $
  ],
  [
    #include "figs/hertz-fig06.typ"
  ]
)

#v(1em)



#grid(
  columns: (1.6fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + top),
  [
   - *Corpo 1 convesso, corpo 2 concavo*: Il raggio di curvatura del corpo concavo viene considerato negativo. Al contrario, se uno dei due corpi presenta una superficie avvolgente e concava che si avvicina alla superficie del primo corpo agevolando il contatto con una minore deformazione, la sua curvatura viene inserita nelle equazioni con segno negativo. In questa configurazione, la superficie concava si sviluppa avvolgendo il piano di tangenza comune, "abbracciando" così la superficie convessa del primo corpo. Il segno negativo per il corpo concavo riflette il fatto che le superfici sono già ravvicinate: l'accostamento richiede quindi una forza minore rispetto al caso di due corpi convessi.
    $ alpha_x &= + 1/2 1/R_(1 x) $
    $ beta_x = - 1/2 1/R_(2 x) $
  ],
  [ #include "figs/hertz-fig07.typ"
  ]
)
#v(1em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Ellisse di contatto*\
 Nella realtà, quando i corpi sono premuti uno contro l’altro non c’è compenetrazione, ma si genera una superficie di contatto che la teoria di Hertz dimostra essere ancora un’ellisse chiamata ellisse di contatto.
  ],
   move(dx: 13pt)[
    #include "figs/hertz-fig08.typ"
  ]
)
#v(1em)

== Parametri dell'ellisse di contatto
Uno degli obbiettivi della teoria di Hertz è quella di individuare la dimensione effettiva dell'ellisse di contatto, per farlo introduce un parametro ausiliario di riferimento che tiene conto delle curvature nei due piani principali che chiama $cos(tau)$, questo coefficiente è un valore numerico che non può mai essere minore di 0 o maggiore di 1 e non ha niente a che fare con le tensioni tangenziali, il parametro condensa le informazioni delle curvature ed è definito come:
$ cos(tau) =abs(gamma_x-gamma_y)/((gamma_x+gamma_y))= abs((alpha_x - alpha_y) + (beta_x - beta_y)) / (alpha_x + alpha_y + beta_x + beta_y) $ 
Applicando un carico normale, il contatto evolve: parte inizialmente come un singolo punto (a carico nullo) e si estende progressivamente deformando in modo elastico le superfici. Sebbene la forma generale dell'impronta sia ellittica, in casi particolari legati alla geometria dei corpi, essa può degenerare in un cerchio o in un rettangolo. \ Le dimensioni dei semiassi $a$ e $b$ dell'ellisse di contatto sono funzione di $cos(tau)$ e si calcolano come:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ cases(
      a = a^* dot f, 
      b = b^* dot f
    ) $
  ],
  [
    #include "figs/hertz-fig09.typ"
  ]
)
#v(1em)

Il parametro dimensionale $f$ agisce come termine di scala dell'intera impronta: esso tiene conto del carico normale applicato $F$, della geometria complessiva (espressa dalle curvature $alpha$ e $beta$) e della cedevolezza elastica dei materiali (modulo di Young $E$ e coefficiente di Poisson $nu$). La sua espressione è:
$ f = root(3, (3 F) / (4 (alpha_x + alpha_y + beta_x + beta_y)) ( (1 - nu_alpha^2)/E_alpha + (1 - nu_beta^2)/E_beta )) $
#v(2em)
#align(center)[
#include "figs/hertz-fig10.typ"]
// TODO: inserire figura della slide 1 del PDF, 'Coefficienti a* e b* in funzione di cos(tau)'
// didascalia suggerita: Grafici per la determinazione dei coefficienti a* e b* per l'ellisse di contatto in funzione del parametro ausiliario cos(tau).
// #align(center, image("fig_slide_1_a.png", width: 70%))


==== Distribuzione delle pressioni
La distribuzione della pressione all'interno dell'area ellittica non è uniforme, ma ricalca la geometria di un semi-ellissoide: la pressione è massima al centro dell'impronta (punto di primo accostamento) e si annulla ai bordi. La pressione in un generico punto $(x, y)$ si calcola come:
$ p(x,y) = p_"max" sqrt(1 - x^2/a^2 - y^2/b^2) $

La pressione media si ricava rapportando il carico all'area, ovvero $p_"media" = F / (pi a b)$. Poiché il volume di un emi-ellissoide è pari ai due terzi del cilindro circoscritto, l'integrazione del profilo di pressione mostra che il valore massimo al centro è pari a $1.5$ volte la pressione media:
$ p_"max" = 3/2 F / (pi a b) = 1.5 p_"media" $

Gran parte delle applicazioni pratiche ricade in due casi particolari notevoli: il contatto *sfera-sfera* e il contatto *cilindro-cilindro*. 

== Contatto sfera-sfera
A causa della perfetta simmetria sferica, le curvature nei due piani principali per ciascun corpo coincidono:\ $alpha_x = alpha_y = 1/d$ e $beta_x = beta_y = 1/D$

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Essendo le curvature identiche per asse, il numeratore del parametro di Hertz si annulla, imponendo $cos(tau) = 0$. Questo fa sì che i coefficienti $a^*$ e $b^*$ assumano entrambi valore unitario:
    $ a^* = b^* = 1 quad arrow.r.long quad a = b = f $ 
  ],
  [#include "figs/hertz-fig11.typ"
  ]
)
#v(1em)

L'ellisse degenera in un cerchio perfetto di raggio $a = f$. L'area di contatto diventa pari a $pi a^2$, semplificando la pressione massima in:
$ p_"max" = (3 F) / (2 pi a^2) quad p_"max" = F / pi a^2 $
#pagebreak()
== Contatto cilindro-cilindro
Nel contatto tra due cilindri appoggiati con assi paralleli, l'impronta si sviluppa per la loro intera lunghezza $L$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
     #include "figs/hertz-fig12.typ"
  ],
  [
   #include "figs/hertz-fig13.typ"
  ]
)
Poiché la curvatura assiale dei cilindri è nulla (raggio infinito), questa condizione impone $cos(tau) = 1$. Di conseguenza, $a^*$ diverge all'infinito e $b^*$ tende a zero. Fisicamente, l'ellisse degenera in un rettangolo di larghezza $2b$ e lunghezza assiale pari a $L$.
    $ alpha_x &= beta_x = 0 \ 
      cos(tau)=0 arrow.r
      (a^* &arrow.r oo quad b^* arrow.r 0) $ 
#v(1em)




Il valore della semi-larghezza $b$ è descritto da una formulazione specifica:
$ b = root(2, (4 F) / (pi dot L dot 2(alpha_y + beta_y)) ( (1 - nu_1^2)/E_1 + (1 - nu_2^2)/E_2 ) ) $

In questa configurazione, la distribuzione di pressione assume un profilo parabolico esteso lungo la semi-larghezza $b$. La pressione media si calcola come $p_"media" = F / (2 L b)$, e il picco massimo è:
$ p_"max" = (2 F) / (pi L b) $
== Analogia con le ruote dentate
Le premesse teoriche di Hertz trovano applicazione progettuale fondamentale nella stima della resistenza al "pitting" dei denti degli ingranaggi. La geometria dei fianchi a evolvente di cerchio si assimila con grandissima coerenza al contatto tra due cilindri elastici. 

Utilizzando direttamente la formula per la geometria cilindro-cilindro ($p_"max" = (2 F) / (pi L b)$) e sostituendo il semiasse $b$, associando i termini alle rispettive grandezze ingranaggistiche (il carico alla forza tangenziale, le deviazioni ai fattori dinamici, e la cedevolezza ai fattori materiali), si ricava la formula normalizzata d'usura:
$ sigma_"max,USURA" = Z_E sqrt( (F K_0 K_v K_s K_H Z_R) / (L dot d_1) ) $ 
In questa elaborazione si apprezza come l'effetto elastico composito del materiale venga condensato nel fattore strutturale $Z_E$, le grandezze base geometriche distribuiscano la spinta, le deviazioni si racchiudano nelle costanti di correzione $K_i$.
=== Tensioni sub-superficiali e cedimento
Un aspetto fondamentale dell'azione di contatto, responsabile del danneggiamento per "butteratura" (o pitting), è l'andamento sub-superficiale delle tensioni. Sebbene le tensioni normali siano massime in superficie, la dilatazione trasversale del materiale compresso è ostacolata dalle zone circostanti, creando un forte vincolo tridimensionale. 

Per questo motivo, il valore massimo della tensione ideale di von Mises ($sigma_id$) non si registra sulla superficie di contatto, ma ad una profondità $z$ misurata dal piano di carico:
- *Cilindro*: la massima $sigma_id$ si verifica a $z approx 0.78b$ e vale circa il $60\%$ della $p_"max"$.
- *Sfera*: la massima $sigma_id$ si verifica a $z approx 0.48a$ e vale circa il $62\%$ della $p_"max"$.

I materiali sembrano sopportare pressioni massime di contatto apparentemente superiori al loro limite di snervamento $R_(\eH)$. 
Il cedimento per snervamento avviene sotto la superficie dove la
$sigma_id$ è massima, quando:\
$sigma_id = R_(\eH)$. Imponendo la condizione di snervamento nel punto critico sub-superficiale $sigma_{i d} = R_(\eH)$, si calcola che il cedimento inizia a $p_"max" =R_(\eH)/0.60=1.67 R_(\eH)$ per il cilindro e $p_"max" =R_(\eH)/0.62= 1.61 R_(\eH)$ per la sfera.
//reminder fede mancano 11 minuti alla videolezione
=== Pressione di riferimento e confronto applicativo
A fini progettuali si utilizza una _pressione nominale di riferimento_ $p_"rif" = F / A$, calcolata supponendo l'indentazione totale del corpo, dividendo il carico per la macro-area proiettata (per la sfera $pi D^2 / 4$, per il cilindro $L D$). Confrontando le due geometrie a parità di carico:
- *Cuscinetti a rulli (contatto cilindrico)*: Distribuiscono il carico su un'area rettangolare allungata, mantenendo il rapporto $p_"max" / p_"rif"$ basso. Questo garantisce di sopportare carichi elevati senza snervamento locale.
- *Cuscinetti a sfere*: Concentrano il carico su un'area molto ristretta, generando picchi di pressione massimi elevati. Tuttavia, l'area di contatto limitata minimizza le forze di attrito, rendendoli insostituibili per rotolamenti ad altissima velocità.



 


==== Fatica da rotolamento (Rolling Contact Fatigue)
In condizioni di rotolamento reciproco, l'elemento di volume sub-superficiale non sperimenta solo una compressione. Spostandosi lateralmente lungo la retta d'azione del carico, il materiale subisce azioni tangenziali $tau_(\yz)$ provocate dalla spinta del corpo sovrastante. A causa della rotazione, queste tensioni tangenziali alternano continuamente la loro direzione (pulsazione), innescando complessi fenomeni di fatica locale.


*Limiti del modello:* La teoria di Hertz trascura totalmente l'impatto del moto relativo tangenziale o dello strisciamento. La cinematica reale aggiunge azioni di attrito che alterano profondamente lo stato tensionale locale descritto.

#let aggiunta(body) = block(fill: rgb("#eef6ff"), stroke: (left: 2pt + rgb("#2f6fdb")), inset: 8pt, width: 100%, body)


#pagebreak()