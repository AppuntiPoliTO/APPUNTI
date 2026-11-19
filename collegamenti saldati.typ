#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)


#set heading(numbering: "1.")
== Lezione 11: Saldature (Collegamenti Saldati) – Introduzione e Tecnologie


=== Introduzione generale e quadro normativo
In molte applicazioni meccaniche e strutturali è necessario realizzare un collegamento più rigido e stabile rispetto ai collegamenti filettati, che non debba essere smontato in esercizio: in questi casi si ricorre ai collegamenti saldati.

Dal punto di vista progettuale, l'approccio alla saldatura richiede di considerare due aspetti fondamentali:
1. La saldatura è un #strong[processo tecnologico]. A differenza di altri collegamenti basati esclusivamente su componenti a catalogo (come cuscinetti, filettature, viti, bulloni, rivetti, giunti o innesti), nei quali geometria e materiale definiscono interamente il comportamento, nel giunto saldato la deposizione del cordone influenza direttamente la resistenza meccanica e le prestazioni in esercizio, introducendo un margine di incertezza legato anche all'esecuzione da parte dell'operatore.
2. Proprio in quanto processo tecnologico, la saldatura è soggetta a #strong[difettosità caratteristiche] strettamente correlate alla tecnologia impiegata. Comprendere il processo originario consente quindi di prevedere quali tipologie di difetti possono insorgere e di orientare correttamente le operazioni di diagnosi e controllo.

Per questi motivi è indispensabile una normativa esaustiva che copra sia la progettazione del giunto (inclusa la previsione della vita a fatica), sia l'esecuzione del processo: in particolare la qualificazione e certificazione degli operatori (saldatori muniti di patentini a diversi livelli, sottoposti a verifiche periodiche della capacità professionale) e la qualificazione del prodotto finito. I principali riferimenti normativi e tecnici del settore includono:
- #strong[UNI 1307/1] (#emph[Terminologia per la saldatura dei metalli – Procedimenti di saldatura], 1986);
- #strong[UNI 1307/2] (#emph[Terminologia per la saldatura dei metalli – Tipi di giunti], 1987);
- #strong[UNI EN 1993 1-8 (Eurocode 3)] (#emph[Design of steel structures – Part 1-8: Design of joints], 2005);
- #strong[UNI EN 1993 1-9 (Eurocode 3)] (#emph[Design of steel structures – Part 1-9: Fatigue], 2005).

=== Definizione di saldatura e categorie principali
La #strong[saldatura] è un processo che consiste nell'unire due o più parti di un giunto utilizzando come agenti di giunzione il calore (temperatura), la pressione o una combinazione di entrambi. Essa realizza la continuità dei materiali di base uniti, costituendo un collegamento #strong[stabile e permanente]: a differenza dei collegamenti filettati, un giunto saldato non è smontabile e per separare le parti è necessario distruggere il giunto stesso.

Nel processo può essere impiegato o meno un #strong[materiale d'apporto], caratterizzato da una temperatura di fusione prossima (o inferiore) a quella del #strong[materiale base] (il materiale delle parti da collegare). In ogni caso, il giunto deve garantire caratteristiche meccaniche almeno pari o confrontabili con quelle del materiale base.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[I procedimenti affini vengono raggruppati in quattro categorie principali:
- saldatura #strong[per fusione];
- saldatura #strong[a resistenza] (elettrica);
- saldatura #strong[per pressione];
- #strong[brasatura], in cui il materiale d'apporto ha un basso punto di fusione tale per cui il materiale base non fonde.],[#canvas(length: 1cm, {
  import draw: *
  line((-0.8, 1.0), (0.0, 0.0), (0.8, 1.0), close: true, fill: black, stroke: none)
  arc((0.0, 0.0833), start: 48.89deg, stop: 131.11deg, radius: 1.2167, anchor: "origin", fill: black, stroke: 1pt)
  circle((0.0, 0.0), radius: 0.05, fill: black, stroke: none)
  line((-4.0, 0.0), (0.0, 0.0), (-0.8, 1.0), (-4.0, 1.0), close: true, stroke: 1pt)
  line((0.0, 0.0), (4.0, 0.0), (4.0, 1.0), (0.8, 1.0), close: true, stroke: 1pt)
  line((-1.0, 1.75), (-0.45, 1.28), mark: (end: ">"), stroke: 0.8pt)
  content((-1.3, 1.95), text(size: 8.5pt)[cordone di saldatura], anchor: "west")
  content((-2.2, 0.5), text(size: 8pt)[materiale base])
  content((2.2, 0.5), text(size: 8pt)[materiale base])
})])

=== Architettura delle tecnologie principali di saldatura
Una prima classificazione generale distingue tra #strong[saldatura autogena] (in cui il materiale base partecipa alla fusione o subisce un passaggio di stato/giunzione sotto elevata pressione) e #strong[saldatura eterogenea].

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le principali tecnologie si articolano come segue:
- #strong[Saldatura autogena per fusione]:
  - #emph[alla fiamma] (ossiacetilenica, ossidrica, ecc., molto diffusa anche nelle operazioni di manutenzione degli impianti);
  - #emph[ad arco]: con elettrodi rivestiti; con elettrodo infusibile in atmosfera inerte (TIG); ad arco sommerso; a filo continuo (in atmosfera inerte MIG, in atmosfera attiva MAG, oppure senza protezione di gas); a elettrogas; al plasma;
  - #emph[ad elettroscoria];
  - #emph[alluminotermica];
  - #emph[a fascio elettronico];
  - #emph[a laser].
- #strong[Saldatura autogena per pressione]:
  - #emph[a fuoco] (bollitura);
  - #emph[elettrica]: a resistenza (a punti, a rilievi, a rulli, di testa), a scintillio, a induzione;
  - #emph[ad attrito];
  - #emph[a esplosione];
  - #emph[a ultrasuoni].
- #strong[Saldatura eterogenea]:
  - #emph[brasatura capillare] (alla fiamma, elettrica a resistenza, a induzione);
  - #emph[saldobrasatura] (alla fiamma, all'arco).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: tabella sinottica ad albero delle tecnologie principali di saldatura, suddivisa nelle macro-categorie Autogena (a sua volta divisa in "per fusione" e "per pressione" con tutti i rispettivi sotto-procedimenti) ed Eterogenea (Brasatura capillare e Saldobrasatura)]])

Nell'analisi di queste tecnologie, due aspetti risultano cruciali per la qualità del giunto: la presenza di una #strong[protezione della zona di saldatura] per impedire l'ingresso di gas atmosferici (causa di difetti interni) e la tendenza del processo e del materiale d'apporto a generare #strong[cricche a caldo o a freddo]. Mentre difetti quali imperfette incollature, porosità o soffiature possono essere parzialmente tollerati se di dimensioni ridotte e sufficientemente distribuiti, le cricche — soprattutto se emergenti — non sono tollerate poiché rappresentano già la nucleazione di un danneggiamento in grado di propagare rapidamente verso la rottura.

=== Saldatura per fusione
La saldatura per fusione ad arco è ampiamente utilizzata nelle costruzioni di carpenteria e nei recipienti in pressione, con procedure e tipi di giunti codificati dalle norme UNI 1307/1 e UNI 1307/2. Il calore necessario alla fusione è fornito da uno o più archi elettrici che scoccano tra l'elettrodo e i pezzi di materiale base; il processo si effettua senza intervento di pressione, con o senza aggiunta di materiale d'apporto.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Questo procedimento provoca la fusione localizzata del materiale base in corrispondenza del cianfrino, generando nelle regioni immediatamente adiacenti una #strong[zona termicamente alterata (ZTA)] in cui il ciclo termico modifica le proprietà del materiale e altera lo stato di tensione.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema in sezione di un giunto di testa realizzato per fusione, mostrante le due piastre di materiale base a destra e sinistra, il materiale d'apporto fuso al centro nel cianfrino e le due fasce tratteggiate laterali corrispondenti alla zona termicamente alterata]])

Le cinque tecnologie di saldatura per fusione ad arco più diffuse sono:
1. saldatura manuale con elettrodi rivestiti;
2. saldatura ad arco sommerso;
3. saldatura a filo continuo MIG (gas inerte);
4. saldatura a filo continuo MAG (gas attivo $"CO"_2$, ossidante);
5. saldatura TIG (elettrodo infusibile in tungsteno e bacchetta separata per il materiale d'apporto).

=== Saldatura manuale con elettrodi rivestiti
È un procedimento manuale in cui la sorgente termica è costituita dall'arco elettrico che, scoccando tra un elettrodo rivestito e il materiale base, provoca un surriscaldamento che fonde entrambi. L'esecuzione richiede notevole abilità da parte dell'operatore nel mantenere l'arco fermo e preciso lungo la linea di saldatura, nonché idonei dispositivi di protezione individuale contro l'intensa luminosità dell'arco e il calore, preservando al contempo il controllo visivo del bagno.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Durante il processo, il rivestimento dell'elettrodo fonde formando una #strong[scoria protettiva] sul metallo fuso, la quale svolge quattro funzioni fondamentali:
- #strong[protettiva]: impedisce il contatto tra l'ossigeno ($"O"_2$) dell'atmosfera esterna e il bagno di fusione;
- #strong[disossidante]: assorbe eventuali tracce di $"O"_2$ presenti all'interno del bagno liquido;
- #strong[scorificante]: assorbe sostanze indesiderate come zolfo e fosforo;
- #strong[di sostegno]: sostiene il bagno di fusione, risultando particolarmente utile nelle posizioni di saldatura scomode quali quelle ad asse verticale o sopratesta.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: a sinistra, schema in sezione del processo di saldatura manuale con elettrodo rivestito, indicante l'anima metallica dell'elettrodo, il rivestimento, la protezione gassosa, il materiale in trasferimento nell'arco, il bagno di fusione, la penetrazione nel pezzo, la scoria liquida, la scoria solidificata e il deposito solidificato; a destra, fotografia di un operatore protetto da maschera e guanti intento a saldare un giunto manuale]])

In base alla composizione del rivestimento, si distinguono due principali tipologie di elettrodi, con importanti implicazioni sulla difettosità del giunto:
- #strong[Elettrodi rutilici]: il rivestimento è costituito prevalentemente da biossido di titanio (o rutilo), che conferisce al bagno di fusione una notevole fluidità e un ottimo aspetto superficiale dopo la solidificazione. Tuttavia, questi rivestimenti sviluppano una notevole quantità di #strong[idrogeno], che tende a infragilire il materiale e a favorire l'apertura e la propagazione di difetti; per questo non possono essere utilizzati quando sussiste il pericolo di cricche a caldo e a freddo. Grazie alla facilità esecutiva, trovano impiego in carpenteria di modesto spessore.
- #strong[Elettrodi basici]: il rivestimento è composto da ossidi di ferro, ferroleghe di manganese ($"Mn"$) e silicio ($"Si"$), silicati e soprattutto carbonati di calcio e magnesio, con l'aggiunta di fluoruro di calcio (fluorite) per facilitarne la fusione. Sono gli unici rivestimenti in grado di sopportare elevate temperature di essiccazione (fino a circa $400 degree "C"$), garantendo la quasi totale eliminazione dell'idrogeno e quindi dell'acqua. Risultano pertanto più versatili e universalmente impiegati nelle saldature strutturali importanti.

=== Saldatura ad arco sommerso
La saldatura ad arco sommerso è un procedimento autogeno per fusione in cui l'arco elettrico scocca tra un filo elettrodo fusibile, alimentato automaticamente, e il pezzo da saldare. L'arco risulta completamente sommerso e invisibile, poiché la zona di saldatura è ricoperta da un #strong[flusso] granulare (simile a polvere/sabbia) che svolge le medesime funzioni protettive della scoria nella saldatura a elettrodo rivestito, proteggendo il bagno dall'ossidazione dell'aria.

Un impianto ad arco sommerso è costituito dai seguenti elementi:
- un #strong[generatore di corrente] (analogo a quello per elettrodo rivestito) di elevato amperaggio ($1000 "-" 3000 "A"$);
- un #strong[traina-filo] che alimenta automaticamente il filo di apporto, di diametro almeno pari a $2 "mm"$;
- una #strong[tramoggia] contenente il flusso di protezione, che viene depositato anteriormente all'elettrodo tramite un ugello di alimentazione e raccolto/aspirato posteriormente dopo il passaggio, lasciando il cordone pulito.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Trattandosi di un processo automatizzato (in cui il sistema movimenta l'elettrodo senza intervento manuale diretto), garantisce elevata precisione, ma risulta particolarmente lento e spesso richiede più passate successive per riempire cianfrini profondi. È universalmente impiegato nelle #strong[saldature di forti spessori].],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: coppia di schemi dell'impianto di saldatura ad arco sommerso: a sinistra vista assonometrica con filo proveniente dal dispositivo di avanzamento, condotto dalla tramoggia, flusso, pezzo, scoria e cordone; a destra schema complessivo con aspo del filo, tramoggia di flusso, dispositivo per l'avanzamento del filo, recuperatore di flusso, circuito di alimentazione elettrica e gruppo di saldatura sul pezzo]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: sezione dettagliata e fotografia ravvicinata della testa di saldatura ad arco sommerso, con indicazione di: flusso di alimentazione, tubo di contatto, elettrodo consumabile, arco, bagno di fusione, flusso, flusso fuso, scoria solidificata, flusso di recupero, metallo base e metallo saldato]])

=== Saldatura a filo continuo (MIG/MAG)
Il principio di funzionamento è lo stesso della saldatura ad arco sommerso: un filo continuo viene svolto da una bobina mediante un motore elettrico (alimentatore filo), passa attraverso una guaina fino alla torcia impugnata dall'operatore e scocca l'arco andando in corto circuito sul pezzo da saldare.

L'unica differenza risiede nel sistema di protezione dall'aria, che non è affidato a un flusso solido ma a un #strong[flusso di gas in pressione] convogliato attraverso un'intercapedine attorno all'elettrodo centrale:
- #strong[MIG (Metal Inert Gas)]: utilizza un gas inerte (tipicamente Argon) che non partecipa alla fusione. L'Argon puro si impiega prevalentemente nella saldatura dell'alluminio, del rame e delle sue leghe (come il bronzo).
- #strong[MAG (Metal Active Gas)]: utilizza un gas attivo (anidride carbonica, $"CO"_2$) oppure miscele di $"Ar" "-" "CO"_2$ contenenti una frazione attiva anche minima, che partecipa alla fusione. Le miscele $"Ar" "-" "CO"_2$ in diverse percentuali si utilizzano per tutti gli altri materiali (ferro, acciaio inossidabile, ecc.).

In funzione della modalità con cui si staccano le gocce di materiale d'apporto, si distingue tra trasferimento a corto circuito (#emph[short-arc]) e trasferimento in #emph[spray-arc].

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Rispetto all'arco sommerso, l'assenza del flusso solido da distribuire e recuperare rende la manipolazione molto più agile e la deposizione assai rapida, permettendo di eseguire riporti di dimensioni importanti. Le applicazioni spaziano dai particolari meccanici alle riparazioni di stampi anche di notevoli dimensioni.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: a sinistra, schema di impianto per saldatura MIG/MAG comprendente bobina filo, alimentatore filo, torcia, generatore, bombola del gas e pezzo da saldare; a destra, schema in sezione della torcia MIG/MAG con numerazione da 1 a 8 che individua il pezzo, il cordone, l'ugello del gas, il filo elettrodo, il flusso di gas protettivo e l'arco elettrico]])

=== Saldatura TIG (Tungsten Inert Gas)
La saldatura TIG è un procedimento ad arco in cui il calore è generato da un arco elettrico che scocca tra un #strong[elettrodo infusibile in tungsteno] (che mantiene costanti lunghezza e diametro) e il pezzo da saldare, in atmosfera di gas inerte (Argon). L'arco fonde i lembi del pezzo mentre il materiale da riporto viene aggiunto manualmente dall'esterno mediante una bacchetta separata, avente caratteristiche paragonabili a quelle del materiale base. Per evitare pericolose inclusioni di tungsteno nel giunto, l'elettrodo non deve mai venire a contatto con il pezzo.

Il processo consente di saldare un'ampia gamma di materiali: acciai, acciai inossidabili, acciai temperati, leghe di alluminio, magnesio e titanio. Le sue caratteristiche principali sono:
- arco molto concentrato e facilmente controllabile;
- elevata regolarità di fusione, con cordoni di altissima qualità e penetrazione;
- trasferimento molto preciso del materiale d'apporto;
- impiego praticamente universale.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il principale difetto del procedimento è la #strong[lentezza esecutiva], dovuta alla necessità di un controllo puntuale da parte dell'operatore, che lo rende inadatto a lavorazioni grossolane e rapide.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: a sinistra, schema generale del processo TIG con torcia, elettrodo infusibile, atmosfera protettiva, generatore e pezzi da saldare; a destra, fotografia dell'operazione manuale TIG con torcia e bacchetta d'apporto]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema costruttivo in sezione della torcia TIG e della zona di saldatura, con indicazione di: torcia TIG, diffusore, entrata acqua fredda, conduttore elettrico, ingresso gas di protezione, uscita acqua calda, uscita gas di protezione, elettrodo di tungsteno, arco, bacchetta di saldatura, atmosfera protettiva, metallo base e metallo solidificato]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Tra le applicazioni tipiche figurano la riparazione di stampi (anche per materie plastiche), il settore automotive e la costruzione di #strong[scambiatori di calore a fascio tubiero], dove la saldatura TIG — spesso eseguita con sistemi automatizzati — permette di fissare ciascun tubo nei fori relativamente piccoli della piastra tubiera garantendo tenuta e precisione senza occludere i condotti. A seconda delle esigenze di tenuta, esistono diversi posizionamenti dei tubi nei fori della piastra, alcuni dei quali prevedono anche la saldatura interna al foro.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: esempio di applicazione della saldatura TIG agli scambiatori di calore, comprendente fotografie del fascio tubiero, della piastra tubiera e della testa di saldatura automatizzata, accompagnate dallo schema in sezione di sei diversi possibili posizionamenti dei tubi nei fori della piastra (indicati dalle lettere a, b, c, d, e, f), con le soluzioni d, e, f evidenziate come configurazioni a migliore tenuta]])

=== Terminologia e architettura del giunto saldato
Il #strong[giunto saldato] è la regione in cui avviene il collegamento dei pezzi mediante saldatura. Nella sua geometria si definiscono i seguenti elementi:
- #strong[lembi, bordi o teste]: le superfici minori che limitano i pezzi (superfici laterali rispetto allo sviluppo del cordone);
- #strong[facce]: le superfici maggiori (superiori e inferiori) che limitano i pezzi;
- #strong[cianfrino]: la cavità predisposta tra i lembi che viene riempita dal cordone di saldatura (può avere forma a V, a U, a X, ecc.);
- #strong[ZTA (Zona Termicamente Alterata)]: la regione del metallo base adiacente al cordone di saldatura nella quale il raggiungimento di temperature elevate ha indotto variazioni nella microstruttura e nelle proprietà meccaniche, chimiche e fisiche del metallo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel caso dell'acciaio, il cordone di saldatura risulta normalmente più resistente del metallo adiacente a causa dell'#strong[ingrossamento del grano] nella ZTA, che riduce la resistenza dell'acciaio rispetto a una struttura a grano fine.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema in sezione trasversale di un giunto saldato di testa tra due piastre, con frecce e diciture che individuano le facce superiori, i lembi laterali, il cianfrino centrale riempito dal cordone e le due fasce laterali tratteggiate della ZTA (zona termicamente alterata)]])

=== Effetti della tecnica di saldatura e controlli non distruttivi
Nella progettazione di un collegamento saldato occorre tenere conto di tre effetti principali derivanti dal processo:
1. L'influenza del riscaldamento localizzato e del successivo raffreddamento sulla microstruttura e sulle proprietà meccaniche del metallo base (ZTA) e del metallo d'apporto.
2. L'insorgenza di #strong[tensioni residue] conseguenti al raffreddamento non uniforme del giunto. In generale, i giunti saldati presentano una resistenza a fatica e alle sollecitazioni di natura impulsiva inferiore rispetto a un getto di fusione correttamente progettato o a un pezzo stampato a caldo.
3. Le potenziali maggiori difettosità (interne al cordone o localizzate all'interfaccia con il materiale base), che impongono controlli rigorosi del processo e ispezioni periodiche documentate durante la vita in esercizio per prevenire la propagazione di danneggiamenti critici.

Tali verifiche vengono eseguite tramite #strong[controlli non distruttivi (CND)], capaci di monitorare lo stato del giunto in modo quantitativamente significativo senza alterare il materiale, ad esempio mediante #strong[ultrasuoni], #strong[radiografie] e #strong[gammagrafie].

=== Tensioni residue nel cordone e interventi per ridurre le deformazioni
Le #strong[tensioni residue] sono tensioni presenti nel giunto al termine del processo anche in totale assenza di carichi esterni applicati. Esse originano dalla dilatazione e dalla contrazione impedita che si verificano durante il riscaldamento e il successivo raffreddamento di parti vincolate. La loro entità dipende dal disegno del collegamento, dai vincoli impiegati durante la saldatura, dai materiali e dalla tecnica di fusione adottata.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In un giunto saldato si instaura tipicamente uno stato di coazione caratterizzato da:
- #strong[tensioni residue di trazione] nella zona del cordone di saldatura, con il punto più sollecitato localizzato a centro cordone;
- #strong[tensioni residue di compressione] nelle zone adiacenti del metallo base.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: due schemi relativi alle tensioni residue nel cordone: a sinistra, vista tridimensionale di un giunto piano di testa con frecce che mostrano tensioni residue di trazione lungo il cordone e tensioni residue di compressione nel metallo base adiacente; a destra, confronto bidimensionale tra la configurazione di dilatazione libera e deformazione delle lamiere con cordone caldo e la configurazione di contrazione libera del cordone e stato di coazione dopo il raffreddamento, con sistema di assi cartesiani $x, y$, componenti di tensione $sigma_x$ e $sigma_y$ e indicazione del punto più sollecitato a centro cordone]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Tali tensioni inducono assestamenti e deformazioni della struttura (quali imbarcamenti e disallineamenti), tanto più marcati quanto più lungo è il cordone. Per contenere questi fenomeni in fase di assemblaggio, il progettista può prescrivere specifici interventi:
- #strong[Azione meccanica]: mantenere le parti di materiale base perfettamente allineate mediante vincoli esterni (morse) fino al completo assestamento del cordone, prevenendo imbarcamenti e disallineamenti (pratica molto diffusa nelle costruzioni navali).
- #strong[Ordine di ripresa per cordone a X]: nei forti spessori, deporre il cordone mediante passate successive simmetriche rispetto al piano mediano (ad esempio prima passata centrale 1, poi passate 2 e 3 sui lati opposti, quindi 4 e 5 a completamento, ed eventuali ulteriori passate simmetriche) per bilanciare l'introduzione del calore.
- #strong[Ordine di esecuzione di un cordone lungo]: anziché procedere in modo continuo da un'estremità all'altra (che causerebbe raffreddamenti asimmetrici e tensioni non uniformi), eseguire la saldatura per tratti simmetrici — ad esempio fissando prima il tratto centrale (1), poi i due tratti esterni simmetrici (2 e 3) e completando infine i tratti intermedi mancanti (4 e 5).
- #strong[Deformazione imposta preventiva (compensazione)]: nei casi in cui l'entità della distorsione sia nota a priori (tipicamente nelle costruzioni navali), si predeforma l'elemento in direzione opposta a quella indotta dalle tensioni residue, in modo che a saldatura completata i due effetti si compensino portando il componente in piano.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: quattro schemi relativi agli interventi per ridurre le deformazioni residue: (1) "Azione meccanica", con piastre bloccate da morse e forze di serraggio contrapposte; (2) "Ordine di ripresa per realizzare il cordone a X per bilanciare l'introduzione del calore nel pezzo", con cianfrino a X riempito da passate numerate 1 al centro, 2 e 4 inferiormente, 3 e 5 superiormente; (3) "Ordine di esecuzione di un cordone lungo", con suddivisione del cordone in cinque tratti ordinati da sinistra a destra secondo la sequenza 3, 5, 1, 4, 2; (4) "Deformazione imposta prima dell'esecuzione della saldatura", che mostra una piastra inizialmente incurvata in senso opposto e riportata in piano dopo la saldatura]])

=== Effetto di intaglio nelle saldature
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nelle saldature coesistono due distinti meccanismi di concentrazione delle tensioni:
- #strong[Intaglio geometrico]: dovuto alla discontinuità geometrica della sezione trasversale al piede del cordone di saldatura (dove si forma uno spigolo rispetto alla faccia della lamiera, sia sul lato superiore sia su quello inferiore) nonché a eventuali fessure interne.
- #strong[Intaglio metallurgico]: nella zona di transizione tra metallo base e metallo d'apporto (ZTA) si ha una variazione brusca e localizzata delle caratteristiche meccaniche, chimico-fisiche ed elastiche del materiale, che ne accresce la disomogeneità e l'anisotropia. Ciò perturba il flusso delle tensioni generando picchi locali di tensione. Anche qualora il cordone venga molato a filo per eliminare completamente l'intaglio geometrico, l'effetto di intaglio metallurgico permane in quanto legato all'alterazione microstrutturale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: due schemi in sezione dell'effetto di intaglio nelle saldature: a sinistra, un giunto con cordone sporgente in cui sono indicati gli intagli geometrici ai due piedi del cordone e una fessura interna all'interfaccia; a destra, un giunto il cui cordone è stato molato a filo per eliminare l'intaglio geometrico, con freccia che evidenzia la permanenza dell'intaglio metallurgico lungo la zona di transizione microstrutturale]])

=== Tipi di giunti saldati
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La normativa tecnica riconduce la grande varietà di soluzioni costruttive a due paradigmi fondamentali di analisi: il #strong[giunto testa a testa] e il #strong[cordone d'angolo] (che collega due superfici orientate tra loro a $90 degree$). Una selezione dei principali tipi di giunti comprende:
1. #strong[Giunto testa a testa (1)]: unisce due elementi complanari mediante un cianfrino praticato sui lembi.
2. #strong[Giunto a T a completa penetrazione (2)]: combina entrambi i paradigmi, poiché la parte interna lavora come un giunto testa a testa mentre i due triangoli esterni lavorano come cordoni d'angolo.
3. #strong[Giunto a T con cordone d'angolo (3)]: unisce due piastre perpendicolari tramite cordoni d'angolo.
4. #strong[Giunto a croce con cordoni d'angolo (4)]: costituito da quattro cordoni d'angolo che collegano due piastre ad una piastra passante perpendicolare.
5. #strong[Giunto a sovrapposizione (5)] (#emph[overlap]): collega due lamiere sovrapposte mediante cordoni d'angolo deposti tra il lembo di una piastra e la faccia dell'altra; presenta una marcata asimmetria.
6. #strong[Giunto a semplice coprigiunto (6)]: mantiene allineate due piastre mediante una piastra di banda superiore collegata con cordoni d'angolo, rimanendo comunque asimmetrico.
7. #strong[Giunto a doppio coprigiunto (7)]: impiega due coprigiunti uguali e opposti saldati su entrambi i lati; aumenta lo spessore complessivo ma garantisce simmetria di comportamento e bilanciamento delle masse.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schemi in sezione trasversale di sette tipi di giunti saldati numerati: (1) giunto testa a testa, (2) giunto a T a completa penetrazione, (3) giunto a T con cordone d'angolo, (4) giunto a croce con cordoni d'angolo, (5) giunto a sovrapposizione, (6) giunto a semplice coprigiunto, (7) giunto a doppio coprigiunto]])

=== Principali criteri per il progetto di giunti saldati ed esempi costruttivi
Una corretta progettazione dei collegamenti saldati deve rispettare una serie di criteri geometrici e tecnologici volti a garantire eseguibilità, integrità strutturale e contenimento delle tensioni residue:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[- #strong[Uniformità degli spessori]: non si devono collegare direttamente lamiere di spessore molto differente; occorre rastremare la lamiera più spessa in corrispondenza del giunto fino a portarla allo spessore dell'altra (sia nei collegamenti piani asimmetrici o simmetrici, sia nei collegamenti ad angolo). Analogamente, un profilato o un tubo non può essere saldato direttamente a un parallelepipedo o a un disco di dimensioni rilevanti senza un'opportuna preparazione tecnologica della superficie di raccordo (operazione che può tuttavia risultare costosa).
- #strong[Divieto di terminazioni "a punta"]: una lamiera sottile non deve terminare a spigolo vivo (angolo acuto) nella zona di saldatura, poiché lo spigolo fonde completamente con il materiale base/d'apporto perdendo la propria funzione geometrica.
- #strong[Divieto di incrocio o sovrapposizione delle saldature]: una volta eseguito un cordone, non bisogna rifonderlo per deporne un altro. Nel caso dell'incontro di più tubi angolati su una stessa piastra, lo spazio residuo renderebbe estremamente difficile l'esecuzione dei cordoni d'angolo: è preferibile interporre un tubo di diametro maggiore che offra una superficie di riscontro più ampia e accessibile. Allo stesso modo, quando una costola di rinforzo incontra una giunzione a T già saldata, si pratica uno scarico (foro o smusso) nell'angolo della costola affinché i cordoni della costola non intersechino il cordone principale della T.
- #strong[Accessibilità e geometria delle superfici di riscontro]: prima di definire il disegno tecnico occorre valutare l'accessibilità per l'esecuzione dei cordoni, gli ingombri delle attrezzature (portaelettrodi/materiale d'apporto) e la modalità esecutiva (manuale, semiautomatica o automatizzata tramite robot). Ad esempio, per fissare un tubo spesso su una piastra, adagiarlo direttamente sul piano è errato per la difficoltà di saldatura; appiattire la base del tubo rappresenta una soluzione buona (poiché sostituisce la linea di contatto con una superficie rettangolare), ma l'accesso nell'angolo rimane disagevole; la soluzione migliore consiste nell'utilizzare un cosiddetto "tubo quadrato" (condotto interno circolare con involucro esterno a sezione parallelepipeda), che consente di deporre agevolmente i cordoni d'angolo.
- #strong[Evitare lunghi cordoni continui allineati]: nella realizzazione di cilindri lunghi o recipienti in pressione, eseguire saldature longitudinali continue allineate lungo la medesima generatrice concentra le tensioni residue da un solo lato della struttura. È preferibile suddividere il cilindro in tronchi e sfalsare (ruotare angolarmente) la posizione del cordone longitudinale tratto per tratto, ottenendo una naturale compensazione delle tensioni residue attorno all'asse e facilitando l'accesso dell'operatore.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: tavola di esempi costruttivi di collegamenti saldati con confronto tra soluzioni sconsigliate/errate e soluzioni corrette/migliori: in alto a sinistra, giunzione di lamiere di diverso spessore (piane asimmetriche, piane simmetriche e ad angolo) con rastremazione della lamiera più spessa nella versione corretta; in alto a destra, incontro di tre tubi su piastra migliorato mediante interposizione di un tubo a diametro maggiore e giunzione di costola di rinforzo su T con scarico/smusso per evitare l'incrocio dei cordoni; in basso a sinistra, saldatura di un tubo su piastra classificata come "errato" (tubo cilindrico diretto), "buono" (tubo con base appiattita) e "migliore" (sezione esterna quadrata con foro circolare); in basso a destra, saldatura di cilindri lunghi con cordone longitudinale continuo (sconsigliato) rispetto a tronchi con cordoni longitudinali sfalsati (corretto)]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[- #strong[Centraggio e stabilizzazione]: per elementi di notevole sviluppo verticale o soggetti a momenti ribaltanti (come un perno filettato o un'attrezzatura di supporto su una piastra di base), la semplice saldatura perimetrale in appoggio risulta poco precisa e vulnerabile al ribaltamento sia durante la saldatura sia in esercizio. È preferibile praticare un foro nella parete di base in cui inserire e centrare l'elemento, eseguendo la saldatura anche nella zona centrale inferiore.
- #strong[Riduzione del numero di cordoni]: occorre evitare per quanto possibile di frazionare un componente in molte lamiere distinte da saldare tra loro, soluzione che richiede attrezzature complesse per il posizionamento e aumenta il rischio di distorsioni geometriche dovute alle tensioni residue. Quando possibile, è preferibile ricavare il corpo principale mediante piegatura di un'unica lamiera e limitare le saldature ai soli fondi.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: tavola con due ulteriori esempi di collegamenti a confronto tra soluzione sconsigliata e soluzione corretta: in alto, saldatura di un perno filettato su piastra (sconsigliato: semplice appoggio con saldatura perimetrale; corretto: perno inserito in un foro della parete con saldatura anche nella zona centrale inferiore per maggiore precisione di posizionamento); in basso, confronto tra un componente scatolare realizzato saldando numerose lamiere separate con molti cordoni (sconsigliato) e lo stesso componente ottenuto da una lamiera piegata con un numero limitato di cordoni di saldatura sui fondi (corretto)]])