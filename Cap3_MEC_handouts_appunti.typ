

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
#let scala-tabella = 0.8  // Scala tutta la tabella (es. 0.8 = 80%, 1.2 = 120%)
#let scala-circuiti = 1.0  // Scala SOLO i disegni dei circuiti dentro le celle
// =========================================================================

// Helper sicuro per il testo Sans-Serif (zero warning sui font)


// Funzione per generare ciascun bipolo con parametro "scala" personalizzabile
#let schema-bipolo(tipo, etichetta, scala: 1.0) = scale(
  x: scala * 100%,
  y: scala * 100%,
  reflow: true, // Ricalcola automaticamente gli ingombri nella pagina/tabella!
)[
  #zap.circuit({
    import zap: *
    import zap.cetz.draw: *

    // Stile IEEE (zig-zag per R e spire ad occhiello per L)
    set-style(zap: (variant: "ieee"))

    // 1. Freccia della corrente I staccata a sinistra del morsetto
    line((-1.4, 0), (-0.55, 0), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.3))
    content((-1.0, 0.25), anchor: "south", text(size: 16pt)[$macron(I)$])

    // 2. Componente centrale con morsetti aperti nativi (n: "o-o")
    if tipo == "R" {
      resistor("comp", (0, 0), (2.2, 0), n: "o-o")
    } else if tipo == "L" {
      inductor("comp", (0, 0), (2.2, 0), n: "o-o")
    } else if tipo == "C" {
      capacitor("comp", (0, 0), (2.2, 0), n: "o-o")
    }

    // Etichetta (R, L, C) sotto il componente
    content((1.1, -0.5), anchor: "north", text(size: 16pt, etichetta))

    // 3. Freccia curva della tensione V sopra il componente (da destra a sinistra)
    bezier(
      (2.0, 0.4),
      (0.1, 0.4),
      (1.05, 0.95),
      stroke: 0.6pt,
      mark: (end: "stealth", fill: black, scale: 1.2)
    )
    content((0.95, 0.72), anchor: "south", text(size: 16pt)[$macron(V)$])
  })
]
#let varphi = $phi$
 = Circuiti in regime sinusoidale

== Introduzione alle grandezze variabili nel tempo

Le reti elettriche analizzate in regime stazionario sono dette _statiche_ o _adinamiche_, in quanto la variabile tempo non interviene nelle relazioni circuitali. In tali condizioni, essendo nulle le derivate temporali delle grandezze elettriche, i componenti dinamici (induttori $L$ e condensatori $C$) sono caratterizzati dalle seguenti equazioni costitutive:

$ i_C = C ("d"v_C) / ("d"t) = 0, quad v_L = L ("d"i_L) / ("d"t) = 0 $ // VERIFICA: dedotto dall'equazione

Quando invece le correnti e le tensioni sono grandezze variabili nel tempo, ovvero $i = i(t)$ e $v = v(t)$, anche i bipoli dinamici $L$ e $C$ intervengono attivamente nel funzionamento della rete elettrica (ad esempio durante i fenomeni transitori). Tra tutte le possibili leggi di variazione temporale di $i(t)$ e $v(t)$, rivestono particolare importanza in ambito ingegneristico le variazioni di tipo periodico.

== Funzioni periodiche e grandezze caratteristiche

Una grandezza variabile nel tempo $a(t)$ si definisce _periodica_ di periodo $T$ se soddisfa la condizione:

$ a(t_0 + T) = a(t_0) quad forall t_0 $

Al periodo $T$ (misurato in secondi, $"s"$) è associato un valore di frequenza $f$ (misurato in hertz, $"Hz"$), definito come il numero di cicli compiuti nell'unità di tempo:

$ f = 1 / T quad ["Hz" = "s"^(-1)] $

Si definisce _valore medio_ $a_"ave"$ (o $a_m$) della funzione periodica $a(t)$ sul periodo $T$ l'integrale:

$ a_"ave" = a_m = 1 / T integral_(t_0)^(t_0 + T) a(t) "d"t $

#nota[
Le funzioni periodiche aventi valor medio nullo sul periodo ($a_"ave" = 0$) sono denominate *funzioni alternate*.
]

Per le funzioni alternate risulta particolarmente significativo introdurre il _valore efficace_ (detto anche valore _root mean square_, o $"rms"$), indicato con la lettera maiuscola $A$ e definito come la radice quadrata del valor medio del quadrato della funzione sul periodo $T$:

$ A = sqrt(1 / T integral_(t_0)^(t_0 + T) a^2(t) "d"t) $ // VERIFICA: dedotto dall'equazione

Di seguito sono riportati tre esempi di forme d'onda periodiche alternate di periodo $T$ (onda triangolare, onda quadra e onda cosinusoidale):

#align(center)[
  #grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 1em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig01.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig02.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig03.typ"
    ]
  )
]

== Funzioni sinusoidali

Le funzioni sinusoidali costituiscono le forme d'onda principalmente utilizzate nell'ambito dell'elettrotecnica per la generazione, la trasmissione, la distribuzione e il consumo dell'energia elettrica. Due generiche grandezze sinusoidali isofrequenziali si esprimono analiticamente nella forma:

$ a(t) = hat(A) sin(omega t + varphi) $ // VERIFICA: dedotto dall'equazione
$ b(t) = hat(B) sin(omega t + psi) $ // VERIFICA: dedotto dall'equazione

dove i parametri caratteristici assumono il seguente significato fisico:
- $hat(A), hat(B)$: _ampiezza_ o _valore di picco_ (o valore massimo) della sinusoide;
- $omega = 2 pi f = (2 pi) / T$: _frequenza angolare_ o _pulsazione_, misurata in $"rad/s"$;
- $varphi, psi$: _angolo di fase_ (o fase iniziale), misurato in radianti ($"rad"$) o gradi ($circ$).

#nota[
Nella trattazione seguente si farà riferimento unicamente a funzioni di tipo seno, poiché qualunque funzione coseno può essere ricondotta immediatamente a una funzione seno sfruttando l'identità trigonometrica:
$ cos(alpha) = sin(alpha + pi / 2) $
]

=== Esempio di funzione sinusoidale e valore medio

Si consideri una funzione sinusoidale $a(t) = hat(A) sin(omega t + varphi)$ caratterizzata da un valore di picco $hat(A) = 3$, frequenza $f = 50 "Hz"$, periodo $T = 1 / f = 20 "ms"$ e pulsazione $omega = 2 pi f approx 314 "rad/s"$ (o multipli interi come $628 "rad/s"$).

Il valore medio $a_m$ della funzione sinusoidale calcolato su un intero periodo $T$ è identicamente nullo, poiché l'area sottesa dalla semionda positiva compensa esattamente l'area sottesa dalla semionda negativa:

$ a_m = 1 / T integral_(t_0)^(t_0 + T) a(t) "d"t = 1 / T [ integral_(t_0)^(t_0 + T / 2) a(t) "d"t + integral_(t_0 + T / 2)^(t_0 + T) a(t) "d"t ] = 0 $ // VERIFICA: dedotto dall'equazione

L'andamento temporale di $a(t)$ in funzione dell'argomento angolare $omega t in [0, 2 pi]$ per tre differenti valori della fase iniziale ($varphi = 0$, $varphi = pi/2$, $varphi = -pi/2$) è rappresentato nel grafico seguente:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig04.typ"
]

=== Valore efficace di una funzione sinusoidale

Applicando la definizione generale di valore efficace a una grandezza sinusoidale $a(t) = hat(A) sin(omega t + varphi)$ si ottiene:

$ A = sqrt(1 / T integral_(t_0)^(t_0 + T) hat(A)^2 sin^2(omega t + varphi) "d"t) $ // VERIFICA: dedotto dall'equazione

Ricordando la formula trigonometrica di Werner:

$ sin(alpha) dot sin(beta) = 1 / 2 [cos(alpha - beta) - cos(alpha + beta)] arrow.r.double sin^2(alpha) = 1 / 2 [1 - cos(2 alpha)] $

e sostituendo $alpha = omega t + varphi$, l'integrale del termine cosinusoidale a pulsazione doppia $2 omega$ esteso a un intero periodo $T$ risulta nullo. Si ricava pertanto la relazione fondamentale tra valore di picco e valore efficace di una sinusoide:

$ A = sqrt(hat(A)^2 / T integral_(t_0)^(t_0 + T) 1 / 2 [1 - cos(2(omega t + varphi))] "d"t) = hat(A) / sqrt(2) $ // VERIFICA: dedotto dall'equazione

== Operazioni sulle grandezze sinusoidali

In un circuito elettrico lineare (costituito da bipoli con parametri $R$, $L$, $C$ costanti nel tempo) alimentato da sorgenti sinusoidali isofrequenziali, tutte le correnti e le tensioni di lato a regime sono anch'esse funzioni sinusoidali caratterizzate dalla medesima pulsazione $omega$.

Le leggi di Kirchhoff e le equazioni costitutive devono essere soddisfatte istante per istante dalle grandezze temporali:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig05.typ"
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig06.typ"
    $ i_1(t) + i_2(t) + i_3(t) - i_4(t) = 0 $
  ]
)

Si pone quindi il problema operativo di eseguire somme algebriche (per le leggi di Kirchhoff ai nodi e alle maglie) e derivate temporali (per le equazioni costitutive di induttori e condensatori) su funzioni sinusoidali, determinando il valore efficace e la fase della sinusoide risultante.

=== Somma di due funzioni sinusoidali

Si considerino due funzioni sinusoidali isofrequenziali sfasate tra loro di $pi / 2$:

$ s(t) = sqrt(2) sin(omega t) quad arrow.r.double quad S = sqrt(2) / sqrt(2) = 1 $ // VERIFICA: dedotto dall'equazione
$ c(t) = sqrt(2) cos(omega t) = sqrt(2) sin(omega t + pi / 2) quad arrow.r.double quad C = sqrt(2) / sqrt(2) = 1 $ // VERIFICA: dedotto dall'equazione

La somma istantanea delle due sinusoidi è data da:

$ r(t) = s(t) + c(t) = sqrt(2) sin(omega t) + sqrt(2) sin(omega t + pi / 2) $ // VERIFICA: dedotto dall'equazione

Applicando la formula di prostaferesi:

$ sin(alpha) + sin(beta) = 2 sin((alpha + beta) / 2) cos((alpha - beta) / 2) $

e ponendo $alpha = omega t$ e $beta = omega t + pi / 2$, si ottiene che la grandezza risultante è ancora una sinusoide di pulsazione $omega$:

$ s(t) + c(t) = 2 sqrt(2) sin(omega t + pi / 4) cos(-pi / 4) = 2 sin(omega t + pi / 4) $ // VERIFICA: dedotto dall'equazione

Il valore efficace della sinusoide risultante è pertanto pari a:

$ R = 2 / sqrt(2) = sqrt(2) $

#nota[
Si osservi che il valore efficace della somma di due sinusoidi *non* è uguale alla somma algebrica dei singoli valori efficaci ($R = sqrt(2) != S + C = 1 + 1 = 2$), e il calcolo trigonometrico diretto nel dominio del tempo non risulta immediato.
]

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig07.typ"
]

=== Derivata temporale di una funzione sinusoidale

Si consideri ora una generica funzione sinusoidale a fase iniziale nulla, avente valore efficace $S$:

$ s(t) = sqrt(2) S sin(omega t) $ // VERIFICA: dedotto dall'equazione

La sua derivata rispetto al tempo (operazione richiesta, ad esempio, nelle equazioni costitutive di un induttore o di un condensatore) vale:

$ d(t) = ("d"s(t)) / ("d"t) = omega sqrt(2) S cos(omega t) $ // VERIFICA: dedotto dall'equazione

Ricordando dalla trigonometria l'identità $cos(alpha) = sin(alpha + pi / 2)$, la derivata può essere riscritta nella forma:

$ d(t) = ("d"s(t)) / ("d"t) = omega sqrt(2) S sin(omega t + pi / 2) $ // VERIFICA: dedotto dall'equazione

La derivata temporale di una sinusoide di pulsazione $omega$ e valore efficace $S$ è dunque una nuova sinusoide avente la stessa pulsazione $omega$, valore efficace amplificato di un fattore $omega$ (ossia pari a $omega S$) e sfasata in anticipo di $pi / 2$ radianti ($90 circ$).

== Dalle funzioni sinusoidali al metodo simbolico

Le proprietà analitiche verificate negli esempi precedenti consentono di enunciare due risultati generali:
1. La somma algebrica di più funzioni sinusoidali di pulsazione $omega$ è anch'essa una funzione sinusoidale di identica pulsazione $omega$.
2. La derivata rispetto al tempo di una funzione sinusoidale di pulsazione $omega$ è anch'essa una funzione sinusoidale di identica pulsazione $omega$.

Questi due fatti rivestono un'importanza fondamentale nell'analisi dei circuiti lineari (ovvero i circuiti in cui i parametri $R$, $L$ e $C$ sono costanti). Per studiare in modo algebricamente semplice le reti elettriche in regime sinusoidale, evitando di risolvere equazioni integro-differenziali nel dominio del tempo, si ricorre al concetto di *vettore rotante* introdotto da Steinmetz, rappresentando le grandezze sinusoidali mediante numeri complessi (*metodo simbolico*).

=== Richiami sui numeri complessi

Il metodo simbolico stabilisce una corrispondenza biunivoca fra le grandezze sinusoidali isofrequenziali, i vettori rotanti nel piano e i numeri complessi, definendo un formalismo algebrico diretto per la risoluzione dei circuiti.

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Nel piano complesso di Gauss (avente l'asse reale $"Re"$ in ascissa e l'asse immaginario $"Im"$ in ordinata), definita l'unità immaginaria $j = sqrt(-1)$ (tale che $j^2 = -1$), un generico numero complesso $macron(z)$ può essere espresso in due forme equivalenti:

    - *Forma cartesiana (o binomia)*:
      $ macron(z) = a + j b $
      dove $a = "Re"[macron(z)]$ è la parte reale e $b = "Im"[macron(z)]$ è la parte immaginaria.

    - *Forma polare (o esponenziale)*:
      $ macron(z) = |macron(z)| e^(j theta) = z e^(j theta) $
      dove $z = |macron(z)| = sqrt(a^2 + b^2)$ rappresenta il _modulo_ del numero complesso e $theta = angle macron(z)$ ne rappresenta l'_argomento_ (o anomalia).
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig08.typ"
  ]
)

// ==========================================
// SLIDE 16 - 30
// ==========================================

= Il Metodo Simbolico e i Fasori

== Formula di Gauss e Formule di Conversione

Un numero complesso $macron(z) = a + j b$ può essere rappresentato in forma esponenziale (o polare) mediante la formula di Gauss (o di Eulero):

$ macron(z) = |macron(z)| e^(j phi) = |macron(z)| (cos phi + j sin phi) $

Le relazioni di conversione tra la forma cartesiana (rettangolare) e la forma polare (esponenziale) sono espresse dal seguente sistema:

$ cases(
  |macron(z)| = sqrt(a^2 + b^2) = z,
  phi = arctan(b / a)
) quad arrow.l.r.double quad cases(
  a = "Re"[macron(z)] = |macron(z)| cos phi,
  b = "Im"[macron(z)] = |macron(z)| sin phi
) $

#nota[
Nella determinazione dell'argomento $phi$ tramite la funzione arcotangente, occorre tenere conto del quadrante in cui giace il numero complesso nel piano di Gauss:
- se $a > 0$ (I e IV quadrante): $phi = arctan(b / a)$;
- se $a < 0$ (II e III quadrante): $phi = arctan(b / a) + pi$ (oppure $- pi$).
]

== Analogia tra Funzioni Sinusoidali e Numeri Complessi (Vettori Rotanti)

Un punto nel piano complesso che ruota attorno all'origine su un'orbita circolare di raggio $|macron(z)| = hat(F)$ con velocità angolare $omega$ costante e posizione angolare all'istante $t = 0$ uguale a $phi$, è descritto dal numero complesso funzione del tempo (detto *vettore rotante*):

$ macron(z)(t) = |macron(z)| e^(j (omega t + phi)) = hat(F) e^(j (omega t + phi)) $

Sviluppando l'esponenziale complesso secondo la formula di Eulero, si ottengono le proiezioni del vettore rotante sugli assi reale e immaginario:

$ macron(z)(t) = hat(F) cos(omega t + phi) + j hat(F) sin(omega t + phi) $

dove le singole componenti temporali sono:

$ cases(
  a(t) = "Re"[macron(z)(t)] = hat(F) cos(omega t + phi),
  b(t) = "Im"[macron(z)(t)] = hat(F) sin(omega t + phi)
) $

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig09.typ"
]

Esiste quindi una corrispondenza biunivoca tra il vettore rotante $macron(z)(t)$ e la funzione sinusoidale $f(t) = hat(F) sin(omega t + phi)$, ottenuta applicando l'operatore parte immaginaria:

$ f(t) = hat(F) sin(omega t + phi) = "Im"[macron(z)(t)] = "Im"[hat(F) e^(j (omega t + phi))] $

== Regola di Derivazione nel Dominio Complesso

La corrispondenza tra funzione sinusoidale e numero complesso si conserva anche per l'operazione di derivazione rispetto al tempo:

$ f(t) arrow.l.r macron(z)(t) quad arrow.r.double quad (dif f(t)) / (dif t) arrow.l.r (dif macron(z)(t)) / (dif t) $

Nel dominio del tempo, la derivata della funzione sinusoidale $f(t) = hat(F) sin(omega t + phi)$ vale:

$ (dif f(t)) / (dif t) = omega hat(F) cos(omega t + phi) = omega hat(F) sin(omega t + phi + pi / 2) $

Derivando direttamente il vettore rotante $macron(z)(t) = hat(F) e^(j (omega t + phi))$ rispetto al tempo si ottiene:

$ (dif macron(z)(t)) / (dif t) = (dif) / (dif t) [hat(F) e^(j (omega t + phi))] = j omega hat(F) e^(j (omega t + phi)) $

#grid(
  columns: (1.3fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Poiché l'unità immaginaria $j$ (ovvero un numero complesso puramente immaginario $macron(c) = 0 + j 1$) ha modulo unitario e argomento pari a $pi / 2$:
    $ j = 1 e^(j pi / 2) = cos(pi / 2) + j sin(pi / 2) $
    la moltiplicazione per $j omega$ equivale a moltiplicare il modulo per $omega$ e ad anticipare la fase di $pi / 2$:
    $ (dif macron(z)(t)) / (dif t) = omega e^(j pi / 2) hat(F) e^(j (omega t + phi)) = omega hat(F) e^(j (omega t + phi + pi / 2)) $
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig10.typ"
  ]
)

Prendendo la parte immaginaria della derivata complessa si ritrova esattamente la derivata temporale della funzione sinusoidale:

$ (dif f(t)) / (dif t) = "Im"[(dif macron(z)(t)) / (dif t)] = "Im"[j omega macron(z)(t)] = "Im"[omega hat(F) e^(j (omega t + phi + pi / 2))] = omega hat(F) sin(omega t + phi + pi / 2) $

== Dai Vettori Rotanti ai Fasori

Una qualunque funzione sinusoidale $f(t)$ può essere associata a un vettore rotante $macron(z)(t)$. Esplicitando il valore efficace $F = hat(F) / sqrt(2)$ (da cui $hat(F) = sqrt(2) F$) e applicando le proprietà delle potenze all'esponenziale complesso, si può separare la dipendenza dalla fase iniziale $phi$ da quella temporale $omega t$:

$ macron(z)(t) = hat(F) e^(j (omega t + phi)) = sqrt(2) F e^(j (omega t + phi)) = sqrt(2) underbrace(F e^(j phi), macron(F)) e^(j omega t) = sqrt(2) macron(F) e^(j omega t) $

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    In un circuito lineare alimentato in regime sinusoidale a pulsazione costante $omega$, tutti i vettori rotanti $macron(z)_1(t), macron(z)_2(t), dots$ ruotano alla stessa velocità angolare $omega$:
    - il fattore di rotazione temporale $e^(j omega t)$ (così come la costante $sqrt(2)$) è identico in ogni numero complesso;
    - la quantità complessa $macron(F) = F e^(j phi)$ *non dipende dal tempo $t$* e racchiude tutta l'informazione caratteristica della sinusoide: il valore efficace $F$ (modulo) e la fase iniziale $phi$ (argomento).
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig11.typ"
  ]
)

#nota[
*Definizione di Fasore:* La grandezza complessa tempo-invariante
$ macron(F) = F e^(j phi) = F (cos phi + j sin phi) $
è detta *fasore* associato alla funzione sinusoidale $f(t) = sqrt(2) F sin(omega t + phi)$. Esso è rappresentato nel piano complesso da un vettore fisso avente modulo coincidente con il *valore efficace* $F$ della sinusoide e angolo coincidente con la *fase iniziale* $phi$.
L'uso dei fasori consente di studiare i vettori rotanti come se fossero "fotografati" nell'istante $t = 0$ durante la loro rotazione sincrona.
]

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig12.typ"
]

=== Fasore e Regola di Derivazione

Il fasore è particolarmente efficace per esprimere algebricamente e graficamente la regola di derivazione. Poiché una funzione sinusoidale si scrive in funzione del proprio fasore $macron(F)$ come:

$ f(t) = "Im"[sqrt(2) F e^(j phi) e^(j omega t)] = "Im"[sqrt(2) macron(F) e^(j omega t)] $

la sua derivata temporale vale:

$ (dif f(t)) / (dif t) = "Im"[sqrt(2) j omega F e^(j phi) e^(j omega t)] = "Im"[sqrt(2) (j omega macron(F)) e^(j omega t)] = "Im"[sqrt(2) macron(F)' e^(j omega t)] $

Il fasore $macron(F)'$ associato alla derivata $(dif f(t)) / (dif t)$ si ottiene quindi moltiplicando il fasore originario $macron(F)$ per l'operatore complesso $j omega$:

$ macron(F)' = j omega macron(F) = j omega F e^(j phi) = omega F e^(j (phi + pi / 2)) $

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig13.typ"
]

=== Esempi di Trasformazione tra Dominio del Tempo e Dominio dei Fasori

*Esempio 1 (Dal dominio del tempo al fasore):*
Data la corrente sinusoidale $a(t) = 10 sin(omega t + pi / 4) "A"$, il suo valore massimo è $hat(A) = 10 "A"$, da cui il valore efficace è $A = 10 / sqrt(2) approx 7.07 "A"$. Il fasore corrispondente vale:

$ macron(A) = 10 / sqrt(2) e^(j pi / 4) = 7.07 (cos(pi / 4) + j sin(pi / 4)) = 5 + j 5 "A" $

(Analogamente, per un valore massimo pari a $5 "A"$, si ha $macron(A) = 5 / sqrt(2) e^(j pi / 4) = 3.54 + j 3.54 "A"$). // VERIFICA: dedotto dall'equazione

*Esempio 2 (Dal fasore in forma cartesiana al dominio del tempo):*
Dato il fasore di tensione $macron(C) = -3 + j 7 "V"$, si vogliono determinare il modulo (valore efficace $C$), la fase $phi_C$ e l'espressione temporale $c(t)$.

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Il modulo del fasore vale:
    $ C = |macron(C)| = sqrt((-3)^2 + 7^2) = sqrt(9 + 49) = sqrt(58) approx 7.62 "V" $
    Poiché la parte reale è negativa ($"Re"[macron(C)] = -3 < 0$) e la parte immaginaria è positiva ($"Im"[macron(C)] = 7 > 0$), il fasore $macron(C)$ si trova nel *secondo quadrante*. La funzione $arctan(7 / (-3))$ fornisce invece l'angolo nel quarto quadrante ($-1.166 "rad" = -66.8^circ$); occorre quindi sommare $pi$ (ovvero $180^circ$):
    $ phi_C = arctan(7 / (-3)) + pi = -1.166 + pi = 1.976 "rad" approx 113.2^circ $
    La corrispondente funzione del tempo è pertanto:
    $ c(t) = sqrt(2) C sin(omega t + phi_C) = sqrt(2) dot 7.62 sin(omega t + 1.976) "V" $
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig14.typ"
  ]
)

= Equazioni Circuitali e Costitutive in Forma Fasoriale

== Leggi di Kirchhoff in Forma Fasoriale (LKC e LKT)

Considerando una rete lineare tempo-invariante (LTI) alimentata da un ingresso sinusoidale a pulsazione $omega$, a regime tutte le variabili di rete (tensioni e correnti) sono funzioni sinusoidali *isofrequenziali* con l'ingresso (ossia aventi la medesima pulsazione $omega$).

Consideriamo ad esempio un nodo a cui afferiscono tre correnti $i_1(t)$, $i_2(t)$ (entranti) e $i_3(t)$ (uscente). La Legge di Kirchhoff delle Correnti (LKC) nel dominio del tempo e la sua corrispondente forma fasoriale si scrivono:

$ i_1(t) + i_2(t) - i_3(t) = 0 quad arrow.l.r.double quad macron(I)_1 + macron(I)_2 - macron(I)_3 = 0 quad arrow.l.r.double quad macron(I)_3 = macron(I)_1 + macron(I)_2 $

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig15.typ"
]

#nota[
Attraverso l'uso del metodo simbolico e dei fasori, la Legge di Kirchhoff delle Correnti (LKC) e la Legge di Kirchhoff delle Tensioni (LKT) si trasformano da equazioni istantanee nel tempo in *somme algebriche di numeri complessi* (ovvero somme vettoriali nel piano di Gauss):
$ sum_k macron(I)_k = 0, quad sum_k macron(V)_k = 0 $
]

== Equazioni Costitutive dei Bipoli in Forma Fasoriale
=== Equazione Costitutiva del Resistore in Forma Fasoriale

Si consideri un resistore lineare tempo-invariante (LTI) di resistenza $R$, governato con la convenzione degli utilizzatori e alimentato da una corrente sinusoidale $i(t) = sqrt(2) I sin(omega t + phi_I)$.

#grid(
  columns: (0.8fr, 1.2fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig16.typ"
  ],
  [
    Nel dominio del tempo la legge di Ohm stabilisce la proporzionalità diretta tra tensione e corrente:
    $ v(t) = R i(t) $
    Passando ai corrispondenti fasori $macron(V) = V e^(j phi_V)$ e $macron(I) = I e^(j phi_I)$, il fasore della tensione ai capi del resistore $R$ diventa:
    $ macron(V) = R macron(I) quad arrow.l.r.double quad V e^(j phi_V) = R I e^(j phi_I) $
    Uguagliando moduli e argomenti dei due membri si ottengono le due relazioni scalari:
    $ cases(
      V = R I,
      phi_V = phi_I
    ) $
  ]
)

#nota[
Poiché in un resistore risulta $phi_V = phi_I$ (lo sfasamento tra tensione e corrente è nullo, $Delta phi = phi_V - phi_I = 0$), i fasori $macron(V)$ e $macron(I)$ sono paralleli e concordi nel piano complesso: si dice pertanto che *in un resistore la tensione e la corrente sono in fase*. Nel dominio del tempo, le due sinusoidi $v(t)$ e $i(t)$ raggiungono contemporaneamente i rispettivi valori massimi, minimi e passaggi per lo zero.
]

#grid(
  columns: (1fr, 1.2fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig17.typ"
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig18.typ"
  ]
)

// ==========================================
// SLIDE 31 - 45
// ==========================================

=== Condensatore in regime sinusoidale

Si consideri un condensatore lineare tempo-invariante (LTI) di capacità $C$, per il quale è adottata la convenzione degli utilizzatori, alimentato da una tensione sinusoidale:

$ v(t) = sqrt(2) V cos(omega t + phi_V) arrow.l.r.double macron(V) = V e^(j phi_V) $

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig19.typ"
  ],
  [
    Applicando l'equazione costitutiva nel dominio del tempo $i(t) = C ("d"v(t))/("d"t)$ e sfruttando la regola di derivazione nel dominio dei fasori, si ottiene:

    $ macron(I) = I e^(j phi_I) = j omega C macron(V) = j omega C V e^(j phi_V) $

    Ricordando l'identità di Eulero per l'unità immaginaria $j = e^(j pi / 2)$, il fasore della corrente ai capi del condensatore $C$ può essere riscritto in forma esponenziale come:

    $ macron(I) = e^(j pi / 2) omega C V e^(j phi_V) = omega C V e^(j (phi_V + pi / 2)) $
  ]
)

Uguagliando modulo e fase dei due membri dell'equazione $I e^(j phi_I) = omega C V e^(j (phi_V + pi / 2))$, si ricavano le relazioni tra i valori efficaci e le fasi iniziali:

$ cases(
  I = omega C V,
  phi_I = phi_V + pi / 2
) $

Invertendo la relazione fasoriale per esprimere la tensione in funzione della corrente (ricordando che $1 / j = -j$), si ha:

$ macron(V) = frac(1, j omega C) macron(I) = - frac(j, omega C) macron(I) $

#nota[
  Poiché in un condensatore vale la relazione di fase $phi_I = phi_V + pi / 2$, si dice che in un condensatore il fasore della corrente $macron(I)$ è in *anticipo* di $pi / 2$ (ovvero in quadratura in anticipo) rispetto al fasore della tensione $macron(V)$.
]

Di seguito sono riportati il diagramma fasoriale nel piano complesso di Gauss e l'andamento temporale delle grandezze $v(t)$ e $i(t)$ su un periodo $T$:

#grid(
  columns: (1fr, 1.3fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig20.typ"
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig21.typ"
  ]
)

=== Induttore in regime sinusoidale

Si consideri ora un induttore lineare di induttanza $L$, con la convenzione degli utilizzatori, alimentato da una corrente sinusoidale:

$ i(t) = sqrt(2) I cos(omega t + phi_I) arrow.l.r.double macron(I) = I e^(j phi_I) $

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig22.typ"
  ],
  [
    Applicando l'equazione costitutiva dell'induttore $v(t) = L ("d"i(t))/("d"t)$ e passando al dominio dei fasori tramite la regola di derivazione, il fasore della tensione ai capi di $L$ risulta:

    $ macron(V) = V e^(j phi_V) = j omega L macron(I) = j omega L I e^(j phi_I) $

    Sostituendo $j = e^(j pi / 2)$, si ottiene l'espressione esponenziale:

    $ V e^(j phi_V) = e^(j pi / 2) omega L I e^(j phi_I) = omega L I e^(j (phi_I + pi / 2)) $
  ]
)

Dal confronto tra moduli e argomenti dei due membri si ricavano le relazioni:

$ cases(
  V = omega L I,
  phi_V = phi_I + pi / 2
) $

#nota[
  Poiché in un induttore vale la relazione di fase $phi_V = phi_I + pi / 2$ (ovvero $phi_I = phi_V - pi / 2$), si dice che in un induttore il fasore della corrente $macron(I)$ è in *ritardo* di $pi / 2$ (ovvero in quadratura in ritardo) rispetto al fasore della tensione $macron(V)$.
]

Di seguito sono rappresentati il diagramma fasoriale nel piano di Gauss e l'andamento temporale di $i(t)$ e $v(t)$ per l'induttore:

#grid(
  columns: (1fr, 1.3fr),
  column-gutter: 1.5em,
  align: (center + horizon, center + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig23.typ"
  ],
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig24.typ"
  ]
)

=== Riepilogo delle equazioni costitutive nel dominio dei fasori

Le relazioni costitutive dei tre bipoli passivi fondamentali nel dominio del tempo e nel dominio simbolico (fasoriale) sono riassunte nella tabella seguente:

#align(center)[
  #table(
    columns: 4,
    align: (left + horizon, center + horizon, center + horizon, left + horizon),
    stroke: 0.6pt + gray,
    inset: 5pt,
    table.header(
      [*Componente*], [*Dominio del tempo*], [*Dominio dei fasori*], [*Simbolo*]
    ),
    [Resistore ($R$)], [$v(t) = R i(t)$], [$macron(V) = R macron(I)$], [#schema-bipolo("R", $R$, scala: 0.8)],
    [Induttore ($L$)], [$v(t) = L frac("d"i(t), "d"t)$], [$macron(V) = j omega L macron(I)$],[#schema-bipolo("L", $L$, scala: 0.8)],
    [Condensatore ($C$)], [$i(t) = C frac("d"v(t), "d"t)$], [$macron(I) = j omega C macron(V) arrow.l.r.double macron(V) = - frac(j, omega C) macron(I)$],[#schema-bipolo("C", $C$, scala: 0.8)]
  )
]





== Impedenza e legge di Ohm in forma simbolica

Osservando le equazioni costitutive fasoriali di resistore, induttore e condensatore, si nota che la struttura algebrica dell'equazione è comune a tutti e tre i componenti:

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #include "figs/Cap3_MEC_handouts_appunti-fig25.typ"
  ],
  [
    $ macron(V) = macron(Z) macron(I) $

    Questa relazione è chiamata *legge di Ohm in forma simbolica* e il numero complesso $macron(Z)$ (che dipende dalla pulsazione $omega$, ma non dai fasori di tensione e corrente) prende il nome di *impedenza* del bipolo:

    - *Resistore*: $macron(Z) = R$
    - *Condensatore*: $macron(Z) = frac(1, j omega C) = - frac(j, omega C)$
    - *Induttore*: $macron(Z) = j omega L$
  ]
)

=== Forma cartesiana e polare dell'impedenza

In forma algebrica (cartesiana), la parte reale dell'impedenza $macron(Z)$ è chiamata *resistenza* ($R$), mentre il coefficiente della parte immaginaria è chiamato *reattanza* ($X$). La forma generale dell'impedenza è pertanto:

$ macron(Z) = R + j X $

In particolare, per i tre bipoli ideali si ha:
- *Resistore*: $R gt.eq 0$ e $X = 0$;
- *Condensatore*: $R = 0$ e $X = - frac(1, omega C) < 0$ (reattanza capacitiva);
- *Induttore*: $R = 0$ e $X = omega L > 0$ (reattanza induttiva).

Esprimendo l'impedenza in forma esponenziale (polare) come $macron(Z) = Z e^(j theta) = |macron(Z)| e^(j theta)$, con:

$ Z = |macron(Z)| = sqrt(R^2 + X^2), wide theta = arctan(frac(X, R)) $

e sostituendo le rappresentazioni esponenziali dei fasori nella legge di Ohm simbolica $macron(V) = macron(Z) macron(I)$, si ottiene:

$ V e^(j phi_V) = Z e^(j theta) I e^(j phi_I) arrow.r.double macron(Z) = Z e^(j theta) = frac(macron(V), macron(I)) = frac(V e^(j phi_V), I e^(j phi_I)) = frac(V, I) e^(j (phi_V - phi_I)) $

Da tale relazione si deducono il modulo e l'argomento dell'impedenza:

$ cases(
  Z = |macron(Z)| = frac(V, I) quad ["espressa in Ohm" (Omega)],
  theta = phi_V - phi_I quad ["angolo di fase (argomento) di" macron(Z)]
) $

#nota[
  L'angolo caratteristico $theta = phi_V - phi_I$ dell'impedenza rappresenta lo sfasamento tra la tensione e la corrente ai capi del bipolo. Per bipoli passivi ($R gt.eq 0$), l'angolo $theta$ varia nell'intervallo:
  $ - frac(pi, 2) lt.eq theta lt.eq frac(pi, 2) $
]

Si possono verificare analiticamente i casi limite dei tre componenti elementari passando dalla forma esponenziale a quella algebrica $macron(Z) = |macron(Z)| cos(theta) + j |macron(Z)| sin(theta)$:

1. *Resistore*: poiché $phi_V = phi_I$, si ha $theta = 0$ e quindi $macron(Z) = R$.
2. *Condensatore*: poiché $phi_I = phi_V + pi / 2$, risulta $theta = phi_V - phi_I = - pi / 2$. Essendo $R = 0$, il modulo vale $|macron(Z)| = sqrt(R^2 + X^2) = |X| = 1 / (omega C)$, da cui:
   $ macron(Z) = |macron(Z)| e^(-j pi / 2) = |macron(Z)| cos(- frac(pi, 2)) + j |macron(Z)| sin(- frac(pi, 2)) = -j |macron(Z)| = -j |X| = - frac(j, omega C) $
3. *Induttore*: poiché $phi_V = phi_I + pi / 2$, risulta $theta = phi_V - phi_I = + pi / 2$. Essendo $R = 0$ e $|macron(Z)| = |X| = omega L$, si ottiene:
   $ macron(Z) = |macron(Z)| e^(j pi / 2) = |macron(Z)| cos(frac(pi, 2)) + j |macron(Z)| sin(frac(pi, 2)) = j |macron(Z)| = j |X| = j omega L $

== Connessioni canoniche di impedenze

Grazie alla natura puramente algebrica delle leggi di Kirchhoff per i fasori e della legge di Ohm in forma simbolica, per la riduzione di reti di impedenze in regime sinusoidale si ritrovano formule formalmente identiche a quelle valide per i resistori in regime stazionario.

=== Collegamento in serie

Si considerino due impedenze $macron(Z)_1$ e $macron(Z)_2$ collegate in serie tra i morsetti $"A"$ e $"B"$, quindi attraversate dalla medesima corrente fasoriale $macron(I)$:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig26.typ"
]

Applicando la legge di Ohm simbolica a ciascun bipolo si ha:

$ macron(V)_1 = macron(Z)_1 macron(I), wide macron(V)_2 = macron(Z)_2 macron(I) $

Per la legge di Kirchhoff delle tensioni (LKT) applicata tra i morsetti $"A"$ e $"B"$, la tensione complessiva $macron(V)$ è pari alla somma delle tensioni parziali:

$ -macron(V) + macron(V)_1 + macron(V)_2 = 0 arrow.r.double macron(V) = macron(V)_1 + macron(V)_2 = macron(Z)_1 macron(I) + macron(Z)_2 macron(I) = (macron(Z)_1 + macron(Z)_2) macron(I) $

Pertanto, l'impedenza equivalente $macron(Z)_"eq"$ vista ai morsetti della serie è data dalla somma delle singole impedenze:

$ macron(Z)_"eq" = macron(Z)_1 + macron(Z)_2 $

// ==========================================
// SLIDE 46 - 60
// ==========================================

=== Connessioni Canoniche di Impedenze e Circuiti Elementari

== Collegamento in Serie: Circuiti Ohmico-Induttivo ($R L$) e Ohmico-Capacitivo ($R C$)

Nel dominio simbolico dei fasori, la connessione in serie di più bipoli passivi segue le medesime regole formali viste per i circuiti in regime stazionario: l'impedenza equivalente $macron(Z)_"eq"$ è data dalla somma algebrica delle singole impedenze complesse.

=== Connessione Serie Ohmico-Induttiva ($R L$)

Si consideri il collegamento in serie di un resistore di resistenza $R$ e di un induttore di induttanza $L$, attraversati dalla medesima corrente fasoriale $macron(I)$ e sottoposti alla tensione complessiva $macron(V)$.

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig27.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig28.typ"
    ]
  )
]

Le impedenze dei singoli bipoli sono rispettivamente:
$ macron(Z)_R = R + j 0 = R $
$ macron(Z)_L = 0 + j X_L = j omega L $

L'impedenza equivalente della serie ohmico-induttiva risulta pertanto:
$ macron(Z)_"eq" = macron(Z)_R + macron(Z)_L = R + j omega L $

Esprimendo $macron(Z)_"eq"$ in forma polare (modulo e argomento), si ottengono:
$ |macron(Z)_"eq"| = sqrt(R^2 + (omega L)^2) $
$ varphi_"eq" = theta = arctan(X_L / R) = arctan((omega L) / R) > 0 $ // VERIFICA: dedotto dall'equazione

=== Connessione Serie Ohmico-Capacitiva ($R C$)

In modo duale, si consideri il collegamento in serie di un resistore $R$ e di un condensatore di capacità $C$:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig29.typ"
]

Le impedenze dei due componenti valgono:
$ macron(Z)_R = R + j 0 = R $
$ macron(Z)_C = 0 + j X_C = -j 1 / (omega C) $

L'impedenza equivalente della serie ohmico-capacitiva è data da:
$ macron(Z)_"eq" = macron(Z)_R + macron(Z)_C = R - j 1 / (omega C) $

Il modulo e l'argomento dell'impedenza equivalente risultano quindi:
$ |macron(Z)_"eq"| = sqrt(R^2 + (1 / (omega C))^2) $
$ varphi_"eq" = theta = arctan(X_C / R) = arctan(- 1 / (omega R C)) = -arctan(1 / (omega R C)) < 0 $ // VERIFICA: dedotto dall'equazione

=== Confronto dello Sfasamento Tensione-Corrente nei Circuiti Serie

Assumendo per semplicità la tensione ai morsetti con fase iniziale nulla ($varphi_V = 0$, ossia il fasore $macron(V)$ adagiato sull'asse reale positivo), poiché vale la legge di Ohm simbolica $macron(V) = macron(Z)_"eq" macron(I)$, l'angolo di sfasamento complessivo $theta = varphi_V - varphi_I$ coincide con l'argomento dell'impedenza equivalente. Si hanno pertanto i due casi illustrati nei diagrammi fasoriali seguenti:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1.5em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig30.typ"

      $ theta = varphi_V - varphi_I > 0 $
      $ varphi_V = 0 quad ==> quad varphi_I = -theta < 0 $
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig31.typ"

      $ theta = varphi_V - varphi_I < 0 $
      $ varphi_V = 0 quad ==> quad varphi_I = -theta > 0 $
    ]
  )
]

#nota[
  - *Circuito Ohmico-Induttivo ($R L$)*: il fasore della corrente $macron(I)$ è *in ritardo* rispetto al fasore della tensione $macron(V)$.
  - *Circuito Ohmico-Capacitivo ($R C$)*: il fasore della corrente $macron(I)$ è *in anticipo* rispetto al fasore della tensione $macron(V)$.
]

== Collegamento in Parallelo e Concetto di Ammettenza

La medesima struttura formale delle reti resistive si estende alle connessioni in parallelo nel dominio dei fasori. Applicando la Legge di Kirchhoff delle Correnti (LKC) a due impedenze $macron(Z)_1$ e $macron(Z)_2$ connesse in parallelo e sottoposte alla stessa tensione $macron(V)$, si ha:

$ macron(I) = macron(I)_1 + macron(I)_2 = macron(V) / macron(Z)_1 + macron(V) / macron(Z)_2 = (1 / macron(Z)_1 + 1 / macron(Z)_2) macron(V) $

L'impedenza equivalente $macron(Z)_"eq"$ del parallelo soddisfa pertanto la relazione:
$ 1 / macron(Z)_"eq" = 1 / macron(Z)_1 + 1 / macron(Z)_2 $

#nota[
  Si definisce *ammettenza* del componente, indicata con $macron(Y)$ e misurata in Siemens ($"S"$ o $Omega^(-1)$), il reciproco dell'impedenza:
  $ macron(Y) = 1 / macron(Z) = G + j B $
  dove la parte reale $G$ prende il nome di *conduttanza* e la parte immaginaria $B$ prende il nome di *suscettanza*. Per una connessione in parallelo, l'ammettenza equivalente è semplicemente la somma delle ammettenze dei singoli rami:
  $ macron(Y)_"eq" = macron(Y)_1 + macron(Y)_2 = 1 / macron(Z)_1 + 1 / macron(Z)_2 quad ==> quad macron(I) = macron(Y)_"eq" macron(V) $
]

Sviluppando l'espressione dell'impedenza equivalente per due bipoli generici in parallelo si ottiene:
$ 1 / macron(Z)_"eq" = (macron(Z)_1 + macron(Z)_2) / (macron(Z)_1 macron(Z)_2) quad ==> quad macron(Z)_"eq" = (macron(Z)_1 macron(Z)_2) / (macron(Z)_1 + macron(Z)_2) $

=== Collegamento Parallelo Ohmico-Capacitivo ($R C$)

Si consideri il collegamento in parallelo di un resistore $R$ (con conduttanza $G = 1/R$ e impedenza $macron(Z)_R = R$) e di un condensatore $C$ (con impedenza $macron(Z)_C = -j / (omega C)$) ai morsetti $A$ e $B$:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig32.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig33.typ"
    ]
  )
]

Valutando prima l'ammettenza equivalente del parallelo si ha:
$ macron(Y)_"eq" = 1 / macron(Z)_R + 1 / macron(Z)_C = 1 / R + j omega C = G + j omega C $

Passando all'impedenza equivalente $macron(Z)_"eq" = 1 / macron(Y)_"eq"$ (ovvero calcolando il prodotto diviso la somma delle impedenze) e razionalizzando il denominatore complesso moltiplicando numeratore e denominatore per il complesso coniugato $(1 - j omega R C)$, si ricava: // VERIFICA: dedotto dall'equazione

$ macron(Z)_"eq" = (macron(Z)_R macron(Z)_C) / (macron(Z)_R + macron(Z)_C) = (R (-j 1 / (omega C))) / (R - j 1 / (omega C)) = 1 / (1 / R + j omega C) = R / (1 + j omega R C) $

$ macron(Z)_"eq" = R / (1 + j omega R C) dot (1 - j omega R C) / (1 - j omega R C) = (R (1 - j omega R C)) / (1 + (omega R C)^2) = R / (1 + omega^2 R^2 C^2) - j (omega R^2 C) / (1 + omega^2 R^2 C^2) $

Separando la parte reale $R_"eq"$ e la parte immaginaria $X_"eq"$ dell'impedenza equivalente $macron(Z)_"eq" = R_"eq" + j X_"eq"$, si ottiene infine:
$ R_"eq" = R / (1 + omega^2 R^2 C^2) , quad X_"eq" = - (omega R^2 C) / (1 + omega^2 R^2 C^2) $

== Teoremi delle Reti Lineari nel Dominio dei Fasori

Poiché nel dominio simbolico le equazioni topologiche (LKT e LKC) e le relazioni costitutive ($macron(V) = macron(Z) macron(I)$) sono puramente algebriche e lineari, tutti i teoremi fondamentali delle reti elettriche lineari si estendono direttamente ai fasori.

=== Teorema di Thévenin

Qualsiasi rete lineare operante in regime sinusoidale isofrequenziale, vista da una coppia di morsetti $A$ e $B$ a cui è collegato un carico generico, può essere sostituita da un generatore ideale di tensione fasoriale $macron(E)_"TH"$ in serie a un'impedenza equivalente $macron(Z)_"TH"$:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig34.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig35.typ"
    ]
  )
]

=== Formula di Millman

Per una rete binodale in regime sinusoidale costituita da rami in parallelo tra i nodi $A$ e $B$ (contenenti generatori di tensione in serie a impedenze, generatori di corrente e impedenze passive), la tensione fasoriale $macron(V)_(A B)$ tra i due nodi si calcola mediante la formula di Millman:

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1.5em,
  align: (center + horizon, left + horizon),
  [
    #scale(x: 85%, y: 85%, reflow: true)[
      #include "figs/Cap3_MEC_handouts_appunti-fig36.typ"
    ]
  ],
  [
    Applicando la formula di Millman ai nodi $A$ e $B$ dello schema a fianco (in cui il ramo con il generatore di corrente $macron(I)_2$ contribuisce solo al numeratore con la propria corrente impressa, poiché l'impedenza $macron(Z)_2$ in serie a un generatore ideale di corrente non influisce sulla conduttanza equivalente), si ha: // VERIFICA: dedotto dall'equazione

    $ macron(V)_(A B) = (macron(E)_1 / macron(Z)_1 + macron(I)_2 - macron(E)_3 / macron(Z)_3) / (1 / macron(Z)_1 + 1 / macron(Z)_3 + 1 / macron(Z)_4) $
  ]
)

== Diagrammi Vettoriali e Studio dei Circuiti $R L$ e $R C$

=== Rappresentazione Vettoriale nel Piano Complesso

Tutte le grandezze elettriche nel metodo simbolico sono numeri complessi e possiedono pertanto una struttura intrinsecamente bidimensionale: esse possono essere efficacemente rappresentate in forma vettoriale nel piano complesso (piano di Argand-Gauss).

Ogni relazione di somma algebrica tra fasori — ad esempio derivante dall'applicazione di una legge di Kirchhoff (LKT o LKC) — si traduce geometricamente in una *somma vettoriale* eseguita secondo la regola del parallelogramma o punta-coda.

Ad esempio, una Legge di Kirchhoff delle Tensioni definita dalla relazione:
$ macron(V)_3 = macron(V)_1 + macron(V)_2 $
si rappresenta nel piano complesso come:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig37.typ"
]

== Analisi del Circuito $R L$ Serie

Si consideri un circuito ohmico-induttivo serie alimentato da un generatore ideale di tensione sinusoidale il cui fasore, scelto come riferimento di fase ($varphi_E = 0$), vale $macron(E) = E e^(j 0) = E$:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig38.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig39.typ"
    ]
  )
]

Adottando la convenzione degli utilizzatori sui bipoli passivi, le equazioni costitutive e l'impedenza equivalente della maglia sono:
$ macron(V)_R = macron(Z)_R macron(I) = R macron(I) , quad macron(V)_L = macron(Z)_L macron(I) = j omega L macron(I) $
$ macron(Z) = macron(Z)_R + macron(Z)_L = R + j omega L $

Applicando la LKT alla maglia si ottiene l'equazione del circuito equivalente:
$ macron(E) = macron(V)_R + macron(V)_L = (R + j omega L) macron(I) = macron(Z) macron(I) $

Da questa relazione è possibile ricavare direttamente il fasore della corrente $macron(I)$:
$ macron(I) = macron(E) / macron(Z) = E / (R + j omega L) = (E e^(j 0)) / (|macron(Z)| e^(j varphi_Z)) = I e^(j varphi_I) $

Pertanto, il modulo (valore efficace) e la fase della corrente risultano:
$ I = |macron(I)| = E / sqrt(R^2 + (omega L)^2) $
$ varphi_I = varphi_E - varphi_Z = 0 - varphi_Z = -arctan((omega L) / R) < 0 $

=== Diagramma Vettoriale per il Circuito $R L$

Una volta calcolato il fasore della corrente $macron(I) = I e^(j varphi_I)$, si possono ricavare analiticamente e graficamente i fasori delle tensioni sui singoli bipoli:
- *Tensione sul resistore*:
  $ macron(V)_R = R macron(I) = R I e^(j varphi_I) $
  Il fasore $macron(V)_R$ ha la stessa fase $varphi_I$ della corrente $macron(I)$ (è *in fase* con $macron(I)$, dunque anch'esso in ritardo di un angolo $|varphi_I|$ rispetto a $macron(E)$).
- *Tensione sull'induttore*:
  $ macron(V)_L = j omega L macron(I) = e^(j pi / 2) omega L I e^(j varphi_I) = omega L I e^(j (varphi_I + pi / 2)) $
  Poiché l'operatore $j = e^(j pi/2)$ introduce una rotazione antioraria di $90 circ$ ($pi/2$ radianti) nel piano complesso, il fasore $macron(V)_L$ è *in quadratura in anticipo* di $pi/2$ rispetto alla corrente $macron(I)$ (e quindi rispetto a $macron(V)_R$).

La LKT impone che la somma vettoriale di $macron(V)_R$ e $macron(V)_L$ ricostruisca esattamente il fasore della tensione impressa $macron(E)$:
$ macron(E) = macron(V)_R + macron(V)_L $

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 2em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig40.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig41.typ"
    ]
  )
]

#nota[
  In un circuito *ohmico-induttivo* ($R L$), la corrente $macron(I)$ è sempre *in ritardo* rispetto alla tensione impressa $macron(E)$ di un angolo compreso tra $0$ e $pi/2$.
]

== Analisi del Circuito $R C$ Serie

Si consideri ora un circuito ohmico-capacitivo serie alimentato da un generatore ideale di tensione sinusoidale $macron(E) = E e^(j 0) = E$:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig42.typ"
]

Applicando la LKT alla maglia si ha:
$ macron(E) = (R - j 1 / (omega C)) macron(I) $

Il fasore della corrente $macron(I)$ vale pertanto:
$ macron(I) = macron(E) / (R - j 1 / (omega C)) = I e^(j varphi_I) $

da cui si ricavano il modulo e la fase della corrente:
$ I = |macron(I)| = E / sqrt(R^2 + (1 / (omega C))^2) $
$ varphi_I = varphi_E - angle (R - j 1 / (omega C)) = 0 - (-arctan(1 / (omega R C))) = arctan(1 / (omega R C)) > 0 $

=== Diagramma Vettoriale per il Circuito $R C$

Noto il fasore della corrente $macron(I) = I e^(j varphi_I)$, si ricavano le tensioni sui componenti:
- *Tensione sul resistore*:
  $ macron(V)_R = R macron(I) = R I e^(j varphi_I) $
  che risulta in fase con la corrente $macron(I)$.
- *Tensione sul condensatore*:
  $ macron(V)_C = -j 1 / (omega C) macron(I) = e^(-j pi / 2) 1 / (omega C) I e^(j varphi_I) = (I / (omega C)) e^(j (varphi_I - pi / 2)) $
  Poiché $-j = e^(-j pi/2)$, la tensione sul condensatore $macron(V)_C$ è *in quadratura in ritardo* di $pi/2$ rispetto alla corrente $macron(I)$ (e quindi rispetto a $macron(V)_R$).

Sommando vettorialmente le due tensioni secondo la LKT si ottiene il fasore del generatore:
$ macron(E) = macron(V)_R + macron(V)_C $

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig43.typ"
]

#nota[
  In un circuito *ohmico-capacitivo* ($R C$), la corrente $macron(I)$ è sempre *in anticipo* rispetto alla tensione impressa $macron(E)$ di un angolo compreso tra $0$ e $pi/2$ _(Nota: nella slide 60 è presente un refuso di stampa che riporta "ohmico induttivo" anziché "ohmico-capacitivo")_.
]

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
  #include "figs/Cap3_MEC_handouts_appunti-fig44.typ"
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
  #include "figs/Cap3_MEC_handouts_appunti-fig45.typ"
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
  #include "figs/Cap3_MEC_handouts_appunti-fig46.typ"
]



Passando alla rappresentazione semilogaritmica dei *diagrammi di Bode* (modulo $|macron(H)|_"dB"$ e fase $angle macron(H)$ in funzione di $omega / omega_0$), si ottengono gli andamenti riportati di seguito:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig47.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig48.typ"
    ]
  )
]



== Filtro passa-alto (circuito CR)

Scambiando la posizione del resistore e del condensatore si ottiene il circuito $C R$ mostrato in figura, nel quale $macron(Z)_1 = 1 / (j omega C) = -j / (omega C)$ è posta in serie e $macron(Z)_2 = R$ è posta in derivazione. L'uscita a vuoto $macron(V)_"out"$ viene prelevata ai capi del resistore $R$.

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig49.typ"
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
  #include "figs/Cap3_MEC_handouts_appunti-fig50.typ"
]

I corrispondenti diagrammi di Bode del modulo $|macron(H)|_"dB"$ e della fase $angle macron(H)$ sono riportati di seguito:

#align(center)[
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: center + horizon,
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig51.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig52.typ"
    ]
  )
]



== Circuito RLC serie e risonanza

Si consideri ora un circuito costituito dal collegamento in serie di un resistore $R$ ($macron(Z)_1 = R$), un induttore $L$ ($macron(Z)_2 = j omega L$) e un condensatore $C$ ($macron(Z)_3 = -j / (omega C)$), alimentato da una tensione $macron(V)$ e percorso dalla corrente $macron(I)$, come rappresentato nello schema seguente:

#align(center)[
  #include "figs/Cap3_MEC_handouts_appunti-fig53.typ"
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
      #include "figs/Cap3_MEC_handouts_appunti-fig54.typ"
    ],
    [
      #include "figs/Cap3_MEC_handouts_appunti-fig55.typ"
    ]
  )
]
