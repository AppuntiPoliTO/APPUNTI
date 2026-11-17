#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)
#set heading(numbering: "1.")

= Viti e Bulloni (Collegamenti filettati) – Serraggio
=== Introduzione ai collegamenti filettati
Tra gli elementi di base della costruzione delle macchine rivestono un ruolo fondamentale i collegamenti filettati, rappresentati principalmente da viti, bulloni e prigionieri. La loro utilità progettuale risiede nel fatto che realizzano un collegamento smontabile, ossia una giunzione che può essere aperta e chiusa ripetutamente. Ciò garantisce un facile accesso alle parti interne della macchina, risultando indispensabile per operazioni di diagnosi, verifica delle condizioni di usura o di affaticamento dei componenti e, più in generale, per gli interventi di manutenzione.

Rispetto ad altri metodi di giunzione come i collegamenti saldati, i collegamenti filettati permettono di unire le parti in tempi notevolmente rapidi e senza dover ricorrere a processi tecnologici complessi; inoltre, svitando la vite o il bullone è possibile disgiungere i componenti senza dover distruggere alcun elemento fisso (come accadrebbe dovendo rompere un cordone di saldatura).


== Tipologie di viti e normative delle filettature
Nella letteratura tecnica si distinguono due grandi categorie di viti:
- #strong[Viti di manovra:] sfruttano il principio dell'elica per trasmettere il moto, trasformando la rotazione della vite in uno spostamento traslazionale lungo una guida. Pur condividendo la geometria locale del filetto con le viti di collegamento, il loro dimensionamento è più affine a quello dei cuscinetti, poiché il funzionamento e il danneggiamento sono governati principalmente dallo scorrimento o dal rotolamento (come nelle viti a ricircolo di sfere, in cui l'elica funge da pista per le sfere), coinvolgendo trattamenti superficiali e materiali specifici per queste condizioni d'esercizio.
- #strong[Viti di collegamento (smontabile):] impiegate per mantenere serrate due o più parti meccaniche insieme.



Le principali tipologie di filettature normalizzate per i collegamenti (con riferimento alle normative storiche e ai relativi aggiornamenti successivi) sono:
- #strong[Filettature metriche ISO:]
  - #emph[Profilo triangolare:] UNI 4536 (1964) e segg.
  - #emph[Profilo trapezio:] UNI ISO 2901÷2904 (1978) e segg.
- #strong[Filettature Whitworth:] UNI 2709 (1945) e segg., definite in pollici con angolo di profilo pari a $55degree$.
- #strong[Filettature "gas":] utilizzate quando è richiesta un'impermeabilizzazione del condotto per evitare fughe di gas o liquidi attraverso la giunzione; si distinguono in filettature a tenuta stagna sul filetto (UNI ISO 7-1, 1984 e segg.) e a tenuta non stagna (UNI ISO 228, 1983 e segg.).
- #strong[Filettature a "dente di sega":] UNI 127-128 (1928) e segg.

Nel funzionamento generale di un bullone di collegamento, l'applicazione del momento di serraggio genera una forza di interazione tra le parti serrate, inducendo uno stato di trazione nel fusto della vite e di compressione nei pezzi. In esercizio, su questa configurazione precaricata agiscono le forze esterne di lavoro sulla macchina, e il flusso delle tensioni si trasferisce dal fusto della vite ai filetti del dado o della madrevite. Tale distribuzione del carico sui filetti non è uniforme: il flusso di forza si concentra maggiormente nei primi filetti in presa (tipicamente tra il secondo, il terzo e il quarto filetto della serie), rendendo questa zona la più critica ai fini della resistenza.

== Geometria della filettatura metrica ISO a profilo triangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    La caratterizzazione geometrica di una filettatura metrica ISO a profilo triangolare si basa sul diametro nominale (esterno) della vite $d$, misurabile direttamente con il calibro in corrispondenza della cresta esterna della filettatura. Nella designazione normalizzata si indica la lettera $"M"$ seguita dal valore del diametro nominale in millimetri: ad esempio, $"M"10$ indica un diametro $d = 10 "mm"$ con passo grosso tabellato $p = 1,5 "mm"$, mentre $"M"10 times 1,25$ specifica un diametro $d = 10 "mm"$ abbinato a un passo fine indicato esplicitamente pari a $p = 1,25 "mm"$.
  ],
  [#include "figs/collegamenti-filettati-fig13.typ"]
)


L'angolo di apertura del profilo triangolare è $2 alpha = 60degree$. In funzione del passo $P$ (indicato anche come $p$) e del diametro nominale $d$, si definiscono le grandezze geometriche del profilo di riferimento, tra cui l'altezza del triangolo generatore $H$, il diametro medio $d_2 = D_2$ (posto a metà tra la superficie di testa e la superficie interna utilizzabile del filetto) e i diametri di fondo gola/nocciolo $d_1 = D_1$ e $d_3$:

$ H = 0,866 03 P quad quad H_1 = frac(5, 8) H = 0,541 27 P quad quad h_3 = frac(17, 24) H = 0,613 43 P $

$ d_1 = D_1 = d - 2 H_1 = d - 1,082 53 P quad quad d_2 = D_2 = d - frac(3, 4) H = d - 0,649 52 P $

$ d_3 = d - 2 h_3 = d - 1,226 87 P quad quad r = frac(H, 6) = 0,144 34 P $

Ai fini del calcolo strutturale della sezione resistente della vite, si fa riferimento o al diametro di nocciolo (corrispondente alla gola più profonda con raccordo) oppure a un diametro resistente che, secondo le indicazioni delle normative tedesche, tiene conto anche di una porzione del filetto, poiché il filetto stesso è lateralmente vuoto e non oppone la medesima resistenza di un fusto pieno.

=== Nomenclatura dei collegamenti filettati
La distinzione terminologica tra le diverse configurazioni costruttive riveste un'importanza fondamentale sia in ambito professionale sia in sede d'esame:
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Bullone (vite + dado):] è costituito da una vite che attraversa completamente i pezzi da collegare all'interno di un foro passante libero (il fusto della vite non deve toccare le pareti del foro) e si impegna in un dado, all'interno del quale è ricavata la madrevite. Il contatto si esercita esclusivamente tra il sottotesta della vite e la superficie esterna del primo blocco e tra la superficie interna del dado e la superficie esterna del blocco opposto.
  ],
  [#include "figs/collegamenti-filettati-fig14.typ"]
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Vite (mordente):] si impiega senza dado; la vite attraversa liberamente il primo pezzo (premendone la superficie esterna tramite il proprio sottotesta) e si avvita direttamente nella madrevite ricavata all'interno del secondo blocco, generalmente fisso, che svolge simultaneamente sia la funzione di elemento collegato sia quella del dado.
  ],
  [#include "figs/collegamenti-filettati-fig15.typ"]
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Prigioniero:] è costituito da un gambo privo di testa e filettato alle due estremità. Un'estremità si avvita nella madrevite ricavata in uno dei pezzi (talvolta fino alla fine della filettatura, richiedendo attenzione a possibili problemi dovuti all'aria intrappolata sul fondo del foro cieco), mentre l'altra estremità fuoriesce per accogliere i pezzi da impilare e viene chiusa mediante un dado. Il prigioniero svolge anche una comoda funzione iniziale di perno di centramento per allineare le parti da accostare.
  ],
  [#include "figs/collegamenti-filettati-fig16.typ"]
)




=== Analisi del collegamento e diagramma di interferenza
#grid(
  columns: 2,
  gutter: 1em,
  [Il collegamento filettato applica una forza assiale di chiusura che comprime i pezzi l'uno contro l'altro. Questa compressione deve generare all'interfaccia tra le parti una forza d'attrito sufficiente a contrastare eventuali azioni trasversali esterne, impedendo lo scorrimento relativo dei blocchi: salvo configurazioni particolari, le viti #strong[non devono lavorare a taglio], bensì esclusivamente a trazione.

A differenza del collegamento albero-mozzo, in cui l'interferenza è di natura geometrica (ottenuta tramite tolleranze dimensionali), nel collegamento filettato l'interferenza $i$ tra bullone e pezzo viene realizzata tramite il precarico prodotto dall'avvitamento. Applicando una coppia di serraggio (ad esempio mantenendo fermo il dado e ruotando la testa della vite), l'avanzamento relativo della vite rispetto alla madrevite genera un'interferenza assiale correlata al numero di giri compiuti dopo il primo contatto $n_("giri")$ e al passo $p$ della filettatura:],
  [#include "figs/collegamenti-filettati-fig17.typ"],
)

$ i = p dot.op n_("giri") $




#align(center)[
  #include "figs/collegamenti-filettati-fig18.typ"
]
Sotto l'azione del serraggio, la vite risulta soggetta a trazione da parte del pezzo (allungandosi di uno spostamento positivo $u_v$ sotto la forza $F_v$), mentre i pezzi collegati risultano compressi dal bullone (accorciandosi di uno spostamento negativo $u_p$ sotto la forza $F_p$). In campo elastico lineare, ciascun componente è caratterizzato dalla propria rigidezza $K_i$ e dal suo reciproco, la deformabilità $delta_i$:

$ K_v = frac(F_v, u_v), quad quad delta_v = frac(1, K_v) = frac(u_v, F_v) $

$ K_p = frac(F_p, u_p), quad quad delta_p = frac(1, K_p) = frac(u_p, F_p) $

Sul piano forza-spostamento, la caratteristica della vite giace nel primo quadrante (forza e spostamento positivi), mentre quella dei pezzi giace originariamente nel terzo quadrante (forza di compressione e spostamento negativi). \ Per rendere pratica la costruzione grafica del diagramma di interferenza (o di forzamento), si riportano in ordinata i valori assoluti delle forze $|F_p|$ e $|F_v|$ in modo che entrambe le caratteristiche lavorino nel semipiano superiore; le pendenze rispetto all'asse delle ordinate corrispondono alle deformabilità $delta_v$ e $delta_p$.Se entrambe le rette partissero dall'origine, non vi sarebbe interferenza (pezzi semplicemente accostati senza pressione). Per rappresentare il serraggio di interferenza $i$, si lascia la caratteristica della vite nell'origine e si trasla verso destra la caratteristica del pezzo di una quantità pari a $i$ lungo l'asse delle ascisse $u$.



#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'intersezione tra le due rette identifica il punto di funzionamento del collegamento al montaggio:
- L'ordinata del punto di intersezione fornisce la forza assiale di precarico in equilibrio nella vite e nei pezzi (direttamente correlata al momento di serraggio applicato).
- La somma dei due spostamenti elastici rispetto alla posizione di equilibrio uguaglia l'interferenza imposta ($u_v + u_p = i$).], [#include "figs/collegamenti-filettati-fig19.typ"])

=== Forza assiale, momento di serraggio e momento di svitamento


#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[All'inizio dell'accostamento, i filetti della vite e della madrevite presentano un leggero gioco iniziale; non appena la vite viene messa in tiro dalla coppia torcente applicata con la chiave intorno al proprio asse principale, i fianchi dei filetti vanno a contatto sviluppando una pressione locale che genera trazione nella vite e compressione nei pezzi e nella madrevite.

Il momento torcente resistente che occorre vincere durante il serraggio è dovuto a due contributi:
1. L'attrito che si sviluppa tra i filetti della vite e quelli della madrevite in scorrimento relativo.
2. L'attrito che si sviluppa tra la superficie del sottotesta della vite (o del dado, a seconda di quale elemento viene messo in rotazione) e la superficie del pezzo (o di un'eventuale rondella antisvitamento interposta).], [#include "figs/collegamenti-filettati-fig20.typ"])
#pagebreak()
=== Modello del piano inclinato (sola inclinazione dell'elica)
Per ricavare la relazione analitica tra il momento di serraggio $M_T$ e la forza assiale $F_V$ agente sul fusto della vite, si schematizza in prima battuta il contatto tra i filetti come il moto relativo di un blocco su un piano inclinato di angolo $alpha_m$ (angolo medio dell'elica del filetto), trascurando momentaneamente l'inclinazione laterale del profilo triangolare.



#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Avvitamento e serraggio:]
Durante il serraggio, il filetto della vite (il blocco) tende a risalire lungo il piano inclinato della madrevite. Sulla superficie di contatto si sviluppano:
- Una componente di reazione normale alla superficie di contatto, $F_N$.
- Una forza di attrito $F_("attrito") = f dot.op F_N$, parallela al piano inclinato e opposta al verso del moto relativo.

La somma vettoriale di $F_N$ e $F_("attrito")$ fornisce la forza resistente all'avvitamento $F_(R E S)$, inclinata rispetto alla normale $F_N$ dell'angolo di attrito $phi.alt$, definito dalla relazione:

$ tan phi.alt = f $

dove $f$ è il coefficiente di attrito tra i materiali della vite e della madrevite.

Per riportare l'equilibrio nel sistema di riferimento globale del bullone (direzione assiale $V$ e direzione tangenziale/circonferenziale $U$), la forza applicata dall'esterno che equilibra $F_(R E S)$ (uguale in modulo e opposta in verso) viene scomposta in una componente assiale $F_V$ e in una componente circonferenziale $F_U$. Poiché l'angolo complessivo formato tra $F_(R E S)$ e la direzione verticale $V$ è pari a $(alpha_m + phi.alt)$, dalla trigonometria si ottiene:

$ F_U = F_V tan(alpha_m + phi.alt) $

], [#include "figs/collegamenti-filettati-fig21.typ"])
Poiché la forza tangenziale $F_U$ agisce mediamente a una distanza dall'asse della vite pari al raggio medio $frac(d_m, 2)$ (dove $d_m$ è il diametro medio della filettatura, corrispondente a $d_2$), il momento torcente di serraggio necessario a vincere la resistenza sui filetti vale:

$ M_T = F_U frac(d_m, 2) = frac(F_V, 2) [ d_m dot.op tan(alpha_m + phi.alt) ] $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Svitamento e condizione di svitamento spontaneo:]
In fase di svitamento, il moto relativo lungo il piano inclinato si inverte (il filetto scende) e di conseguenza la forza di attrito $F_("attrito")$ si ribalta di $180degree$ per opporsi alla discesa. Nel caso generale in cui l'angolo d'attrito è maggiore dell'angolo d'inclinazione dell'elica ($phi.alt > alpha_m$), la risultante $F_(R E S)$ cade dalla parte opposta rispetto alla verticale, formando con $F_V$ l'angolo $(phi.alt - alpha_m)$ e invertendo il verso di $F_U$. Il momento necessario allo svitamento risulta opposto a quello di serraggio:

$ M_("svit") = -F_U frac(d_m, 2) = -frac(F_V, 2) [d_m dot.op tan(phi.alt - alpha_m)] =\  frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt)] $
 Pertanto, se $phi.alt > alpha_m$, si ha $M_("svit") < 0$: il collegamento non si svita da solo ma richiede l'applicazione di un momento di segno opposto per effettuare lo svitamento comandato.],[#include "figs/collegamenti-filettati-fig22.typ"])



#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel caso particolare in cui l'angolo di attrito sia invece inferiore all'angolo dell'elica ($phi.alt < alpha_m$), la risultante $F_(R E S)$ rimane dallo stesso lato della verticale rispetto all'avvitamento e la componente $F_U$ mantiene lo stesso verso del serraggio:

$ M = F_U frac(d_m, 2) = frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt)] > 0 quad "se " phi.alt < alpha_m $ In tale condizione, il collegamento tende allo #strong[svitamento spontaneo] (autosvitamento, specialmente in presenza di piccoli disturbi o vibrazioni), e un eventuale momento positivo applicato nel verso di serraggio agirebbe in realtà per frenare lo svitamento spontaneo.],[#include "figs/collegamenti-filettati-fig23.typ"])

=== Attrito al sottotesta
Per tenere conto anche dell'attrito sviluppato sulla superficie di contatto anulare del sottotesta (o del dado) in rotazione rispetto al pezzo o alla rondella, si aggiunge il contributo di un momento resistente di attrito agente su un diametro efficace del sottotesta $d_t$, caratterizzato da un coefficiente di attrito specifico $f_s = tan phi.alt_s$ (generalmente distinto da $f = tan phi.alt$, poiché i materiali di vite e dado/madrevite possono essere uguali tra loro mentre i materiali tra sottotesta e pezzo o rondella sono spesso diversi):

$ M_T = frac(F_V, 2) [d_m dot.op tan(alpha_m + phi.alt) + d_t dot.op tan phi.alt_s] $

$ M_("svit") = frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt) - d_t dot.op tan phi.alt_s] $

=== Effetto della forma triangolare o trapezoidale del filetto

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nei filetti a profilo triangolare e trapezoidale esiste un secondo piano inclinato dovuto all'inclinazione $alpha$ del fianco del filetto rispetto alla direzione radiale (per le filettature metriche, $2 alpha = 60degree arrow.r.double alpha = 30degree$). La forza normale effettiva agente perpendicolarmente al fianco del filetto non è $F_N$, bensì la sua proiezione $frac(F_N, cos alpha)$. Di conseguenza, la forza d'attrito reale vale:

$ F_("attrito") = tan phi.alt dot.op frac(F_N, cos alpha) $

da cui si ricava:

$ tan phi.alt = frac(F_("attrito") dot.op cos alpha, F_N) quad arrow.l.r.double quad frac(tan phi.alt, cos alpha) = frac(F_("attrito"), F_N) $

], [#include "figs/collegamenti-filettati-fig24.typ"])
Per mantenere la medesima struttura formale dell'equazione di serraggio, si definisce un #strong[coefficiente d'attrito apparente] (o equivalente) $tan phi.alt'$ (talvolta indicato come $tan phi.alt^*$):

$ tan phi.alt' = frac(tan phi.alt, cos alpha) $

=== Formulazione generale e approssimazione lineare
Sostituendo $phi.alt$ con $phi.alt'$, le equazioni complete per il momento di serraggio e di svitamento diventano:

$ M_T = frac(F_v, 2) [d_m dot.op tan(alpha_m + phi.alt') + d_t dot.op tan phi.alt_s] $

$ M_("svit") = frac(F_v, 2) [d_m dot.op tan(alpha_m - phi.alt') - d_t dot.op tan phi.alt_s] $

dove:
- $F_v$ = forza assiale agente sulla vite;
- $M_T$ = momento di serraggio;
- $M_("svit")$ = momento necessario per lo svitamento;
- $d_m$ = diametro medio del filetto;
- $d_t$ = diametro efficace su cui agisce la forza tra testa e sottotesta (o dado e pezzo/rondella);
- $tan phi.alt_s = f_s$ = coefficiente di attrito (sottotesta–pezzi);
- $tan phi.alt = f$ = coefficiente di attrito (vite–madrevite);
- $tan phi.alt' = frac(tan phi.alt, cos alpha)$ = coefficiente di attrito apparente ($alpha = 30degree$ per filettature metriche);
- $alpha_m$ = angolo dell'elica, legato al passo $p$ e al diametro medio $d_m$ dalla relazione $tan alpha_m = frac(p, pi dot.op d_m)$.

Infine, assumendo in prima approssimazione per piccoli angoli che $tan(alpha_m + phi.alt') tilde.eq tan alpha_m + tan phi.alt'$ e sostituendo l'espressione di $tan alpha_m$ e $tan phi.alt'$, il momento di serraggio viene espresso nella forma a tre addendi comunemente adottata nella letteratura tecnica e nelle normative (che separa il contributo geometrico del passo, quello dell'attrito sui filetti inclinati e quello dell'attrito al sottotesta):

$ M_T = frac(F_v, 2) (d_m dot.op tan alpha_m + d_m dot.op tan phi.alt' + d_t dot.op tan phi.alt_s) = frac(F_v, 2) (frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt_s) $

// NOTA: \div convertito con div (modulo sym)
#pagebreak()
== Viti e bulloni (collegamenti filettati) – Resistenza

=== Sollecitazioni e resistenza del fusto della vite

Nell'analisi delle sollecitazioni agenti sul fusto della vite durante il serraggio (nel tratto compreso fra il sottotesta e la madrevite), occorre considerare la sola quota parte del momento di serraggio che fotografa l'interazione tra i filetti della vite e quelli della madrevite. Scompare pertanto il contributo opposto dall'attrito tra il sottotesta e la superficie del pezzo serrato, in quanto tale dissipazione non si scarica sul fusto della vite. La vite sopporta quindi simultaneamente un carico assiale $F_v$ e un momento torcente $M_T^"*"$ dovuto all'attrito sui filetti, espresso dai primi due addendi della formulazione del momento di serraggio:

$ M_T^"*" = frac(F_v, 2) (d_m dot.op tan alpha_m + d_m dot.op tan phi.alt') = frac(F_v, 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) $

Il primo termine rappresenta l'azione legata all'inclinazione dell'elica (angolo $alpha_m$, passo $p$), mentre il secondo tiene conto dell'attrito mediante l'angolo $phi.alt'$, che incorpora il fatto che le superfici di contatto sono doppiamente inclinate sia nella direzione dell'elica sia per l'inclinazione $alpha$ del fianco del filetto rispetto alla sezione trasversale del fusto.

Dal punto di vista del calcolo delle sollecitazioni, occorre stabilire quale sia la sezione resistente della vite. Nella letteratura tecnica più conservativa si assume che il filetto non concorra minimamente alla resistenza e non offra alcun effetto di rinforzo: si considera quindi utile la sola sezione minima interna alla filettatura, ossia il cilindro di nocciolo di diametro $d_n$ (ricavabile dalle tabelle). L'area di nocciolo $A_n$ e il modulo di resistenza a torsione $W_t$ valgono dunque:

$ A_n = frac(pi d_n^2, 4), quad quad W_t = frac(pi d_n^3, 16) $

Altre normative (ad esempio la normativa tedesca) ritengono invece che una piccola porzione alla radice del filetto partecipi alla resistenza della sezione trasversale, definendo un diametro leggermente superiore al diametro di nocciolo, indicato come diametro della sezione resistente ($d_(r e s)$). In ogni applicazione progettuale ci si attiene alla sezione resistente prescritta dalla normativa tecnica adottata.

Durante la fase di serraggio, analogamente a quanto avviene in un albero di trasmissione soggetto a una coppia motrice contrastata da una coppia resistente, la coppia di serraggio viene contrastata dalle resistenze d'attrito e torce elasticamente il fusto della vite. Sul fusto agiscono dunque simultaneamente una tensione normale assiale $sigma_a$ (dove il pedice $a$ indica esclusivamente la direzione assiale della vite, anche in condizioni statiche, e non una tensione alternata) e una tensione tangenziale torsionale $tau$ (calcolabile con la teoria della trave per sezione circolare utilizzando $M_t^"*"$, equivalente a $M_T^"*"$):

$ sigma_a = frac(4 dot.op F_v, pi dot.op d_n^2), quad quad tau = frac(16 dot.op M_t^"*", pi dot.op d_n^3) $

Applicando il criterio di resistenza di Von Mises, la tensione ideale equivalente $sigma_(i d)$ si scrive come:

$ sigma_(i d) = sqrt(sigma_a^2 + 3 dot.op tau^2) = sigma_a dot.op sqrt(1 + 3 dot.op (frac(tau, sigma_a))^2) $

Esplicitando il rapporto $tau / sigma_a$ tramite l'espressione di $M_T^"*"$, si ottiene:

$ frac(tau, sigma_a) = frac(16 dot.op M_T^"*", pi dot.op d_n^3) dot.op frac(pi dot.op d_n^2, 4 dot.op F_v) = frac(4, d_n dot.op F_v) dot.op frac(F_v, 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) = frac(2, d_n) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) $

Definendo il fattore adimensionale $k$, che dipende esclusivamente dai parametri geometrici della filettatura e dal coefficiente d'attrito:

$ k = [ frac(2, d_n) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) ] $

la tensione ideale equivalente assume la forma compatta:

$ sigma_(i d) = sigma_a dot.op sqrt(1 + 3 dot.op k^2) arrow.r.double sigma_a = frac(sigma_(i d), sqrt(1 + 3 dot.op k^2)) tilde.eq frac(sigma_(i d), 1.3) $

Per i valori geometrici e d'attrito tipici della bulloneria, infatti, il termine $sqrt(1 + 3 dot.op k^2)$ si attesta intorno a $1.3$; nella manualistica industriale si utilizza spesso questo fattore correttivo del $30\%$ per correlare rapidamente la tensione assiale sul fusto alla tensione equivalente comprensiva della torsione.

=== Forza assiale limite, momento di serraggio e coefficienti d'attrito

Il collegamento filettato deve lavorare in campo lineare elastico, poiché un eventuale snervamento (plasticizzazione) impedirebbe di garantire nel tempo l'interferenza, la pressione di contatto e l'attrito attesi tra le parti. La tensione limite di riferimento è pertanto il limite elastico allo $0.2\%$, $R_(p 0.2)$, ridotto tramite un fattore di scala $X$:

$ sigma_(i d, l i m) = X dot.op R_(p 0.2) arrow.r.double sigma_(a, l i m) = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) $

Il fattore $X$ serve a sfruttare il più possibile il materiale in fase di precarico mantenendo al contempo un margine per assorbire l'incremento di forza che insorgerà durante l'esercizio. Tipicamente si assume $X = 0.9$ (pari al $90\%$ di $R_(p 0.2)$), sebbene in specifiche applicazioni o normative possa scendere a $0.80 div 0.85$.

Moltiplicando $sigma_(a, l i m)$ per l'area resistente $A_n$ si ottiene la forza assiale limite $F_(v, l i m)$ applicabile alla vite al montaggio, che rappresenta anche il punto di equilibrio nominale nel diagramma di interferenza, e il corrispondente momento di serraggio totale $M_T$ da prescrivere (comprensivo dell'attrito sotto testa):

$ F_(v, l i m) = sigma_(a, l i m) dot.op A_n = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) dot.op frac(pi dot.op d_n^2, 4) $

$ M_T = frac(F_(v, l i m), 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt_s ) $

Per i calcoli sulla bulloneria normale si assume un diametro medio di strisciamento sotto testa pari a $d_t tilde.eq 1.3 dot.op d$ (dove $d$ è il diametro nominale della vite), mentre in altri casi $d_t$ va valutato dal disegno costruttivo della vite.

Per quanto riguarda il coefficiente d'attrito $f = tan phi.alt$ nell'accoppiamento acciaio-acciaio, si riscontrano i seguenti intervalli sperimentali in funzione del trattamento superficiale e della lubrificazione:
- Viti brunite o fosfatate lubrificate con olio: $0.12 div 0.18$.
- Viti brunite o fosfatate lubrificate con $"MoS"_2$: $0.10 div 0.12$.
- Viti con zincatura galvanica: $0.12 div 0.18$.
- Viti con cadmiatura galvanica: $0.08 div 0.12$.

Nella valutazione della resistenza del fusto conviene assumere il coefficiente d'attrito minimo dell'intervallo sperimentale: a parità di momento di serraggio applicato, infatti, un attrito inferiore massimizza la forza assiale $F_v$ trasmessa al fusto e quindi la sollecitazione sul materiale. Al contrario, quando si valutano le condizioni funzionali o il rischio di svitamento autonomo in esercizio, occorre riferirsi al valore realistico dell'accoppiamento.

=== Materiali per bulloneria (classi di resistenza)

Nella normativa delle viti e dei bulloni i materiali sono identificati mediante classi di resistenza espresse da due numeri separati da un punto, nella forma $x.y$, dove:

$ x = frac(R_m, 100), quad quad y = 10 dot.op frac(R_(p 0.2), R_m) $

Moltiplicando $x$ per $100$ si ottiene il carico unitario di rottura $R_m$ in $"MPa"$, mentre moltiplicando $R_m$ per $0.y$ (ovvero $y/10$) si ricava il limite di snervamento $R_(p 0.2)$ in $"MPa"$. Ad esempio, la classe $8.8$ indica $R_m = 800 "MPa"$ e $R_(p 0.2) = 0.8 dot.op 800 = 640 "MPa"$.

Le classi normalizzate previste sono: $3.6 - 4.6 - 4.8 - 5.6 - 5.8 - 6.6 - 8.8 - 10.9 - 12.9$, con un incremento progressivo sia della resistenza a rottura (da circa $300 "MPa"$ fino a $1200 "MPa"$) sia del rapporto tra snervamento e rottura. Per lavori di carpenteria nelle costruzioni sono prescritti una classe minima $8.8$ e un diametro minimo $"M 12"$.

=== Resistenza dei filetti e distribuzione del carico sulle spire

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le filettature unificate sono dimensionate in modo tale che la resistenza del filetto risulti superiore a quella del fusto; inoltre, all'interno dell'accoppiamento vite-madrevite, il filetto si trova sottoposto a un forte stato di compressione che tende a irrigidirlo. La sezione critica in cui si origina il cedimento è invece la sezione trasversale del fusto della vite, sia perché la sezione resistente è ridotta a quella del nocciolo, sia perché la gola del filetto agisce da intaglio producendo un'intensificazione locale delle tensioni. Per questi motivi, di regola i filetti non devono essere verificati.

Il carico assiale applicato al collegamento non si ripartisce uniformemente su tutte le spire in presa, ma decresce rapidamente a partire dai primi filetti: i primi $5 div 6$ filetti (spire) sostengono circa il $90\%$ del carico complessivo. Non ha quindi utilità aumentare eccessivamente l'altezza della madrevite per incrementare la capacità portante, poiché il trasferimento del carico si esaurisce nei primi $5 div 6$ filetti.

In un dado convenzionale, il primo filetto in presa sopporta circa il $35\%$ del carico, il secondo intorno al $20 div 25\%$, per poi scendere progressivamente fino a circa il $6\%$ sull'ultimo filetto; la zona di massima concentrazione tensionale alla base del dado costituisce quindi il punto critico dell'interazione. Un allungamento del dado comporta solo una modesta riduzione del picco iniziale. È invece molto efficace modificare geometricamente il dado per renderlo più deformabile nella zona iniziale di presa, ricavando una porzione alleggerita troncoconica (con parte piena superiore) alla base del dado stesso: invertendo o riducendo fortemente la compressione locale in tale zona cedevole (che si deforma a trazione/flessione locale sottraendosi al sovraccarico), il carico si ridistribuisce in modo molto più uniforme, abbattendo il picco sul primo filetto a circa il $15\%$ e portando le spire centrali e terminali a contribuire in misura significativa (oltre il $10\%$ sugli ultimi filetti per effetto di bordo).],[#include "figs/collegamenti-filettati-fig25.typ"])

=== Effetto dei carichi assiali esterni e diagramma di forzamento

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In assenza di carichi assiali esterni, la forza di trazione nella vite $F_v$ e la forza di compressione esercitata sulle parti serrate $F_p$ si trovano in equilibrio:

$ |F_v| = |F_p| $

Se in esercizio si applica un carico assiale esterno $C$ (ad esempio nel sottotesta del dado o sugli elementi collegati) che tende a divaricare le parti serrate e ad allungare ulteriormente la vite, il sistema raggiunge una nuova condizione di equilibrio mantenendo immutata l'interferenza geometrica complessiva $i = u_v + u_p$:

$ |F'_p| + C = |F'_v| $],[#include "figs/collegamenti-filettati-fig26.typ"])

#grid(
  columns: (1.3fr, 1fr),
  column-gutter: 4em,
  align: (left + horizon, center + horizon),[Nel diagramma di forzamento (o di interferenza), che riporta sulle ordinate le forze $|F_p|, |F_v|$ e sulle ascisse gli spostamenti $u$ (allungamento $u_v$ della vite e accorciamento $u_p$ delle parti), il punto di equilibrio al serraggio corrisponde all'intersezione tra la caratteristica elastica della vite (retta passante per l'origine) e quella delle parti serrate (retta con pendenza negativa che interseca l'asse $u$ in $u = i$). Applicando il carico $C$, rappresentato da un segmento verticale inserito tra le due caratteristiche elastiche a destra del punto di equilibrio iniziale (corrispondente a un incremento di spostamento $Delta u$), la forza sulla vite aumenta di una quota parte $Delta C_v$ fino a $F'_v$, mentre la forza di compressione sulle parti si riduce di una quota parte $Delta C_p$ fino a $F'_p$:

$ F'_v = |F_v| + Delta C_v, \ F'_p = |F_p| - Delta C_p, \  C = Delta C_v + Delta C_p $],[#include "figs/collegamenti-filettati-fig27.typ"])

#grid(
  columns: (1.4fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Esprimendo gli spostamenti in funzione delle forze tramite le deformabilità (cedevolezze) $delta_v$ della vite e $delta_p$ delle parti serrate, si ricavano i fattori di ripartizione del carico esterno:

$ C = Delta C_p + Delta C_v = frac(Delta u, delta_p) + frac(Delta u, delta_v) = Delta u frac(delta_v + delta_p, delta_p dot.op delta_v) $

$ frac(Delta C_v, C) = frac(Delta u, delta_v) dot.op frac(delta_p dot.op delta_v, Delta u dot.op (delta_v + delta_p)) = frac(delta_p, delta_v + delta_p) $

Da cui seguono le formule di ripartizione (analoghe a una regola della leva):

$ Delta C_v = C frac(delta_p, delta_v + delta_p), quad quad Delta C_p = C frac(delta_v, delta_v + delta_p) $],[#include "figs/collegamenti-filettati-fig28.typ"])

=== Stima della deformabilità della vite e dei pezzi serrati

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 3em,
  align: (left + horizon, center + horizon),[Per determinare analiticamente i fattori di ripartizione occorre calcolare le deformabilità $delta_v$ e $delta_p$. Applicando la teoria della trave caricata a sforzo normale $F_v$, la tensione assiale $sigma = F_v / A$ genera per la legge di Hooke una deformazione $epsilon.alt = sigma / E = F_v / (E A)$. \ Integrando la relazione $epsilon.alt = d u / d x$ lungo la lunghezza $L$ a sezione costante si ottiene lo spostamento $u = F_v L / (E A)$, da cui la deformabilità (reciproco della rigidezza per unità di lunghezza):
],[#include "figs/collegamenti-filettati-fig29.typ"])

$ delta = frac(u, F) = frac(L, E dot.op A) $

Poiché il fusto della vite presenta generalmente tratti a sezione diversa all'interno della lunghezza serrata $L_p$ (tratto non filettato $l_1, A_1$, eventuale tratto centrale alleggerito $l_2, A_2$, tratto filettato $l_3, A_3$ fino alla madrevite), la deformabilità complessiva $delta_v$ della vite (di diametro nominale $d$ e modulo elastico $E_v$) si calcola come somma dei contributi in serie:

$ delta_v = frac(u_v, F_v) = frac(L_v, E_v dot.op A_v) = sum frac(l_(i, e f f i c a c e), E_v dot.op A_i) = frac(1, E_v) ( frac(l_1 + 0.4 dot.op d, A_1) + frac(l_2, A_2) + frac(l_3 + 0.4 dot.op d, A_3) ) $

I termini aggiuntivi $0.4 dot.op d$ tengono conto della cedevolezza elastica localizzata nella testa della vite e nella zona impegnata del dado (poiché la deformazione non termina bruscamente in corrispondenza dei piani di sottotesta e sottodado): si estende pertanto idealmente la lunghezza efficace del primo e dell'ultimo tratto di una quantità pari al $40\%$ del diametro, mantenendo le rispettive aree $A_1$ e $A_3$. L'area $A_3$ del tratto filettato è valutata utilizzando il diametro medio $d_m$ ("area media"). La formula va adattata alla specifica geometria della vite impiegata.
Per quanto riguarda i pezzi serrati, il calcolo esatto richiederebbe la conoscenza della distribuzione reale delle tensioni e deformazioni da schiacciamento. In prima approssimazione ci si riconduce a un cilindro cavo equivalente di area $A_p$ tale da produrre la stessa contrazione assiale del caso reale a parità di carico:

$ delta_p = frac(u_p, F_p) = frac(L_p, E_p A_p) quad "(materiali dei pezzi serrati uguali)" $

$ delta_p = frac(1, A_p) sum frac(L_(p i), E_(p i)) quad "(materiali dei pezzi serrati diversi)" $

Per la stima dell'area equivalente $A_p$, indicando con $D_p$ il diametro esterno del pezzo serrato, $d_f$ il diametro del foro, $d_(e t)$ (o $D_(e t)$) il diametro esterno della testa della vite e $D$ il diametro della vite, si distinguono tre casi in base al rapporto $D_p / d_(e t)$:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso a) $D_p / d_(e t) lt.eq 1$:] l'elemento serrato è contenuto all'interno della proiezione della testa ed è quindi compresso uniformemente sull'intera corona circolare:

$ A_p = frac(pi, 4) (D_p^2 - d_f^2) $],[#include "figs/collegamenti-filettati-fig30.typ"])

 #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso b) $D_p / d_(e t) = 1 div 3$:] la zona interessata dalla compressione si allarga a tronco di cono (cono di pressione), ma le dimensioni trasversali del pezzo non sono sufficienti a contenerlo interamente e il cono risulta troncato dal bordo esterno $D_p$. Definita la lunghezza efficace $L_p^"*" = min(L_p; 8D)$:

],[#include "figs/collegamenti-filettati-fig31.typ"])
$ A_p = frac(pi, 4)(d_(e t)^2 - d_f^2) + frac(pi, 8)(frac(D_p, d_(e t)) - 1)(0.2 dot.op d_(e t) dot.op L_p^"*" + frac(L_p^("*2"), 100)) $
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso c) $D_p / d_(e t) gt.eq 3$:] i pezzi serrati sono molto estesi trasversalmente, per cui il cono di pressione è completamente contenuto all'interno del volume del solido senza raggiungere i bordi laterali. Con $L_p^"*" = min(L_p; 8D)$:

$ A_p = frac(pi, 4)[(d_(e t) + 0.1 dot.op L_p^"*")^2 - d_f^2] $],[#include "figs/collegamenti-filettati-fig32.typ"])

=== Accorgimenti costruttivi per diminuire il carico sulle viti

Dall'espressione $Delta C_v = C frac(delta_p, delta_v + delta_p)$ risulta che, a parità di carico esterno $C$, la quota parte di carico che grava sulla vite diminuisce all'aumentare della deformabilità $delta_v$ della vite stessa (mentre $Delta C_p$ aumenta). Ciò è particolarmente vantaggioso poiché la vite ha sezione minore ed è sollecitata a trazione, risultando più critica (specie a fatica) rispetto alle parti serrate in compressione. Poiché $delta_v = L / (E A)$, per incrementare $delta_v$ si può agire aumentando la lunghezza $L$ a numeratore oppure riducendo la sezione $A$ a denominatore:

1. #grid(
  columns: (1fr, 1fr),
  rows: 2,
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Aumento della lunghezza della vite:] si interpone ad esempio un distanziale cilindrico impiegando una vite con gambo completamente filettato. Sebbene l'allungamento incrementi anche la deformabilità $delta_p$ delle parti serrate, dimensionando opportunamente il distanziale è possibile far crescere $delta_v$ in misura maggiore rispetto a $delta_p$. ],[#include "figs/collegamenti-filettati-fig33.typ"],[Nel diagramma di forzamento, $F_(v, l i m)$ rimane invariata (dipendendo dal diametro di nocciolo $d_n$), mentre la retta della vite risulta più inclinata verso l'asse delle ascisse; di conseguenza, a parità di $C$, $Delta C_v$ diminuisce e $Delta C_p$ aumenta.],[#canvas(length: 0.9cm, {
  import draw: *
  line((0, 0), (9.0, 0), mark: (end: ">"), stroke: 0.75pt)
  line((0, 0), (0, 5.2), mark: (end: ">"), stroke: 0.75pt)
  line((0, 3.1), (8.7, 3.1), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, 0), (2.0, 4.276), stroke: 1.05pt)
  line((1.0, 4.096), (2.85, 0), stroke: 1.05pt)
  line((0, 0), (5.8, 3.996), stroke: 1.05pt)
  line((4.05, 4.096), (5.9, 0), stroke: 1.05pt)
  line((1.783, 2.363), (1.783, 3.812), stroke: 1.5pt)
  line((5.0, 1.993), (5.0, 3.445), stroke: 1.5pt)
  rect((1.683, 3.712), (1.883, 3.912), fill: red, stroke: none)
  line((1.783, 2.483), (1.673, 2.263), (1.893, 2.263), close: true, fill: blue, stroke: none)
  rect((4.9, 3.345), (5.1, 3.545), fill: red, stroke: none)
  line((5.0, 2.113), (4.89, 1.893), (5.11, 1.893), close: true, fill: blue, stroke: none)
  line((1.783, 3.812), (3.35, 3.812), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.783, 2.363), (3.35, 2.363), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((2.35, 3.1), (2.35, 3.812), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((2.35, 2.363), (2.35, 3.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((3.2, 2.363), (3.2, 3.812), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.0, 3.445), (6.55, 3.445), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((5.0, 1.993), (6.55, 1.993), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((5.55, 3.1), (5.55, 3.445), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.55, 1.993), (5.55, 3.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((6.4, 1.993), (6.4, 3.445), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.15, 4.85), text(size: 8pt)[$|F_p|$], anchor: "east")
  content((-0.15, 4.42), text(size: 8pt)[$|F_v|$], anchor: "east")
  content((-0.15, 3.1), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")
  content((8.85, -0.18), text(size: 8.5pt)[$u$], anchor: "north")
  content((2.43, 3.45), text(size: 7.5pt)[$Delta C_v$], anchor: "west")
  content((2.43, 2.73), text(size: 7.5pt)[$Delta C_p$], anchor: "west")
  content((3.3, 2.9), text(size: 8pt)[$C$], anchor: "west")
  content((5.63, 3.28), text(size: 7.5pt)[$Delta C_v$], anchor: "west")
  content((5.63, 2.55), text(size: 7.5pt)[$Delta C_p$], anchor: "west")
  content((6.5, 2.68), text(size: 8pt)[$C$], anchor: "west")
  content((1.7, 4.75), text(size: 8.5pt)[$F_(v,"lim")$ rimane uguale perché dipende dal \ diametro di nocciolo], anchor: "south-west")
  content((6.0, 4.2), text(size: 8.5pt)[Vite 'allungata'], anchor: "west")
  content((6.65, 1.35), text(size: 8.5pt)[$Delta C_v = C delta_p / lr((delta_v + delta_p))$], anchor: "west")
})])



2. #grid(
  columns: (1fr, 1fr),
  rows:2,
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Impiego di viti con fusto alleggerito:] si riduce il diametro del gambo non filettato a un valore $d_g < d_n$ (area $A_g = pi d_g^2 / 4$). In questo caso la sezione critica non è più quella di nocciolo, bensì la sezione calibrata alleggerita $A_g$, in base alla quale devono essere ricalcolati $k$, la forza assiale limite $F_(v, l i m)$ e il momento di serraggio $M_T$:

$ k = [frac(2, d_g)(frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha))] $

$ F_(v, l i m) = sigma_(a, l i m) dot.op A_g = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) dot.op frac(pi dot.op d_g^2, 4) $

$ M_T = frac(F_(v, l i m), 2)(frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt) $

],[],[Nel diagramma di forzamento, a parità di deformabilità del pezzo $delta_p$, la retta della vite si inclina maggiormente verso l'asse $u$ e il punto di intersezione iniziale scende a un valore inferiore $F_(v, l i m) " (alleggerita)"$: la modifica agisce dunque sia abbassando la forza assiale limite di serraggio sia riducendo la quota parte $Delta C_v$ che si scarica sulla vite in esercizio.],[#canvas(length: 1cm, {
  import draw: *
  line((0, 0), (7.5, 0), mark: (end: ">"), stroke: 0.75pt)
  line((0, 0), (0, 5.5), mark: (end: ">"), stroke: 0.75pt)
  line((0, 0), (2.0, 4.33), stroke: 1.1pt)
  line((1.3, 4.20), (2.7, 0), stroke: 1.1pt)
  line((0, 0), (5.87, 4.20), stroke: 1.1pt)
  line((3.65, 4.20), (5.05, 0), stroke: 1.1pt)
  line((1.8, 2.70), (1.8, 3.90), stroke: 1.4pt)
  line((4.4, 1.95), (4.4, 3.15), stroke: 1.4pt)
  rect((1.7, 3.80), (1.9, 4.00), fill: red, stroke: none)
  line((1.7, 2.58), (1.9, 2.58), (1.8, 2.82), close: true, fill: blue, stroke: none)
  rect((4.3, 3.05), (4.5, 3.25), fill: red, stroke: none)
  line((4.3, 1.83), (4.5, 1.83), (4.4, 2.07), close: true, fill: blue, stroke: none)
  line((1.9, 3.90), (3.45, 3.90), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0, 3.30), (3.45, 3.30), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0, 2.90), (7.10, 2.90), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.9, 2.70), (3.45, 2.70), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.5, 3.15), (6.15, 3.15), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.5, 1.95), (6.15, 1.95), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((2.45, 3.30), (2.45, 3.90), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((2.45, 2.70), (2.45, 3.30), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((3.25, 2.70), (3.25, 3.90), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.05, 3.60), (5.05, 3.15), mark: (end: ">"), stroke: 0.6pt)
  line((5.05, 1.95), (5.05, 2.90), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.95, 1.95), (5.95, 3.15), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.15, 5.20), text(size: 8.5pt)[$|F_p|$], anchor: "east")
  content((-0.15, 4.65), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((-0.15, 3.48), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")
  content((-0.15, 2.72), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")
  content((-0.15, 2.28), text(size: 7.5pt)[(alleggerita)], anchor: "east")
  content((7.10, -0.25), text(size: 9pt)[$u$], anchor: "north")
  content((2.55, 3.60), text(size: 7.5pt)[$Delta C_v$], anchor: "west")
  content((2.55, 3.00), text(size: 7.5pt)[$Delta C_p$], anchor: "west")
  content((3.35, 3.30), text(size: 7.5pt)[$C$], anchor: "west")
  content((5.15, 3.40), text(size: 7.5pt)[$Delta C_v$], anchor: "west")
  content((5.15, 2.425), text(size: 7.5pt)[$Delta C_p$], anchor: "west")
  content((6.05, 2.55), text(size: 7.5pt)[$C$], anchor: "west")
  content((4.52, 2.25), text(size: 7.5pt)[$C$], anchor: "west")
})])



=== Incertezze di montaggio e allentamenti in esercizio

Il carico iniziale di trazione sulla vite e di compressione sui pezzi serrati è imposto tramite il momento di serraggio $M_T$ riferito alla condizione nominale di equilibrio $F_v = F_p$. In esercizio, tuttavia, il carico residuo di compressione sui pezzi $F_p$ può ridursi significativamente per tre cause:
- incertezze sulla forza $F_v$ al montaggio e sul momento applicato;
- allentamento del collegamento dovuto ad assestamenti superficiali indotti da vibrazioni o carichi ciclici;
- azione del carico esterno ($Delta C_p$).

=== 1. Incertezze sulla forza al montaggio

Le incertezze al serraggio derivano da due fattori principali:
- #strong[Incertezza sul coefficiente d'attrito:] soprattutto in presenza di lubrificazione o rivestimenti, il valore reale dell'attrito non è noto con precisione; all'aumentare del coefficiente d'attrito, a parità di momento applicato, diminuisce la forza assiale effettiva sulla vite.
- #strong[Incertezza sulla misura del momento applicato:] l'attrezzatura utilizzata dall'operatore può introdurre errori di misura o di lettura, oppure presentare una deriva di taratura; le attrezzature di officina sono tarate in modo che eventuali scostamenti portino a un momento applicato inferiore a quello impostato.

Si definisce l'indice di incertezza al serraggio $I$ come il rapporto tra la forza massima nominale (desiderata) e la forza minima effettivamente trasmissibile sullo strumento:

$ I = frac(F_(v, m a x), F_(v, m i n)) = frac(F_(v, l i m), F_(v, m i n)) $

I valori tipici di $I$ dipendono dalla tecnica e dallo strumento di serraggio adottati:
- Serraggio con chiave dinamometrica: $I = 1.6$.
- Serraggio con avvitatore con taratura periodica: $I = 2.5$.
- Serraggio manuale o senza taratura periodica: $I = 4$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Dal punto di vista strumentale, l'avvitatore (o chiave a scatto) con taratura periodica dispone di una frizione o meccanismo interno che slitta o scatta producendo un segnale tattile e sonoro ("clic") al raggiungimento della coppia preimpostata tramite ghiera/pomello, andando in folle per non trasmettere coppia ulteriore; la sua affidabilità dipende tuttavia dalla corretta calibrazione periodica, soggetta a derive per temperatura, vibrazioni o manomissioni. La chiave dinamometrica vera e propria esegue invece una misura istantanea e diretta della coppia applicata durante il serraggio: nei modelli meccanici a lettura su scala graduata esiste comunque il rischio di errore di lettura da parte dell'operatore, rischio ridotto (sebbene non azzerato) nelle moderne chiavi dinamometriche elettroniche dotate di display digitale. Nell'impiego pratico (come nel serraggio delle viti di piastre di sterzo motociclistiche alla coppia prescritta, ad esempio $17 "Nm"$), il corretto utilizzo di tali utensili risponde alla doppia esigenza di non eccedere la resistenza della vite evitandone la rottura e, al tempo stesso, di non scendere al di sotto del carico minimo necessario a mantenere serrate le parti senza perdita delle viti o slittamenti.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: rassegna fotografica degli utensili di serraggio: in alto a sinistra chiave a cricchetto su componente meccanico e a destra avvitatore pneumatico con taratura periodica (con didascalia "frizione interna che slitta quando si è raggiunto il valore di coppia richiesto"); al centro due chiavi dinamometriche meccaniche con indice a scala graduata; in basso una chiave dinamometrica elettronica con display digitale]])

=== 2. Allentamento del collegamento per assestamento

Nel tempo, sotto l'azione di forze esterne e vibrazioni (assiali o trasversali/tangenziali), le micro-asperità delle superfici a contatto si schiacciano e si assestano modificando la rugosità. Ciò comporta una perdita di interferenza $Delta i$ (espressa in $mu "m"$) e una conseguente perdita di forza sulla vite $Delta F_v$. I valori di $Delta i$ dipendono dal numero di superfici di interfaccia ($"N° superfici"$), dalla direzione delle forze esterne e dalla rugosità media $R_a$:

#table(
  columns: 5,
  align: center,
  [N° superfici], [Forze assiali ($R_a = 1.6 mu "m"$)], [Forze assiali ($R_a = 0.8 mu "m"$)], [Forze tangenziali ($R_a = 1.6 mu "m"$)], [Forze tangenziali ($R_a = 0.8 mu "m"$)],
  [2], [$13 mu "m"$], [$10 mu "m"$], [$20 mu "m"$], [$13 mu "m"$],
  [3], [$16 mu "m"$], [$12 mu "m"$], [$28 mu "m"$], [$16 mu "m"$],
  [4], [$20 mu "m"$], [$14 mu "m"$], [$35 mu "m"$], [$20 mu "m"$],
  [5], [$25 mu "m"$], [$16 mu "m"$], [$42 mu "m"$], [$25 mu "m"$],
  [6], [$30 mu "m"$], [$18 mu "m"$], [$50 mu "m"$], [$30 mu "m"$],
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Occorre prestare particolare attenzione al conteggio del numero di superfici ($"N° sup"$), che corrisponde al numero di interfacce di contatto lungo il serraggio e non al numero di corpi serrati: per un singolo corpo bloccato fra sottotesta e dado si hanno $"N° sup" = 2$ (sottotesta e sottodado), mentre per due corpi impilati si hanno $"N° sup" = 3$ (sottotesta, interfaccia tra i due corpi e sottodado); in generale, il numero di superfici supera di un'unità il numero dei corpi serrati. Inoltre, lavorando abitualmente in millimetri, è indispensabile convertire $Delta i$ da micrometri ($mu "m"$) a millimetri ($"mm"$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schemi tratteggiati per l'identificazione del numero di superfici di interfaccia: a sinistra un solo blocco serrato con "N° sup = 2"; a destra due blocchi impilati con tratteggi opposti con "N° sup = 3"]])

=== Effetto globale di incertezze e allentamento sul diagramma

Combinando l'incertezza al montaggio e la perdita di interferenza per assestamento, sul diagramma di forzamento compaiono tre triangoli di interferenza concentrici:
1. Il triangolo esterno (nominale), con vertice a $F_(v, l i m) = |F_p| = |F_v|$ e interferenza nominale $i$.
2. Il triangolo intermedio, con vertice abbassato a $F_(v, m i n) = frac(F_(v, l i m), I)$ per effetto dell'incertezza di serraggio.
3. Il triangolo interno, ottenuto traslando verso sinistra di $Delta i$ la caratteristica del pezzo parallelamente a se stessa, il cui vertice corrisponde a una perdita aggiuntiva di forza $Delta F_v$:

$ frac(Delta F_v, Delta i) = frac(F_v, i) = frac(F_v, F_v (delta_v + delta_p)) arrow.r.double Delta F_v = frac(Delta i, delta_v + delta_p) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il precarico minimo residuo prima dell'applicazione del carico esterno diventa pertanto $frac(F_(v, l i m), I) - Delta F_v$. Il triangolo esterno più grande viene impiegato per la verifica di resistenza statica della vite (condizione più gravosa per il materiale), mentre il triangolo interno più piccolo viene impiegato per la verifica di funzionalità / carico minimo di serraggio (condizione più sfavorevole per la tenuta e l'aderenza tra le parti).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di forzamento completo ($|F_p|, |F_v|$ vs $u$) mostrante l'effetto globale di incertezze e allentamento attraverso tre triangoli nidificati: il triangolo esterno con interferenza $i$ e vertice a $F_(v, l i m) = |F_p| = |F_v|$; il triangolo intermedio con vertice a $F_(v, m i n) = F_(v, l i m)/I$; il triangolo interno traslato orizzontalmente di $Delta i$ verso sinistra con vertice abbassato di $Delta F_v$ al livello $F_(v, l i m)/I - Delta F_v$]])

=== Procedura iterativa di progetto dei collegamenti filettati

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel calcolo progettuale di un collegamento filettato (che può comprendere più viti o bulloni, per cui il carico agente sul singolo elemento è $C = F_(t o t) / ("n° viti")$), si segue una procedura iterativa articolata nelle seguenti fasi:
1. #strong[Scelte iniziali:] definizione del numero di viti, della classe e tipologia del materiale e della dimensione della vite. In prima approssimazione, per dimensionare l'area resistente minima in modo da evitare troppe iterazioni successive anche in vista della verifica a fatica, si utilizza la stima:

$ A_(m i n) = (3 div 4) frac(C_(m a x), R_(p 0.2)) $

2. #strong[Calcolo dei parametri caratteristici:] determinazione di $k$, $F_(v, l i m)$, $M_T$, $delta_v$, $delta_p$, $Delta F_v$, $Delta C_v$ e $Delta C_p$.
3. #strong[Verifiche:] esecuzione della verifica statica della vite, della verifica del carico minimo di serraggio e della verifica a fatica della vite.
4. #strong[Iterazione:] qualora anche una sola delle verifiche non risulti soddisfatta, si apportano modifiche costruttive o dimensionali (sulle deformabilità, sul numero di viti, sul diametro o sulla classe del materiale) e si ripete il calcolo fino al soddisfacimento di tutte le condizioni.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di flusso della procedura di calcolo dei collegamenti filettati: blocco "Scelte iniziali" (numero viti $C = F_(t o t)/("n° viti")$, classe/tipo materiale, dimensione con formula di prima approssimazione $A_(m i n) = (3 div 4) C_(m a x) / R_(p 0.2)$), seguito dal blocco di "Calcolo di $k - F_(v, l i m) - M_T - delta_v - delta_p - Delta F_v - Delta C_v - Delta C_p$", quindi dal blocco delle tre verifiche (Verifica statica, Verifica del carico minimo di serraggio, Verifica a fatica della vite) e dal rombo decisionale che porta a "Fine" se "Sì" oppure retroaziona tramite il blocco "Cambiamenti..." alle scelte iniziali se "No"]])

=== Verifica statica della vite

La verifica statica viene condotta nelle condizioni peggiori per la sollecitazione del fusto, ovvero:
- supponendo applicata la forza limite $F_(v, l i m)$ calcolata al montaggio;
- senza considerare allentamenti né incertezze di montaggio (che ridurrebbero la forza agente);
- con il carico esterno massimo applicato $C_(m a x)$.

In teoria occorre verificare che la tensione equivalente di Von Mises non superi il limite di snervamento $R_(p 0.2)$:

$ sigma_(i d) = sqrt(sigma_v^2 + 3 dot.op tau_v^2) lt.eq R_(p 0.2) $

dove la tensione normale totale somma il contributo di precarico al serraggio $sigma_(a, l i m)$ e l'incremento di tensione assiale dovuto alla quota parte di carico esterno $Delta C_(m a x, v)$, mentre la tensione tangenziale resta quella immagazzinata al serraggio tramite $M_t^"*"$:

$ sigma_v = sigma_(a, l i m) + Delta sigma_(m a x, v) = frac(4 dot.op F_(v, l i m), pi dot.op d_n^2) + frac(4 dot.op Delta C_(m a x, v), pi dot.op d_n^2), quad quad tau_v = frac(16 dot.op M_t^"*", pi dot.op d_n^3) $

In pratica, tenendo conto del fatto che $sigma_(i d, l i m) = X dot.op R_(p 0.2)$ è stata scelta appositamente al montaggio, nella manualistica si ritiene sufficiente verificare la disuguaglianza semplificata:

$ sigma_(i d, l i m) + Delta sigma_(m a x, v) lt.eq R_(p 0.2) quad "cioè" quad X dot.op R_(p 0.2) + Delta sigma_(m a x, v) lt.eq R_(p 0.2) $

Da cui derivano le espressioni immediate di controllo in termini di tensione o di carico:

$ Delta sigma_(m a x, v) lt.eq (1 - X) R_(p 0.2), quad quad Delta C_(m a x, v) lt.eq (1 - X) F_(p 0.2) $

dove $F_(p 0.2) = R_(p 0.2) dot.op A_n$ indica il carico assiale corrispondente al raggiungimento della tensione di snervamento $R_(p 0.2)$. Ad esempio, con un precarico al $90\%$ dello snervamento ($X = 0.9$), l'incremento di carico in esercizio sulla vite deve restare entro il residuo $10\%$.

Qualora la verifica statica non sia soddisfatta, i possibili interventi correttivi sono:
- cambiare la classe del materiale aumentandone la resistenza;
- aumentare il numero di viti (diminuendo così il carico $C$ per singola vite);
- diminuire la percentuale di utilizzo $X$ del materiale al montaggio (es. scendendo all'$80\%$);
- utilizzare viti più lunghe, quindi più deformabili, per ridurre $Delta C_v$.

Si osserva inoltre che aumentare il diametro della vite non è sempre efficace: sebbene aumenti l'area resistente diminuendo le tensioni a parità di forza, aumenta contemporaneamente la rigidezza della vite con la stessa legge quadratica (riducendo $delta_v$), facendo crescere la quota parte di carico $Delta C_v$ assorbita dalla vite, col rischio che le tensioni risultanti restino elevate o addirittura aumentino.

=== Caso delle viti alleggerite

L'impiego di viti alleggerite diminuisce la quota parte di carico assorbita dalla vite, ma riduce la sezione resistente di riferimento a quella alleggerita ($d_g$, $A_g$), dove le tensioni restano comunque elevate. Nelle sezioni alleggerite la verifica statica va quindi eseguita calcolando la tensione ideale rispetto al diametro $d_g$:

$ sigma_(i d) = sqrt(sigma_g^2 + 3 dot.op tau_g^2) lt.eq R_(p 0.2) $

$ sigma_g = frac(4 dot.op (F_(v, l i m) + Delta C_(m a x, v)), pi dot.op d_g^2), quad quad tau_g = frac(16 dot.op M_t^"*", pi dot.op d_g^3) $

In pratica, le viti alleggerite non presentano una resistenza statica molto diversa da quella delle viti non alleggerite.

=== Sollecitazioni di flessione per errori di planarità

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un fattore potenzialmente molto pericoloso per l'integrità della vite è la presenza di errori di montaggio o imperfezioni geometriche tali per cui le superfici di appoggio del sottotesta e dei pezzi non risultino perfettamente parallele. In tal caso, oltre a trazione e torsione, la vite si incurva subendo sollecitazioni di flessione significative.

Dall'equazione della linea elastica per una trave di lunghezza $L$ e diametro $D$ le cui sezioni terminali subiscono una rotazione relativa $alpha$, la curvatura è $frac(1, R) = frac(M, E J) = frac(alpha, L)$, da cui la tensione massima di flessione vale:

$ sigma_(m a x) = frac(M, J) dot.op frac(D, 2) = E dot.op frac(alpha, L) dot.op frac(D, 2) $

Considerando ad esempio una vite in acciaio con $E = 2 dot.op 10^5 "MPa"$, un errore di parallelismo di appena $alpha = 0.5 degree = frac(1, 114.6) "rad"$ e un rapporto $frac(D, L) = frac(1, 10)$, si sviluppa una tensione di flessione parassita pari a $sigma tilde.eq 87 "MPa"$, che si somma alle tensioni dovute al serraggio e ai carichi di esercizio. Per contenere questo effetto conviene impiegare viti snelle (rapporto $D/L$ ridotto) e prescrivere tolleranze di planarità sulle superfici di appoggio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di un tratto di fusto di lunghezza $L$ vincolato tra due superfici di appoggio non parallele inclinate di un angolo $alpha$, che induce l'incurvamento a flessione dell'asse della vite]])

=== Verifica del carico minimo di serraggio

La verifica di funzionalità assicura che, anche nelle condizioni più sfavorevoli, la forza residua di compressione tra le parti serrate $F_(p, m i n)$ non scenda mai al di sotto di un valore minimo prescritto $F_(p, l i m)$, necessario ad esempio per garantire la tenuta delle guarnizioni o per assicurare per attrito l'assenza di scorrimenti relativi tra i componenti.

Per tale verifica si opera sul triangolo più interno (il più piccolo) del diagramma di forzamento, che cumula sia la peggiore incertezza di serraggio (forza iniziale ridotta a $F_(v, l i m)/I$) sia la perdita completa per assestamento ($Delta F_v$). Applicando il carico esterno $C$ su tale triangolo, il punto di lavoro della parte serrata scende di $Delta C_p$ fino a $F_(p, m i n)$, che deve soddisfare la condizione:

$ F_(p, l i m) lt.eq F_(p, m i n) = frac(F_(v, l i m), I) - Delta F_v - Delta C_p $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Se si giunge a $F_(p, m i n) = 0$, si verifica il distacco completo fra le parti serrate: in tale situazione viene meno la tenuta del collegamento e l'intero carico esterno $C$ viene sopportato esclusivamente dalla vite, condizione da evitare assolutamente sia per la funzionalità sia per l'integrità strutturale della vite stessa. Condizioni comprese tra $F_(p, l i m)$ e $0$ mantengono ancora il contatto fisico tra le superfici, ma con una pressione insufficiente a garantire la tenuta o l'aderenza richieste.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di forzamento ($|F_p|, |F_v|$ vs $u$) per la verifica del carico minimo di serraggio. Sono rappresentati i tre triangoli nidificati con interferenza teorica $i "teorica"$, spostamento orizzontale $Delta i$ e vertici rispettivamente a $F_(v, l i m)$, $F_(v, l i m)/I$ e $F_(v, l i m)/I - Delta F_v$. Sul triangolo più interno è applicato il carico esterno $C$, evidenziando il punto superiore sulla vite (quadrato rosso) e il punto inferiore sul pezzo (triangolo blu) ribassato di $Delta C_p$ al valore $F_(p, m i n)$, posizionato al di sopra della retta orizzontale di soglia $F_(p, l i m)$]])

Se la verifica del carico minimo di serraggio non è soddisfatta, i possibili interventi correttivi consistono nel:
- diminuire le incertezze di montaggio utilizzando chiavi dinamometriche;
- lavorare più accuratamente le superfici dei pezzi serrati (riducendo la rugosità $R_a$ e quindi $Delta i$ e $Delta F_v$);
- cambiare la classe del materiale passando a una classe superiore (innalzando $F_(v, l i m)$);
- utilizzare viti meno deformabili (con cautela, poiché ciò aumenta $Delta C_v$ avvicinando il punto di lavoro alla verifica di resistenza);
- aumentare il numero di viti (diminuendo $C$);
- aumentare la deformabilità del pezzo (con attenzione, cercando un compromesso tra le esigenze di resistenza della vite e di funzionalità del giunto, valutabile graficamente sul diagramma di interferenza).
- == Lezione 10: Viti e bulloni (collegamenti filettati) – Fatica e casi particolari

=== Verifica a fatica della vite e diagramma di Haigh
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La verifica a fatica delle viti nelle normative tecniche (in particolare nella normativa tedesca VDI 2230) si basa sull'utilizzo di un diagramma di Haigh specifico per filettature di classi $8.8 div 12.9$, costruito per classi di resistenza dei materiali e per fasce dimensionali di vite piuttosto che per singoli materiali.

Sul diagramma sono riportate in ascissa le tensioni medie adimensionalizzate rispetto al limite di snervamento ($sigma_m \/ R_(p 0.2)$, con estensione fino a $0.9$ nel diagramma considerato, sebbene per dimensioni minori possa spingersi anche oltre) e in ordinata la tensione alternata ammissibile a fatica $sigma_D$ espressa in MPa. Il grafico presenta due scale verticali distinte: la scala di sinistra ($40 div 80 " MPa"$) si riferisce alle viti non rullate, mentre la scala di destra ($80 div 160 " MPa"$) si riferisce alle viti sottoposte a rullatura a freddo, trattamento meccanico superficiale che raddoppia il valore di resistenza in MPa.

Le diverse rette decrescenti presenti sul diagramma rappresentano l'effetto scala legato alle dimensioni del fusto e al diametro nominale della filettatura, suddivise in tre fasce: $M 4 div M 8$ (valori più elevati), $M 10 div M 16$ (valori intermedi) e $M 18 div M 30$ (valori più bassi). Pur essendo rappresentato un diagramma in termini di tensioni normali assiali, la componente di torsione risulta comunque inclusa attraverso il parametro $K$ che consente di esprimere la tensione equivalente direttamente in funzione della tensione assiale $sigma$. In questo contesto $sigma_a$ indica la tensione assiale alternata.

La condizione di verifica a fatica richiede che la tensione alternata di esercizio non superi il $90\%$ del limite $sigma_D$ individuato sulla curva corrispondente alla propria dimensione e tensione media:

$ sigma_a lt.eq 0.9 sigma_D $

Ad esempio, considerando una vite $M 30$ non rullata soggetta a una tensione media pari al $40\%$ dello snervamento ($sigma_m \/ R_(p 0.2) = 0.4$), si legge sulla curva inferiore un valore di $sigma_D tilde.eq 52.5 div 53 " MPa"$, rispetto al quale la tensione alternata $sigma_a$ deve mantenersi al di sotto del $90\%$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di Haigh per filettature classi 8.8 #sym.div 12.9 (da VDI 2230). Asse orizzontale $sigma_m \/ R_(p 0.2)$ da 0.1 a 0.9; asse verticale sinistro $sigma_D$ (MPa) da 40 a 80 per "Viti non rullate"; asse verticale destro $sigma_D$ (MPa) da 80 a 160 per "Viti rullate". Sono tracciate tre rette decrescenti etichettate dall'alto verso il basso: $M 4 div M 8$, $M 10 div M 16$, $M 18 div M 30$. In basso un riquadro rosso riporta: "La vite si considera verificata se $sigma_a lt.eq 0.9 sigma_D$".]])

=== Determinazione dei cicli di carico sul diagramma di interferenza
Per caratterizzare il ciclo di fatica agente sulla vite (elemento più critico rispetto alle parti serrate poiché presenta la sezione resistente più piccola e lavora a trazione anziché a compressione), si individuano le forze massima ($F_(v, m a x)$), minima ($F_(v, m i n)$), media ($F_(v, m)$) e alternata ($F_(v, a)$) direttamente dal diagramma di interferenza, in funzione dell'andamento nel tempo del carico esterno $C(t)$. Le tensioni alternata e media si calcolano quindi dividendo le rispettive forze per l'area resistente della filettatura $A_n$ (area di nocciolo o alla radice del filetto, a seconda della normativa tecnica adottata):

$ sigma_a = frac(F_(v, a), A_n), quad sigma_m = frac(F_(v, m), A_n) $

Si distinguono tre casi operativi principali:

1. #strong[Caso a) – Ciclo all'origine ($0 lt.eq C(t) lt.eq C_(m a x)$):]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[Il carico esterno oscilla tra $0$ e un massimo $C_(m a x)$. Sul diagramma di interferenza la forza minima sulla vite coincide con il precarico iniziale nella condizione di equilibrio $F_(v, "lim")$, mentre la forza massima si ottiene sommando la quota parte di carico massimo spettante alla vite ($Delta C_(m a x, v)$):

$ F_(v, m a x) = F_(v, "lim") + Delta C_(m a x, v), quad F_(v, m i n) = F_(v, "lim") $

$ F_(v, m) = F_(v, "lim") + frac(Delta C_(m a x, v), 2), quad F_(v, a) = frac(Delta C_(m a x, v), 2) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di interferenza per il Caso a) ($0 lt.eq C(t) lt.eq C_(m a x)$). Assi: ordinata $|F_p|, |F_v|$, ascissa $u$. Sono rappresentate le due caratteristiche lineari della vite (crescente dall'origine) e della parte (decrescente), che si intersecano al livello di equilibrio $F_(v, "lim")$. A destra dell'intersezione è inserito il segmento verticale di ampiezza $C_(m a x)$ compreso tra la retta della vite (quadrato rosso in alto) e la retta della parte (triangolo blu in basso). A destra del triangolo delle forze è tracciata la sinusoide temporale $Delta C_v (t)$ compresa tra $F_(v, "lim")$ e il picco superiore, con escursione totale $Delta C_(m a x, v)$, livello medio $F_(v, m)$ e semiampiezza $F_(v, a)$.]])

2. #strong[Caso b) – Ciclo pulsante positivo ($C_(m i n) lt.eq C(t) lt.eq C_(m a x)$ con $C_(m a x) > 0$ e $C_(m i n) > 0$):]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[La fluttuazione avviene tra due valori entrambi positivi, senza annullarsi. La condizione minima non coincide più con il punto di equilibrio ma include la quota parte di carico minimo $Delta C_(m i n, v)$:

$ F_(v, m a x) = F_(v, "lim") + Delta C_(m a x, v), quad F_(v, m i n) = F_(v, "lim") + Delta C_(m i n, v) $

$ F_(v, m) = frac(F_(v, m a x) + F_(v, m i n), 2), quad F_(v, a) = frac(F_(v, m a x) - F_(v, m i n), 2) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di interferenza per il Caso b) ($C_(m i n) lt.eq C(t) lt.eq C_(m a x)$ con $C_(m a x), C_(m i n) > 0$). Assi: ordinata $|F_p|, |F_v|$, ascissa $u$. A destra del punto di equilibrio $F_(v, "lim")$ sono posizionati due segmenti verticali tra le rette della vite e della parte: uno più corto corrispondente a $C_(m i n)$ e uno più lungo a destra corrispondente a $C_(m a x)$. Sulla destra sono indicate le due quote spettanti alla vite $Delta C_(m i n, v)$ e $Delta C_(m a x, v)$ sopra $F_(v, "lim")$, e la sinusoide $Delta C_v (t)$ che oscilla tra tali due livelli, con valor medio $F_(v, m)$ e semiampiezza $F_(v, a)$.]])

3. #strong[Caso c) – Ciclo con inversione di carico ($C_(m i n) lt.eq C(t) lt.eq C_(m a x)$ con $C_(m a x) > 0$ e $C_(m i n) < 0$, ossia $C_(m i n) lt.eq 0 lt.eq C_(m a x)$):]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[Il carico esterno inverte il proprio segno durante il ciclo. In corrispondenza di $C_(m a x) > 0$ la vite subisce un sovraccarico al di sopra del livello $F_(v, "lim")$; in corrispondenza di $C_(m i n) < 0$ il segmento di carico si colloca a sinistra del punto di equilibrio, per cui la vite si scarica al di sotto di $F_(v, "lim")$ mentre le parti risultano ulteriormente compresse. La variazione $Delta C_(m i n, v)$ assume quindi segno negativo:

$ Delta C_(m i n, v) = C_(m i n) frac(delta_p, delta_v + delta_p) < 0 $

Le forze del ciclo mantengono le espressioni generali, tenendo conto del segno negativo di $Delta C_(m i n, v)$:

$ F_(v, m a x) = F_(v, "lim") + Delta C_(m a x, v), quad F_(v, m i n) = F_(v, "lim") + Delta C_(m i n, v) $

$ F_(v, m) = frac(F_(v, m a x) + F_(v, m i n), 2), quad F_(v, a) = frac(F_(v, m a x) - F_(v, m i n), 2) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di interferenza per il Caso c) ($C_(m i n) lt.eq 0 lt.eq C_(m a x)$). Assi: ordinata $|F_p|, |F_v|$, ascissa $u$. Il segmento verticale $C_(m a x)$ si trova a destra del punto di equilibrio $F_(v, "lim")$ (estremo superiore sulla vite pari a $F_(v, m a x)$), mentre il segmento verticale $C_(m i n)$ si trova a sinistra del punto di equilibrio (estremo inferiore sulla vite pari a $F_(v, m i n)$). Sono quotate la salita $Delta C_(m a x, v)$ sopra $F_(v, "lim")$ e la discesa $Delta C_(m i n, v)$ sotto $F_(v, "lim")$. A destra la sinusoide $Delta C_v (t)$ oscilla attorno al livello medio $F_(v, m)$ tra $F_(v, m i n)$ e $F_(v, m a x)$ con semiampiezza $F_(v, a)$.]])

=== Interventi per migliorare la resistenza a fatica
Per ridurre l'incidenza del carico affaticante sul collegamento filettato è possibile intervenire attraverso le seguenti soluzioni progettuali:

- utilizzare viti rullate a freddo (non a caldo);
- utilizzare viti più deformabili, in particolare ricorrendo all'alleggerimento del gambo;
- aumentare il numero di viti in modo da diminuire il carico $C$ agente sul singolo elemento;
- cambiare la classe del materiale (intervento tuttavia meno efficace rispetto al caso statico).

L'impiego di viti alleggerite risulta particolarmente conveniente a fatica poiché riduce la quota parte di carico assorbita dalla vite e quindi le tensioni nella zona filettata. Sebbene le tensioni nella porzione di gambo alleggerita risultino più elevate a causa della sezione minore, in tale zona non sono presenti gli intagli dovuti alla filettatura e la resistenza a fatica è sensibilmente maggiore (considerando che il diagramma di Haigh di riferimento è valido per la zona filettata).

In ambito esclusivamente aeronautico si impiegano inoltre le viti #strong[MJ - ISO 3161 (1977)], caratterizzate da un profilo del filetto modificato per ridurre l'effetto di intaglio locale (prodotte esclusivamente mediante rullatura).

=== Dispositivi antisvitamento e sistema dado-controdado
In condizioni statiche lo svitamento spontaneo della vite è impedito se $alpha_m > phi.alt$; tuttavia, in esercizio, l'azione di sovraccarichi, vibrazioni e scosse può comunque innescare lo svitamento spontaneo.

Esistono diversi dispositivi unificati contro lo svitamento:

- rosette elastiche UNI 1751 (1988);
- rosette con nasello UNI 6599 (1969);
- rosette con linguetta UNI 6600 (1969);
- piastrine UNI 6601 (1969);
- dadi esagonali ad intagli UNI 5593-5594-5596;
- dadi esagonali autobloccanti unificati in campo aerospaziale UNI EN 3377 e UNI EN 3723 (1996);
- prodotti adesivi "frenafiletti".

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Una soluzione tradizionale è rappresentata dal sistema #strong[dado-controdado]. Quando il dado è serrato e il controdado viene portato al primo contatto, entrambi presentano i filetti appoggiati sullo stesso fianco rispetto alla vite. Serrando successivamente il controdado contro il dado, il dado viene progressivamente scaricato e compresso verso l'alto, invertendo il fianco di contatto con i filetti della vite. Il tratto di gambo compreso fra dado e controdado si comporta come una molla che ostacola il movimento relativo aumentando le forze d'attrito alle interfacce.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di funzionamento del sistema dado-controdado. A sinistra: sezione di vite con dado e controdado nella fase "Dado serrato, primo contatto dado-controdado", con i fianchi di contatto dei filetti orientati nello stesso verso. Al centro: fase "Controdado serrato", con cerchi rossi che evidenziano l'inversione del fianco di contatto sui filetti del dado rispetto al controdado. A destra: diagramma a barre colorate che mostra la distribuzione del carico lungo i filetti (in arancione "Filetto Controdado", in blu "Filetto dado" con inversione di verso, e in verde "Filetti vite").]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella pratica costruttiva si utilizzano spesso dado e controdado di altezza diversa: poiché il carico viene sopportato prevalentemente dal controdado (che lavora contro il dado esattamente come un dado singolo contro il pezzo, concentrando la pressione sui primi filetti), il controdado deve essere realizzato di altezza maggiore per rendere più uniforme la distribuzione del carico sui filetti. Il dado, invece, beneficia dell'inversione di carico indotta dal controdado e risulta meno sollecitato sui primi filetti, potendo quindi avere altezza minore.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Confronto costruttivo tra altezze di dado e controdado. A sinistra ("NO"): dado più alto/spesso accostato al pezzo e controdado più basso all'estremità. A destra ("SI"): dado più basso accostato al pezzo e controdado più alto all'estremità.]])

=== Casi particolari: carico applicato non sottotesta
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Quando il carico esterno non è applicato al sottotesta della vite (configurazione A), bensì a sezioni interne delle parti serrate (configurazione B), la condizione di equilibrio e la ripartizione del carico subiscono una modifica sostanziale.

Indicando con $L_p$ lo spessore complessivo delle parti (pari a $L_v$ nella configurazione A), nella configurazione B il pezzo viene suddiviso dai piani di applicazione del carico in tre porzioni di lunghezza $L_a$, $L_b$ (compresa tra i due punti di applicazione del carico) e $L_c$. Si definisce il rapporto geometrico:

$ n = frac(L_b, L_p) < 1, quad (1 - n) = frac(L_a + L_c, L_p) $

La deformabilità complessiva del pezzo risulta $delta_p = delta_p^a + delta_p^b + delta_p^c$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Confronto geometrico e modello a molle tra carico al sottotesta (A) e carico non sottotesta (B). In alto: schemi dei due giunti bullonati di lunghezza $L_p$ con forze applicate all'esterno in (A) e in sezioni interne in (B) che definiscono le quote $L_a, L_b, L_c$. In basso: modelli a molle "prima del montaggio" (con interferenza $i$ indicata in alto) e "dopo il montaggio", dove in (A) una molla $delta_p$ è collegata a una molla $delta_v$, mentre in (B) la parte è divisa in tre molle in serie $delta_p^a$, $delta_p^b$, $delta_p^c$ collegate in parallelo alla molla $delta_v$ della vite.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella configurazione nominale al sottotesta (A) le deformabilità valgono:

$ delta_v = frac(L_v, E_v dot.op A_v), quad delta_p = frac(L_p, E_p dot.op A_p) $

Nel caso di carico non al sottotesta (B), l'applicazione del carico esterno $C$ comprime la sola zona centrale $L_b$, mentre le due porzioni esterne $L_a$ e $L_c$ vengono scaricate e si comportano in serie con la vite. Di conseguenza la deformabilità equivalente del pezzo diminuisce, mentre quella equivalente della vite aumenta:

$ delta_p^* equiv delta_p^b = frac(L_b, E_p dot.op A_p) = frac(n dot.op L_p, E_p dot.op A_p) < delta_p $

$ delta_v^* = frac(L_v, E_v dot.op A_v) + frac(L_a, E_p dot.op A_p) + frac(L_c, E_p dot.op A_p) = delta_v + (1 - n) delta_p > delta_v $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schemi delle molle sotto carico $C$ per i casi (A) e (B). In alto (A): due molle affiancate con carico $C$ applicato alle estremità ($L_p = L_v$). In basso (B): tre molle per il pezzo ($delta_p^a$, $delta_p^b$, $delta_p^c$) affiancate a $delta_v$, con il carico $C$ applicato ai nodi che racchiudono la sola molla centrale $delta_p^b$.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Sul diagramma di interferenza questo equivale a una rotazione delle due rette caratteristiche attorno al punto di equilibrio $F_v$: la caratteristica della vite ruota diventando meno ripida (vite più deformabile) e la caratteristica del pezzo ruota diventando più ripida (pezzo più rigido). Il segmento del carico esterno $C$ trasla quindi verso il basso lungo il diagramma:

- per la vite, la quota parte di carico assorbita si riduce rispetto al caso (A); pertanto, ai fini della resistenza della vite è sempre cautelativo assumere il carico come applicato al sottotesta (A);
- per le parti serrate, invece, il carico minimo residuo $F_(p, m i n)$ scende drasticamente, aumentando in modo critico la possibilità di distacco tra le superfici ($F_(p, m i n) = 0$). In tale eventualità viene meno la tenuta o la forza di attrito tra le parti e l'intero carico esterno grava sulla vite, condizione assolutamente da evitare dal punto di vista funzionale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di interferenza comparativo tra configurazione (A) e (B). Assi: ordinata $|F_p|, |F_v|$, ascissa $u$. Dal punto di equilibrio $F_v$ partono due coppie di rette: in tratteggio le caratteristiche di "A: vite" e "A: pezzo", in linea continua le caratteristiche ruotate di "B: vite" (meno pendente) e "B: pezzo" (più pendente). Sono evidenziati due segmenti verticali di uguale lunghezza $C$: quello giallo relativo a "C (carico qui al sottotesta)" e quello rosso traslato più in basso relativo a "C (carico qui NON al sottotesta)", che mostra la riduzione di carico sulla vite ma l'abbassamento del punto inferiore sul pezzo verso $u = 0$.]])

=== Casi particolari: elemento elastico tra i pezzi (flange con guarnizione)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'interposizione di un elemento elastico morbido tra le parti serrate, come una guarnizione, provoca un incremento molto elevato della deformabilità complessiva del pezzo $delta_p$. Sul diagramma di interferenza la caratteristica del pezzo assume una pendenza estremamente dolce, comportando che il carico esterno $C$ venga sopportato quasi interamente dalla vite ($Delta C_v tilde.eq C$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma di interferenza con elemento elastico tra i pezzi. Assi: ordinata $|F_p|, |F_v|$, ascissa $i$. La retta della vite è molto ripida, mentre la retta del pezzo scende con pendenza molto ridotta dal punto di equilibrio $F_(v, "lim")$ verso destra. Il segmento di carico verticale collocato a destra dell'equilibrio mostra che l'incremento sulla vite $Delta C_v$ è pressoché uguale all'intero carico esterno ($Delta C_v tilde.eq C$).]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nelle applicazioni industriali, quali le flange bullonate per tubazioni o recipienti in pressione contenenti gas o liquidi, si adotta una configurazione che prevede l'alloggiamento della guarnizione in una specifica sede ricavata tra le due flange. Durante la fase iniziale del serraggio la coppia applicata comprime la guarnizione (che dilata trasversalmente riempiendo la sede, evitando tuttavia che sbordi nella luce tra le flange impedendone la chiusura), finché le superfici metalliche delle due flange non giungono a contatto diretto. Da tale istante in poi, la deformabilità dominante del sistema diventa quella dei due metalli a contatto e non più quella della guarnizione.

Sul diagramma di interferenza questo comportamento si traduce in una caratteristica poligonale (bilineare) per la parte: a partire dal punto di equilibrio $F_(v, "lim")$ verso destra si ha un primo tratto molto ripido (regime di contatto metallo-metallo), seguito da un cambio di pendenza oltre il quale la curva prosegue con inclinazione molto dolce (regime governato dalla sola guarnizione in seguito al distacco dei metalli). In esercizio è fondamentale dimensionare il collegamento affinché il carico esterno non porti il sistema oltre il punto di cambio di pendenza, evitando il distacco delle flange metalliche che causerebbe eccessiva cedevolezza e perdita di tenuta.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Rimedio per flangia bullonata con guarnizione e relativo diagramma di interferenza composito. In alto: sezione di una flangia bullonata con bullone passante e guarnizione (in verde) alloggiata in una cava interna, con le due superfici metalliche delle flange a contatto. In basso: diagramma di interferenza con assi $|F_p|, |F_v|$ e $i$; dal punto di equilibrio $F_(v, "lim")$ la caratteristica del pezzo scende inizialmente con pendenza elevata fino al livello indicato da $F_e$ e poi prosegue con pendenza molto ridotta fino all'asse $i$, mentre una freccia verticale a destra del gomito indica il carico $F_p$.]])

=== Viti con carico trasversale
Le viti non devono lavorare direttamente a taglio poiché, qualora si verifichi un movimento relativo tra i pezzi serrati, oltre alla sollecitazione di taglio insorge anche un'elevata sollecitazione di flessione sul fusto. Quando i collegamenti bullonati sono impiegati per prevenire movimenti reciproci trasversali dovuti a una forza tagliante $F_T$, si ricorre a tre possibili soluzioni costruttive:

1. #strong[Viti passanti (collegamento ad attrito):]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[Si sfrutta il precarico assiale per generare tra le superfici a contatto delle parti una forza d'attrito $f dot.op F_(p, m i n)$ sufficiente a impedire lo scorrimento relativo. Il carico minimo sul pezzo da garantire sul diagramma di interferenza risulta:

$ F_(p, m i n) = frac(F_T dot.op C S, f dot.op n dot.op m) $

dove $F_T$ è la forza trasversale totale, $C S$ è il coefficiente di sicurezza ($1.25 div 1.6$), $f$ è il coefficiente di attrito tra le superfici, $n$ è il numero di bulloni e $m$ è il numero di superfici di contatto fra i pezzi (ad esempio $m = 1$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di collegamento con vite passante soggetta a carico trasversale $F_T$. Due blocchi serrati da un bullone passante; il blocco superiore è spinto verso il basso dalla forza $F_T$, mentre all'interfaccia verticale fra i due blocchi è indicata la forza di attrito resistente $f dot.op F_(p, m i n)$ diretta verso l'alto; il blocco inferiore è vincolato a terra.]])

2. #strong[Viti con gambo calibrato:]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[È una soluzione molto costosa nella quale il gambo della vite viene calibrato nello spessore per estendersi attraverso le superfici interne dei blocchi e fungere da ostacolo meccanico diretto allo scorrimento. Le viti calibrate vengono calcolate come i chiodi, verificando il taglio e la pressione specifica di contatto riferiti al materiale della vite:

$ tau = frac(F_T, m dot.op n dot.op A) = frac(F_T dot.op 4, m dot.op n dot.op pi dot.op d^2) lt.eq tau_("amm"), quad tau_("amm") = 0.4 div 0.6 R_(p 0.2) $

$ sigma = frac(F_T, n dot.op d dot.op s) lt.eq sigma_("amm"), quad sigma_("amm") = 0.75 div 0.6 R_m [?] $

dove $d$ è il diametro del gambo calibrato e $s$ è la lunghezza della superficie d'appoggio (spessore del pezzo sollecitato).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di collegamento con vite a gambo calibrato. Il bullone attraversa due blocchi spinti da forze trasversali opposte $F_T$; la porzione centrale cilindrica senza gioco tra i due blocchi ha diametro quotato $d$ e appoggia sul blocco inferiore per uno spessore quotato $s$.]])

3. #strong[Inserzione di bussole:]
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    align: (left + horizon, center + horizon),[Per proteggere la sezione della vite dall'azione di taglio si interpone una bussola cilindrica cava che sopporta lo sforzo trasversale al posto del gambo della vite. Anche la bussola viene calcolata come un chiodo cavo (con riferimento al materiale della bussola), verificando il taglio sulla sezione resistente anulare di diametro esterno $d_e$ e diametro interno $d_i$ e la pressione specifica sulla lunghezza di appoggio $L_p$:

$ tau = frac(F_T, m dot.op n dot.op A) = frac(F_T dot.op 4, m dot.op n dot.op pi dot.op (d_e - d_i)^2 [?]) lt.eq tau_("amm"), quad tau_("amm") = 0.4 div 0.6 R_(p 0.2) $

$ sigma = frac(F_T, d_e dot.op L_p dot.op n) lt.eq sigma_("amm"), quad sigma_("amm") = 0.75 div 0.6 R_m [?] $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di collegamento con bussola. Due piastre soggette a forze trasversali opposte $F_T$ sono attraversate da un bullone attorno al cui gambo è inserita una bussola cilindrica cava di diametro esterno $d_e$, diametro interno $d_i$ e lunghezza d'appoggio sulla piastra destra quotata $L_p$.]])
