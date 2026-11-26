#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

= *Innesti*

== Innesti a denti e a frizione

=== Funzione, classificazione e requisiti di progetto

A differenza dei giunti, che richiedono l'arresto della macchina per collegare o scollegare gli alberi, gli *innesti* vengono azionati *in esercizio* per interrompere o ripristinare il flusso di potenza tra motore e utilizzatore. Il comando può essere *esterno* (manuale, meccanico, idraulico, pneumatico o elettromagnetico — quest'ultimo più rapido perché il segnale si propaga come corrente elettrica) oppure *autonomo* (al superamento di una coppia limite, di una velocità critica o all'inversione del moto).

Dal punto di vista del principio fisico di trasmissione della coppia, gli innesti si classificano in:
- *A contatto:* per *accoppiamento di forma* o azione meccanica positiva (innesti a denti o a dentini) oppure per *attrito* tra superfici solide (innesti a frizione piani, conici o a tamburo).
- *Senza contatto:* mediante *fenomeni elettromeccanici* (isteresi magnetica, correnti parassite, particelle magnetiche) oppure *attrito fluido* (giunti idraulici / fluidodinamici).

Il transitorio critico è la *sincronizzazione*, cioè l'uguagliamento delle velocità angolari tra albero motore e albero condotto:
- *Inserimento troppo rapido:* produce elevati gradienti di velocità con picchi di coppia e urti (colpi d'ariete) dannosi per la trasmissione e l'utenza.
- *Inserimento troppo lento:* ritarda la messa a regime e, negli innesti dissipativi, protrae lo strisciamento convertendo energia meccanica in calore, con deformazioni locali e degrado dei materiali.

#nota[
  *Funzioni secondarie e requisiti termici di progetto.* Oltre a durata, prontezza, gradualità d'inserimento e invarianza delle prestazioni nel tempo (controllo puntuale di usura e giochi), gli innesti possono regolare il flusso di energia, introdurre *elasticità o smorzamento* nella trasmissione oppure *dissipare energia* in calore. La dissipazione è particolarmente esasperata nei *freni*, che riprendono molte architetture degli innesti a frizione per convertire rapidamente energia cinetica in calore. Il progetto termico dipende quindi dal ciclo di lavoro: negli *inserimenti prolungati* (es. frenatura in discesa) occorre massimizzare la *trasmissione di calore verso l'ambiente*; negli *inserimenti saltuari* ad alta energia seguiti da fasi di raffreddamento (es. freni aeronautici) è prioritaria un'elevata *capacità termica* per contenere la temperatura di picco.
]

=== Innesto a denti

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'*innesto a denti* trasferisce la coppia tramite un *accoppiamento di forma* tra due flange frontali dotate di profili coniugati. Una leva agente su un collare spinge assialmente la flangia scorrevole fino a impegnare i fianchi dei denti, realizzando un collegamento rigido privo di slittamento a regime.    L'inserimento è ammesso solo a macchina ferma o a *moto lento*, così che i denti trovino la fase corretta senza urti distruttivi; le superfici inclinate agevolano l'imbocco. Durante il disinserimento sotto carico occorre vincere l'attrito generato dalla pressione sui fianchi: l'inclinazione del profilo può favorire oppure ostacolare l'apertura.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-4.20, 0.00), (-3.15, 0.00), stroke: 0.55pt)
  line((-3.02, 0.00), (-2.90, 0.00), stroke: 0.55pt)
  line((-2.77, 0.00), (-1.65, 0.00), stroke: 0.55pt)
  line((-1.52, 0.00), (-1.40, 0.00), stroke: 0.55pt)
  line((-1.27, 0.00), (-0.15, 0.00), stroke: 0.55pt)
  line((-0.02, 0.00), (0.10, 0.00), stroke: 0.55pt)
  line((0.23, 0.00), (1.35, 0.00), stroke: 0.55pt)
  line((1.48, 0.00), (1.60, 0.00), stroke: 0.55pt)
  line((1.73, 0.00), (2.85, 0.00), stroke: 0.55pt)
  line((2.98, 0.00), (3.10, 0.00), stroke: 0.55pt)
  line((3.23, 0.00), (4.70, 0.00), stroke: 0.55pt)

  line((1.72, -0.40), (1.72, 0.45), stroke: 0.55pt)
  line((1.72, 0.55), (1.72, 0.65), stroke: 0.55pt)
  line((1.72, 0.75), (1.72, 1.55), stroke: 0.55pt)
  line((1.72, 1.65), (1.72, 1.75), stroke: 0.55pt)
  line((1.72, 1.85), (1.72, 2.25), stroke: 0.55pt)

  line((-3.90, 0.60), (-3.00, 0.60), stroke: 1.05pt)
  line((-3.90, -0.60), (-3.00, -0.60), stroke: 1.05pt)
  bezier((-3.90, 0.60), (-3.90, 0.00), (-3.99, 0.42), (-3.99, 0.18), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.99, -0.18), (-3.99, -0.42), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.81, -0.18), (-3.81, -0.42), stroke: 0.85pt)
  line((-3.95, -0.14), (-3.85, -0.06), stroke: 0.45pt)
  line((-3.97, -0.26), (-3.83, -0.16), stroke: 0.45pt)
  line((-3.97, -0.38), (-3.83, -0.28), stroke: 0.45pt)
  line((-3.95, -0.50), (-3.85, -0.40), stroke: 0.45pt)

  line((-3.85, 0.52), (-3.05, 0.52), stroke: 0.45pt)
  line((-3.85, -0.52), (-3.05, -0.52), stroke: 0.45pt)
  line((-3.82, -0.42), (-3.05, -0.42), stroke: 0.45pt)

  line((-3.00, -1.00), (-3.00, 1.00), stroke: 1.05pt)
  arc((-2.88, 1.00), start: 98deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((-2.88, -1.00), start: 180deg, stop: 262deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((-2.90, 1.12), (-1.52, 1.32), stroke: 1.05pt)
  line((-2.90, -1.12), (-1.52, -1.32), stroke: 1.05pt)
  arc((-1.52, 1.42), start: 278deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)
  arc((-1.52, -1.42), start: 0deg, stop: 82deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)

  line((-2.85, -1.03), (-1.58, -1.22), stroke: 0.45pt)
  line((-2.85, -0.93), (-1.58, -1.10), stroke: 0.45pt)

  line((-2.70, 0.15), (-1.12, 0.15), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-2.70, -0.13), (-1.12, -0.13), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-2.70, 0.01), start: 90deg, stop: 270deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-1.12, 0.01), start: 270deg, stop: 450deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((-1.42, -1.95), (-1.42, 1.95), stroke: 1.05pt)
  arc((-1.27, 1.95), start: 90deg, stop: 180deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  arc((-1.27, -1.95), start: 180deg, stop: 270deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((-1.27, 2.10), (-0.20, 2.10), stroke: 1.05pt)
  line((-1.27, -2.10), (-0.20, -2.10), stroke: 1.05pt)

  line((-1.32, -1.58), (-0.82, -1.58), stroke: 0.45pt)

  line((-0.20, 2.10), (-0.20, 1.54), stroke: 1.05pt)
  bezier((-0.20, 1.82), (-0.80, 0.85), (-0.52, 1.66), (-0.78, 1.25), stroke: 1.05pt)
  bezier((-0.20, 1.54), (-0.80, 0.85), (-0.48, 1.42), (-0.72, 1.14), stroke: 1.05pt)
  line((-0.80, 0.85), (-0.80, 0.00), stroke: 1.05pt)
  line((-0.80, 0.00), (-0.20, 0.00), stroke: 1.05pt)

  bezier((-0.32, 1.43), (-0.20, 0.55), (-0.23, 1.18), (-0.20, 0.85), stroke: 0.9pt)
  line((-0.20, 0.55), (-0.20, 0.00), stroke: 0.9pt)
  line((-0.44, 1.32), (-0.28, 1.32), stroke: 0.5pt)
  line((-0.53, 1.22), (-0.26, 1.22), stroke: 0.5pt)
  line((-0.62, 1.10), (-0.24, 1.10), stroke: 0.5pt)
  line((-0.68, 0.98), (-0.23, 0.98), stroke: 0.5pt)
  line((-0.75, 0.85), (-0.22, 0.85), stroke: 0.5pt)

  line((-0.80, 0.60), (-0.45, 0.60), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.36, 0.50), stroke: 0.85pt)
  line((-0.36, 0.50), (-0.36, 0.00), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.45, 0.00), stroke: 0.75pt)
  line((-0.36, 0.42), (-0.20, 0.42), stroke: 0.5pt)
  line((-0.36, 0.32), (-0.20, 0.32), stroke: 0.5pt)
  line((-0.36, 0.22), (-0.20, 0.22), stroke: 0.5pt)
  line((-0.36, 0.12), (-0.20, 0.12), stroke: 0.5pt)

  line((-0.20, -2.10), (-0.20, -1.46), stroke: 1.05pt)
  line((-0.20, -1.46), (-0.40, -1.46), stroke: 1.05pt)
  line((-0.80, -2.10), (-0.80, -1.82), stroke: 1.05pt)
  bezier((-0.80, -1.82), (-0.20, -0.85), (-0.48, -1.68), (-0.22, -1.25), stroke: 1.05pt)
  line((-0.20, -0.85), (-0.20, 0.00), stroke: 1.05pt)

  line((-0.08, -0.60), (-0.08, 0.50), stroke: 0.85pt)
  line((-0.08, 0.50), (-0.01, 0.56), stroke: 0.85pt)
  line((-0.08, -0.60), (-0.01, -0.66), stroke: 0.85pt)
  line((-0.01, -0.75), (-0.01, 0.68), stroke: 0.9pt)
  line((-0.01, 0.68), (0.10, 0.68), stroke: 0.9pt)
  line((-0.01, -0.75), (0.70, -0.75), stroke: 1.05pt)
  line((0.02, -0.45), (0.68, -0.45), stroke: 0.5pt)
  line((0.02, -0.58), (0.68, -0.58), stroke: 0.5pt)

  line((0.10, 2.10), (1.20, 2.10), stroke: 1.05pt)
  arc((1.20, 1.95), start: 0deg, stop: 90deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((0.10, 2.10), (0.10, 1.46), stroke: 1.05pt)
  line((0.10, 1.46), (0.30, 1.46), stroke: 1.05pt)
  line((0.70, 2.10), (0.70, 1.82), stroke: 1.05pt)
  bezier((0.70, 1.82), (0.10, 0.85), (0.38, 1.68), (0.12, 1.25), stroke: 1.05pt)
  line((0.10, 0.85), (0.10, 0.00), stroke: 1.05pt)
  line((0.10, 0.00), (0.70, 0.00), stroke: 1.05pt)
  line((0.70, 0.00), (0.70, -0.75), stroke: 1.05pt)

  bezier((0.70, -0.75), (0.10, -1.52), (0.62, -1.12), (0.36, -1.38), stroke: 1.05pt)
  bezier((0.70, -0.75), (0.10, -1.82), (0.68, -1.30), (0.42, -1.68), stroke: 1.05pt)
  bezier((0.20, -0.75), (0.36, -1.35), (0.20, -1.02), (0.26, -1.22), stroke: 0.95pt)
  line((0.22, -0.86), (0.64, -0.86), stroke: 0.5pt)
  line((0.23, -0.96), (0.60, -0.96), stroke: 0.5pt)
  line((0.25, -1.08), (0.54, -1.08), stroke: 0.5pt)
  line((0.29, -1.20), (0.46, -1.20), stroke: 0.5pt)

  line((0.10, -1.52), (0.10, -2.10), stroke: 1.05pt)
  line((0.10, -2.10), (1.20, -2.10), stroke: 1.05pt)
  arc((1.20, -1.95), start: 270deg, stop: 360deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((1.35, -1.95), (1.35, 1.95), stroke: 1.05pt)

  line((0.25, -1.78), (1.26, -1.78), stroke: 0.45pt)
  line((0.18, -1.96), (1.26, -1.96), stroke: 0.45pt)

  line((1.35, 1.24), (1.42, 1.24), stroke: 0.9pt)
  line((1.35, -1.24), (1.42, -1.24), stroke: 0.9pt)
  line((2.02, 1.24), (2.08, 1.24), stroke: 0.9pt)
  line((2.02, -1.24), (2.08, -1.24), stroke: 0.9pt)

  line((1.42, -1.48), (1.42, 1.48), stroke: 1.05pt)
  line((2.02, -1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.42, -1.48), (2.02, -1.48), stroke: 1.05pt)
  line((1.42, 1.48), (1.48, 1.48), stroke: 1.05pt)
  line((1.96, 1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.46, -1.38), (1.98, -1.38), stroke: 0.45pt)

  circle((1.72, 0.00), radius: 0.18, stroke: 0.95pt)
  circle((1.72, 0.00), radius: 0.28, stroke: 1.05pt)

  line((1.53, 0.21), (1.44, 2.75), stroke: 1.05pt)
  line((1.91, 0.21), (2.00, 2.75), stroke: 1.05pt)
  bezier((1.44, 2.75), (1.72, 2.75), (1.53, 2.78), (1.63, 2.72), stroke: 1.05pt)
  bezier((1.72, 2.75), (2.00, 2.75), (1.81, 2.78), (1.91, 2.72), stroke: 1.05pt)

  rect((2.08, -1.52), (2.30, 1.52), stroke: 1.05pt)
  line((2.12, 1.42), (2.26, 1.42), stroke: 0.45pt)
  line((2.12, -1.36), (2.26, -1.36), stroke: 0.45pt)
  line((2.12, -1.44), (2.26, -1.44), stroke: 0.45pt)

  arc((2.38, 1.23), start: 180deg, stop: 262deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  arc((2.38, -1.23), start: 98deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  line((2.38, 1.15), (3.43, 0.98), stroke: 1.05pt)
  line((2.38, -1.15), (3.43, -0.98), stroke: 1.05pt)
  arc((3.43, 0.86), start: 0deg, stop: 82deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((3.43, -0.86), start: 278deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((3.55, -0.86), (3.55, 0.86), stroke: 1.05pt)

  line((2.42, -1.07), (3.40, -0.91), stroke: 0.45pt)
  line((2.42, -0.96), (3.40, -0.81), stroke: 0.45pt)

  line((0.10, 0.68), (1.42, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.68), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.10, 0.48), (1.42, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.48), (3.30, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, 0.48), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))

  line((0.70, -0.48), (1.42, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.48), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.70, -0.68), (1.42, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.68), (3.30, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, -0.68), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))

  line((3.55, 0.60), (4.42, 0.60), stroke: 1.05pt)
  line((3.55, -0.60), (4.42, -0.60), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.51, 0.42), (4.51, 0.18), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.33, 0.42), (4.33, 0.18), stroke: 0.85pt)
  bezier((4.42, 0.00), (4.42, -0.60), (4.51, -0.18), (4.51, -0.42), stroke: 1.05pt)
  line((4.37, 0.46), (4.47, 0.54), stroke: 0.45pt)
  line((4.35, 0.34), (4.49, 0.44), stroke: 0.45pt)
  line((4.35, 0.22), (4.49, 0.32), stroke: 0.45pt)
  line((4.37, 0.10), (4.47, 0.20), stroke: 0.45pt)

  line((3.60, 0.53), (4.36, 0.53), stroke: 0.45pt)
  line((3.60, -0.53), (4.40, -0.53), stroke: 0.45pt)
  line((3.60, -0.42), (4.40, -0.42), stroke: 0.45pt)

  circle((1.62, 2.18), radius: 0.04, fill: black, stroke: none)
  line((1.62, 2.18), (0.82, 2.78), stroke: 0.6pt)
  line((0.82, 2.78), (0.64, 2.78), stroke: 0.6pt)
  content((0.55, 2.78), text(size: 8.5pt, style: "italic")[leva], anchor: "east")

  circle((1.72, -1.08), radius: 0.04, fill: black, stroke: none)
  line((1.72, -1.08), (1.96, -2.02), stroke: 0.6pt)
  line((1.96, -2.02), (2.14, -2.02), stroke: 0.6pt)
  content((2.23, -2.02), text(size: 8.5pt, style: "italic")[collare], anchor: "west")
})

],
)



 
=== Innesti a frizione

Negli *innesti a frizione* la coppia viene trasmessa per *attrito* tra due o più superfici premute da una forza assiale $F$. Le geometrie principali impiegano superfici piane a *corona circolare*, superfici *troncoconiche* (dove l'effetto cuneo amplifica la pressione normale a parità di spinta assiale) oppure superfici cilindriche *a tamburo*.

#fig-safe(include "../../figs/innesti/ecm-c13-p1-03.typ", max-h: 3.4cm)

La spinta $F$ può essere generata da leve meccaniche, attuatori idraulici o elettromagnetici, oppure da un organo elastico opportunamente registrato antagonista al comando di disinnesto. Nelle frizioni automobilistiche si impiega tipicamente una *molla a diaframma* — derivata dalla molla a tazza troncoconica e intagliata radialmente in lamine trapezoidali per aumentarne la flessibilità — vincolata su una circonferenza di fulcro: premendone la parte centrale tramite il comando di disinnesto (es. circuito idraulico del pedale), il bordo esterno arretra allontanando lo spingidisco e interrompendo la trasmissione; al rilascio la molla riapplica il precarico di chiusura.

I valori del *coefficiente d'attrito* (sia statico sia cinetico) dipendono da cinque fattori principali: *materiali* accoppiati, *natura dell'ambiente* (umidità, contaminazione), *pressione di contatto*, *velocità di slittamento* e *temperatura*. Il ciclo operativo attraversa tre fasi distinte:
1. *Inserimento:* le superfici slittano reciprocamente, si riscaldano e si usurano.
2. *Sincronismo:* cessato lo strisciamento, l'innesto si comporta come un *giunto torsionalmente più o meno rigido*.
3. *Disinserimento:* si verifica un nuovo slittamento; in posizione aperta occorre limitare o *azzerare la coppia d'attrito parassita a vuoto*, che altrimenti provoca perdite di potenza, riscaldamento e usura continua.

Per un funzionamento corretto sono essenziali:
- *Centratura assiale e rigidezza dei supporti*, per garantire una pressione di contatto uniforme senza rotazioni relative delle superfici.
- *Solchi radiali tra le guarnizioni*, per evacuare i detriti d'usura e le sostanze estranee.
- *Superfici di contatto anulari* con rapporto tra raggio esterno ed interno scelto in modo da massimizzare l'*efficacia* dell'innesto, ossia il rapporto tra coppia d'attrito sviluppata e forza assiale $F$ di accostamento.

==== Innesto monodisco

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella configurazione *monodisco*, la flangia motrice (volano) $A$ e lo *spingidisco* $B$ serrano il disco condotto $D$, scorrevole assialmente sul mozzo scanalato e rivestito su entrambe le facce con guarnizioni ad alto attrito. Il pacchetto è racchiuso in una *campana* di guida e ventilazione; le superfici attive di attrito sono *due* ($A$–$D$ e $B$–$D$).
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-04.typ")],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il disco presenta una modesta *deformazione elastica fuori dal piano*: all'avvicinamento dello spingidisco l'area di contatto cresce progressivamente rendendo l'inserimento graduale, mentre al rilascio il ritorno elastico favorisce il distacco netto. L'ampia superficie esterna rispetto al volume agevola lo smaltimento termico verso l'ambiente.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-05.typ", max-h: 3.3cm)],
)

#v(0.5em)

Per assorbire le brusche variazioni di coppia e filtrare le *vibrazioni torsionali*, il disco è collegato all'albero tramite un *parastrappi* (fino alla soluzione a *doppio volano*). Le molle elicoidali circonferenziali — spesso abbinate a uno smorzatore ad attrito — rendono l'innesto simile a un *giunto elastico torsionalmente cedevole*. Nel doppio volano la massa secondaria agisce da *smorzatore dinamico*: in analogia al sistema traslazionale a due masse collegate da molla e smorzatore, la massa secondaria oscilla in *controfase* rispetto a quella principale, opponendo una forza inerziale che sposta la frequenza critica e sdoppia la risonanza principale in due picchi laterali di ampiezza fortemente ridotta.

#grid(
  columns: (1fr, 1fr, 0.55fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-06.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi su disco frizione])],
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-07.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi in un doppio volano])],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-08.typ", max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Sezione disco monodisco])],
)

#v(0.4em)
#fig-safe(include "../../figs/innesti/ecm-c13-p1-smorzatore.typ", max-h: 3.9cm, caption: text(size: 8.5pt, fill: luma(80))[Principio dello smorzatore dinamico (analogia traslazionale → doppio volano torsionale).])

==== Innesto multidisco

Per trasmettere coppie elevate a parità di ingombro senza accrescere eccessivamente il diametro del disco (che diventerebbe ingombrante e flessibile), si affiancano più superfici in un *pacco dischi* (in genere non oltre 12 dischi). I dischi condotti (rivestiti in fibra di carbonio, bronzo sinterizzato o grafite) sono montati su un *mozzo scanalato scorrevole sotto carico, centrato sui fianchi*, alternati a dischi conduttori in acciaio vincolati alla campana esterna. In ambito motociclistico il pacco è tipicamente serrato da molle elicoidali agenti su una piastra e aperto da un'asta spingidisco contrapposta.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Alternando dischi piani e dischi predeformati a *onda sinusoidale* si migliorano gradualità d'innesto e distacco a vuoto. La compattezza riduce però lo smaltimento termico verso l'esterno causando *surriscaldamento locale* nei tipi a secco; il limite si supera nei modelli a immersione o a circolazione d'olio. L'attuazione può avvenire con comandi manuali, pneumatici, idraulici oppure con *elettromagnete* in chiusura e molle di richiamo in apertura.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-09.typ")],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel *comando meccanico a leva* (sezioni $A$–$A$ e $B$–$B$), una forcella esterna impegna la gola di una slitta facendola scorrere assialmente lungo l'albero. L'estremità di una leva fulcrata risale il profilo curvilineo raccordato della slitta, ruotando attorno al perno e premendo con il proprio piede sullo spingidisco fino a serrare il pacco dischi; arretrando la slitta, la leva rientra nella sede liberando i dischi.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-10.typ")],
)
