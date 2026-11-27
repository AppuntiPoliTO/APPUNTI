#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag
#set page(margin: 1.5cm)
#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

== Materiali e altri innesti

=== Materiali per innesti a frizione

La scelta dei materiali bilancia un coefficiente d'attrito elevato e stabile — ben superiore ai valori ordinari ($< 0.1$) tipici ad esempio dei collegamenti filettati — con resistenza all'usura e allo shock termico durante lo strisciamento (bandendo l'amianto, cancerogeno per le polveri d'usura disperse nell'ambiente):
- *Guarnizioni organiche a secco.* Una superficie resistente all'usura è in acciaio o ghisa (talvolta ceramica), mentre l'altra è rivestita da una guarnizione in *ferodo* (materiale polimerico caricato con particelle metalliche per favorire la conduzione del calore). L'attrito cinetico a secco raggiunge $f_c = 0.3$–$0.4$, con pressione ammissibile $p <= 1" MPa"$ e velocità di strisciamento $v <= 40" m/s"$. L'usura accelera oltre la temperatura critica di $150 degree"C"$ e il degrado diventa irreversibile sopra $300 degree"C"$.
- *Materiali sinterizzati per carichi termici elevati.* Per dissipazioni gravose si eliminano le guarnizioni usando dischi sinterizzati ferro-bronzo contro acciaio: tollerano temperature limite di $400$–$600 degree"C"$ e pressioni fino a $p <= 2" MPa"$, con attrito inferiore ($f_c = 0.15$–$0.3$) e velocità massima ridotta ($v <= 25" m/s"$).

La selezione comporta quindi un *compromesso progettuale*: le guarnizioni organiche offrono attrito e velocità limite superiori, mentre i sinterizzati sopportano pressioni doppie e temperature ben più elevate. I coefficienti d'attrito variano comunque in funzione di pressione (sollecitazione) $p$, velocità di strisciamento $v$ e temperatura $T$; in particolare, superata la temperatura critica, il decadimento delle prestazioni è brusco per la guarnizione organica (curva 1) e più graduale per il materiale sinterizzato (curva 2), dove la linea continua rappresenta l'attrito cinetico $f$ e la linea tratteggiata rappresenta l'attrito statico $f_0$:

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon, center + horizon),
  [#fig-safe(include "../../figs/innesti/ecm-c13-p2-01.typ")],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p2-02.typ")],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p2-03.typ")],
)

#v(0.4em)

#nota[
  *Stick-slip.* Il coefficiente d'attrito cinetico $f$ è inferiore a quello statico $f_0$ del $10$–$20\%$. In prossimità del sincronismo (o subito dopo averlo raggiunto) questo scarto può innescare oscillazioni autoeccitate di adesione e scorrimento (*stick-slip*) con vibrazioni e rumorosità marcata.
]

=== Innesti senza contatto: giunti idraulici (fluidodinamici)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    I *giunti idraulici* trasferiscono potenza senza contatto solido — eliminando l'usura meccanica tra le superfici — tramite un fluido tra due giranti affacciate (in modo analogo a due ventilatori posti uno di fronte all'altro): la girante motrice (*pompa*) accelera il fluido verso la palettatura della girante condotta (*turbina*). La coppia dipende non linearmente dalla velocità relativa; il sincronismo perfetto non è mai raggiungibile e lo *slittamento residuo* dissipa potenza nel fluido anche a regime (sebbene in misura spesso ridotta rispetto all'esercizio). Inoltre, l'innesto non è mai del tutto disaccoppiabile: anche interponendo un diaframma per bloccare il flusso permane una minima coppia di trascinamento.
  ],[
  #image("/images/fig__parts_innesti_p2_0562.png", width: 110%)
])
#pagebreak()

=== Innesti di sicurezza (limitatori di coppia)

Gli *innesti di sicurezza* interrompono autonomamente il collegamento quando la coppia trasmessa supera un valore limite preimpostato, proteggendo la trasmissione da sovraccarichi accidentali; i primi due schemi illustrano veri innesti autoadattativi a ripristino automatico (senza rottura di parti), mentre il terzo mostra a confronto un giunto rigido a frattura prestabilita:

#align(center)[
  #image("/images/fig__parts_innesti_p2_2136.png", width: 75%)
]



- *Limitatore a frizione (a sinistra).* Una molla a tazza precaricata serra lo spingidisco sui dischi d'attrito fino alla coppia limite tarata; al superamento della soglia la reazione sull'interfaccia vince l'equilibrio della molla, respingendo lo spingidisco e lasciando slittare i dischi con ripristino automatico al rientro del picco.
- *Limitatore a sfere o rulli (al centro).* Una molla elicoidale — tarata tramite *ghiera di regolazione* — serra i corpi volventi nelle proprie piste. In sovraccarico la reazione sulle sfere supera il precarico assiale della molla, facendo arretrare lo spingidisco e disaccoppiando gli alberi con riarmo automatico quando la coppia rientra (senza rotture di parti, salvo sovraccarichi estremi che deformino o rompano gli elementi elastici).
- *Giunto a frattura prestabilita (a destra).* Una *spina calibrata* con sezione opportunamente indebolita, montata entro *boccole indurite* per localizzare il taglio netto preservando le flange, funge da *elemento sacrificale* (fusibile meccanico) tranciandosi in caso di sovraccarico. Non è ripristinabile in marcia (impone l'arresto macchina per la sostituzione), ma risulta costruttivamente più semplice e più affidabile dei limitatori elastici.

=== Innesti centrifughi e ruote libere

==== Innesto centrifugo a ceppi

#grid(
  columns: (1.25fr, 0.75fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Negli *innesti centrifughi* il comando proviene dalla velocità di rotazione dell'albero motore. A basso regime o al minimo le molle di richiamo trattengono i ceppi distaccati dal tamburo, permettendo al motore di avviarsi a vuoto e ruotare al minimo senza trascinare la trasmissione; superata la velocità critica di taratura, la *forza centrifuga* vince il precarico elastico e preme le guarnizioni contro la superficie interna del tamburo, trasmettendo gradualmente il moto all'utilizzatore (soluzione tipica di motorscooter e ciclomotori, talvolta abbinata a una seconda serie di massette centrifughe sulla campana per l'avviamento a spinta o a pedali).
  ],
  [  #align(center)[
  #image("/images/fig__parts_innesti_p2_8489.png", width: 95%)
]])

#pagebreak()
==== Innesto di sopravanzo ad arpionismo (ruota libera)

#grid(
  columns: (1fr, 0.85fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
  #align(center)[
  #image("/images/fig__parts_innesti_p2_7161.png", width: 75%)
]],
  move(dy: 7pt)[#image("../../images/innesti/ecm-c13-p2-07.jpg", width: 75%)],
)

Negli *innesti di sopravanzo* (*ruote libere*) il comando dipende dalla differenza (e dal segno) delle velocità di rotazione tra organo motore e condotto: il collegamento si disinnesta automaticamente sia quando l'utilizzatore tende a superare in velocità l'organo motore nello stesso senso (*sopravanzo*, $omega_u > omega_m$), sia quando tende a invertire il verso di rotazione relativo, proteggendo la macchina motrice. A differenza dell'innesto centrifugo — in cui le molle mantengono il dispositivo *aperto* a riposo — nelle ruote libere le molle mantengono gli elementi *in presa*. Nel tipo ad *arpionismo*, il mozzo porta *nottolini* incernierati spinti verso l'esterno da molle: quando la velocità relativa ha il verso indicato dalla *linea rossa* in figura, i nottolini si impegnano stabilmente nei denti interni del tamburo trasmettendo coppia; nel verso opposto rientrano nelle sedi saltellando e strisciando a vuoto sui denti (soluzione impiegata, come le ruote libere ad attrito, nei rotori degli elicotteri per consentire l'autorotazione). L'angolo di inclinazione $alpha$ dei denti interni deve essere scelto in modo che le forze agenti sui nottolini ne favoriscano l'entrata in presa completa verso il fondo del vano, evitando espulsioni sotto carico.



==== Innesto di sopravanzo ad attrito (a rulli)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il mozzo presenta rampe eccentriche (o profilo sagomato) su cui poggiano *rulli cilindrici* mantenuti in leggero contatto iniziale contro l'anello esterno da piccole molle elicoidali. Nel verso di lavoro (linea continua, _innestata_) i rulli si incuneano tra mozzo e tamburo trasmettendo coppia per attrito in modo continuo, silenzioso e *senza gioco d'imbocco* (evitando il passo discreto e il saltellamento tipici dell'arpionismo); nel verso opposto (linea tratteggiata, _libera_) comprimono le molle, liberando il tamburo.
  ],
  [#include "../../figs/innesti/ecm-c13-p2-08.typ"],
)



=== Innesti ad azionamento elettromagnetico

==== Innesti elettromeccanici

#grid(
  columns: (1.10fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Esistono innesti azionati o accoppiati tramite fenomeni *elettromagnetici*: senza contatto meccanico — a *isteresi magnetica* o a *correnti parassite* (elemento condotto passivo accoppiato per induzione a un elemento motore attivo) — oppure a *flusso magnetico attraverso i dischi* (figura a lato), in cui gli *avvolgimenti* alimentati generano un flusso magnetico che attrae e serra il pacco dischi. Per una data corrente di eccitazione dell'elettromagnete, la coppia di innesto risulta sostanzialmente costante; i fenomeni di isteresi magnetica e correnti indotte comportano tuttavia dissipazione e *isteresi termica* da tenere sotto controllo.
  ],
  [#align(center)[
  #image("/images/fig__parts_innesti_p2_7692.png", width: 105%)
]]
)
==== Innesti a particelle magnetiche e fluidi magnetoreologici
Analogamente al giunto idraulico, rotore motore e rotore condotto non hanno contatto solido diretto e sono separati da un'intercapedine contenente *polveri ferromagnetiche* (o *fluidi magnetoreologici* / *elettroreologici*, che variano la propria viscosità sotto campo magnetico o elettrico e possono lavorare anche come freni). A campo nullo la polvere non è strutturata ma, a differenza di altri innesti elettromagnetici, mantiene un minimo contatto con lieve *trascinamento residuo* (*residual drag*). Eccitando la bobina, le particelle si allineano lungo le linee di flusso in catene capaci di trasmettere sforzi di taglio $tau$: in un dispositivo molto compatto la risposta è quasi istantanea e la coppia è pressoché lineare con tensione/corrente di eccitazione (ideale per controllo continuo in catena chiusa e sistemi meccatronici *safety critical*). Dato lo slittamento parziale o continuo, il dimensionamento è governato dallo smaltimento termico (spesso migliorato con carcasse in alluminio o raffreddamento forzato ad aria)

#align(center)[
  #image("/images/fig__parts_innesti_p2_4747.png", width: 75%)
]

