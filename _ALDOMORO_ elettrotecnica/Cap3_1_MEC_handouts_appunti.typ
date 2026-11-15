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


// ==========================================
// SLIDE 1 - 15
// ==========================================

= Circuiti in regime sinusoidale: comportamento in frequenza

== Risposta in frequenza e funzione di trasferimento

=== Dipendenza dell'impedenza dalla pulsazione

In regime sinusoidale, il comportamento dei bipoli passivi elementari ($R$, $L$, $C$) in funzione della pulsazione $omega = 2 pi f$ è descritto dalle rispettive impedenze complesse $macron(Z) = |macron(Z)| e^(j theta)$:

// VERIFICA: tabella e relazioni dedotte dal testo e dai simboli della Slide 2
#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    align: (center + horizon, center + horizon, center + horizon, center + horizon),
    table.header(
      [*Bipolo*], [*Impedenza $macron(Z)$*], [*Modulo $|macron(Z)|$*], [*Fase $theta$*]
    ),
    table.hline(),
    [Resistore ($R$)], [$R$], [$R$], [$0$],
    [Induttore ($L$)], [$j omega L$], [$omega L$], [$pi / 2$],
    [Condensatore ($C$)], [$-j 1 / (omega C) = 1 / (j omega C)$], [$1 / (omega C)$], [$-pi / 2$],
  )
]

Dall'analisi delle espressioni del modulo $|macron(Z)|$ al variare della pulsazione $omega$ si osserva che:
- *Resistore ($R$)*: l'impedenza è puramente reale e non dipende da $omega$.
- *Induttore ($L$)*: il modulo $|macron(Z)| = omega L$ cresce linearmente con $omega$. Per $omega -> 0$ (regime stazionario) si comporta come un *cortocircuito* ($|macron(Z)| -> 0$), mentre per $omega -> infinity$ si comporta come un *circuito aperto* ($|macron(Z)| -> infinity$).
- *Condensatore ($C$)*: il modulo $|macron(Z)| = 1 / (omega C)$ diminuisce in modo inversamente proporzionale a $omega$. Per $omega -> 0$ si comporta come un *circuito aperto* ($|macron(Z)| -> infinity$), mentre per $omega -> infinity$ si comporta come un *cortocircuito* ($|macron(Z)| -> 0$).

#nota[
  La risposta di un circuito elettrico contenente induttori ($L$) e/o condensatori ($C$) dipende pertanto dalla frequenza (o pulsazione $omega$) dei generatori che lo alimentano.
]

=== Partitore di tensione e funzione di trasferimento

Si consideri un partitore di tensione costituito da due impedenze generiche $macron(Z)_1 = R_1 + j X_1$ e $macron(Z)_2 = R_2 + j X_2$, alimentato in ingresso dalla tensione fasoriale $macron(V)_"in"$ e con l'uscita a vuoto prelevata ai capi di $macron(Z)_2$, indicata con $macron(V)_"out"$.

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig01.typ"
]

Applicando la regola del partitore di tensione, la tensione di uscita a vuoto su $macron(Z)_2$, nota la tensione di ingresso $macron(V)_"in"$, vale:

$ macron(V)_"out" = frac(macron(Z)_2, macron(Z)_1 + macron(Z)_2) macron(V)_"in" $

Dalla relazione precedente si ricava il rapporto complesso tra uscita e ingresso:

$ frac(macron(V)_"out", macron(V)_"in") = frac(macron(Z)_2(j omega), macron(Z)_1(j omega) + macron(Z)_2(j omega)) $

Poiché le impedenze $macron(Z)_1$ e $macron(Z)_2$ dipendono dalla pulsazione $omega$, anche il rapporto tra il fasore di uscita e quello di ingresso dipende da $omega$; essendo tuttavia il circuito lineare, tale rapporto non dipende né dall'ampiezza né dalla fase della tensione di ingresso $macron(V)_"in"$.

#nota[
  *Definizione (Funzione di trasferimento)*: Il rapporto tra il fasore della grandezza di uscita e il fasore della grandezza di ingresso, valutato alla pulsazione $omega$, prende il nome di *funzione di trasferimento* $macron(H)(j omega)$:
  $ macron(H)(j omega) = frac(macron(V)_"out", macron(V)_"in") = |macron(H)(j omega)| e^(j angle macron(H)(j omega)) $
]

La funzione di trasferimento $macron(H)(j omega)$ è un numero complesso funzione di $omega$, caratterizzato da:
- *Modulo $|macron(H)|$*: rappresenta il rapporto tra le ampiezze (o valori efficaci) di uscita e di ingresso:
  $ V_"out" = |macron(H)| V_"in" $
- *Fase $angle macron(H)$*: rappresenta lo sfasamento introdotto dal circuito tra l'uscita e l'ingresso:
  $ angle macron(V)_"out" = angle macron(V)_"in" + angle macron(H) $

Per rappresentare graficamente il comportamento del circuito su un ampio intervallo di frequenze si utilizzano i *diagrammi di Bode*, i quali riportano il modulo espresso in decibel (dB), definito come $|macron(H)|_"dB" = 20 log_10 |macron(H)|$, e la fase $angle macron(H)$ in funzione della pulsazione $omega$ su scala logaritmica.

== Filtro passa-basso (circuito RC)

Si consideri il circuito $R C$ mostrato in figura, ottenuto ponendo nel partitore di tensione un resistore in serie ($macron(Z)_1 = R$) e un condensatore in derivazione ($macron(Z)_2 = 1 / (j omega C) = -j / (omega C)$), prelevando in uscita la tensione a vuoto sul condensatore $C$.

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig02.typ"
]

Applicando la relazione del partitore di tensione, si ottiene la tensione di uscita a vuoto sul condensatore:

// VERIFICA: passaggi algebrici dedotti dalla Slide 5
$ macron(V)_"out" = frac(frac(1, j omega C), R + frac(1, j omega C)) macron(V)_"in" = frac(1, 1 + j omega R C) macron(V)_"in" $

La funzione di trasferimento del circuito risulta quindi:

$ macron(H)(j omega) = frac(macron(V)_"out", macron(V)_"in") = frac(1, 1 + j omega R C) $

Definendo la *pulsazione di taglio* $omega_0$ (e la corrispondente *frequenza di taglio* $f_0$) come:

$ omega_0 = frac(1, R C) quad arrow.r.double quad f_0 = frac(omega_0, 2 pi) = frac(1, 2 pi R C) $

la funzione di trasferimento assume la forma adimensionale normalizzata:

$ macron(H)(j omega) = frac(1, 1 + j frac(omega, omega_0)) $

=== Modulo, fase e comportamento asintotico

Dall'espressione complessa di $macron(H)(j omega)$ si ricavano immediatamente il modulo e la fase in funzione del rapporto $omega / omega_0$:

// VERIFICA: equazioni di modulo, dB e fase dedotte dalle Slide 6 e 7
$ |macron(H)(j omega)| = frac(1, sqrt(1 + (frac(omega, omega_0))^2)) $

$ angle macron(H)(j omega) = -arctan(frac(omega, omega_0)) $

Esprimendo il modulo in decibel si ha:

$ |macron(H)|_"dB" = 20 log_10 |macron(H)| = 20 log_10 frac(1, sqrt(1 + (frac(omega, omega_0))^2)) = -20 log_10 sqrt(1 + (frac(omega, omega_0))^2) $

Il comportamento limite del filtro nei tre regimi caratteristici di frequenza ($omega lt.double omega_0$, $omega = omega_0$, $omega gt.double omega_0$) è riassunto nella tabella seguente:

#align(center)[
  #table(
    columns: (25%, 25%, 25%, 25%),
    align: (center + horizon, center + horizon, center + horizon, center + horizon),
    table.header(
      [*Regime di pulsazione*], [*$|macron(H)|$*], [*$|macron(H)|_"dB"$ \[dB\]*], [*$angle macron(H)$ \[rad\]*]
    ),
    table.hline(),
    [$omega lt.double omega_0$], [$tilde.eq 1$], [$tilde.eq 0$], [$tilde.eq 0$],
    [$omega = omega_0$], [$frac(1, sqrt(2)) approx 0.707$], [$tilde.eq -3$], [$-frac(pi, 4)$],
    [$omega gt.double omega_0$], [$tilde.eq frac(omega_0, omega)$], [$-20 log_10 frac(omega, omega_0)$], [$tilde.eq -frac(pi, 2)$],
  )
]

#nota[
  Per pulsazioni molto superiori a quella di taglio ($omega gt.double omega_0$), il modulo in decibel decresce linearmente con il logaritmo della pulsazione secondo la legge $|macron(H)|_"dB" tilde.eq -20 log_10 (omega / omega_0)$: il modulo scende quindi con una pendenza asintotica di *-20 dB per ogni decade* di $omega$ (ovvero un fattore $10$ in frequenza riduce il modulo di un fattore $10$). Per basse frequenze ($omega lt.double omega_0$), invece, $|macron(H)| tilde.eq 1$ e $macron(V)_"out" tilde.eq macron(V)_"in"$, lasciando passare inalterato il segnale (da cui il nome di *filtro passa-basso*).
]


=== Diagrammi cartesiani e di Bode del filtro passa-basso

In scala lineare, l'andamento del modulo $|macron(H)|$ in funzione della pulsazione normalizzata $omega / omega_0$ parte dal valore unitario per $omega = 0$, assume il valore $1 / sqrt(2)$ in corrispondenza della pulsazione di taglio $omega / omega_0 = 1$ e tende asintoticamente a zero per $omega -> infinity$:

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig03.typ"
]



Passando alla rappresentazione semilogaritmica dei *diagrammi di Bode* (modulo $|macron(H)|_"dB"$ e fase $angle macron(H)$ in funzione di $omega / omega_0$), si ottengono gli andamenti riportati di seguito:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: center + horizon,
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig04.typ"
    ],
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig05.typ"
    ]
  )
]



== Filtro passa-alto (circuito CR)

Scambiando la posizione del resistore e del condensatore si ottiene il circuito $C R$ mostrato in figura, nel quale $macron(Z)_1 = 1 / (j omega C) = -j / (omega C)$ è posta in serie e $macron(Z)_2 = R$ è posta in derivazione. L'uscita a vuoto $macron(V)_"out"$ viene prelevata ai capi del resistore $R$.

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig06.typ"
]

Applicando il partitore di tensione, la tensione a vuoto sul resistore $R$, nota $macron(V)_"in"$, è data da:

// VERIFICA: passaggi algebrici dedotti dalla Slide 10
$ macron(V)_"out" = frac(R, R + frac(1, j omega C)) macron(V)_"in" = frac(1, 1 - j frac(1, omega R C)) macron(V)_"in" $

Definendo la medesima pulsazione di taglio $omega_0 = 1 / (R C)$, la funzione di trasferimento del filtro passa-alto si scrive come:

$ macron(H)(j omega) = frac(macron(V)_"out", macron(V)_"in") = frac(1, 1 - j frac(omega_0, omega)) = frac(j frac(omega, omega_0), 1 + j frac(omega, omega_0)) $

=== Modulo, fase e comportamento asintotico

Il modulo e la fase della funzione di trasferimento del filtro passa-alto sono espressi da:

// VERIFICA: equazioni dedotte dalla Slide 11
$ |macron(H)(j omega)| = frac(1, sqrt(1 + (frac(omega_0, omega))^2)) $

$ angle macron(H)(j omega) = arctan(frac(omega_0, omega)) $

Il modulo in decibel risulta:

$ |macron(H)|_"dB" = 20 log_10 |macron(H)| = 20 log_10 frac(1, sqrt(1 + (frac(omega_0, omega))^2)) = -20 log_10 sqrt(1 + (frac(omega_0, omega))^2) $

Assumendo una tensione di ingresso con fase nulla, $macron(V)_"in" = V_"in" e^(j 0)$, si ottengono direttamente l'ampiezza e la fase della tensione di uscita:

$ V_"out" = |macron(H)| V_"in" , quad angle macron(V)_"out" = angle macron(H) $

Il comportamento asintotico nei tre regimi di pulsazione è sintetizzato nella tabella seguente:

#align(center)[
  #table(
    columns: (25%, 25%, 25%, 25%),
    align: (center + horizon, center + horizon, center + horizon, center + horizon),
    table.header(
      [*Regime di pulsazione*], [*$|macron(H)|$*], [*$|macron(H)|_"dB"$ \[dB\]*], [*$angle macron(H)$ \[rad\]*]
    ),
    table.hline(),
    [$omega lt.double omega_0$], [$tilde.eq frac(omega, omega_0)$], [$20 log_10 frac(omega, omega_0)$], [$tilde.eq frac(pi, 2)$],
    [$omega = omega_0$], [$frac(1, sqrt(2)) approx 0.707$], [$tilde.eq -3$], [$frac(pi, 4)$],
    [$omega gt.double omega_0$], [$tilde.eq 1$], [$tilde.eq 0$], [$tilde.eq 0$],
  )
]

#nota[
  Per pulsazioni molto inferiori a quella di taglio ($omega lt.double omega_0$), il modulo in dB cresce con pendenza di *+20 dB per ogni decade* di $omega$. Per alte frequenze ($omega gt.double omega_0$), il condensatore si comporta come un cortocircuito e $|macron(H)| tilde.eq 1$ ($macron(V)_"out" tilde.eq macron(V)_"in"$), lasciando passare inalterate le componenti ad alta frequenza (*filtro passa-alto*).
]



=== Diagrammi cartesiani e di Bode del filtro passa-alto

L'andamento del modulo $|macron(H)|$ in scala lineare mostra che la risposta è nulla in continua ($omega = 0$), vale $1 / sqrt(2)$ alla pulsazione di taglio $omega = omega_0$ e tende asintoticamente a $1$ per $omega gt.double omega_0$:

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig07.typ"
]

I corrispondenti diagrammi di Bode del modulo $|macron(H)|_"dB"$ e della fase $angle macron(H)$ sono riportati di seguito:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: center + horizon,
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig08.typ"
    ],
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig09.typ"
    ]
  )
]



== Circuito RLC serie e risonanza

Si consideri ora un circuito costituito dal collegamento in serie di un resistore $R$ ($macron(Z)_1 = R$), un induttore $L$ ($macron(Z)_2 = j omega L$) e un condensatore $C$ ($macron(Z)_3 = -j / (omega C)$), alimentato da una tensione $macron(V)$ e percorso dalla corrente $macron(I)$, come rappresentato nello schema seguente:

#align(center)[
  #include "figs/Cap3_1_MEC_handouts_appunti-fig10.typ"
]


L'impedenza equivalente complessiva vista ai morsetti di ingresso vale:

// VERIFICA: equazioni della risonanza serie dedotte dalla Slide 15
$ macron(Z)(j omega) = macron(Z)_1 + macron(Z)_2 + macron(Z)_3 = R + j (omega L - frac(1, omega C)) $

Il modulo dell'impedenza è dato da:

$ |macron(Z)(j omega)| = sqrt(R^2 + (omega L - frac(1, omega C))^2) $

La parte immaginaria dell'impedenza (reattanza totale $X(omega) = omega L - 1 / (omega C)$) si annulla quando la reattanza induttiva eguaglia in modulo quella capacitiva:

$ omega L - frac(1, omega C) = 0 quad arrow.r.double quad omega^2 = frac(1, L C) $

Si definisce pertanto *pulsazione di risonanza* $omega_0$ il valore:

$ omega_0 = frac(1, sqrt(L C)) $

Al variare della pulsazione $omega$ rispetto a $omega_0$, il circuito presenta tre comportamenti distinti:
- *Per $omega < omega_0$*: risulta $omega L - 1 / (omega C) < 0$; prevale la reattanza capacitiva e il circuito ha comportamento *ohmico-capacitivo* ($R - C$).
- *Per $omega = omega_0$ (condizione di risonanza)*: risulta $omega_0 L - 1 / (omega_0 C) = 0$; gli effetti reattivi di induttore e condensatore si compensano esattamente e il circuito presenta comportamento *puramente resistivo* ($macron(Z)(j omega_0) = R$).
- *Per $omega > omega_0$*: risulta $omega L - 1 / (omega C) > 0$; prevale la reattanza induttiva e il circuito ha comportamento *ohmico-induttivo* ($R - L$).

#nota[
  Alla pulsazione di risonanza $omega = omega_0$, il modulo dell'impedenza $|macron(Z)|$ raggiunge il suo *valore minimo assoluto*, pari alla sola resistenza $|macron(Z)(j omega_0)|_"min" = R$. Di conseguenza, a parità di ampiezza della tensione di alimentazione $V$, il modulo della corrente $|macron(I)| = V / |macron(Z)|$ e il modulo della tensione sul resistore $|macron(V)_R| = R |macron(I)|$ raggiungono il loro *valore massimo* ($|macron(I)|_"max" = V / R$, $|macron(V)_R|_"max" = V$).
]

Gli andamenti qualitativi del modulo dell'impedenza $|macron(Z)|$ e della grandezza $R |macron(I)| = |macron(V)_R|$ in funzione della pulsazione $omega$ sono illustrati nei grafici seguenti:


#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1.5em,
    align: center + horizon,
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig11.typ"
    ],
    [
      #include "figs/Cap3_1_MEC_handouts_appunti-fig12.typ"
    ]
  )
]