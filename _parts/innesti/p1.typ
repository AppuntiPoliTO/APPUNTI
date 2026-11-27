#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

= *Innesti*

== Innesti a denti e a frizione

=== Funzione, classificazione e requisiti di progetto

A differenza dei giunti, che richiedono l'arresto della macchina per collegare o scollegare gli alberi, gli *innesti* vengono azionati *in esercizio* per interrompere o ripristinare il flusso di potenza tra organo motore e utilizzatore — consentendo di intervenire sull'architettura della linea di trasmissione (come nell'automobile, dove la frizione disconnette temporaneamente il motore dal cambio per effettuare la cambiata senza spegnerlo). Il comando può essere *esterno* (manuale, meccanico, idraulico, pneumatico o elettromagnetico — quest'ultimo più pronto perché il segnale si propaga come corrente elettrica, riducendo il ritardo tra azione e risposta) oppure *autonomo*, innescato dalla dinamica stessa del sistema al superamento di una coppia limite, di una velocità critica o all'inversione del moto.

Dal punto di vista del principio fisico di trasmissione della coppia, gli innesti si classificano in:
- *A contatto:* per *accoppiamento di forma* o azione meccanica positiva (innesti a denti o a dentini) oppure per *attrito* tra superfici solide (innesti a frizione piani, conici o a tamburo).
- *Senza contatto:* mediante *fenomeni elettromeccanici* (isteresi magnetica, correnti parassite, particelle magnetiche) oppure *attrito fluido* (giunti idraulici / fluidodinamici).

Il transitorio più delicato del progetto è la *sincronizzazione*, ossia la fase in cui l'albero condotto (inizialmente fermo o a velocità diversa) viene accelerato fino a uguagliare la velocità angolare dell'albero motore. Essa impone un compromesso rigoroso:
- *Inserimento troppo rapido:* produce elevati gradienti di velocità e accelerazioni brusche delle inerzie in gioco, generando picchi di coppia nettamente superiori alla coppia di regime e urti (*colpi d'ariete*) dannosi per la resistenza strutturale della trasmissione e dell'utenza.
- *Inserimento troppo lento:* introduce un ritardo inaccettabile tra il comando e la messa a regime e, negli innesti con elementi dissipativi (attrito, isteresi o attrito fluido), protrae lo strisciamento relativo trasformando grandi quantità di energia meccanica in *calore*. Se tale calore si accumula senza essere smaltito in tempo, insorgono deformazioni termiche locali e decadimento della resistenza dei materiali.

#nota[
  *Funzioni secondarie e requisiti termomeccanici di progetto.* Oltre a durata strutturale, prontezza operativa, gradualità d'inserimento e *invarianza delle prestazioni nel tempo* (che richiede un controllo puntuale dell'usura, poiché l'assottigliamento delle superfici e la crescita dei giochi alterano la risposta a parità di comando), gli innesti possono regolare il flusso energetico, introdurre *elasticità e smorzamento* contro le vibrazioni torsionali della linea oppure *dissipare energia* in calore. La funzione dissipativa è esasperata nei *freni*, che riprendono molte architetture degli innesti a frizione ma con l'obiettivo di convertire rapidamente energia cinetica in energia termica. Il dimensionamento termomeccanico dipende perciò dal ciclo di servizio: negli *inserimenti prolungati* (es. frenatura in discesa) occorre massimizzare la *trasmissione di calore verso l'ambiente*; negli *inserimenti saltuari* ad alta energia seguiti da intervalli di raffreddamento (es. freni aeronautici) è prioritaria un'elevata *capacità termica* per contenere la temperatura di picco.
]

=== Innesto a denti

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'*innesto a denti* è la soluzione più semplice basata sull'*accoppiamento di forma*: alle estremità dei due alberi coassiali sono montate due flange frontali dotate di profili a denti perfettamente coniugati. Azionando una *leva* incernierata che impegna la gola di un *collare*, si sposta assialmente la flangia scorrevole portando a contatto i fianchi dei denti: la coppia e la rotazione si trasferiscono per puro *ostacolo meccanico*, senza alcun slittamento a regime.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#include "../../figs/innesti/innesti-fig01.typ"

],
)

Poiché l'imbocco richiede che i denti si presentino in fase favorevole durante la traslazione assiale, l'inserimento è consentito solo a macchina ferma o a *moto lento* (altrimenti gli urti tra le teste dei denti risultano distruttivi); superfici frontali inclinate agevolano l'innesto. Il disinserimento può avvenire anche in esercizio, ma sotto carico la pressione sui fianchi genera un attrito non trascurabile che la leva deve vincere per separare i profili: l'inclinazione del fianco può favorire oppure ostacolare l'apertura.

=== Innesti a frizione

Negli *innesti a frizione* la coppia è trasmessa per *attrito* tra due o più superfici rivestite di materiale ad alto coefficiente d'attrito e premute da una spinta assiale $F$: la pressione di contatto generata dalla forza normale sviluppa forze tangenziali circonferenziali capaci di trasferire il momento torcente tra i due alberi. Le architetture fondamentali impiegano superfici piane a *corona circolare* (sinistra e centro-sinistra), superfici *troncoconiche* (centro-destra, in cui l'inclinazione del cono sfrutta l'effetto cuneo amplificando la pressione normale a parità di spinta assiale $F$) oppure superfici cilindriche *a tamburo* con ganasce radiali espansibili o centrifughe (destra).

#align(center)[
#import "@preview/cetz:0.3.4": canvas, draw
#include "../../figs/innesti/innesti-fig02.typ"
]

La spinta $F$ di chiusura può essere applicata mediante leve meccaniche (caratterizzate da un ritardo leggermente maggiore rispetto ai comandi fluidi o elettrici), attuatori idraulici o elettromagnetici, oppure tramite un *organo elastico* opportunamente precaricato. Poiché spesso non è agevole inserire un secondo attuatore contrapposto per la manovra inversa, l'elemento elastico lavora in antagonismo al comando: nelle frizioni automobilistiche si adotta una *molla a diaframma* — evoluzione della molla a tazza troncoconica, intagliata radialmente in lamine trapezoidali per aumentarne la flessibilità — vincolata su una circonferenza di fulcro tra coperchio e spingidisco. In marcia normale la molla mantiene serrato il pacco; premendone la parte centrale attraverso il circuito idraulico del pedale, il bordo esterno arretra allontanando lo spingidisco e interrompendo il flusso di potenza verso il cambio, mentre al rilascio la molla richiude progressivamente l'innesto.

I valori del *coefficiente d'attrito* (sia statico sia cinetico) dipendono da cinque fattori principali: *materiali* accoppiati, *natura dell'ambiente* (umidità e contaminazione), *pressione di contatto*, *velocità relativa di slittamento* e *temperatura*. Il ciclo operativo attraversa tre fasi distinte:
1. *Inserimento (sincronizzazione):* le superfici strisciano reciprocamente mentre la parte condotta accelera; si sviluppano calore (che richiede adeguati percorsi di conduzione verso l'esterno) e *usura* del materiale d'attrito, con progressiva alterazione della geometria di contatto.
2. *Sincronismo:* uguagliate le velocità angolari, cessa lo strisciamento e l'innesto si comporta come un *giunto torsionalmente più o meno rigido*.
3. *Disinserimento:* si manifesta un nuovo transitorio di slittamento; a innesto aperto è fondamentale limitare o *azzerare la coppia d'attrito parassita a vuoto*, poiché qualsiasi trascinamento residuo genera perdite di potenza, riscaldamento continuo e usura prematura.

Per assicurare un funzionamento regolare e ripetibile sono essenziali:
- *Centratura assiale e rigidezza dei supporti:* evitano rotazioni relative tra le flange e mantengono le superfici perfettamente allineate lungo la normale, garantendo una distribuzione uniforme della pressione.
- *Solchi radiali tra le guarnizioni:* facilitano l'evacuazione dei detriti d'usura e di eventuali contaminanti esterni dalla zona di contatto.
- *Superfici di contatto anulari* con rapporto tra raggio esterno e raggio interno dimensionato per massimizzare l'*efficacia* dell'innesto, definita come il rapporto tra la coppia d'attrito sviluppata e la forza assiale $F$ necessaria all'accostamento.

==== Innesto monodisco

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella configurazione *monodisco*, la flangia motrice (volano) $A$ è calettata sull'albero motore, mentre il disco condotto $D$ — rivestito su entrambe le facce con guarnizioni ad alto attrito — scorre assialmente sul mozzo scanalato dell'albero condotto. Lo *spingidisco* $B$, azionato dal sistema di attuazione, trasla assialmente serrando il disco $D$ contro $A$ all'interno della *campana* (che svolge funzioni di contenimento, guida dei perni di comando e smaltimento termico). Le superfici attive di attrito che trasferiscono coppia in parallelo sono quindi *due*: l'interfaccia $A$–$D$ e l'interfaccia $B$–$D$.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#include "../../figs/innesti/innesti-fig03.typ"
],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il disco condotto presenta una modesta *deformazione elastica fuori dal piano* (leggera curvatura assiale): man mano che lo spingidisco $B$ avanza comprimendo il disco flessibile contro la flangia $A$, la lamina si appiattisce progressivamente facendo crescere con gradualità l'area di contatto e uniformando la pressione; al rilascio, il ritorno elastico del disco agevola un distacco netto evitando trascinamenti a vuoto. Inoltre, l'ampia superficie esterna esposta rispetto al volume favorisce lo smaltimento del calore verso l'ambiente.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-05.typ", max-h: 3.4cm)],
)

#v(0.5em)

#grid(
  columns: (1fr, 1.15fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Poiché il disco frizione è relativamente snello e torsionalmente cedevole — e la coppia erogata dal motore a combustione interna presenta continue fluttuazioni — sulla linea di trasmissione si propagano *vibrazioni torsionali* e strappi. Per assorbirli, il disco non è vincolato rigidamente al mozzo d'uscita ma vi è collegato tramite un *parastrappi* (fino alla soluzione più evoluta del *doppio volano*, introdotta sul mercato da Valeo): la coppia passa prima alla corona d'attrito, poi attraversa un set di *molle elicoidali cilindriche circonferenziali* — spesso abbinate a uno smorzatore ad attrito — e infine raggiunge il mozzo, rendendo l'innesto equivalente a un *giunto elastico torsionalmente cedevole*.
  ],
  layout(size => {
    let gap = 0.25cm
    let max-h = 4.6cm
    let col-w = (size.width - gap) / 2
    let ref = measure(image("../../images/innesti/ecm-c13-p1-07.jpg"))
    let kw = if ref.width > 0pt { col-w / ref.width } else { 1 }
    let kh = if ref.height > 0pt { max-h / ref.height } else { 1 }
    let k = calc.min(kw, kh)
    let w = ref.width * k
    let h = ref.height * k
    grid(
      columns: (1fr, 1fr),
      column-gutter: gap,
      align: (center + top, center + top),
      figure(
        box(width: w, height: h, clip: true, image("../../images/innesti/ecm-c13-p1-06.jpg", width: w, height: h, fit: "cover")),
        caption: text(size: 8.5pt, fill: luma(80))[Parastrappi su disco frizione],
      ),
      figure(
        image("../../images/innesti/ecm-c13-p1-07.jpg", width: w, height: h),
        caption: text(size: 8.5pt, fill: luma(80))[Parastrappi in un doppio volano],
      ),
    )
  }),
)

#v(0.5em)

#grid(
  columns: (1.25fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Principio dello smorzatore dinamico (modello a 2 masse e risposta in frequenza).* Il funzionamento del doppio volano si comprende immediatamente per analogia con il sistema traslazionale a due masse illustrato a lato:
    - *Sistema a 1 massa:* una massa principale $m_1$ collegata al telaio fisso mediante una molla $k_1$ e uno smorzatore $c_1$ presenta, al variare della pulsazione forzante $omega$, una risposta in frequenza $|X_1(omega)|$ (curva tratteggiata rossa) dominata da un picco di risonanza pronunciato alla frequenza propria $omega_0$, la cui altezza è limitata soltanto dallo smorzamento interno $c_1$.
    - *Aggiunta della massa secondaria (2 masse):* collegando a $m_1$ una seconda massa più piccola $m_2$ tramite un proprio gruppo molla–smorzatore $(k_2, c_2)$, le due masse inizialmente oscillano insieme ma, in prossimità della risonanza $omega_0$, la massa $m_2$ entra in moto in *controfase* rispetto a $m_1$ (spostamento $x_2$ opposto a $x_1$). La forza inerziale così generata da $m_2$ si oppone direttamente all'oscillazione di $m_1$, contenendone lo spostamento.
 
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-smorzatore.typ", max-h: 9.2cm, caption: text(size: 8.5pt, fill: luma(80))[Modello traslazionale a 2 masse e confronto delle curve di risposta in frequenza (FRF): sistema a 1 massa vs smorzatore dinamico / doppio volano.])],
)
   - *Effetto sulla risposta in frequenza (FRF):* nella curva del sistema accoppiato (linea continua blu), il picco singolo in $omega_0$ viene *abbattuto* e sostituito da *due picchi di risonanza laterali* ($omega_1 < omega_0$ e $omega_2 > omega_0$) di ampiezza massima drasticamente inferiore. Lo smorzatore dinamico svolge dunque una doppia azione: *attenua* fortemente il picco vibratorio e *sposta* le frequenze critiche lontano dalla risonanza originaria $omega_0$.
  - *Trasposizione torsionale al doppio volano:* nel dispositivo reale l'unico cambiamento riguarda la natura del moto, da traslazionale a *torsionale*. La massa secondaria $m_2$ è rappresentata dal secondo disco del volano e il collegamento $(k_2, c_2)$ dalle molle elicoidali circonferenziali (e dall'attrito interno): all'insorgere di una vibrazione torsionale, anziché trasmetterla rigidamente, il disco secondario ruota sfasato rispetto al primario comprimendo le molle e smorzando efficacemente le oscillazioni lungo la trasmissione.
==== Innesto multidisco

#grid(
  columns: (1fr, 1.05fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Quando occorre trasmettere *coppie molto elevate*, un innesto monodisco richiederebbe una corona circolare d'attrito di diametro esterno eccessivo, con forte aumento dell'ingombro radiale e perdita di rigidezza (un disco sottile e molto largo diventa flessibile e difficilmente controllabile). La soluzione consiste nel moltiplicare in parallelo le superfici di attrito affiancando più dischi in un *pacco dischi* (in genere fino a un massimo di 12 dischi), ottenendo grande capacità di coppia in un volume molto compatto — caratteristica ideale in applicazioni a spazio ridotto come quelle *motociclistiche*.

    Nel pacco, i *dischi condotti* (rivestiti con materiali ad alto attrito quali fibra di carbonio, bronzo sinterizzato o grafite) sono montati su un *mozzo scanalato scorrevole sotto carico, centrato sui fianchi*, e si alternano a *dischi conduttori* in acciaio incastrati nelle cave interne della *campana* esterna. 
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-09.typ", max-h: 10cm, caption: text(size: 8.5pt, fill: luma(80))[In alto: schema generale dell'innesto multidisco (vista frontale e sezione assiale). In basso: semisezione di innesto multidisco a comando elettromagnetico con molle di richiamo.])],
)
Quando il pacco è serrato i due gruppi ruotano solidali trasferendo potenza; rilasciando la pressione i dischi scorrono e ruotano indipendentemente. In ambito motociclistico il serraggio è affidato tipicamente a quattro molle elicoidali agenti su una piastra spingidisco, mentre il disinnesto avviene tramite un'asta spingidisco contrapposta azionata dalla leva al manubrio.

    Alternando dischi piani a dischi leggermente predeformati a *onda sinusoidale* si migliorano la gradualità d'inserimento e il distacco completo a vuoto. Tuttavia, la forte compattezza elimina gli spazi liberi di aerazione tipici del monodisco, ostacolando lo smaltimento termico dai dischi interni: nei multidisco a secco il rischio di *surriscaldamento locale* è quindi elevato e il progetto termico risulta critico; tale limite si supera nei modelli *a bagno d'olio* (a immersione o a circolazione forzata). Oltre ai comandi meccanici, idraulici o pneumatici, l'attuazione può essere *elettromagnetica* (figura in basso): alimentando la bobina (`+` / `−`), l'elettromagnete richiama l'ancora mobile serrando lo spingidisco contro il pacco dischi; interrompendo la corrente, le *molle* di richiamo riportano lo spingidisco in posizione aperta.

#v(0.5em)

Una soluzione classica, largamente impiegata sui veicoli terrestri, è l'innesto multidisco a *comando meccanico a leva* (sezioni #box[$A$–$A$] e #box[$B$–$B$] in figura): nel mozzo scanalato sono ricavate tre tasche radiali a 120° (visibili in #box[$B$–$B$]) che alloggiano altrettante *leve* incernierate su un perno di fulcro. Una forcella esterna (non rappresentata) impegna la gola circonferenziale della *slitta* facendola scorrere assialmente lungo l'albero verso il pacco dischi (verso sinistra in #box[$A$–$A$]): l'estremità destra della leva scivola lungo il *profilo curvilineo raccordato* della slitta e si abbassa infossandosi all'interno della propria sede. Ruotando attorno al fulcro, il piede curvo sinistro della leva viene portato a contatto e premuto contro lo *spingidisco* mobile, serrando l'intero pacco dischi contro l'anello di battuta imbullonato a destra; facendo arretrare la slitta, la leva rientra in posizione di riposo liberando lo spingidisco e aprendo l'innesto.

#align(center)[
#import "@preview/cetz:0.3.4": canvas, draw
#include "../../figs/innesti/innesti-fig04.typ"
[Innesto a frizione multidisco a comando meccanico a leva: sezione trasversale #box[$B$–$B$] e sezione assiale #box[$A$–$A$].])
]
