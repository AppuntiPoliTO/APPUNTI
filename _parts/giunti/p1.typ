#import "../../figs/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)

= *Giunti*

== Introduzione

=== Traccia metodologica per l'analisi costruttiva

Per analizzare e descrivere sistematicamente un organo di collegamento a partire dal suo disegno in sezione (tipico della prova scritta), si segue una traccia in cinque punti:
- *A) Tipologia:* macro-classe del componente (giunto, innesto, freno, cuscinetto, calettatore, ecc.).
- *B) Tipo:* modello specifico e, se presente, denominazione commerciale o di letteratura (es. giunto rigido a manicotto, giunto elastico *Bibby*, giunto omocinetico *Rzeppa*).
- *C) Funzione:* finalità primaria nella linea di trasmissione.
- *D) Meccanismo di funzionamento:* comportamento cinematico e meccanico delle parti in esercizio, modalità di chiusura (ed eventuale apertura) e parti in moto relativo.
- *E) Particolarità costruttive:* dettagli progettuali che determinano azioni trasmesse, equilibratura, dimensionamento, durata e manutenzione.

=== Definizione, funzioni e confronto con gli innesti

Si definisce *giunto* un organo meccanico che, in configurazione *smontabile ma stabile in esercizio*, realizza il *collegamento torsionale* tra due alberi rotanti disposti in sequenza con le rispettive estremità adiacenti. Oltre a connettere le varie sezioni di una linea di trasmissione tra motore e utilizzatore, il giunto consente di disaccoppiare eventuali anomalie o sovraccarichi prima che danneggino i componenti più costosi, potendo operare come *fusibile meccanico* tramite il cedimento controllato di un elemento sacrificale economico (chiavetta, bullone, nastro).

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Le cinque funzioni principali di un giunto sono:
    + *Trasmissione di moto e coppia torcente:* trasferire potenza ($P = M dot Omega$) da un albero all'altro.
    + *Suddivisione dell'albero:* frazionare linee d'asse lunghe in tronchi più corti per agevolare trasporto, montaggio e smontaggio.
    + *Compensazione di spostamenti relativi:* consentire traslazioni e/o rotazioni dovute a errori di posizionamento, tolleranze, deformazioni elastiche o dilatazioni termiche, senza sovraccaricare i supporti.
    + *Smorzamento delle vibrazioni:* attenuare urti e oscillazioni torsionali lungo la trasmissione.
    + *Limitazione della coppia massima:* interrompere la trasmissione oltre una soglia prefissata (per rottura di un elemento sacrificale o apertura automatica nei giunti di sicurezza).
  ],
  [
    #fig-safe(include "../../figs/ecm-c12-p1-01.typ", max-h: 6.8cm)
  ],
)

#v(0.3em)

#nota[
  *Giunto vs innesto:* il *giunto* viene assemblato a macchina ferma e rimane stabilmente chiuso in esercizio (può aprirsi solo per rottura di un elemento sacrificale o, nei giunti di sicurezza, per sole azioni dinamiche di sovraccarico). L'*innesto* (es. frizione automobilistica) dispone invece di un *comando esterno* (manuale o automatico) che consente di aprire e chiudere il collegamento *con la macchina in moto*.
]

=== Categorie principali di giunti

In base al comportamento meccanico e ai movimenti relativi consentiti, i giunti si dividono in quattro famiglie:
- *Giunti rigidi (o fissi):* collegano due alberi *perfettamente coassiali*, impedendo qualsiasi movimento relativo o disallineamento. Eventuali errori di allineamento al montaggio generano elevate sovrasollecitazioni su alberi e cuscinetti.
- *Giunti elastici:* interpongono *elementi elastici deformabili* (metallici o polimerici) che tollerano *piccoli disallineamenti* assiali, radiali e angolari, assorbono gli urti dovuti a brusche variazioni di coppia e smorzano le vibrazioni.
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Giunti articolati:* compensano errori o consentono *spostamenti relativi di ampia entità* tramite un *cinematismo* di componenti rigidi mobili. Si dicono *omocinetici* se garantiscono la stessa velocità angolare istantanea ai due alberi ($Omega_2 = Omega_1$), *non omocinetici* in caso contrario. In base al tipo di spostamento relativo consentito si distinguono in:
      - *Assiali:* scorrimenti lungo l'asse;
      - *Trasversali:* disassamenti paralleli/radiali;
      - *Angolari:* assi concorrenti inclinati;
      - *Misti:* combinazione di più gradi di libertà.
  ],
  [
    #fig-safe(include "../../figs/ecm-c12-p1-02.typ", max-h: 5.5cm)
  ],
)
- *Giunti di sicurezza:* limitatori di coppia assemblati e tarati a macchina ferma che, al superamento di una soglia critica (coppia, velocità o inversione di rotazione), si aprono autonomamente per effetto delle sole azioni dinamiche e inerziali senza comando esterno, lasciando l'albero condotto libero di ruotare.



=== Momento torcente applicato al giunto

Per scegliere o dimensionare un giunto non basta la coppia nominale a regime $M_n$: occorre considerare il picco di coppia che attraversa il giunto durante i *transitori di avviamento*.

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Considerando un motore elettrico accoppiato a un utilizzatore, si definiscono:
    - $M_n$: coppia nominale del motore;
    - $M_(t,"max")$: *coppia di spunto* all'avviamento ($M_(t,"max") > M_n$);
    - $I_m$: momento d'inerzia di massa del motore e del relativo semigiunto;
    - $I_u$: momento d'inerzia di massa dell'utilizzatore e dell'altro semigiunto.
  ],
  [
    #fig-safe(include "../../figs/ecm-c12-p1-03.typ", max-h: 4.5cm)
  ],
)

All'avviamento l'accelerazione angolare dell'intera linea vale $alpha = M_(t,"max") / (I_m + I_u)$, per cui il momento torcente $M_G$ cui è sottoposto il giunto per accelerare l'utilizzatore risulta:

$ M_G = I_u dot alpha = M_(t,"max") dot frac(I_u, I_m + I_u) = M_(t,"max") dot frac(1, m + 1) , quad "con" quad m = frac(I_m, I_u) $

Moltiplicando e dividendo per la coppia nominale $M_n$, si esprime il momento di progetto come multiplo di $M_n$:

$ M_G = frac(M_(t,"max"), m + 1) dot frac(M_n, M_n) = frac(M_(t,"max"), M_n) dot frac(M_n, m + 1) = K_0 dot M_n , quad K_0 = frac(M_(t,"max"), M_n dot (m + 1)) $

Il coefficiente $K_0$ è il *fattore d'urto (o di servizio)*. Quando le inerzie non sono note con precisione, $K_0$ si stima empiricamente nell'intervallo *$1.2 - 2.5$* in funzione di urti e contraccolpi attesi, calibrando anche l'eventuale soglia di intervento come fusibile meccanico.

=== Classificazione dei principali giunti

La tassonomia di riferimento articola le principali soluzioni costruttive in tre grandi famiglie:
- *Giunti rigidi:* a manicotto, a flange (o a dischi), a gusci.
- *Giunti elastici:*
  - *Metallici:* torsionalmente elastici (*Forst*, *Bibby*); torsionalmente rigidi (*a biellette*, es. *Arpex*).
  - *Elastomerici:* torsionalmente elastici (*Periflex*); torsionalmente rigidi (*Norton*, *SteckFlex*).
- *Giunti articolati:*
  - *Assiali:* a perni.
  - *Trasversali:* *Oldham*.
  - *Angolari:* comuni (*cardano semplice*, *cardano doppio*); omocinetici (*Rzeppa*, *Weiss*).
  - *Misti:* a denti, *Rzeppa* modificato, a tripode.
