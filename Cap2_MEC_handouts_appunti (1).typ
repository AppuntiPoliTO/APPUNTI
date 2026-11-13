#import "lib.typ": *
#set heading(numbering: "1.")
= Reti in regime stazionario e transitori

== Metodo algebrico <metodo-algebrico>

=== Variabili di rete e bilancio delle equazioni <bilancio>

Risolvere una rete significa trovare tensione e corrente di ogni lato (*variabili di rete*). Servono due tipi di equazioni:
- *costitutive*, che dipendono dalla natura dei componenti;
- *topologiche* (leggi di Kirchhoff), che dipendono solo dai collegamenti.
Il *metodo algebrico* scrive tante equazioni linearmente indipendenti quante sono le incognite.

#formula[Bilancio equazioni-incognite (rete con $L$ lati e $N$ nodi)][
  - Incognite: una tensione e una corrente per lato, $N_"incognite" = 2 L$.
  - Equazioni costitutive: $L$, una per lato. Restano $L$ incognite.
  - Leggi di Kirchhoff alle correnti (LKC): $N - 1$ equazioni indipendenti.
  - Leggi di Kirchhoff alle tensioni (LKT): $L - N + 1$ equazioni indipendenti, sulle maglie.
  $ L + (N - 1) + (L - N + 1) = 2 L $
]

=== Lati composti <lati-composti>

L'equazione costitutiva $V = f(I)$ si scrive anche per un *lato composto*, cioè una serie o un parallelo di bipoli compreso tra due nodi. Così il numero di incognite si riduce.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/02-lati-composti.typ",
  formula[Lati composti][
    (a) Serie di resistori, convenzione degli utilizzatori:
    $ V = (R_1 + R_2 + R_3) I $
    (b) Serie di generatori ideali, LKT sulla maglia fittizia:
    $ V + E_1 + E_2 - E_3 = 0 => V = E_3 - E_1 - E_2 $
    (c) Lato attivo serie, convenzione dei generatori:
    $ -V - R_k I + E_k = 0 => V = E_k - R_k I $
    e, per il lato $k$-esimo della rete, $v_k = E_k - R_k i_k$.

    (d) Lato attivo parallelo $A_k parallel R_k$: in $R_k$ scorre $A_k - i_k$, quindi
    $ v_k = R_k A_k - R_k i_k $
  ],
)
// VERIFICARE: verso della corrente in R_k (vedi segnalazioni S1)

=== Esempio: rete binodale <rete-binodale>

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/07-rete-binodale.typ",
  [
    Nodi $A$ e $B$ ($N = 2$), $L = 3$ lati:
    - incognite: $2 L = 6$ ($v_1, v_2, v_3, i_1, i_2, i_3$);
    - equazioni costitutive: $L = 3$;
    - LKC: $N - 1 = 1$, al nodo $A$ con le correnti entranti positive;
    - LKT: $L - N + 1 = 2$, sulle maglie 1 e 2.
  ],
)

#block(breakable: false, grid(
  columns: (1fr, 1fr), column-gutter: 1em,
  [
    *Costitutive*
    $ cases(
      v_1 = E_1 - R_1 i_1,
      v_2 = E_2 - R_2 i_2,
      v_3 = R_3 i_3
    ) $
  ],
  [
    *Topologiche*
    $ cases(
      i_1 + i_2 - i_3 = 0 & quad "(LKC, nodo" A")",
      v_1 - v_3 = 0 & quad "(LKT, maglia 1)",
      v_2 - v_3 = 0 & quad "(LKT, maglia 2)"
    ) $
  ],
))

Le costitutive nelle LKT danno un sistema nelle sole correnti:
$ cases(
  i_1 + i_2 - i_3 = 0,
  R_1 i_1 + R_3 i_3 = E_1,
  R_2 i_2 + R_3 i_3 = E_2
) quad => quad i_1 = (E_1 - R_3 i_3) / R_1, quad i_2 = (E_2 - R_3 i_3) / R_2 $
$ (E_1 - R_3 i_3) / R_1 + (E_2 - R_3 i_3) / R_2 - i_3 = 0 $

#formula[Corrente nel ramo centrale][
  $ i_3 = (R_2 E_1 + R_1 E_2) / (R_1 R_2 + R_2 R_3 + R_3 R_1) $
]

Nota $i_3$, si ricavano a ritroso $i_1$ e $i_2$ e poi $v_1$, $v_2$, $v_3$ dalle costitutive.

#esempio[$E_1 = 10 "V"$, $E_2 = 6 "V"$, $R_1 = R_2 = 2 space Omega$, $R_3 = 1 space Omega$. $i_3 = (2 dot 10 + 2 dot 6) \/ (4 + 2 + 2) = 32 \/ 8 = 4 "A"$; $i_1 = (10 - 4) \/ 2 = 3 "A"$, $i_2 = (6 - 4) \/ 2 = 1 "A"$ (verifica: $3 + 1 = 4$); $v_3 = R_3 i_3 = 4 "V"$. Questi valori si riusano in tutta la @teoremi.]

== Teoremi di rete <teoremi>

Il metodo algebrico è generale e si presta al calcolatore, ma a mano diventa pesante appena $L$ supera qualche unità. I teoremi di rete semplificano il calcolo e si basano tutti sulla linearità.

=== Linearità <linearita>

Un componente, o un sistema, è *lineare* se valgono sia l'omogeneità sia l'additività.

#formula[Linearità (resistore, $v = R i$)][
  - Omogeneità: se l'ingresso è moltiplicato per $k$, anche l'uscita lo è.
    $ R (k i) = k (R i) = k v $
  - Additività: la risposta alla somma di due ingressi è la somma delle risposte ai singoli ingressi.
    $ v = R (i_1 + i_2) = R i_1 + R i_2 = v^((i_1)) + v^((i_2)) $
]

La linearità vale anche per i bipoli dinamici, purché i parametri siano costanti nel tempo. Per il condensatore, $i = C (d v) \/ (d t)$:
$ C (d (k v)) / (d t) = k C (d v) / (d t) = k i, quad quad C d / (d t) (v_1 + v_2) = underbrace(C (d v_1) / (d t), i^((v_1))) + underbrace(C (d v_2) / (d t), i^((v_2))) $

Sono lineari i resistori, i condensatori e gli induttori con $R$, $C$, $L$ costanti (componenti *lineari tempo-invarianti*, LTI) e i generatori ideali. Una rete di soli componenti lineari è lineare.

=== Sovrapposizione degli effetti <sovrapposizione>

In una rete lineare con $N_g$ generatori indipendenti, ogni tensione e ogni corrente è la somma di $N_g$ contributi. Ogni contributo si calcola con un solo generatore attivo e gli altri *passivati*.

#formula[Passivazione dei generatori][
  - Generatore di tensione: $e(t) = 0$ $->$ corto circuito.
  - Generatore di corrente: $a(t) = 0$ $->$ circuito aperto.
]

*Procedura.*
+ Lascia attivo un generatore alla volta e passiva gli altri.
+ Calcola il contributo con lo stesso verso di riferimento della grandezza cercata. Un contributo orientato al contrario entra col segno meno.
+ Somma algebricamente i contributi.

*Esempio.* Nella rete di @rete-binodale si cercano $i_3$ e $V_3$:
$ i_3 = i'_3 (E_1, 0) + i''_3 (0, E_2), quad quad V_3 = V_3^((E_1)) + V_3^((E_2)) $

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/12-sovrapposizione-sottocircuiti.typ",
  [
    (a) $E_2$ in corto: $R_2$ e $R_3$ sono in parallelo.
    $ R_p = R_2 parallel R_3 = (R_2 R_3) / (R_2 + R_3), quad R_s = R_1 + R_p $
    $ E_1 - R_s I_p = 0 => I_p = E_1 / R_s $
    $ V_3^((E_1)) = R_p I_p = E_1 R_p / (R_1 + R_p) $
    (b) $E_1$ in corto: $R_1$ e $R_3$ sono in parallelo. Partitore di tensione:
    $ R_(p 2) = R_1 parallel R_3 = (R_1 R_3) / (R_1 + R_3), quad V_3^((E_2)) = E_2 R_(p 2) / (R_(p 2) + R_2) $
  ],
)

Con $i'_3 = V_3^((E_1)) \/ R_3$ e $i''_3 = V_3^((E_2)) \/ R_3$ si ritrova il risultato del metodo algebrico:
$ i_3 = (E_1 R_2) / (R_1 R_2 + R_1 R_3 + R_2 R_3) + (E_2 R_1) / (R_1 R_2 + R_1 R_3 + R_2 R_3) = (E_1 R_2 + E_2 R_1) / (R_1 R_2 + R_1 R_3 + R_2 R_3) $

#esempio[Valori di @rete-binodale. $R_p = R_(p 2) = 2 parallel 1 = 2\/3 space Omega$, $R_s = 8\/3 space Omega$, $I_p = 3.75 "A"$. $V_3^((E_1)) = 10 dot (2\/3) \/ (8\/3) = 2.5 "V"$, $V_3^((E_2)) = 6 dot (2\/3) \/ (8\/3) = 1.5 "V"$. Quindi $V_3 = 4 "V"$ e $i_3 = V_3 \/ R_3 = 4 "A"$, come col metodo algebrico.]

- *Pro:* con un solo generatore attivo bastano serie, parallelo e partitori.
- *Contro:* si risolvono $N_g$ circuiti.

#attenzione[La potenza non è lineare, quindi non si sovrappone:
  $ P_3 = R_3 (i'_3 + i''_3)^2 = R_3 i'^2_3 + R_3 i''^2_3 + 2 R_3 i'_3 i''_3 != P'_3 + P''_3 $
  Sommare le potenze parziali dimentica il doppio prodotto. Prima si sommano correnti o tensioni, poi si calcola la potenza. Con i valori dell'esempio: corretto $1 dot 4^2 = 16 "W"$; errato $1 dot 2.5^2 + 1 dot 1.5^2 = 8.5 "W"$; manca $2 dot 1 dot 2.5 dot 1.5 = 7.5 "W"$.]

=== Teorema di Thévenin <thevenin>

#grid(
  columns: (1fr, auto), column-gutter: 1em, align: horizon,
  [
    Una rete lineare vista da due morsetti $A$-$B$ equivale a un generatore ideale di tensione $E_"TH"$ in serie a un resistore $R_"TH"$.
    - *Ipotesi:* rete lineare e nessun accoppiamento con il carico (magnetico o tramite generatori pilotati).
    - *Carico:* nessuna ipotesi, può essere anche non lineare.
    Si enuncia per reti resistive, ma vale in generale.
  ],
  include "figure/cap2/14-equivalente-thevenin.typ",
)

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/15-thevenin-parametri.typ",
  formula[Parametri di Thévenin][
    - $E_"TH"$: tensione a vuoto $V_(A B)$, con i morsetti $A$-$B$ aperti.
    - $R_"TH"$: resistenza vista da $A$-$B$ con tutti i generatori indipendenti passivati.
  ],
)

*Procedura.*
+ Stacca il carico dai morsetti $A$-$B$.
+ Calcola $E_"TH" = V_(A B)$ a vuoto.
+ Calcola $R_"TH"$ con i generatori passivati.
+ Ricollega il carico all'equivalente.

*Esempio 1.* Rete di @rete-binodale, con carico $R_3$ tra $A$ e $B$.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/18-thevenin-esempio.typ",
  [
    (a) Con $E_1$ ed $E_2$ in corto, $R_1$ e $R_2$ stanno entrambe tra $A$ e $B$. Con un generatore di prova:
    $ V / I = R_(A B) = R_"TH" = R_1 parallel R_2 $
    (b) A vuoto $I = 0$, quindi
    $ E_"TH" - R_"TH" dot 0 - V_(A B) = 0 => E_"TH" = V_(A B) $
    $ E_"TH" = (E_1 R_2 + E_2 R_1) / (R_1 + R_2) $ (si ricava con Millman, @millman).
  ],
)

#esempio[$R_"TH" = 2 parallel 2 = 1 space Omega$, $E_"TH" = 8 "V"$ (da @millman). Ricollegando il carico: $i_3 = E_"TH" \/ (R_"TH" + R_3) = 8 \/ 2 = 4 "A"$, come in @rete-binodale.]

*Esempio 2: resistenza equivalente da diverse coppie di morsetti.* In una rete a quattro morsetti la $R_"eq"$ dipende dalla coppia scelta: si collega un generatore di prova a quei morsetti e si lasciano aperti gli altri due.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/31-req-morsetti.typ",
  [
    (a) Prova tra $B$ e $D$: $R_1$, $R_4$, $R_3$ sono percorse dalla stessa corrente (in serie) e il ramo è in parallelo a $R_2$.
    $ R_S = R_1 + R_3 + R_4, quad R_(B D) = R_S parallel R_2 $
    (b) Prova tra $A$ e $C$: in serie sono $R_1$, $R_2$, $R_3$, in parallelo a $R_4$.
    $ R'_S = R_1 + R_2 + R_3, quad R_(A C) = R_4 parallel R'_S $
  ],
)

#esempio[$R_1 = 1 space Omega$, $R_2 = 6 space Omega$, $R_3 = 2 space Omega$, $R_4 = 3 space Omega$. $R_(B D) = 6 parallel 6 = 3 space Omega$; $R_(A C) = 3 parallel 9 = 2.25 space Omega$. Stessa rete, resistenze equivalenti diverse.]

=== Teorema di Norton <norton>

È il duale di Thévenin, con le stesse ipotesi (@thevenin). La rete lineare vista da $A$-$B$ equivale a un generatore ideale di corrente $A_"NOR"$ in parallelo a un resistore $R_"NOR"$.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/21-equivalente-norton.typ",
  formula[Parametri di Norton][
    - $A_"NOR"$: corrente di corto circuito tra $A$ e $B$.
    - $R_"NOR" equiv R_"TH"$: resistenza vista da $A$-$B$ con i generatori passivati (figura in @thevenin).
  ],
)

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/22-norton-corrente-cortocircuito.typ",
  [Per trovare $A_"NOR"$ si chiudono in corto i morsetti $A$-$B$ e si calcola la corrente che li attraversa.],
)

*Esempio.* Rete di @rete-binodale, carico $R_3$, morsetti $A$-$B$. Con $A$ e $B$ in corto $V_(A B) = 0$, e ogni ramo attivo porta verso $A$ la corrente $E_k \/ R_k$:
$ A_"NOR" = E_1 / R_1 + E_2 / R_2, quad quad R_"NOR" = R_1 parallel R_2 = R_"TH" $
Verifica con $E_"TH"$ ricavata in @millman:
$ E_"TH" / R_"TH" = (E_1 R_2 + E_2 R_1) / (R_1 + R_2) dot (R_1 + R_2) / (R_1 R_2) = E_1 / R_1 + E_2 / R_2 = A_"NOR" $

#esempio[$A_"NOR" = 10\/2 + 6\/2 = 8 "A"$, $R_"NOR" = 1 space Omega$; verifica $E_"TH" \/ R_"TH" = 8 \/ 1 = 8 "A"$. Partitore di corrente sul carico: $i_3 = A_"NOR" R_"NOR" \/ (R_"NOR" + R_3) = 8 dot 1 \/ 2 = 4 "A"$.]

=== Teorema di Millman <millman>

In una rete lineare binodale, cioè con un numero qualsiasi di lati in parallelo tra due soli nodi, il teorema (o corollario) di Millman dà in forma chiusa la tensione $V_(A B)$ tra i due nodi.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/24-millman-rete.typ",
  [
    LKT su ogni ramo:
    $ E_1 - R_1 I_1 - V_(A B) = 0 => I_1 = (E_1 - V_(A B)) / R_1 $
    $ -E_2 + R_2 I_2 - V_(A B) = 0 => I_2 = (E_2 + V_(A B)) / R_2 $
    $ I_3 = A_3 quad "(indipendente da" R_3")" $
    $ V_(A B) = R_4 I_4 => I_4 = V_(A B) / R_4 $
  ],
)

LKC al nodo $A$, poi si sostituiscono le correnti di ramo:
$ I_1 - I_2 + A_3 - I_4 = 0 quad => quad V_(A B) (1 / R_1 + 1 / R_2 + 1 / R_4) = E_1 / R_1 - E_2 / R_2 + A_3 $

#formula[Teorema di Millman][
  $ V_(A B) = (display(E_1 / R_1 - E_2 / R_2 + A_3)) / (display(1 / R_1 + 1 / R_2 + 1 / R_4)) quad quad "in generale" quad V_(A B) = (display(sum_k plus.minus E_k / R_k + sum_h plus.minus A_h)) / (display(sum_j 1 / R_j)) $
  ($j$: tutti i rami, esclusi quelli con generatore di corrente)
]

*Regole dei segni.*
+ $E_k \/ R_k$ ha segno $+$ se la polarità di $E_k$ segue $V_(A B)$ (morsetto $+$ verso $A$), altrimenti $-$.
+ $A_h$ ha segno $+$ se la corrente è diretta verso $A$, altrimenti $-$.
+ Al denominatore vanno le conduttanze di tutti i rami, tranne quelle in serie a un generatore di corrente (come $R_3$).

#esempio[Rete della figura con $E_1 = 10 "V"$, $R_1 = 2 space Omega$, $E_2 = 4 "V"$, $R_2 = 2 space Omega$, $A_3 = 1 "A"$, $R_4 = 1 space Omega$. $V_(A B) = (5 - 2 + 1) \/ (0.5 + 0.5 + 1) = 2 "V"$; $I_1 = 4 "A"$, $I_2 = 3 "A"$, $I_4 = 2 "A"$; LKC: $4 - 3 + 1 - 2 = 0$.]

*Esempio: $E_"TH"$ della rete binodale.* È la rete a vuoto del pannello (b) dell'esempio in @thevenin. Entrambi i generatori sono concordi con $V_(A B)$:
$ E_"TH" = V_(A B) = (display(E_1 / R_1 + E_2 / R_2)) / (display(1 / R_1 + 1 / R_2)) $

#esempio[Valori di @rete-binodale: $E_"TH" = (5 + 3) \/ (0.5 + 0.5) = 8 "V"$. Con anche $R_3$ collegato: $V_(A B) = 8 \/ (0.5 + 0.5 + 1) = 4 "V" = v_3$, come in @rete-binodale.]

== Generatore reale e adattamento del carico <generatore-reale>

=== Caratteristica esterna <caratteristica-esterna>

Il generatore reale di tensione è un generatore ideale $E$ in serie a un resistore $R$, la *resistenza interna*, che tiene conto delle cadute di tensione nel dispositivo.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/59-generatore-reale-carico.typ",
  formula[Generatore reale][
    Convenzione dei generatori ai morsetti $A$-$B$ ($I$ uscente dal morsetto positivo di $V$), LKT sulla maglia:
    $ E - R I - V = 0 quad => quad V = E - R I $
  ],
)

Nel piano $(I, V)$ la caratteristica esterna è una retta a pendenza negativa, che passa per due punti:
- a vuoto (morsetti aperti): $I = 0$, $V = E$;
- in corto circuito: $V = 0$, $I_"cc" = E \/ R$.

=== Punto di lavoro con carico resistivo <punto-lavoro>

Con un carico $R_u$ ai morsetti, il punto di lavoro è l'intersezione tra la caratteristica del generatore e quella del carico.

#grid(
  columns: (1fr, auto), column-gutter: 1em, align: horizon,
  formula[Punto di lavoro][
    $ cases(V = E - R I, V = R_u I) quad => quad I = E / (R + R_u) $
  ],
  include "figure/cap2/60-punto-di-lavoro.typ",
)

=== Massimo trasferimento di potenza <carico-adattato>

#grid(
  columns: (1fr, auto), column-gutter: 1em, align: horizon,
  [
    La potenza trasferita al carico è
    $ P_u = R_u I^2 = R_u (E / (R + R_u))^2 $
    Per $R_u = 0$ (corto circuito) $P_u = 0$; per $R_u >> R$ la corrente tende a zero e anche $P_u -> 0$. In mezzo c'è un massimo (grafico), in $R_u = R$.
  ],
  include "figure/cap2/61-potenza-carico.typ",
)

$ (d P_u) / (d R_u) = (E^2 (R + R_u)^2 - R_u E^2 (2 R + 2 R_u)) / (R + R_u)^4 = (E^2 (R^2 - R_u^2)) / (R + R_u)^4 = 0 quad => quad R_u = R $

#formula[Carico adattato][
  Un generatore reale trasferisce al carico la massima potenza quando la resistenza del carico è uguale alla resistenza interna: $R_u = R$.
]

#esempio[$E = 12 "V"$, $R = 2 space Omega$, quindi $I_"cc" = 6 "A"$. Con $R_u = 4 space Omega$: $I = 2 "A"$, $V = 8 "V"$, $P_u = 16 "W"$. Con $R_u = R = 2 space Omega$: $I = 3 "A"$, $V = 6 "V"$, $P_u = 18 "W"$, il massimo. Con $R_u = 1 space Omega$: $I = 4 "A"$, $P_u = 16 "W"$.]

== Transitori del primo ordine <transitori>

=== Circuiti dinamici e ODE <ode>

- Nelle reti resistive $v(t) = R i(t)$ lega grandezze nello stesso istante: la risposta è istantanea (*adinamica*).
- Con condensatori e induttori (convenzione degli utilizzatori) contano le derivate, cioè la velocità di variazione delle grandezze, e la risposta è *dinamica*:
  $ i_C (t) = C (d v_C (t)) / (d t), quad quad v_L (t) = L (d i_L (t)) / (d t) $

Le equazioni sono le stesse (costitutive, LKC e LKT), ma il sistema diventa di *equazioni differenziali ordinarie* (ODE). Un circuito LTI dà sempre ODE lineari a coefficienti costanti, l'unica classe di ODE con un metodo analitico standard:
- sono lineari perché lo sono le leggi di Kirchhoff e le costitutive dei componenti LTI;
- i coefficienti sono combinazioni di $R$, $L$, $C$, quindi costanti.

La soluzione è la somma della *soluzione omogenea* (risposta naturale, dipende dal circuito) e della *soluzione particolare* (risposta forzata, dipende dagli ingressi).

=== Soluzione generale e durata del transitorio <soluzione-generale>

Un circuito del primo ordine (un solo elemento che accumula energia) è descritto, in una grandezza $x(t)$, dal problema di Cauchy
$ cases(
  display(tau (d x(t)) / (d t) + x(t) = x_infinity),
  x(0^+) = x_0
) $
con $tau$ *costante di tempo*, $x_0$ valore iniziale in $t = 0^+$ e $x_infinity$ valore a regime ($t -> infinity$). La soluzione omogenea è $x_"om" (t) = K e^(-t \/ tau)$; con termine noto costante la particolare è $x_p = x_infinity$. La condizione iniziale dà $K = x_0 - x_infinity$.

#formula[Soluzione del primo ordine][
  $ x(t) = x_infinity + (x_0 - x_infinity) e^(-t \/ tau) = x_0 e^(-t \/ tau) + x_infinity (1 - e^(-t \/ tau)) $
]

#grid(
  columns: (auto, 1fr), column-gutter: 1.5em, align: horizon,
  table(
    columns: 2, align: center, stroke: 0.5pt,
    table.header([$t \/ tau$], [*salto percorso*]),
    [$1$], [$63.2 %$],
    [$2$], [$86.5 %$],
    [$3$], [$95.0 %$],
    [$4$], [$98.2 %$],
    [$5$], [$99.3 %$],
  ),
  include "figure/cap2/35-grafico-transitorio-generale.typ",
)

In teoria l'esponenziale si annulla solo per $t -> infinity$; in pratica il transitorio si considera esaurito dopo $4 tau div 5 tau$ (grafico a destra della tabella).

#esempio[Con $x_0 = 0$, l'istante $t^*$ in cui si raggiunge il $98 %$ del valore finale:
  $ 0.98 x_infinity = x_infinity (1 - e^(-t^* \/ tau)) => e^(-t^* \/ tau) = 0.02 => t^* = -tau ln(0.02) approx 3.91 tau approx 4 tau $]

=== Interruttori e variabili di stato <variabili-stato>

Un ingresso a gradino si ottiene con un generatore costante e un *interruttore* ideale:
- commuta istantaneamente tra aperto ($i = 0$) e chiuso ($v = 0$);
- la manovra avviene in $t = 0$; $0^-$ e $0^+$ sono gli istanti subito prima e subito dopo;
- si studiano due reti, una per $t < 0$ e una per $t > 0$ (in $t = 0$ lo stato non è definito).

#grid(
  columns: (1fr, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/36-generatore-con-interruttore.typ",
  include "figure/cap2/37-grafico-gradino.typ",
)

Il gradino è nel grafico qui sopra, a destra. Per avere una soluzione unica per $t > 0$ serve la condizione iniziale in $0^+$. La danno le variabili di stato.

#formula[Continuità delle variabili di stato][
  $ v_C (0^+) = v_C (0^-) quad (W_C = 1 / 2 C v_C^2), quad quad i_L (0^+) = i_L (0^-) quad (W_L = 1 / 2 L i_L^2) $
  L'energia accumulata non può saltare: con correnti finite $v_C$ è continua, con tensioni finite $i_L$ è continua.
]

#align(center, table(
  columns: 3, align: center + horizon, stroke: 0.5pt,
  table.header([], [*Condensatore $C$*], [*Induttore $L$*]),
  [a $0^+$, se scarico], [corto circuito ($v_C = 0$)], [circuito aperto ($i_L = 0$)],
  [a regime in continua], [circuito aperto ($i_C = 0$)], [corto circuito ($v_L = 0$)],
))

=== Procedura in cinque passi <procedura-transitori>

+ *$t < 0$*: circuito a regime nella configurazione iniziale. Trova $v_C (0^-)$ o $i_L (0^-)$.
+ *$t = 0^+$*: imponi la continuità (@variabili-stato).
+ *$t -> infinity$*: nuovo regime. Trova $x_infinity$ con la tabella di @variabili-stato.
+ *$tau$*: $tau = R C$ oppure $tau = L \/ R$, con $R$ la resistenza vista dal componente dinamico per $t > 0$.
+ Scrivi $x(t)$ con la formula di @soluzione-generale. Le altre grandezze vengono da $i_C = C (d v) \/ (d t)$, $v_L = L (d i) \/ (d t)$ o da Kirchhoff.

=== Circuiti RC e RL <rc-rl>

#grid(
  columns: (1fr, 1fr, 1fr), column-gutter: 0.8em, row-gutter: 0.4em, align: center + bottom,
  include "figure/cap2/38-rc-parallelo-interruttore.typ",
  include "figure/cap2/52-rc-serie-carica.typ",
  include "figure/cap2/45-rl-serie-interruttore.typ",
  [(a) RC parallelo], [(b) RC serie], [(c) RL serie],
)

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/39-rc-configurazioni.typ",
  [
    *(a) RC parallelo*, $S$ chiuso che si apre in $t = 0$. Applicazione dei cinque passi:
    + $t < 0$: $S$ cortocircuita $A$, quindi $v(0^-) = 0$, $i_R = i_C = 0$, $i_S = A$.
    + $t = 0^+$: $v(0^+) = v(0^-) = 0$.
    + $t -> infinity$: $C$ aperto, quindi $v_infinity = R A$.
    + $tau = R C$ ($R$ vista da $C$ con $A$ passivato).
    + Per $t > 0$: $A = i_R + i_C$, $i_R = v \/ R$, $i_C = C (d v) \/ (d t)$, quindi
      $ R C (d v) / (d t) + v = R A, quad v = R A (1 - e^(-t \/ tau)) $
  ],
)

- *(b) RC serie*, $S$ che si chiude in $t = 0$, condensatore scarico. Per $t > 0$:
  $ E - v_R - v = 0, quad v_R = R i = R C (d v) / (d t) quad => quad R C (d v) / (d t) + v = E $
- *(c) RL serie*, $S$ che si chiude in $t = 0$. Per $t < 0$, tutte le variabili sono nulle. Per $t > 0$, con $v_R = R i$ e $v_L = L (d i) \/ (d t)$:
  $ E - R i - L (d i) / (d t) = 0 quad => quad (d i) / (d t) + R / L i = E / L $

#{
  set text(size: 10pt)
  table(
    columns: (auto, 1fr, 1fr, 1fr), align: center + horizon, stroke: 0.5pt,
    table.header([], [*(a) RC parallelo*], [*(b) RC serie*], [*(c) RL serie*]),
    [variabile di stato], [$v$], [$v$], [$i$],
    [$tau$], [$R C$], [$R C$], [$L \/ R$],
    [valore a $0^+$ (da scarico)], [$v(0^+) = 0$], [$v(0^+) = 0$], [$i(0^+) = 0$],
    [valore a regime], [$v_infinity = R A$], [$v_infinity = E$], [$i_infinity = E \/ R$],
    [soluzione], [$v = R A (1 - e^(-t \/ tau))$], [$v = E (1 - e^(-t \/ tau))$], [$i = E / R (1 - e^(-t \/ tau))$],
    [altre grandezze], [$i_C = A e^(-t \/ tau)$ \ $i_R = A (1 - e^(-t \/ tau))$], [$i_C = E / R e^(-t \/ tau)$], [$v_L = E e^(-t \/ tau)$ \ $v_R = E (1 - e^(-t \/ tau))$],
    [componente a $0^+$], [$C$ = corto: \ $i_C (0^+) = A$, $i_R (0^+) = 0$], [$C$ = corto: \ $i (0^+) = E \/ R$], [$L$ = aperto: \ $v_L (0^+) = E$],
    [componente a regime], [$C$ = aperto: \ $i_C = 0$, $i_R = A$], [$C$ = aperto: $i = 0$], [$L$ = corto: $v_L = 0$],
  )
}

#grid(
  columns: (1fr, auto), column-gutter: 1em, align: horizon,
  [Solo le variabili di stato sono continue: $i_C$ e $v_L$ saltano in $t = 0$ (figura: $v_L$ passa da $0$ a $E$) e poi decadono con la stessa $tau$.],
  include "figure/cap2/49-grafico-vl-rl.typ",
)

$tau$ si misura in secondi: $[Omega dot "F"] = ["H" \/ Omega] = ["s"]$. \
I casi (a) e (b) sono la *carica del condensatore*, il caso (c) la *carica dell'induttore*. \
Con condizione iniziale non nulla ($V_0$ o $I_0$) si usa la formula generale di @soluzione-generale.

#esempio[(a) $A = 2 "mA"$, $R = 5 "k"Omega$, $C = 2 space mu"F"$: $tau = 10 "ms"$, $v_infinity = 10 "V"$, $v(tau) = 6.32 "V"$, $i_C (0^+) = 2 "mA"$. (c) $E = 10 "V"$, $R = 5 space Omega$, $L = 50 "mH"$: $tau = 10 "ms"$, $i_infinity = 2 "A"$, $v_L (0^+) = 10 "V"$.]

=== Evoluzione naturale <evoluzione-naturale>

L'*evoluzione naturale* (o risposta libera) è la soluzione omogenea: il circuito evolve senza generatori indipendenti. Non è banale solo se c'è energia iniziale; per un condensatore carico $v(0) = V_0 => W_0 = 1 / 2 C V_0^2$.

#grid(
  columns: (auto, 1fr), column-gutter: 1em, align: horizon,
  include "figure/cap2/50-scarica-condensatore.typ",
  [
    L'interruttore $S$ si chiude in $t = 0$. LKT sulla maglia e riferimenti della figura ($v_R = R i_C$):
    $ v_R + v = 0 quad => quad R C (d v) / (d t) + v = 0 $
    // VERIFICARE: vedi segnalazioni S2
  ],
)

#grid(
  columns: (1fr, auto), column-gutter: 1em, align: horizon,
  formula[Scarica del condensatore][
    $ cases(
      display((d v) / (d t) + 1 / (R C) v = 0),
      v(0^+) = v(0^-) = V_0
    ) quad v_infinity = 0 quad => quad v(t) = V_0 e^(-t \/ tau), quad tau = R C $
  ],
  include "figure/cap2/51-grafico-scarica.typ",
)

=== Bilancio energetico nella scarica <bilancio-scarica>

La corrente di scarica, positiva dal morsetto positivo del condensatore verso il resistore, è
$ i(t) = -C (d v) / (d t) = V_0 / R e^(-t \/ tau) $

#formula[Energia dissipata nella scarica][
  $ W_R = integral_0^(+infinity) R i^2 (t) d t = V_0^2 / R dot (R C) / 2 = 1 / 2 C V_0^2 = W_0 $
]

Tutta l'energia iniziale si dissipa in $R$; in pratica l'evoluzione naturale si estingue in circa $5 tau$.
// VERIFICARE: S3 (frase sul ciclo carica/scarica "da 5τ a 10τ" omessa, da verificare sulle slide)

#esempio[$V_0 = 10 "V"$, $C = 100 space mu"F"$, $R = 1 "k"Omega$: $tau = 0.1 "s"$, $i(0^+) = 10 "mA"$, $W_0 = W_R = 5 "mJ"$.]

=== Rendimento di carica <rendimento-carica>

Si carica il condensatore del circuito RC serie, caso (b) di @rc-rl: $v = E (1 - e^(-t \/ tau))$, $i_C = (E \/ R) e^(-t \/ tau)$.
+ Potenza del generatore: $ p_E = E i_C = E^2 / R e^(-t \/ tau) $
+ Energia erogata: $ W_E = integral_0^(+infinity) p_E d t = E^2 / R dot R C = C E^2 $
+ Energia accumulata in $C$: $ W_C = 1 / 2 C (V_"fin"^2 - V_"in"^2) = 1 / 2 C E^2 $

#formula[Rendimento di carica][
  $ eta_"ene" = W_C / W_E = 1 / 2 = 50 % $
  Il rendimento non dipende da $R$. L'altra metà, $W_R = W_E - W_C = 1 / 2 C E^2$, si dissipa in $R$.
]

#esempio[$E = 10 "V"$, $C = 100 space mu"F"$: $W_E = 10 "mJ"$, $W_C = 5 "mJ"$, $W_R = 5 "mJ"$, per qualunque $R$.]
