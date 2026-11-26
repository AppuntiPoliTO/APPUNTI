#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)

== Giunti rigidi

I *giunti rigidi* collegano due alberi *perfettamente coassiali*, impedendo qualsiasi spostamento o rotazione relativa. Montati a macchina ferma e stabilmente chiusi in esercizio, si disaccoppiano solo allo smontaggio o per rottura di un elemento sacrificale (chiavetta o bulloni) in caso di sovraccarico. Le tre soluzioni costruttive principali sono il giunto *a manicotto*, *a gusci* e *a dischi (o a flange)*.

=== Giunto rigido a manicotto

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il giunto a manicotto unisce le estremità affacciate dei due alberi mediante un *manicotto cilindrico cavo* (generalmente in ghisa) collegato agli alberi tramite due *chiavette con nasello*. La superficie superiore leggermente obliqua e il nasello sporgente consentono il forzamento in sede e l'estrazione allo smontaggio.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p2-01.typ", max-h: 5.2cm)
  ],
)

Per sicurezza antinfortunistica (copertura dei naselli rotanti), il manicotto va rivestito da un *astuccio cilindrico in lamiera d'acciaio* fissato con viti mordenti. Noto il diametro $d$ degli alberi, le proporzioni costruttive consigliate sono:

$ L = 3 d , quad D = 1.7 d $

In caso di sovraccarico la chiavetta cede per prima, fungendo da fusibile meccanico. Pur essendo economico e semplice, presenta un *limite dinamico* rilevante: l'asimmetria della chiavetta sposta il *baricentro* fuori dall'asse di rotazione, generando *eccentricità*, forze centrifughe e vibrazioni che ne sconsigliano l'impiego ad alte velocità. Gli elementi propri del giunto sono il manicotto (verde) e le due chiavette (gialle), mentre i due alberi sono le parti collegate.

=== Giunto rigido a gusci

Il giunto a gusci adotta un manicotto cilindrico (interno ed esterno) diviso longitudinalmente in *due semigusci* premuti contro gli alberi da *bulloni trasversali*. Tra i due semigusci deve essere presente un *gioco per il serraggio* ($s$) affinché il tiro dei bulloni generi pressione sull'interfaccia albero–manicotto senza mandare a pacco i piani di separazione.

#align(center)[
  #fig-safe(include "../../figs/giunti/ecm-c12-p2-02.typ", max-h: 6.5cm)
]

Accorgimenti costruttivi principali rispetto al giunto a manicotto:
- *Sicurezza e bulloni a scomparsa:* teste quadrate e dadi esagonali sono incassati entro *cave* ricavate nella superficie cilindrica esterna e coperti da un *involucro in lamierino d'acciaio*, eliminando sporgenze e contenendo eventuali proiezioni in caso di rottura dei bulloni.
- *Equilibratura:* teste e dadi sono *alternati* lungo l'asse e tra i due lati per compensare le masse e migliorare nettamente il bilanciamento.
- *Trasmissione e linguetta:* la coppia si trasmette per *attrito* sulle superfici di contatto; per coppie elevate (e soprattutto per alberi con *$d > 55 "mm"$*) si aggiunge una *linguetta incastrata*, che introduce solo un lieve squilibrio locale.
- *Accessibilità radiale:* il montaggio e lo smontaggio avvengono radialmente senza dover spostare assialmente gli alberi.

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Tra le varianti commerciali diffuse figurano il guscio superiore suddiviso in *due corpi semicilindrici distinti* su base unica (che consente di ispezionare un lato senza disaccoppiare completamente l'altro albero, come in foto) e il corpo unico *a C* fessurato su un solo lato chiuso da viti a brugola. Appartengono al giunto i due semigusci, i bulloni di serraggio e l'eventuale linguetta.
  ],
  [
    #fig-safe(image("../../images/giunti/ecm-c12-p2-03.jpg"), max-h: 4.8cm)
  ],
)

=== Calcolo del tiro dei bulloni nel giunto a gusci

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Per dimensionare i bulloni si considera il *semiguscio superiore* di lunghezza $L = 2 l$ (ciascun albero impegna una semilunghezza $l = L / 2$) e raggio interno $r = d / 2$. Si assume una distribuzione di pressione massima in corrispondenza dell'asse dei bulloni ($phi.alt = 0$) e nulla sul piano di separazione ($phi.alt = plus.minus pi / 2$):

    $ p(phi.alt) = p_0 dot cos^2 phi.alt $
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p2-04.typ", max-h: 5.0cm)
  ],
)

Integrando il momento delle forze elementari d'attrito $d T = f dot p(phi.alt) dot r dot d phi.alt dot l$ (a braccio $r$) sull'intera circonferenza di contatto di un albero ($l = L / 2$), si ricava il *momento torcente trasmissibile* $M$:

$ M &= integral_(-pi)^(+pi) f dot p(phi.alt) dot r dot d phi.alt dot l dot r = f dot p_0 dot r^2 dot frac(L, 2) integral_(-pi)^(+pi) cos^2 phi.alt thin d phi.alt \
    &= f dot p_0 dot r^2 dot frac(L, 2) dot [ frac(1, 2)(phi.alt + sin phi.alt dot cos phi.alt) ]_(-pi)^(+pi) = pi dot f dot p_0 dot r^2 dot frac(L, 2) $

Il *tiro complessivo* $N$ che serra i due semigusci uguaglia la risultante delle componenti verticali della pressione sull'intera lunghezza $L$:

$ N &= integral_(-pi/2)^(+pi/2) (p_0 dot cos^2 phi.alt dot r dot d phi.alt dot L) dot cos phi.alt = p_0 dot r dot L integral_(-pi/2)^(+pi/2) cos^3 phi.alt thin d phi.alt \
    &= p_0 dot r dot L dot [ sin phi.alt - frac(1, 3) sin^3 phi.alt ]_(-pi/2)^(+pi/2) = frac(4, 3) p_0 dot r dot L $

Ricavando $p_0 dot r dot L = frac(2 M, pi dot f dot r)$ dall'espressione di $M$ e sostituendo $r = d / 2$ in $N$, si ottiene:

$ N = frac(8 M, 3 pi dot f dot r) = frac(16 M, 3 pi dot f dot d) $

Indicato con $n$ il numero totale dei bulloni, il *tiro minimo $T_b$ su ciascun bullone* necessario a garantire la trasmissione senza slittamento vale:

$ T_b = frac(N, n) = frac(16 M, 3 n dot pi dot f dot d) $

Da $T_b$ si determinano la coppia di serraggio e la verifica a resistenza dei bulloni.

=== Giunto rigido a dischi

#grid(
  columns: (0.95fr, 1.05fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Il *giunto rigido a dischi* è formato da due dischi con *mozzi* calettati sugli alberi (tramite chiavette o linguette), accostati frontalmente e collegati da $n$ bulloni su una corona circolare di diametro primitivo $d^*$. Il contatto fra le facce è limitato a una *corona circolare esterna* per massimizzare il braccio delle forze d'attrito. Se i mozzi mancano e i dischi sono fucinati o saldati alle estremità dell'albero, il giunto è detto *giunto a flange*.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p2-05.typ", max-h: 5.5cm)
  ],
)

In caso di sovraccarico i bulloni fungono da *elemento sacrificale*; un bordo o campana perimetrale può proteggere da eventuali proiezioni radiali alla rottura. Gli elementi propri del giunto sono i due semigiunti a disco (giallo e azzurro), i bulloni e le chiavette/linguette. Per garantire la *coassialità* e impedire che i bulloni lavorino a taglio si usano due sistemi di centratura:
- *Collare di centratura (a gradino):* lavorazione diretta sui dischi (sporgenza cilindrica su uno, cavità sull'altro). Comporta due semigiunti diversi a magazzino e richiede un *ridotto spostamento assiale* di almeno un albero allo smontaggio.
- *Anello di centratura:* un anello interposto tra due dischi *perfettamente identici e simmetrici*, con gioco assiale tra le estremità degli alberi ($10 "mm"$, lunghezza $L_("max") + 10$). Sfilando l'anello si disconnettono gli alberi *senza muoverli assialmente né scollegare i dischi*, unificando il ricambio a magazzino a fronte di un componente aggiuntivo.

#grid(
  columns: (0.98fr, 1.02fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Trasmissione per attrito (soluzione standard).* I bulloni sono serrati per lavorare *esclusivamente a trazione* (precarico $F_v$), senza taglio. La coppia trasmessa $M_T$ per attrito sulla corona circolare (diametro fori $d^*$) e la *forza minima di serraggio $F_v$* su ciascuno degli $n$ bulloni valgono:

    $ M_T = n dot f dot F_v dot frac(d^*, 2) , quad F_v = frac(2 dot M_T, f dot n dot d^*) $

    dove $f$ è il coefficiente di attrito tra le superfici (tipicamente *$f = 0.25$* per superfici sgrossate).
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p2-06.typ", max-h: 5.8cm)
  ],
)

#v(0.4em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    *Alternativa: bulloni calibrati a taglio.* Impiegando *bulloni a gambo calibrato* (diametro $d$, lunghezza calibrata $s$ a cavallo del piano di separazione) inseriti in *fori alesati*, la coppia è trasmessa direttamente dalle *forze di taglio $F_T$*, mentre la filettatura chiude soltanto il collegamento. È una soluzione *più costosa*, ma trasmette una *coppia più elevata* e richiede la *verifica a taglio* dei bulloni.
  ],
  [
    #fig-safe(include "../../figs/giunti/ecm-c12-p2-07.typ", max-h: 4.2cm)
  ],
)
