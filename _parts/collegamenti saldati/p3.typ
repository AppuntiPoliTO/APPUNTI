#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

== Applicazioni industriali e concentrazione delle tensioni

#block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt)[
  *Nota:* i paragrafi seguenti riportano cenni industriali e di approfondimento normativo sul picco d'intaglio al piede del cordone (materiale qualitativo da leggere per completezza, non richiesto nei calcoli d'esame).
]

=== Complessità costruttiva nelle strutture saldate

#grid(
  columns: (0.85fr, 1.15fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella pratica industriale (nodi trave-colonna ad incastro, recipienti in pressione, staffe saldate, nodi di strutture tubolari e banchi di laminazione di grande estensione), la lunghezza dei cordoni, gli spessori elevati e l'accessibilità ridotta rendono l'esecuzione critica. In tali contesti la sicurezza strutturale richiede sempre l'integrazione tra calcolo progettuale e rigorose procedure di *qualificazione dei saldatori e dei procedimenti di saldatura*.
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/p3-fig01.typ", max-h: 5.8cm, caption: [Esempi industriali: nodo trave-colonna, recipiente in pressione, staffa e nodo tubolare])
  ],
)

=== Tensione nominale, di hot spot ed effettiva

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il modello analitico visto negli esempi fornisce una valutazione macroscopica approssimata che trascura l'*effetto di intaglio* al piede del cordone (*weld toe*). Lontano dal giunto la distribuzione delle tensioni è uniforme, ma man mano che ci si avvicina al piede del cordone il raggio di raccordo estremamente ridotto perturba il flusso generando un cospicuo innalzamento non lineare fino al picco locale (in analogia a quanto accade con la formula di Lewis alla base del dente di una ruota dentata).

    Poiché tale picco reale non è determinabile per via analitica chiusa, la normativa tecnica distingue tre livelli di analisi a raffinatezza crescente:
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/ecm-c11-p3-18.typ", max-h: 5.2cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Metodo della tensione nominale ($sigma_"nom"$).* Valuta la tensione media macroscopica nella sezione resistente tramite equilibrio elementare lontano dall'intaglio, senza modellare la concentrazione locale del cordone. È l'approccio standard usato negli esempi precedenti in abbinamento alle categorie di dettaglio dell'Eurocodice 3.
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/p3-tensione-nominale.typ", max-h: 4.5cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Metodo della tensione di hot spot ($Delta sigma_"hss"$).* Rappresenta una via intermedia: si calcola la tensione strutturale nella piastra a distanze prefissate dal piede del cordone (es. punti $R_1, R_2$ oppure $t / 2$ e $3 t / 2$ nello spessore; per estrapolazione superficiale da norma $0.4 t$ e $1.0 t$ con mesh fine, $0.5 t$ e $1.5 t$ con mesh grossolana, oppure $4, 8, 12" mm"$ / $5, 15" mm"$ per hot-spot di tipo b) e la si *estrapola* linearmente o quadraticamente al piede del cordone, ottenendo una tensione convenzionale che coglie la macro-geometria del giunto ma non il picco non lineare locale.
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/ecm-c11-p3-20.typ", max-h: 4.5cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/collegamenti-saldati/ecm-c11-p3-21.typ", max-h: 4.8cm)
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/ecm-c11-p3-22.typ", max-h: 4.8cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Metodo della tensione effettiva ($Delta sigma_"Eff"$).* Ricorre a modelli numerici puntuali agli *elementi finiti (FEM)* con mesh molto fitta al piede del cordone oppure a rilievi sperimentali, al fine di descrivere l'andamento reale della tensione fino al picco locale d'intaglio (*notch stress*).
  ],
  [
    #fig-safe(include "../../figs/collegamenti-saldati/ecm-c11-p3-19.typ", max-h: 4.5cm)
  ],
)
