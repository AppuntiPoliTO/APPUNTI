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
  font: ("Liberation Sans", "Arial", "Helvetica", "DejaVu Sans Mono", "Libertinus Serif"),
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

=== Bilancio delle equazioni e delle incognite

Come in ogni problema algebrico, la strategia risolutiva consiste nello scrivere un sistema di equazioni linearmente indipendenti in numero esattamente pari al numero delle incognite.

Considerando una rete elettrica costituita da $L$ lati e $N$ nodi, a ciascun lato sono associate due variabili (una tensione di lato e una corrente di lato); pertanto il numero complessivo di incognite è pari a:
$ N_"incognite" = 2 L $

Il sistema risolutivo di $2 L$ equazioni linearmente indipendenti viene costruito combinando le equazioni costitutive e le leggi di Kirchhoff secondo la seguente ripartizione:
1. *Equazioni costitutive ($L$ equazioni)*: scrivendo la relazione caratteristica tensione-corrente per ciascuno degli $L$ lati, si introducono $L$ vincoli. Sottreando tali vincoli dal totale delle incognite ($2 L - L = L$), rimangono $L$ variabili ancora libere.
2. *Leggi di Kirchhoff alle correnti — LKC ($N - 1$ equazioni)*: le restanti $L$ variabili vengono vincolate mediante le equazioni topologiche (che sono equazioni algebriche lineari). Si dimostra che in una rete con $N$ nodi è possibile scrivere $N - 1$ equazioni LKC linearmente indipendenti.
3. *Leggi di Kirchhoff alle tensioni — LKT ($L - N + 1$ equazioni)*: le ulteriori variabili ancora da determinare dopo l'applicazione delle LKC sono in numero pari a $L - (N - 1) = L - N + 1$, e vengono vincolate scrivendo altrettante equazioni LKT indipendenti sulle maglie della rete.

=== Equazioni costitutive di lato e di lato composto

L'equazione costitutiva esprime il legame funzionale $V = f(I)$ tra la tensione ai capi di un lato e la corrente che lo attraversa. Tale relazione può essere scritta non solo per un singolo bipolo elementare, ma anche per un *lato composto* (ovvero una combinazione in serie o in parallelo di più bipoli compresa tra due nodi della rete), riducendo così il numero complessivo di incognite.

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
    #zap.circuit({
      import zap.cetz.draw: *
      
      
      set-style(resistor: (variant: "ieee"))

      line((-0.3, 0.4), (0, 0))
      line((-0.3, -0.4), (0, 0))
      line((5.4, 0), (5.7, 0.4))
      line((5.4, 0), (5.7, -0.4))

      resistor("r1", (0, 0), (1.8, 0), label: (content: $R_1$, anchor: "north", distance: 4pt), n: "o-")
      resistor("r2", (1.8, 0), (3.6, 0), label: (content: $R_2$, anchor: "north", distance: 4pt))
      resistor("r3", (3.6, 0), (5.4, 0), label: (content: $R_3$, anchor: "north", distance: 4pt), n: "-o")

      line((0.15, 0), (0.55, 0), mark: (end: "stealth", fill: black, scale: 0.8))
      content((0.25, 0.45), $I$)

      bezier((5.1, -0.45), (0.3, -0.45), (2.7, -1.1), mark: (end: "stealth", fill: black))
      content((2.7, -1.1), $V$)
    })
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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(zap: (variant: "iec"))

      line((-0.3, 0.4), (0, 0))
      line((-0.3, -0.4), (0, 0))
      line((5.4, 0), (5.7, 0.4))
      line((5.4, 0), (5.7, -0.4))

      vsource("e1", (0, 0), (1.8, 0), label: (content: $E_1$, anchor: "north", distance: 5pt), n: "o-")
      vsource("e2", (1.8, 0), (3.6, 0), label: (content: $E_2$, anchor: "north", distance: 5pt))
      vsource("e3", (3.6, 0), (5.4, 0), label: (content: $E_3$, anchor: "north", distance: 5pt), n: "-o")

      content((1.35, -0.45), sans("+", size: 10pt, weight: "bold"))
      content((3.15, -0.45), sans("+", size: 10pt, weight: "bold"))
      content((4.05, -0.45), sans("+", size: 10pt, weight: "bold"))

      line((0.15, 0), (0.5, 0), mark: (end: "stealth", fill: black, scale: 0.8))
      content((0.3, 0.35), $I$)

      bezier((5.1, -0.65), (0.3, -0.65), (2.7, -1.3), mark: (end: "stealth", fill: black))
      content((2.7, -1.3), $V$)
    })
  ]
)

#v(0.5em)

*Caso c) Lato attivo serie (generatore di tensione + resistore):* \
Facendo riferimento allo schema del lato attivo serie riportato al punto 1 seguente, percorrendo il ramo e applicando la LKT si ha:
$ -V - R_k I + E_k = 0 arrow.r.double V = E_k - R_k I $

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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

      vsource("ek", (0, 0), (3.0, 0), label: (content: $E_k$, anchor: "north", distance: 6pt), n: "o-")
      resistor("rk", (3.0, 0), (6.0, 0), label: (content: $R_k$, anchor: "north", distance: 6pt), n: "-o")

      content((0.85, 0.38), sans("+", size: 12pt, weight: "bold"))

      // Freccia di corrente Ik staccata sopra il filo
      line((3.3, 0.25), (2.5, 0.25), mark: (end: "stealth", fill: black))
      content((2.9, 0.65), $I_k$)

      // Freccia di tensione Vk curva sotto
      bezier((5.7, -0.6), (0.3, -0.6), (3.0, -1.35), mark: (end: "stealth", fill: black))
      content((3.0, -1.35), $V_k$)
    })
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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), isource: (variant: "iec"))

      // Terminali esterni e nodi di giunzione
      wire((0, 0), (1.2, 0), n: "o-*")
      resistor("rk", (1.2, 0), (4.8, 0), label: (content: $R_k$, anchor: "south", distance: 6pt))
      wire((4.8, 0), (6.0, 0), n: "*-o")

      // Ramo in parallelo con generatore di corrente Ak
      wire((1.2, 0), (1.2, 1.8))
      isource("ak", (1.2, 1.8), (4.8, 1.8))
      wire((4.8, 1.8), (4.8, 0))

      // Frecce di corrente Ik e Ak sui rami
      line((0.7, 0), (0.4, 0), mark: (end: "stealth", fill: black, scale: 0.9))
      content((0.6, 0.38), $I_k$)

      line((1.9, 1.8), (1.6, 1.8), mark: (end: "stealth", fill: black, scale: 0.9))
      content((1.8, 2.2), $A_k$)

      // Freccia di tensione Vk curva sotto
      bezier((5.7, -0.6), (0.3, -0.6), (3.0, -1.35), mark: (end: "stealth", fill: black))
      content((3.0, -1.35), $V_k$)
    })
  ]
)


== Esempio di applicazione del metodo algebrico (Rete resistiva)

Si consideri la rete resistiva mostrata in figura, caratterizzata da $N = 2$ nodi (indicati con #sans("A", weight: "bold") e #sans("B", weight: "bold")) e $L = 3$ lati.

#align(center)[
  #zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Nodi principali A e B
    node("A", (3.2, 4.4), label: (content: sans("A", size: 12pt), anchor: "north", distance: 5pt))
    node("B", (3.2, 0), label: (content: sans("B", size: 12pt), anchor: "south", distance: 5pt))

    // Fili orizzontali superiori e inferiori
    wire((0, 4.4), (6.4, 4.4))
    wire((0, 0), (6.4, 0))

    // Lato 1 (sinistra)
    vsource("e1", (0, 0), (0, 2.2))
    resistor("r1", (0, 2.2), (0, 4.4), label: (content: $R_1$, anchor: "south", distance: 6pt))
    content((-0.6, 1.75), $E_1$)
    content((-0.25, 1.8), sans("+", size: 11pt, weight: "bold"))
    line((0.2, 1.7), (0.2, 2.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((0.55, 2.0), $I_1$)

    // Lato 3 (centrale)
    wire((3.2, 0), (3.2, 2.2))
    resistor("r3", (3.2, 2.2), (3.2, 4.4), label: (content: $R_3$, anchor: "south", distance: 6pt))
    line((3.0, 2.55), (3.0, 1.9), mark: (end: "stealth", fill: black, scale: 0.8))
    content((2.65, 2.25), $I_3$)

    // Lato 2 (destra)
    vsource("e2", (6.4, 0), (6.4, 2.2))
    resistor("r2", (6.4, 2.2), (6.4, 4.4), label: (content: $R_2$, anchor: "south", distance: 6pt))
    content((7.15, 1.3), $E_2$)
    content((6.05, 1.8), sans("+", size: 11pt, weight: "bold"))
    line((6.6, 1.7), (6.6, 2.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((6.95, 2.0), $I_2$)

    // Maglia 1 e Maglia 2 (percorsi tratteggiati)
    rect((0.85, 0.35), (2.35, 2.9), radius: 0.45, stroke: (dash: "dashed", thickness: 0.6pt))
    line((1.75, 0.35), (1.35, 0.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((1.6, 1.5), sans("MAGLIA 1", size: 9.5pt))

    rect((4.0, 0.35), (5.65, 2.9), radius: 0.45, stroke: (dash: "dashed", thickness: 0.6pt))
    line((4.95, 0.35), (4.55, 0.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((4.82, 1.5), sans("MAGLIA 2", size: 9.5pt))

    // Frecce di tensione V1, V3, V2
    bezier((-0.9, 0.1), (-0.9, 4.3), (-1.35, 2.2), mark: (end: "stealth", fill: black))
    content((-1.5, 2.2), $V_1$)

    bezier((2.5, 0.1), (2.5, 4.3), (2.05, 2.2), mark: (end: "stealth", fill: black))
    content((1.95, 3.6), $V_3$)

    bezier((7.55, 0.1), (7.55, 4.3), (8.0, 2.2), mark: (end: "stealth", fill: black))
    content((8.2, 2.2), $V_2$)
  })
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
  #zap.circuit({
    
    import zap.cetz.draw: *

    // --- RIGA 1: Generatore di Tensione ---
    content((-2.3, 4.2), align(center)[_Generatore_ \ _Ideale di_ \ _Tensione_])
    vsource("e1", (0, 3.0), (0, 5.4), variant: "iec")
    content((-0.95, 4.2), text(size: 13pt)[$e(t)$])
    content((-0.3, 4.85), sans("+", size: 12pt, weight: "bold"))

    // Freccia nera spessa
    line((1.0, 4.2), (2.2, 4.2), stroke: 7pt + black, mark: (end: "triangle", fill: black, scale: 0.7))

    content((3.3, 4.2), text(size: 13pt)[$e(t) = 0$])
    wire((4.5, 3.0), (4.5, 5.4))
    content((5.8, 4.2), align(center)[_Corto_ \ _Circuito_])

    // --- RIGA 2: Generatore di Corrente ---
    content((-2.3, 1.2), align(center)[_Generatore_ \ _Ideale di_ \ _Corrente_])
    isource("a1", (0, 0.0), (0, 2.4), variant: "iec")
    line((0, 1.75), (0, 2.05), mark: (end: "stealth", fill: black, scale: 0.9))
    content((-0.95, 1.2), text(size: 13pt)[$a(t)$])

    // Freccia nera spessa
    line((1.0, 1.2), (2.2, 1.2), stroke: 7pt + black, mark: (end: "triangle", fill: black, scale: 0.7))

    content((3.3, 1.2), text(size: 13pt)[$a(t) = 0$])
    wire((4.5, 0.0), (4.5, 0.55))
    wire((4.5, 1.85), (4.5, 2.4))
    content((5.8, 1.2), align(center)[_Circuito_ \ _Aperto_])
  })
]

#v(0.5em)

== Applicazione del Teorema di Sovrapposizione

=== Scomposizione del Circuito
Facendo riferimento alla rete binodale analizzata in precedenza, alimentata dai due generatori ideali di tensione $E_1$ ed $E_2$, si vogliano determinare la corrente $i_3$ e la tensione $V_3$ sul ramo centrale contenente il resistore $R_3$.

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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
      scale(0.78)

      node("A", (3.5, 3.8), label: (content: sans("A", size: 10pt), anchor: "north", distance: 3pt))
      node("B", (3.5, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 3pt))

      // Ramo 1
      vsource("e1", (0, 0), (0, 1.8))
      content((-0.7, 1.0), $E_1$)
      content((-0.35, 1.5), sans("+", weight: "bold"))
      wire((0, 1.8), (0, 2.2))
      resistor("r1", (0, 2.2), (0, 3.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
      line((0.2, 1.6), (0.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
      content((0.55, 1.85), $I'_1$)
      bezier((-0.35, 3.5), (-0.35, 2.3), (-0.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
      content((-0.9, 2.9), $V'_1$)

      // Ramo 3
      wire((3.5, 0), (3.5, 1.2))
      resistor("r3", (3.5, 1.2), (3.5, 2.8))
      wire((3.5, 2.8), (3.5, 3.8))
      line((3.7, 3.6), (3.7, 3.0), mark: (end: "stealth", fill: black, scale: 0.6))
      content((4.1, 3.3), $I'_3$)
      bezier((3.15, 0.3), (3.15, 3.5), (2.9, 1.9), mark: (end: "stealth", fill: black, scale: 0.7))
      content((2.7, 3.0), $V'_3$)

      // Ramo 2 (E2 passivato -> corto circuito)
      wire((7, 0), (7, 2.2))
      resistor("r2", (7, 2.2), (7, 3.8), label: (content: $R_2$, anchor: "south", distance: 5pt))
      line((7.2, 1.6), (7.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
      content((7.6, 1.85), $I'_2$)
      bezier((6.65, 3.5), (6.65, 2.3), (6.35, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
      content((6.05, 2.9), $V'_2$)

      wire((0, 3.8), (7, 3.8))
      wire((0, 0), (7, 0))

      rect((0.9, 0.35), (2.5, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
      line((1.5, 2.4), (1.7, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
      content((1.7, 1.35), sans("MAGLIA 1", size: 7pt))

      rect((4.2, 0.35), (5.8, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
      line((4.8, 2.4), (5.0, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
      content((5.0, 1.35), sans("MAGLIA 2", size: 7pt))
    })
  ],
  [
    *2) Sottocircuito con $E_2$ attivo ($E_1 = 0$)*
    $ V_3^((E_2)) = V_3^((0, E_2)) $
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
      scale(0.78)

      node("A", (3.5, 3.8), label: (content: sans("A", size: 10pt), anchor: "north", distance: 3pt))
      node("B", (3.5, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 3pt))

      // Ramo 1 (E1 passivato -> corto circuito)
      wire((0, 0), (0, 2.2))
      resistor("r1", (0, 2.2), (0, 3.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
      line((-0.2, 1.6), (-0.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
      content((-0.6, 1.85), $I''_1$)
      bezier((-0.35, 3.5), (-0.35, 2.3), (-0.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
      content((-0.9, 2.9), $V''_1$)

      // Ramo 3
      wire((3.5, 0), (3.5, 1.2))
      resistor("r3", (3.5, 1.2), (3.5, 2.8))
      wire((3.5, 2.8), (3.5, 3.8))
      line((3.7, 3.6), (3.7, 3.0), mark: (end: "stealth", fill: black, scale: 0.6))
      content((4.15, 3.3), $I''_3$)
      bezier((3.15, 0.3), (3.15, 3.5), (2.9, 1.9), mark: (end: "stealth", fill: black, scale: 0.7))
      content((2.85, 3.0), $V''_3$)

      // Ramo 2 (E2 attivo)
      vsource("e2", (7, 0), (7, 1.8))
      content((7.75, 0.8), $E_2$)
      content((6.6, 1.5), sans("+", weight: "bold"))
      wire((7, 1.8), (7, 2.2))
      resistor("r2", (7, 2.2), (7, 3.8), label: (content: $R_2$, anchor: "south", distance: 5pt))
      line((7.2, 1.6), (7.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
      content((7.65, 1.85), $I''_2$)
      bezier((6.65, 3.5), (6.65, 2.3), (6.35, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
      content((6.0, 2.9), $V''_2$)

      wire((0, 3.8), (7, 3.8))
      wire((0, 0), (7, 0))

      rect((0.9, 0.35), (2.5, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
      line((1.5, 2.4), (1.7, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
      content((1.7, 1.35), sans("MAGLIA 1", size: 7pt))

      rect((4.2, 0.35), (5.8, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
      line((4.8, 2.4), (5.0, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
      content((5.0, 1.35), sans("MAGLIA 2", size: 7pt))
    })
  ]
)


=== Risoluzione del 1° Sottocircuito ($E_1$ attivo, $E_2$ passivato)
Con il solo generatore $E_1$ attivo, i resistori $R_2$ ed $R_3$ risultano connessi in parallelo tra i nodi $A$ e $B$. Si definisce la resistenza equivalente parallelo $R_p$:
$ R_p = R_2 parallel R_3 = (R_2 dot R_3) / (R_2 + R_3) $

#align(center)[
  #zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
    scale(0.85)

    // Schema 1: E1 attivo, R1, R3, R2
    node("A1", (2.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
    node("B1", (2.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
    vsource("e1a", (0, 0), (0, 1.6))
    content((-0.8, 0.8), $E_1$)
    content((0.35, 1.35), sans("+", weight: "bold"))
    resistor("r1a", (0, 1.6), (0, 3.2), label: (content: $R_1$, anchor: "west", distance: 4pt))
    resistor("r3a", (2.0, 0), (2.0, 3.2), label: (content: $R_3 med thin$, anchor: "west", distance: 4pt))
    resistor("r2a", (3.8, 0), (3.8, 3.2), label: (content: $R_2$, anchor: "west", distance: 4pt))
    wire((0, 3.2), (3.8, 3.2))
    wire((0, 0), (3.8, 0))
    line((1.65, 0.3), (1.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
    content((1.4, 3.65), $V_3^((E_1))$)

    // Schema 2: Riduzione a Rp
    node("A2", (7.8, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
    node("B2", (7.8, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
    vsource("e1b", (5.8, 0), (5.8, 1.6))
    content((5, 0.8), $E_1$)
    content((6.15, 1.35), sans("+", weight: "bold"))
    resistor("r1b", (5.8, 1.6), (5.8, 3.2), label: (content: $R_1$, anchor: "west", distance: 4pt))
    resistor("rpb", (7.8, 0.8), (7.8, 3.2), label: (content: $R_p$, anchor: "south", distance: 5pt))
    wire((7.8, 0), (7.8, 0.8))
    line((7.8, 1.1), (7.8, 0.5), mark: (end: "stealth", fill: black, scale: 0.7))
    content((8.3, 0.7), $I_p$)
    wire((5.8, 3.2), (7.8, 3.2))
    wire((5.8, 0), (7.8, 0))
    line((7.4, 0.3), (7.4, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
    content((7.15, 3.65), $V_3^((E_1))$)

    // Schema 3: Riduzione serie Rs = R1 + Rp
    node("A3", (10.5, 3.2))
    node("B3", (12.8, 0))
    vsource("e1c", (10.5, 0), (10.5, 1.8))
    content((9.7, 0.9), $E_1$)
    content((10.85, 1.5), sans("+", weight: "bold"))
    wire((10.5, 1.8), (10.5, 3.2))
    resistor("rsc", (10.5, 3.2), (12.8, 3.2), label: (content: $R_s$, anchor: "north", distance: 5pt))
    wire((12.8, 3.2), (12.8, 0))
    wire((10.5, 0), (12.8, 0))
    line((12.8, 2.3), (12.8, 1.6), mark: (end: "stealth", fill: black, scale: 0.7))
    content((13.35, 1.95), $I_p$)
    bezier((12.2, 2.85), (11.1, 2.85), (11.65, 2.65), mark: (end: "stealth", fill: black, scale: 0.6))
  })
]

La tensione cercata $V_3^((E_1))$ coincide con la caduta di tensione su $R_p$, ossia $V_3^((E_1)) = R_p I_p$. Riducendo ulteriormente in serie $R_1$ ed $R_p$ nella resistenza $R_s = R_1 + R_p$ e applicando la legge di Kirchhoff delle tensioni (LKT) all'unica maglia rimasta, si ricava:
$ E_1 - R_s I_p = 0 quad arrow.r.double quad I_p = E_1 / R_s $
Sostituendo $I_p$ nell'espressione di $V_3^((E_1))$ si ottiene la formula del partitore di tensione:
$ V_3^((E_1)) = R_p I_p = R_p dot E_1 / R_s = E_1 dot R_p / (R_1 + R_p) $

=== Risoluzione del 2° Sottocircuito ($E_2$ attivo, $E_1$ passivato)
Con il solo generatore $E_2$ attivo ($E_1$ sostituito da un corto circuito), i resistori $R_1$ ed $R_3$ risultano in parallelo tra i nodi $A$ e $B$:
$ R_(p 2) = R_1 parallel R_3 = (R_1 dot R_3) / (R_1 + R_3) $

#align(center)[
  #zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
    scale(0.85)

    // Schema 1: E1 passivato, R1, R3, R2, E2
    node("A1", (2.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
    node("B1", (2.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
    resistor("r1a", (0, 0), (0, 3.2), label: (content: $R_1$, anchor: "north", distance: 4pt))
    resistor("r3a", (2.0, 0), (2.0, 3.2), label: (content: $R_3$, anchor: "south", distance: 4pt))
    vsource("e2a", (4.0, 0), (4.0, 1.6))
    content((4.8, 0.8), $E_2$)
    content((4.4, 1.35), sans("+", weight: "bold"))
    resistor("r2a", (4.0, 1.6), (4.0, 3.2), label: (content: $R_2$, anchor: "south", distance: 4pt))
    wire((0, 3.2), (4.0, 3.2))
    wire((0, 0), (4.0, 0))
    line((1.65, 0.3), (1.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
    content((1.4, 3.65), $V_3^((E_2))$)

    // Schema 2: Rp2 in serie con R2 ed E2
    node("A2", (7.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
    node("B2", (7.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
    resistor("rp2", (7.0, 1.0), (7.0, 3.2), label: (content: $R_(p 2)$, anchor: "north", distance: 10pt))
    wire((7.0, 0), (7.0, 1.0))
    line((7.0, 1.2), (7.0, 0.6), mark: (end: "stealth", fill: black, scale: 0.7))
    content((7.55, 0.85), $I_(p 2)$)
    line((6.6, 0.3), (6.6, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
    content((6.5, 3.65), $V_3^((E_2))$)

    vsource("e2b", (9.2, 0), (9.2, 1.6))
    content((10.1, 0.8), $E_2$)
    content((9.55, 1.35), sans("+", weight: "bold"))
    line((9.7, 0.3), (9.7, 1.4), mark: (end: "stealth", fill: black, scale: 0.6))
    resistor("r2b", (9.2, 1.6), (9.2, 3.2), label: (content: $R_2$, anchor: "north", distance: 4pt))
    wire((7.0, 3.2), (9.2, 3.2))
    wire((7.0, 0), (9.2, 0))
  })
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
  #zap.circuit({
    
    import zap.cetz.draw: *

    // Blocco Rete Lineare a sinistra
    rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
    content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

    wire((2.6, 2.0), (4.0, 2.0))
    wire((2.6, 0.4), (4.0, 0.4))
    node("A1", (3.3, 2.0), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
    node("B1", (3.3, 0.4), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

    // Carico
    wire((4.0, 2.0), (4.0, 1.6))
    wire((4.0, 0.4), (4.0, 0.8))
    rect((3.82, 0.8), (4.18, 1.6), fill: luma(238), stroke: 0.8pt + black)

    // Freccia rossa di equivalenza
    line((5.0, 1.2), (6.1, 1.2), stroke: 5pt + red, mark: (end: "triangle", fill: red, scale: 0.7))

    // Circuito Equivalente di Thevenin a destra
    vsource("eth", (7.4, 0.2), (7.4, 1.6), variant: "iec")
    content((7.1, 1.55), sans("+", size: 10pt, weight: "bold"))
    content((6.55, 0.9), $E_"eq"$)
    content((6.55, 1.65), text(fill: red.darken(10%), weight: "bold")[$E_"TH"$])

    wire((7.4, 1.6), (7.4, 2.0))
    wire((7.4, 0.2), (10.8, 0.2))
    resistor("rth", (7.4, 2.0), (9.6, 2.0), variant: "ieee")
    content((8.5, 2.45), $R_"eq"$)
    content((8.5, 3.0), text(fill: red.darken(10%), weight: "bold")[$R_"TH"$])

    wire((9.6, 2.0), (10.8, 2.0))
    node("A2", (10.1, 2.0), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
    node("B2", (10.1, 0.2), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

    // Carico a destra
    wire((10.8, 2.0), (10.8, 1.5))
    wire((10.8, 0.2), (10.8, 0.7))
    rect((10.62, 0.7), (10.98, 1.5), fill: luma(238), stroke: 0.8pt + black)
  })
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
    #zap.circuit({
      
      import zap.cetz.draw: *

      rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
      content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

      wire((2.6, 2.0), (3.4, 2.0))
      wire((2.6, 0.4), (3.4, 0.4))
      circle((3.45, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
      circle((3.45, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
      content((3.4, 2.3), sans("A", size: 11pt))
      content((3.4, 0.7), sans("B", size: 11pt))

      bezier((3.8, 0.45), (3.8, 1.95), (4.1, 1.2), mark: (end: "stealth", fill: black, scale: 0.7))
      content((4.5, 1.2), $E_"eq"$)
    })
    #v(0.2em)
    #align(left)[Il valore del generatore ideale di tensione $E_"eq"$ ($E_"TH"$) è pari alla tensione a vuoto misurata ai morsetti $A B$ lasciati *aperti*.]
  ],
  [
    *Resistore equivalente $R_"eq" = R_"TH"$*
    #v(0.3em)
    #zap.circuit({
      
      import zap.cetz.draw: *

      rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
      content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt) \ #sans("Passivata", size: 11pt)])

      wire((2.6, 2.0), (3.4, 2.0))
      wire((2.6, 0.4), (3.4, 0.4))
      circle((3.45, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
      circle((3.45, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
      content((3.4, 2.3), sans("A", size: 11pt))
      content((3.4, 0.7), sans("B", size: 11pt))

      line((4.2, 1.2), (3.6, 1.2), mark: (end: "stealth", fill: black, scale: 0.7))
      content((5.1, 1.2), $R_"eq" = R_"TH"$)
    })
    #v(0.2em)
    #align(left)[La resistenza equivalente $R_"eq"$ ($R_"TH"$) è la resistenza vista dai morsetti $A B$ della rete lineare in cui *tutti i generatori indipendenti sono stati passivati*.]
  ]
)

=== Esempio di Calcolo di $R_"TH"$ ed $E_"TH"$ sulla Rete Binodale
Riprendendo la rete binodale precedente, si voglia determinare l'equivalente di Thevenin visto dai morsetti $A$ e $B$ a cui è collegato il resistore di carico $R_3$. Scollegando il ramo di carico $R_3$ ed evidenziando i terminali aperti $A$ e $B$ (come mostrato negli schemi seguenti):

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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
      scale(0.75)

      resistor("r1", (0, 0), (0, 3.0), label: (content: $R_1$, anchor: "east", distance: 4pt))
      resistor("r2", (4.0, 0), (4.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 4pt))
      wire((0, 3.0), (4.0, 3.0))
      wire((0, 0), (4.0, 0))

      wire((2.0, 3.0), (2.0, 2.3))
      wire((2.0, 0), (2.0, 0.7))
      vsource("vp", (2.0, 0.7), (2.0, 2.3), stroke: red.darken(10%))
      line((2.0, 2.0), (2.0, 2.3), stroke: red.darken(10%), mark: (end: "stealth", fill: red.darken(10%), scale: 0.6))
      content((2.6, 1.5), text(fill: red.darken(10%))[+$V$])
      content((2.6, 2.1), text(fill: red.darken(10%))[$I$])
      content((2.35, 2.55), sans("A", size: 9pt))
      content((2.35, 0.45), sans("B", size: 9pt))
    })
  ],
  [
    *Rete attiva a vuoto ($V_(A B)$)*
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
      scale(0.75)

      vsource("e1", (0, 0), (0, 1.5))
      content((-0.55, 0.75), $E_1quad $)
      content((0.3, 1.3), sans("+", size: 9pt, weight: "bold"))
      resistor("r1", (0, 1.5), (0, 3.0), label: (content: $R_1$, anchor: "east", distance: 4pt))

      vsource("e2", (4.0, 0), (4.0, 1.5))
      content((4.6, 0.75), $quad E_2$)
      content((4.3, 1.3), sans("+", size: 9pt, weight: "bold"))
      resistor("r2", (4.0, 1.5), (4.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 4pt))

      wire((0, 3.0), (4.0, 3.0))
      wire((0, 0), (4.0, 0))
      wire((2.0, 3.0), (2.0, 2.4))
      circle((2.0, 2.33), radius: 0.07, fill: white, stroke: 0.8pt + black)
      content((2.35, 2.33), sans("A", size: 9pt))
      wire((2.0, 0), (2.0, 0.6))
      circle((2.0, 0.67), radius: 0.07, fill: white, stroke: 0.8pt + black)
      content((2.35, 0.67), sans("B", size: 9pt))

      line((1.9, 0.85), (1.9, 2.15), stroke: red.darken(10%), mark: (end: "stealth", fill: red.darken(10%), scale: 0.7))
      content((2.5, 1.5), text(fill: red.darken(10%))[$V_(A B)$])
    })
  ],
  [
    *LKT a vuoto ($E_"TH" = V_(A B)$)*
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
      scale(0.75)

      vsource("eth", (0, 0), (0, 2.2))
      content((0.35, 1.8), sans("+", size: 9pt, weight: "bold"))
      line((-0.45, 0.4), (-0.45, 1.8), mark: (end: "stealth", fill: black, scale: 0.6))
      content((-1.0, 1.1), $E_"TH" quad$)
      wire((0, 2.2), (0, 3.0))
      resistor("rth", (0, 3.0), (2.4, 3.0), label: (content: $R_"TH"$, anchor: "north", distance: 5pt))
      wire((2.4, 3.0), (3.2, 3.0))
      line((2.4, 3.0), (2.8, 3.0), mark: (end: "stealth", fill: black, scale: 0.6))
      content((2.6, 3.45), $I = 0$)

      circle((3.27, 3.0), radius: 0.07, fill: white, stroke: 0.8pt + black)
      content((3.6, 3.2), sans("A", size: 9pt))
      wire((0, 0), (3.2, 0))
      circle((3.27, 0), radius: 0.07, fill: white, stroke: 0.8pt + black)
      content((3.6, -0.2), sans("B", size: 9pt))

      line((3.27, 0.25), (3.27, 2.75), mark: (end: "stealth", fill: black, scale: 0.7))
      content((3.95, 1.5), $V_(A B)$)
    })
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
  #zap.circuit({
    
    import zap.cetz.draw: *

    // Blocco Rete Lineare a sinistra
    rect((0, 0.2), (2.6, 2.6), fill: luma(238), stroke: 0.8pt + black)
    content((1.3, 1.4), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

    wire((2.6, 2.2), (4.0, 2.2))
    wire((2.6, 0.6), (4.0, 0.6))
    node("A1", (3.3, 2.2), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
    node("B1", (3.3, 0.6), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

    wire((4.0, 2.2), (4.0, 1.8))
    wire((4.0, 0.6), (4.0, 1.0))
    rect((3.82, 1.0), (4.18, 1.8), fill: luma(238), stroke: 0.8pt + black)

    // Freccia rossa
    line((4.9, 1.4), (6.0, 1.4), stroke: 5pt + red, mark: (end: "triangle", fill: red, scale: 0.7))

    // Circuito Equivalente di Norton a destra
    isource("anor", (7.2, 0), (7.2, 2.4), variant: "iec")
    wire((7.2, 2.4), (7.2, 2.8))
    line((7.2, 2.1), (7.2, 2.55), mark: (end: "stealth", fill: black, scale: 0.7))
    content((6.65, 2.3), $A_"NOR"$)

    resistor("rnor", (8.8, 0), (8.8, 2.8), variant: "ieee")
    content((9.45, 1.2), $R_"NOR"$)

    wire((7.2, 2.8), (11.2, 2.8))
    wire((7.2, 0), (11.2, 0))
    circle((9.8, 2.8), radius: 0.06, fill: white, stroke: 0.8pt + black)
    circle((9.8, 0), radius: 0.06, fill: white, stroke: 0.8pt + black)
    content((10.0, 3.15), sans("A", size: 11pt))
    content((10.0, -0.35), sans("B", size: 11pt))

    // Carico a destra
    wire((11.2, 2.8), (11.2, 1.8))
    wire((11.2, 0), (11.2, 1.0))
    rect((11.02, 1.0), (11.38, 1.8), fill: luma(238), stroke: 0.8pt + black)
  })
]

=== Determinazione Operativa dei Parametri $A_"NOR"$ e $R_"NOR"$

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    - *Generatore equivalente $A_"eq" = A_"NOR"$*: \
      Il valore del generatore ideale di corrente $A_"eq"$ ($A_"NOR"$) è pari alla corrente di corto circuito misurata ponendo i morsetti $A B$ in *corto circuito*.
    #v(0.5em)
    - *Resistore equivalente $R_"eq" = R_"NOR" equiv R_"TH"$*: \
      La resistenza equivalente $R_"NOR"$ coincide esattamente con la resistenza di Thevenin ($R_"NOR" equiv R_"TH"$), ed è misurata ai morsetti $A B$ della rete lineare con tutti i generatori *passivati* (come già illustrato per il teorema di Thevenin).
  ],
  [
    #zap.circuit({
      
      import zap.cetz.draw: *

      rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
      content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

      wire((2.6, 2.0), (4.0, 2.0))
      wire((2.6, 0.4), (4.0, 0.4))
      wire((4.0, 2.0), (4.0, 0.4))
      circle((3.3, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
      circle((3.3, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
      content((3.3, 2.3), sans("A", size: 11pt))
      content((3.3, 0.7), sans("B", size: 11pt))

      line((4.0, 1.4), (4.0, 1.0), mark: (end: "stealth", fill: black, scale: 0.7))
      content((4.95, 1.2), $quad A_"eq" = A_"NOR"$)
    })
  ]
)

#v(0.5em)

== Teorema (o Corollario) di Millman

=== Ipotesi e Definizione
Il teorema (o corollario) di Millman si applica a reti elettriche caratterizzate da una topologia specifica (reti binodali):
- *Ipotesi:* rete lineare costituita da un qualsiasi numero di lati connessi in parallelo tra due soli nodi.
- *Definizione:* il teorema fornisce una soluzione in *forma chiusa* per il calcolo diretto della tensione tra i due nodi della rete, ricavata direttamente a partire dai valori dei componenti presenti nei singoli rami.


=== Teorema di Millman: Calcolo della Formula Risolutiva

Nell'ambito dei teoremi di rete (accanto al principio di sovrapposizione degli effetti e ai teoremi di Thévenin e Norton), il *Teorema di Millman* fornisce una formula risolutiva diretta per determinare la tensione $V_(A B)$ tra i due nodi principali $A$ e $B$ di una rete binodale costituita da più rami in parallelo.

Consideriamo la rete binodale riportata in figura, composta da quattro rami collegati in parallelo tra il nodo superiore $A$ e il nodo inferiore $B$:

#align(center)[
  #zap.circuit({
    
    import zap.cetz.draw: *

    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"), isource: (variant: "iec"))

    // Conduttori orizzontali principali (Nodo A in alto, Nodo B in basso)
    wire((0, 4.8), (9.2, 4.8))
    wire((0, 0), (9.2, 0))

    // Ramo 1: Generatore di tensione E1 e resistore R1
    vsource("e1", (0, 0), (0, 2.2), label: (content: $E_1$, anchor: "east", distance: 11pt))
    content((-0.35, 1.85), sans("+", size: 12pt, weight: "bold"))
    resistor("r1", (0, 2.2), (0, 4.2), label: (content: $R_1$, anchor: "east", distance: 6pt))
    wire((0, 4.2), (0, 4.8))
    // Freccia corrente I1
    line((-0.2, 4.0), (-0.2, 4.7), mark: (end: "stealth", fill: black, scale: 0.8))
    content((-0.55, 4.35), $I_1$)
    // Arco tensione su R1
    bezier((0.35, 3.8), (0.35, 2.5), (0.7, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Ramo 2: Generatore di tensione E2 e resistore R2
    node("nB2", (2.5, 0))
    node("nA2", (2.5, 4.8))
    vsource("e2", (2.5, 0), (2.5, 2.2), label: (content: $E_2$, anchor: "east", distance: 11pt))
    content((2.15, 0.25), sans("+", size: 12pt, weight: "bold"))
    resistor("r2", (2.5, 2.2), (2.5, 4.2), label: (content: $R_2$, anchor: "east", distance: 6pt))
    wire((2.5, 4.2), (2.5, 4.8))
    // Freccia corrente I2
    line((2.3, 4.7), (2.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
    content((1.95, 4.35), $I_2$)
    // Arco tensione su R2
    bezier((2.85, 2.5), (2.85, 3.8), (3.2, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Ramo 3: Generatore di corrente A3 e resistore R3
    node("nB3", (5.0, 0))
    node("nA3", (5.0, 4.8))
    isource("a3", (5.0, 0), (5.0, 2.2), label: (content: $A_3$, anchor: "east", distance: 11pt))
    line((5.0, 1.8), (5.0, 2.15), mark: (end: "stealth", fill: black, scale: 0.9))
    resistor("r3", (5.0, 2.2), (5.0, 4.2), label: (content: $R_3$, anchor: "east", distance: 6pt))
    wire((5.0, 4.2), (5.0, 4.8))

    // Ramo 4: Resistore R4
    node("nB4", (7.5, 0))
    node("nA4", (7.5, 4.8))
    wire((7.5, 0), (7.5, 1.2))
    resistor("r4", (7.5, 1.2), (7.5, 3.6), label: (content: $R_4$, anchor: "south", distance: 5pt))
    wire((7.5, 3.6), (7.5, 4.8))
    // Freccia corrente I4
    line((7.3, 4.7), (7.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
    content((6.95, 4.35), $I_4$)
    // Arco tensione su R4
    bezier((7.1, 1.7), (7.1, 3.0), (6.75, 2.35), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Morsetti A e B e tensione V_AB
    node("A", (9.2, 4.8), label: (content: sans("A", size: 13pt), anchor: "south", distance: 5pt))
    node("B", (9.2, 0), label: (content: sans("B", size: 13pt), anchor: "south", distance: 5pt))
    bezier((9.5, 0.3), (9.5, 4.5), (10.1, 2.4), stroke: 0.7pt, mark: (end: "stealth", fill: black, scale: 0.9))
    content((10.5, 3.6), $V_(A B)$)
  })
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


Per visualizzare chiaramente i versi delle tensioni e delle correnti prima di applicare la legge di Kirchhoff delle correnti (LKC) al nodo superiore $A$, scomponiamo la rete nei suoi quattro rami elementari:

#grid(
  columns: (1.2fr, 2fr),
  column-gutter: 1.5em,
  row-gutter: 1.2em,
  align: (center + horizon, left + horizon),

  // Schema Ramo 1
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
    vsource("e1", (0, 0), (0, 1.8), label: (content: $E_1$, anchor: "west", distance: 5pt))
    content((-0.4, 1.5), sans("+", weight: "bold"))
    resistor("r1", (0, 1.8), (0, 3.5), label: (content: $R_1$, anchor: "west", distance: 5pt))
    wire((0, 3.5), (1.4, 3.5), n: "-o")
    wire((0, 0), (1.4, 0), n: "-o")
    content((1.4, 3.85), sans("A", weight: "bold"))
    content((1.4, -0.35), sans("B", weight: "bold"))
    // Frecce
    line((-0.6, 0.3), (-0.6, 1.5), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    line((-0.6, 3.2), (-0.6, 2.1), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    line((0.2, 3.5), (0.9, 3.5), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((0.5, 3.9), text(fill: rgb("#1b5e20"), $I_1$))
    bezier((1.6, 0.3), (1.6, 3.2), (1.9, 1.75), stroke: (paint: rgb("#1b5e20"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((2.3, 2.5), text(fill: rgb("#1b5e20"), $V_(A B)$))
    bezier((0.8, 2.2), (0.8, 1.4), (1.2, 1.8), stroke: (paint: orange, thickness: 1.2pt), mark: (end: "stealth", fill: orange))
  }),
  [
    *Ramo 1*:
    $ E_1 - R_1 I_1 - V_(A B) = 0 quad arrow.r.double quad I_1 = (E_1 - V_(A B)) / R_1 $
  ],

  // Schema Ramo 2
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
    vsource("e2", (0, 0), (0, 1.8), label: (content: $E_2$, anchor: "west", distance: 5pt))
    content((0.4, 0.3), sans("+", weight: "bold"))
    resistor("r2", (0, 1.8), (0, 3.5), label: (content: $R_2$, anchor: "east", distance: 5pt))
    wire((0, 3.5), (1.4, 3.5), n: "-o")
    wire((0, 0), (1.4, 0), n: "-o")
    // Frecce
    line((-0.8, 1.5), (-0.8, 0.3), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    line((-0.8, 2.1), (-0.8, 3.2), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    line((0.9, 3.5), (0.2, 3.5), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((0.5, 3.9), text(fill: rgb("#1b5e20"), $I_2$))
    bezier((1.6, 0.3), (1.6, 3.2), (1.9, 1.75), stroke: (paint: rgb("#1b5e20"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((2.3, 2.5), text(fill: rgb("#1b5e20"), $V_(A B)$))
    bezier((0.8, 2.2), (0.8, 1.4), (1.2, 1.8), stroke: (paint: orange, thickness: 1.2pt), mark: (end: "stealth", fill: orange))
  }),
  [
    *Ramo 2*:
    $ -E_2 + R_2 I_2 - V_(A B) = 0 quad arrow.r.double quad I_2 = (V_(A B) + E_2) / R_2 $
  ],

  // Schema Ramo 3
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), isource: (variant: "iec"))
    isource("a3", (0, 0), (0, 1.8), n: "o-")
    line((0, 1.4), (0, 1.9), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((0.6, 1.65), text(fill: rgb("#1b5e20"), $A_3$))
    resistor("r3", (0, 1.8), (0, 3.5), n: "-o")
  }),
  [
    *Ramo 3*:
    La corrente del terzo ramo è fissata dal generatore ideale di corrente $A_3$ (indipendentemente da $R_3$).
  ],

  // Schema Ramo 4
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"))
    resistor("r4", (0, 0), (0, 3.2), n: "o-o", label: (content: $R_4$, anchor: "west", distance: 5pt))
    content((0.4, 3.2), sans("A", weight: "bold"))
    content((0.4, 0), sans("B", weight: "bold"))
    line((0, 1.0), (0, 0.4), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((0.5, 0.7), text(fill: rgb("#1b5e20"), $I_4$))
    bezier((1.1, 0.3), (1.1, 2.9), (1.4, 1.6), stroke: (paint: rgb("#1b5e20"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
    content((1.8, 2.2), text(fill: rgb("#1b5e20"), $V_(A B)$))
  }),
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
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Fili orizzontali
    wire((0, 3.8), (4.4, 3.8))
    wire((0, 0), (4.4, 0))

    // Ramo sinistro (E1, R1)
    vsource("e1", (0, 0), (0, 2.0), label: (content: $E_1$, anchor: "east", distance: 6pt))
    content((0.35, 1.75), sans("+", weight: "bold"))
    line((0.6, 0.4), (0.6, 1.6), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    resistor("r1", (0, 2.0), (0, 3.8), label: (content: $R_1$, anchor: "east", distance: 6pt))

    // Ramo destro (E2, R2)
    vsource("e2", (4.4, 0), (4.4, 2.0), label: (content: $E_2 $, anchor: "west", distance: 6pt))
    content((4.75, 1.75), sans("+", weight: "bold"))
    line((3.8, 0.4), (3.8, 1.6), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    resistor("r2", (4.4, 2.0), (4.4, 3.8), label: (content: $R_2$, anchor: "west", distance: 6pt))

    // Morsetti centrali A e B
    wire((2.2, 3.8), (2.2, 3.0), n: "-o")
    content((2.6, 3.0), sans("A", weight: "bold"))
    wire((2.2, 0), (2.2, 0.8), n: "-o")
    content((2.6, 0.8), sans("B", weight: "bold"))

    // Freccia rossa V_AB
    line((2.1, 1.1), (2.1, 2.7), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
    content((2.7, 1.9), text(fill: red, $V_(A B)$))
  }),
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
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Morsetti A e C
    wire((0, 2.8), (0.8, 2.8), n: "o-")
    content((-0.35, 2.8), sans("A", weight: "bold"))
    wire((0, 0), (0.8, 0), n: "o-")
    content((-0.35, 0), sans("C", weight: "bold"))

    // Maglia resistiva
    resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "east", distance: 5pt))
    resistor("r1", (0.8, 2.8), (3.2, 2.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
    resistor("r3", (0.8, 0), (3.2, 0), label: (content: $R_3$, anchor: "north", distance: 5pt))
    resistor("r2", (3.2, 0), (3.2, 2.8), n: "*-*", label: (content: $R_2$, anchor: "west", distance: 5pt))

    // Morsetti B e D
    wire((3.2, 2.8), (4.0, 2.8), n: "-o")
    content((4.0, 3.25), sans("B", weight: "bold"))
    wire((3.2, 0), (4.0, 0), n: "-o")
    content((4.0, -0.45), sans("D", weight: "bold"))

    // Generatore di prova rosso tra B e D
    set-style(zap: (stroke: (paint: red, thickness: 1pt)))
    wire((4.0, 2.8), (5.2, 2.8))
    wire((4.0, 0), (5.2, 0))
    vsource("vp", (5.2, 0), (5.2, 2.8))
    content((5.65, 2.1), text(fill: red, sans("+", size: 12pt, weight: "bold")))
  }),
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"))

    wire((0, 0), (0, 2.8))
    resistor("rs", (0, 2.8), (2.6, 2.8), label: (content: $R_S$, anchor: "north", distance: 5pt))
    wire((0, 0), (2.6, 0))
    resistor("r2", (2.6, 0), (2.6, 2.8), label: (content: $R_2$, anchor: "west", distance: 5pt))
    wire((2.6, 2.8), (3.6, 2.8), n: "-o")
    wire((2.6, 0), (3.6, 0), n: "-o")
  })
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
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Generatore di prova rosso tra A e C
     {
      set-style(zap: (stroke: (paint: red, thickness: 1pt)))
      wire((-1.2, 2.8), (0, 2.8))
      wire((-1.2, 0), (0, 0))
      vsource("vp", (-1.2, 0), (-1.2, 2.8))
      content((-0.7, 2.0), text(fill: red, sans("+", size: 12pt, weight: "bold")))
    }

    // Morsetti A e C
    wire((0, 2.8), (0.8, 2.8), n: "o-")
    content((0, 3.25), sans("A", weight: "bold"))
    wire((0, 0), (0.8, 0), n: "o-")
    content((0, -0.45), sans("C", weight: "bold"))

    // Maglia resistiva
    resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "west", distance: 5pt))
    resistor("r1", (0.8, 2.8), (3.2, 2.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
    resistor("r3", (0.8, 0), (3.2, 0), label: (content: $R_3$, anchor: "north", distance: 5pt))
    resistor("r2", (3.2, 0), (3.2, 2.8), n: "*-*", label: (content: $R_2$, anchor: "west", distance: 5pt))

    // Morsetti B e D aperti
    wire((3.2, 2.8), (4.0, 2.8), n: "-o")
    content((4.0, 3.25), sans("B", weight: "bold"))
    wire((3.2, 0), (4.0, 0), n: "-o")
    content((4.0, -0.45), sans("D", weight: "bold"))
  }),
  zap.circuit({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Generatore di prova rosso tra A e C
    {
      set-style(zap: (stroke: (paint: red, thickness: 1pt)))
      wire((-1.2, 2.8), (0, 2.8))
      wire((-1.2, 0), (0, 0))
      vsource("vp", (-1.2, 0), (-1.2, 2.8))
      content((-0.7, 2.0), text(fill: red, sans("+", size: 12pt, weight: "bold")))
    }

    wire((0, 2.8), (0.8, 2.8), n: "o-")
    content((0, 3.25), sans("A", weight: "bold"))
    wire((0, 0), (0.8, 0), n: "o-")
    content((0, -0.45), sans("C", weight: "bold"))

    resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "west", distance: 5pt))
    line((0.8, 1.1), (0.8, 0.5), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))

    resistor("rs1", (0.8, 2.8), (3.2, 2.8), label: (content: $R'_S$, anchor: "north", distance: 5pt))
    wire((3.2, 2.8), (3.2, 0))
    line((3.0, 1.7), (3.0, 0.9), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
    wire((0.8, 0), (3.2, 0))
  })
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
    #canvas({
      import draw: *
      
      // Griglia di sfondo leggera
      for y in (0.6, 1.2, 1.8, 2.4) {
        line((0, y), (6.5, y), stroke: (paint: luma(220), thickness: 0.5pt))
      }
      
      // Assi cartesiani
      line((0, 0), (6.8, 0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
      content((7.1, 0), $t$)
      line((0, 0), (0, 3.1), mark: (end: "stealth", fill: black), stroke: 0.8pt)
      content((0, 3.4), $x$)
      
      // Linee tratteggiate per x_0 e x_inf
      line((0, 0.6), (1.2, 0.6), stroke: (dash: "dashed", thickness: 0.7pt))
      content((-0.4, 0.6), $x_0$)
      
      line((0, 2.4), (6.5, 2.4), stroke: (dash: "dashed", thickness: 0.7pt))
      content((-0.45, 2.4), $x_infinity$)
      
      // Etichette asse tempi (1 unità = 1 tau)
      content((1.2, -0.3), $tau$)
      content((2.4, -0.3), $2 tau$)
      content((3.6, -0.3), $3 tau$)
      content((4.8, -0.3), $4 tau$)
      content((6.0, -0.3), $5 tau$)
      
      // Tratteggi verticali a 4 tau e 5 tau
      line((4.8, 0), (4.8, 2.367), stroke: (dash: "dashed", thickness: 0.7pt))
      content((4.4, 1.2), sans("98%", size: 9pt))
      
      line((6.0, 0), (6.0, 2.388), stroke: (dash: "dashed", thickness: 0.7pt))
      content((6.45, 1.2), sans("99%", size: 9pt))
      
      // Curva esponenziale x(t) = x_0 + (x_inf - x_0)*(1 - e^(-t/tau))
      let pts = ()
      for i in range(0, 66) {
        let t_val = i * 0.1
        let tau_scale = 1.2
        let y_val = 0.6 + (2.4 - 0.6) * (1.0 - calc.exp(-t_val / tau_scale))
        pts.push((t_val, y_val))
      }
      line(..pts, stroke: (paint: red, thickness: 1.5pt))
      
      // Pallini sui punti a 4 tau e 5 tau
      circle((4.8, 2.367), radius: 1.5pt, fill: black)
      circle((6.0, 2.388), radius: 1.5pt, fill: black)
    })
  ]
)

A titolo di esempio, supponendo $x_0 = 0$, calcoliamo l'istante $t^*$ in cui la risposta raggiunge il $98 %$ del valore asintotico ($x(t^*) = 0.98 x_infinity$):
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
    #zap.circuit({
      
      import zap.cetz.draw: *
      
      vsource("e", (0, 0), (0, 2.8), variant: "iec", label: (content: $E$, anchor: "north", distance: 6pt))
      content((-0.25, 2.1), sans("+", weight: "bold"))
      
      wire((0, 2.8), (0.8, 2.8))
      // interruttore che si chiude a t = 0
      line((0.8, 2.8), (1.9, 3.2), stroke: 0.8pt)
      bezier((1.2, 3.3), (1.4, 2.65), (1.35, 3.0), mark: (end: "stealth", fill: black), stroke: 0.6pt)
      content((1.65, 2.25), $t = 0$)
      
      wire((1.9, 2.8), (2.7, 2.8))
      wire((0, 0), (2.7, 0))
      
      node("P", (2.7, 2.8), fill: false, label: (content: sans("P"), anchor: "south", distance: 4pt))
      node("Q", (2.7, 0), fill: false, label: (content: sans("Q"), anchor: "north", distance: 4pt))
      
      // Freccia di tensione tra Q e P
      bezier((2.9, 0.2), (2.9, 2.6), (3.3, 1.4), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    })
  ],
  [
    #canvas({
      import draw: *
      
      // Assi
      line((-1.2, 0), (3.5, 0), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((3.4, -0.35), $t$)
      line((0, -0.6), (0, 2.6), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((0.55, 2.5), $e(t)$)
      
      // Gradino di tensione e(t)
      line((-1.0, 0), (0, 0), stroke: 1.3pt)
      line((0, 1.5), (3.2, 1.5), stroke: 1.3pt)
      content((-0.3, 1.5), $E$)
      
      // Indicazione istanti 0^- e 0^+
      content((0, -0.45), $0$)
      line((-0.7, -0.2), (-0.15, -0.2), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((-0.5, -0.5), $0^-$)
      line((0.7, -0.2), (0.15, -0.2), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((0.5, -0.5), $0^+$)
    })
  ]
)

== Studio del circuito RC con interruttore

Consideriamo un circuito costituito da un resistore $R$ e da un condensatore $C$ connessi in parallelo, alimentati da un generatore ideale di corrente costante $A$ attraverso un interruttore $S$ posto in parallelo.
- l'interruttore $S$ è inizialmente *chiuso* e si *apre* all'istante $t = 0$.
- L'obiettivo dell'analisi è determinare l'andamento nel tempo della tensione $v = v(t)$ ai morsetti del condensatore $C$.

#align(center)[
  #zap.circuit({
    import zap: *
    import zap.cetz.draw: *

    set-style(resistor: (variant: "ieee"))

    // Coordinate griglia spaziosa
    let x1 = 0.0   // Ramo 1: Generatore A
    let x2 = 2.8   // Ramo 2: Interruttore S
    let x3 = 5.6   // Ramo 3: Resistore R
    let x4 = 8.2   // Ramo 4: Condensatore C
    let yB = 0.0   // Quota inferiore
    let yA = 3.4   // Quota superiore

    // --- Collegamenti orizzontali ---
    wire((x1, yA), (x4, yA))
    wire((x1, yB), (x4, yB))

    // --- Nodi di giunzione ---
    node("n1", (x2, yA))
    content((x2, yA + 0.25), anchor: "south", sans("B", weight: "bold"))

    node("n2", (x2, yB))
    content((x2, yB - 0.25), anchor: "north", sans("C", weight: "bold"))

    node("n3", (x3, yA))
    node("n4", (x3, yB))

    // --- Ramo 1: Generatore di corrente A ---
    isource("a", (x1, yB), (x1, yA), variant: "iec")
    content((rel: (-0.65, 0), to: "a.center"), anchor: "east", $A$)
    // Freccia verso della corrente impressa sul ramo del generatore
    line((x1, 2.55), (x1, 3.05), mark: (end: "stealth", fill: black, scale: 1.1))

    // --- Ramo 2: Interruttore S che si apre a t = 0 ---
    wire((x2, yA), (x2, 2.2))
    // Contatto superiore e leva dell'interruttore
    line((x2 - 0.08, 2.2), (x2 + 0.42, 2.2), stroke: 0.8pt)
    line((x2, 1.15), (x2 + 0.35, 2.35), stroke: 0.8pt)
    wire((x2, 1.15), (x2, yB))

    // Freccia curva di apertura dell'interruttore a t = 0
    bezier(
      (x2 + 0.18, 1.95),
      (x2 + 0.62, 1.45),
      (x2 + 0.48, 1.82),
      mark: (end: "stealth", fill: black),
      stroke: 0.6pt
    )
    content((x2 - 0.3, 1.7), anchor: "east", $S$)
    content((x2 + 0.65, 1.25), anchor: "west", $t = 0$)

    // Corrente i_S
    line((x2 + 0.22, 3.05), (x2 + 0.22, 2.45), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((x2 + 0.38, 2.75), anchor: "west", $i_S$)

    // --- Ramo 3: Resistore R ---
    resistor("r", (x3, yA), (x3, yB))
    content((rel: (-0.45, 0), to: "r.center"), anchor: "east", $R$)

    // Corrente i_R
    line((x3 + 0.22, 3.05), (x3 + 0.22, 2.45), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((x3 + 0.38, 2.75), anchor: "west", $i_R$)

    // --- Ramo 4: Condensatore C ---
    capacitor("c", (x4, yA), (x4, yB))
    // Etichetta C a sinistra per lasciare libero il lato destro per la tensione v
    content((rel: (-0.5, 0), to: "c.center"), anchor: "east", $C$)

    // Corrente i_C sul ramo orizzontale superiore
    line((6.5, yA + 0.22), (7.3, yA + 0.22), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((6.9, yA + 0.38), anchor: "south", $i_C$)

    // --- Freccia tensione v (a destra del condensatore) ---
    bezier(
      (x4 + 0.45, yB + 0.3),
      (x4 + 0.45, yA - 0.3),
      (x4 + 0.9, 1.7),
      mark: (end: "stealth", fill: black),
      stroke: 0.6pt
    )
    content((x4 + 0.85, 1.7), anchor: "west", $v$)
  })
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
      #zap.circuit({
        
        import zap.cetz.draw: *
        set-style(resistor: (variant: "ieee"))
        
        isource("a", (0, 0), (0, 3), variant: "iec", label: (content: $A$, anchor: "north", distance: 6pt))
        line((0, 2.0), (0, 2.4), mark: (end: "stealth", fill: black))
        
        wire((0, 3), (5.4, 3))
        wire((0, 0), (5.4, 0))
        
        node("n1", (1.8, 3), label: (content: sans("B", weight: "bold"), anchor: "north", distance: 5pt))
        node("n2", (1.8, 0), label: (content: sans("C", weight: "bold"), anchor: "south", distance: 5pt))
        node("n3", (3.6, 3))
        node("n4", (3.6, 0))
        
        // Corto circuito
        wire((1.8, 3), (1.8, 0))
        line((1.6, 2.7), (1.6, 2.1), mark: (end: "stealth", fill: black), stroke: 0.6pt)
        content((1.35, 2.4), $i$)
        bezier((2.0, 0.3), (2.0, 2.7), (2.3, 1.5), mark: (end: "stealth", fill: black), stroke: 0.6pt)
        content((2.6, 2.3), $v = 0$)
        
        resistor("r", (3.6, 3), (3.6, 0), label: (content: $R$, anchor: "east", distance: 6pt))
        capacitor("c", (5.4, 3), (5.4, 0), label: (content: $C$, anchor: "east", distance: 6pt))
      })
    ]
  ],
  [
    *Configurazione per $t > 0$ (interruttore aperto)*
    #v(0.5em)
    #scale(x: 85%, y: 85%, reflow: true)[
      #zap.circuit({
        
        import zap.cetz.draw: *
        set-style(resistor: (variant: "ieee"))
        
        isource("a", (0, 0), (0, 3), variant: "iec", label: (content: $A$, anchor: "north", distance: 6pt))
        line((0, 2.0), (0, 2.4), mark: (end: "stealth", fill: black))
        
        wire((0, 3), (5.4, 3))
        wire((0, 0), (5.4, 0))
        
        node("n1", (1.8, 3), label: (content: sans("B", weight: "bold"), anchor: "north", distance: 5pt))
        node("n2", (1.8, 0), label: (content: sans("C", weight: "bold"), anchor: "south", distance: 5pt))
        node("n3", (3.6, 3))
        node("n4", (3.6, 0))
        
        // Circuito aperto
        wire((1.8, 3), (1.8, 1.9))
        wire((1.8, 1.1), (1.8, 0))
        
        resistor("r", (3.6, 3), (3.6, 0), label: (content: $R$, anchor: "east", distance: 6pt))
        line((3.8, 2.75), (3.8, 2.2), mark: (end: "stealth", fill: black), stroke: 0.6pt)
        content((4.15, 2.45), $i_R$)
        
        capacitor("c", (5.4, 3), (5.4, 0), label: (content: $C$, anchor: "south", distance: 6pt))
        line((4.2, 3.25), (4.8, 3.25), mark: (end: "stealth", fill: black), stroke: 0.6pt)
        content((4.5, 3.6), $i_C$)
        
        bezier((5.75, 0.3), (5.75, 2.7), (6.1, 1.5), mark: (end: "stealth", fill: black), stroke: 0.6pt)
        content((6.2, 1.5), $v$)
      })
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
*Continuità della tensione nel condensatore*: la tensione $v(t)$ ai capi di un condensatore è una *variabile di stato* (legata all'energia elettrostatica immagazzinata $W_C = 1 / 2 C v^2$) e non può subire discontinuità a gradino in presenza di correnti finite. Per continuità, essa mantiene all'istante $t = 0^+$- il medesimo valore che possedeva in $t = 0^-$ prima della manovra del interruttore:
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
    #canvas({
      import draw: *
      // Griglia di sfondo
      for x in range(1, 6) {
        line((x * 1.1, 0), (x * 1.1, 3.3), stroke: (paint: gray.lighten(50%), thickness: 0.5pt, dash: "dotted"))
      }
      for y in (0.6, 1.2, 1.8, 2.4, 3.0) {
        line((0, y), (5.5, y), stroke: (paint: gray.lighten(50%), thickness: 0.5pt, dash: "dotted"))
      }
      // Riquadro e assi
      rect((0, 0), (5.5, 3.3), stroke: 0.8pt + black)
      line((0, 3.0), (0, 3.8), mark: (end: "stealth", fill: black), stroke: 1pt)
      content((0.45, 3.7), $v(t)$)
      content((-0.45, 3.0), $R A$)
      line((-0.1, 3.0), (0, 3.0))

      // Etichette asse x
      for x in range(0, 6) {
        content((x * 1.1, -0.3), str(x))
        line((x * 1.1, 0), (x * 1.1, 0.1))
      }
      content((2.75, -0.75), sans("costanti di tempo ", size: 9pt) + $tau$)

      // Curva esponenziale: v(t) = 0 per t < 0, 3*(1 - e^(-x)) per t >= 0
      line((-1.2, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.8pt))
      let pts = ()
      for k in range(0, 51) {
        let t_val = k * 5.0 / 50.0
        let x_pos = t_val * 1.1
        let y_pos = 3.0 * (1.0 - calc.exp(-t_val))
        pts.push((x_pos, y_pos))
      }
      line(..pts, stroke: (paint: red.darken(10%), thickness: 1.8pt))
    })
  ]
)

=== Andamento delle Correnti di Ramo e Significato Fisico

Nota la tensione $v(t)$ ai capi del parallelo, è possibile ricavare la corrente nel condensatore $i_C(t)$ mediante l'equazione costitutiva del bipolo capacitivo:

$ i_C(t) = C ("d"v(t)) / ("d"t) = C ("d") / ("d"t) [R A (1 - e^(-t / tau))] = R C A (- e^(-t / tau)) (- 1 / (R C)) = A e^(-t / tau) $

Analogamente, la corrente nel resistore $i_R(t)$ si ottiene applicando la legge di Ohm (oppure per la Legge di Kirchhoff delle Correnti al nodo superiore, essendo $A = i_C(t) + i_R(t)$):

$ i_R(t) = v(t) / R = (R A (1 - e^(-t / tau))) / R = A (1 - e^(-t / tau)) $

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon, center + horizon),
  [
    #scale(x: 85%, y: 85%, reflow: true)[
      #zap.circuit({
        
        import zap.cetz.draw: *
        set-style(resistor: (variant: "ieee"), isource: (variant: "iec"))

        isource("i1", (0, 0), (0, 3), i: (content: $A$, anchor: "east", distance: 15pt))
        resistor("r1", (2.2, 3), (2.2, 0), label: (content: $R$, anchor: "west", distance: 6pt), i: (content: $i_R$, anchor: "east", distance: 15pt), n: "*-*")
        capacitor("c1", (4.4, 3), (4.4, 0), label: (content: $C$, anchor: "north", distance: 6pt), i: (content: $i_C$, anchor: "east", distance: 15pt))

        wire((0, 3), (4.4, 3))
        wire((0, 0), (4.4, 0))

        // Freccia di tensione v
        line((1.2, 0.4), (1.2, 2.6), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 1pt))
        content((0.9, 1.5), text(fill: blue)[$v$])
      })
    ]
  ],
  [
    #canvas({
      import draw: *
      line((-0.8, 0), (3.6, 0), mark: (end: "stealth", fill: black))
      line((0, -0.4), (0, 2.6), mark: (end: "stealth", fill: black))
      content((3.8, -0.2), $t$)
      content((0.5, 2.5), $i_C(t)$)
      content((-0.3, 1.9), text(fill: red.darken(10%))[$A$])
      content((2.6, -0.35), text(fill: red.darken(10%))[$5 tau$])

      line((-0.8, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.5pt))
      line((0, 0), (0, 1.9), stroke: (paint: red.darken(10%), thickness: 1.5pt))
      let pts = ()
      for k in range(0, 41) {
        let t_val = k * 5.0 / 40.0
        let x_pos = t_val * 0.55
        let y_pos = 1.9 * calc.exp(-t_val)
        pts.push((x_pos, y_pos))
      }
      line(..pts, stroke: (paint: red.darken(10%), thickness: 1.5pt))
      circle((0, 1.9), radius: 0.06, fill: red.darken(10%), stroke: none)
    })
  ],
  [
    #canvas({
      import draw: *
      line((-0.8, 0), (3.6, 0), mark: (end: "stealth", fill: black))
      line((0, -0.4), (0, 2.6), mark: (end: "stealth", fill: black))
      content((3.8, -0.2), $t$)
      content((0.5, 2.5), $i_R(t)$)
      content((-0.3, 1.9), text(fill: red.darken(10%))[$A$])
      line((0, 1.9), (3.2, 1.9), stroke: (paint: gray, dash: "dashed", thickness: 0.6pt))

      line((-0.8, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.5pt))
      let pts = ()
      for k in range(0, 41) {
        let t_val = k * 5.0 / 40.0
        let x_pos = t_val * 0.55
        let y_pos = 1.9 * (1.0 - calc.exp(-t_val))
        pts.push((x_pos, y_pos))
      }
      line(..pts, stroke: (paint: red.darken(10%), thickness: 1.5pt))
    })
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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

      vsource("e1", (0, 0), (0, 3), label: (content: $E$, anchor: "north", distance: 6pt))
      content((-0.35, 2.2), sans("+", weight: "bold"))

      switch("s1", (0, 3), (2.5, 3), closed: false, label: (content: $S$, anchor: "north", distance: 8pt))
      content((1.4, 2), $t = 0$)

      node("A", (2.5, 3), fill: true, label: (content: text(fill: red.darken(10%))[#sans("A", weight: "bold")], anchor: "north", distance: 6pt))
      node("B", (2.5, 0), fill: true, label: (content: text(fill: red.darken(10%))[#sans("B", weight: "bold")], anchor: "south", distance: 6pt))

      resistor("r1", (2.5, 3), (5.5, 3), label: (content: $R$, anchor: "south", distance: 6pt))
      inductor("l1", (5.5, 3), (5.5, 0), label: (content: $L$, anchor: "east", distance: 6pt))
      wire((5.5, 0), (0, 0))

      // Corrente i
      line((5.8, 2.8), (5.8, 2.1), mark: (end: "stealth", fill: black))
      content((6.1, 2.45), $i$)

      // Frecce tensioni VR, VL e VAB
      bezier((4.8, 3.4), (3.2, 3.4), (4.0, 3.8), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((4.0, 3.95), $v_R$)

      bezier((5.1, 0.6), (5.1, 2.2), (4.7, 1.4), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((4.4, 1.4), $v_L$)

      line((2.5, 0.4), (2.5, 2.6), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 1pt))
      content((2.95, 1.5), text(fill: red.darken(10%))[$V_(A B)$])
    })
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

$ E - v_R(t) - v_L(t) = 0 $
Sostituendo le relazioni costitutive:
$ E - R i(t) - L ("d"i(t)) / ("d"t) = 0 $
Dividendo per $L$, si ricava la forma normale canonica:
$ ("d"i) / ("d"t) + R / L i = E / L $

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
    #canvas({
      import draw: *
      rect((0, 0), (5.5, 3.3), stroke: 0.8pt + black)
      line((0, 2.8), (5.5, 2.8), stroke: (paint: black, dash: "dashed", thickness: 0.6pt))
      content((-0.45, 2.8), $E / R$)
      content((0.35, 3.0), $i(t)$)

      for x in range(0, 6) {
        content((x * 1.1, -0.3), str(x))
        line((x * 1.1, 0), (x * 1.1, 0.1))
        line((x * 1.1, 3.3), (x * 1.1, 3.2))
      }
      content((2.75, -0.7), sans("costanti di tempo", size: 9pt, weight: "bold"))

      line((-1.2, 0), (0, 0), stroke: (paint: black, thickness: 1.8pt))
      let pts = ()
      for k in range(0, 51) {
        let t_val = k * 5.0 / 50.0
        let x_pos = t_val * 1.1
        let y_pos = 2.8 * (1.0 - calc.exp(-t_val))
        pts.push((x_pos, y_pos))
      }
      line(..pts, stroke: (paint: black, thickness: 1.8pt))
    })
  ]
)

La tensione ai capi dell'induttore $v_L(t)$ per $t > 0$ si ottiene derivando la corrente $i(t)$:

$ v_L(t) = L ("d"i(t)) / ("d"t) = L ("d") / ("d"t) [E / R (1 - e^(-t / tau))] = L E / R (- e^(-t / tau)) (- 1 / (L / R)) = E e^(-t / tau) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

      vsource("e1", (0, 0), (0, 2.5), label: (content: $E$, anchor: "east", distance: 12pt))
      content((0.35, 1.9), sans("+", weight: "bold"))
      resistor("r1", (0, 2.5), (3.8, 2.5), label: (content: $R$, anchor: "south", distance: 6pt))
      inductor("l1", (3.8, 2.5), (3.8, 0), label: (content: $L$, anchor: "east", distance: 6pt))
      wire((3.8, 0), (0, 0))

      // Condizioni a t = 0+
      bezier((2.6, 2.9), (1.2, 2.9), (1.9, 3.3), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 0.8pt))
      content((1.9, 3.55), text(fill: blue)[$v_R(0^+) = 0$])

      line((3.8, 2.4), (3.8, 1.9), mark: (end: "stealth", fill: red.darken(10%)), stroke: (paint: red.darken(10%), thickness: 1pt))
      content((4.6, 2.7), text(fill: red.darken(10%))[$i(0^+) = 0$])

      bezier((4.3, 0.3), (4.3, 2.2), (4.5, 1.25), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 0.8pt))
      content((5.5, 1.25), text(fill: blue)[$v_L(0^+) = E$])
    })
  ],
  [
    #canvas({
      import draw: *
      line((-0.8, 0), (4.2, 0), mark: (end: "stealth", fill: black))
      line((0, -0.4), (0, 2.6), mark: (end: "stealth", fill: black))
      content((4.4, -0.1), $t$)
      content((0.6, 2.5), $v_L(t)$)
      content((-0.35, 1.8), text(fill: red.darken(10%))[$E$])
      content((2.8, -0.35), text(fill: red.darken(10%))[$5 tau$])

      line((-0.8, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.5pt))
      line((0, 0), (0, 1.8), stroke: (paint: red.darken(10%), thickness: 1.5pt))
      let pts = ()
      for k in range(0, 41) {
        let t_val = k * 5.0 / 40.0
        let x_pos = t_val * 0.56
        let y_pos = 1.8 * calc.exp(-t_val)
        pts.push((x_pos, y_pos))
      }
      line(..pts, stroke: (paint: red.darken(10%), thickness: 1.5pt))
      circle((0, 1.8), radius: 0.06, fill: red.darken(10%), stroke: none)
    })
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
    #zap.circuit({
      
      import zap.cetz.draw: *
      set-style(resistor: (variant: "ieee"))

      capacitor("c1", (0, 3), (0, 0), label: (content: $C$, anchor: "north", distance: 8pt))
      content((-0.35, 2.0), sans("+", weight: "bold"))
      content((-0.35, 1.0), sans("-", weight: "bold"))

      // Corrente iC
      line((0.35, 2.4), (0.35, 1.7), mark: (end: "stealth", fill: black))
      content((0.75, 2.05), $i_C$)

      // Freccia v
      bezier((-0.6, 0.4), (-0.6, 2.6), (-0.9, 1.5), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((-1.15, 1.5), $v$)

      switch("s1", (0, 3), (4, 3), closed: false, label: (content: $S$, anchor: "north", distance: 8pt))
      content((2.0, 2), $t = 0$)

      resistor("r1", (4, 3), (4, 0), label: (content: $R$, anchor: "west", distance: 8pt))
      bezier((3.4, 2.5), (3.4, 0.5), (3.1, 1.5), mark: (end: "stealth", fill: black), stroke: 0.7pt)
      content((2.8, 1.5), $v_R$)

      wire((4, 0), (0, 0))
    })
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
  #canvas({
    import draw: *
    line((-1.8, 0), (4.5, 0), mark: (end: "stealth", fill: black))
    line((0, -0.4), (0, 2.5), mark: (end: "stealth", fill: black))
    content((4.7, -0.1), $t$)
    content((0.5, 2.4), $v(t)$)
    content((-0.4, 1.7), text(fill: red.darken(10%))[$V_0$])
    content((2.8, -0.35), text(fill: red.darken(10%))[$5 tau$])

    line((-1.6, 1.7), (0, 1.7), stroke: (paint: red.darken(10%), thickness: 1.6pt))
    let pts = ()
    for k in range(0, 41) {
      let t_val = k * 5.0 / 40.0
      let x_pos = t_val * 0.56
      let y_pos = 1.7 * calc.exp(-t_val)
      pts.push((x_pos, y_pos))
    }
    line(..pts, stroke: (paint: red.darken(10%), thickness: 1.6pt))
  })
]

=== Bilancio Energetico nella Scarica del Condensatore

La corrente che circola nel circuito durante la scarica per $t > 0$ (presa positiva nel verso di scarica dal morsetto positivo del condensatore verso il resistore) vale:

$ i(t) = - C ("d"v(t)) / ("d"t) = - C V_0 (- 1 / (R C)) e^(-t / tau) = V_0 / R e^(-t / tau) $
