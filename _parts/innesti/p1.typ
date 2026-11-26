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
    L'*innesto a denti* trasferisce la coppia tramite un *accoppiamento di forma* tra due flange frontali dotate di profili coniugati. Una leva agente su un collare spinge assialmente la flangia scorrevole fino a impegnare i fianchi dei denti, realizzando un collegamento rigido privo di slittamento a regime.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-01.typ")],
)

#include "../../figs/p1-fig01.typ"

    L'inserimento è ammesso solo a macchina ferma o a *moto lento*, così che i denti trovino la fase corretta senza urti distruttivi; le superfici inclinate agevolano l'imbocco. Durante il disinserimento sotto carico occorre vincere l'attrito generato dalla pressione sui fianchi: l'inclinazione del profilo può favorire oppure ostacolare l'apertura.
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
