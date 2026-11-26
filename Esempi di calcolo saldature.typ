#import "@preview/cetz:0.3.4": canvas, draw
#import "figs/_helpers.typ": fig-safe, img-flag
#set page(paper: "a4", margin: 1.5cm, numbering: "1", number-align: bottom + right)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,
)
#let circ = sym.degree
#let varphi = $phi$

#set heading(numbering: "1.")
#set figure(numbering: none)
#show figure.caption: it => it.body

#outline(title: "Indice", indent: auto, depth: 3)
#pagebreak()

= *Esempi di calcolo saldature*

== Saldature - Studio di carichi e tensioni

Il cordone di saldatura agisce come un *vincolo meccanico* che impedisce alle piastre collegate di traslare o ruotare reciprocamente sotto l'azione dei carichi esterni. L'*analisi cinematica* parte da un esperimento mentale semplice: si immagina che i cordoni cedano (o che la piastra sia semplicemente appoggiata senza attrito) per individuare i moti relativi che le azioni esterne produrrebbero; poiché il cordone impedisce tali spostamenti e deformazioni, esso sviluppa tensioni esattamente nella stessa direzione e in verso opposto, il cui integrale ripristina l'equilibrio globale.

Dalle reazioni vincolari globali si ricavano le *forze per unità di lunghezza* lungo l'asse del cordone ($f_parallel$ parallela all'asse, $n_perp$ ortogonale all'asse), da cui discendono le tensioni sulla sezione di gola di altezza $a$. Sebbene il comportamento fisico del giunto sia lo stesso, statica e fatica adottano sistemi di riferimento diversi:

- *Verifica statica.* Si opera sulla *sezione di gola non ribaltata* nel sistema di riferimento locale inclinato a $45°$, indicando le componenti con l'apice $g$ ($sigma_perp^g$, $tau_perp^g$, $tau_parallel^g$). Non c'è arbitrarietà sulla faccia da scegliere, ma le forze $n_perp$ vanno proiettate lungo la normale e la tangente al piano di gola.
- *Verifica a fatica.* La normativa impone il riferimento globale del giunto, *ribaltando convenzionalmente* la sezione di gola su una delle due facce (supporto o piattabanda). L'approccio è geometricamente più intuitivo perché evita proiezioni a $45°$, ma la denominazione della tensione ($sigma_perp$ o $tau_perp$) cambia in base alla faccia scelta.

#block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt)[
  *Attenzione (ribaltamento vs proiezione):* nel calcolo a fatica la sezione di gola viene *ribaltata* (ruotata mantenendo la sua effettiva altezza $a$), *non proiettata* geometricamente sulle facce. Proiettare anche la superficie introdurrebbe un'errata doppia proiezione; la larghezza resistente rimane sempre $a$.
]

== Casi notevoli di calcolo dei cordoni d'angolo

=== Esempio 1: cordoni longitudinali sotto carico assiale

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Una piattabanda è vincolata al supporto mediante due cordoni longitudinali di lunghezza $L$ e sollecitata da un carico assiale $P$. Se i cordoni non esistessero, la piattabanda traslerebbe liberamente nella direzione e nel verso di $P$.

    I due cordoni negano questo spostamento esercitando sulla piattabanda due reazioni vincolari $F$ parallele ai cordoni (equilibrio alla traslazione); per azione e reazione, sui cordoni agiscono le forze $F$ uguali e contrarie, che si ripartiscono uniformemente lungo tutta la lunghezza $L$ generando la forza distribuita parallela $f_parallel$:
    $ 2 F = P arrow.r F = frac(P, 2) , quad f_parallel = frac(F, L) = frac(P, 2 L) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-01.typ", max-h: 5.8cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "figs/ecm-c11-p3-03.typ", max-h: 5.5cm, caption: [Reazioni vincolari $F$ del supporto sulla piattabanda])
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-02.typ", max-h: 5.5cm, caption: [Azioni uguali e contrarie $F$ trasmesse sui cordoni])
  ],
)

#v(0.6em)

Isolando prima la piattabanda come corpo libero si leggono le reazioni vincolari $F$ che la tengono in equilibrio contro $P$; passando poi ai cordoni, per il principio di azione e reazione, si ottengono le forze $F$ trasmesse dalla piattabanda ai cordoni stessi.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Poiché la forza distribuita $f_parallel$ giace lungo l'asse del cordone, qualsiasi piano passante per tale asse (la faccia del supporto, la faccia della piattabanda o la sezione di gola inclinata a $45°$) la contiene interamente. Di conseguenza il ribaltamento non cambia nulla e le verifiche a *fatica* e *statica* conducono alla medesima tensione tangenziale longitudinale:
    $ tau_parallel = tau_parallel^g = frac(f_parallel, a) = frac(F, L a) = frac(P, 2 L a) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-04.typ", max-h: 5.5cm)
  ],
)

=== Esempio 2: cordoni trasversali sotto carico assiale

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La stessa piattabanda è ora saldata mediante due cordoni trasversali di lunghezza $h$, ortogonali al carico $P$. Se i cordoni cedessero, la piattabanda si allontanerebbe nella direzione di $P$; per impedirlo, i cordoni sviluppano reazioni $F = P / 2$ ortogonali al proprio asse. La forza per unità di lunghezza risulta quindi *perpendicolare* all'asse dei cordoni (indicata con $n$ minuscola perché distribuita e pedice $perp$ perché ortogonale al cordone):
    $ n_perp = frac(F, h) = frac(P, 2 h) $
  ],
  [
    #fig-safe(include "figs/p3-es2-equilibrio.typ", max-h: 5.8cm)
  ],
)

#v(0.6em)

Nel *calcolo a fatica*, la tensione si ottiene dividendo $n_perp$ per $a$: fisicamente l'intensità è identica in entrambi i casi, ma cambia il nome ($tau_perp$ o $sigma_perp$) per coerenza con la faccia scelta per il ribaltamento della sezione di gola:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Ribaltamento sul supporto.* La forza giace nel piano di adesione e genera una tensione tangenziale:
    $ tau_perp = frac(n_perp, a) = frac(F, h a) = frac(P, 2 h a) $
    #fig-safe(include "figs/ecm-c11-p3-06.typ", max-h: 5.6cm)
  ],
  [
    - *Ribaltamento sulla piattabanda.* La forza è ortogonale al lembo e genera una tensione normale:
    $ sigma_perp = frac(n_perp, a) = frac(F, h a) = frac(P, 2 h a) $
    #fig-safe(include "figs/ecm-c11-p3-07.typ", max-h: 5.6cm)
  ],
)

#v(0.6em)

Nel *calcolo statico*, la normativa non consente di ribaltare la sezione di gola: la forza orizzontale $n_perp$ non è né normale né parallela al piano inclinato a $45°$, quindi va proiettata nelle due direzioni locali della gola (ciascuna con fattore $cos 45° = sin 45° = sqrt(2)/2$), generando simultaneamente una componente normale $sigma_perp^g$ e una tangenziale $tau_perp^g$:

$ n_(perp, n) = n_perp cos 45° , quad n_(perp, t) = n_perp sin 45° $
$ sigma_perp^g = frac(n_(perp, n), a) = frac(n_perp cos 45°, a) = frac(F sqrt(2), 2 h a) = frac(P sqrt(2), 4 h a) , quad tau_perp^g = frac(n_(perp, t), a) = frac(n_perp sin 45°, a) = frac(P sqrt(2), 4 h a) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #fig-safe(include "figs/ecm-c11-p3-08.typ", max-h: 5.5cm)
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-09.typ", max-h: 5.0cm)
  ],
)

=== Esempio 3: mensola con due cordoni orizzontali sotto carico trasversale

La piattabanda lavora a sbalzo sotto un carico verticale $P$ applicato a braccio $b$, vincolata da due cordoni orizzontali di lunghezza $L$ posti a distanza $h$. Il carico $P$ produce due effetti cinematici simultanei: una traslazione verticale verso il basso e una rotazione nel piano attorno al *centro di istantanea rotazione*, individuato dall'incrocio delle diagonali che congiungono gli estremi opposti dei due cordoni. Poiché un cordone non può reagire con momenti flettenti concentrati, la coppia resistente nasce da forze longitudinali discordi sui due cordoni.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'equilibrio alla traslazione verticale e alla rotazione nel piano fornisce le reazioni $F_1$ (verticali, concordi) e $F_2$ (orizzontali, discordi a formare una coppia resistente al momento ribaltante $P b$):
    $ 2 F_1 = P arrow.r F_1 = frac(P, 2) , quad F_2 h = P b arrow.r F_2 = frac(P b, h) $
    Da queste nascono su ciascun cordone le due forze distribuite:
    $ n_perp = frac(F_1, L) = frac(P, 2 L) , quad f_parallel = frac(F_2, L) = frac(P b, h L) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-10.typ", max-h: 5.8cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Sul cordone superiore e inferiore agiscono quindi due effetti sovrapposti: le frecce verticali *concordi* $n_perp$ (che sostengono il taglio $P$) e le frecce longitudinali *discordi* $f_parallel$ (trazione sul cordone superiore, compressione su quello inferiore, che formano la coppia resistente al momento $P b$).

    Nel *calcolo a fatica*, qualsiasi faccia si scelga per il ribaltamento, la tensione equivalente risulta invariante: sul supporto $n_perp$ diventa taglio trasversale ($tau_perp$), mentre sulla piattabanda diventa trazione/compressione normale ($sigma_perp$); in entrambi i casi $f_parallel$ resta $tau_parallel$.
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-11.typ", max-h: 5.5cm)
  ],
)

#v(0.6em)

Nel *calcolo a fatica* le tensioni si ottengono dividendo per $a$ sulla sezione di gola ribaltata:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Ribaltamento sul supporto:*
    $ tau_perp = frac(n_perp, a) = frac(P, 2 L a) , quad tau_parallel = frac(f_parallel, a) = frac(P b, h L a) $
    #fig-safe(include "figs/p3-es3-fatica-supporto.typ", max-h: 5.6cm)
  ],
  [
    - *Ribaltamento sulla piattabanda:*
    $ sigma_perp = frac(n_perp, a) = frac(P, 2 L a) , quad tau_parallel = frac(f_parallel, a) = frac(P b, h L a) $
    #fig-safe(include "figs/p3-es3-fatica-piattabanda.typ", max-h: 5.6cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel *calcolo statico* sulla sezione di gola non ribaltata, la componente parallela $f_parallel$ non si proietta, mentre $n_perp$ si scompone a $45°$:
    $ sigma_perp^g = frac(n_perp cos 45°, a) = frac(F_1 sqrt(2), 2 L a) = frac(P sqrt(2), 4 L a) $
    $ tau_perp^g = frac(n_perp sin 45°, a) = frac(F_1 sqrt(2), 2 L a) = frac(P sqrt(2), 4 L a) $
    $ tau_parallel^g = frac(f_parallel, a) = frac(F_2, L a) = frac(P b, h L a) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-12.typ", max-h: 5.0cm)
  ],
)

=== Esempio 4: mensola con due cordoni verticali sotto carico trasversale

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La mensola e il carico $P$ sono gli stessi dell'Esempio 3, ma i due cordoni di altezza $h$ (posti a distanza $L$) sono ora *verticali*. L'equilibrio alla traslazione verticale e alla rotazione nel piano fornisce:
    $ 2 F_1 = P arrow.r F_1 = frac(P, 2) , quad F_2 L = P b arrow.r F_2 = frac(P b, L) $
    Poiché entrambi i cordoni sono verticali, *tutte* le reazioni risultano parallele al loro asse: $F_1$ punta verso l'alto su entrambi i cordoni, mentre la coppia $F_2$ (che si oppone alla rotazione oraria di $P$) punta verso l'alto sul *cordone di destra* e verso il basso su quello di sinistra. A destra $F_1$ e $F_2$ *si sommano*, mentre a sinistra sono discordi e si sottraggono.
  ],
  [
    #fig-safe(include "figs/p3-es4-equilibrio.typ", max-h: 6.0cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La verifica va pertanto condotta sul *cordone di destra* (il più sollecitato), dove agisce una sola forza distribuita parallela $f_parallel$ (senza alcuna componente $n_perp$):
    $ f_parallel = frac(F_2 + F_1, h) = frac(P, h) (frac(1, 2) + frac(b, L)) $
    Come nell'Esempio 1, non servono proiezioni a $45°$ in statica né scelte di ribaltamento a fatica: entrambi i calcoli forniscono la medesima tensione tangenziale:
    $ tau_parallel = tau_parallel^g = frac(f_parallel, a) = frac(F_2 + F_1, h a) = frac(P, h a) (frac(1, 2) + frac(b, L)) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-13.typ", max-h: 5.5cm)
  ],
)

=== Esempio 5: mensola con cordone singolo verticale

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Con un *solo cordone verticale* di altezza $h$, il centro di rotazione cade alla mezzeria del cordone stesso e il vincolo deve assorbire da solo sia la forza verticale $F = P$ sia il momento ribaltante $M = P b$ nel piano del supporto.

    Il taglio genera una forza distribuita uniforme lungo l'asse $f_parallel = F / h = P / h$; per contrastare il momento $M$, invece, l'unica possibilità è sviluppare una distribuzione lineare *a farfalla* $n_perp(y)$ ortogonale al cordone (trazione nella metà superiore, compressione in quella inferiore), analoga alla flessione di De Saint-Venant nella trave.
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-14.typ", max-h: 5.8cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1.15fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Assumendo una legge lineare rispetto alla coordinata $y in [-h/2, h/2]$ (nulla in mezzeria, massima ai bordi):
    $ n_perp (y) = n_(perp, "max") frac(y, h / 2) $
    e imponendo l'equilibrio alla rotazione attorno alla mezzeria del cordone si ricava il picco $n_(perp, "max")$ agli estremi (analogo alla formula di Navier con modulo di resistenza $h^2 / 6$):
    $ M &= integral_(-h/2)^(h/2) n_perp (y) y dif y = frac(n_(perp, "max"), h / 2) [frac(y^3, 3)]_(-h/2)^(h/2) \
        &= frac(2 n_(perp, "max"), h) (frac(h^3, 24) + frac(h^3, 24)) = n_(perp, "max") frac(h^2, 6) $
    $ n_(perp, "max") = frac(6 M, h^2) = frac(6 P b, h^2) $
    La verifica critica si esegue agli *estremi* ($y = plus.minus h/2$), dove $n_perp$ raggiunge il picco mentre $f_parallel$ è uniforme su tutto il cordone.
  ],
  [
    #fig-safe(include "figs/p3-es5-farfalla.typ", max-h: 6.0cm)
  ],
)

#v(0.6em)

Nel *calcolo a fatica* le tensioni massime agli estremi del cordone dipendono dalla faccia scelta per il ribaltamento (il ribaltamento sulla *piattabanda* risulta il più intuitivo perché associa il taglio a $tau_parallel$ e la flessione a farfalla a $sigma_(perp, "max")$):

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Ribaltamento sul supporto:*
    $ tau_(perp, "max") = frac(n_(perp, "max"), a) = frac(6 P b, h^2 a) , quad tau_parallel = frac(f_parallel, a) = frac(P, h a) $
    #fig-safe(include "figs/ecm-c11-p3-15.typ", max-h: 5.6cm)
  ],
  [
    - *Ribaltamento sulla piattabanda:*
    $ sigma_(perp, "max") = frac(n_(perp, "max"), a) = frac(6 P b, h^2 a) , quad tau_parallel = frac(f_parallel, a) = frac(P, h a) $
    #fig-safe(include "figs/p3-es5-fatica-piattabanda.typ", max-h: 5.6cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel *calcolo statico* sulla sezione di gola non ribaltata, la componente parallela $f_parallel$ non si proietta, mentre il picco $n_(perp, "max")$ si proietta a $45°$ sulla normale e sulla tangente alla gola:
    $ sigma_perp^g = frac(n_(perp, "max") cos 45°, a) = frac(6 M sqrt(2), 2 h^2 a) = frac(3 P b sqrt(2), h^2 a) $
    $ tau_perp^g = frac(n_(perp, "max") sin 45°, a) = frac(3 P b sqrt(2), h^2 a) , quad tau_parallel^g = frac(f_parallel, a) = frac(P, h a) $
  ],
  [
    #fig-safe(include "figs/p3-es5-statica.typ", max-h: 4.8cm)
  ],
)

=== Esempio 6: due componenti ortogonali al cordone

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Una piattabanda incastrata a sbalzo al supporto mediante due cordoni trasversali (orizzontali) di lunghezza $L$ posti a distanza verticale $h$ è sollecitata dal carico verticale $P$ a braccio $b$. A differenza degli esempi precedenti, sia la reazione al taglio verticale ($N_1$) sia la coppia resistente al momento flettente ($N_2$, uscente sul cordone superiore ed entrante su quello inferiore) risultano *entrambe perpendicolari* all'asse dei cordoni:
    $ 2 N_1 = P arrow.r N_1 = frac(P, 2) , quad N_2 h = P b arrow.r N_2 = frac(P b, h) $
    Distribuendole lungo la lunghezza $L$ nascono due forze distribuite ortogonali tra loro:
    $ n_(perp 1) = frac(N_1, L) = frac(P, 2 L) , quad n_(perp 2) = frac(N_2, L) = frac(P b, h L) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-16.typ", max-h: 5.8cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Verifica a fatica (ribaltamento della sezione di gola).*
      - _Ribaltamento sul supporto:_ $n_(perp 1)$ giace sul supporto (taglio) e $n_(perp 2)$ è normale al supporto (trazione/compressione):
        $ tau_perp = frac(n_(perp 1), a) = frac(P, 2 L a) , quad sigma_perp = frac(n_(perp 2), a) = frac(P b, h L a) $
      - _Ribaltamento sulla piattabanda:_ i due ruoli si scambiano:
        $ sigma_perp = frac(n_(perp 1), a) = frac(P, 2 L a) , quad tau_perp = frac(n_(perp 2), a) = frac(P b, h L a) $
  ],
  [
    #fig-safe(include "figs/p3-es6-fatica.typ", max-h: 5.6cm)
  ],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Verifica statica (sezione di gola non ribaltata).* Invece di proiettare separatamente $n_(perp 1)$ e $n_(perp 2)$ a $45°$ e poi sommarle con i rispettivi segni, conviene comporle prima vettorialmente in un'unica risultante $n_perp$ (inclinata dell'angolo $beta$) e proiettare quest'ultima sulla normale e sulla tangente alla sezione di gola tramite l'angolo $delta = 45° - beta$:
    $ n_perp = sqrt(n_(perp 1)^2 + n_(perp 2)^2) , quad tan beta = frac(n_(perp 1), n_(perp 2)) , quad delta = 45° - beta $
    $ sigma_perp^g = frac(n_(perp, n), a) = frac(n_perp cos delta, a) , quad tau_perp^g = frac(n_(perp, t), a) = frac(n_perp sin delta, a) $
  ],
  [
    #fig-safe(include "figs/ecm-c11-p3-17.typ", max-h: 5.2cm)
  ],
)

=== Esempio 7: momento flettente concentrato puro

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel caso di un *momento flettente concentrato puro* $M_e$ applicato nel piano del supporto (senza taglio netto), la piattabanda tende esclusivamente a ruotare. L'unica reazione possibile per i due cordoni longitudinali di lunghezza $L$, posti a distanza $h$, è sviluppare una coppia di forze parallele di verso opposto $F$:
    $ F h = M_e arrow.r F = frac(M_e, h) $
    Poiché le azioni sono puramente parallele ai cordoni (come nell'Esempio 1), il risultato *non dipende dal ribaltamento* della sezione di gola e coincide tra verifica a *fatica* e verifica *statica*:
    $ tau_parallel = tau_parallel^g = frac(F, L a) = frac(M_e, L a h) $
  ],
  [
    #fig-safe(include "figs/p3-es7-momento.typ", max-h: 5.6cm)
  ],
)
