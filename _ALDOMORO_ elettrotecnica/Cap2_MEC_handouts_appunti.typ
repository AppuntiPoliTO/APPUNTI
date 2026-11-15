#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

// Distingue automaticamente tra #line/#rect/#circle di Typst e quelli dei circuiti CeTZ:
#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let nota(body) = block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  stroke: (left: 3pt + luma(120)),
  body
)

// === IMPOSTAZIONI GLOBALI COMPONENTI ===
// Cambia qui "ieee" (zig-zag) o "iec" (rettangolo) per modificare TUTTI i circuiti del file!
#let resistor = zap.resistor.with(variant: "ieee")
#let rheostat = zap.rheostat.with(variant: "ieee")
#let potentiometer = zap.potentiometer.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec") // "iec" = cerchio con linea, "ieee" = cerchio con +/-
#let isource = zap.isource.with(variant: "iec")

// === IMPOSTAZIONI PAGINA E TESTO ===
#set page(
  paper: "a4",
  margin: 1.5cm,
  numbering: "1",
  number-align: bottom + right,
)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: "1.")
#let nota(body) = block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  stroke: (left: 3pt + luma(120)),
  body
)

// === FUNZIONI E MACRO ===
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)

#let circ = sym.degree
#let varphi = $phi$


= Metodi di soluzione di circuiti

== Soluzione circuitale e Metodo Algebrico

Risolvere un circuito elettrico significa determinare il valore di tutte le *variabili di rete*, ovvero:
- le tensioni su tutti i lati del circuito;
- le correnti in tutti i lati del circuito.

Per determinare tali incognite si utilizzano due tipologie fondamentali di relazioni: le *equazioni costitutive* (che dipendono dalla natura fisica dei singoli componenti) e le *equazioni topologiche* (le leggi di Kirchhoff, che dipendono esclusivamente da come i componenti sono interconnessi tra loro). Il *metodo algebrico* rappresenta la procedura sistematica di validità generale per impostare e risolvere questo sistema di equazioni.

i piselli mi piacciono perchè sono duri e succosi.

la cacca dei culi duri bla bla bla bla


cacca cacca cacca
=== Bilancio delle equazioni e delle incognite

Come in ogni problema algebrico, la strategia risolutiva consiste nello scrivere un sistema di equazioni linearmente indipendenti in numero esattamente pari al numero delle incognite.

Considerando una rete elettrica costituita da $L$ lati e $N$ nodi, a ciascun lato sono associate due variabili (una tensione di lato e una corrente di lato); pertanto il numero complessivo di incognite è pari a:
$ N_"incognite" = 2 L $

Il sistema risolutivo di $2 L$ equazioni linearmente indipendenti viene costruito combinando le equazioni costitutive e le leggi di Kirchhoff secondo la seguente ripartizione:
1. *Equazioni costitutive ($L$ equazioni)*: scrivendo la relazione caratteristica tensione-corrente per ciascuno degli $L$ lati, si introducono $L$ vincoli. Sottraendo tali vincoli dal totale delle incognite ($2 L - L = L$), rimangono $L$ variabili ancora libere.
2. *Leggi di Kirchhoff alle correnti — LKC ($N - 1$ equazioni)*: le restanti $L$ variabili vengono vincolate mediante le equazioni topologiche (che sono equazioni algebriche lineari). Si dimostra che in una rete con $N$ nodi è possibile scrivere $N - 1$ equazioni LKC linearmente indipendenti.
3. *Leggi di Kirchhoff alle tensioni — LKT ($L - N + 1$ equazioni)*: le ulteriori variabili ancora da determinare dopo l'applicazione delle LKC sono in numero pari a $L - (N - 1) = L - N + 1$, e vengono vincolate scrivendo altrettante equazioni LKT indipendenti sulle maglie della rete.

=== Equazioni costitutive di lato e di lato composto

L'equazione costitutiva esprime il legame funzionale $V = f(I)$ tra la tensione ai capi di un lato e la corrente che lo attraversa. Tale relazione può essere scritta non solo per un singolo bipolo elementare, ma anche per un *lato composto* (ovvero una combinazione in serie o in parallelo di più bipoli compresa tra due nodi della rete), riducendo così il numero complessivo di incognite.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig01.typ"
]

Analizziamo i principali casi di lato composto in serie:

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    *Caso a) Serie di resistori:* \
    Considerando tre resistori $R_1$, $R_2$ e $R_3$ collegati in serie e attraversati dalla medesima corrente $I$, la tensione complessiva $V$ del lato (adottando la convenzione degli utilizzatori rispetto a $I$) è pari a:
    $ V = (R_1 + R_2 + R_3) I $
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig02.typ"
  ]
)

#v(0.5em)

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    *Caso b) Serie di generatori ideali di tensione:* \
    Applicando la LKT alla maglia fittizia individuata dalla tensione di lato $V$ e dai tre generatori $E_1$, $E_2$, $E_3$ (tenendo conto dei rispettivi morsetti positivi indicati nello schema), si ottiene:
    $ V + E_1 + E_2 - E_3 = 0 arrow.r.double V = E_3 - E_1 - E_2 $
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig03.typ"
  ]
)

#v(0.5em)

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    *Caso c) Lato attivo serie (generatore di tensione + resistore):* \
    Con i versi di $I$ e $V$ indicati a lato, percorrendo il ramo e applicando la LKT si ha:
    $ -V - R_k I + E_k = 0 arrow.r.double V = E_k - R_k I $
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig04.typ"
  ]
)

#v(1em)
In modo formale e standardizzato, per un generico lato attivo $k$-esimo della rete si adottano le seguenti rappresentazioni equivalenti:

1. *Lato composto serie (con generatore di tensione $E_k$ e resistore $R_k$)*:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Adottando per il lato $k$-esimo la convenzione dei generatori (corrente $I_k$ uscente dal morsetto positivo di $E_k$ e tensione di lato $V_k$ concorde con la polarità del generatore), l'equazione costitutiva assume la forma:
    $ v_k = E_k - R_k i_k $
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig05.typ"
  ]
)

#v(0.8em)

2. *Lato composto parallelo (con generatore di corrente $A_k$ e resistore $R_k$)*:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Se il lato $k$-esimo è costituito dal parallelo tra un generatore ideale di corrente $A_k$ e un resistore $R_k$, la corrente che attraversa il resistore (da destra verso sinistra) è data da $A_k - i_k$. Di conseguenza, la tensione $v_k$ ai morsetti del lato composto vale:
    $ v_k = R_k A_k - R_k i_k $
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig06.typ"
  ]
)

== Esempio di applicazione del metodo algebrico (Rete resistiva)

Si consideri la rete resistiva mostrata in figura, caratterizzata da $N = 2$ nodi (indicati con #sans("A", weight: "bold") e #sans("B", weight: "bold")) e $L = 3$ lati.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig07.typ"
]

Il bilancio delle incognite e delle equazioni per questa rete fornisce:
- Numero totale di incognite: $2 L = 6$ (le tre tensioni $v_1, v_2, v_3$ e le tre correnti $i_1, i_2, i_3$).
- Numero di equazioni costitutive di lato composto: $L = 3$.
- Numero di equazioni LKC indipendenti: $N - 1 = 2 - 1 = 1$ equazione LKC (scritta ad esempio al nodo #sans("A", weight: "bold"), assumendo positive le correnti entranti).
- Numero di equazioni LKT indipendenti: $L - N + 1 = 3 - 2 + 1 = 2$ equazioni LKT (scritte sulle due maglie indicate con #sans("MAGLIA 1") e #sans("MAGLIA 2")).

=== Scrittura del sistema risolutivo

Scriviamo separatamente i due blocchi di equazioni:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    *Equazioni costitutive (3 eq.):*
    $ cases(
      v_1 = E_1 - R_1 i_1,
      v_2 = E_2 - R_2 i_2,
      v_3 = R_3 i_3
    ) $
  ],
  [
    *Equazioni topologiche (1 LKC + 2 LKT):*
    $ cases(
      i_1 + i_2 - i_3 = 0 & quad "(LKC al nodo A)",
      v_1 - v_3 = 0 & quad "(LKT Maglia 1)",
      v_2 - v_3 = 0 & quad "(LKT Maglia 2)"
    ) $
  ]
)

Sostituendo le espressioni delle equazioni costitutive all'interno delle due LKT, si eliminano le incognite di tensione e si ottiene un sistema ridotto di 3 equazioni nelle sole 3 incognite di corrente ($i_1, i_2, i_3$):
$ cases(
  i_1 + i_2 - i_3 = 0,
  R_1 i_1 + R_3 i_3 = E_1,
  R_2 i_2 + R_3 i_3 = E_2
) $

Volendo risolvere il sistema rispetto alla corrente del ramo centrale $i_3$, si ricavano $i_1$ e $i_2$ in funzione di $i_3$ dalle ultime due equazioni:
$ i_1 = (E_1 - R_3 i_3) / R_1 , quad i_2 = (E_2 - R_3 i_3) / R_2 $

Sostituendo tali espressioni all'interno dell'equazione LKC al nodo #sans("A", weight: "bold"), si giunge a un'unica equazione nella sola incognita $i_3$:
$ (E_1 - R_3 i_3) / R_1 + (E_2 - R_3 i_3) / R_2 - i_3 = 0 $

Raccogliendo $i_3$ e riducendo allo stesso denominatore si ottiene la soluzione analitica per la corrente $i_3$:
$ i_3 = (R_2 E_1 + R_1 E_2) / (R_1 R_2 + R_2 R_3 + R_3 R_1) $

Una volta nota $i_3$, è immediato calcolare a ritroso le correnti $i_1$ e $i_2$ e, infine, determinare le tensioni di lato $v_1$, $v_2$ e $v_3$ tramite le tre equazioni costitutive iniziali.

== Soluzione analitica e Proprietà di Linearità

#nota[
  *Osservazione computazionale sul metodo algebrico:* \
  Il metodo algebrico presentato ha validità del tutto generale e costituisce un algoritmo sistematico che può essere facilmente tradotto in una procedura numerica per risolvere reti di grandi dimensioni mediante calcolatore. Tuttavia, dal punto di vista analitico manuale, risolvere un sistema di $2 L$ equazioni (o $L$ equazioni dopo la sostituzione delle costitutive) diventa rapidamente proibitivo non appena il numero di lati $L$ supera qualche unità.
]

Per semplificare il procedimento di risoluzione analitica manuale senza dover affrontare l'intero sistema algebrico, si sfruttano specifiche proprietà strutturali dei circuiti elettrici che conducono ai cosiddetti *teoremi di rete*. La proprietà fondamentale alla base di questi teoremi è la *linearità*.

=== Definizione di Linearità (Omogeneità e Additività)

Un componente (o un sistema elettrico) si definisce *lineare* quando la sua relazione ingresso-uscita soddisfa congiuntamente due proprietà: *omogeneità* e *additività*.

1. *Proprietà di Omogeneità*: se la grandezza di ingresso (ad esempio la corrente $i$) viene moltiplicata per un fattore costante $k$, anche la corrispondente grandezza di uscita (ad esempio la tensione $v$) risulta moltiplicata per il medesimo fattore $k$. \
   Nel caso del resistore lineare ($v = R i$):
   $ v = R i arrow.r.double R (k i) = k (R i) = k v $

2. *Proprietà di Additività*: se la grandezza di ingresso è data dalla somma di più contributi distinti ($i = i_1 + i_2$), l'uscita complessiva deve coincidere con la somma delle singole risposte che si avrebbero applicando ciascun ingresso separatamente (ovvero calcolando $v^((i_1)) = R i_1$ quando $i_2 = 0$, e $v^((i_2)) = R i_2$ quando $i_1 = 0$). \
   Nel caso del resistore lineare:
   $ v = R i = R (i_1 + i_2) = R i_1 + R i_2 = v^((i_1)) + v^((i_2)) $

=== Verifica della linearità per il condensatore tempo-invariante

Il concetto di linearità non è limitato ai soli bipoli algebrici (come i resistori), ma si estende anche ai bipoli dinamici descritti da operatori di derivazione o integrazione rispetto al tempo, purché i parametri fisici siano costanti (*tempo-invarianti*).

Consideriamo ad esempio un condensatore di capacità $C$ costante (tempo-invariante), la cui equazione costitutiva nel dominio del tempo lega la corrente $i(t)$ alla derivata temporale della tensione $v(t)$:
$ i(t) = C (d v(t)) / (d t) $

- *Verifica dell'omogeneità*: moltiplicando la tensione di ingresso $v(t)$ per una costante $k$, per la linearità dell'operatore di derivazione si ha:
  $ C (d (k v(t))) / (d t) = k C (d v(t)) / (d t) = k i(t) $

- *Verifica dell'additività*: esprimendo la tensione applicata come somma di due contributi $v(t) = v_1(t) + v_2(t)$, la corrente risultante è pari alla somma delle correnti parziali $i^((v_1))$ e $i^((v_2))$:
  $ i(t) = C (d v(t)) / (d t) = C d / (d t) (v_1(t) + v_2(t)) = underbrace(C (d v_1(t)) / (d t), i^((v_1))) + underbrace(C (d v_2(t)) / (d t), i^((v_2))) $

// ==========================================
// SLIDE 16 - 30
// ==========================================


#let nota(body) = block(
  fill: luma(242),
  stroke: (left: 3pt + luma(120)),
  inset: 10pt,
  radius: (right: 4pt),
  width: 100%,
  body
)

= Teoremi di Rete

== Proprietà di Linearità e Teorema di Sovrapposizione degli Effetti

=== Proprietà di Linearità
La proprietà di linearità si verifica per i bipoli passivi fondamentali — resistori, condensatori e induttori — a condizione che i rispettivi parametri caratteristici $R$, $C$ ed $L$ siano costanti e tempo-invarianti, nonché per i generatori ideali (di tensione e di corrente).

Se tutti i componenti che costituiscono la rete soddisfano tale condizione, la risposta del circuito è lineare e, in generale, il circuito stesso si definisce *lineare*.

=== Definizione del Teorema di Sovrapposizione
Il teorema di sovrapposizione degli effetti traduce in termini circuitali la proprietà matematica di linearità della rete:
- *Ipotesi:* il circuito deve essere lineare.
- *Definizione:* in un circuito lineare contenente $N_g$ generatori indipendenti, ogni tensione e ogni corrente di lato è data dalla somma algebrica di $N_g$ contributi parziali, ciascuno dei quali viene calcolato risolvendo il circuito in cui tutte le sorgenti, eccetto una, sono state *passivate*.

=== Passivazione delle Sorgenti
Passivare un generatore significa annullare il suo effetto sul circuito. Operativamente, la rimozione di un generatore ideale (di tensione o di corrente) deve essere eseguita azzerando il suo contributo rispetto alla sola variabile elettrica imposta, ovvero sostituendolo con un generatore dello stesso tipo ma di valore nullo:
1. *Generatore ideale di tensione:* imporre una tensione nulla $e(t) = 0$ tra due morsetti equivale a imporre una differenza di potenziale identicamente zero per qualsiasi corrente; il componente viene quindi sostituito da un *corto circuito*.
2. *Generatore ideale di corrente:* imporre una corrente nulla $a(t) = 0$ in un lato equivale a impedire il passaggio di carica per qualsiasi tensione ai capi; il componente viene quindi sostituito da un *circuito aperto*.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig08.typ"
]

#v(0.5em)
== Applicazione del Teorema di Sovrapposizione

=== Scomposizione del Circuito
Si consideri la rete lineare binodale seguente, alimentata dai due generatori ideali di tensione $E_1$ ed $E_2$. Si vogliano determinare la corrente $i_3$ e la tensione $V_3$ sul ramo centrale contenente il resistore $R_3$.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig09.typ"
]

Per il teorema di sovrapposizione, la corrente $i_3$ e la tensione $V_3$ sono date dalla somma dei contributi ottenuti attivando un generatore alla volta:
$ i_3 = i_3 (E_1, E_2) = i'_3 (E_1, 0) + i''_3 (0, E_2) $
$ V_3 = V_3^((E_1)) + V_3^((E_2)) $
dove:
- $i'_3$ e $V_3^((E_1)) = V_3 (E_1, 0)$ sono calcolate con *$E_1$ attivo* ed *$E_2$ passivato* (sostituito da un corto circuito);
- $i''_3$ e $V_3^((E_2)) = V_3 (0, E_2)$ sono calcolate con *$E_2$ attivo* ed *$E_1$ passivato* (sostituito da un corto circuito).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: center + horizon,
  [
    *1) Sottocircuito con $E_1$ attivo ($E_2 = 0$)*
    $ V_3^((E_1)) = V_3^((E_1, 0)) $
    #include "figs/Cap2_MEC_handouts_appunti-fig10.typ"
  ],
  [
    *2) Sottocircuito con $E_2$ attivo ($E_1 = 0$)*
    $ V_3^((E_2)) = V_3^((0, E_2)) $
    #include "figs/Cap2_MEC_handouts_appunti-fig11.typ"
  ]
)

=== Risoluzione del 1° Sottocircuito ($E_1$ attivo, $E_2$ passivato)
Con il solo generatore $E_1$ attivo, i resistori $R_2$ ed $R_3$ risultano connessi in parallelo tra i nodi $A$ e $B$. Si definisce la resistenza equivalente parallelo $R_p$:
$ R_p = R_2 parallel R_3 = (R_2 dot R_3) / (R_2 + R_3) $

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig12.typ"
]

La tensione cercata $V_3^((E_1))$ coincide con la caduta di tensione su $R_p$, ossia $V_3^((E_1)) = R_p I_p$. Riducendo ulteriormente in serie $R_1$ ed $R_p$ nella resistenza $R_s = R_1 + R_p$ e applicando la legge di Kirchhoff delle tensioni (LKT) all'unica maglia rimasta, si ricava:
$ E_1 - R_s I_p = 0 quad arrow.r.double quad I_p = E_1 / R_s $
Sostituendo $I_p$ nell'espressione di $V_3^((E_1))$ si ottiene la formula del partitore di tensione:
$ V_3^((E_1)) = R_p I_p = R_p dot E_1 / R_s = E_1 dot R_p / (R_1 + R_p) $

=== Risoluzione del 2° Sottocircuito ($E_2$ attivo, $E_1$ passivato)
Con il solo generatore $E_2$ attivo ($E_1$ sostituito da un corto circuito), i resistori $R_1$ ed $R_3$ risultano in parallelo tra i nodi $A$ e $B$:
$ R_(p 2) = R_1 parallel R_3 = (R_1 dot R_3) / (R_1 + R_3) $

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig13.typ"
]

Applicando direttamente il partitore di tensione, si ottiene il secondo contributo:
$ V_3^((E_2)) = E_2 dot R_(p 2) / (R_(p 2) + R_2) $

#nota[
  *Concordanza dei versi di riferimento:* la somma algebrica $V_3 = V_3^((E_1)) + V_3^((E_2))$ mantiene il segno positivo se entrambe le tensioni parziali $V_3^((E_1))$ e $V_3^((E_2))$ sono orientate con lo stesso verso della freccia di $V_3$ (da $B$ verso $A$). Qualora uno dei contributi (ad esempio $V_3^((E_2))$) fosse stato orientato in verso opposto a $V_3$, nella relazione complessiva comparirebbe con il segno meno: $V_3 = V_3^((E_1)) - V_3^((E_2))$.
]

=== Soluzione Complessiva, Vantaggi e Svantaggi
Sommando i due contributi di corrente sul ramo centrale $i_3 = i'_3 + i''_3$ ed esplicitando i termini rispetto alle resistenze $R_1, R_2, R_3$, si ottiene:
$ i_3 = (E_1 R_2) / (R_1 R_2 + R_1 R_3 + R_2 R_3) + (E_2 R_1) / (R_1 R_2 + R_1 R_3 + R_2 R_3) = (E_1 R_2 + E_2 R_1) / (R_1 R_2 + R_1 R_3 + R_2 R_3) $
Il risultato coincide esattamente con quello ottenibile tramite il metodo algebrico generale (leggi di Kirchhoff).

- *Pro:* in presenza di un'unica sorgente attiva per ciascun sottocircuito, è possibile applicare direttamente le formule di semplificazione serie/parallelo e i partitori di tensione e di corrente.
- *Contro:* è necessario risolvere un numero di circuiti distinti pari al numero $N_g$ di generatori presenti nella rete.

=== Teorema di Sovrapposizione e Calcolo della Potenza
Ci si chiede se sia possibile applicare il teorema di sovrapposizione per calcolare la potenza assorbita dal resistore $R_3$. Poiché la potenza è legata quadraticamente alla corrente ($P_3 = R_3 I_3^2$), *non è una funzione lineare*: pertanto, il teorema di sovrapposizione può essere utilizzato solo sommando prima le correnti (o le tensioni) parziali e calcolando successivamente la potenza:
$ P_3 = R_3 I_3^2 = R_3 (I_3^((E_1)) + I_3^((E_2)))^2 = R_3 (I_3^((E_1)))^2 + R_3 (I_3^((E_2)))^2 + 2 R_3 I_3^((E_1)) I_3^((E_2)) $

#nota[
  - *Procedimento CORRETTO:*
    $ I_3 = I'_3 + I''_3 quad arrow.r.double quad P_(R_3) = R_3 dot I_3^2 = R_3 dot I'_3^2 + R_3 dot I''_3^2 + 2 R_3 dot I'_3 dot I''_3 $
  - *Procedimento ERRATO (da evitare):*
    $ P_(R_3) != P'_(R_3) + P''_(R_3) = R_3 dot I'_3^2 + R_3 dot I''_3^2 $
    La potenza totale assorbita da un resistore *non è* la somma delle potenze assorbite nei singoli sottocircuiti, poiché mancherebbe il doppio prodotto mutuo $2 R_3 I'_3 I''_3$.
]

#v(0.5em)
#pagebreak()
== Teorema di Thevenin

=== Circuito Equivalente e Ipotesi di Validità
Il teorema di Thevenin estende la nozione di equivalenza circuitale a una generica rete lineare vista da due morsetti $A$ e $B$. Sebbene venga enunciato per reti resistive, la sua validità è del tutto generale:
- *Ipotesi:* la rete alla sinistra dei terminali $A B$ deve essere *lineare* e non deve esserci alcun accoppiamento (ad esempio magnetico o tramite generatori pilotati) tra il carico e la rete lineare.
- *Carico:* non viene fatta *nessuna ipotesi* sulla natura del carico collegato ai morsetti $A B$ (può essere anche non lineare).

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig14.typ"
]

=== Determinazione Operativa dei Parametri $E_"TH"$ e $R_"TH"$
Il teorema di Thevenin fornisce le regole operative per calcolare i due parametri del circuito equivalente:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + top, center + top),
  [
    *Generatore equivalente $E_"eq" = E_"TH"$*
    #v(0.3em)
    #include "figs/Cap2_MEC_handouts_appunti-fig15.typ"
    #v(0.2em)
    #align(left)[Il valore del generatore ideale di tensione $E_"eq"$ ($E_"TH"$) è pari alla tensione a vuoto misurata ai morsetti $A B$ lasciati *aperti*.]
  ],
  [
    *Resistore equivalente $R_"eq" = R_"TH"$*
    #v(0.3em)
    #include "figs/Cap2_MEC_handouts_appunti-fig16.typ"
    #v(0.2em)
    #align(left)[La resistenza equivalente $R_"eq"$ ($R_"TH"$) è la resistenza vista dai morsetti $A B$ della rete lineare in cui *tutti i generatori indipendenti sono stati passivati*.]
  ]
)

=== Esempio di Calcolo di $R_"TH"$ ed $E_"TH"$ sulla Rete Binodale
Riprendendo la rete binodale precedente, si voglia determinare l'equivalente di Thevenin visto dai morsetti $A$ e $B$ a cui è collegato il resistore di carico $R_3$. Si scollega anzitutto il ramo di carico $R_3$ evidenziando i terminali aperti $A$ e $B$:

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig17.typ"
]

1. *Calcolo di $R_"TH"$ (passivando $E_1$ ed $E_2$):*
   Sostituendo $E_1$ ed $E_2$ con due corti circuiti e applicando idealmente un generatore di prova ai morsetti $A B$, si osserva che $R_1$ ed $R_2$ sono entrambi connessi direttamente tra i nodi $A$ e $B$:
   $ V / I = R_(A B) = R_"TH" = R_1 parallel R_2 $

2. *Calcolo di $E_"TH"$ (con $E_1$ ed $E_2$ attivi a vuoto):*
   Lasciando aperti i morsetti $A$ e $B$ ($I = 0$ sul ramo d'uscita del circuito equivalente di Thevenin), per la LKT applicata all'equivalente di Thevenin vale:
   $ E_"TH" - R_"TH" dot 0 - V_(A B) = 0 quad arrow.r.double quad E_"TH" = V_(A B) $

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8em,
  align: center + horizon,
  [
    *Rete passivata ($R_"TH"$)*
    #include "figs/Cap2_MEC_handouts_appunti-fig18.typ"
  ],
  [
    *Rete attiva a vuoto ($V_(A B)$)*
    #include "figs/Cap2_MEC_handouts_appunti-fig19.typ"
  ],
  [
    *LKT a vuoto ($E_"TH" = V_(A B)$)*
    #include "figs/Cap2_MEC_handouts_appunti-fig20.typ"
  ]
)

#v(0.5em)
== Teorema di Norton

=== Circuito Equivalente e Ipotesi di Validità
In modo duale a quanto visto per il teorema di Thevenin, anche il teorema di Norton introduce un circuito equivalente ridotto per una generica rete lineare vista dai morsetti $A B$ (enunciato per reti resistive ma di validità generale):
- *Ipotesi:* rete lineare alla sinistra dei terminali $A B$ e nessun accoppiamento tra il carico e la rete lineare.
- *Carico:* nessuna ipotesi viene fatta sul carico collegato ai morsetti $A B$.

La rete lineare viene sostituita dal parallelo tra un generatore ideale di corrente $A_"eq" = A_"NOR"$ e un resistore equivalente $R_"eq" = R_"NOR"$.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig21.typ"
]

=== Determinazione Operativa dei Parametri $A_"NOR"$ e $R_"NOR"$

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + top, center + top),
  [
    *Generatore equivalente $A_"eq" = A_"NOR"$*
    #v(0.3em)
    #include "figs/Cap2_MEC_handouts_appunti-fig22.typ"
    #v(0.2em)
    #align(left)[Il valore del generatore ideale di corrente $A_"eq"$ ($A_"NOR"$) è pari alla corrente di corto circuito misurata ponendo i morsetti $A B$ in *corto circuito*.]
  ],
  [
    *Resistore equivalente $R_"eq" = R_"NOR" equiv R_"TH"$*
    #v(0.3em)
    #include "figs/Cap2_MEC_handouts_appunti-fig23.typ"
    #v(0.2em)
    #align(left)[La resistenza equivalente $R_"NOR"$ coincide esattamente con la resistenza di Thevenin ($R_"NOR" equiv R_"TH"$), ed è misurata ai morsetti $A B$ della rete lineare con tutti i generatori *passivati*.]
  ]
)

#v(0.5em)
== Teorema (o Corollario) di Millman

=== Ipotesi e Definizione
Il teorema (o corollario) di Millman si applica a reti elettriche caratterizzate da una topologia specifica (reti binodali):
- *Ipotesi:* rete lineare costituita da un qualsiasi numero di lati connessi in parallelo tra due soli nodi.
- *Definizione:* il teorema fornisce una soluzione in *forma chiusa* per il calcolo diretto della tensione tra i due nodi della rete, ricavata direttamente a partire dai valori dei componenti presenti nei singoli rami.

// ==========================================
// SLIDE 31 - 36
// ==========================================

,
  size: size,
  weight: weight,
  body
)

#let nota(body) = block(
  fill: luma(240),
  stroke: (left: 3pt + luma(120)),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  body
)

=== Teorema di Millman: Calcolo della Formula Risolutiva

Nell'ambito dei teoremi di rete (accanto al principio di sovrapposizione degli effetti e ai teoremi di Thévenin e Norton), il *Teorema di Millman* fornisce una formula risolutiva diretta per determinare la tensione $V_(A B)$ tra i due nodi principali $A$ e $B$ di una rete binodale costituita da più rami in parallelo.

Consideriamo la rete binodale riportata in figura, composta da quattro rami collegati in parallelo tra il nodo superiore $A$ e il nodo inferiore $B$:

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig24.typ"
]

Esprimiamo la corrente di ciascun ramo in funzione della tensione $V_(A B)$ applicando la legge di Kirchhoff delle tensioni (LKT) a ogni singolo ramo:

- *Ramo 1*:
  $ V_(A B) + R_1 i_1 - E_1 = 0 quad arrow.r.double quad i_1 = (E_1 - V_(A B)) / R_1 $
- *Ramo 2*:
  $ V_(A B) - R_2 i_2 + E_2 = 0 quad arrow.r.double quad i_2 = (E_2 + V_(A B)) / R_2 $
- *Ramo 3* (imposto dal generatore ideale di corrente):
  $ i_3 = A_3 $
- *Ramo 4*:
  $ V_(A B) - R_4 i_4 = 0 quad arrow.r.double quad i_4 = V_(A B) / R_4 $

=== Analisi Dettagliata dei Singoli Rami e Applicazione della LKC

Per visualizzare chiaramente i versi delle tensioni e delle correnti prima di applicare la legge di Kirchhoff delle correnti (LKC) al nodo superiore $A$ (evidenziato in verde), scomponiamo la rete nei suoi quattro rami elementari:

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig25.typ"
]

#v(0.5em)

#grid(
  columns: (1.2fr, 2fr),
  column-gutter: 1.5em,
  row-gutter: 1.2em,
  align: (center + horizon, left + horizon),

  // Schema Ramo 1
  include "figs/Cap2_MEC_handouts_appunti-fig26.typ",
  [
    *Ramo 1*:
    $ E_1 - R_1 I_1 - V_(A B) = 0 quad arrow.r.double quad I_1 = (E_1 - V_(A B)) / R_1 $
  ],

  // Schema Ramo 2
  include "figs/Cap2_MEC_handouts_appunti-fig27.typ",
  [
    *Ramo 2*:
    $ -E_2 + R_2 I_2 - V_(A B) = 0 quad arrow.r.double quad I_2 = (V_(A B) + E_2) / R_2 $
  ],

  // Schema Ramo 3
  include "figs/Cap2_MEC_handouts_appunti-fig28.typ",
  [
    *Ramo 3*:
    La corrente del terzo ramo è fissata dal generatore ideale di corrente $A_3$ (indipendentemente da $R_3$).
  ],

  // Schema Ramo 4
  include "figs/Cap2_MEC_handouts_appunti-fig29.typ",
  [
    *Ramo 4*:
    $ V_(A B) = R_4 I_4 quad arrow.r.double quad I_4 = V_(A B) / R_4 $
  ]
)

Scrivendo l'equazione LKC per il nodo superiore $A$ si ottiene:

$ I_1 - I_2 + A_3 - I_4 = 0 $

Sostituendo le espressioni delle correnti di ramo appena ricavate:

$ (E_1 - V_(A B)) / R_1 - (V_(A B) + E_2) / R_2 + A_3 - V_(A B) / R_4 = 0 $

Separando i termini noti da quelli contenenti l'incognita $V_(A B)$ e raccogliendo quest'ultima a fattor comune:

$ E_1 / R_1 - V_(A B) / R_1 - V_(A B) / R_2 - E_2 / R_2 + A_3 - V_(A B) / R_4 = 0 $

$ E_1 / R_1 - E_2 / R_2 + A_3 - V_(A B) (1 / R_1 + 1 / R_2 + 1 / R_4) = 0 $

$ V_(A B) (1 / R_1 + 1 / R_2 + 1 / R_4) = E_1 / R_1 - E_2 / R_2 + A_3 $

Si giunge così alla *formula risolutiva di Millman*:

$ V_(A B) = (display(+ E_1 / R_1 - E_2 / R_2 + A_3)) / (display(1 / R_1 + 1 / R_2 + 1 / R_4)) $

#nota[
  *Regole pratiche per la scrittura diretta della formula di Millman:*
  - *Numeratore*:
    - Somma pesata dei generatori di tensione divisi per le rispettive resistenze in serie, presa con segno $+$ se la polarità del generatore di tensione "segue" (ha la stessa polarità di) quella della tensione $V_(A B)$, e con segno $-$ viceversa.
    - Somma di tutti i generatori di corrente, presa con segno $+$ se il verso della corrente del generatore "segue" la direzione della tensione $V_(A B)$ (ossia è diretto verso il nodo $A$), e con segno $-$ viceversa.
  - *Denominatore*:
    - Somma degli inversi di tutte le resistenze dei rami in parallelo, *eccetto* quelle poste in serie ai generatori ideali di corrente (come $R_3$ nel ramo 3).
]

=== Esempio: Calcolo della $V_(A B)$ Equivalente di Thévenin

Come esempio applicativo, determiniamo la tensione a vuoto $V_(A B)$ (tensione equivalente di Thévenin) tra i morsetti $A$ e $B$ del seguente circuito a due rami attivi:

#grid(
  columns: (1.2fr, 1.3fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  include "figs/Cap2_MEC_handouts_appunti-fig30.typ",
  [
    Poiché entrambi i generatori di tensione $E_1$ ed $E_2$ hanno polarità concorde con il verso scelto per $V_(A B)$ (diretto da $B$ verso $A$), applicando il corollario di Millman si ottiene:

    $ V_(A B) = (display(+ E_1 / R_1 + E_2 / R_2)) / (display(1 / R_1 + 1 / R_2)) $
  ]
)

== Calcolo della Resistenza Equivalente da Diverse Coppie di Morsetti

Consideriamo ora una rete puramente resistiva a quattro morsetti ($A, B, C, D$) e calcoliamo la resistenza equivalente vista da due differenti porte, immaginando di collegare un generatore di prova ai morsetti di interesse e lasciando aperti gli altri due.

=== Resistenza Equivalente $R_(B D)$ vista dai morsetti $B$-$D$

Collegando il generatore ai morsetti di destra $B$ e $D$ (con i morsetti $A$ e $C$ aperti), le resistenze $R_1$, $R_4$ e $R_3$ sono attraversate dalla stessa corrente e risultano pertanto collegate in serie tra loro:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  include "figs/Cap2_MEC_handouts_appunti-fig31.typ",
  include "figs/Cap2_MEC_handouts_appunti-fig32.typ"
)

La resistenza serie $R_S$ vale:
$ R_S = R_1 + R_3 + R_4 $

Tale ramo equivalente $R_S$ risulta in parallelo a $R_2$, per cui la resistenza equivalente vista dai morsetti $B$-$D$ è:
$ R_(B D) = R_S parallel R_2 $

=== Resistenza Equivalente $R_(A C)$ vista dai morsetti $A$-$C$

Collegando invece il generatore ai morsetti di sinistra $A$ e $C$ (con i morsetti $B$ e $D$ lasciati aperti), sono le resistenze $R_1$, $R_2$ e $R_3$ a trovarsi in serie tra loro:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  include "figs/Cap2_MEC_handouts_appunti-fig33.typ",
  include "figs/Cap2_MEC_handouts_appunti-fig34.typ"
)

Ponendo:
$ R'_S = R_1 + R_2 + R_3 $

la resistenza equivalente vista dai morsetti $A$-$C$ è data dal parallelo tra $R_4$ e $R'_S$:
$ R_(A C) = R_4 parallel R'_S $

= Fenomeni transitori ed evoluzione nel tempo

== Dinamica dei circuiti ed equazioni differenziali (ODE)

Nello studio dei circuiti elettrici, il tempo rappresenta una dimensione fondamentale che distingue il comportamento delle reti puramente resistive da quello delle reti contenenti elementi dotati di memoria:

- Le *reti resistive* rispondono istantaneamente a qualsiasi ingresso applicato: la risposta in un dato istante è completamente indipendente da quella dell'istante precedente. Questo comportamento *adinamico* è dovuto alla natura puramente algebrica dell'equazione costitutiva del resistore, che lega tra loro variabili circuitali valutate nel medesimo istante:
  $ v(t) = R i(t) $

- Se il circuito contiene anche *condensatori* e *induttori*, il comportamento non è più adinamico. I termini derivativi $d / (d t)$ presenti nelle loro equazioni costitutive (adottando la convenzione degli utilizzatori):
  // VERIFICA: equazioni costitutive complete ricostruite dai frammenti OCR della Slide 3
  $ i_C (t) = C (d v_C (t)) / (d t), quad v_L (t) = L (d i_L (t)) / (d t) $
  risentono della velocità di variazione delle grandezze elettriche; di conseguenza, la risposta del circuito è *dinamica*.

L'insieme delle relazioni utilizzate per risolvere un circuito dinamico è identico a quello impiegato per le reti resistive (equazioni costitutive dei componenti unite alle leggi di Kirchhoff, LKC e LKT), ma il sistema finale risultante è costituito da *equazioni differenziali ordinarie* (*ODE*).

#nota[
Si può dimostrare che un circuito lineare tempo-invariante (LTI) dà sempre luogo a *equazioni differenziali ordinarie lineari a coefficienti costanti*. Tra le diverse classi di ODE, queste equazioni sono le uniche a possedere un metodo analitico standard di soluzione.
]

La soluzione generale di un'ODE lineare a coefficienti costanti si ottiene sommando due contributi distinti:
1. *Soluzione omogenea* (o *risposta naturale*), che dipende dalla struttura interna del circuito.
2. *Soluzione particolare* (o *risposta forzata*), legata alla forma degli ingressi applicati a regime.

=== Equazione differenziale generica del primo ordine

Consideriamo un circuito dinamico del primo ordine (contenente un solo elemento di accumulo energetico, condensatore o induttore), descritto nella generica grandezza circuitale $x(t)$ dal seguente problema di Cauchy a coefficienti costanti:

// VERIFICA: sistema differenziale e passaggi algebrici ricostruiti dalla struttura matematica standard della Slide 5
$ cases(
  tau (d x(t)) / (d t) + x(t) = x_infinity,
  x(0^+) = x_0
) $

dove $tau$ rappresenta la *costante di tempo* del circuito, $x_0$ il valore iniziale all'istante $t = 0^+$ e $x_infinity$ il valore a regime (per $t -> infinity$).

- *Soluzione omogenea*: risolve l'equazione omogenea associata $tau (d x_"om") / (d t) + x_"om" = 0$ ed è esprimibile nella forma esponenziale:
  $ x_"om" (t) = K e^(- t / tau) $

- *Soluzione particolare*: per un termine noto costante $x_infinity$, l'integrale particolare coincide con il valore di regime stazionario:
  $ x_p (t) = x_infinity $

- *Integrale complessivo*: sommando i due contributi e imponendo la condizione iniziale $x(0^+) = x_0$ (da cui si ricava la costante di integrazione $K = x_0 - x_infinity$), si ottiene l'espressione completa dell'evoluzione temporale:
  $ x(t) = x_"om" (t) + x_p (t) = (x_0 - x_infinity) e^(- t / tau) + x_infinity = x_0 e^(- t / tau) + x_infinity (1 - e^(- t / tau)) $

=== Durata del fenomeno transitorio

Teoricamente l'esponenziale $e^(- t / tau)$ si annulla solo per $t -> infinity$; tuttavia, dal punto di vista ingegneristico, dopo un intervallo di tempo pari a $4 tau div 5 tau$ la grandezza $x(t)$ ha praticamente raggiunto il valore di regime $x_infinity$ e il fenomeno transitorio si considera esaurito.

#grid(
  columns: (1fr, 1.6fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #table(
      columns: (auto, auto),
      align: (center, center),
      stroke: 0.5pt,
      table.header([*Tempo ($t$)*], [*Valore $x(t)$*]),
      [$0$], [$x_0$],
      [$4 tau$], [$approx x_infinity$ ($98 %$)],
      [$5 tau$], [$approx x_infinity$ ($99 %$)],
    )
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig35.typ"
  ]
)

A titolo di esempio, supponendo $x_0 = 0$, calcoliamo l'istante $t^*$ in cui la risposta raggiunge il $98 %$ del valore asintotico ($x(t^*) = 0.98 x_infinity$):
// VERIFICA: passaggi algebrici con logaritmo naturale dedotti dalla Slide 6
$ 0.98 x_infinity = x_infinity (1 - e^(- t^* / tau)) arrow.r.double e^(- t^* / tau) = 0.02 arrow.r.double t^* = - tau ln(0.02) approx 3.91 tau approx 4 tau $

== Circuiti con interruttori

Un ingresso variabile nel tempo a gradino può essere realizzato connettendo un generatore costante (di tensione o di corrente) al resto della rete mediante un *interruttore*.

- Un *interruttore* è un componente ideale a due terminali che commuta istantaneamente tra lo stato di *circuito aperto* ($i = 0$) e quello di *corto circuito* ($v = 0$).
- Convenzionalmente, l'istante di manovra del interruttore viene assunto come origine dei tempi ($t = 0$). Per distinguere le grandezze immediatamente prima e immediatamente dopo la commutazione, si introducono gli istanti $t = 0^-$ (istante che precede la manovra) e $t = 0^+$ (istante immediatamente successivo alla manovra).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig36.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig37.typ"
  ]
)

== Studio del circuito RC con interruttore

Consideriamo un circuito costituito da un resistore $R$ e da un condensatore $C$ connessi in parallelo, alimentati da un generatore ideale di corrente costante $A$ attraverso un interruttore $S$ posto in parallelo.
- l'interruttore $S$ è inizialmente *chiuso* e si *apre* all'istante $t = 0$.
- L'obiettivo dell'analisi è determinare l'andamento nel tempo della tensione $v = v(t)$ ai morsetti del condensatore $C$.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig38.typ"
]

Lo studio dell'evoluzione temporale si articola nell'analisi di due configurazioni circuitali distinte: una valida per $t < 0$ e una valida per $t > 0$ (esattamente in $t = 0$ lo stato del interruttore non è definito in quanto istante di commutazione).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    *Configurazione per $t < 0$ (interruttore chiuso)*
    #v(0.5em)
    #scale(x: 85%, y: 85%, reflow: true)[
      #include "figs/Cap2_MEC_handouts_appunti-fig39.typ"
    ]
  ],
  [
    *Configurazione per $t > 0$ (interruttore aperto)*
    #v(0.5em)
    #scale(x: 85%, y: 85%, reflow: true)[
      #include "figs/Cap2_MEC_handouts_appunti-fig40.typ"
    ]
  ]
)

=== Soluzione per $t < 0$

Per $t < 0$ il interruttore $S$ è chiuso e cortocircuita il generatore di corrente $A$. Di conseguenza:
- La tensione ai capi del parallelo costituito da $R$ e $C$ è identicamente nulla ($i_R = 0$, $i_C = 0$) e l'intera corrente $A$ scorre nel ramo di corto circuito ($i_S = A$).
- In tutto il semi-asse temporale negativo vale pertanto:
  $ v(t) = 0 quad "per" t < 0 $

=== Soluzione per $t > 0$

Per $t > 0$ il interruttore $S$ è aperto ($i_S = 0$); pertanto la corrente impressa $A$ deve fluire interamente attraverso il parallelo di $R$ e $C$. Le equazioni risolutive si scrivono combinando le leggi di Kirchhoff con le relazioni costitutive dei bipoli:

- *Equazioni costitutive*:
  $ v_R = R i_R, quad i_C = C (d v) / (d t) $

- *Leggi di Kirchhoff* (LKT alla maglia in parallelo e LKC al nodo superiore):
  $ v_R = v, quad A = i_R + i_C $

Poiché $R$ e $C$ sono connessi in parallelo, esprimiamo la corrente nel resistore come $i_R = v / R$ e sostituiamo le relazioni costitutive nella LKC:

$ A = i_R + i_C arrow.r.double C (d v) / (d t) + v / R = A $

Moltiplicando ambo i membri per la resistenza $R$, si ottiene l'equazione differenziale risolutiva nella sola incognita $v(t)$:

$ R C (d v(t)) / (d t) + v(t) = R A $

#nota[
L'equazione ottenuta è una *ODE del primo ordine lineare a coefficienti costanti*. Questa proprietà è generale per tutti i circuiti lineari tempo-invarianti (LTI) poiché:
- *Linearità*: le leggi di Kirchhoff sono equazioni lineari e, in presenza di componenti LTI, anche le equazioni costitutive dei bipoli sono lineari.
- *Coefficienti costanti*: i coefficienti dell'ODE sono combinazioni algebriche dei parametri caratteristici dei componenti ($R$, $C$) e risultano pertanto costanti nel tempo.
]

=== Condizioni iniziali e integrale complessivo

Per determinare in modo univoco la soluzione $v(t)$ dell'equazione differenziale per $t > 0$, è necessario fissare una condizione iniziale. Poiché la nuova configurazione circuitale nasce all'istante di apertura del interruttore, lo stato del condensatore deve essere noto in $t = 0^+$.

#nota[
*Continuità della tensione nel condensatore*: la tensione $v(t)$ ai capi di un condensatore è una *variabile di stato* (legata all'energia elettrostatica immagazzinata $W_C = 1 / 2 C v^2$) e non può subire discontinuità a gradino in presenza di correnti finite. Per continuità, essa mantiene all'istante $t = 0^+$ il medesimo valore che possedeva in $t = 0^-$ prima della manovra del interruttore:
$ v(0^+) = v(0^-) = V_0 $
Nel circuito in esame, essendo il condensatore scarico per $t < 0$, risulta $V_0 = v(0^+) = v(0^-) = 0$.
]

Applicando la formula risolutiva generale delle ODE del primo ordine a coefficienti costanti, l'integrale complessivo per $t >= 0$ assume la forma:

$ v(t) = V_infinity + (V_0 - V_infinity) e^(- t / tau) $

dove i parametri caratteristici del transitorio sono:
- $V_infinity = R A$: valore della tensione a regime (per $t -> infinity$, quando il condensatore è carico e si comporta come un circuito aperto, $i_C = 0$);
- $V_0 = v(0^+)$: condizione iniziale nota della variabile di stato;
- $tau = R C$: costante di tempo del circuito $R C$ (espressa in secondi, $[Omega dot "F"] = ["s"]$).

Nel caso specifico in cui il condensatore sia inizialmente scarico ($V_0 = 0$), la risposta si riduce a:
$ v(t) = R A (1 - e^(- t / (R C))) quad "per" t >= 0 $

// ==========================================
// SLIDE 16 - 30
// ==========================================

== Carica del Condensatore nel Circuito RC Parallelo

Il procedimento analizzato per il circuito costituito da un generatore ideale di corrente $A$ in parallelo a un resistore $R$ e a un condensatore $C$ (inizialmente scarico) prende il nome di *carica del condensatore*. La quantità:

$ tau = R C $

rappresenta la *costante di tempo* del circuito ohmico-capacitivo (misurata in secondi, $"s"$).

Supponendo il condensatore inizialmente scarico, per cui $v(0^+) = v(0^-) = 0$, l'espressione analitica della tensione ai capi del condensatore per $t >= 0$ è:

$ v(t) = R A (1 - e^(-t / tau)) $

L'andamento temporale di $v(t)$ mostra come la tensione cresca esponenzialmente tendendo al valore asintotico di regime $v_infinity = R A$. Dal punto di vista ingegneristico, il transitorio si considera esaurito dopo un intervallo di tempo pari a circa $5 tau$, istante in cui la tensione ha raggiunto oltre il $99%$ del proprio valore finale:

#grid(
  columns: (1fr, 1.3fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #table(
      columns: 2,
      align: (center, center),
      table.header([*Costanti di tempo ($t / tau$)*], [*Valore di $v(t) / (R A)$*]),
      table.hline(),
      [$0$], [$0$],
      [$1 tau$], [$approx 0.63$ ($63.2%$)],
      [$2 tau$], [$approx 0.86$ ($86.5%$)],
      [$3 tau$], [$approx 0.95$ ($95.0%$)],
      [$4 tau$], [$approx 0.98$ ($98.2%$)],
      [$5 tau$], [$approx 0.99$ ($99.3%$)],
    )
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig41.typ"
  ]
)

=== Andamento delle Correnti di Ramo e Significato Fisico

Nota la tensione $v(t)$ ai capi del parallelo, è possibile ricavare la corrente nel condensatore $i_C(t)$ mediante l'equazione costitutiva del bipolo capacitivo:

$ i_C(t) = C ("d"v(t)) / ("d"t) = C ("d") / ("d"t) [R A (1 - e^(-t / tau))] = R C A (- e^(-t / tau)) (- 1 / (R C)) = A e^(-t / tau) $ // VERIFICA: dedotto dall'equazione

Analogamente, la corrente nel resistore $i_R(t)$ si ottiene applicando la legge di Ohm (oppure per la Legge di Kirchhoff delle Correnti al nodo superiore, essendo $A = i_C(t) + i_R(t)$):

$ i_R(t) = v(t) / R = (R A (1 - e^(-t / tau))) / R = A (1 - e^(-t / tau)) $ // VERIFICA: dedotto dall'equazione

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon, center + horizon),
  [
    #scale(x: 85%, y: 85%, reflow: true)[
      #include "figs/Cap2_MEC_handouts_appunti-fig42.typ"
    ]
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig43.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig44.typ"
  ]
)

#nota[
  *Comportamento limite del condensatore a $t = 0^+$ e a regime ($t -> infinity$):*
  - Se il condensatore parte *inizialmente scarico*, nell'istante $t = 0^+$ in cui l'interruttore commuta la continuità della variabile di stato impone $v(0^+) = v(0^-) = 0$. Di conseguenza, in $t = 0^+$ il condensatore scarico *si comporta come un cortocircuito*: tutta la corrente del generatore attraversa il condensatore ($i_C(0^+) = A$), mentre nel resistore non circola corrente ($i_R(0^+) = 0$).
  - Esaurito il transitorio ($t >= 5 tau$), la tensione raggiunge il valore costante $v_infinity = R A$: la corrente nel condensatore si annulla ($i_C(infinity) = 0$) e tutta la corrente $A$ fluisce nel resistore ($i_R(infinity) = A$). A regime stazionario il condensatore *si comporta come un circuito aperto*.
]

== Circuito RL (Circuito Ohmico-Induttivo)

Si consideri ora un circuito ohmico-induttivo ($R L$ serie), in cui un induttore di induttanza $L$ è alimentato da una sorgente ideale di tensione costante $E$ collegata in serie a un resistore di resistenza $R$ attraverso un interruttore $S$ che si chiude all'istante $t = 0$.

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig45.typ"
  ],
  [
    Le relazioni costitutive dei bipoli passivi (adottando la convenzione degli utilizzatori) sono:
    $ v_R(t) = R i(t) $
    $ v_L(t) = L ("d"i(t)) / ("d"t) $
  ]
)

Analizziamo gli istanti prima e dopo la manovra dell'interruttore:
- *Per $t < 0$*: il interruttore $S$ è aperto, pertanto il circuito è interrotto e, a parte la tensione $E$ del generatore ideale, tutte le variabili di rete sono identicamente nulle ($i(t) = 0$, $v_R(t) = 0$, $v_L(t) = 0$).
- *Per $t > 0$*: il interruttore $S$ si chiude e la corrente $i(t)$ può cominciare a fluire nell'unica maglia del circuito.
- La corrente $i(t)$ che attraversa l'induttore costituisce la *variabile di stato* del circuito (essendo legata all'energia magnetica immagazzinata $W_L = 1/2 L i^2$) e pertanto gode della proprietà di continuità nell'istante di commutazione:

$ i(0^+) = i(0^-) = 0 $

=== Equazione Differenziale e Soluzione (Carica dell'Induttore)

Per $t > 0$, con l'interruttore $S$ chiuso, scrivendo la Legge di Kirchhoff delle Tensioni (LKT) lungo la maglia percorsa in senso orario si ottiene direttamente l'equazione differenziale ordinaria (ODE) risolutiva:

#grid(
  columns: (1fr, 1.2fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig46.typ"
  ],
  [
    $ E - v_R(t) - v_L(t) = 0 $
    Sostituendo le relazioni costitutive:
    $ E - R i(t) - L ("d"i(t)) / ("d"t) = 0 $
    Dividendo per $L$, si ricava la forma normale canonica:
    $ ("d"i) / ("d"t) + R / L i = E / L $ // VERIFICA: dedotto dall'equazione
  ]
)

Grazie alla continuità della corrente nell'induttore, il problema di Cauchy associato al transitorio per $t > 0$ risulta:

$ cases(
  ("d"i) / ("d"t) + R / L i = E / L,
  i(0^+) = i(0^-) = I_0
) $

L'integrale generale dell'ODE del primo ordine a coefficienti costanti si esprime come somma del contributo di regime e di quello transitorio:

$ i(t) = i_infinity + (i_0 - i_infinity) e^(-t / tau) $

dove i parametri caratteristici valgono:
- $i_infinity = E / R$: *valore a regime* stazionario per $t -> infinity$ (in regime continuo $"d"i / "d"t = 0$, quindi $v_L = 0$ e l'induttore equivale a un cortocircuito);
- $i_0 = i(0^+)$: *condizione iniziale* nota (nel caso di induttore inizialmente scarico, $i_0 = 0$);
- $tau = L / R$: *costante di tempo* del circuito ohmico-induttivo (misurata in secondi, $"s"$).

=== Analisi del Transitorio di Carica dell'Induttore ($i_0 = 0$)

Nel caso in cui l'induttore sia inizialmente scarico ($i(0^+) = 0$), il processo prende il nome di *carica dell'induttore* e la corrente evolve secondo la legge:

$ i(t) = E / R (1 - e^(-t / tau)) quad "per " t >= 0 $

#grid(
  columns: (1fr, 1.3fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #table(
      columns: 2,
      align: (center, center),
      table.header([*Costanti di tempo ($t / tau$)*], [*Valore di $i(t) / (E / R)$*]),
      table.hline(),
      [$0$], [$0$],
      [$1$], [$approx 0.63$],
      [$2$], [$approx 0.86$],
      [$3$], [$approx 0.95$],
      [$4$], [$approx 0.98$],
      [$5$], [$approx 0.99$],
    )
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig47.typ"
  ]
)

La tensione ai capi dell'induttore $v_L(t)$ per $t > 0$ si ottiene derivando la corrente $i(t)$:

$ v_L(t) = L ("d"i(t)) / ("d"t) = L ("d") / ("d"t) [E / R (1 - e^(-t / tau))] = L E / R (- e^(-t / tau)) (- 1 / (L / R)) = E e^(-t / tau) $ // VERIFICA: dedotto dall'equazione

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig48.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig49.typ"
  ]
)

#nota[
  *Comportamento dell'induttore nell'istante iniziale $t = 0^+$:*
  Se l'induttore è inizialmente scarico, per la continuità della corrente vale $i(0^+) = 0$. Di conseguenza, nell'istante $t = 0^+$ la caduta di tensione sul resistore è nulla ($v_R(0^+) = R i(0^+) = 0$) e tutta la tensione del generatore si localizza ai capi dell'induttore ($v_L(0^+) = E$). Pertanto, *un induttore inizialmente scarico si comporta in $t = 0^+$ come un circuito aperto*.
]

== Evoluzione Naturale del Circuito (Soluzione Omogenea)

La soluzione dell'equazione differenziale omogenea associata a un circuito dinamico del primo ordine non possiede soltanto un significato matematico, ma rappresenta fisicamente la *risposta libera* (o *evoluzione naturale*) del circuito quando *non sono applicati generatori indipendenti*.

Questa situazione può dare luogo a un'evoluzione temporale non banale del circuito solo se l'energia inizialmente immagazzinata nell'elemento dinamico all'istante $t = 0$ è diversa da zero. Nel caso di un condensatore carico alla tensione iniziale $v(0) = V_0$, l'energia elettrostatica inizialmente immagazzinata vale:

$ v(0) = V_0 quad arrow.r.double quad W_0 = 1 / 2 C V_0^2 $

#grid(
  columns: (1fr, 1.2fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig50.typ"
  ],
  [
    Alla chiusura del interruttore $S$ in $t = 0$, applicando la LKT alla maglia si ottiene:
    $ v_R(t) + v(t) = 0 $
    Poiché $i_R(t) = -i_C(t) = -C ("d"v) / ("d"t)$ (ovvero adottando i riferimenti indicati in figura con $v_R = R i_C$):
    $ R C ("d"v) / ("d"t) + v = 0 $
  ]
)

Unendo l'equazione differenziale omogenea alla condizione iniziale di continuità della tensione sul condensatore, il problema di Cauchy diventa:

$ cases(
  ("d"v) / ("d"t) + 1 / (R C) v = 0,
  v(0^+) = v(0^-) = V_0
) $

Poiché non vi sono sorgenti applicate per $t > 0$, il valore di regime forzato è nullo ($v_infinity = 0$). Applicando la formula risolutiva generale con $tau = R C$:

$ v(t) = v_infinity + (v_0 - v_infinity) e^(-t / tau) quad arrow.r.double quad v(t) = V_0 e^(-t / tau) quad "per " t >= 0 $

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig51.typ"
]

=== Bilancio Energetico nella Scarica del Condensatore

La corrente che circola nel circuito durante la scarica per $t > 0$ (presa positiva nel verso di scarica dal morsetto positivo del condensatore verso il resistore) vale:

$ i(t) = - C ("d"v(t)) / ("d"t) = - C V_0 (- 1 / (R C)) e^(-t / tau) = V_0 / R e^(-t / tau) $ // VERIFICA: dedotto dall'equazione

Integrando la potenza istantanea dissipata per effetto Joule sul resistore $p_R(t) = R i^2(t)$ sull'intero intervallo temporale $t in [0, +infinity)$:

$ W_R = integral_0^(+infinity) R i^2(t) "d"t = integral_0^(+infinity) R (V_0^2 / R^2 e^(- (2 t) / tau)) "d"t = V_0^2 / R [- tau / 2 e^(- (2 t) / tau)]_0^(+infinity) = V_0^2 / R (R C) / 2 = 1 / 2 C V_0^2 = W_0 $ // VERIFICA: dedotto dall'equazione

#nota[
  *Estinzione dell'evoluzione naturale:*
  Tutta l'energia elettrostatica $W_0 = 1/2 C V_0^2$ inizialmente immagazzinata nel condensatore viene integralmente dissipata in calore sulla resistenza $R$. Di conseguenza, l'evoluzione naturale di un circuito passivo reale si estingue completamente in un tempo pratico limitato (circa $5 tau$).

  Se un condensatore viene prima caricato tramite un generatore per una durata di $5 tau$ e successivamente lasciato scaricare, l'intero ciclo di carica e successivo mantenimento o scarica si sviluppa su scale temporali multiple di $5 tau$ (ad esempio da $5 tau$ a $10 tau$).
]

== Rendimento di Carica (Circuito RC Serie)

Consideriamo infine il processo di carica di un condensatore inizialmente scarico ($v(0^-) = 0$) alimentato da un generatore ideale di tensione costante $E$ attraverso un resistore in serie $R$, chiudendo l'interruttore in $t = 0$.

#grid(
  columns: (1.1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig52.typ"
  ],
  [
    Per la continuità della tensione sul condensatore:
    $ v(0^+) = v(0^-) = 0 $
    Scrivendo la LKT alla maglia per $t > 0$ ed esprimendo $v_R = R i = R C ("d"v) / ("d"t)$:
    $ E - v_R(t) - v(t) = 0 $
    $ E - R C ("d"v) / ("d"t) - v = 0 $
    $ R C ("d"v) / ("d"t) + v = E $
  ]
)

Il sistema differenziale che governa il circuito RC serie per $t > 0$ è pertanto:

$ cases(
  ("d"v) / ("d"t) + 1 / (R C) v = E / (R C),
  v(0^+) = 0
) $

Con costante di tempo $tau = R C$, valore a regime $v_infinity = E$ e condizione iniziale $v_0 = 0$, la tensione sul condensatore e la corrente di carica risultano:

$ v(t) = v_infinity + (v_0 - v_infinity) e^(-t / tau) = E (1 - e^(-t / tau)) $
$ i_C(t) = C ("d"v(t)) / ("d"t) = E / R e^(-t / tau) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig53.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig54.typ"
  ]
)

=== Calcolo dell'Energia e del Rendimento di Carica

Valutiamo il bilancio energetico complessivo dell'intero processo di carica da $t = 0$ a $t -> +infinity$:

1. *Potenza istantanea fornita dal generatore*:
   $ p_E(t) = E i_C(t) = E^2 / R e^(-t / tau) $ // VERIFICA: dedotto dall'equazione

2. *Energia totale erogata dal generatore nel processo di carica*:
   $ W_E = integral_0^(+infinity) p_E(t) "d"t = integral_0^(+infinity) E^2 / R e^(-t / tau) "d"t = E^2 / R [- tau e^(-t / tau)]_0^(+infinity) = E^2 / R (R C) = C E^2 $ // VERIFICA: dedotto dall'equazione

3. *Energia elettrostatica immagazzinata nel condensatore a fine carica*:
   $ W_C = 1 / 2 C (V_"fin"^2 - V_"in"^2) = 1 / 2 C (E^2 - 0) = 1 / 2 C E^2 $

4. *Rendimento energetico del processo di carica*:
   $ eta_"ene" = W_C / W_E = (1 / 2 C E^2) / (C E^2) = 1 / 2 = 50% $ // VERIFICA: dedotto dall'equazione

#nota[
  *Proprietà fondamentale del rendimento di carica:*
  Nel processo di carica di un condensatore mediante un generatore di tensione costante in serie a un resistore $R$, il rendimento energetico è sempre pari al $50%$, *indipendentemente dal valore della resistenza $R$*. La restante metà dell'energia erogata dal generatore ($W_R = W_E - W_C = 1/2 C E^2$) viene inevitabilmente dissipata per effetto Joule sul resistore durante il transitorio.
]

// ==========================================
// SLIDE 31 - 32
// ==========================================

= Generatore Reale di Tensione e Adattamento del Carico

== Caratteristica esterna del generatore reale di tensione

Un generatore reale di tensione è modellato mediante la connessione in serie di un generatore ideale di tensione di forza elettromotrice $E$ e di un resistore $R$, detto *resistenza interna* del generatore, che tiene conto delle cadute di tensione interne al dispositivo.

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig55.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig56.typ"
  ]
)

Adottando ai morsetti $"A"$ e $"B"$ la convenzione dei generatori (corrente $I$ uscente dal morsetto positivo della tensione $V$) e applicando la legge di Kirchhoff delle tensioni (LKT) alla maglia in senso orario, si ottiene l'equazione caratteristica del generatore reale:

$ E - R I - V = 0 quad arrow.r.double quad V = E - R I $

Nel piano $(I, V)$ la caratteristica esterna è rappresentata da una retta con pendenza negativa, individuata da due condizioni limite di funzionamento:
- *Funzionamento a vuoto (circuito aperto)*: quando i morsetti $"A"$ e $"B"$ sono aperti, la corrente erogata è nulla ($I = 0$) e la tensione a vuoto coincide con la forza elettromotrice: $V = E$.
- *Funzionamento in cortocircuito*: collegando direttamente tra loro i morsetti $"A"$ e $"B"$ tramite un filo ideale, la tensione ai morsetti si annulla ($V = 0$) e il generatore eroga la *corrente di cortocircuito* $I_"cc"$:

$ E - R I_"cc" = 0 quad arrow.r.double quad I_"cc" = E / R $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig57.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig58.typ"
  ]
)

#align(center)[
  #table(
    columns: 2,
    align: (center, center),
    table.header([$I$], [$V$]),
    table.hline(),
    [$0$], [$E$],
    [$I_"cc" = E / R$], [$0$],
  )
]

== Punto di lavoro con carico resistivo

Collegando ai morsetti $"A"$ e $"B"$ del generatore reale un resistore utilizzatore $R_u$, la corrente $I$ che circola nel circuito e la tensione $V$ ai morsetti sono determinate dal sistema costituito dalla caratteristica del generatore e dalla legge di Ohm sul carico:

$ cases(V = E - R I, V = R_u I) $

Uguagliando le due espressioni della tensione $V$, si ricava la corrente del punto di lavoro:

$ R_u I = E - R I quad arrow.r.double quad (R + R_u) I = E quad arrow.r.double quad I = E / (R + R_u) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig59.typ"
  ],
  [
    #include "figs/Cap2_MEC_handouts_appunti-fig60.typ"
  ]
)

== Trasferimento di potenza e condizione di carico adattato

La potenza elettrica $P_u$ trasferita dal generatore al resistore utilizzatore $R_u$ è data da:

$ P_u = R_u I^2 = R_u (E / (R + R_u))^2 $

Al variare della resistenza di carico $R_u$ (mantenendo fissati $E$ ed $R$), si osserva che:
- per $R_u = 0$ (cortocircuito), si ha $P_u = 0$;
- per $R_u >> R$ (tendente al circuito aperto), la corrente tende a zero e la potenza $P_u$ tende nuovamente a zero.

#align(center)[
  #include "figs/Cap2_MEC_handouts_appunti-fig61.typ"
]

Per determinare il valore di $R_u$ che rende massima la potenza trasferita al carico, si calcola la derivata di $P_u$ rispetto a $R_u$ e la si pone uguale a zero:

$ (d P_u) / (d R_u) = (E^2 (R + R_u)^2 - R_u E^2 (2 R + 2 R_u)) / (R + R_u)^4 = 0 $

Sviluppando il binomio al quadrato $(R + R_u)^2 = R^2 + 2 R R_u + R_u^2$ al numeratore, si ottiene:

$ (E^2 R^2 + 2 E^2 R R_u + E^2 R_u^2 - 2 E^2 R R_u - 2 E^2 R_u^2) / (R + R_u)^4 = (E^2 R^2 - E^2 R_u^2) / (R + R_u)^4 = 0 $

Annullando il numeratore e dividendo per $E^2$, si ricava la condizione di massimo trasferimento di potenza:

$ R^2 - R_u^2 = 0 quad arrow.r.double quad R^2 = R_u^2 quad arrow.r.double quad R_u = R $

#nota[
  *Condizione di carico adattato*: un generatore reale di tensione trasferisce la massima potenza al carico quando la resistenza dell'utilizzatore eguaglia la resistenza interna del generatore ($R_u = R$).
]