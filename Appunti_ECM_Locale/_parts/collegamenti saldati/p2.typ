#import "../../figs/_helpers.typ": fig-safe, img-flag

== Progettazione e verifica
=== Quadro normativo e certificazioni

La progettazione e il controllo di un giunto saldato dipendono dal processo tecnologico di esecuzione, dall'abilità dell'operatore e dalle verifiche strutturali successive. La normativa tecnica di riferimento copre quattro livelli:

- *Processi e giunti (UNI 1307).* Classifica i procedimenti di saldatura e le geometrie dei giunti.
- *Qualificazione del procedimento (ASME PQR/WPS).* Certifica i parametri tecnologici e la procedura di saldatura (*Procedure Qualification Record* / *Welding Procedure Specification*).
- *Qualificazione dell'operatore (ASME WPQ).* Abilita il saldatore manuale tramite patentino (*Welder Performance Qualification*) in base a tecnologia, posizione ed accessibilità.
- *Controllo e calcolo strutturale.* Prevede controlli non distruttivi (RX, US) sul cordone e verifiche di resistenza statica e a fatica secondo l'*Eurocodice 3* (UNI EN 1993-1-8 e UNI EN 1993-1-9).

=== Difetti tipici nei cordoni di saldatura

Ogni processo tecnologico introduce imperfezioni: le discontinuità rilevate tramite controlli non distruttivi diventano *difetti* quando superano i limiti di accettabilità (per tipologia, dimensione, posizione e concentrazione) fissati dalle normative di riferimento (UNI, ASME, IIW / Istituto Italiano ed Europeo di Saldatura) attraverso atlanti radiografici comparativi.

Per interpretare le tavole comparative riportate di seguito occorre leggere i tre livelli in verticale:
- *a) Sezione trasversale del giunto*, che mostra la forma del cianfrino e la posizione della discontinuità;
- *b) Profilo di densità radiografica* (alta verso l'alto, bassa verso il basso): dove lo spessore metallico è maggiore (sovrametallo del cordone) i raggi X vengono maggiormente attenuati e la lastra risulta più chiara (*bassa densità ottica*), mentre cavità, mancanze di materiale o scorie lasciano passare più radiazione creando zone più scure sul referto (*alta densità ottica*); fa eccezione il *tungsteno*, più denso dell'acciaio, che produce macchie molto chiare e lucenti;
- *c) Referto radiografico*, nel quale i difetti compaiono come tracce o macchie prevalentemente più scure all'interno della banda più chiara del cordone.

==== Inclusioni di scoria, incollatura, mancanza di penetrazione e cordone incompleto

- *Inclusioni di scoria (puntiformi).* Residui non metallici derivanti dal rivestimento dell'elettrodo, dal suo stato di conservazione o da scarsa pulizia tra le passate nella saldatura manuale; in radiografia compaiono come piccole macchie scure dai bordi irregolari all'interno del cordone.
- *Incollatura.* Mancata adesione lungo una faccia del cianfrino tra metallo d'apporto e materiale base; sul referto radiografico si presenta come una linea scura sottile e laterale, spesso difficile da individuare senza occhio esperto.
- *Mancanza di penetrazione.* Causata da eccessiva velocità di passata o riempimento incompleto al vertice (radice) del cianfrino; produce una linea scura longitudinale marcata e continua lungo l'asse centrale del cordone.
- *Cordone incompleto.* Riempimento insufficiente del vano di saldatura rispetto allo spessore delle lamiere; la riduzione diffusa di spessore genera una fascia scura ampia e relativamente regolare lungo il cordone.

#align(center)[
  #fig-safe(include "../../figs/p2-fig01.typ", max-h: 9.5cm)
]

#v(0.4em)

==== Difetti geometrici di profilo, porosità e soffiature

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Insellamento.* Avvallamento o cedimento locale al piede o sulla superficie del cordone che riduce la sezione resistente e genera una fascia scura longitudinale ben definita sul referto radiografico.
    - *Incisione marginale.* Solco scavato lungo i bordi (piedi) del cordone nel metallo base; oltre a manifestarsi in radiografia come due fasce scure laterali parallele al cordone, introduce un severo *effetto d'intaglio geometrico* particolarmente critico a fatica.
    - *Porosità e soffiature (Fig. 93.1).* Inclusioni tondeggianti vuote o riempite di gas/vapore acqueo rimaste intrappolate nella solidificazione (convenzionalmente *porosità* se $phi <= 1" mm"$, *soffiature* se $phi >= 1" mm"$). In radiografia appaiono come macchie scure circolari simili a piccole nuvolette o bolle congelate nel cordone.
      - _Origini principali:_ elettrodi basici umidi o mal conservati, arco troppo lungo, lembi ossidati o ambiente umido (saldatura elettrica manuale); fiamma mal regolata o eccesso di carbonio/acetilene (ossiacetilenica); arco troppo lungo o gas inerte insufficiente/impuro (TIG / ArgonArc); carenza di flusso protettivo (arco sommerso, poco probabili).
  ],
  [
    #fig-safe(include "../../figs/p2-fig02.typ", max-h: 11.5cm)
  ],
)

#v(0.4em)

==== Tarli e inclusioni di scoria allungate o allineate

#grid(
  columns: (1.15fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Tarli e nidi di tarli (Fig. 93.2).* Inclusioni di gas non tondeggianti, singole o raggruppate, originate dall'unione di più pori ravvicinati durante il raffreddamento. Sul referto radiografico compaiono come macchie scure allungate a bordi lisci, piccoli segmenti o caratteristiche configurazioni a *spina di pesce* distribuite in gruppi.
      - _Origini principali:_ cattiva tecnica operativa con elettrodi basici, elettrodi umidi o di scarsa qualità, corrente di saldatura eccessiva o ambiente umido nella saldatura elettrica manuale (poco probabili in ossiacetilenica, TIG e arco sommerso).
    - *Inclusioni di scoria allungate o allineate (Fig. 93.3).* Ossidi o sottoprodotti del processo rimasti racchiusi e allineati lungo il metallo saldato; appaiono come linee scure sensibilmente larghe, irregolari, continue o interrotte lungo la direzione del cordone (rispetto ai tarli tendono a presentarsi in modo più discreto e localizzato zona per zona).
      - _Origini principali:_ scarsa pulizia della scoria a fine passata, profilo irregolare delle passate sottostanti, scarsa abilità del saldatore o cattiva preparazione dei lembi (saldatura manuale); passata inferiore con profilo eccessivamente convesso (arco sommerso).
  ],
  [
    #fig-safe(include "../../figs/p2-fig03.typ", max-h: 8.5cm)
  ],
)

#v(0.8em)

==== Inclusioni di tungsteno e mancanza di fusione

#grid(
  columns: (1.05fr, 1.05fr),
  column-gutter: 1.4em,
  align: (left + horizon, center + horizon),
  [
    - *Inclusioni di tungsteno (Fig. 93.4).* Inclusioni tondeggianti o irregolari esclusive della saldatura TIG (*ArgonArc*), provocate dal contatto accidentale dell'elettrodo infusibile in tungsteno con il bagno fuso o il materiale base. Per l'elevata densità del tungsteno rispetto all'acciaio, attenuano fortemente la radiazione e si riconoscono con facilità come *macchie bianchissime e lucenti* di forma e dimensioni variabili.
    - *Mancanza di fusione (Fig. 93.5).* Imperfetta o mancata fusione tra materiale base e metallo d'apporto lungo un fianco del cianfrino. Sul referto radiografico genera una *linea scura, finissima e fuori centro* (a differenza della mancanza di penetrazione, che si localizza sull'asse centrale del cordone).
      - _Origini principali:_ eccessiva distanza o slivellamento dei lembi, eccessiva velocità di avanzamento, posizione di lavoro sfavorevole (es. sopratesta), potenza eccessiva del cannello (ossiacetilenica) o corrente di saldatura insufficiente (arco sommerso/Sigma).
  ],
  [
    #fig-safe(include "../../figs/p2-fig04.typ", max-h: 8.5cm)
  ],
)

#v(0.8em)
#pagebreak()
=== Cricche a caldo e a freddo

A differenza delle imperfezioni precedenti (che entro limiti normativi possono essere tollerate), la *cricca* costituisce un danneggiamento strutturale già in atto, in grado di propagare rapidamente sotto carichi ciclici o dinamici fino al collasso. La presenza di cricche comporta *sempre la non accettazione* e il rifacimento del cordone; sul referto radiografico appaiono come tracce corte e scure, trasversali o longitudinali rispetto all'asse del cordone.

- *Cricche a caldo (oltre i $700 degree"C"$).* Si formano durante la solidificazione per la presenza di un bagno arricchito di impurezze (principalmente zolfo $"S"$ e fosforo $"P"$) dovute a elettrodi non puliti, e si localizzano prevalentemente verso il *centro del cordone*.
- *Cricche a freddo (a fine raffreddamento o ritardate).* Insorgono durante o dopo il raffreddamento per la diversa solubilità dell'idrogeno ($"H"_2$) nel metallo caldo e freddo (rivestimenti di elettrodi umidi, flussi esterni o interni in arco sommerso o MIG/MAG) e si localizzano ai *bordi del cordone* o nella *zona termicamente alterata* (ZTA) del materiale base.

Negli impianti *safety-critical* (industria chimica, nucleare, piattaforme *offshore*), i giunti sono sottoposti a ispezioni periodiche programmate (intervalli massimi di circa 6 mesi) confrontando nel tempo i referti radiografici per verificare l'eventuale comparsa o propagazione di difetti.

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 0.8em,
  align: center + top,
  [
    #fig-safe(image("../../images/collegamenti-saldati/cricca-macrografia.png"), max-h: 3.4cm, caption: [Cricca in ZTA (macrografia)])
  ],
  [
    #fig-safe(image("../../images/collegamenti-saldati/cricca-penetranti.png"), max-h: 3.4cm, caption: [Evidenziazione con \ liquidi penetranti])
  ],
  [
    #fig-safe(
      box(
        width: 5.2cm,
        height: 3.4cm,
        clip: true,
        place(
          top + left,
          dx: -1.6cm,
          image("../../images/collegamenti-saldati/cricca-magnetoscopia-uv.png", width: 10.01cm, height: 3.4cm),
        ),
      ),
      max-h: 3.4cm,
      caption: [Magnetoscopia a luce di Wood (UV)],
    )
  ],
)

=== Controlli non distruttivi (CND)
==== Controllo radiografico (RX) e ispezione visiva
#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La radiografia sfrutta l'attenuazione differenziale dei raggi X attraverso il cordone: cavità e scorie a bassa densità lasciano passare più radiazione (zone scure sulla pellicola), mentre inclusioni dense come il tungsteno la attenuano (zone chiare). Accanto all'ispezione visiva diretta o robotizzata — svolta con droni o sonde endoscopiche a fibre ottiche all'interno di recipienti in pressione (*analogia laparoscopica*) — sistemi mobili di tomografia a raggi X (es. *TomoWeld* per tubazioni nucleari) consentono di ricostruire il volume 3D del cordone, misurando con precisione profondità e dimensione delle cricche in zone ad accesso ridotto.
  ],
  [
    #fig-safe(include "../../figs/p2-rx-principio.typ", max-h: 4.5cm)
    #v(0.3em)
    #fig-safe(image("../../figs/ecm-c11-p2-03.jpg"), max-h: 2.5cm, caption: [Referto RX reale con inclusioni chiare di tungsteno])
  ],
)

==== Controllo con ultrasuoni (US)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Un trasduttore piezoelettrico, accoppiato alla superficie tramite un gel o olio (*couplant*), emette impulsi ultrasonori che propagano nel materiale alla velocità del suono e vengono riflessi o rifratti dalle discontinuità. In modalità *pulse-echo*, sullo schermo compaiono l'impulso iniziale e l'eco di fondo (*back wall echo*); un difetto interno genera un'eco anticipata la cui posizione temporale fornisce la profondità, oltre a eventuali *effetti diffrattivi nello spazio e nel tempo* e fenomeni di interferenza d'onda utili a stimare dimensione e orientamento della cricca. Sonde angolate (es. a $45°$ nei fori di assali ferroviari cavi) rilevano cricche esterne distinguendole dalle riflessioni geometriche di spallamento (*contour echoes*).
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-02.typ") /* Principio del controllo ad ultrasuoni con trasduttore emettitore/ricevente e riflessione sul difetto */
  ],
)

#v(0.8em)

==== Magnetoscopia e liquidi penetranti
Entrambi i metodi rilevano esclusivamente difetti affioranti in superficie (o sub-superficiali prossimi alla pelle), risultando rapidi e qualitativi rispetto a RX e US.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Magnetoscopia.* Si applica un campo magnetico al pezzo cosparso di particelle ferromagnetiche in sospensione. Un difetto trasversale alle linee di flusso le perturba generando un flusso disperso esterno che attira le particelle lungo i bordi della cricca (mentre difetti paralleli al flusso risultano scarsamente perturbanti); l'osservazione sotto *luce di Wood* (UV) rende fluorescente la traccia del difetto.
  ],
  [
    #fig-safe(include "../../figs/p2-magnetoscopia.typ") /* Perturbazione delle linee di flusso magnetico in presenza di cricche superficiali e sub-superficiali */
  ],
)

#v(0.8em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Liquidi penetranti.* Dopo sgrassatura, si applica un liquido rosso ad alta bagnabilità che penetra nelle cricche per *capillarità*. Rimossa l'eccedenza superficiale, uno spray *sviluppatore* bianco richiama il colorante dal difetto rendendolo visibile. Applicando penetrante e sviluppatore su facce opposte si verifica anche la tenuta a difetti passanti.
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-04.typ") /* Sequenza operativa del controllo con liquidi penetranti */
  ],
)

#block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt)[
  *Indicazione d'esame (difetti e CND):* all'esame scritto può essere richiesto di descrivere genericamente i difetti tipici dei cordoni di saldatura distinguendo la pericolosità delle *cricche* rispetto alle altre imperfezioni, e di *citare* i principali controlli non distruttivi (senza dover disegnare gli schemi o illustrarne nel dettaglio il funzionamento strumentale).
]

=== Verifica statica secondo Eurocodice 3 (UNI EN 1993-1-8)
La norma *UNI EN 1993-1-8* (*Eurocode 3 — Design of steel structures, Part 1-8: Design of joints*) si applica alle costruzioni in acciaio da carpenteria con acciai strutturali *S235, S275, S355, S420, S460* (dove il numero indica la tensione di snervamento $f_y$ in $"MPa"$) e distingue la verifica dei *giunti testa a testa* (*butt welds*, sez. 4.7) da quella dei *giunti con cordone d'angolo* (*fillet welds*, sez. 4.5).

==== Giunti testa a testa e a T a completa penetrazione
Per i giunti testa a testa a completa penetrazione (sez. 4.7), l'Eurocodice non prescrive una procedura dedicata ma assume la *resistenza della giunzione pari a quella minore delle parti collegate*. Il cordone ricostruisce integralmente la continuità delle lamiere di spessore $s$, larghezza $H$ e lunghezza $L$; nel riferimento solidale al cordone agiscono tre componenti di tensione:
- $sigma_perp$: tensione di trazione e/o compressione *normale* alla sezione longitudinale del cordone;
- $tau_parallel$: tensione tangenziale nella sezione longitudinale (*parallela* all'asse del cordone);
- $sigma_parallel$: tensione di trazione e/o compressione *parallela* all'asse del cordone.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    #fig-safe(include "../../figs/ecm-c11-p2-05.typ") /* Giunto testa a testa con dimensioni s, H, L e componenti di tensione */
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-06.typ") /* Giunto a T a completa penetrazione con dimensioni s, H, L e componenti di tensione */
  ],
)

#v(0.6em)

#grid(
  columns: (1.15fr, 0.95fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    La *sezione resistente* $A_"res"$ del cordone dipende dalla direzione della sollecitazione:
    - per tensioni derivanti da azioni *normali all'asse* del cordone ($sigma_perp$) e da azioni di *taglio* ($tau_parallel$):
      $ A_"res" = L dot s $
    - per tensioni derivanti da azioni di trazione/compressione *parallele all'asse* del cordone ($sigma_parallel$):
      $ A_"res" = H dot s $
   
  ],
  [
    #fig-safe(include "../../figs/p2-statica-testa-ares.typ", max-h: 5.5cm)
  ],
)
Dove $L$ è la lunghezza del cordone, $s$ è il *minore degli spessori collegati* (oppure lo spessore dell'elemento a completa penetrazione) e $H$ è la larghezza totale (materiale base + materiale d'apporto). \ 
Per materiali duttili si calcola la tensione ideale secondo l'ipotesi dell'energia di *Von Mises* e la si confronta con il limite di resistenza $R$ delle parti collegate (verificando sia lo snervamento sia la rottura) ridotto dal coefficiente di sicurezza statico $S approx 1.5$:

$ sigma_"id" = sqrt(sigma_perp^2 + sigma_parallel^2 - sigma_perp sigma_parallel + 3 tau_parallel^2) <= R / S $

==== Giunti a cordone d'angolo: metodo direzionale (sez. 4.5.3.2)
#grid(
  columns: (1.05fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Nel riferimento globale di un giunto con cordone d'angolo (di lunghezza geometrica $l$) agiscono:
    - $sigma$: tensione normale (trazione/compressione) perpendicolare all'asse del cordone sulle due facce ortogonali;
    - $tau$: tensione tangenziale lungo l'asse del cordone;
    - eventuale $sigma_parallel$ nella sezione trasversale del cordone: *da non considerare* per prescrizione normativa (per evitare ambiguità interpretative rispetto a $tau$ e in coerenza con l'evidenza sperimentale).
  ],
  [
    #fig-safe(include "../../figs/p2-statica-angolo-globali.typ", max-h: 5.8cm)
  ],
)

#v(0.8em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Sia per tensioni normali sia per tensioni tangenziali, la sezione critica di riferimento per il calcolo statico è la *sezione di gola*, ovvero il piano inclinato a $45°$ perpendicolare al flusso di tensione attraverso il cordone, sul quale si assume una distribuzione uniforme delle tensioni (*plasticizzazione*).
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-07.typ") /* Flusso delle tensioni attraverso i cordoni d'angolo e individuazione della sezione di gola */
  ],
)

#v(0.8em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'area resistente vale $A_"res" = L dot a$, dove:
    - $a$ è l'*altezza di gola* del triangolo inscritto nella sezione trasversale del cordone (per piede simmetrico $p$: $a = p / sqrt(2)$);
    - $L = l - 2 a$ è la *lunghezza effettiva* del cordone, ottenuta sottraendo un tratto $a$ a ciascuna estremità per tenere conto degli effetti di bordo.
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-08.typ") /* Prisma triangolare del cordone d'angolo con piede p, altezza di gola a e lunghezza efficace */
  ],
)

#v(0.8em)

#grid(
  columns: (1.05fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    Nel *1° metodo (Directional Method)*, le tensioni si esprimono nel sistema di riferimento locale della sezione di gola: $sigma_perp^g$ (normale alla sezione di gola), $tau_perp^g$ (tangenziale perpendicolare all'asse) e $tau_parallel^g$ (tangenziale parallela all'asse), mentre $sigma_parallel^g$ *non si considera*. La verifica richiede il soddisfacimento simultaneo del criterio di Von Mises e del limite sulla sola tensione normale (affinché essa non risulti dominante):
  ],
  [
    #fig-safe(include "../../figs/p2-statica-gola-tensioni.typ", max-h: 5.8cm)
  ],
)

$ sqrt((sigma_perp^g)^2 + 3 ((tau_perp^g)^2 + (tau_parallel^g)^2)) <= frac(f_u, beta_w gamma_(M 2)) , quad sigma_perp^g <= frac(0.9 f_u, gamma_(M 2)) $

#grid(
  columns: (1fr, auto),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    dove $f_u$ è il carico di rottura del materiale base, $gamma_(M 2) = 1.25$ è il coefficiente di sicurezza parziale e $beta_w$ è il *fattore di correlazione* (rapporto tra la resistenza del materiale base e quella del materiale d'apporto), tabellato dalla norma in funzione dell'acciaio:
  ],
  [
    #table(
      columns: 6,
      align: center,
      stroke: 0.6pt,
      inset: 6pt,
      [*Materiale*], [*S235*], [*S275*], [*S355*], [*S420*], [*S460*],
      [*$f_u$ (MPa)*], [$360$], [$430$], [$510$], [$520$], [$540$],
      [*$beta_w$*], [$0.80$], [$0.85$], [$0.90$], [$1$], [$1$],
    )
  ],
)

==== Metodo semplificato (sez. 4.5.3.3) e vincoli dimensionali
In alternativa al metodo direzionale, il *2° metodo (Simplified Method)* formula la verifica in termini di *forza per unità di lunghezza* ($"N/mm"$), confrontando la forza risultante trasmessa dal cordone $F_(w,"Ed")$ con la forza resistente $F_(w,"Rd")$:

$ F_(w,"Ed") <= F_(w,"Rd") = f_("vw",d) dot a = frac(f_u / sqrt(3), beta_w gamma_(M 2)) dot a $

dove $f_("vw",d)$ rappresenta la resistenza a taglio della saldatura e $f_u, beta_w, gamma_(M 2)$ hanno gli stessi valori del metodo direzionale. _(Nota d'esame: questo secondo approccio, diffuso nella carpenteria civile/industriale, è richiamato per completezza normativa e non è richiesto negli esercizi d'esame.)_

Per garantire l'affidabilità tecnologica del cordone, l'Eurocodice prescrive inoltre i seguenti *vincoli dimensionali minimi*:

$ s > 4" mm" , quad a > 3" mm" , quad L > 30" mm" , quad L > 6 a $

=== Resistenza a fatica secondo Eurocodice 3 (UNI EN 1993-1-9)
==== Categorie di dettaglio e tensioni equivalenti
Per la verifica a fatica occorre conoscere la storia di carico nel tempo; nei giunti saldati non si fa riferimento alla tensione alternata $sigma_a$ ma all'*escursione di tensione* (*range*) $Delta sigma$ o $Delta tau$, estratta per storie ad ampiezza variabile mediante il metodo di conteggio *Rainflow* (versione *vasca da bagno* o *serbatoio*).

La resistenza a fatica dipende soprattutto dalla geometria costruttiva e dall'effetto d'intaglio locale più che dalla sola resistenza statica dell'acciaio: l'Eurocodice associa a ciascuna tipologia di giunto una *categoria di dettaglio* ($Delta sigma_C$ o $Delta tau_C$), pari all'escursione ammissibile ad ampiezza costante per $N_C = 2 dot 10^6$ cicli. Per spessori elevati ($t > 25" mm"$) si applica il fattore di riduzione dimensionale $k_s$ (es. $k_s = (25 / t)^(0.2)$ nelle tabelle dei dettagli):

$ Delta sigma_(C,"red") = k_s dot Delta sigma_C $

===== Ribaltamento della sezione di gola
A differenza della verifica statica (in cui si lavora sul piano inclinato della sezione di gola), a fatica la sezione di gola viene *ribaltata convenzionalmente su uno dei due lati globali* del cordone (faccia orizzontale o faccia verticale delle piastre) per operare nel riferimento macroscopico dei carichi esterni.

#align(center)[
  #fig-safe(include "../../figs/p2-fatica-ribaltamento.typ", max-h: 5.5cm)
]

A seconda della faccia scelta per il ribaltamento, la componente normale $sigma_perp$ e la componente tangenziale trasversale $tau_perp$ si *scambiano di ruolo* (mentre $tau_parallel$ giace sempre lungo l'asse del cordone); tuttavia la tensione equivalente perpendicolare all'asse del cordone risulta invariante rispetto alla scelta del piano di ribaltamento:

$ sigma_("wf") = sqrt(sigma_(perp f)^2 + tau_(perp f)^2) , quad tau_("wf") = tau_parallel $

Le tensioni di esercizio vengono inoltre amplificate dal coefficiente parziale sui carichi $gamma_("Ff") >= 1$, che tiene conto delle incertezze sulle azioni applicate.

==== Curve S-N per tensioni normali e tangenziali
Le curve di Wöhler ($Delta sigma_R^m dot N = "cost"$) per i dettagli saldati presentano un ginocchio prolungato rispetto agli alberi meccanici, con due tratti a vita finita prima del limite di fatica a $N_L = 10^8$ cicli:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Sollecitazioni normali ($Delta sigma$).* Il grafico mostra una famiglia di curve parallele: ciascuna corrisponde a una categoria di dettaglio $Delta sigma_C$ (l'escursione di tensione sopportata a $N_C = 2 dot 10^6$ cicli) ed è divisa in tre tratti:
      - *da $10^4$ a $N_D = 5 dot 10^6$ cicli ($m = 3$):* tratto più ripido, che passa per $(N_C, Delta sigma_C)$ e scende fino al limite di fatica ad ampiezza costante $Delta sigma_D$;
      - *da $5 dot 10^6$ a $N_L = 10^8$ cicli ($m = 5$):* tratto a pendenza ridotta (rilevante per carichi ad ampiezza variabile), che scende fino al limite di troncatura $Delta sigma_L$;
      - *oltre $N_L = 10^8$ cicli:* curva orizzontale, sotto $Delta sigma_L$ i cicli non producono danno ($N = infinity$).
      Applicando $Delta sigma^m dot N = "cost"$ tra un ginocchio e il successivo, i due punti di transizione valgono:
      $ Delta sigma_D = root(3, Delta sigma_C^3 frac(2 dot 10^6, 5 dot 10^6)) , quad Delta sigma_L = root(5, Delta sigma_D^5 frac(5 dot 10^6, 10^8)) $
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-13.typ") /* figura ecm-c11-p2-13, pagina 15: Fascio di curve S-N per particolari sollecitati a Delta sigma con pendenze m=3, m=5 e limi */
  ],
)

#v(0.8em)

#grid(
  columns: (1.05fr, 0.95fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Sollecitazioni tangenziali ($Delta tau$).* A differenza delle tensioni normali, per i dettagli sollecitati a taglio l'Eurocodice prevede solo due categorie di riferimento (sempre definite a $N_C = 2 dot 10^6$ cicli): $Delta tau_C = 100" MPa"$ per materiale base e giunti testa a testa a completa penetrazione, e $Delta tau_C = 80" MPa"$ per tutti gli altri casi (come cordoni d'angolo, flange tubolari o pioli saldati). Inoltre non c'è cambio di pendenza: le curve scendono con un'unica pendenza $m = 5$ da $10^4$ fino al limite di troncatura $N_L = 10^8$ cicli, oltre il quale diventano orizzontali (nessun danno sotto $Delta tau_L$).
  ],
  [
    #fig-safe(include "../../figs/ecm-c11-p2-14.typ", max-h: 5.0cm) /* figura ecm-c11-p2-14, pagina 15: Curve S-N per particolari sollecitati a Delta tau (categorie 100 MPa e 80 MPa) con pendenz */
  ],
)

#v(0.8em)

===== Effetto della tensione di compressione e tensioni nominali modificate
#grid(
  columns: (1.05fr, 1fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    - *Tensioni di compressione.* Nel materiale base o in giunti saldati che abbiano subito trattamenti per eliminare le tensioni residue di trazione, la porzione compressiva del ciclo risulta meno gravosa per l'apertura della cricca e viene pesata al $60\%$:
      $ Delta sigma = |sigma_"max"| + 0.6 |sigma_"min"| $
    
  ],
  [
    #fig-safe(include "../../figs/p2-fatica-compressione.typ", max-h: 5.0cm)
  ],
)
- *Tensioni nominali modificate.* In presenza di brusche variazioni geometriche (intagli) in prossimità del dettaglio costruttivo, le tensioni nominali vanno moltiplicate per un fattore di concentrazione geometrico delle tensioni indicato nella norma con $k_f$ (ricavato da manuali o da analisi agli elementi finiti): esso corrisponde al classico $K_t$ e *non va confuso* con il fattore di intaglio a fatica $K_f$.
==== Metodi di verifica e danno cumulativo di Miner
Per garantire un adeguato margine di sicurezza a fatica, l'Eurocodice agisce contemporaneamente sui carichi e sulle resistenze tramite due coefficienti parziali:
- *$gamma_("Ff") >= 1$ amplifica i carichi applicati*, definendo le escursioni di progetto $overline(Delta sigma_i) = gamma_("Ff") Delta sigma_i$ (e $overline(Delta tau_i) = gamma_("Ff") Delta tau_i$);
- *$gamma_("Mf") >= 1$ riduce le curve S-N di resistenza*, abbassandone i valori caratteristici:

$ overline(Delta sigma_C) = frac(Delta sigma_C, gamma_("Mf")) , quad overline(Delta sigma_D) = frac(Delta sigma_D, gamma_("Mf")) , quad overline(Delta sigma_L) = frac(Delta sigma_L, gamma_("Mf")) , quad overline(Delta tau_C) = frac(Delta tau_C, gamma_("Mf")) $

Il valore di $gamma_("Mf")$ dipende dalle conseguenze di un eventuale cedimento e dalla strategia di manutenzione adottata:
- *Damage tolerant* (_tollerante al danno_): si accetta la possibile presenza di piccoli difetti iniziali perché è previsto un piano di *ispezioni periodiche*, così da individuare e riparare eventuali cricche prima che diventino critiche (coefficienti più bassi);
- *Safe life* (_vita sicura_): non sono previste ispezioni obbligatorie, quindi il giunto deve resistere senza danneggiamento per l'intera vita utile richiesta (coefficienti più severi).

#align(center)[
  #table(
    columns: 3,
    align: (left, center, center),
    stroke: 0.6pt,
    inset: 6pt,
    [*Metodo di verifica*], [*Conseguenze lievi*], [*Conseguenze gravi*],
    [Damage tolerant], [$1.00$], [$1.15$],
    [Safe life], [$1.15$], [$1.25$],
  )
]

Quando il giunto è sottoposto a una storia di carico ad ampiezza variabile (scomposta tramite conteggio *rainflow* in più livelli $i$, ciascuno con $n_("Ei") = alpha_i N_"tot"$ cicli), si applica la regola del danno cumulativo di *Palmgren-Miner* (Annex A5). Ogni livello consuma una frazione di vita pari a $n_("Ei") / N_("Ri")$, e la somma complessiva non deve superare $1$ ($100\%$ della vita disponibile):

$ D_d = sum frac(n_("Ei"), N_("Ri")) = sum frac(alpha_i N_"tot", N_("Ri")) <= 1 $

Il numero di cicli a rottura $N_("Ri")$ si legge sulla *curva S-N ridotta* in corrispondenza della sollecitazione maggiorata $overline(Delta sigma_i)$ (o $overline(Delta tau_i)$), distinguendo in quale tratto ricade:
- se $overline(Delta sigma_i) >= overline(Delta sigma_D)$ _(1° tratto, $m = 3$)_: $quad N_("Ri") = frac(overline(Delta sigma_C)^3 dot 2 dot 10^6, overline(Delta sigma_i)^3)$
- se $overline(Delta sigma_L) <= overline(Delta sigma_i) < overline(Delta sigma_D)$ _(2° tratto, $m = 5$)_: $quad N_("Ri") = frac(overline(Delta sigma_D)^5 dot 5 dot 10^6, overline(Delta sigma_i)^5)$
- se $overline(Delta sigma_i) < overline(Delta sigma_L)$ _(sotto il limite di troncatura)_: $quad N_("Ri") = infinity$ _(contributo nullo al danno)_
- per tensioni tangenziali ($overline(Delta tau_i) >= overline(Delta tau_L)$, unico tratto $m = 5$): $quad N_("Ri") = frac(overline(Delta tau_C)^5 dot 2 dot 10^6, overline(Delta tau_i)^5)$

Infine, anche quando la verifica a fatica è soddisfatta, l'escursione di tensione deve rispettare il limite legato allo snervamento $f_y$ per evitare plasticizzazioni cicliche eccessive:

$ Delta sigma <= 1.5 f_y , quad Delta tau <= frac(1.5 f_y, sqrt(3)) $
