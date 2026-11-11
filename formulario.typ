#import "@preview/zap:0.6.0"

// ---------- Impostazioni ----------
#set document(title: "Formulario di Elettrotecnica")
#set page(
  paper: "a4",
  margin: (x: 1.5cm, top: 1.7cm, bottom: 1.6cm),
  numbering: "1",
  header: text(size: 8pt, fill: luma(110))[Formulario di Elettrotecnica #h(1fr) Corso del Prof. Lazzeroni],
)
#set text(size: 10pt, lang: "it")
#set par(justify: true, leading: 0.55em)
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => block(
  width: 100%, above: 1.3em, below: 0.8em, inset: (bottom: 4pt),
  stroke: (bottom: 1.2pt + rgb("#1f4e79")),
  text(size: 14pt, fill: rgb("#1f4e79"), it),
)
#show heading.where(level: 2): it => block(above: 1.1em, below: 0.6em, text(size: 11pt, it))
#set table(stroke: 0.5pt + luma(150), inset: 5pt, align: horizon + center)
#set list(indent: 0.4em)
#set enum(indent: 0.4em)

// ---------- Helper ----------
#let sans(body, ..args) = text(font: ("Liberation Sans", "DejaVu Sans", "Arial"), ..args, body)
#let ph(x) = math.overline(x) // fasore / numero complesso

#let formula(title, body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#eef4fa"), stroke: (left: 2.5pt + rgb("#1f4e79")),
  [#text(weight: "bold", fill: rgb("#1f4e79"), title) #parbreak() #body],
)
#let esempio(body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#f6f6ee"), stroke: (left: 2.5pt + rgb("#8a7a2a")),
  [#text(weight: "bold", fill: rgb("#8a7a2a"))[Esempio.] #body],
)
#let attenzione(body) = block(
  width: 100%, breakable: false, inset: 8pt, radius: 3pt,
  fill: rgb("#fbeeee"), stroke: (left: 2.5pt + rgb("#a03030")),
  [#text(weight: "bold", fill: rgb("#a03030"))[Attenzione.] #body],
)
// circuito Zap ridotto in scala
#let circ(body, s: 75%) = align(center, scale(s, reflow: true, zap.circuit(body)))

// ---------- Titolo e indice ----------
#align(center)[
  #text(size: 18pt, weight: "bold")[Formulario di Elettrotecnica] \
  #text(size: 10pt, fill: luma(90))[Metodi e formule per gli esercizi — reti resistive, transitori, regime sinusoidale, potenze, trifase]
]
#v(0.4em)
#block(inset: 8pt, radius: 3pt, stroke: 0.6pt + luma(160), width: 100%)[
  #columns(2, gutter: 14pt)[
    #outline(title: [Indice], depth: 2, indent: 1em)
  ]
]

// =====================================================================
= Basi e convenzioni

== Convenzioni di segno e potenza
- *Convenzione degli utilizzatori*: la corrente entra nel morsetto $+$. Allora $p = v i$ è la potenza *assorbita* ($p > 0$ assorbe, $p < 0$ eroga).
- *Convenzione dei generatori*: la corrente esce dal morsetto $+$. Allora $p = v i$ è la potenza *erogata*.
- Bilancio: $sum p_"erogate" = sum p_"assorbite"$ (utile come verifica finale).

#table(
  columns: (1.1fr, 1.4fr, 1.6fr, 1.6fr),
  table.header([*Bipolo*], [*Equazione costitutiva*], [*In continua (regime)*], [*Energia / potenza*]),
  [Resistore $R$], [$v = R i$], [$v = R i$], [$p = R i^2 = v^2\/R$],
  [Condensatore $C$], [$i = C (dif v)/(dif t)$], [circuito *aperto* ($i = 0$)], [$W_C = 1/2 C v^2$],
  [Induttore $L$], [$v = L (dif i)/(dif t)$], [*corto* circuito ($v = 0$)], [$W_L = 1/2 L i^2$],
  [Gen. tensione $E$], [$v = E$ per ogni $i$], [passivato: *corto*], [$p_"erog" = E i$],
  [Gen. corrente $A$], [$i = A$ per ogni $v$], [passivato: *aperto*], [$p_"erog" = v A$],
)

== Metodo algebrico (Kirchhoff)
Rete con $L$ lati e $N$ nodi: $2L$ incognite (una tensione e una corrente per lato).
- $L$ equazioni costitutive;
- $N - 1$ equazioni *LKC* ai nodi ($sum i = 0$);
- $L - N + 1$ equazioni *LKT* alle maglie ($sum v = 0$).

== Serie, parallelo, partitori
#formula[Resistenze equivalenti e partitori][
  $ R_"serie" = R_1 + R_2 + ... quad quad 1/R_"par" = 1/R_1 + 1/R_2 + ... quad quad R_1 parallel R_2 = (R_1 R_2)/(R_1 + R_2) $
  $ "Partitore di tensione (serie):" quad V_k = V R_k/(sum R) quad quad "Partitore di corrente (2 rami in parallelo):" quad I_1 = I R_2/(R_1 + R_2) $
]
- Serie = stessa corrente. Parallelo = stessa tensione (stessi due nodi).
- Nel partitore di corrente al numeratore va la resistenza dell'*altro* ramo.

== Trasformazioni utili
- *Generatore reale*: $E$ in serie a $R$ $<=>$ generatore di corrente $A = E\/R$ in parallelo a $R$ (stessa $R$).
- $E$ in parallelo a un resistore: il resistore non influenza il resto della rete. $A$ in serie a un resistore: idem.
- *Stella--triangolo* (resistenze): $R_Y = (R_"ad1" R_"ad2")/(R_12 + R_23 + R_31)$ (prodotto dei due lati adiacenti al nodo diviso la somma). Se uguali: $R_Y = R_Delta \/ 3$.

== Resistenza equivalente da una coppia di morsetti
+ Passiva tutti i generatori indipendenti ($E ->$ corto, $A ->$ aperto).
+ Guarda la rete *dai morsetti richiesti*: la $R_"eq"$ cambia a seconda della coppia di morsetti scelta.
+ Riduci con serie/parallelo (ed eventualmente stella--triangolo).

// =====================================================================
= Teoremi di rete

== Sovrapposizione degli effetti
+ Accendi *un generatore alla volta*, passivando gli altri.
+ Calcola il contributo parziale ($i'$, $i''$, ...) con lo stesso verso di riferimento.
+ Somma algebricamente: $i = i' + i'' + ...$
#attenzione[
  La potenza *non* si sovrappone: $P = R (i' + i'')^2 != R i'^2 + R i''^2$. Prima sommi correnti o tensioni, poi calcoli la potenza.
]

== Thévenin
#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    vsource("eth", (0, 0), (0, 3.0))
    resistor("rth", (0, 3.0), (3.8, 3.0))
    wire((0, 0), (3.8, 0))
    node("A", (3.8, 3.0), fill: false)
    node("B", (3.8, 0), fill: false)
    content((rel: (0.65, 0), to: "eth.center"), anchor: "west", $E_"TH"$)
    content((rel: (-0.5, 0.55), to: "eth.center"), sans("+", weight: "bold"))
    content((rel: (0, 0.45), to: "rth.center"), anchor: "south", $R_"TH"$)
    content((3.8 + 0.25, 3.0), anchor: "west", sans("A", weight: "bold"))
    content((3.8 + 0.25, 0), anchor: "west", sans("B", weight: "bold"))
  }),
  [
    Rete lineare vista da $A B$ $=$ generatore $E_"TH"$ in serie a $R_"TH"$.
    + *Stacca il carico* dai morsetti $A B$.
    + $E_"TH" = V_(A B)$ *a vuoto* (morsetti aperti).
    + $R_"TH" = R_"eq"$ vista da $A B$ con i generatori passivati.
    + Ricollega il carico: $I = E_"TH"/(R_"TH" + R)$, $P_R = R I^2$.
    Ipotesi: nessun accoppiamento tra carico e rete. Il carico può essere qualsiasi.
  ],
)

== Norton
Rete vista da $A B$ $=$ generatore di corrente $I_N$ in parallelo a $R_N$.
#formula[Legame Thévenin--Norton][
  $ I_N = I_"cc" " (corrente di corto circuito tra " A " e " B ")" quad quad R_N = R_"TH" quad quad E_"TH" = R_"TH" I_N $
]
Se $R_"eq"$ è scomoda da calcolare: $R_"TH" = V_"vuoto" \/ I_"cc"$.

== Millman (reti binodali)
#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    // ramo 1
    vsource("e1", (0, 0), (0, 2.4))
    resistor("r1", (0, 2.4), (0, 4.8))
    // ramo 2
    wire((4.2, 0), (4.2, 2.4))
    resistor("r2", (4.2, 2.4), (4.2, 4.8))
    // ramo 3
    vsource("e3", (8.4, 0), (8.4, 2.4))
    resistor("r3", (8.4, 2.4), (8.4, 4.8))
    wire((0, 4.8), (8.4, 4.8))
    wire((0, 0), (8.4, 0))
    node("A", (4.2, 4.8))
    node("B", (4.2, 0))
    content((rel: (0.65, 0), to: "e1.center"), anchor: "west", $E_1$)
    content((rel: (-0.5, 0.55), to: "e1.center"), sans("+", weight: "bold"))
    content((rel: (0.45, 0), to: "r1.center"), anchor: "west", $R_1$)
    content((rel: (0.45, 0), to: "r2.center"), anchor: "west", $R_2$)
    content((rel: (0.65, 0), to: "e3.center"), anchor: "west", $E_3$)
    content((rel: (-0.5, 0.55), to: "e3.center"), sans("+", weight: "bold"))
    content((rel: (0.45, 0), to: "r3.center"), anchor: "west", $R_3$)
    content((4.2, 4.8 + 0.25), anchor: "south", sans("A", weight: "bold"))
    content((4.2, 0 - 0.25), anchor: "north", sans("B", weight: "bold"))
  }, s: 65%),
  [
    Tutti i rami in parallelo tra *due soli nodi* $A$ e $B$:
    $ V_(A B) = (sum_k E_k/R_k + sum_h A_h)/(sum_k 1/R_k) $
    - $E_k$ positivo se il suo $+$ è rivolto verso $A$.
    - $A_h$ positivo se la corrente entra in $A$.
    - Al denominatore vanno *tutte* le conduttanze dei rami, tranne quelle in serie a un generatore di corrente.
    - Corrente nel ramo $k$ (verso $B -> A$): $I_k = (E_k - V_(A B))/R_k$.
  ],
)

#esempio[
  Nella rete in figura $E_1 = 10 "V"$, $R_1 = 2 Omega$, $R_2 = 4 Omega$, $E_3 = 4 "V"$, $R_3 = 4 Omega$.

  *Millman*: $V_(A B) = (10\/2 + 4\/4)/(1\/2 + 1\/4 + 1\/4) = 6/1 = 6 "V"$, quindi $I_2 = V_(A B)\/R_2 = 1.5 "A"$.

  *Thévenin* visto da $R_2$: $E_"TH" = (10\/2 + 4\/4)/(1\/2 + 1\/4) = 8 "V"$, $R_"TH" = R_1 parallel R_3 = 4\/3 space Omega$, $I_2 = 8/(4\/3 + 4) = 1.5 "A"$. Stesso risultato.
]

// =====================================================================
= Transitori del primo ordine (RC, RL)

== Regole di base
- *Variabili di stato* (continue): $v_C (0^+) = v_C (0^-)$ e $i_L (0^+) = i_L (0^-)$.
- Possono invece saltare: $i_C$, $v_L$, e tutte le tensioni e correnti dei resistori.
- A regime in continua: $C ->$ aperto, $L ->$ corto.

#formula[Formula generale (generatori costanti)][
  $ x(t) = x_oo + [x(0^+) - x_oo] e^(-t\/tau) quad quad tau = R_"eq" C quad "oppure" quad tau = L/R_"eq" $
  $R_"eq"$ è la resistenza *vista dai morsetti di $C$ (o di $L$)* per $t > 0$, con i generatori passivati. Il transitorio è esaurito dopo circa $5 tau$.
]

== Procedura in 5 passi
+ *$t < 0$*: circuito a regime con l'interruttore nella posizione iniziale. Trova $v_C (0^-)$ o $i_L (0^-)$.
+ *$t = 0^+$*: imponi la continuità. Se serve un'altra grandezza a $0^+$, sostituisci $C$ con un generatore di tensione $v_C (0^+)$ oppure $L$ con un generatore di corrente $i_L (0^+)$ e risolvi la rete resistiva.
+ *$t -> oo$*: nuovo regime, trova $x_oo$.
+ *$tau$*: calcola $R_"eq"$ vista dal componente dinamico nel circuito per $t > 0$.
+ Scrivi $x(t)$ con la formula generale. Le altre grandezze: $i_C = C (dif v_C)/(dif t)$, $v_L = L (dif i_L)/(dif t)$, oppure Kirchhoff.

#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    vsource("e", (0, 0), (0, 3.0))
    switch("s", (0, 3.0), (3.8, 3.0), closed: false)
    resistor("r", (3.8, 3.0), (7.6, 3.0))
    capacitor("c", (7.6, 3.0), (7.6, 0))
    wire((0, 0), (7.6, 0))
    content((rel: (0.65, 0), to: "e.center"), anchor: "west", $E$)
    content((rel: (-0.5, 0.55), to: "e.center"), sans("+", weight: "bold"))
    content((rel: (0, 0.55), to: "s.center"), anchor: "south", $t = 0$)
    content((rel: (0, 0.45), to: "r.center"), anchor: "south", $R$)
    content((rel: (0.45, 0), to: "c.center"), anchor: "west", $C$)
  }, s: 65%),
  [
    *Carica di $C$* (scarico, interruttore chiuso in $t = 0$):
    $ v_C (t) = E (1 - e^(-t\/tau)) quad quad i(t) = E/R e^(-t\/tau) quad quad tau = R C $
    *Scarica* da $V_0$ su $R$: $v_C (t) = V_0 e^(-t\/tau)$. L'energia dissipata in $R$ è tutta quella iniziale, $1/2 C V_0^2$.

    *Circuito RL* (chiusura su $E$): $i_L (t) = E/R (1 - e^(-t\/tau))$, $v_L (t) = E e^(-t\/tau)$, $tau = L\/R$.
  ],
)

#esempio[
  $E = 12 "V"$, $R = 2 "k"Omega$, $C = 5 mu"F"$, condensatore scarico. Allora $tau = R C = 10 "ms"$, $v_C (0^+) = 0$, $v_(C oo) = 12 "V"$:
  $ v_C (t) = 12 (1 - e^(-t\/10 "ms")) "V" quad quad i(t) = 6 e^(-t\/10 "ms") "mA" $
  Tensione ai capi dell'interruttore per $t < 0$: tutta la $E$ (non passa corrente, nessuna caduta su $R$).
]

#attenzione[
  La tensione ai capi di un interruttore *aperto* non è zero: si trova con una LKT. La corrente in un interruttore *chiuso* si trova con una LKC.
]

// =====================================================================
= Regime sinusoidale e fasori

== Grandezze periodiche e sinusoidali
#formula[Definizioni][
  $ a_"ave" = 1/T integral_0^T a(t) dif t quad quad A = sqrt(1/T integral_0^T a^2 (t) dif t) " (valore efficace)" $
  $ a(t) = hat(A) sin(omega t + phi) = sqrt(2) A sin(omega t + phi) quad quad omega = 2 pi f = (2 pi)/T quad quad A = hat(A)/sqrt(2) $
]

== Fasori (metodo simbolico)
Convenzione degli appunti: riferimento *seno*, modulo *efficace*.
$ a(t) = sqrt(2) A sin(omega t + phi) quad <=> quad ph(A) = A e^(j phi) = A (cos phi + j sin phi) $
- Se la funzione è un coseno: $cos(x) = sin(x + 90°)$, quindi aggiungi $90°$ alla fase.
- Ritorno nel tempo: $A = abs(ph(A)) = sqrt(a^2 + b^2)$, $phi = arctan(b\/a)$ (se $a < 0$ aggiungi $180°$), poi $a(t) = sqrt(2) A sin(omega t + phi)$.
- Derivata: $(dif)/(dif t) -> j omega$ (moltiplica il modulo per $omega$, anticipa di $90°$).
- Somme e differenze in forma cartesiana, prodotti e rapporti in forma polare.
- $j = e^(j 90°)$, $1\/j = -j$, $j^2 = -1$.

== Impedenze
#table(
  columns: (1fr, 1.3fr, 1.3fr, 2.2fr),
  table.header([*Bipolo*], [*Impedenza $ph(Z)$*], [*Reattanza $X$*], [*Sfasamento $phi = phi_V - phi_I$*]),
  [$R$], [$R$], [$0$], [$0°$: $V$ e $I$ in fase],
  [$L$], [$j omega L$], [$X_L = omega L > 0$], [$+90°$: corrente in *ritardo*],
  [$C$], [$1/(j omega C) = -j/(omega C)$], [$X_C = -1/(omega C) < 0$], [$-90°$: corrente in *anticipo*],
)
#formula[Legge di Ohm simbolica][
  $ ph(V) = ph(Z) ph(I) quad quad ph(Z) = R + j X = Z e^(j phi) quad quad Z = sqrt(R^2 + X^2) quad quad phi = arctan(X/R) $
  $ ph(Y) = 1/ph(Z) = G + j B quad quad ph(Z)_"serie" = sum ph(Z)_k quad quad ph(Y)_"par" = sum ph(Y)_k quad quad ph(Z)_1 parallel ph(Z)_2 = (ph(Z)_1 ph(Z)_2)/(ph(Z)_1 + ph(Z)_2) $
]
- *RL serie*: $ph(Z) = R + j omega L$, $phi > 0$ (ohmico-induttivo, corrente in ritardo).
- *RC serie*: $ph(Z) = R - j/(omega C)$, $phi < 0$ (ohmico-capacitivo, corrente in anticipo).
- *RC parallelo*: $ph(Z) = R/(1 + j omega R C)$.
- LKC, LKT, partitori, sovrapposizione, Thévenin, Norton e Millman valgono identici con fasori e impedenze, purché tutti i generatori abbiano la *stessa frequenza*:
$ ph(V)_(A B) = (sum ph(E)_k \/ ph(Z)_k + sum ph(A)_h)/(sum 1\/ph(Z)_k) $

== Procedura per un esercizio in regime sinusoidale
+ Calcola $omega = 2 pi f$ e le impedenze $j omega L$, $-j\/(omega C)$.
+ Trasforma i generatori in fasori (efficace, fase; attenzione a $sqrt(2)$ e a sin/cos).
+ Risolvi la rete come una rete resistiva, con numeri complessi.
+ Torna nel tempo solo per le grandezze richieste.
+ Potenza attiva su un resistore: $P = R I^2$ con $I$ efficace.

== Risposta in frequenza, filtri, risonanza
$ ph(H)(j omega) = ph(V)_"out"/ph(V)_"in" quad quad omega_t = 1/(R C) " (pulsazione di taglio: " abs(ph(H)) = 1\/sqrt(2) ", cioè" -3 "dB)" $
#table(
  columns: (1.2fr, 1.6fr, 1.6fr, 1.4fr),
  table.header([*Filtro*], [$ph(H)(j omega)$], [*Modulo*], [*Fase*]),
  [Passa-basso RC (uscita su $C$)], [$1/(1 + j omega R C)$], [$1/sqrt(1 + (omega\/omega_t)^2)$], [$-arctan(omega R C)$],
  [Passa-alto CR (uscita su $R$)], [$(j omega R C)/(1 + j omega R C)$], [$(omega\/omega_t)/sqrt(1 + (omega\/omega_t)^2)$], [$90° - arctan(omega R C)$],
)

#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    vsource("e", (0, 0), (0, 3.0))
    resistor("r", (0, 3.0), (3.8, 3.0))
    inductor("l", (3.8, 3.0), (7.6, 3.0))
    capacitor("c", (7.6, 3.0), (7.6, 0))
    wire((0, 0), (7.6, 0))
    content((rel: (0.65, 0), to: "e.center"), anchor: "west", $ph(E)$)
    content((rel: (-0.5, 0.55), to: "e.center"), sans("+", weight: "bold"))
    content((rel: (0, 0.45), to: "r.center"), anchor: "south", $R$)
    content((rel: (0, 0.45), to: "l.center"), anchor: "south", $L$)
    content((rel: (0.45, 0), to: "c.center"), anchor: "west", $C$)
  }, s: 65%),
  [
    *RLC serie*: $ph(Z) = R + j (omega L - 1/(omega C))$

    *Risonanza* ($X = 0$):
    $ omega_0 = 1/sqrt(L C) quad quad f_0 = 1/(2 pi sqrt(L C)) $
    - $ph(Z) = R$ (minima), corrente massima $I = E\/R$, in fase con $ph(E)$.
    - $ph(V)_L = -ph(V)_C$: si compensano, e possono superare $E$.
    - Fattore di merito: $Q_0 = (omega_0 L)/R$, con $V_L = V_C = Q_0 E$.
    - $omega < omega_0$: capacitivo. $omega > omega_0$: induttivo.
  ],
)

// =====================================================================
= Potenza in regime sinusoidale

== Potenze attiva, reattiva, apparente, complessa
#formula[Definizioni ($V$, $I$ efficaci, $phi = phi_V - phi_I$)][
  $ P = V I cos phi " [W]" quad quad Q = V I sin phi " [var]" quad quad S = V I = sqrt(P^2 + Q^2) " [VA]" $
  $ ph(S) = ph(V) ph(I)^* = P + j Q quad quad cos phi = P/S quad quad tan phi = Q/P $
  $ "Su un'impedenza " ph(Z) = R + j X: quad P = R I^2 quad Q = X I^2 quad S = Z I^2 = V^2/Z $
]
#table(
  columns: (1fr, 1.2fr, 1.6fr, 1.6fr),
  table.header([*Bipolo*], [$P$], [$Q$], [*Note*]),
  [$R$], [$R I^2 = V^2\/R$], [$0$], [solo attiva],
  [$L$], [$0$], [$omega L I^2 = V^2/(omega L) > 0$], [*assorbe* reattiva],
  [$C$], [$0$], [$-I^2/(omega C) = -omega C V^2 < 0$], [*eroga* reattiva],
)
- Carico induttivo: $Q > 0$, corrente in ritardo. Carico capacitivo: $Q < 0$, corrente in anticipo.
- Il *triangolo delle potenze* ($P$, $Q$, $S$) è simile al triangolo dell'impedenza ($R$, $X$, $Z$): stesso angolo $phi$.
- Carico industriale dato con $P$ e $cos phi$: $Q = P tan phi$, $S = P\/cos phi$, $I = P/(V cos phi)$.

== Teorema di Boucherot
#formula[Bilancio delle potenze][
  $ P_"tot" = sum_k P_k quad quad Q_"tot" = sum_k Q_k " (somma algebrica)" quad quad S_"tot" = sqrt(P_"tot"^2 + Q_"tot"^2) != sum_k S_k $
]
#attenzione[
  Le potenze apparenti *non* si sommano. Nemmeno i moduli delle correnti di carichi con $cos phi$ diversi.
]

== Metodo per gli esercizi di bilancio (linea + carichi)
Si parte dalla sezione di cui si conosce la tensione (di solito il carico) e si risale verso il generatore.
+ *Sezione del carico*: $P_2$, $Q_2$ noti (somma i carichi in parallelo con Boucherot). $S_2 = sqrt(P_2^2 + Q_2^2)$, $I = S_2 \/ V_2$.
+ *Elementi in serie* (linea $ph(Z)_l = R_l + j X_l$): stessa corrente $I$. $Delta P = R_l I^2$, $Delta Q = X_l I^2$.
+ *Sezione a monte*: $P_1 = P_2 + Delta P$, $Q_1 = Q_2 + Delta Q$, $S_1 = sqrt(P_1^2 + Q_1^2)$, $V_1 = S_1 \/ I$.
+ *Elementi in parallelo* (stessa tensione $V$): $P = V^2\/R$, $Q = V^2\/X$, poi ricalcola $I = S\/V$ per la sezione nuova.
+ Ripeti alternando: in serie si conserva $I$, in parallelo si conserva $V$.
Se invece è nota la tensione *a monte*, serve il calcolo con i fasori (o impedenza equivalente totale).

#formula[Linea: rendimento e caduta di tensione][
  $ eta = P_2/P_1 = P_2/(P_2 + R_l I^2) quad quad Delta V = V_1 - V_2 approx I (R_l cos phi + X_l sin phi) $
  A parità di $P$ e $V$: $I = P/(V cos phi)$, quindi perdite $R_l I^2 prop 1\/cos^2 phi$.
]

== Rifasamento
#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    resistor("zl", (0, 3.0), (4.2, 3.0), variant: "iec")
    capacitor("c", (4.2, 3.0), (4.2, 0))
    wire((4.2, 3.0), (8.4, 3.0))
    resistor("zu", (8.4, 3.0), (8.4, 0), variant: "iec")
    wire((0, 0), (8.4, 0))
    node("n1", (4.2, 3.0))
    node("n2", (4.2, 0))
    node("a", (0, 3.0), fill: false)
    node("b", (0, 0), fill: false)
    content((rel: (0, 0.45), to: "zl.center"), anchor: "south", $ph(Z)_l$)
    content((rel: (0.45, 0), to: "c.center"), anchor: "west", $C$)
    content((rel: (0.45, 0), to: "zu.center"), anchor: "west", $P, Q$)
  }, s: 65%),
  [
    Condensatore *in parallelo* al carico induttivo: $P$ non cambia, $Q$ diminuisce.
    $ P' = P quad quad Q' = Q + Q_C = P tan phi' $
    $ Q_C = P (tan phi' - tan phi) < 0 $
    $ C = abs(Q_C)/(omega V^2) = (P (tan phi - tan phi'))/(omega V^2) $
    Dopo: $I' = P/(V cos phi') < I$, perdite di linea ridotte del fattore $(cos phi \/ cos phi')^2$.
  ],
)

#esempio[
  Carico RL serie con $V = 230 "V"$, $f = 50 "Hz"$, $R = 30 Omega$, $X_L = 40 Omega$. Allora $Z = 50 Omega$, $I = 4.6 "A"$, $cos phi = 0.6$, $P = 30 dot.op 4.6^2 = 634.8 "W"$, $Q = 40 dot.op 4.6^2 = 846.4 "var"$, $S = 1058 "VA"$.

  Rifasamento a $cos phi' = 0.9$ ($tan phi = 1.333$, $tan phi' = 0.484$): $Q_C = 634.8 (0.484 - 1.333) = -538.9 "var"$,
  $C = 538.9/(2 pi dot.op 50 dot.op 230^2) = 32.4 mu"F"$. Nuova corrente $I' = 634.8/(230 dot.op 0.9) = 3.07 "A"$.
]

// =====================================================================
= Sistemi trifase

== Tensioni e correnti
Terna simmetrica diretta: $ph(E)_1 = E$, $ph(E)_2 = E e^(-j 120°)$, $ph(E)_3 = E e^(+j 120°)$, con $ph(E)_1 + ph(E)_2 + ph(E)_3 = 0$.
#formula[Fase e linea][
  $ ph(V)_12 = ph(E)_1 - ph(E)_2 quad quad V = sqrt(3) E quad quad ph(V)_12 = sqrt(3) ph(E)_1 e^(j 30°) $
  $E$: tensione di fase (stellata). $V$: tensione di linea (concatenata). Negli esercizi, se non specificato, la tensione data è la *concatenata* (es. $400 "V"$, da cui $E = 230 "V"$).
]
#table(
  columns: (1fr, 1.6fr, 1.6fr),
  table.header([*Carico equilibrato*], [*Tensione su ogni impedenza*], [*Corrente*]),
  [Stella (Y)], [$E = V\/sqrt(3)$], [$I_"linea" = I_"fase" = E\/Z_Y$],
  [Triangolo ($Delta$)], [$V$], [$I_"fase" = V\/Z_Delta$, $quad I_"linea" = sqrt(3) I_"fase"$],
)
- Equivalenza: $ph(Z)_Y = ph(Z)_Delta \/ 3$. A parità di impedenze, il triangolo assorbe *3 volte* la potenza della stella.

== Circuito monofase equivalente (sistema simmetrico ed equilibrato)
#grid(
  columns: (auto, 1fr), gutter: 14pt, align: horizon,
  circ({
    import zap: *
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), inductor: (variant: "ieee"))
    vsource("e1", (0, 0), (0, 3.0))
    resistor("zl", (0, 3.0), (4.2, 3.0), variant: "iec")
    resistor("zy", (4.2, 3.0), (4.2, 0), variant: "iec")
    wire((0, 0), (4.2, 0))
    content((rel: (0.65, 0), to: "e1.center"), anchor: "west", $ph(E)_1$)
    content((rel: (-0.5, 0.55), to: "e1.center"), sans("+", weight: "bold"))
    content((rel: (0, 0.45), to: "zl.center"), anchor: "south", $ph(Z)_l$)
    content((rel: (0.45, 0), to: "zy.center"), anchor: "west", $ph(Z)_Y$)
    content((0 - 0.25, 0), anchor: "east", sans("O", weight: "bold"))
    content((4.2 + 0.25, 0), anchor: "west", sans("O'", weight: "bold"))
  }, s: 65%),
  [
    I centri stella sono allo stesso potenziale ($ph(V)_(O' O) = 0$): si studia *una sola fase*.
    + Trasforma i carichi a triangolo in stella: $ph(Z)_Y = ph(Z)_Delta \/ 3$.
    + Risolvi la fase 1 con $E = V\/sqrt(3)$: $ph(I)_1 = ph(E)_1/(ph(Z)_l + ph(Z)_Y)$.
    + Le altre fasi sono uguali, sfasate di $minus.plus 120°$.
    + Potenze totali $= 3 times$ quelle della singola fase.
    Più carichi equilibrati in parallelo: le loro $ph(Z)_Y$ sono in parallelo nel monofase equivalente.
  ],
)

== Carico a stella squilibrato (Millman)
Tensione tra i centri stella (senza neutro):
$ ph(V)_(O' O) = (ph(E)_1 ph(Y)_1 + ph(E)_2 ph(Y)_2 + ph(E)_3 ph(Y)_3)/(ph(Y)_1 + ph(Y)_2 + ph(Y)_3) quad quad ph(I)_k = (ph(E)_k - ph(V)_(O' O)) ph(Y)_k $
- Con *neutro ideale*: $ph(V)_(O' O) = 0$, ogni fase è indipendente, $ph(I)_k = ph(E)_k \/ ph(Z)_k$ e $ph(I)_N = ph(I)_1 + ph(I)_2 + ph(I)_3$.
- Con neutro di impedenza $ph(Z)_N$: aggiungi $ph(Y)_N$ al denominatore.
- Carico a triangolo squilibrato: $ph(I)_12 = ph(V)_12 \/ ph(Z)_12$ ecc., poi $ph(I)_1 = ph(I)_12 - ph(I)_31$ (LKC ai nodi).

== Potenza trifase
#formula[Carico equilibrato, stella o triangolo ($V$ concatenata, $I$ di linea, $phi$ angolo dell'impedenza)][
  $ P = sqrt(3) V I cos phi = 3 E I cos phi quad quad Q = sqrt(3) V I sin phi quad quad S = sqrt(3) V I quad quad I = S/(sqrt(3) V) $
]
- Boucherot vale identico: somma $P$ e $Q$ di tutti i carichi, poi $S$ e $I$ di linea.
- Linea trifase ($ph(Z)_l = R_l + j X_l$ per filo): $Delta P = 3 R_l I^2$, $Delta Q = 3 X_l I^2$, e a monte $V_1 = S_1/(sqrt(3) I)$.
- Rendimento: $eta = P_2/(P_2 + 3 R_l I^2)$.
- Il metodo di bilancio della sezione 5.3 si applica uguale, con $sqrt(3)$ nel legame tra $S$, $V$ e $I$ e con il fattore 3 sulle perdite.

#formula[Rifasamento trifase][
  $ Q_C = P (tan phi' - tan phi) quad quad C_Y = (P (tan phi - tan phi'))/(omega V^2) quad quad C_Delta = (P (tan phi - tan phi'))/(3 omega V^2) = C_Y/3 $
  Tre condensatori uguali: a triangolo serve un terzo della capacità (ma sopportano la tensione concatenata).
]

#esempio[
  $V = 400 "V"$, carico a stella $ph(Z)_Y = 8 + j 6 space Omega$ ($Z = 10 Omega$, $cos phi = 0.8$).
  $E = 400\/sqrt(3) = 230.9 "V"$, $I = 23.09 "A"$, $P = 3 dot.op 8 dot.op 23.09^2 = 12.8 "kW"$, $Q = 9.6 "kvar"$, $S = 16 "kVA"$. Verifica: $sqrt(3) dot.op 400 dot.op 23.09 = 16 "kVA"$.

  Le stesse impedenze a triangolo: $I_"fase" = 40 "A"$, $I_"linea" = 69.3 "A"$, $P = 38.4 "kW"$ (il triplo).
]

== Perché il trifase
Potenza istantanea totale *costante* nei sistemi simmetrici ed equilibrati; a parità di potenza trasmessa servono meno conduttori e meno perdite. Il neutro serve ad alimentare carichi monofase alla tensione $E$ e a mantenere le tensioni di fase anche con carichi squilibrati.

// =====================================================================
= Errori tipici da controllare

#table(
  columns: (1.3fr, 2.7fr),
  align: (left + horizon, left + horizon),
  table.header([*Dove*], [*Controllo*]),
  [Sovrapposizione], [Generatori passivati nel modo giusto ($E$ corto, $A$ aperto). Mai sommare le potenze parziali.],
  [Thévenin], [Carico staccato prima di calcolare $E_"TH"$ e $R_"TH"$.],
  [Millman], [Segno di ogni $E_k$ e $A_h$ rispetto al nodo $A$. Nessuna conduttanza per i rami con generatore di corrente.],
  [Transitori], [$R_"eq"$ vista da $C$ o $L$ nel circuito per $t > 0$, non da quello per $t < 0$. Continuità solo di $v_C$ e $i_L$.],
  [Fasori], [Valore efficace, non di picco ($hat(A)\/sqrt(2)$). Coseno $->$ $+90°$. Quadrante giusto nell'arcotangente.],
  [Calcolatrice], [Gradi o radianti coerenti; $omega$ in rad/s.],
  [Potenze], [Segno di $Q$: induttivo $+$, capacitivo $-$. Non sommare le $S$.],
  [Rifasamento], [$V$ è la tensione *ai capi del condensatore*. $P$ resta invariata.],
  [Trifase], [Quale tensione è data ($V$ o $E$)? $sqrt(3)$ tra linea e fase. Fattore 3 nelle perdite di linea. $ph(Z)_Delta \/ 3$ per passare a stella.],
  [Unità], [mH, $mu$F, k$Omega$, kW, kvar convertiti prima di fare i conti.],
)
