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

#let scala-schemi = 0.75

// Funzione che disegna Circuito + Diagramma Fasoriale per R, C, L, Z
#let schema-fasoriale(tipo, scala: scala-schemi) = scale(
  x: scala * 100%,
  y: scala * 100%,
  reflow: true
)[
  #zap.circuit({
    import zap: *
    import zap.cetz.draw: *

    // Coordinate del bipolo a sinistra
    let xT = 0.0   // X dei morsetti aperti
    let xC = 0.85  // X del ramo verticale del componente
    let yB = 0.0   // Y inferiore
    let yA = 2.2   // Y superiore

    // Fili orizzontali dai morsetti al componente
    wire((xT, yA), (xC, yA))
    wire((xT, yB), (xC, yB))

    // Componente verticale in base al tipo ("R", "C", "L", "Z")
    if tipo == "R" {
      resistor("comp", (xC, yA), (xC, yB), variant: "ieee")
      content((xC + 0.4, 1.1), anchor: "west", $R$)
    } else if tipo == "C" {
      capacitor("comp", (xC, yA), (xC, yB))
      content((xC + 0.45, 1.1), anchor: "west", $j X_C$)
    } else if tipo == "L" {
      inductor("comp", (xC, yA), (xC, yB), variant: "ieee")
      content((xC + 0.4, 1.1), anchor: "west", $j X_L$)
    } else if tipo == "Z" {
      resistor("comp", (xC, yA), (xC, yB), variant: "iec")
      content((xC + 0.4, 1.1), anchor: "west", $overline(Z)$)
    }

    // Morsetti aperti a sinistra
    node("t_top", (xT, yA), fill: false)
    node("t_bot", (xT, yB), fill: false)

    // Freccia della corrente I in alto a sinistra
    line((-0.85, yA), (-0.22, yA), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
    content((-0.53, yA + 0.15), anchor: "south", $overline(I)$)

    // Arco della tensione V tra i morsetti
    bezier(
      (xT - 0.05, yB + 0.15),
      (xT - 0.05, yA - 0.15),
      (xT - 0.48, 1.1),
      stroke: 0.7pt,
      mark: (end: "stealth", fill: black, scale: 1.1)
    )
    content((xT - 0.48, 1.25), anchor: "east", $overline(V)$)

    // Freccia ondulata della potenza complessa S in basso
    bezier((-0.9, 0.45), (-0.55, 0.45), (-0.72, 0.65), stroke: 0.8pt)
    bezier((-0.55, 0.45), (-0.2, 0.45), (-0.38, 0.25), stroke: 0.8pt)
    line((-0.2, 0.45), (0.15, 0.45), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
    content((-0.95, 0.45), anchor: "east", $overline(S)$)

    // --- DIAGRAMMI FASORIALI A DESTRA ---
    if tipo == "R" {
      // V e I in fase (collineari)
      let p0 = (2.4, 0.3)
      line(p0, (3.6, 1.14), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      line(p0, (4.3, 1.63), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      content((3.2, 0.95), anchor: "south-east", $overline(V)$)
      content((3.9, 1.45), anchor: "south-east", $overline(I)$)

    } else if tipo == "C" {
      // I in anticipo di 90° rispetto a V
      let p0 = (3.1, 0.3)
      line(p0, (4.7, 1.42), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      line(p0, (2.4, 1.3), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      content((4.3, 1.3), anchor: "south-east", $overline(V)$)
      content((2.6, 1.35), anchor: "south-west", $overline(I)$)

    } else if tipo == "L" {
      // V in anticipo di 90° rispetto a I
      let p0 = (3.1, 0.3)
      line(p0, (4.7, 1.42), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      line(p0, (2.4, 1.3), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      content((4.3, 1.3), anchor: "south-east", $overline(I)$)
      content((2.6, 1.35), anchor: "south-west", $overline(V)$)

    } else if tipo == "Z" {
      // V verticale e I sfasato di un angolo phi
      let p0 = (2.8, 0.1)
      line(p0, (2.8, 1.8), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      line(p0, (3.85, 1.55), stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 1.1))
      // Archetto dell'angolo phi
      bezier((2.8, 0.95), (3.3, 0.78), (3.08, 0.93), stroke: 0.6pt)
      content((2.8, 1.88), anchor: "south", $overline(V)$)
      content((3.92, 1.5), anchor: "west", $overline(I)$)
      content((3.12, 0.98), anchor: "south", $phi$)
    }
  })
]

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

= Potenza in regime sinusoidale

== Introduzione

Nelle applicazioni industriali, le reti elettriche operanti in regime sinusoidale sono impiegate per trasferire potenza dai generatori ai carichi utilizzatori. In condizioni di regime sinusoidale permanente, l'espressione della potenza assume una forma particolare, ottenuta mediante manipolazioni trigonometriche della formula generale della potenza istantanea, che consente di mettere in evidenza i meccanismi fisici peculiari di questo regime di funzionamento.

== Potenza istantanea e angolo di sfasamento

Considerando un generico bipolo elettrico per il quale si adotta la convenzione degli utilizzatori, la potenza istantanea assorbita al tempo $t$ è definita dal prodotto tra la tensione ai morsetti e la corrente entrante:

$ p(t) = v(t) i(t) $

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig01.typ"
]

In condizioni di regime sinusoidale, indicando con $V$ e $I$ i valori efficaci e con $varphi_V$ e $varphi_I$ le fasi iniziali (rappresentate nel piano complesso dai fasori $macron(V) = V e^(j varphi_V)$ e $macron(I) = I e^(j varphi_I)$), le grandezze temporali di tensione e corrente si esprimono come: // VERIFICA: dedotto dall'equazione

$ cases(
  v(t) = sqrt(2) V sin(omega t + varphi_V),
  i(t) = sqrt(2) I sin(omega t + varphi_I)
) $

L'andamento nel tempo su un periodo delle grandezze istantanee di tensione, corrente e della risultante potenza $p(t)$ è riportato nel grafico seguente.

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig02.typ"
]

Sostituendo le espressioni temporali di tensione e corrente nella definizione di potenza istantanea si ottiene:

$ p(t) = sqrt(2) V sin(omega t + varphi_V) sqrt(2) I sin(omega t + varphi_I) = 2 V I sin(omega t + varphi_V) sin(omega t + varphi_I) $

Ricordando dalla trigonometria la formula di Werner per il prodotto di due funzioni sinusoidali: // VERIFICA: dedotto dall'equazione

$ sin alpha sin beta = 1 / 2 [cos(alpha - beta) - cos(alpha + beta)] $

e ponendo $alpha = omega t + varphi_V$ e $beta = omega t + varphi_I$, l'espressione della potenza istantanea può essere rielaborata come:

$ p(t) = 2 V I dot 1 / 2 [cos(varphi_V - varphi_I) - cos(2 omega t + varphi_V + varphi_I)] $

#nota[
  Si definisce *angolo di sfasamento* $varphi$ la differenza tra la fase della tensione e la fase della corrente:
  $ varphi = varphi_V - varphi_I $
  Tale angolo è fisicamente molto importante poiché, sebbene indicato talvolta con simbolo differente, coincide con l'argomento dell'impedenza complessa $macron(Z)$ del bipolo: // VERIFICA: dedotto dall'equazione
  $ macron(Z) = macron(V) / macron(I) = (V e^(j varphi_V)) / (I e^(j varphi_I)) = V / I e^(j (varphi_V - varphi_I)) = Z e^(j varphi) $
]

Introducendo l'angolo di sfasamento $varphi$, la potenza istantanea assume la forma:

$ p(t) = V I [cos varphi - cos(2 omega t + varphi_V + varphi_I)] $

== Componenti attiva e reattiva della potenza istantanea

Data la rilevanza fisica dell'angolo caratteristico $varphi = varphi_V - varphi_I$, è opportuno manipolare algebricamente l'argomento del secondo termine coseno affinché compaia esplicitamente l'angolo $varphi$ anche nella parte variabile nel tempo. Sommando e sottraendo la fase della corrente $varphi_I$ si ha:

$ 2 omega t + varphi_V + varphi_I = 2 omega t + varphi_V - varphi_I + varphi_I + varphi_I = 2(omega t + varphi_I) + varphi $

Sostituendo tale identità nella formula della potenza istantanea si ottiene:

$ p(t) = V I {cos varphi - cos[2(omega t + varphi_I) + varphi]} $

Sfruttando la formula trigonometrica di addizione del coseno: // VERIFICA: dedotto dall'equazione

$ cos(alpha + beta) = cos alpha cos beta - sin alpha sin beta $

con $alpha = 2(omega t + varphi_I)$ e $beta = varphi$, è possibile sviluppare il secondo termine raccogliendo a fattor comune i termini dipendenti da $cos varphi$ e da $sin varphi$.

La potenza istantanea viene così suddivisa nella somma di due contributi dotati di un preciso significato fisico e pratico:

$ p(t) = p_a(t) + p_r(t) $

- *Componente attiva della potenza istantanea* $p_a(t)$:
  $ p_a(t) = V I cos varphi [1 - cos 2(omega t + varphi_I)] $

- *Componente reattiva della potenza istantanea* $p_r(t)$:
  $ p_r(t) = V I sin varphi sin 2(omega t + varphi_I) $

Entrambe le componenti oscillano a frequenza doppia rispetto alla tensione $v(t)$ e alla corrente $i(t)$ (pulsazione pari a $2 omega$). Come illustrato nei grafici seguenti, la componente attiva $p_a(t)$ non cambia mai segno (rimane sempre maggiore o uguale a zero se $|varphi| <= pi/2$) e oscilla tra $0$ e il valore massimo $2 V I cos varphi$ attorno al valore medio $V I cos varphi$. La componente reattiva $p_r(t)$ è invece una sinusoide pura a valor medio nullo che oscilla simmetricamente tra $+V I sin varphi$ e $-V I sin varphi$.

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig03.typ"
]

== Casi particolari: bipoli passivi elementari

Analizziamo il comportamento energetico dei tre bipoli ideali passivi (resistore, condensatore e induttore) partendo dalle espressioni generali delle componenti attiva e reattiva:

$ p_a(t) = V I cos varphi [1 - cos 2(omega t + varphi_I)], quad p_r(t) = V I sin varphi sin 2(omega t + varphi_I) $

=== Resistore

Per un resistore ideale di resistenza $R$, la relazione fasoriale tra tensione e corrente è puramente reale:

$ macron(V) = R macron(I) arrow.r.double varphi = varphi_V - varphi_I = 0 arrow.r.double cases(sin varphi = 0, cos varphi = 1) $

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig04.typ"
]

Sostituendo tali valori nelle espressioni generali, la componente reattiva si annulla identicamente mentre la potenza istantanea coincide con la sola componente attiva:

$ cases(
  p_r(t) = 0,
  p_a(t) = V I [1 - cos 2(omega t + varphi_I)] >= 0
) $

#nota[
  Nel resistore ideale, $p_a(t)$ è sempre positiva (o al più nulla negli istanti di passaggio per lo zero di tensione e corrente), presenta valor medio pari a $V I$ e oscilla con ampiezza picco-picco pari a $2 V I$. Il bipolo assorbe sempre energia dalla rete dissipandola per effetto Joule.
]

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig05.typ"
]

=== Condensatore

Per un condensatore ideale di capacità $C$, la tensione è in ritardo di $pi/2$ rispetto alla corrente:

$ macron(V) = - j / (omega C) macron(I) arrow.r.double varphi = varphi_V - varphi_I = - pi / 2 arrow.r.double cases(sin varphi = -1, cos varphi = 0) $

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig06.typ"
]

Sostituendo $varphi = -pi/2$ nelle equazioni della potenza istantanea si ottiene:

$ cases(
  p_a(t) = 0,
  p_r(t) = - V I sin 2(omega t + varphi_I)
) $

Nel condensatore la componente attiva è identicamente nulla, mentre la componente reattiva $p_r(t)$ presenta valor medio nullo e ampiezza pari a $V I$.

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig07.typ"
]

=== Induttore

Per un induttore ideale di induttanza $L$, la tensione è in anticipo di $pi/2$ rispetto alla corrente:

$ macron(V) = j omega L macron(I) arrow.r.double varphi = varphi_V - varphi_I = + pi / 2 arrow.r.double cases(sin varphi = 1, cos varphi = 0) $

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig08.typ"
]

Sostituendo $varphi = +pi/2$ nelle espressioni generali si ottiene:

$ cases(
  p_a(t) = 0,
  p_r(t) = V I sin 2(omega t + varphi_I)
) $

Anche nell'induttore ideale la componente attiva è nulla, mentre la potenza reattiva $p_r(t)$ oscilla con valor medio nullo e ampiezza $V I$.

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig09.typ"
]

=== Confronto energetico tra induttore e condensatore

Assumendo una comune fase di riferimento (ad esempio ponendo la tensione con fase iniziale nulla $v(t) = sqrt(2) V sin(omega t)$), le potenze reattive istantanee del condensatore e dell'induttore risultano in opposizione di fase: // VERIFICA: dedotto dall'equazione

$ cases(
  p_(r, C)(t) = V I sin(2 omega t),
  p_(r, L)(t) = - V I sin(2 omega t)
) $

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig10.typ"
]

#nota[
  Negli intervalli di tempo in cui la potenza reattiva istantanea del condensatore è positiva (il condensatore assorbe energia immagazzinandola nel campo elettrico), quella dell'induttore è negativa (l'induttore cede l'energia immagazzinata nel campo magnetico), e viceversa. In un bipolo generico con sfasamento $varphi$ qualsiasi, sono invece presenti contemporaneamente sia la componente attiva $p_a(t)$ sia la componente reattiva $p_r(t)$.
]

// ==========================================
// SLIDE 16 - 30
// ==========================================

== Caso Generale: Impedenza Generica ed Energia Scambiata

In generale, se l'angolo di sfasamento verifica la condizione $-pi / 2 <= phi <= pi / 2$, ovvero se l'impedenza $overline(Z)$ presenta sia parte reale sia parte immaginaria, entrambe le componenti $p_a (t)$ e $p_r (t)$ compaiono nell'espressione della potenza istantanea $p(t)$.

Nella figura seguente è riportato l'andamento temporale di $p(t)$, $p_a (t)$ e $p_r (t)$ nel caso esemplificativo in cui $phi_V = 0$, $phi_I = pi / 6$ e quindi $phi = phi_V - phi_I = -pi / 6$:
// VERIFICA: valori di fase dedotti dal grafico e dai frammenti OCR della slide 16

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig11.typ"
]

L'energia complessiva $w(t)$ scambiata dal bipolo nell'intervallo $[0, t]$ si ottiene integrando nel tempo la potenza istantanea $p(t)$:

$ w(t) = integral_0^t p(t') dif t' = integral_0^t [p_a (t') + p_r (t')] dif t' = integral_0^t p_a (t') dif t' + integral_0^t p_r (t') dif t' $

== Potenza Attiva

L'energia netta scambiata dal bipolo può essere ricavata dall'integrale nel tempo del termine $p_a (t)$. Assumendo per semplicità $phi_I = 0$, l'integrale di $p_a (t)$ fornisce l'andamento temporale rappresentato nel grafico seguente:

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig12.typ"
]

Il valore di energia scambiato dal bipolo è approssimato dall'integrale del suo termine medio $V I cos phi$, ovvero dalla quantità lineare nel tempo $V I cos phi dot t$.

#nota[
Questa approssimazione è concettualmente importante perché consente di esprimere l'energia scambiata in funzione di una quantità indipendente dal tempo $t$, ottenuta direttamente dai valori efficaci di tensione e corrente e dal fattore di potenza $cos phi$.
]

Tale quantità, che coincide con il valor medio di $p_a (t)$ (e dell'intera potenza istantanea $p(t)$), è denominata *potenza attiva* $P$ ed è definita da:

$ P = V I cos phi $

L'unità di misura della potenza attiva $P$ nel Sistema Internazionale è il *watt* ($"W"$).

== Potenza Reattiva

Nei componenti dinamici o reattivi ($C$ ed $L$), l'unica componente della potenza istantanea è $p_r (t)$. Questo contributo di potenza ha valor medio nullo ($\langle p_r (t) \rangle = 0$) poiché i condensatori e gli induttori immagazzinano e restituiscono alternativamente energia al circuito.

Per tenere conto dell'entità di questi flussi energetici bidirezionali si introduce un nuovo indicatore energetico, denominato *potenza reattiva* $Q$, definito dal fattore moltiplicativo (ampiezza di oscillazione) del termine $sin [2 (omega t + phi_I)]$:

$ Q = V I sin phi $

#nota[
Poiché la potenza reattiva non corrisponde a un lavoro netto convertito (non avendo un diretto significato fisico di potenza media dissipata o prodotta), per distinguerla dalla potenza attiva l'unità di misura di $Q$ non è il watt bensì il *volt-ampere reattivo* ($"VAr"$ o $"var"$).
]

== Potenza Complessa e Triangolo delle Potenze

=== Definizione di Potenza Complessa in un Bipolo

Sia la potenza attiva $P$ sia la potenza reattiva $Q$ sono definite in termini dei valori efficaci $V$ e $I$ e dell'angolo di sfasamento $phi = phi_V - phi_I$ tra di essi. Queste grandezze sono legate ai rispettivi fasori rappresentativi:

$ overline(V) = V e^(j phi_V), quad overline(I) = I e^(j phi_I) ==> overline(I)^* = I e^(-j phi_I) $

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig13.typ"
  ],
  [
    Moltiplicando il fasore della tensione $overline(V)$ per il complesso coniugato del fasore della corrente $overline(I)^*$, si ottiene:

    $ overline(V) overline(I)^* = V e^(j phi_V) I e^(-j phi_I) = V I e^(j (phi_V - phi_I)) = V I e^(j phi) $

    Applicando la formula di Eulero, tale espressione racchiude in un unico numero complesso sia $P$ sia $Q$ e prende il nome di *potenza complessa* $overline(S)$:

    $ overline(S) = overline(V) overline(I)^* = V I (cos phi + j sin phi) = P + j Q $
  ]
)

Il modulo di $overline(S)$ è chiamato *potenza apparente* $S$:

$ S = |overline(S)| = sqrt(P^2 + Q^2) = V I $

La potenza apparente è misurata in *volt-ampere* ($"VA"$). Dalle definizioni introdotte seguono immediatamente le relazioni tra le componenti della potenza complessa:

$ cases(
  P = "Re"[overline(S)] = S cos phi,
  Q = "Im"[overline(S)] = S sin phi
) $

=== Triangolo delle Potenze

L'espressione algebrica della potenza complessa $overline(S) = P + j Q$ lega geometricamente tra loro $P$, $Q$ ed $S$ nel piano complesso all'interno di un triangolo rettangolo denominato *triangolo delle potenze*:

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig14.typ"
]

#nota[
L'angolo $phi$ del triangolo delle potenze esprime sempre la differenza di fase (sfasamento) fra il fasore della tensione e quello della corrente ($phi = phi_V - phi_I$). Di conseguenza:
- Il cateto orizzontale $P = S cos phi$ ha il segno di $cos phi$ (sempre $P >= 0$ per un bipolo passivo).
- Il cateto verticale $Q = S sin phi$ ha il segno di $sin phi$ ($Q > 0$ per carichi di natura induttiva con $phi > 0$; $Q < 0$ per carichi di natura capacitiva con $phi < 0$).
]

=== Potenza Complessa in un'Impedenza

Consideriamo un bipolo passivo caratterizzato da un'impedenza $overline(Z) = R + j X = Z e^(j phi)$, sottoposto alla tensione $overline(V)$ e attraversato dalla corrente $overline(I)$ secondo la convenzione degli utilizzatori.

==== Espressione di $overline(S)$ in funzione della corrente $I$

#grid(
  columns: (1.2fr, 1.8fr, 1.5fr),
  column-gutter: 1em,
  align: (center + horizon, left + horizon, center + horizon),
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig15.typ"
  ],
  [
    Sostituendo la relazione costitutiva dell'impedenza $overline(V) = overline(Z) overline(I)$ nell'espressione della potenza complessa e ricordando che $overline(I) overline(I)^* = |overline(I)|^2 = I^2$, si ottiene:

    $ overline(S) = overline(V) overline(I)^* = (overline(Z) overline(I)) overline(I)^* = overline(Z) I^2 = (R + j X) I^2 = R I^2 + j X I^2 $

    Separando parte reale, parte immaginaria e modulo:
    $ cases(
      P = R I^2,
      Q = X I^2,
      S = |overline(S)| = |overline(Z)| I^2 = Z I^2
    ) $
  ],
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig16.typ"
  ]
)

Il triangolo delle potenze risulta dunque simile al triangolo dell'impedenza, ottenuto moltiplicando ciascun lato ($R$, $X$, $Z$) per il quadrato del valore efficace della corrente $I^2$.

==== Espressione di $overline(S)$ in funzione della tensione $V$

In modo duale, ricavando la corrente come $overline(I) = overline(V) / overline(Z)$ (da cui il coniugato $overline(I)^* = overline(V)^* / overline(Z)^*$) e ricordando che $overline(V) overline(V)^* = |overline(V)|^2 = V^2$, la potenza complessa si esprime in funzione della tensione applicata:
// VERIFICA: sviluppo in funzione di V dedotto dal titolo della slide 27 e dalla tabella riassuntiva della slide 28

$ overline(S) = overline(V) overline(I)^* = overline(V) (overline(V)^* / overline(Z)^*) = V^2 / overline(Z)^* = V^2 / (R - j X) = (R + j X) / (R^2 + X^2) V^2 = R / Z^2 V^2 + j X / Z^2 V^2 $

Da cui si ricavano le espressioni duali per un'impedenza generica:

$ cases(
  P = R / Z^2 V^2 = G V^2,
  Q = X / Z^2 V^2 = -B V^2,
  S = V^2 / Z = Y V^2
) $
#pagebreak()


=== Tabella Riassuntiva dei Bipoli Elementari in Regime Sinusoidale

Nella tabella seguente sono riepilogate le relazioni fasoriali ed energetiche per il resistore, il condensatore, l'induttore e l'impedenza generica:

#align(center)[
  #table(
    columns: (2.8cm, 5cm, 2.5cm,3.2cm, auto),
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
    stroke: 0.5pt + gray,
    table.header(
      [*Bipolo*],
      [*Schema e Fasori*],
      [*Sfasamento* $phi$],
      [*Legge di Ohm \ fasoriale*],
      [*Potenza complessa* $overline(S) = overline(V) overline(I)^*$]
    ),

    // RIGA 1: RESISTORE
    [*Resistore* $R$],
    schema-fasoriale("R"),
    [$phi = 0$],
    [$overline(V) = R overline(I)$],
    [$overline(S) = R I^2 = V^2 / R  \ = P quad (#text(fill: red)[$>= 0$])$],

    // RIGA 2: CONDENSATORE
    [*Condensatore* $C$],
    schema-fasoriale("C"),
    [$phi = -pi / 2$],
    [$overline(V) = j X_C overline(I)$  \ con $X_C = -1 / (omega C)$],
    [$overline(S) = j X_C I^2  \= j V^2 / X_C = j Q_C quad (#text(fill: red)[$<= 0$])$],

    // RIGA 3: INDUTTORE
    [*Induttore* $L$],
    schema-fasoriale("L"),
    [$phi = pi / 2$],
    [$overline(V) = j X_L overline(I)$ \ con $X_L = omega L$],
    [$overline(S) = j X_L I^2 = j V^2 / X_L = j Q_L quad (#text(fill: red)[$>= 0$])$],

    // RIGA 4: IMPEDENZA
    [*Impedenza* $overline(Z)$],
    schema-fasoriale("Z"),
    [$-pi / 2 <= phi <= pi / 2$],
    [$overline(V) = overline(Z) dot overline(I)$],
    [$overline(S) = overline(Z) dot I^2 = V^2 / overline(Z)^* \  = P + j Q$]
  )
]


== Caratterizzazione di un Carico Industriale

Un carico industriale (così come un carico civile) è più convenientemente descritto dalla potenza assorbita ai morsetti, invece che dal valore della sua impedenza equivalente. Ciò è dovuto al fatto che, in generale, un utilizzatore elettrico è progettato per assorbire una determinata potenza quando viene alimentato a una specifica tensione di progetto, detta *tensione nominale*, alla quale corrisponde una *potenza nominale assorbita*.

#nota[
_[Illustrazione nelle slide: schema concettuale di un motore elettrico asincrono trifase alimentato dai flussi di potenza attiva $P$ e potenza reattiva $Q$ in ingresso ai morsetti.]_
]

Un carico in regime sinusoidale è pertanto compiutamente descritto dalle seguenti grandezze caratteristiche ai morsetti:

#grid(
  columns: (1.8fr, 1.2fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    + il valore efficace della tensione applicata $V$;
    + il valore efficace della corrente assorbita $I$;
    + la potenza attiva $P = V I cos phi$;
    + la potenza reattiva $Q = V I sin phi$;
    + la potenza apparente $S = sqrt(P^2 + Q^2) = V I$;
    + il fattore di potenza $cos phi$, legato allo sfasamento dalla relazione $phi = arctan(Q / P)$.
  ],
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig17.typ"
  ]
)

#nota[
Nota la tensione $V$ (o la corrente $I$), è sufficiente conoscere altre *due* grandezze qualsiasi ai morsetti (ad esempio la coppia $(P, cos phi)$ oppure $(P, Q)$) per ricavare univocamente tutte le altre mediante le relazioni trigonometriche del triangolo delle potenze.
]

// ==========================================
// SLIDE 31 - 45
// ==========================================

== Teorema di Boucherot e Bilancio delle Potenze

=== Relazioni tra Potenza Complessa, Attiva e Reattiva

A partire dalle componenti della potenza complessa $macron(S) = P + j Q$, è possibile ricavare l'angolo di sfasamento $varphi$ (e quindi il fattore di potenza) e il modulo della potenza apparente $S$:

$ varphi = tan^(-1) (Q / P) $

$ S = sqrt(P^2 + Q^2) = V I $

Note la potenza attiva $P$ e la potenza reattiva $Q$ assorbite da un bipolo (o da una sezione di rete), è possibile esprimere direttamente il valore efficace della corrente $I$ (nota la tensione $V$) oppure della tensione $V$ (nota la corrente $I$):

$ I = S / V = sqrt(P^2 + Q^2) / V = P / (V cos varphi) = P / (V cos (tan^(-1) (Q / P))) $

$ V = S / I = sqrt(P^2 + Q^2) / I $

=== Conservazione della Potenza Complessa (Teorema di Boucherot)

Lo studio dei flussi di potenza in regime sinusoidale si fonda sul *Teorema di Boucherot*, il quale esprime un'equazione di bilancio per la potenza attiva e per la potenza reattiva nelle reti elettriche. Tale teorema consente inoltre di risolvere in modo agevole i circuiti caratterizzati da una topologia semplice a flusso unidirezionale e mette in luce una problematica tipica dei sistemi di distribuzione industriale, risolvibile mediante la tecnica del *rifasamento*.

Data una rete elettrica operante in regime sinusoidale costituita da $N_"sou"$ componenti descritti con la convenzione dei generatori e da $N_"load"$ componenti descritti con la convenzione degli utilizzatori, vale l'equazione di bilancio della potenza complessa:

$ sum_(k = 1)^(N_"sou") macron(S)_k = sum_(n = 1)^(N_"load") macron(S)_n $

Esplicitando la potenza complessa di ciascun generatore come $macron(S)_k = P_k + j Q_k$ e quella di ciascun utilizzatore come $macron(S)_n = P_n + j Q_n$, la relazione di bilancio diventa:

$ sum_(k = 1)^(N_"sou") (P_k + j Q_k) = sum_(n = 1)^(N_"load") (P_n + j Q_n) $

Uguagliando separatamente le parti reali e le parti immaginarie dei due membri, si ottengono le due equazioni scalari di conservazione della potenza attiva e della potenza reattiva:

$ cases(
  display(sum_(k = 1)^(N_"sou") P_k = sum_(n = 1)^(N_"load") P_n),
  display(sum_(k = 1)^(N_"sou") Q_k = sum_(n = 1)^(N_"load") Q_n)
) $

#nota[
  Il teorema di Boucherot impone il bilanciamento separato delle potenze attive e reattive tra sorgenti e carichi. Mentre le potenze attive assorbite dai carichi passivi sono sempre positive, la potenza reattiva $Q_n$ può avere *segno positivo* (carico induttivo) oppure *segno negativo* (carico capacitivo). Di conseguenza, la sommatoria al secondo membro $sum_(n = 1)^(N_"load") Q_n$ può risultare uguale a zero (o ridursi sensibilmente) anche quando i singoli termini $Q_n$ sono diversi da zero.
]

=== Metodo di Soluzione Circuitale tramite il Bilancio di Potenza

Il teorema di Boucherot costituisce un efficace strumento di calcolo per la risoluzione di circuiti aventi una topologia a *"flusso unidirezionale"* (reti radiali), nei quali sono note le potenze assorbite dai carichi e la tensione ai loro morsetti.

Si consideri il circuito seguente, in cui un generatore alimenta due carichi in parallelo (di cui sono note le potenze attive e reattive $P_1, Q_1$ e $P_2, Q_2$ e il valore efficace della tensione comune $V$) attraverso una linea di trasmissione caratterizzata dall'impedenza longitudinale $macron(Z)_l = R_l + j X_l$:

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig18.typ"
]

La procedura di risoluzione procede a ritroso dai carichi verso il generatore attraverso i seguenti passaggi:

1. *Bilancio alla sezione $A$ (a monte dei carichi):*
   Applicando il teorema di Boucherot alla sezione $A$, la potenza complessa totale richiesta dall'insieme dei carichi $macron(S)_"load"$ è data dalla somma delle potenze dei singoli utilizzatori:
   $ macron(S)_"load" = macron(S)_1 + macron(S)_2 arrow.r.double cases(
     P_"load" = P_1 + P_2,
     Q_"load" = Q_1 + Q_2
   ) $
   Essendo nota la tensione $V$ ai capi dei carichi, si ricava il valore efficace della corrente di linea $I$:
   $ I = S_"load" / V = sqrt(P_"load"^2 + Q_"load"^2) / V = P_"load" / (V cos varphi_"load") = P_"load" / (V cos (tan^(-1) (Q_"load" / P_"load"))) $

2. *Potenza impegnata sulla linea di trasmissione:*
   La potenza $macron(S)_"load"$ non è l'unica potenza che deve essere erogata dal generatore: procedendo verso la sezione $B$, occorre tenere conto anche della potenza assorbita dall'impedenza di linea $macron(Z)_l = R_l + j X_l$, la quale equivale alla serie di una resistenza $R_l$ e di una reattanza $X_l$:

   #grid(
     columns: (1fr, 1fr),
     column-gutter: 1.5em,
     align: (center + horizon, left + horizon),
     [
       #include "figs/Cap4_MEC_handouts_appunti-fig19.typ"
     ],
     [
       Nota la corrente $I$ che percorre la linea, la potenza complessa $macron(S)_l$ impegnata sulla linea vale:
       $ macron(S)_l = macron(Z)_l I^2 = R_l I^2 + j X_l I^2 $
       da cui si separano le perdite attive e la potenza reattiva di linea:
       $ cases(
         P_l = R_l I^2,
         Q_l = X_l I^2
       ) $
     ]
   )

3. *Bilancio alla sezione $B$ (ai morsetti del generatore):*
   Alla sezione $B$, l'intera rete a valle del generatore (linea più carichi) assorbe una potenza attiva $P_"sou"$ e una potenza reattiva $Q_"sou"$ pari alla somma dei contributi dei carichi e della linea:

   #grid(
     columns: (1fr, 1.3fr),
     column-gutter: 1.5em,
     align: (center + horizon, left + horizon),
     [
       #include "figs/Cap4_MEC_handouts_appunti-fig20.typ"
     ],
     [
       $ cases(
         P_"sou" = P_"load" + P_l,
         Q_"sou" = Q_"load" + Q_l
       ) $
       $ varphi_"sou" = tan^(-1) (Q_"sou" / P_"sou") $
       Dalla potenza erogata dal generatore $P_"sou" = E I cos varphi_"sou"$ (oppure dalla potenza apparente $S_"sou" = sqrt(P_"sou"^2 + Q_"sou"^2) = E I$) si determina infine il valore efficace della tensione di sorgente $E$:
       $ E = P_"sou" / (I cos varphi_"sou") = sqrt(P_"sou"^2 + Q_"sou"^2) / I $
     ]
   )

= Rendimento di Linea e Rifasamento

== Rendimento di una Linea di Trasmissione

Lo studio dei flussi di potenza mediante il teorema di Boucherot evidenzia il problema dell'efficienza con cui l'energia elettrica viene trasferita dai generatori agli utilizzatori attraverso le linee di distribuzione. Una linea di trasmissione può infatti essere modellata come un dispositivo che trasferisce potenza e al quale è associato un *rendimento di trasmissione* $eta$:

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig21.typ"
]

Indicando con $P_"in"$ la potenza attiva in ingresso alla linea, con $P_"out"$ la potenza attiva ceduta al carico in uscita e con $P_l = R_l I^2$ la potenza attiva dissipata per effetto Joule sulla resistenza di linea $R_l$, per il bilancio delle potenze attive si ha:

$ P_"in" = P_"out" + P_l $

Il rendimento della linea $eta$ è definito come il rapporto tra la potenza attiva utile in uscita e la potenza attiva totale in ingresso:

$ eta = P_"out" / P_"in" = P_"out" / (P_"out" + P_l) $

#nota[
  A parità di potenza attiva $P_"out"$ richiesta dal carico, una diminuzione delle perdite di linea $P_l$ comporta un aumento del rendimento $eta$ della linea di trasmissione.
]

== Importanza ed Effetti della Potenza Reattiva $Q$ sul Circuito

La presenza di una potenza reattiva $Q_"out"$ assorbita a valle della linea incrementa le perdite per effetto Joule nel circuito. Infatti, il valore efficace della corrente $I$ che attraversa la linea di trasmissione dipende sia dalla potenza attiva $P_"out"$ sia dalla potenza reattiva $Q_"out"$ assorbite dal carico alla tensione $V$:

$ I = sqrt(P_"out"^2 + Q_"out"^2) / V $

Esprimendo le perdite di linea $P_"line" = P_l = R_l I^2$ in funzione delle potenze trasmesse a valle, si ottiene:

$ P_"line" = R_l I^2 = R_l (P_"out"^2 + Q_"out"^2) / V^2 $

e il rendimento della linea assume l'espressione:

$ eta = P_"out" / (P_"out" + P_"line") = P_"out" / (P_"out" + R_l I^2) = P_"out" / (P_"out" + R_l display((P_"out"^2 + Q_"out"^2) / V^2)) $

#nota[
  A parità di potenza attiva $P_"out"$ trasferita a valle della linea e a parità di tensione di alimentazione $V$, le perdite di linea $P_"line"$ (e di conseguenza il rendimento $eta$) sono direttamente penalizzate dalla potenza reattiva $Q_"out"$.
]

Un classico esempio industriale di flusso di potenza reattiva riguarda il funzionamento dei *motori elettrici* (come i motori asincroni), i quali sono caratterizzati da una componente di potenza reattiva induttiva $Q > 0$ non trascurabile necessaria per la creazione del campo magnetico. La produzione locale di tale potenza reattiva mediante un *condensatore* collegato in prossimità del carico evita o riduce il transito della potenza reattiva lungo la linea di distribuzione.

== Principio del Rifasamento e Minimizzazione delle Perdite di Linea

La corretta gestione della linea di trasmissione deve mirare a minimizzare la corrente in transito sulla linea stessa, senza però alterare la potenza attiva $P$ trasmessa al carico ($P' = P$) né la sua tensione di alimentazione $V$.
#pagebreak()

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    *Carico non rifasato*
    #include "figs/Cap4_MEC_handouts_appunti-fig22.typ"
  ],
  [
    *Triangolo delle potenze (non rifasato)*
    #include "figs/Cap4_MEC_handouts_appunti-fig23.typ"
  ]
)

Inserendo un condensatore $C$ a monte del carico (che assorbe una potenza reattiva negativa $Q_c < 0$, ovvero eroga localmente potenza reattiva induttiva al motore), la potenza reattiva $Q'$ richiesta alla linea si riduce:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    *Carico rifasato con condensatore*
    #include "figs/Cap4_MEC_handouts_appunti-fig24.typ"
  ],
  [
    *Triangolo delle potenze (rifasato)*
    #include "figs/Cap4_MEC_handouts_appunti-fig25.typ"
  ]
)

Il condensatore viene collegato *in parallelo* al carico, in modo da essere sottoposto alla medesima tensione $V$ senza alterare la tensione di alimentazione del carico stesso:

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig26.typ"
]

Confrontiamo infine analiticamente il funzionamento del sistema prima e dopo l'inserimento della capacità di rifasamento $C$, considerando una linea con impedenza $macron(Z)_"linea" = R_"linea" + j X_"linea"$:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    *Senza condensatore di rifasamento*
    #include "figs/Cap4_MEC_handouts_appunti-fig27.typ"

    $ I = S / V = sqrt(P^2 + Q^2) / V $
    $ P_"linea" = R_"linea" I^2 = R_"linea" (P^2 + Q^2) / V^2 $
  ],
  [
    *Con condensatore di rifasamento in parallelo*
    #include "figs/Cap4_MEC_handouts_appunti-fig28.typ"

    $ I' = S' / V = sqrt(P^2 + Q'^2) / V < I $
    $ P'_"linea" = R_"linea" I'^2 = R_"linea" (P^2 + Q'^2) / V^2 < P_"linea" $
  ]
)

Poiché il condensatore non assorbe potenza attiva ($P_c = 0$) e assorbe una potenza reattiva $Q_c < 0$, la potenza reattiva complessiva che transita sulla linea si riduce a:

$ Q' = Q + Q_c < Q $

Di conseguenza diminuiscono la corrente di linea ($I' < I$) e le perdite per effetto Joule ($P'_"linea" < P_"linea"$), determinando un incremento del rendimento di trasmissione:

$ eta' = P / (P + P'_"linea") > eta = P / (P + P_"linea") $

// ==========================================
// SLIDE 46 - 52
// ==========================================

== Rifasamento mediante condensatore in parallelo

Per ridurre gli effetti negativi legati all'assorbimento di potenza reattiva induttiva da parte dell'utenza, si ricorre all'operazione di *rifasamento*, che consiste nel connettere un condensatore di capacità $C$ in parallelo al carico utilizzatore $macron(Z)_U$.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig29.typ"
  ],
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig30.typ"
  ]
)

Applicando la legge di Kirchhoff delle correnti al nodo a monte del carico ed effettuando il bilancio energetico, si osservano due effetti fondamentali:
- *Bilancio delle potenze reattive*: per il teorema di Boucherot, la potenza reattiva complessiva $Q'$ richiesta a monte del condensatore è data dalla somma algebrica
  $ Q' = Q + Q_C $
- *Bilancio delle correnti*: la corrente di linea dopo il rifasamento è pari a
  $ macron(I)' = macron(I) + macron(I)_C $
  Come evidenziato dal diagramma fasoriale, la corrente capacitiva $macron(I)_C$ (in quadratura in anticipo rispetto alla tensione $macron(V)$) compensa parzialmente la componente in quadratura in ritardo della corrente del carico $macron(I)$. Di conseguenza, a parità di potenza attiva trasferita all'utilizzatore, si ottiene una riduzione sia dell'angolo di sfasamento sia del valore efficace della corrente di linea:
  $ |macron(I)'| < |macron(I)|, quad phi' < phi $

Poiché la linea di trasmissione è caratterizzata da una propria impedenza $macron(Z)_"l" = R_"l" + j X_"l"$, la diminuzione del modulo della corrente da $I$ a $I'$ riduce sensibilmente le perdite di potenza attiva per effetto Joule e l'impegno di potenza reattiva sulla linea stessa:
$ P_"l" = R_"l" I'^2, quad Q_"l" = X_"l" I'^2 $ // VERIFICA: dedotto dall'equazione

=== Calcolo della capacità di rifasamento

La potenza reattiva assorbita dal condensatore è negativa ($Q_C < 0$) e compensa quella positiva ($Q > 0$) assorbita dal carico induttivo. Nella pratica ingegneristica, una compensazione totale ($Q_C = -Q$, ovvero $phi' = 0$) non è quasi mai necessaria: è sufficiente ridurre l'angolo di sfasamento da $phi$ a un valore obiettivo $phi'$ tale da garantire un prefissato fattore di potenza $cos phi'$.

Il problema del dimensionamento del condensatore di rifasamento si formula pertanto come segue: noti il valore efficace della tensione di alimentazione $V$, la potenza attiva $P$ e la potenza reattiva $Q$ assorbite dal carico (oppure il suo fattore di potenza iniziale $cos phi$), determinare la capacità $C$ necessaria affinché il complesso carico-condensatore presenti un fattore di potenza pari a $cos phi'$.

#grid(
  columns: (1fr, 1.1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig31.typ"
  ],
  [
    #include "figs/Cap4_MEC_handouts_appunti-fig32.typ"
  ]
)

Applicando il teorema di Boucherot alle sezioni a monte e a valle del condensatore (avendo supposto il condensatore ideale, ossia privo di dissipazione attiva $P_C = 0$), il sistema di equazioni di bilancio risulta:
$ cases(
  P' = P,
  Q' = Q + Q_C,
  tan phi' = display(Q' / P')
) quad ==> quad Q' = P' tan phi' = P tan phi' quad ==> quad Q + Q_C = P tan phi' $

Esplicitando la potenza reattiva $Q_C$ che deve essere fornita dal condensatore e ricordando che per il carico non rifasato vale $Q = P tan phi$, si ottiene:
$ Q_C = P tan phi' - Q = P tan phi' - P tan phi = P (tan phi' - tan phi) $

D'altra parte, la potenza reattiva assorbita da un condensatore di capacità $C$ sottoposto alla tensione efficace $V$ alla pulsazione $omega = 2 pi f$ (con sfasamento tensione-corrente pari a $phi_C = -pi / 2$) vale:
$ Q_C = V I_C sin(- pi / 2) = V (omega C V) (-1) = - omega C V^2 $

Uguagliando le due espressioni di $Q_C$, si ricava la formula di progetto per la capacità di rifasamento:
$ - omega C V^2 = P (tan phi' - tan phi) quad ==> quad C = frac(P (tan phi - tan phi'), omega V^2) $

#nota[
  Se nei dati del problema sono assegnati i fattori di potenza iniziale $cos phi$ e finale $cos phi'$, gli angoli corrispondenti si determinano mediante la funzione inversa:
  $ phi = arccos(cos phi), quad phi' = arccos(cos phi') $
  Nei sistemi industriali, qualora l'assorbimento del carico vari nel tempo, anziché impiegare un unico condensatore fisso si utilizza una *batteria di condensatori* in parallelo inseribili tramite interruttori, così da modulare a gradini la capacità complessiva collegata alla rete.
]

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig33.typ"
]

=== Scelta del fattore di potenza obiettivo e aspetti normativi

Il valore obiettivo del fattore di potenza rifasato $cos phi'$ non è fissato in base ai valori istantanei delle potenze, bensì in relazione alle grandezze energetiche integrate sull'intero periodo di fatturazione $T$:
- *Energia attiva* (misurata in chilowattora, $"kWh"$):
  $ W_P = integral_T P dif t $
- *Energia reattiva* (misurata in chilovarora, $"kvarh"$):
  $ W_Q = integral_T Q dif t $

A partire dal 2016, in recepimento della Direttiva Europea 2012/27/UE sull'efficienza energetica (attuata in Italia tramite la Delibera AEEG 180/2013/R/EEL), l'energia reattiva viene fornita gratuitamente dal distributore senza applicazione di penali economiche se il fattore di potenza medio è almeno pari a:
$ cos phi' >= 0.95 quad <==> quad frac(W_Q, W_P) = tan phi' <= 0.33 $

#nota[
  La normativa prescrive inoltre che *in nessun caso l'utente possa immettere potenza reattiva capacitiva nella linea di distribuzione* (divieto di sovracompensazione, ovvero deve essere sempre $Q' >= 0$). Per evitare che una batteria di condensatori rimanga inserita a vuoto quando i carichi induttivi sono spenti, negli impianti con più macchine utilizzatrici (ad esempio motori asincroni $M$) si adotta frequentemente il *rifasamento distribuito*, collegando un condensatore dedicato direttamente ai morsetti di ciascun motore.
]

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig34.typ"
]hi induttivi sono spenti, negli impianti con più macchine utilizzatrici (ad esempio motori asincroni $M$) si adotta frequentemente il *rifasamento distribuito*, collegando un condensatore dedicato direttamente ai morsetti di ciascun motore.

#align(center)[
  #include "figs/Cap4_MEC_handouts_appunti-fig35.typ"
]