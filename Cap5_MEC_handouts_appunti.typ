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



= Sistemi Trifase
== Introduzione ai sistemi polifase

=== Definizioni generali

I sistemi polifase sono insiemi di generatori e carichi nei quali sono presenti più sorgenti sinusoidali operanti alla stessa frequenza (isofrequenziali). Tali configurazioni sono largamente impiegate nelle applicazioni industriali grazie a specifici vantaggi intrinseci rispetto al sistema sinusoidale a singola sorgente, denominato *sistema monofase*. Poiché operano in regime sinusoidale permanente, i sistemi polifase vengono analizzati mediante il metodo simbolico (fasoriale).

Un insieme di $N$ generatori di tensione sinusoidali isofrequenziali costituisce un *sistema polifase di generatori* se i generatori sono interconnessi e le rispettive tensioni presentano uno sfasamento reciproco costante pari all'angolo:

$ varphi = (2 pi) / N $

// VERIFICA: dedotto dall'equazione (formula dell'angolo di sfasamento 2*pi/N e caso pentafase 2*pi/5 = 72 gradi)
A titolo di esempio, in un sistema pentafase ($N = 5$) lo sfasamento tra due generatori consecutivi vale:

$ varphi = (2 pi) / 5 = 72 circ $

La disposizione circuitale simmetrica a stella dei cinque generatori e il corrispondente diagramma fasoriale delle tensioni $overline(E)_1, overline(E)_2, overline(E)_3, overline(E)_4, overline(E)_5$ sono riportati di seguito.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig01.typ"
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig02.typ"
  ]
)

=== Sistema puro e sistema simmetrico

In generale, un sistema polifase di tensioni presenta una risultante fasoriale non nulla:

$ sum_(k=1)^N overline(E)_k != 0 $

Un sistema polifase si definisce *puro* (o a risultante nulla) se la somma fasoriale di tutte le sue grandezze è identicamente uguale a zero:

$ sum_(k=1)^N overline(E)_k = 0 $

Un sistema puro nel quale tutte le sorgenti possiedono lo stesso valore efficace è detto *sistema simmetrico*. Geometricamente, i fasori di un sistema simmetrico a $N$ fasi formano un poligono regolare chiuso di $N$ lati.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig03.typ"
    *Sistema a risultante non nulla*
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig04.typ"
    *Sistema pentafase simmetrico*
  ]
)

== Il sistema trifase

=== Architettura del sistema elettrico

Tra tutti i sistemi polifase, il *sistema trifase simmetrico* ($N = 3$) è il più largamente utilizzato. Esso trova impiego sistematico nelle diverse fasi di produzione, trasmissione e distribuzione dell'energia elettrica:

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig05.typ"
]

=== Terna diretta e terna inversa

Un sistema trifase simmetrico è caratterizzato da tre forme d'onda sinusoidali aventi lo stesso valore efficace $E$, sfasate tra loro di un angolo pari a $(2 pi) / 3 = 120 circ$, la cui somma fasoriale è nulla:

$ sum_(k=1)^3 overline(E)_k = overline(E)_1 + overline(E)_2 + overline(E)_3 = 0 $

A seconda dell'ordine ciclico con cui si susseguono le fasi nel piano complesso, si distinguono due sequenze:

// VERIFICA: dedotto dall'equazione (esponenti +/- j 2*pi/3 nelle espressioni della terna diretta e inversa)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (center + top, center + top),
  [
    *Sistema trifase simmetrico diretto*
    $ cases(
      overline(E)_1 = E e^(j 0),
      overline(E)_2 = E e^(-j (2 pi) / 3),
      overline(E)_3 = E e^(j (2 pi) / 3)
    ) $
    #v(0.5em)
    #include "figs/Cap5_MEC_handouts_appunti-fig06.typ"
  ],
  [
    *Sistema trifase simmetrico inverso*
    $ cases(
      overline(E)_1 = E e^(j 0),
      overline(E)_2 = E e^(j (2 pi) / 3),
      overline(E)_3 = E e^(-j (2 pi) / 3)
    ) $
    #v(0.5em)
    #include "figs/Cap5_MEC_handouts_appunti-fig07.typ"
  ]
)

=== Proprietà nel dominio del tempo

La proprietà di simmetria della terna si riflette direttamente nel dominio del tempo: se la terna è simmetrica, la somma istantanea delle tre tensioni $e_1(t)$, $e_2(t)$ ed $e_3(t)$ è identicamente nulla in ogni istante $t$, indipendentemente dal fatto che la sequenza sia diretta o inversa:

$ e_1(t) + e_2(t) + e_3(t) = 0 quad forall t $

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig08.typ"
]

=== Componenti trifase: il tripolo

Il componente fondamentale alla base dei sistemi trifase è il *tripolo*. Esso è caratterizzato dalla presenza di tre morsetti (indicati con $1, 2, 3$) e viene rappresentato graficamente mediante un blocco rettangolare, che individua la superficie limite del componente, da cui fuoriescono le tre connessioni esterne. Ciascuna connessione esterna prende il nome di *circuito di fase* (o semplicemente *fase*).

Ai morsetti del tripolo si definiscono le seguenti grandezze elettriche fondamentali:
- *Tensioni di linea (o tensioni concatenate)*: le tensioni $overline(V)_(1 2)$, $overline(V)_(2 3)$ e $overline(V)_(3 1)$ misurate tra coppie di morsetti esterni.
- *Correnti di linea*: le correnti $overline(I)_1$, $overline(I)_2$ e $overline(I)_3$ che attraversano i tre morsetti di linea.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 1.2em,
  align: (center + horizon, center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig09.typ"
    *Tripolo*
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig10.typ"
    *Tensioni di linea*
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig11.typ"
    *Correnti di linea*
  ]
)

=== Connessione dei generatori a stella (Y) e tensioni concatenate

Un sistema trifase di generatori si ottiene collegando tre generatori sinusoidali a un nodo comune $O$, denominato *centro stella*. Le tensioni impresse dai singoli generatori ($overline(E)_1, overline(E)_2, overline(E)_3$) prendono il nome di *tensioni di fase* (o tensioni stellate).

#align(center)[
  #scale(x: 90%, y: 90%, reflow: true)[
    #include "figs/Cap5_MEC_handouts_appunti-fig12.typ"
  ]
]

=== Rappresentazione circuitale della filiera elettrica

Con questa notazione, l'intero sistema elettrico di potenza (che opera a differenti livelli di tensione: Media Tensione $"MT"$, Alta Tensione $"AT"$ e Bassa Tensione $"BT"$) può essere schematizzato in forma circuitale trifase:

#align(center)[
  #scale(x: 85%, y: 85%, reflow: true)[
    #include "figs/Cap5_MEC_handouts_appunti-fig13.typ"
  ]
]

=== Relazione tra tensioni di linea e tensioni di fase

Qualora il centro stella $O$ non sia direttamente accessibile dall'esterno, le tensioni di fase $overline(E)_1, overline(E)_2, overline(E)_3$ non sono misurabili singolarmente. È invece sempre possibile misurare le tensioni di linea (o concatenate) tra le coppie di morsetti esterni $1, 2, 3$.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig14.typ"
  ],
  [
    Applicando la legge di Kirchhoff delle tensioni (LKT) alle maglie individuate dai morsetti esterni e dal centro stella $O$, si ricavano le relazioni fondamentali tra tensioni concatenate e tensioni stellate:
    $ cases(
      overline(V)_(1 2) = overline(E)_1 - overline(E)_2,
      overline(V)_(2 3) = overline(E)_2 - overline(E)_3,
      overline(V)_(3 1) = overline(E)_3 - overline(E)_1
    ) $
  ]
)

Geometricamente, nel piano di Gauss i fasori delle tensioni concatenate congiungono le punte dei fasori delle tensioni di fase, formando un triangolo equilatero circoscritto alla stella dei generatori:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig15.typ"
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig16.typ"
  ]
)

// VERIFICA: dedotto dall'equazione (relazione trigonometrica sul triangolo rettangolo 0-H-1: V = 2*E*cos(30) = sqrt(3)*E)
#nota[
  Dal triangolo isoscele $0 - 1 - 2$, diviso dall'altezza $0 H$ in due triangoli rettangoli congruenti con angolo alla base di $30 circ$, si deduce che in un sistema trifase simmetrico il valore efficace $V$ delle tensioni concatenate è legato al valore efficace $E$ delle tensioni di fase dalla relazione:
  $ V = 2 E cos(30 circ) = sqrt(3) E $
  Inoltre, la terna delle tensioni concatenate risulta sfasata in anticipo di $30 circ$ ($pi / 6$) rispetto alla corrispondente terna delle tensioni stellate (nel caso di terna diretta).
]

== Circuiti trifase e analisi dei collegamenti Y-Y e Y-Δ

=== Connessione dei carichi trifase

I carichi trifase sono realizzati collegando tra loro tre bipoli di impedenza $overline(Z)_1, overline(Z)_2, overline(Z)_3$ secondo due configurazioni fondamentali: la connessione a *stella (Y)* e la connessione a *triangolo ($Delta$)*.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig17.typ"
    *Carico connesso a stella (Y)*
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig18.typ"
    *Carico connesso a triangolo ($Delta$)*
  ]
)

#nota[
  *Definizione (Carico equilibrato)*: Se le tre impedenze collegate sono uguali tra loro sia in modulo sia in fase ($overline(Z)_1 = overline(Z)_2 = overline(Z)_3 = overline(Z)$), il sistema di carichi è detto *equilibrato*.
]

=== Il circuito stella-stella (Y-Y)

Collegando un sistema trifase di generatori connessi a stella (con centro stella $O$) a un insieme di carichi anch'essi connessi a stella (con centro stella $O'$), si ottiene il *circuito Y-Y*. La struttura risultante è costituita da tre lati (o circuiti di fase) posti in parallelo tra i due centri stella $O$ e $O'$.

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig19.typ"
]

=== Calcolo della tensione tra i centri stella (Teorema di Millman)

// VERIFICA: dedotto dall'equazione (formula di Millman applicata ai tre rami in parallelo tra O e O')
La tensione $overline(V)_(O' O)$ che si manifesta tra il centro stella dei carichi $O'$ e il centro stella dei generatori $O$ può essere determinata direttamente mediante il *teorema di Millman*:

$ overline(V)_(O' O) = (display(sum_(k=1)^3 overline(E)_k / overline(Z)_k)) / (display(sum_(k=1)^3 1 / overline(Z)_k)) = (overline(E)_1 / overline(Z)_1 + overline(E)_2 / overline(Z)_2 + overline(E)_3 / overline(Z)_3) / (1 / overline(Z)_1 + 1 / overline(Z)_2 + 1 / overline(Z)_3) $

Nota la tensione $overline(V)_(O' O)$, ciascun lato $k$ ($k = 1, 2, 3$) può essere studiato isolatamente:

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig20.typ"
]

Applicando la legge di Kirchhoff delle tensioni e la legge di Ohm simbolica al generico circuito di fase $k$-esimo, si ricavano la tensione di fase sul carico $overline(E)'_k$ e la corrente di linea $overline(I)_k$:

$ overline(E)'_k = overline(E)_k - overline(V)_(O' O) $

$ overline(I)_k = overline(E)'_k / overline(Z)_k = (overline(E)_k - overline(V)_(O' O)) / overline(Z)_k, quad k = 1, 2, 3 $

=== Sistema Y-Y simmetrico ed equilibrato

// VERIFICA: dedotto dall'equazione (sviluppo di Millman con Z1=Z2=Z3=Z e somma delle E_k nulla)
Se il sistema di alimentazione è costituito da una terna simmetrica di generatori ($overline(E)_1 + overline(E)_2 + overline(E)_3 = 0$) e il sistema dei carichi è realizzato mediante una terna equilibrata ($overline(Z)_1 = overline(Z)_2 = overline(Z)_3 = overline(Z)$), la formula di Millman fornisce:

$ overline(V)_(O' O) = (display(sum_(k=1)^3 overline(E)_k / overline(Z))) / (display(sum_(k=1)^3 1 / overline(Z))) = (display(1 / overline(Z) sum_(k=1)^3 overline(E)_k)) / (display(3 / overline(Z))) = (overline(E)_1 + overline(E)_2 + overline(E)_3) / 3 = 0 $

#nota[
  *Proprietà fondamentali del sistema Y-Y simmetrico ed equilibrato*:
  1. Poiché $overline(V)_(O' O) = 0$, la tensione ai capi di ciascuna impedenza di carico coincide esattamente con la tensione impressa dal rispettivo generatore di fase:
     $ overline(E)'_k = overline(E)_k, quad k = 1, 2, 3 $
  2. Essendo $overline(V)_(O' O) = 0$, il centro stella $O'$ di qualsiasi carico equilibrato risulta *equipotenziale* rispetto al centro stella $O$ dei generatori.
]


=== Circuito monofase equivalente

Poiché in un sistema Y-Y simmetrico ed equilibrato i due centri stella $O$ e $O'$ si trovano allo stesso potenziale ($overline(V)_(O' O) = 0$), essi possono essere collegati tramite un cortocircuito ideale senza alterare il regime elettrico della rete. Di conseguenza, ciascun circuito di fase risulta disaccoppiato dagli altri due e può essere ridisegnato come un *circuito monofase equivalente* chiuso tra $O$ e $O'$:

#grid(
  columns: (1.25fr, 0.75fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #scale(x: 90%, y: 90%, reflow: true)[
      #include "figs/Cap5_MEC_handouts_appunti-fig21.typ"
    ]
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig22.typ"
  ]
)

// VERIFICA: dedotto dall'equazione (espressioni fasoriali delle tre correnti di linea per terna diretta e carico equilibrato Z = Z e^(j phi))
Applicando il medesimo circuito monofase equivalente a ciascuna delle tre fasi e ponendo $overline(Z) = Z e^(j varphi)$, si ricavano immediatamente le espressioni delle correnti di linea (nel caso di terna diretta delle tensioni):

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    $ cases(
      overline(I)_1 = display(overline(E)_1 / overline(Z)) = display((E e^(j 0)) / (Z e^(j varphi))) = display(E / Z) e^(-j varphi),
      overline(I)_2 = display(overline(E)_2 / overline(Z)) = display((E e^(-j (2 pi) / 3)) / (Z e^(j varphi))) = display(E / Z) e^(j (- (2 pi) / 3 - varphi)),
      overline(I)_3 = display(overline(E)_3 / overline(Z)) = display((E e^(j (2 pi) / 3)) / (Z e^(j varphi))) = display(E / Z) e^(j ((2 pi) / 3 - varphi))
    ) $

    Se il carico connesso a stella è equilibrato, le correnti di linea formano anch'esse una *terna simmetrica* (sfasata di un angolo $varphi$ rispetto alla terna delle tensioni stellate), nella quale il valore efficace della corrente di linea è identico in tutte e tre le fasi e vale:
    $ I = E / Z $
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig23.typ"
  ]
)

=== Più carichi equilibrati connessi a stella in parallelo

La proprietà di equipotenzialità dei centri stella si estende a un numero arbitrario di carichi equilibrati collegati alla medesima linea trifase. Se due carichi a stella equilibrati di impedenze $overline(Z)_A$ e $overline(Z)_B$ hanno centri stella $O_A$ e $O_B$, i nodi $O$, $O_A$ e $O_B$ si trovano tutti allo stesso potenziale e possono essere cortocircuitati nel circuito monofase equivalente:

#align(center)[
  #scale(x: 90%, y: 90%, reflow: true)[
    #include "figs/Cap5_MEC_handouts_appunti-fig24.typ"
  ]
]

=== Il circuito stella-triangolo (Y-$Delta$)

Consideriamo un sistema trifase di generatori connessi a stella che alimenta un carico connesso a triangolo ($Delta$). Nella configurazione a triangolo, ciascuna impedenza di carico è collegata direttamente tra due morsetti di linea ed è pertanto sottoposta alla corrispondente *tensione concatenata* ($overline(V)_(1 2), overline(V)_(2 3), overline(V)_(3 1)$).

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig25.typ"
]

// VERIFICA: dedotto dall'equazione (legge di Ohm sui tre lati del triangolo e LKC ai tre nodi)
Le tre correnti $overline(I)_(1 2), overline(I)_(2 3), overline(I)_(3 1)$ che circolano all'interno dei lati del triangolo sono dette *correnti di fase* (di triangolo) e si determinano direttamente tramite la legge di Ohm simbolica:

$ overline(I)_(1 2) = overline(V)_(1 2) / overline(Z)_1, quad overline(I)_(2 3) = overline(V)_(2 3) / overline(Z)_2, quad overline(I)_(3 1) = overline(V)_(3 1) / overline(Z)_3 $

Applicando la legge di Kirchhoff delle correnti (LKC) ai tre nodi del triangolo, si ottengono le *correnti di linea* $overline(I)_1, overline(I)_2, overline(I)_3$ in funzione delle correnti di fase:

$ cases(
  overline(I)_1 = overline(I)_(1 2) - overline(I)_(3 1),
  overline(I)_2 = overline(I)_(2 3) - overline(I)_(1 2),
  overline(I)_3 = overline(I)_(3 1) - overline(I)_(2 3)
) $

=== Sistema Y-$Delta$ simmetrico ed equilibrato

// VERIFICA: dedotto dall'equazione (espressioni di I_12, I_23, I_31 con carico equilibrato Z = Z e^(j phi) e relazione I_linea = sqrt(3) I_fase)
Se il carico a triangolo è equilibrato ($overline(Z)_1 = overline(Z)_2 = overline(Z)_3 = overline(Z) = Z e^(j varphi)$) ed è alimentato da una terna simmetrica di tensioni concatenate di valore efficace $V$, le tre correnti di fase costituiscono una terna simmetrica avente valore efficace $I_"fase" = V / Z$:

$ cases(
  overline(I)_(1 2) = display(overline(V)_(1 2) / overline(Z)) = display((V e^(j varphi_(V_(1 2)))) / (Z e^(j varphi))) = display(V / Z) e^(j (varphi_(V_(1 2)) - varphi)),
  overline(I)_(2 3) = display(overline(V)_(2 3) / overline(Z)) = display((V e^(j varphi_(V_(2 3)))) / (Z e^(j varphi))) = display(V / Z) e^(j (varphi_(V_(2 3)) - varphi)),
  overline(I)_(3 1) = display(overline(V)_(3 1) / overline(Z)) = display((V e^(j varphi_(V_(3 1)))) / (Z e^(j varphi))) = display(V / Z) e^(j (varphi_(V_(3 1)) - varphi))
) $

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig26.typ"
  ],
  [
    Per dualità geometrica rispetto alle tensioni concatenate in un collegamento a stella, i fasori delle correnti di linea ($overline(I)_1 = overline(I)_(1 2) - overline(I)_(3 1)$, ecc.) formano un triangolo equilatero circoscritto alla stella delle correnti di fase.

    #nota[
      In un carico a triangolo equilibrato, il valore efficace della corrente di linea è legato al valore efficace della corrente di fase dalla relazione:
      $ I_"linea" = sqrt(3) I_"fase" = sqrt(3) V / Z $
    ]
  ]
)

== Potenza nei sistemi trifase

=== Potenza in un generico tripolo

Grazie al *teorema di Boucherot*, in un generico tripolo (anche non equilibrato) la potenza complessa complessiva $overline(S)$ richiesta ai generatori si esprime come la somma delle potenze complesse assorbite dalle singole fasi del tripolo stesso.

#grid(
  columns: (0.9fr, 1.1fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig27.typ"
  ],
  [
    // VERIFICA: dedotto dall'equazione (dimostrazione dell'invarianza della potenza complessa rispetto al centro stella O)
    Indicando con $overline(E)'_k$ le tensioni ai capi delle singole fasi del tripolo (in generale squilibrato, con centro stella $O'$):
    $ overline(S) = sum_(k=1)^3 overline(E)'_k overline(I)_k^* = overline(E)'_1 overline(I)_1^* + overline(E)'_2 overline(I)_2^* + overline(E)'_3 overline(I)_3^* $
    Esprimendo ciascuna tensione come $overline(E)'_k = overline(E)_k - overline(V)_(O' O)$ rispetto al centro stella $O$ dei generatori (o a un qualunque nodo di riferimento arbitrario $O$), si ottiene:
    $ overline(S) &= (overline(E)_1 - overline(V)_(O' O)) overline(I)_1^* + (overline(E)_2 - overline(V)_(O' O)) overline(I)_2^* + (overline(E)_3 - overline(V)_(O' O)) overline(I)_3^* \
      &= sum_(k=1)^3 overline(E)_k overline(I)_k^* - overline(V)_(O' O) sum_(k=1)^3 overline(I)_k^* $
  ]
)

Poiché in un tripolo a tre fili la terna delle correnti di linea è necessariamente pura per la legge di Kirchhoff delle correnti ($sum_(k=1)^3 overline(I)_k = 0 arrow sum_(k=1)^3 overline(I)_k^* = 0$), il termine moltiplicato per $overline(V)_(O' O)$ si annulla identicamente:

$ overline(S) = sum_(k=1)^3 overline(E)_k overline(I)_k^* = sum_(k=1)^3 E_k I_k cos varphi_k + j sum_(k=1)^3 E_k I_k sin varphi_k = P + j Q $

=== Potenza in un carico trifase equilibrato (a stella e a triangolo)

Nel caso di un *carico trifase equilibrato*, le espressioni della potenza attiva $P$, reattiva $Q$, complessa $overline(S)$ e apparente $S$ si semplificano notevolmente e assumono la medesima forma in funzione dei valori efficaci delle grandezze di linea $V$ (tensione concatenata) e $I$ (corrente di linea), indipendentemente dal fatto che il carico sia connesso a stella o a triangolo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (center + top, center + top),
  [
    *Carico equilibrato connesso a stella (Y)*
    #v(0.4em)
    #include "figs/Cap5_MEC_handouts_appunti-fig28.typ"
  ],
  [
    *Carico equilibrato connesso a triangolo ($Delta$)*
    #v(0.4em)
    #include "figs/Cap5_MEC_handouts_appunti-fig29.typ"
  ]
)

// VERIFICA: dedotto dall'equazione (sviluppo di P, Q, S per carico equilibrato a Y con E = V/sqrt(3) e a Delta con I_f = I/sqrt(3))
- *Connessione a stella (Y)*: ciascuna impedenza $overline(Z)_Y$ è sottoposta alla tensione di fase $E = V / sqrt(3)$ ed è percorsa dalla corrente di linea $I$, con fattore di potenza $cos varphi$ uguale per tutte le fasi:
  $ P = P_1 + P_2 + P_3 = 3 E I cos varphi = 3 V / sqrt(3) I cos varphi = sqrt(3) V I cos varphi $
  $ Q = Q_1 + Q_2 + Q_3 = 3 E I sin varphi = 3 V / sqrt(3) I sin varphi = sqrt(3) V I sin varphi $

- *Connessione a triangolo ($Delta$)*: ciascuna impedenza $overline(Z)_Delta$ è sottoposta alla tensione concatenata $V$ ed è percorsa dalla corrente di fase $I_f = I / sqrt(3)$:
  $ P = 3 V I_f cos varphi = 3 V I / sqrt(3) cos varphi = sqrt(3) V I cos varphi $
  $ Q = 3 V I_f sin varphi = 3 V I / sqrt(3) sin varphi = sqrt(3) V I sin varphi $

#nota[
  *Potenza complessa e potenza apparente in un sistema trifase equilibrato*:
  In qualunque sistema trifase simmetrico ed equilibrato (sia esso connesso a stella o a triangolo), la potenza complessa e la potenza apparente in funzione dei valori efficaci di linea $V$ e $I$ valgono:
  $ overline(S) = overline(S)_1 + overline(S)_2 + overline(S)_3 = sqrt(3) V I cos varphi + j sqrt(3) V I sin varphi = P + j Q $
  $ S = abs(overline(S)) = sqrt(P^2 + Q^2) = sqrt(3) V I $
]

== Vantaggi del sistema trifase e uso del neutro

L'impiego generalizzato del sistema trifase negli impianti industriali e nella trasmissione dell'energia elettrica è motivato da tre vantaggi fisici e tecnologici fondamentali:
1. *Maggiore efficienza nella trasmissione di potenza su linea* (risparmio di materiale conduttore a parità di potenza trasmessa e perdite per effetto Joule).
2. *Componente attiva della potenza istantanea costante nel tempo*.
3. *Utilizzo efficace nei sistemi elettromeccanici* (generazione diretta del campo magnetico rotante nelle macchine elettriche).

=== Confronto tra linea di trasmissione monofase e trifase

Confrontiamo una linea di trasmissione monofase (a 2 conduttori di sezione $S_"m"$ e resistenza $R_"m"$) e una linea di trasmissione trifase (a 3 conduttori di sezione $S_"t"$ e resistenza $R_"t"$), a parità di lunghezza della linea $l$, resistività del materiale conduttore $rho$, tensione di linea $V$, potenza attiva $P$ e fattore di potenza $cos varphi$ richiesti dal carico:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig30.typ"
    *Linea monofase*
  ],
  [
    #include "figs/Cap5_MEC_handouts_appunti-fig31.typ"
    *Linea trifase*
  ]
)

// VERIFICA: dedotto dall'equazione (correnti di linea I_m e I_t, seconda legge di Ohm per R_m e R_t, e bilancio delle perdite Joule)
Le correnti di linea nei due sistemi e le resistenze di ciascun conduttore di lunghezza $l$ valgono rispettivamente:

$ I_"m" = P / (V cos varphi), quad R_"m" = rho l / S_"m" $

$ I_"t" = P / (sqrt(3) V cos varphi), quad R_"t" = rho l / S_"t" $

Imponendo che le due linee presentino il medesimo valore complessivo di perdite per effetto Joule ($P_(J, "m") = P_(J, "t")$), si ottiene:

$ P_(J, "m") = P_(J, "t") arrow.r.double 2 R_"m" I_"m"^2 = 3 R_"t" I_"t"^2 arrow.r.double 2 R_"m" (P / (V cos varphi))^2 = 3 R_"t" (P / (sqrt(3) V cos varphi))^2 $

Semplificando i termini comuni si ricava la relazione tra le resistenze e tra le sezioni dei conduttori:

$ 2 R_"m" = R_"t" arrow.r.double 2 rho l / S_"m" = rho l / S_"t" arrow.r.double S_"m" = 2 S_"t" $

Valutando infine il rapporto tra il volume totale di materiale conduttore richiesto dalla linea trifase ($"Vol"_"t" = 3 S_"t" l$) e quello richiesto dalla linea monofase ($"Vol"_"m" = 2 S_"m" l$):

$ "Vol"_"t" / "Vol"_"m" = (3 S_"t" l) / (2 S_"m" l) = (3 S_"t") / (4 S_"t") = 3 / 4 = 0.75 $

A parità di potenza trasmessa e perdite di linea, la trasmissione trifase a tre fili comporta dunque un *risparmio del $25%$ di materiale conduttore* rispetto alla trasmissione monofase.

=== Componente attiva della potenza istantanea

In un sistema trifase simmetrico ed equilibrato, le tre componenti attive della potenza istantanea assorbita dalle singole fasi danno luogo a una somma istantanea costante nel tempo. Infatti, i tre termini oscillanti a pulsazione doppia ($2 omega$) formano una terna simmetrica a risultante nulla, per cui la potenza attiva istantanea totale coincide in ogni istante con la potenza attiva media $P$:

$ p_a (t) = 3 E I cos varphi = sqrt(3) V I cos varphi = P = "costante" $

=== Sistema trifase a quattro fili (con conduttore di neutro)

Qualora il sistema di carichi connesso a stella sia *squilibrato* ($overline(Z)_1, overline(Z)_2, overline(Z)_3$ diverse tra loro, come avviene tipicamente nella distribuzione in bassa tensione a utenze monofase), si instaura una differenza di potenziale non nulla tra i centri stella ($overline(V)_(O' O) != 0$), provocando indesiderate variazioni delle tensioni sulle singole fasi di carico.

Per ovviare a tale fenomeno si aggiunge un *quarto conduttore*, detto *conduttore di neutro*, che collega direttamente il centro stella dei generatori $O$ al centro stella del carico $O'$:

#align(center)[
  #include "figs/Cap5_MEC_handouts_appunti-fig32.typ"
]

#nota[
  *Effetti dell'inserzione del conduttore di neutro*:
  1. Vincola rigidamente i due centri stella allo stesso potenziale ($overline(V)_(O' O) = 0$), garantendo che la tensione ai capi di ciascun carico coincida con la rispettiva tensione stellata del generatore indipendentemente dallo squilibrio del carico:
     $ overline(E)'_k = overline(E)_k - overline(V)_(O' O) = overline(E)_k, quad k = 1, 2, 3 $
  2. Consente il ritorno della corrente risultante di squilibrio attraverso il conduttore di neutro, data per la LKC al nodo $O'$ da:
     $ overline(I)_"N" = overline(I)_1 + overline(I)_2 + overline(I)_3 $
  3. La presenza del quarto conduttore comporta la rinuncia al risparmio del $25%$ di materiale conduttore proprio delle linee di trasmissione trifase a tre fili.
]