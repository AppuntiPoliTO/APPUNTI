#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)
#pagebreak()
== Giunti elastici

I *giunti elastici* collegano due alberi tramite un *elemento elastico deformabile* interposto, consentendo *piccoli disallineamenti assiali, radiali e angolari* dovuti a montaggio o deformazioni in esercizio.


    Si distinguono in base al materiale (*metallici* o *ad elastomeri*) e al comportamento torsionale:
    - *Torsionalmente elastici:* sfruttano la cedevolezza a torsione per attenuare urti e vibrazioni torsionali lungo la linea.
    - *Torsionalmente rigidi:* mantengono elevata rigidezza a torsione, concentrando l'elasticità sui gradi di libertà flessionali o assiali.

    Rispetto agli elastomeri, i *metallici* sopportano *temperature maggiori*, ma richiedono *lubrificazione* e offrono uno *smorzamento interno minore*.

#v(0.2em)

#nota[
  *Problematiche dinamiche dei giunti elastici:*
  + *Sovraccarichi nei transitori:* la cedevolezza torsionale può innescare oscillazioni torsionali con picchi di coppia in avviamento, arresto o funzionamento intermittente.
  + *Instabilità dinamica da smorzamento rotante:* la dissipazione interna a un elemento rotante può innescare, oltre una *velocità angolare limite*, un moto di precessione a *spirale divergente* del baricentro dell'albero, con ampiezze rapidamente crescenti e carichi catastrofici sui cuscinetti. Tale velocità limite non deve mai essere superata (oppure va compensata con smorzamento statorico).
]

=== Giunti elastici metallici

==== Giunto elastico metallico BIBBY

Il giunto *BIBBY* (o a nastro a serpentina) collega due mozzi flangiati dentati affacciati mediante un *nastro in acciaio per molle* avvolto a serpentina nelle cave radiali dei denti (in più segmenti sulle taglie grandi). Un coperchio in due semigusci imbullonati con guarnizioni e O-ring racchiude la zona dentata per trattenere *grasso o lubrificante ad alta viscosità* (scelto in base alla velocità di rotazione).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-02.typ", max-h: 5.5cm)
  ],
  [
    #image("../../images/fig__parts_giunti_p3_4239.png", width: 85%)

  ],
)

#v(0.2em)

#nota[
  *Funzione del coperchio (errore d'esame frequente):* i due semigusci esterni (rosa e verde), il bullone superiore e le guarnizioni servono *solo a contenere il grasso* e *non* trasmettono coppia. Il collegamento meccanico tra i due alberi è affidato unicamente ai *due mozzi dentati* (arancione e azzurro) e al *nastro a serpentina*.
]

#v(0.4em)

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Trasmissione e comportamento progressivo.* La coppia si trasmette per *flessione e torsione* del nastro con rigidezza non lineare progressiva (*hardening*): a carico normale il nastro flette sull'intera luce libera della cava; a coppie elevate o sotto urto si appoggia progressivamente sui fianchi sagomati dei denti, riducendo la luce libera fino al solo breve tratto tra i due semigiunti e aumentando così la rigidezza.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-03.typ", max-h: 5.5cm)
  ],
)

Lo smorzamento delle vibrazioni (fino a circa il *$30\%$* dei carichi impulsivi) deriva sia dalla deformazione elastica sia dall'*attrito radente* tra nastro e sedi (motivo per cui la lubrificazione a grasso è indispensabile). Il giunto consente correzioni di piccoli spostamenti *assiali* ($3 - 5 "mm"$, per scorrimento nelle cave), *radiali* ($0.5 - 1.5 "mm"$) e *angolari* ($1 degree - 2 degree$, fino a $0.25 degree$ in alcuni cataloghi commerciali come *Lovejoy*), richiedendo al montaggio un accurato controllo del *gap* assiale e dell'allineamento.

==== Giunto elastico metallico Arpex

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il giunto *Arpex* (a biellette) collega le flange dei due alberi tramite pacchi di *lamine flessibili (biellette)* disposte lungo un poligono chiuso e fissate alternativamente con bulloni; è realizzato in configurazione singola oppure *doppia* con distanziale centrale (giallo in sezione). Le lamine lavorano a *flessione fuori dal piano* (lungo l'asse del rotore), consentendo leggere inflessioni e compensando disallineamenti *angolari*, *radiali* e lievi scorrimenti assiali; nel piano delle flange oppongono invece elevata resistenza a taglio e compressione, rendendo il giunto *torsionalmente rigido*. In sovraccarico estremo cedono le biellette prima dei bulloni.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-04.typ", max-h: 5.5cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Aumento della flessibilità:* interponendo un *elemento intermedio tubolare* (foto a fianco e schema seguente) si trasmette il momento torcente mantenendo bassa rigidezza flessionale e aumentando la capacità di compensare disallineamenti (specie su rotori lunghi). Adottando lamine o mantelli con sezione ad *U* deformabile è possibile moderare anche la rigidezza torsionale.
  ],
  [
   #fig-safe(include "../../figs/giunti/giunti-fig01.typ", max-h: 5.8cm)
  ],
)

=== Giunti elastici ad elastomeri

I giunti ad elastomeri collegano due flange calettate mediante elementi interposti in *materiale polimerico o elastomerico*, in configurazioni sia *torsionalmente rigide* (*Norton*, *Steckflex*) sia *torsionalmente elastiche* (*Periflex*). Offrono uno *smorzamento interno molto maggiore* rispetto ai giunti metallici e *non richiedono lubrificazione*, ma sopportano temperature inferiori. Le loro proprietà meccaniche (rigidezza e smorzamento) *non sono determinabili analiticamente*, ma vanno ricavate *sperimentalmente* in funzione di geometria, spessori e durezza *Shore*.

==== Giunto elastico NORTON (a pioli)

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il giunto *NORTON* collega due flange affacciate tramite *pioli cilindrici* rivestiti di *manicotti elastomerici bombati*, sporgenti da un disco e impegnati nei fori del disco opposto. Per garantire *equilibratura dinamica* e simmetria, pioli e fori liberi sono alternati sulle due flange. Il giunto compensa efficacemente *errori di posizionamento assiale* (scorrimento dei manicotti nei fori) e *piccoli errori angolari* (grazie alla *bombatura* dell'elastomero). Pur ricordando un bullone in sezione, il gambo del piolo sotto il manicotto *non è filettato*.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-05.typ", max-h: 5.5cm)
  ],
)

#v(0.3em)



==== Giunto elastico Steckflex

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Nel giunto *Steckflex* le due flange sagomate sono collegate da un *elemento polimerico lobato* interposto (a stella/fiore, in giallo in sezione). Nelle versioni compatte moderne (es. tipo *N-EUPEX*), il nucleo centrale unico è sostituito da singoli blocchetti elastomerici inseriti in cavità periferiche delle flange per ridurre massa rotante e ingombro.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-08.typ", max-h: 5.4cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    La coppia si trasmette per *compressione (pressione)* esercitata dai fianchi dei denti metallici sui lobi polimerici. L'elastomero svolge un'efficace azione di *smorzamento delle oscillazioni torsionali* (scegliendo la durezza *Shore* si può allontanare la frequenza naturale del sistema da risonanze critiche) e consente piccoli spostamenti assiali e la correzione di modesti *errori angolari*.
  ],
  [
    #image("/images/fig__parts_giunti_p3_8890.png", width: 75%)

  ],
)

==== Giunto elastico Periflex

#grid(
  columns: (0.98fr, 1.02fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Nel giunto *Periflex* l'elemento elastico è un vero componente strutturale intermedio: un *collare in gomma telata con sezione ad $Omega$*, *tagliato radialmente* in un punto per consentire montaggio e sostituzione senza spostare assialmente gli alberi. Il collare è pinzato sui due mozzi flangiati (rosa e arancione) mediante *controflange anulari* serrate da viti perimetrali mordenti (es. n° 6 mordenti per lato).
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p3-10.typ", max-h: 6.0cm)
  ],
)

#v(0.2em)

#nota[
  *Ruolo delle viti (errore d'esame frequente):* le viti mordenti fissano i bordi del collare elastomerico tra flange e controflange sui rispettivi mozzi; *non* collegano tra loro i due alberi né chiudono un coperchio di lubrificazione.
]

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    La coppia si trasmette *per taglio* (tensioni circonferenziali nel collare), con una *deformazione torsionale molto elevata* (rotazione relativa fino a circa *$15 degree$*). La sezione aperta ad $Omega$ garantisce *correzioni di grande entità*:
    - *assiali fino a $8 "mm"$* (ideale per dilatazioni termiche degli alberi);
    - *radiali fino a $4 "mm"$*;
    - *angolari tra $5 degree$ e $12 degree$*.
  ]
,
  [
   #image("/images/fig__parts_giunti_p3_2162.png", width: 75%)
],
)
