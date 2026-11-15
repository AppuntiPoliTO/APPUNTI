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
#let varepsilon = $epsilon$
#set page(
  numbering: "1",
  number-align: bottom + right,
)


#set heading(numbering: "1.")
= *Resistenza a Fatica dei Materiali e dei Componenti*

== Introduzione al cedimento a fatica <introduzione-al-cedimento-a-fatica>

Il cedimento a fatica si verifica in modo silente, senza macro-deformazioni plastiche premonitrici che possano fungere da allarme. Questo porta a un *collasso prematuro* e improvviso. Progettare componenti soggetti a carichi variabili nel tempo utilizzando esclusivamente i limiti di resistenza statica (come il limite di snervamento o il carico di rottura) sottovaluta gravemente il problema, poiché la rottura a fatica avviene a livelli tensionali nettamente inferiori.


il danneggiamento a fatica progredisce all'interno del materiale senza manifestazioni esterne visibili fino al collasso finale, che risulta repentino, irreversibile e spesso catastrofico per l'intero sistema (come storicamente evidenziato da gravi incidenti in ambito ferroviario e aeronautico).

// [DA SLIDE]
Nello specifico, l'applicazione di *carichi non costanti nel tempo*  e in particolare di sollecitazioni aventi un andamento temporale *ciclico* (o più in generale variabile)  può condurre alla rottura del componente anche quando la tensione massima raggiunta $sigma_"max"$ rimane sensibilmente inferiore:
- al *carico unitario di snervamento* del materiale, nel caso di comportamento *duttile*;
- al *carico unitario di rottura* del materiale, nel caso di comportamento *fragile*.

// [DA AUDIO]
Per un materiale metallico *duttile*, il fenomeno della fatica introduce dunque una duplice anomalia rispetto al comportamento statico:
1. *Abbassamento della soglia di cedimento:* la rottura si verifica per ampiezze di sollecitazione che interessano la regione iniziale *lineare elastica* del diagramma tensione-deformazione ($sigma$-$epsilon$), ben al di sotto della tensione di snervamento statico ($sigma_"max" < sigma_s$).
2. *Inversione del comportamento meccanico a rottura:* pur essendo il materiale intrinsecamente duttile, sotto carichi affaticanti esso non sviluppa una riserva di plasticizzazione macroscopica e manifesta una *frattura di carattere fragile*.

Si parla pertanto di *cedimento per fatica* nel materiale (termine introdotto per analogia con l'affaticamento fisico umano) e, conseguentemente, di *carichi e condizioni affaticanti*.


// [DA AUDIO]
=== Classificazione temporale dei carichi affaticanti

Dal punto di vista della storia temporale della sollecitazione, i carichi dinamici responsabili della fatica possono essere suddivisi in tre categorie:
1. *Carichi periodici ad ampiezza costante (fatica periodica semplice):* il segnale tensionale presenta una ripetitività regolare con un periodo temporale $T$ ben definito ed è caratterizzato da un'unica frequenza e da un'unica ampiezza di oscillazione. È il caso più semplice, descrivibile analiticamente mediante un'unica funzione armonica (seno o coseno), e costituisce il paradigma di riferimento per i calcoli di resistenza a fatica.
2. *Carichi periodici ad ampiezza variabile (fatica periodica complessa):* il segnale presenta localmente fluttuazioni irregolari con picchi di ampiezza differente, ma l'intero blocco di sollecitazioni si ripete ciclicamente nel tempo con un periodo caratteristico individuabile. In questo caso è possibile scomporre la storia di carico nella sovrapposizione di più segnali elementari ad ampiezza costante, estendendo i risultati del modello armonico di base (mediante ipotesi di danneggiamento cumulativo).
3. *Carichi aleatori o caotici :* la sollecitazione varia nel tempo in modo totalmente irregolare e non periodico (la storia tensionale non ripercorre mai il medesimo andamento). La caratterizzazione di tali carichi non può avvalersi di funzioni deterministiche, ma richiede necessariamente metodi statistici e probabilistici.

// [DA SLIDE]
=== Condizioni di innesco ed esempio classico della flessione rotante

Per comprendere correttamente quando un organo meccanico è soggetto a fatica, è fondamentale osservare lo stato di sollecitazione dal punto di vista *locale del singolo elemento di materiale* e non soltanto dal punto di vista del sistema di riferimento fisso esterno. Le condizioni che determinano l'instaurarsi della fatica sono infatti due:
1. l'applicazione di un *carico variabile nel tempo* (su una struttura ferma o in movimento);
2. l'applicazione di un *carico costante nel tempo (statico)* rispetto al quale la struttura compie un *moto ciclico*, come la rotazione.


Il caso studiato da *August Wöhler*  è quello degli *assali ferroviari* (o, più in generale, di un *albero in rotazione* soggetto a carichi trasversali):
- Le forze trasmesse dalle sospensioni del vagone alle estremità dell'assale sono sostanzialmente *statiche* (costanti nel tempo e dirette verticalmente verso il basso), ma la sezione resistente dell'albero ruota continuamente sotto di esse.
- Osservando la sezione trasversale nello spazio fisso, il momento flettente costante $M_f$ genera il classico diagramma lineare di tensione normale $sigma$ previsto dalla teoria della flessione: le fibre da un lato dell'asse neutro sono sollecitate a trazione ($sigma > 0$), quelle sull'asse neutro sono scariche ($sigma = 0$) e quelle sul lato opposto sono sollecitate a compressione ($sigma < 0$)
  Localmente, dunque, il materiale subisce una tensione variabile nel tempo con legge sinusoidale:
$ sigma(t) = sigma_"max" sin(omega t) $



// [DA SLIDE]
#figure(
  include "figs/fatica-fig01.typ",
)

La condizione di sollecitazione dell'assale di Wöhler viene riprodotta in laboratorio mediante la *macchina di prova a flessione rotante* (schema di flessione a quattro punti): un provino cilindrico metallico viene posto in rotazione attorno al proprio asse e vincolato tramite quattro supporti (due interni e due esterni posti a quote differenti) che imprimono una curvatura costante, generando un *momento flettente costante* nel tratto centrale calibrato del campione. L'osservazione sperimentale di tale prova mette in luce due aspetti fondamentali:

 *Influenza della frequenza di carico e fatica termomeccanica:* in condizioni di prova corrette, la rottura a fatica di un provino in acciaio richiede tipicamente milioni di cicli (corrispondenti a molte ore di funzionamento) senza che si osservino vibrazioni o alterazioni macroscopiche fino all'istante del cedimento. Se tuttavia la velocità angolare di rotazione viene incrementata eccessivamente (frequenza di applicazione del carico troppo elevata), lo *smorzamento strutturale interno* del materiale genera una dissipazione energetica accelerata che non riesce a essere smaltita verso l'esterno. Ciò produce un forte riscaldamento localizzato nel tratto centrale del provino (fino all'incandescenza visibile), instaurando un forte gradiente termico nel tempo: alla fatica meccanica si sovrappone così un fenomeno di *fatica termica*, che degrada drasticamente le proprietà del materiale e conduce al collasso in pochi secondi.

// [DA SLIDE]
  *Influenza degli intagli:* Nella progettazione a fatica è fondamentale considerare che la presenza di variazioni di sezione molto brusche nel componente — denominate *intagli* (quali spallamenti a raggio ridotto, fori, gole o cave) — genera severi picchi locali di tensione e influenza fortemente (riducendola in misura drastica) la resistenza a fatica dei componenti.
 la fatica è per sua natura un fenomeno di innesco *localizzato*, la concentrazione locale delle tensioni prodotta dalla discontinuità geometrica agisce esattamente nella regione superficiale in cui tende a nucleare il danno, accelerandone drasticamente la formazione e la successiva propagazione.


== Ciclo di sollecitazione e parametrizzazione <ciclo-di-sollecitazione-e-parametrizzazione>


Sotto l'ipotesi di sollecitazione periodica, si definisce *ciclo di fatica* il minimo intervallo temporale completo durante il quale la tensione aumenta, diminuisce e ritorna al valore e alla tendenza di partenza. La durata di vita del componente viene espressa tramite il *numero di cicli* $N$ sopportati fino a rottura.



Per quanto riguarda il parametro di sollecitazione, nella maggior parte delle applicazioni ingegneristiche la caratterizzazione avviene *in termini di tensione* ($sigma$). Tuttavia, nei problemi di *fatica a basso numero di cicli* (o fatica oligociclica), in cui i carichi applicati sono così elevati da indurre la rottura dopo pochi cicli coinvolgendo direttamente il campo  plastico del materiale, è necessario ricorrere a una parametrizzazione *in termini di deformazione* ($varepsilon$).
#v(1em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Per definire compiutamente un ciclo di fatica periodico, abbiamo bisogno di tre grandezze fondamentali: un parametro relativo al tempo (il numero di cicli) e due parametri relativi alla tensione (o deformazione). Come mostrato nella figura a fianco, un ciclo generico oscilla tra due valori estremi.
    
    I parametri operativi di base che definiscono gli estremi del ciclo sono:
    - $N$: Numero di cicli (parametro temporale).
    - $sigma_"max"$: Tensione massima raggiunta nel ciclo.
    - $sigma_"min"$: Tensione minima raggiunta nel ciclo.
  ],
  [
    #include "figs/fatica-fig02.typ"
  ]
)
#v(1em)

A partire da questi valori estremi, la normativa definisce due parametri derivati, molto più utili per i calcoli di resistenza. Il primo inquadra il comportamento "statico" del sistema, il secondo l'ampiezza della fluttuazione dinamica:

     $ sigma_m : "Tensione media." quad quad quad sigma_m = (sigma_"max" + sigma_"min") / 2 $
     $ sigma_a: "Tensione alternata" quad quad quad sigma_a = (sigma_"max" - sigma_"min") / 2 $

Possiamo inoltre definire l'escursione tensionale totale (o campo di tensione) come la distanza tra il picco massimo e il minimo:
$ Delta sigma = sigma_"max" - sigma_"min" = 2 sigma_a $

// [DA AUDIO]
 nella letteratura moderna e nelle normative tecniche vigenti si preferisce tuttavia esprimere i calcoli e i diagrammi di resistenza direttamente in funzione della tensione alternata $sigma_a$ (pari alla semiampiezza picco-picco dell'onda armonica) e della tensione media $sigma_m$ (che rappresenta la componente statica o *bias* del segnale).

Un parametro adimensionale fondamentale per classificare la severità del ciclo è il rapporto di tensione $R$, definito come:
$ R = sigma_"min" / sigma_"max" $

// [DA SLIDE]
Accanto al rapporto di tensione $R$, si definisce anche il *rapporto di ampiezza* $R_a$, dato dal rapporto tra la tensione alternata e la tensione media:
$ R_a = sigma_a / sigma_m $

I due rapporti adimensionali $R$ e $R_a$ non sono indipendenti, ma sono legati biunivocamente tra loro. Sostituendo infatti le definizioni di $sigma_a$ e $sigma_m$ nell'espressione di $R_a$ e dividendo numeratore e denominatore per $sigma_"max"$, si ricava:
$ R_a = frac(sigma_a, sigma_m) = frac(frac(sigma_"max" - sigma_"min", 2), frac(sigma_"max" + sigma_"min", 2)) = frac(sigma_"max" - sigma_"min", sigma_"max" + sigma_"min") = frac(1 - frac(sigma_"min", sigma_"max"), 1 + frac(sigma_"min", sigma_"max")) = frac(1 - R, 1 + R) $

Analogamente, esprimendo $sigma_"min" = sigma_m - sigma_a$ e $sigma_"max" = sigma_m + sigma_a$ nella definizione di $R$ e dividendo numeratore e denominatore per $sigma_m$, si ottiene la relazione inversa:
$ R = frac(sigma_"min", sigma_"max") = frac(sigma_m - sigma_a, sigma_m + sigma_a) = frac(1 - frac(sigma_a, sigma_m), 1 + frac(sigma_a, sigma_m)) = frac(1 - R_a, 1 + R_a) $
#pagebreak()
// [DA AUDIO]
== Classificazione dei cicli di sollecitazione notevoli

In funzione della posizione del ciclo di tensione rispetto all'asse temporale (e dunque dei valori assunti da $sigma_m$, $sigma_"min"$, $sigma_"max"$ e dal rapporto di ciclo $R$), la letteratura tecnica identifica alcune configurazioni notevoli di frequente impiego progettuale e sperimentazione:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [1. *Ciclo alternato simmetrico (o ciclo di inversione):* è il ciclo impiegato da Wöhler nelle prove di flessione rotante. La componente statica è nulla e la tensione oscilla simmetricamente tra un massimo di trazione e un minimo di compressione di uguale modulo:
],[#figure(
  include "figs/fatica-fig03.typ")])
$ sigma_m = 0, quad sigma_"max" = -sigma_"min" = sigma_a, quad R = frac(sigma_"min", sigma_"max") = -1, quad R_a = oo $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [2. *Ciclo ripetuto dall'origine di trazione (o ciclo all'origine di trazione):* il ciclo si sviluppa interamente nel semipiano positivo (trazione) annullandosi periodicamente sull'asse temporale:
],[#figure(
  include "figs/fatica-fig04.typ")])
$ sigma_"min" = 0, quad sigma_"max" = 2 sigma_a = 2 sigma_m > 0, quad R = frac(0, sigma_"max") = 0, quad R_a = 1 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Ciclo ripetuto dall'origine di compressione (o ciclo all'origine di compressione):* situazione duale alla precedente, in cui il ciclo si sviluppa nel semipiano negativo (compressione) con valore massimo nullo e valore minimo negativo di modulo pari al doppio dell'ampiezza alternata:
],[#figure(
  include "figs/fatica-fig05.typ")])
$ sigma_"max" = 0, quad sigma_"min" = -2 sigma_a = 2 sigma_m < 0, quad R = lim_(sigma_"max" -> 0^-) frac(sigma_"min", sigma_"max") = -oo, quad R_a = -1 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [4. *Cicli pulsanti (di trazione o di compressione):* cicli nei quali la tensione non cambia mai segno né si annulla, rimanendo confinata nello stesso semipiano rispetto all'asse temporale:
   - #text(fill:blue.transparentize(0%), weight: "bold")[*Ciclo pulsante di trazione:*]  $sigma_"min" > 0$ e $sigma_"max" > 0$ (con $0 < R < 1$).
   - #text(fill:red.transparentize(10%), weight: "bold")[*Ciclo pulsante di compressione:*] $sigma_"min" < 0$ e $sigma_"max" < 0$ (con $1 < R < +oo$).],[#figure(
  include "figs/fatica-fig06.typ")])




#pagebreak()


== Analisi delle Rotture per Fatica <analisi-delle-rotture-per-fatica>

*Caratteristiche Generali:* Il cedimento a fatica è un fenomeno intrinsecamente *permanente* (non esiste recupero del danno), *progressivo* (basato sull'accumulo del danno ciclo dopo ciclo) e fortemente *localizzato*. Il processo si divide rigorosamente in tre fasi temporali distinte:

 *Fase 1: Nucleazione (o Innesco)* \
  Si innesca sempre a livello superficiale. L'azione dei carichi dinamici produce scorrimenti microscopici che generano ondulazioni, intrusioni ed estrusioni. Queste alterano la regolarità microscopica agendo come micro-intagli, che concentrano le tensioni e fessurano il materiale.

  // [DA SLIDE]
  _Meccanismo microstrutturale e paradosso elastico-plastico:_ Sotto l'azione di una sollecitazione ciclica $Delta F$, anche quando la tensione nominale è ampiamente inferiore al limite di snervamento del materiale, alcuni *grani cristallini superficiali favorevolmente orientati* reagiscono generando e muovendo *dislocazioni*. 
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
  Poiché il moto delle dislocazioni lungo i piani cristallini non è perfettamente reversibile tra la fase di carico e quella di scarico, l'accumulo dei cicli produce bande di scorrimento persistenti (*persistent slip bands*) che emergono in superficie sotto forma di *estrusioni* (*slipband extrusions*) e *intrusioni* (*ridges and grooves*), creando gradini e ondulazioni dell'ordine di $ mu"m"$. 
  
  Si tratta quindi di fenomeni di *natura plastica, ma strettamente localizzati* a livello microscopico, tanto che il comportamento globale (macroscopico) del componente rimane *ancora pienamente elastico*. Queste micro-irregolarità geometriche agiscono come severi innalzatori di tensione superficiali, rendendo la superficie incline alla fessurazione (innesco della micro-cricca).
],[#figure(
    include "figs/fatica-fig07.typ")])
  // [DA AUDIO]
  Tale disordine microstrutturale si genera anche qualora la superficie metallica di partenza sia *perfettamente liscia e lappata a specchio* (priva di rugosità o difetti iniziali). Inoltre, l'effetto di concentrazione tensionale non è uniforme lungo il profilo ondulato: mentre sugli *apici* delle estrusioni sporgenti l'innalzamento tensionale è poco sensibile, sul fondo delle *gole* (intrusioni e rientranze a spigolo vivo) si crea un vero e proprio *intaglio occulto* fortemente localizzato, nel quale l'intensificazione delle tensioni supera localmente la resistenza del materiale provocando la micro-fessurazione iniziale.

  

- *Fase 2: Propagazione Stabile* \
  Consiste nel progressivo avanzamento della microfrattura all'interno del materiale. La superficie risultante è tipicamente caratterizzata da due elementi:
  - Presenza di _"linee di spiaggia"_ (beachmarks), segni fisici permanenti che mappano le pause o le variazioni macroscopiche del fronte di scorrimento.
  - Una morfologia liscia, dovuta al continuo "martellamento" tra i lembi della cricca che si aprono e si chiudono durante le inversioni del carico, appiattendo le asperità.
    // [DA AUDIO]
    L'avanzamento e l'avvicinamento ripetuto dei due lembi della frattura produce un *gradiente di levigatezza e lucentezza* lungo la superficie di propagazione: la regione immediatamente adiacente all'innesco, essendosi fessurata per prima, subisce il maggior numero complessivo di cicli di martellamento e appare quindi *estremamente vellutata al tatto e molto lucente*.
  All'apice della cricca si sviluppano altissime tensioni che incrudiscono localmente il materiale (blunting). I cicli successivi devono accumulare maggiore energia per lacerare questa "bolla" resistente, causando continui aggiustamenti nella direzione di propagazione, facendo ruotare localmente la direzione delle tensioni tangenti all'apice, producendo arrotondamenti dell'apice stesso e deviazioni microscopiche del percorso di taglio.

  
  
  

- *Fase 3: Rottura Finale Instabile (Schianto)* \
  Rappresenta il collasso istantaneo. La progressione ciclica erode la sezione resistente fino a renderla troppo esigua per sopportare le sollecitazioni. Superato il limite di tenacità, la propagazione diventa subitanea. Questa superficie si presenta *ruvida, scabrosa e fragile*, poiché distaccandosi istantaneamente non subisce il martellamento tipico della fase precedente.

  // [DA AUDIO]
  Poiché in quest'ultima fase la sezione residua è ormai insufficiente e la tensione locale supera il limite di resistenza statica oltre che la tenacità a frattura, i due lembi si separano in un unico istante senza alcuna possibilità di richiudersi: ne consegue che la *linea di frontiera* (demarcazione) tra la regione martellata e la regione scabrosa di rottura finale risulta sempre *estremamente netta*.

  // [DA SLIDE]
  Sebbene la rottura finale presenti tipicamente un *aspetto fragile* anche nei materiali duttili (a causa della severa triassialità delle tensioni all'apice della cricca e della rapidità del cedimento che impedisce la strizione globale), in prossimità dei bordi liberi esterni della zona di schianto possono formarsi dei *bordi di scorrimento a taglio* (*shear lips*, inclinati a $45^circ$) o porzioni di rottura finale duttile (per coalescenza di microvuoti) qualora lo stato di tensione piana locale consenta uno scorrimento plastico finale prima del distacco.

*Anatomia completa di una superficie di frattura a fatica:* Osservando macroscopicamente la sezione di un componente ceduto a fatica (ad esempio soggetto a trazione-compressione o flessione), si individuano sei regioni caratteristiche:
1. *Zona di nucleazione (innesco):* Punto o area perimetrale da cui si origina la cricca (spesso in corrispondenza di difetti superficiali, spallamenti o tracce di usura).
2. *Linee di arresto e di "spiaggia" (beachmarks):* Bande concentriche attorno all'innesco che segnano le posizioni successive del fronte di cricca in corrispondenza di arresti della macchina o variazioni dell'ampiezza del carico in esercizio che si progagano radialmente dalla zona di nucleazione.
3. *Zone con diversa granulosità:* Variazioni di rugosità nella regione di propagazione legate alla velocità di avanzamento della cricca (più fine e liscia vicino all'innesco dove la crescita è lenta, più grossolana man mano che ci si avvicina allo schianto).
4. *"Bordi radiali" (ratchet marks):* Gradini longitudinali quasi radiali che si formano quando più cricche si innescano in punti vicini su piani leggermente sfalsati; avanzando, i fronti di cricca si uniscono tramite un *cambiamento del piano di propagazione*, lasciando uno scalino visibile.
   // [DA AUDIO]
   Mentre le linee di spiaggia si propagano come onde concentriche, nelle sezioni circolari questi solchi si irradiano dal punto di nucleazione *come i raggi di un sole*.
5. *Zona di rottura finale (schianto):* Area ruvida e scabrosa di collasso statico istantaneo della sezione residua.
6. *Bordi di scorrimento a taglio (shear lips):* Smussi plastici localizzati sul contorno finale di distacco.
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
#figure(
  include "figs/fatica-fig08.typ"
)],[#image("images/linee_di_spiaggia.jpg", width: 80%)])


*Esempi reali di innesco su organi di macchine:* Nella pratica ingegneristica l'innesco è spesso innescato dalla sinergia tra geometria e condizioni superficiali:
- *Alberi con spallamento:* La brusca variazione di diametro crea una concentrazione di tensione alla radice dello spallamento da cui parte la zona liscia e rilucente di propagazione, seguita dalla zona scabrosa di schianto.
  // [DA AUDIO]
  Una situazione ancora più severa si verifica quando in corrispondenza dello spallamento viene praticato un *foro di lubrificazione*: la sovrapposizione dell'intaglio dovuto alla brusca riduzione di diametro e dell'intaglio dovuto al foro genera un picco tensionale localizzato che innesca una zona di propagazione liscia a forma pressoché conica.
  
- *Perno di biella (interazione usura-fatica):* Sulla superficie del perno, il contatto strisciante genera *striature dovute ad usura* e *linee di passaggio di portata* che degradano la finitura superficiale che agiscono da innesco per la cricca di fatica.

*Deduzioni Diagnostiche dall'Analisi Frattografica:* Leggere l'aspetto morfologico del pezzo collassato fornisce parametri inestimabili sulle effettive condizioni di utilizzo:

- *Morfologia dell'innesco:* La presenza di *inneschi multipli* (punti sorgente allineati lungo il perimetro) è un forte indicatore di severi effetti di intaglio, tipicamente imputabili a variazioni brusche di sezione o errori di progettazione (es. spigoli vivi non raccordati).


// [DA SLIDE]
 *Influenza combinata del tipo di sollecitazione e dell'effetto d'intaglio (Atlante Frattografico):* Incrociando la modalità di carico, il livello di tensione nominale (alta vs bassa) e la severità dell'intaglio (assente, debole o elevato) su sezioni circolari e rettangolari, la superficie di frattura assume configurazioni diagnostiche ben precise: la regione di rottura fragile finale (schianto) risulta *sempre più estesa nel pezzo intagliato* rispetto a quello liscio.
- *Sezioni quadrate e rettangolari:* Quando la sezione trasversale passa da circolare a quadrata o rettangolare, valgono i medesimi criteri interpretativi ma con l'*aggravante degli spigoli vivi* del profilo prismatico, i quali agiscono come ulteriori concentratori di tensione modificando localmente il contorno della zona martellata rispetto alla zona di schianto finale.
 #grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Carichi assiali (Trazione-Compressione):* Poiché la tensione nominale è uniforme su tutta la sezione, in un *provino liscio* (o con debole intaglio) la cricca si innesca in un singolo punto debole del perimetro e avanza con fronte convesso verso il bordo opposto. In presenza di un *forte effetto d'intaglio*, invece, l'innalzamento tensionale perimetrale fa nucleare la cricca simultaneamente lungo tutto il contorno, spostando la zona di rottura finale al centro della sezione.],[



#include "figs/fatica-fig09.typ"])
#v(1em)
  #grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Flessione piana unidirezionale (ripetuta o pulsante):* Solo un lembo della sezione (quello teso) è soggetto a trazione ciclica. La cricca nuclea esclusivamente sul lato teso e avanza verso la fibra compressa opposta. Se l'effetto d'intaglio è assente, le linee di spiaggia sono convesse verso l'interno; se l'effetto d'intaglio è elevato, la cricca corre più velocemente lungo i bordi esterni (dove la concentrazione tensionale è massima), incurvando il fronte di avanzamento fino a renderlo concavo.],[
#include "figs/fatica-fig10.typ"])
#v(1em)  
  #grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Flessione piana alternata ($R = -1$ senza rotazione):* Entrambe le fibre estreme opposte passano ciclicamente in trazione. Si sviluppano quindi *due zone di innesco diametralmente opposte* (sui due lembi più sollecitati) che propagano simmetricamente verso il centro. La zona di schianto finale rimane confinata in una fascia centrale lungo l'asse neutro della sezione.
     ],[

#include "figs/fatica-fig11.typ"])
  Nella *flessione piana alternata*  la presenza delle due fratture concorrenti verso il centro è inequivocabilmente diagnosticata dalla *curvatura contrapposta delle linee di spiaggia (beachmarks)* provenienti dai due bordi opposti; la fascia centrale di rottura finale risulta tanto più ampia quanto più elevate sono la tensione nominale e la concentrazione di tensione.
  *Flessione rotante:* Poiché l'albero ruota sotto carico flettente, ogni fibra perimetrale sperimenta il picco di trazione a ogni giro.
    - Se il pezzo è *liscio o debolmente intagliato*, l'innesco parte da un punto singolo ma il fronte di propagazione si sviluppa in modo *asimmetrico*, apparendo ruotato (sfalsato angolarmente) in senso opposto al verso di rotazione dell'albero, con una serie di bordi radiali pronunciati.
    - Se il pezzo presenta un *forte intaglio circonferenziale* (o tensioni nominali molto elevate), l'innesco è multiplo lungo tutta la circonferenza; il fronte di fatica converge radialmente da tutti i lati e racchiude la zona di rottura finale in un'*isola interna* (quasi centrale, ma leggermente eccentrica per effetto del gradiente flessionale e della rotazione).
#figure(
  include "figs/fatica-fig12.typ"
)

#pagebreak()
== Confronto Trazione Torsione Statica e Fatica :
  - *Caso Statico ($F$ costante):* Superato il carico di snervamento su tutta la sezione, il materiale duttile subisce una forte deformazione plastica macroscopica (strizione) e cede per scorrimento lungo i piani di massima tensione tangenziale ($tau_"max" = sigma / 2$), inclinati di *$45^circ$* rispetto all'asse del carico .
  - *Caso a Fatica ($F'(t)$ ciclico):* La tensione nominale resta in campo elastico; la cricca nuclea localmente e si propaga in direzione normale alla tensione principale massima $sigma_"max"$, producendo una *decoesione frontale netta a $90^circ$* rispetto all'asse del carico, *priva di strizione* e con aspetto macroscopico da *rottura fragile*.

- *Sollecitazione di Torsione (Sezioni circolari lisce e intagliate):* Nello stato di pura torsione, i piani trasversali ($90^circ$) e longitudinali ($0^circ$) sono soggetti alla tensione tangenziale massima $tau_"max"$, mentre le tensioni principali di trazione e compressione ($sigma_1 = +tau_"max"$, $sigma_3 = -tau_"max"$) agiscono su piani inclinati a *$plus.minus 45^circ$* rispetto all'asse dell'albero:
  - *Caso Statico:* Un albero duttile cede per scorrimento plastico torsionale lungo il piano dove agisce direttamente $tau_"max"$, producendo una *recisione piana netta a $90^circ$* (ortogonale all'asse).
  - *Caso a Fatica (Sezione circolare liscia):* Dopo il micro-innesco, la cricca si propaga ortogonalmente alla massima tensione normale di trazione $sigma_"max"$, sviluppandosi lungo un'elica inclinata a *$45^circ$* (rottura *"a becco di flauto"*). Se la torsione è *alternata*, si attivano entrambe le direzioni principali coniugate a $plus.minus 45^circ$, generando caratteristiche ramificazioni simmetriche a *"X"* sulla superficie cilindrica.
  

#figure(

include "figs/fatica-fig13.typ"

)





#v(1em)


== Caratterizzazione a Fatica: La Flessione Rotante <caratterizzazione-a-fatica-la-flessione-rotante>

I dati fondamentali per la caratterizzazione a fatica dei materiali derivano storicamente da prove di *flessione rotante* con sollecitazione nominale ciclica ad ampiezza costante.

*La Macchina di Wöhler (Flessione rotante a quattro appoggi):* Come visibile nello schema a fianco, la provetta è supportata alle estremità ed è soggetta a forze concentrate nelle zone mediane. Questo genera un diagramma del momento flettente a trapezio, garantendo un momento flettente $M_f$ perfettamente costante nella zona centrale calibrata. La tensione massima ($sigma_"max"$) sulle fibre esterne della sezione segue la formula di Navier: 
$ sigma_"max" = M_f / W_f $ 
dove $W_f$ è il modulo di resistenza a flessione.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    A causa della rapida rotazione, un singolo volumetto di materiale sulla superficie esterna esplora l'intero gradiente di tensioni in un giro completo.

    *Risultato fondamentale:* Il provino subisce localmente un carico ciclico nel tempo rigorosamente *alterno simmetrico* ($sigma_m = 0$, $R = -1$).
  ],
  [
    #image("images/image2.png", width: 90%)
  ]
)
#v(1em)

*Condizioni standard del provino:* Per caratterizzare il materiale puro, le normative impongono l'utilizzo di provette con diametro di circa $10 "mm"$ e una superficie rigorosamente lucidata a specchio (per evitare che la finitura grezza funga da intaglio). Non vi è dipendenza significativa dalla frequenza nel range compreso tra $1$ e $100 "Hz"$.

*Nota bene (Effetti della Frequenza e della Temperatura):* Limitare la frequenza impedisce un eccessivo smorzamento strutturale interno. A frequenze superiori, l'energia dissipata si trasforma in calore, surriscaldando il provino e accoppiando impropriamente la fatica meccanica a quella termica, falsando i risultati.

*Diagrammi di Wöhler (Curve S-N):* Rappresentano i dati sperimentali riportando in ascissa il logaritmo del numero di cicli ($N$) e in ordinata l'ampiezza di sollecitazione alternata ($sigma_a$). Si individuano tre regioni principali:

- *Fatica oligociclica (LCF - Low Cycle Fatigue, fino a $approx 10^3$ cicli):* Parte dal comportamento statico. I livelli di tensione sono altissimi, entrando in un regime spiccatamente elasto-plastico. Spesso viene analizzata a parte tramite la deformazione.
- *Resistenza a termine (HCF - High Cycle Fatigue):* Vi è una stretta dipendenza tra l'abbattimento della resistenza e l'aumento dei cicli; la curva cade progressivamente.
- *Resistenza a vita infinita:* Inizia dopo un punto di transizione detto "ginocchio". La curva tende ad un asintoto orizzontale definito *limite di fatica* ($sigma_D$). Al di sotto di tale limite, il materiale non subisce apparentemente diminuzioni di resistenza ciclica.

*Metodo Staircase (Per la determinazione del limite di fatica):* Poiché la fatica è un fenomeno intrinsecamente disperso, si usano metodi statistici. Il metodo Staircase varia l'ampiezza di carico a salti costanti ($d$) alzandola o abbassandola in base all'esito della prova precedente (rotta o non rotta) su un traguardo di cicli prefissato (es. $2 dot 10^6$). Il risultato fornisce la curva mediana usata in progettazione, corrispondente a una probabilità di rottura del 50% (valore $B_50$). Occorrono almeno 15 provini utili per determinare validamente un singolo punto asintotico.

*Stima di prima approssimazione del limite di fatica:* Dato l'enorme sforzo sperimentale richiesto, storicamente si tenta di correlare la resistenza a fatica al carico unitario di rottura statico ($R_m$):

*Criterio di Bach:*
$ sigma_"D-1" &= 0.5 dot R_m quad &("Cicli puramente alternati, " R = -1) \
  sigma_"D0" &= 0.3 dot R_m quad &("Cicli all'origine, " R = 0) $

*Criterio di Fuchs (Specifico per acciai legati):*
$ sigma_"D-1" &= 0.5 dot R_m quad &"per " R_m < 1400 " MPa" \
  sigma_"D-1" &= 700 " MPa" quad &"per " R_m >= 1400 " MPa" $
Questi criteri empirici sono tollerabili esclusivamente per stime preliminari, ma inaccettabili per la progettazione esecutiva dove i dati sperimentali esatti sono mandatori.

== Costruzione della Curva S-N ed Equazione di Basquin <costruzione-della-curva-s-n-ed-equazione-di-basquin>

La costruzione approssimata numerica del diagramma S-N rettifica la curva nella regione di resistenza a termine utilizzando una rappresentazione in *scala log-log*. I due poli di ancoraggio per tracciare questo segmento rettilineo sono mostrati nella figura a fianco.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Punto F (Inizio pendenza):* Esclude la fatica oligociclica innescando da $N_F = 10^3$ cicli. La tensione corrispondente si stima come $sigma_F = 0.9(R_m - sigma_m)$.
    - *Punto G (Ginocchio):* Fissato al numero di cicli $N_G$ (tipicamente $2 dot 10^6$ per gli acciai e $10^7$ per l'alluminio) in corrispondenza del limite di fatica $sigma_D$.
  ],
  [
    // commenti: sistema fisico (curva di Wöhler), elementi (assi, scala logaritmica compressa sull'asse x, curva spezzata), relazioni (ginocchio a vita infinita, pendenza), elementi ignorati (curvatura a mano)
#include "figs/fatica-fig14.typ"
  ]
)
#v(1em)

Nei diagrammi log-log, il tratto inclinato è rigorosamente rettilineo ed è normato dall'*Equazione di Basquin*:
$ N sigma_a^k = B ==> log(N) = log(B) - k log(sigma_a) $
I parametri costanti $B$ (intercetta spaziale) e $k$ (pendenza) si determinano analiticamente imponendo il passaggio della retta per i due punti noti $F$ e $G$.

Impostiamo il sistema di equazioni logaritmiche per i punti $F$ e $G$:
$ cases(
  log(N_F) = log(B) - k log(sigma_F),
  log(N_G) = log(B) - k log(sigma_D)
) $

Sottraendo la prima equazione dalla seconda per eliminare l'incognita $log(B)$, isoliamo la pendenza $k$:
$ log(N_G) - log(N_F) = - k log(sigma_D) + k log(sigma_F) = k [log(sigma_F) - log(sigma_D)] $
$ bold(k = (log(N_G) - log(N_F)) / (log(sigma_F) - log(sigma_D))) $

Una volta nota la pendenza $k$, la costante $B$ si ricava immediatamente sostituendo le coordinate del ginocchio (o del punto F) nell'equazione originaria: 
$ bold(B = N_G dot sigma_D^k) $

Nota l'equazione completa, è possibile calcolare la durata attesa $N$ per una qualsiasi ampiezza di sollecitazione $sigma_a$ compresa nel tratto a termine, semplicemente invertendo la formula:
$ bold(N = B / sigma_a^k) $

== Effetto della Tensione Media ($sigma_m$) <effetto-della-tensione-media-sigma_m>

Le prove dimostrano che la resistenza a fatica precipita se la tensione media di trazione sale. È fondamentale distinguere tra le condizioni di laboratorio e quelle reali di esercizio:

- Le *prove a fatica standard* (curva di Wöhler) operano a tensione media fissa, tipicamente nulla (*$sigma_m = 0$*, ciclo alterno simmetrico).
- Nella *pratica applicativa reale*, i componenti meccanici sono quasi sempre soggetti a carichi che includono una componente statica (*$sigma_m != 0$*).

All'aumentare del valore della tensione media $sigma_m$, la durata a fatica del componente *diminuisce*. Questo effetto è particolarmente critico quando la tensione media è di trazione (*$sigma_m > 0$*); in tal caso, l'ampiezza di sollecitazione alternata ($sigma_a$) tollerabile *decresce in modo molto rapido*, in quanto la trazione media favorisce l'apertura e la propagazione delle cricche. Al contrario, una tensione media di compressione ($sigma_m < 0$) può moderatamente accrescere la resistenza, ostacolando l'apertura dei difetti.

== Diagramma di Haigh e Margini di Sicurezza <diagramma-di-haigh-e-margini-di-sicurezza>

Per analizzare l'effetto combinato della tensione alternata e media a parità di numero di cicli (generalmente in area di sicurezza per vita illimitata), si introduce il *Diagramma di Haigh*. Esso riporta in ascissa la tensione media $sigma_m$ e in ordinata la tensione alternata $sigma_a$.

Per semplificare in ottica cautelativa per il progetto, si utilizza la *Retta di Goodman*, che congiunge il limite di fatica puro $sigma_"D-1"$ (sull'asse delle ordinate) con il carico di rottura statica $R_m$ (sull'asse delle ascisse). L'equazione della retta è:
$ sigma_D / sigma_"D-1" + sigma_m / R_m = 1 ==> sigma_D = sigma_"D-1" - sigma_"D-1" / R_m sigma_m $
Tale formulazione definisce il "tetto" per non avere cedimenti da fatica.

Oltre alla fatica, si deve evitare lo snervamento statico. Si introducono nel diagramma rette a $-45^circ$ (e $+45^circ$ a sinistra) partendo dai limiti di snervamento plastico $R_"eH"$. L'area reale di sicurezza è il poligono marcato dall'incrocio tra l'area sotto la retta di Goodman e le rette di plasticizzazione.

#figure(
  table(
    columns: 2,
    align: (center, left),
    table.header([*Tratto*], [*Dominio di validità della tensione media ($sigma_m$)*]),
    [*a*], [Da snervamento a compressione al vertice sinistro del diagramma di fatica: \ $- R_"eH" <= sigma_m <= sigma_"D-1" - R_"eH"$],
    [*b*], [Ramo ascendente per compressione decrescente (nessuna penalizzazione a fatica): \ $sigma_"D-1" - R_"eH" <= sigma_m <= 0$],
    [*c*], [Ramo discendente principale di fatica in trazione (Retta di Goodman): \ $0 <= sigma_m <= (R_"eH" - sigma_"D-1") / (1 - sigma_"D-1"/R_m)$],
    [*d*], [Troncamento per snervamento statico in trazione (il collasso avviene prima per plasticizzazione che per fatica): \ $(R_"eH" - sigma_"D-1") / (1 - sigma_"D-1"/R_m) <= sigma_m <= R_"eH"$],
  ),
  caption: [*Analisi del Poligono di Haigh: Definizione dei Tratti Limite per $sigma_m$*]
)

#grid(
  columns: (0.8fr, 1.5fr),
  column-gutter: 1.9em,
  align: (left + horizon, center + horizon),
  [
    Il *Poligono di Sicurezza Completo* (visibile a fianco, noto anche come diagramma di Goodman-Smith se tracciato con le tensioni estreme) impone che le pendenze a fatica siano troncate dai segmenti lineari dello snervamento statico. Questo garantisce la protezione dei materiali duttili sia contro il cedimento progressivo, sia contro deformazioni plastiche macroscopiche.
  ],
  [
    #include "figs/fatica-fig15.typ"
  ]
)

#v(1em)

*Valutazione del Coefficiente di Sicurezza ($C S$):* Se un punto di lavoro $P(sigma_m, sigma_a)$ è all'interno del contorno, è in condizioni di sicurezza. Quantificare il margine richiede di misurare una distanza dal contorno lungo una direzione che descriva l'evoluzione fisica del carico (il "ciclo di esplosione").

#grid(
  columns: (0.6fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Se assumiamo che entrambe le fluttuazioni crescano mantenendo inalterato il loro rapporto (proporzionalmente), la progressione verso la rottura descrive un segmento radiale passante per l'origine. Il $C S$ si calcola come rapporto tra le ampiezze limite e quelle operative:
    $ C S = sigma_a^"lim" / sigma_a^P = sigma_m^"lim" / sigma_m^P $
  ],
  [
    #include "figs/fatica-fig16.typ"
  ]
)
#v(1em)






Analisi delle traiettorie alternative del punto di lavoro $P$ verso il limite:

- Se $sigma_m = "costante"$ (es. recipiente a pressione durante un sisma): La traiettoria è verticale e va a intersecare il limite superiore per l'ascissa $sigma_m^P$. Il $C S$ è il rapporto delle sole ampiezze alternate.
- Se $sigma_a = "costante"$ (es. innalzamento progressivo della pressione di fondo con vibrazioni costanti): La traiettoria è orizzontale e interseca il confine di sicurezza sul limite destro. Il $C S$ si basa sulle sole ascisse.
- Se è presente un precarico fisso iniziale (tensioni residue): Il punto di lavoro risulta traslato di una quantità pari alla tensione residua ($sigma_"res"$), riducendo o aumentando il margine a seconda che sia di trazione o compressione.

== Calcolo a Vita Limitata e Fattori Modificanti
<calcolo-a-vita-limitata-e-fattori-modificanti>

In contesti ingegneristici in cui non è richiesta una vita infinita del componente, il diagramma limite di Haigh non viene tracciato utilizzando il limite di fatica asintotico $sigma_D$, bensì ricorrendo alle *ampiezze di sollecitazione tollerabili $sigma_N$*. Questi valori limite, che risultano rigorosamente maggiori di $sigma_D$, vengono estratti direttamente dalle curve S-N di Wöhler per il numero di cicli $N$ target di progetto e valutati per differenti livelli di tensione media.

Basandosi sull'equazione di Basquin per i diagrammi logaritmici (log-log), possiamo correlare il numero di cicli a rottura con l'ampiezza di tensione. Se $N_L$ è la vita a rottura per una tensione operativa $sigma_a$, e $N_0$ è la vita di progetto associata alla tensione limite $sigma_(N 0)$, vale la relazione:

$ N_L dot sigma_a^k = N_0 dot sigma_(N 0)^k quad ==> quad N_L / N_0 = (sigma_(N 0) / sigma_a)^k $

Definendo il coefficiente di sicurezza a vita limitata come $"CS"_N = N_L / N_0$ e il coefficiente di sicurezza sulle tensioni come $"CS"_sigma = sigma_(N 0) / sigma_a$, otteniamo la relazione fondamentale:

$ "CS"_N = "CS"_sigma^k $

dove $k$ è l'esponente derivato dalla pendenza della curva di Wöhler nel tratto a termine.

=== Dal Provino di Laboratorio al Componente Reale

I dati di fatica grezzi provengono da provini ideali, di piccole dimensioni e con superfici lucidate a specchio. Per stimare la reale resistenza a fatica di un componente industriale, è indispensabile declassare il limite teorico $sigma_(D-1)$ tramite l'applicazione di una serie di fattori riduttivi (o _modificanti_). Il limite di fatica corretto del componente, $sigma_(D-1)^C$, si esprime come:

$ sigma_(D-1)^C = sigma_(D-1) dot product C_i quad ==> quad sigma_(D-1)^C = C_L dot C_S dot C_F dot sigma_(D-1) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Fattore $C_S$ (Effetto Dimensionale e di Scala):* \
    Questo parametro corregge il limite di fatica tenendo conto delle reali dimensioni del componente in presenza di gradienti di tensione (flessione o torsione). All'aumentare del diametro, il gradiente di tensione dalla superficie verso il cuore diviene meno "ripido". Di conseguenza, un volume molto maggiore di materiale si trova sottoposto a livelli tensionali critici. Statisticamente, ciò incrementa la probabilità di intercettare difetti reticolari, riducendo la resistenza. Si noti che per diametri molto grandi, il gradiente si appiattisce convergendo asintoticamente al caso della trazione pura, assestandosi su un valore limite $C_S approx 0.7$.
  ],
  [#include "figs/fatica-fig17.typ"
  ]
)

#v(1em)

*Fattore $C_F$ (Finitura Superficiale e Trattamenti)*

Lo stato superficiale incide drammaticamente sulla vita utile, poiché le cricche di fatica nucleano quasi esclusivamente all'esterno. È fondamentale notare che l'effetto della finitura superficiale dipende dal carico di rottura $R_m$ del materiale: materiali alto-resistenziali (con elevato $R_m$) sono intrinsecamente più fragili e, di conseguenza, subiscono un declassamento molto più severo in presenza di finiture non ottimali o asperità.

L'introduzione controllata di uno *stato di tensione residua di compressione* sulla superficie genera un effetto altamente benefico. Trattamenti idonei allo scopo includono la pallinatura (shot peening), la rullatura a freddo, la cementazione e la nitrurazione.

Il meccanismo fisico protettivo si basa sull'applicazione di un carico locale molto intenso che porta a snervamento plastico (in compressione) lo strato più esterno. Il nucleo sottostante, rimanendo in campo elastico, si oppone all'espansione laterale dello strato deformato. Il risultato pratico è la generazione di un guscio costantemente sollecitato a compressione autobilanciata, che ostacola attivamente l'apertura e la propagazione delle micro-cricche.

_Attenzione alle criticità:_ L'effetto benefico può perdersi o ribaltarsi. Operazioni miste come la formatura a freddo hanno risultati variabili. Processi di formatura e rullatura _a caldo_ generano quasi invariabilmente un effetto negativo, introducendo tensioni residue superficiali di _trazione_ a causa della decarburazione. Al contrario, trattamenti termici come la *tempra* (specialmente a induzione) risultano benefici, poiché la trasformazione martensitica superficiale induce un'espansione volumetrica che genera tensioni residue di compressione. Ulteriori trattamenti chimico-galvanici che declassano la fatica sono la cromatura spessa, la nichelatura e l'anodizzazione.

*Fattore di Carico ($C_L$): Flessione vs. Trazione pura*

L'esperienza sperimentale dimostra che a scatenare la rottura per fatica non è il mero raggiungimento puntuale della tensione $sigma_max$ in superficie, ma lo sforzo gravante su un *volume efficace* di materiale situato in uno strato sottocutaneo critico.

- *Sollecitazione Flessionale:* È caratterizzata da un gradiente di sforzo molto ripido. La "zona di processo" critica interna sopporta una tensione mediata notevolmente inferiore al picco massimo superficiale.

- *Sollecitazione di Trazione pura:* A parità teorica di tensione massima superficiale, la trazione pura impone uno sforzo elevato e omogeneo su un volume di materiale immensamente maggiore rispetto alla flessione.

Questo stato tensionale omogeneo su ampi volumi agevola drammaticamente l'innesco di difetti statistici. Il valore empirico di sicurezza standard adottato per compensare questo effetto in caso di trazione è un coefficiente correttivo $C_L approx 0.7 div 0.85$. Da qui deriva la relazione operativa per calcolare il limite in trazione-compressione ($sigma_(D-1)^(t c)$) partendo da quello noto per flessione ($sigma_(D-1)^b$):

$ sigma_(D-1)^(t c) = alpha dot sigma_(D-1)^b $ 

dove $alpha$ coincide numericamente con $C_L$.

*Scala di Declassamento dei Carichi (Rispetto alla base di flessione rotante = 100%):*

- Flessione rotante pura: *100%* (Condizione ideale base).
- Flessione alternata piana (su un solo piano di sollecitazione): *$95 div 99 %$*.
- Trazione alternata pura (Carico assiale): Severa riduzione a *$70 div 85 %$*.
- Torsione alternata pura trasversale: *58%*.

== Effetti Geometrici di Intaglio (Concentrazione delle Tensioni)
<effetti-geometrici-di-intaglio-concentrazione-delle-tensioni>

Un intaglio geometrico (fori, gole, variazioni di sezione, raccordi) provoca un innalzamento locale e asintotico dello stato tensionale rispetto al valore nominale di progetto. Tale incremento è definito dalla relazione:

$ sigma_"locale" = K_t dot sigma_n quad "dove" quad K_t = sigma_max / sigma_n $

dove $K_t$ è il Fattore teorico di Concentrazione delle Tensioni.

Dal punto di vista della meccanica dei solidi, le repentine variazioni di sezione costringono le linee primarie di flusso tensionale a deviare bruscamente dalla loro traiettoria rettilinea e ad "affollarsi" attorno al difetto geometrico. Questa deformazione del campo genera una formidabile amplificazione locale dello stress, fungendo da innesco primario per il cedimento strutturale. Qualora la geometria presenti intagli multipli ravvicinati, nella progettazione convenzionale è ammissibile ricorrere all'applicazione lineare del Principio di Sovrapposizione degli Effetti.

=== Cedimento Statico Unidimensionale (1D)
<cedimento-statico-unidimensionale-1d>

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *1D - Materiali Fragili (es. ghise, ceramici):* \
    L'approccio è estremamente severo. Essendo incapaci di ridistribuire lo sforzo per scorrimento plastico, si assume che il collasso avvenga non appena in un qualsiasi singolo punto della sezione minima resistente il picco locale oltrepassi il limite critico.
    $ sigma_"nom" = P / (h dot b) $
    $ sigma_max = K_t dot sigma_"nom" < R_m $
  ],
  [
    #include "figs/fatica-fig18.typ"
  ]
)
#v(1em)

*1D - Materiali Duttili (es. acciai da costruzione, allumini):* \
La presenza di un'ampia zona plastica permette di differenziare più modalità di cedimento:

- *Criterio di primo snervamento (Condizione progettuale restrittiva ed elastica):* Si impedisce che anche il singolo punto più sollecitato sul bordo dell'intaglio entri in plasticità.
  $ sigma_max = K_t dot sigma_"nom" < R_(e H) $

- *Condizione di completa plasticizzazione della sezione resistente:* Si accetta che il picco di tensione iniziale raggiunga lo snervamento e si "ridistribuisca" verso il cuore del pezzo. Il collasso avviene solo quando l'intera sezione è plastificata. A questo punto, si neutralizza l'effetto geometrico ponendo convenzionalmente $K_t = 1$.
  $ sigma_"nom" < R_(e H) $

- *Criterio di rottura duttile ultima:* Poco prima del collasso catastrofico, il componente intagliato si comporta meccanicamente come se fosse costituito da un pezzo integro dotato di sezione retta costante pari a quella minima, assumendo ancora $K_t = 1$.
  $ sigma_"nom" < R_m $

=== Cedimento Statico Tridimensionale (3D)
<cedimento-statico-tridimensionale-3d>

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *3D - Materiali Fragili (Criterio di Rankine):* \
    In uno stato di sforzo tridimensionale, si applica rigorosamente l'ipotesi di cedimento basata sulla tensione normale massima principale. È obbligatorio esaltare separatamente ciascuna singola componente di tensione applicando il rispettivo fattore geometrico $K_t$.
    $ sigma_max &= K_(t b) dot sigma^b + K_(t t c) dot sigma^(t c) \
      tau_max &= K_(t tau) dot tau $
    Si calcola quindi la tensione normale principale massima equivalente:
    $ sigma_("id", max) = sigma_max / 2 + sqrt((sigma_max / 2)^2 + tau_max^2) <= R_m $
  ],
  [
    #image("images/image9.png", width: 70%)
  ]
)
#v(1em)
*3D - Materiali Duttili:* \
Poiché la ridistribuzione plastica attorno a geometrie intagliate 3D è ingovernabile analiticamente, la normativa progettuale prevede di procedere per vie convenzionali:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *1. Verifica convenzionale a primo snervamento 3D:* \
    Si utilizza il criterio dell'energia di distorsione (Von Mises) per calcolare la tensione ideale, avendo cura di amplificare preliminarmente le tensioni nominali di base con i rispettivi fattori geometrici $K_t$ prima di inserirle sotto radice.
    $ sigma_max^b &= K_(t b) dot sigma_"nom"^b \
      sigma_max^(t c) &= K_(t t c) dot sigma_"nom"^(t c) \
      tau_max &= K_(t tau) dot tau_"nom" $
    $ sigma_("id", max) = sqrt((sigma_max^b + sigma_max^(t c))^2 + 3 tau_max^2) < R_(e H) $
  ],
  [
    #image("images/image9.png", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *2. Verifica convenzionale a completa plasticizzazione 3D:* \
    Esaurita la ridistribuzione plastica sulla sezione critica, si impone brutalmente $K_t = 1$ per tutte le direzioni. Si procede calcolando la tensione ideale (con Von Mises) basandosi esclusivamente sulle macroscopiche tensioni nominali teoriche di de Saint-Venant.
    $ sigma_("id", "nom") = sqrt((sigma_"nom"^b + sigma_"nom"^(t c))^2 + 3 tau_"nom"^2) < R_(e H) $
  ],
  [
    #image("images/image9.png", width: 70%)
  ]
)
#v(1em)

*3. Verifica convenzionale a rottura duttile estrema 3D:* \
Seguendo la stessa procedura del punto precedente, si utilizza Von Mises ponendo di base $K_t = 1$ e lavorando in tensione nominale per verificare la sopravvivenza rispetto alla resistenza ultima:

$ sigma_("id", "nom") = sqrt((sigma_"nom"^b + sigma_"nom"^(t c))^2 + 3 tau_"nom"^2) < R_m $

=== L'Intaglio in Regime di Fatica Ciclica
<lintaglio-in-regime-di-fatica-ciclica>

A differenza del caso statico, sotto l'azione continua di carichi ciclici, la quantificazione dell'effetto deleterio dell'intaglio introduce una dipendenza fondamentale dal tipo di materiale impiegato. Si definisce il *fattore di intaglio a fatica* $K_f$, che dipende intrinsecamente dal coefficiente di sensibilità $q$.

*Fattore di Sensibilità all'Intaglio ($q$):* È un indice prestazionale specifico della lega metallica, funzionalmente legato al raggio geometrico al fondo dell'intaglio ($r$). Esso esprime "quanto" il materiale soffre la presenza di quello specifico difetto in regime ciclico. Analogamente alla finitura superficiale, la sensibilità all'intaglio $q$ cresce all'aumentare del carico di rottura $R_m$: materiali più resistenti sono più fragili e "sentono" maggiormente l'effetto dell'intaglio.

$ q = (K_f - 1) / (K_t - 1) quad "con campo di esistenza: " quad 0 <= q <= 1 $

L'analisi dei limiti operativi rivela:

- Se $q = 0 ==> K_f = 1$ (Il materiale è insensibile: ignora la presenza dell'intaglio in fatica).
- Se $q = 1 ==> K_f = K_t$ (Il materiale è totalmente sensibile: il danno è massimo e coincide con la concentrazione statica teorica).

Nella pratica progettuale, $q$ può essere calcolato tramite la relazione empirica di Neuber:

$ q = 1 / (1 + sqrt(rho / r)) $

dove $rho$ è una costante intrinseca specifica del materiale e $r$ è il raggio geometrico in millimetri alla radice del difetto. Risolvendo l'equazione della sensibilità si ottiene la relazione finale per il dimensionamento a durata infinita:

$ K_f = 1 + q (K_t - 1) $

_Nota importante:_ L'impiego del fattore riduttivo $K_f$ è rigorosamente valido unicamente per calcoli strutturali riferiti ad alti numeri di cicli (regime HCF e stime per vita a fatica infinita).

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 4em,
  align: (left + horizon, center + horizon),
  [
    *Applicazione di $K_f$ sul punto di lavoro $P (sigma_m, sigma_a)$:* \
    Nell'analisi a fatica, le tensioni nominali di esercizio (sia l'ampiezza alternata che la componente media statica) devono essere amplificate in presenza dell'intaglio prima di verificare la sicurezza:
    $ sigma_m = K_f dot sigma_(m, "nom") quad quad sigma_a = K_f dot sigma_(a, "nom") $
    Considerata l'estrema variabilità dei fenomeni micro-strutturali, la normativa generale raccomanda l'impiego di un Coefficiente di Sicurezza minimo a fatica mai inferiore a 3:
    $ "CS" = sigma_a^"lim" / sigma_a^P >= 3 $
  ],
  [
    // commenti: sistema fisico (Poligono di Sicurezza di Goodman con limite di fatica modificato/ridotto), elementi (assi, linee limiti di rottura, snervamento, fatica originale, nuova retta di fatica rossa orientata verso Rm, poligono area di sicurezza verde ridotto), relazioni (la retta rossa tronca il dominio intersecando le rette di snervamento e mira esattamente a Rm sull'asse orizzontale), elementi ignorati (niente)
#include "figs/fatica-fig19.typ"
  ]
)
#v(1em)



== Fatica Multiassiale: Gough e Pollard
<fatica-multiassiale-gough-e-pollard>

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    I primi modelli interpretativi per determinare l'effetto combinato dei carichi in presenza di sollecitazioni multiassiali semplici derivano dalle campagne di Gough e Pollard. Per i materiali duttili, i punti di rottura si distribuiscono secondo una curva ellittica:
    $ (sigma_a / sigma_(D-1))^2 + (tau_a / tau_(D-1))^2 <= 1 $
  ],
  [
    
#include "figs/fatica-fig20.typ"
// FASE 3 - VERIFICA
// 1. Curva: ellisse centrata in (0,0) con semiassi a=4.8, b=2.8.
//    L'arco a 0deg si trova a (4.8, 0), cadendo esattamente sull'asse x.
//    L'arco a 90deg si trova a (0, 2.8), cadendo esattamente sull'asse y.
// 2. Intersezioni: I punti estremi dell'arco si raccordano perfettamente agli assi.
// 3. Etichette e assi formattati correttamente con la sintassi math e coerenti con la disposizione originale.
// 4. Punti: le coordinate ricadono tutte nei dintorni della curva descritta dall'equazione (x/4.8)^2 + (y/2.8)^2 = 1, come nel disegno.
  ]
)

Ricordando che sperimentalmente il limite torsionale è circa il 60% di quello flessionale ($tau_(D-1) approx sigma_(D-1)/sqrt(3)$), sostituendo e moltiplicando si ottiene:
    $ sigma_a^2 + 3 tau_a^2 <= sigma_(D-1)^2 $
    Estraendo la radice, si giunge alla tensione alternata equivalente:
    $ sqrt(sigma_a^2 + 3 tau_a^2) <= sigma_(D-1) $
  
#v(1em)

== Tensione Equivalente
<tensione-equivalente>

Sulla base del criterio di Gough e Pollard e del criterio di Von Mises, definiamo le tensioni equivalenti per il ciclo di fatica:

$ sigma_(a, "eq") &= sqrt(sigma_a^2 + 3 tau_a^2) && quad " (Tensione alternata equivalente, valida se " sigma_a " è solo flessionale)" \
  sigma_(m, "eq") &= sqrt(sigma_m^2 + 3 tau_m^2) && quad " (Tensione media equivalente da Von Mises)" $

Se fosse presente anche una componente alternata di trazione ($sigma_a^(t c)$), è necessario omogeneizzarla rispetto al limite flessionale dividendo per il fattore di carico $C_L approx 0.85$. La componente tangenziale non viene corretta perché il coefficiente 3 assolve già a questa funzione:

$ sigma_(a, "eq") &= sqrt((sigma_a^b + sigma_a^(t c) / 0.85)^2 + 3 tau_a^2) \
  sigma_(m, "eq") &= sqrt((sigma_m^b + sigma_m^(t c))^2 + 3 tau_m^2) $ 

In presenza di intagli, applicando i rispettivi fattori $K_f$ alle singole componenti operative (come suggerito dalla normativa FKM), otteniamo:

$ sigma_(a, "eq")^"FKM" &= sqrt((K_f^b dot sigma_a^b + (K_f^(t c) dot sigma_a^(t c)) / 0.85)^2 + 3 (K_f^tau dot tau_a)^2) \
  sigma_(m, "eq")^"FKM" &= sqrt((K_f^b dot sigma_m^b + K_f^(t c) dot sigma_m^(t c))^2 + 3 (K_f^tau dot tau_m)^2) $

Con le coordinate $P (sigma_(m, "eq"), sigma_(a, "eq"))$ è possibile posizionare il punto di lavoro sul diagramma di Haigh. Si noti che nel diagramma di Haigh multiassiale non si disegnano più le rette a $45^circ$ per la verifica statica, poiché la tensione massima equivalente 

$ sigma_("eq", max) = sqrt((sigma_max^b + sigma_max^(t c))^2 + 3 tau_max^2) < R_(e H) $

non descrive più una retta a $45^circ$.

== Fatica multiassiale: criterio di Sines
<fatica-multiassiale-criterio-di-sines>

Il Criterio di Sines valuta l'influenza delle sole tensioni medie normali tramite l'invariante dello sforzo, postulando che la tensione media tangenziale sia ininfluente ai fini della fatica. La condizione di cedimento per sollecitazioni in fase si esprime in termini di tensioni principali:
$ 1 / sqrt(2) sqrt((sigma_(a 1) - sigma_(a 2))^2 + (sigma_(a 1) - sigma_(a 3))^2 + (sigma_(a 2) - sigma_(a 3))^2) + m (sigma_(m 1) + sigma_(m 2) + sigma_(m 3)) <= sigma_(D - 1) $
Per un caso di flesso-torsione con un'unica tensione normale media $sigma_m$, l'equazione si semplifica in:
$ sqrt(sigma_a^2 + 3 tau_a^2) + m dot sigma_m <= sigma_(D - 1) $

== Calcolo della durata
<calcolo-della-durata-1>

Per valutare il danneggiamento associato a diversi cicli, si definisce il danno specifico $D_i = n_i / N_i$ provocato da $n_i$ cicli di funzionamento con tensione alternata $sigma_(a i)$ e tensione media costante. Secondo la Legge di Palmgren-Miner, i danni sono cumulativi e la rottura avviene quando la somma eguaglia l'unità:
$ D = sum D_i = sum n_i / N_i = 1 $
Si noti che, per approssimazione ingegneristica, se $sigma_(a i) < sigma_D$ tali tensioni non vengono considerate nel calcolo del danno.

Spesso in fase di progettazione si esprime il numero di cicli $n_i$ in funzione della durata totale $N_"TOT"$ tramite un coefficiente percentuale $alpha_i$ (con $alpha_i < 1$):
$ n_i = alpha_i N_"TOT" $
Sostituendo nella legge di Miner, possiamo esplicitare la durata totale prevista:
$ sum (alpha_i N_"TOT") / N_i = 1 quad ==> quad N_"TOT" sum alpha_i / N_i = 1 quad ==> quad N_"TOT" = 1 / (sum alpha_i / N_i) $
Operando nel campo della fatica ad alto numero di cicli, l'equazione di Basquin regola la porzione inclinata della curva di Wöhler. Possiamo definire una costante $B = sigma_D^k dot N_G$ (dove $N_G$ è il numero di cicli al ginocchio). Per ogni livello di tensione vale:
$ sigma_(a i)^k N_i = B quad -> quad N_i = B / sigma_(a i)^k $
Sostituendo $N_i$ nell'equazione della durata totale, otteniamo:
$ N_"TOT" = B / (sum alpha_i sigma_(a i)^k) quad ==> quad N_"TOT" dot sum alpha_i sigma_(a i)^k = B $
Definendo una tensione alternata equivalente $sigma_(a "eq")$ tale che $sigma_(a "eq")^k dot N_"TOT" = B$, possiamo ricavare:
$ sigma_(a "eq") = root(k, sum alpha_i sigma_(a i)^k) quad "e conseguentemente" quad N_"TOT" = B / sigma_(a "eq")^k $
Nel caso generale in cui sia $sigma_m$ che $sigma_a$ siano variabili, la procedura normativa prevede:

+ Per ogni livello $i$, ricavare il limite di fatica corretto $sigma_(D i)$ dal diagramma di Haigh in funzione della specifica $sigma_(m i)$.
+ Per ogni $sigma_(m i)$, ricostruire una distinta curva di Wöhler calcolando le relative costanti $B$ e $k$.
+ Calcolare i cicli a rottura $N_i$ sulla rispettiva curva.
+ Applicare la sommatoria della legge di Miner.

=== Metodo di conteggio Rainflow
<metodo-di-conteggio-rainflow-2>

#grid(
  columns: (0.7fr, 1fr),
  column-gutter: 2em,
  align: (center + horizon, center + horizon),
  [
    Spettri di carico casuali richiedono il Metodo Rainflow ("versione del serbatoio"). La sua funzione è estrarre il numero esatto di semicicli e cicli completi ($Delta sigma$, $sigma_a$, $sigma_m$) da sequenze irregolari di valli e picchi. L'obiettivo è permettere l'applicazione della legge di Miner tramite l'isolamento dei salti di tensione secondo precise regole di "caduta dell'acqua" lungo il profilo del segnale ruotato.
  ],
  [
    // FASE 1 - ANALISI
// 1. PANNELLI E SCALA: Il disegno è un grafico singolo (storia di carico fatica con conteggio cicli). Scegliamo un fattore di scala canvas opportuno (length: 0.8cm) per evitare overflow in orizzontale.
//    L'asse y mappa direttamente il valore di tensione: y = valore / 50. Quindi y va da -4 (-200 MPa) a 6 (300 MPa).
//    L'asse x rappresenta il tempo t, suddiviso da linee di griglia verticali equispaziate. 
//    Ci sono 56 linee verticali (da indice 0 a 55). Impostiamo una distanza dx = 0.3 tra di esse. La larghezza totale della griglia sarà 55 * 0.3 = 16.5.
// 2. FIGURE IN PROSPETTIVA: Nessuna. È un grafico 2D.
// 3. ELEMENTI:
//    - Sfondo: grigio chiaro.
//    - Griglia orizzontale: 11 linee verdi a y intere da -4 a 6.
//    - Griglia verticale: 56 linee verdi equispaziate da x=0 a x=16.5.
//    - Segnale: una singola polilinea nera continua che unisce i picchi e le valli esatti misurati dalla griglia.
//    - Etichette asse sx: valori della tensione (300, 250, 200... fino a -200). Nota: il segno meno nei valori -100, -150, -200 risulta tagliato fuori dall'immagine originale, ma lo inseriamo per correttezza fisica.
//    - Etichette asse dx: valori di un istogramma o conteggio (1, 4, 9, 14, 21, 23, 21, 14, 9, 4, 1), simmetrici rispetto a 50 MPa.
//    - Testi: "$sigma$ (MPa)" in alto a sinistra, "$t$" in basso a destra.
// 4. CLASSIFICAZIONE DI OGNI CURVA:
//    - Il segnale è una sequenza di segmenti rettilinei, realizzabile con un'unica primitiva `line` passante per i 56 punti misurati. Nessun bezier necessario.

// FASE 2 - COSTRUZIONE
// Valori calcolati:
// Griglia orizzontale (11 linee): y in (-4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6)
// Griglia verticale (56 linee): x = i * 0.3, per i da 0 a 55.
// Coordinate del segnale (x=i*0.3, y=val/50):
// 0:300(6), 1:0(0), 2:200(4), 3:-50(-1), 4:100(2), 5:-100(-2), 6:50(1), 7:-50(-1), 8:100(2), 9:-150(-3),
// 10:50(1), 11:-100(-2), 12:100(2), 13:-50(-1), 14:0(0), 15:-150(-3), 16:50(1), 17:-50(-1), 18:200(4), 19:0(0),
// 20:100(2), 21:-100(-2), 22:50(1), 23:-100(-2), 24:100(2), 25:0(0), 26:-150(-3), 27:0(0), 28:-200(-4), 29:100(2),
// 30:-100(-2), 31:150(3), 32:0(0), 33:200(4), 34:50(1), 35:150(3), 36:100(2), 37:250(5), 38:50(1), 39:200(4),
// 40:-50(-1), 41:150(3), 42:-50(-1), 43:250(5), 44:0(0), 45:150(3), 46:-100(-2), 47:100(2), 48:0(0), 49:200(4),
// 50:50(1), 51:150(3), 52:0(0), 53:250(5), 54:100(2), 55:300(6).
#include "figs/fatica-fig21.typ"
// FASE 3 - VERIFICA
// 1. Griglia: Le linee orizzontali e verticali sono scritte riga per riga per ottemperare al divieto di loop. Le intersezioni mappano fedelmente la griglia del disegno originale.
// 2. Segnale: Un'unica linea spezzata composta da 56 punti, inizia in (0,6) (equivalente a 300 MPa) e termina in (16.5,6) (equivalente a 300 MPa). 
//    Punto di minimo calcolato e controllato: (8.4, -4) corrispondente a -200 MPa al centro del grafico.
// 3. Etichette: Le etichette di destra descrivono una distribuzione simmetrica centrata su y=1 (50 MPa), perfettamente coerente all'originale. Sulla sinistra i valori -100, -150 e -200 hanno il segno meno esplicito come richiesto dal significato fisico (benché marginalmente tagliati nel crop).
// 4. Stile e colori: Rispetto dei tratti, sfondi, assenza di costrutti Typst vietati. Nessuna primitiva bezier necessaria, tutte linee rette esatte.
  ]
)
#v(1em)
