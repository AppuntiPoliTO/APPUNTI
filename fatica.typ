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

#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: "1.")

#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, breakable: false, body,
)
#let circ = sym.degree
#let varphi = $phi$
#let varepsilon = $epsilon$
#let fit-box(body) = layout(size => {
  let m = measure(body)
  let k = if m.width > 0pt { calc.min(1, size.width / m.width) } else { 1 }
  scale(k * 100%, body, reflow: true)
})


#set heading(numbering: "1.")
= *Resistenza a Fatica dei Materiali e dei Componenti*

== Introduzione al cedimento a fatica <introduzione-al-cedimento-a-fatica>

Il cedimento a fatica si verifica in modo silente, senza macro-deformazioni plastiche premonitrici che possano fungere da allarme. Questo porta a un *collasso prematuro* e improvviso. Progettare componenti soggetti a carichi variabili nel tempo utilizzando esclusivamente i limiti di resistenza statica (come il limite di snervamento o il carico di rottura) sottovaluta gravemente il problema, poiché la rottura a fatica avviene a livelli tensionali nettamente inferiori.


il danneggiamento a fatica progredisce all'interno del materiale senza manifestazioni esterne visibili fino al collasso finale, che risulta repentino, irreversibile e spesso catastrofico per l'intero sistema (come storicamente evidenziato da gravi incidenti in ambito ferroviario e aeronautico).


Nello specifico, l'applicazione di *carichi non costanti nel tempo*  e in particolare di sollecitazioni aventi un andamento temporale *ciclico* (o più in generale variabile)  può condurre alla rottura del componente anche quando la tensione massima raggiunta $sigma_"max"$ rimane sensibilmente inferiore:
- al *carico unitario di snervamento* del materiale, nel caso di comportamento *duttile*;
- al *carico unitario di rottura* del materiale, nel caso di comportamento *fragile*.


Per un materiale metallico *duttile*, il fenomeno della fatica introduce dunque una duplice anomalia rispetto al comportamento statico:
1. *Abbassamento della soglia di cedimento:* la rottura si verifica per ampiezze di sollecitazione che interessano la regione iniziale *lineare elastica* del diagramma tensione-deformazione ($sigma$-$epsilon$), ben al di sotto della tensione di snervamento statico ($sigma_"max" < sigma_s$).
2. *Inversione del comportamento meccanico a rottura:* pur essendo il materiale intrinsecamente duttile, sotto carichi affaticanti esso non sviluppa una riserva di plasticizzazione macroscopica e manifesta una *frattura di carattere fragile*.

Si parla pertanto di *cedimento per fatica* nel materiale (termine introdotto per analogia con l'affaticamento fisico umano) e, conseguentemente, di *carichi e condizioni affaticanti*.



=== Classificazione temporale dei carichi affaticanti

Dal punto di vista della storia temporale della sollecitazione, i carichi dinamici responsabili della fatica possono essere suddivisi in tre categorie:
1. *Carichi periodici ad ampiezza costante (fatica periodica semplice):* il segnale tensionale presenta una ripetitività regolare con un periodo temporale $T$ ben definito ed è caratterizzato da un'unica frequenza e da un'unica ampiezza di oscillazione. È il caso più semplice, descrivibile analiticamente mediante un'unica funzione armonica (seno o coseno), e costituisce il paradigma di riferimento per i calcoli di resistenza a fatica.
2. *Carichi periodici ad ampiezza variabile (fatica periodica complessa):* il segnale presenta localmente fluttuazioni irregolari con picchi di ampiezza differente, ma l'intero blocco di sollecitazioni si ripete ciclicamente nel tempo con un periodo caratteristico individuabile. In questo caso è possibile scomporre la storia di carico nella sovrapposizione di più segnali elementari ad ampiezza costante, estendendo i risultati del modello armonico di base (mediante ipotesi di danneggiamento cumulativo).
3. *Carichi aleatori o caotici :* la sollecitazione varia nel tempo in modo totalmente irregolare e non periodico (la storia tensionale non ripercorre mai il medesimo andamento). La caratterizzazione di tali carichi non può avvalersi di funzioni deterministiche, ma richiede necessariamente metodi statistici e probabilistici.


=== Condizioni di innesco ed esempio classico della flessione rotante

Per comprendere correttamente quando un organo meccanico è soggetto a fatica, è fondamentale osservare lo stato di sollecitazione dal punto di vista *locale del singolo elemento di materiale* e non soltanto dal punto di vista del sistema di riferimento fisso esterno. Le condizioni che determinano l'instaurarsi della fatica sono infatti due:
1. l'applicazione di un *carico variabile nel tempo* (su una struttura ferma o in movimento);
2. l'applicazione di un *carico costante nel tempo (statico)* rispetto al quale la struttura compie un *moto ciclico*, come la rotazione.


Il caso studiato da *August Wöhler*  è quello degli *assali ferroviari* (o, più in generale, di un *albero in rotazione* soggetto a carichi trasversali):
- Le forze trasmesse dalle sospensioni del vagone alle estremità dell'assale sono sostanzialmente *statiche* (costanti nel tempo e dirette verticalmente verso il basso), ma la sezione resistente dell'albero ruota continuamente sotto di esse.
- Osservando la sezione trasversale nello spazio fisso, il momento flettente costante $M_f$ genera il classico diagramma lineare di tensione normale $sigma$ previsto dalla teoria della flessione: le fibre da un lato dell'asse neutro sono sollecitate a trazione ($sigma > 0$), quelle sull'asse neutro sono scariche ($sigma = 0$) e quelle sul lato opposto sono sollecitate a compressione ($sigma < 0$)
  Localmente, dunque, il materiale subisce una tensione variabile nel tempo con legge sinusoidale:
$ sigma(t) = sigma_"max" sin(omega t) $




#figure(
  fit-box(include "figs/fatica/fatica-fig01.typ"),
)

La condizione di sollecitazione dell'assale di Wöhler viene riprodotta in laboratorio mediante la *macchina di prova a flessione rotante* (schema di flessione a quattro punti): un provino cilindrico metallico viene posto in rotazione attorno al proprio asse e vincolato tramite quattro supporti (due interni e due esterni posti a quote differenti) che imprimono una curvatura costante, generando un *momento flettente costante* nel tratto centrale calibrato del campione. L'osservazione sperimentale di tale prova mette in luce due aspetti fondamentali:

 *Influenza della frequenza di carico e fatica termomeccanica:* in condizioni di prova corrette, la rottura a fatica di un provino in acciaio richiede tipicamente milioni di cicli (corrispondenti a molte ore di funzionamento) senza che si osservino vibrazioni o alterazioni macroscopiche fino all'istante del cedimento. Se tuttavia la velocità angolare di rotazione viene incrementata eccessivamente (frequenza di applicazione del carico troppo elevata), lo *smorzamento strutturale interno* del materiale genera una dissipazione energetica accelerata che non riesce a essere smaltita verso l'esterno. Ciò produce un forte riscaldamento localizzato nel tratto centrale del provino (fino all'incandescenza visibile), instaurando un forte gradiente termico nel tempo: alla fatica meccanica si sovrappone così un fenomeno di *fatica termica*, che degrada drasticamente le proprietà del materiale e conduce al collasso in pochi secondi.


  *Influenza degli intagli:* Nella progettazione a fatica è fondamentale considerare che la presenza di variazioni di sezione molto brusche nel componente — denominate *intagli* (quali spallamenti a raggio ridotto, fori, gole o cave) — genera severi picchi locali di tensione e influenza fortemente (riducendola in misura drastica) la resistenza a fatica dei componenti.
 la fatica è per sua natura un fenomeno di innesco *localizzato*, la concentrazione locale delle tensioni prodotta dalla discontinuità geometrica agisce esattamente nella regione superficiale in cui tende a nucleare il danno, accelerandone drasticamente la formazione e la successiva propagazione.


=== Ciclo di sollecitazione e parametrizzazione <ciclo-di-sollecitazione-e-parametrizzazione>

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
    #fit-box(include "figs/fatica/fatica-fig02.typ")
  ]
)
#v(1em)

A partire da questi valori estremi, la normativa definisce due parametri derivati, molto più utili per i calcoli di resistenza. Il primo inquadra il comportamento "statico" del sistema, il secondo l'ampiezza della fluttuazione dinamica:

     $ sigma_m : "Tensione media." quad quad quad sigma_m = (sigma_"max" + sigma_"min") / 2 $
     $ sigma_a: "Tensione alternata" quad quad quad sigma_a = (sigma_"max" - sigma_"min") / 2 $

Possiamo inoltre definire l'escursione tensionale totale (o campo di tensione) come la distanza tra il picco massimo e il minimo:
$ Delta sigma = sigma_"max" - sigma_"min" = 2 sigma_a $


 nella letteratura moderna e nelle normative tecniche vigenti si preferisce tuttavia esprimere i calcoli e i diagrammi di resistenza direttamente in funzione della tensione alternata $sigma_a$ (pari alla semiampiezza picco-picco dell'onda armonica) e della tensione media $sigma_m$ (che rappresenta la componente statica o *bias* del segnale).

Un parametro adimensionale fondamentale per classificare la severità del ciclo è il rapporto di tensione $R$, definito come:
$ R = sigma_"min" / sigma_"max" $


Accanto al rapporto di tensione $R$, si definisce anche il *rapporto di ampiezza* $R_a$, dato dal rapporto tra la tensione alternata e la tensione media:
$ R_a = sigma_a / sigma_m $

I due rapporti adimensionali $R$ e $R_a$ non sono indipendenti, ma sono legati biunivocamente tra loro. Sostituendo infatti le definizioni di $sigma_a$ e $sigma_m$ nell'espressione di $R_a$ e dividendo numeratore e denominatore per $sigma_"max"$, si ricava:
$ R_a = frac(sigma_a, sigma_m) = frac(frac(sigma_"max" - sigma_"min", 2), frac(sigma_"max" + sigma_"min", 2)) = frac(sigma_"max" - sigma_"min", sigma_"max" + sigma_"min") = frac(1 - frac(sigma_"min", sigma_"max"), 1 + frac(sigma_"min", sigma_"max")) = frac(1 - R, 1 + R) $

Analogamente, esprimendo $sigma_"min" = sigma_m - sigma_a$ e $sigma_"max" = sigma_m + sigma_a$ nella definizione di $R$ e dividendo numeratore e denominatore per $sigma_m$, si ottiene la relazione inversa:
$ R = frac(sigma_"min", sigma_"max") = frac(sigma_m - sigma_a, sigma_m + sigma_a) = frac(1 - frac(sigma_a, sigma_m), 1 + frac(sigma_a, sigma_m)) = frac(1 - R_a, 1 + R_a) $
#pagebreak()

=== Classificazione dei cicli di sollecitazione notevoli
In funzione della posizione del ciclo di tensione rispetto all'asse temporale (e dunque dei valori assunti da $sigma_m$, $sigma_"min"$, $sigma_"max"$ e dal rapporto di ciclo $R$), la letteratura tecnica identifica alcune configurazioni notevoli di frequente impiego progettuale e sperimentazione:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [1. *Ciclo alternato simmetrico (o ciclo di inversione):* è il ciclo impiegato da Wöhler nelle prove di flessione rotante. La componente statica è nulla e la tensione oscilla simmetricamente tra un massimo di trazione e un minimo di compressione di uguale modulo:
],[#figure(
  fit-box(include "figs/fatica/fatica-fig03.typ"))])
$ sigma_m = 0, quad sigma_"max" = -sigma_"min" = sigma_a, quad R = frac(sigma_"min", sigma_"max") = -1, quad R_a = oo $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [2. *Ciclo ripetuto dall'origine di trazione (o ciclo all'origine di trazione):* il ciclo si sviluppa interamente nel semipiano positivo (trazione) annullandosi periodicamente sull'asse temporale:
],[#figure(
  fit-box(include "figs/fatica/fatica-fig04.typ"))])
$ sigma_"min" = 0, quad sigma_"max" = 2 sigma_a = 2 sigma_m > 0, quad R = frac(0, sigma_"max") = 0, quad R_a = 1 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Ciclo ripetuto dall'origine di compressione (o ciclo all'origine di compressione):* situazione duale alla precedente, in cui il ciclo si sviluppa nel semipiano negativo (compressione) con valore massimo nullo e valore minimo negativo di modulo pari al doppio dell'ampiezza alternata:
],[#figure(
  fit-box(include "figs/fatica/fatica-fig05.typ"))])
$ sigma_"max" = 0, quad sigma_"min" = -2 sigma_a = 2 sigma_m < 0, quad R = lim_(sigma_"max" -> 0^-) frac(sigma_"min", sigma_"max") = -oo, quad R_a = -1 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [4. *Cicli pulsanti (di trazione o di compressione):* cicli nei quali la tensione non cambia mai segno né si annulla, rimanendo confinata nello stesso semipiano rispetto all'asse temporale:
   - #text(fill:blue.transparentize(0%), weight: "bold")[*Ciclo pulsante di trazione:*]  $sigma_"min" > 0$ e $sigma_"max" > 0$ (con $0 < R < 1$).
   - #text(fill:red.transparentize(10%), weight: "bold")[*Ciclo pulsante di compressione:*] $sigma_"min" < 0$ e $sigma_"max" < 0$ (con $1 < R < +oo$).],[#figure(
  fit-box(include "figs/fatica/fatica-fig06.typ"))])




#pagebreak()


== Danneggiamento <analisi-delle-rotture-per-fatica>

*Caratteristiche Generali:* Il cedimento a fatica è un fenomeno intrinsecamente *permanente* (non esiste recupero del danno), *progressivo* (basato sull'accumulo del danno ciclo dopo ciclo) e fortemente *localizzato*. Il processo si divide rigorosamente in tre fasi temporali distinte:

 *Fase 1: Nucleazione (o Innesco)* \
  Si innesca sempre a livello superficiale. L'azione dei carichi dinamici produce scorrimenti microscopici che generano ondulazioni, intrusioni ed estrusioni. Queste alterano la regolarità microscopica agendo come micro-intagli, che concentrano le tensioni e fessurano il materiale.


  _Meccanismo microstrutturale e paradosso elastico-plastico:_ Sotto l'azione di una sollecitazione ciclica $Delta F$, anche quando la tensione nominale è ampiamente inferiore al limite di snervamento del materiale, alcuni *grani cristallini superficiali favorevolmente orientati* reagiscono generando e muovendo *dislocazioni*. 
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
  Poiché il moto delle dislocazioni lungo i piani cristallini non è perfettamente reversibile tra la fase di carico e quella di scarico, l'accumulo dei cicli produce bande di scorrimento persistenti (*persistent slip bands*) che emergono in superficie sotto forma di *estrusioni* (*slipband extrusions*) e *intrusioni* (*ridges and grooves*), creando gradini e ondulazioni dell'ordine di $ mu"m"$. 
  
  Si tratta quindi di fenomeni di *natura plastica, ma strettamente localizzati* a livello microscopico, tanto che il comportamento globale (macroscopico) del componente rimane *ancora pienamente elastico*. Queste micro-irregolarità geometriche agiscono come severi innalzatori di tensione superficiali, rendendo la superficie incline alla fessurazione (innesco della micro-cricca).
],[#figure(
    fit-box(include "figs/fatica/fatica-fig07.typ"))])

  Tale disordine microstrutturale si genera anche qualora la superficie metallica di partenza sia *perfettamente liscia e lappata a specchio* (priva di rugosità o difetti iniziali). Inoltre, l'effetto di concentrazione tensionale non è uniforme lungo il profilo ondulato: mentre sugli *apici* delle estrusioni sporgenti l'innalzamento tensionale è poco sensibile, sul fondo delle *gole* (intrusioni e rientranze a spigolo vivo) si crea un vero e proprio *intaglio occulto* fortemente localizzato, nel quale l'intensificazione delle tensioni supera localmente la resistenza del materiale provocando la micro-fessurazione iniziale.

  

- *Fase 2: Propagazione Stabile* \
  Consiste nel progressivo avanzamento della microfrattura all'interno del materiale. La superficie risultante è tipicamente caratterizzata da due elementi:
  - Presenza di _"linee di spiaggia"_ (beachmarks), segni fisici permanenti che mappano le pause o le variazioni macroscopiche del fronte di scorrimento.
  - Una morfologia liscia, dovuta al continuo "martellamento" tra i lembi della cricca che si aprono e si chiudono durante le inversioni del carico, appiattendo le asperità.

    L'avanzamento e l'avvicinamento ripetuto dei due lembi della frattura produce un *gradiente di levigatezza e lucentezza* lungo la superficie di propagazione: la regione immediatamente adiacente all'innesco, essendosi fessurata per prima, subisce il maggior numero complessivo di cicli di martellamento e appare quindi *estremamente vellutata al tatto e molto lucente*.
  All'apice della cricca si sviluppano altissime tensioni che incrudiscono localmente il materiale (blunting). I cicli successivi devono accumulare maggiore energia per lacerare questa "bolla" resistente, causando continui aggiustamenti nella direzione di propagazione, facendo ruotare localmente la direzione delle tensioni tangenti all'apice, producendo arrotondamenti dell'apice stesso e deviazioni microscopiche del percorso di taglio.

  
  
  

- *Fase 3: Rottura Finale Instabile (Schianto)* \
  Rappresenta il collasso istantaneo. La progressione ciclica erode la sezione resistente fino a renderla troppo esigua per sopportare le sollecitazioni. Superato il limite di tenacità, la propagazione diventa subitanea. Questa superficie si presenta *ruvida, scabrosa e fragile*, poiché distaccandosi istantaneamente non subisce il martellamento tipico della fase precedente.


  Poiché in quest'ultima fase la sezione residua è ormai insufficiente e la tensione locale supera il limite di resistenza statica oltre che la tenacità a frattura, i due lembi si separano in un unico istante senza alcuna possibilità di richiudersi: ne consegue che la *linea di frontiera* (demarcazione) tra la regione martellata e la regione scabrosa di rottura finale risulta sempre *estremamente netta*.


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
  fit-box(include "figs/fatica/fatica-fig08.typ")
)],[#image("images/fatica/linee_di_spiaggia.jpg", width: 80%)])


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



#fit-box(include "figs/fatica/fatica-fig09.typ")])
#v(1em)
  #grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Flessione piana unidirezionale (ripetuta o pulsante):* Solo un lembo della sezione (quello teso) è soggetto a trazione ciclica. La cricca nuclea esclusivamente sul lato teso e avanza verso la fibra compressa opposta. Se l'effetto d'intaglio è assente, le linee di spiaggia sono convesse verso l'interno; se l'effetto d'intaglio è elevato, la cricca corre più velocemente lungo i bordi esterni (dove la concentrazione tensionale è massima), incurvando il fronte di avanzamento fino a renderlo concavo.],[
#fit-box(include "figs/fatica/fatica-fig10.typ")])
#v(1em)  
  #grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [*Flessione piana alternata ($R = -1$ senza rotazione):* Entrambe le fibre estreme opposte passano ciclicamente in trazione. Si sviluppano quindi *due zone di innesco diametralmente opposte* (sui due lembi più sollecitati) che propagano simmetricamente verso il centro. La zona di schianto finale rimane confinata in una fascia centrale lungo l'asse neutro della sezione.
     ],[

#fit-box(include "figs/fatica/fatica-fig11.typ")])
  Nella *flessione piana alternata*  la presenza delle due fratture concorrenti verso il centro è inequivocabilmente diagnosticata dalla *curvatura contrapposta delle linee di spiaggia (beachmarks)* provenienti dai due bordi opposti; la fascia centrale di rottura finale risulta tanto più ampia quanto più elevate sono la tensione nominale e la concentrazione di tensione.
  *Flessione rotante:* Poiché l'albero ruota sotto carico flettente, ogni fibra perimetrale sperimenta il picco di trazione a ogni giro.
    - Se il pezzo è *liscio o debolmente intagliato*, l'innesco parte da un punto singolo ma il fronte di propagazione si sviluppa in modo *asimmetrico*, apparendo ruotato (sfalsato angolarmente) in senso opposto al verso di rotazione dell'albero, con una serie di bordi radiali pronunciati.
    - Se il pezzo presenta un *forte intaglio circonferenziale* (o tensioni nominali molto elevate), l'innesco è multiplo lungo tutta la circonferenza; il fronte di fatica converge radialmente da tutti i lati e racchiude la zona di rottura finale in un'*isola interna* (quasi centrale, ma leggermente eccentrica per effetto del gradiente flessionale e della rotazione).
#figure(
  fit-box(include "figs/fatica/fatica-fig12.typ")
)

#pagebreak()
=== Confronto Trazione Torsione Statica e Fatica :
- *Caso Statico ($F$ costante):* Superato il carico di snervamento su tutta la sezione, il materiale duttile subisce una forte deformazione plastica macroscopica (strizione) e cede per scorrimento lungo i piani di massima tensione tangenziale ($tau_"max" = sigma / 2$), inclinati di *$45^circ$* rispetto all'asse del carico .
  - *Caso a Fatica ($F'(t)$ ciclico):* La tensione nominale resta in campo elastico; la cricca nuclea localmente e si propaga in direzione normale alla tensione principale massima $sigma_"max"$, producendo una *decoesione frontale netta a $90^circ$* rispetto all'asse del carico, *priva di strizione* e con aspetto macroscopico da *rottura fragile*.

- *Sollecitazione di Torsione (Sezioni circolari lisce e intagliate):* Nello stato di pura torsione, i piani trasversali ($90^circ$) e longitudinali ($0^circ$) sono soggetti alla tensione tangenziale massima $tau_"max"$, mentre le tensioni principali di trazione e compressione ($sigma_1 = +tau_"max"$, $sigma_3 = -tau_"max"$) agiscono su piani inclinati a *$plus.minus 45^circ$* rispetto all'asse dell'albero:
  - *Caso Statico:* Un albero duttile cede per scorrimento plastico torsionale lungo il piano dove agisce direttamente $tau_"max"$, producendo una *recisione piana netta a $90^circ$* (ortogonale all'asse).
  - *Caso a Fatica (Sezione circolare liscia):* Dopo il micro-innesco, la cricca si propaga ortogonalmente alla massima tensione normale di trazione $sigma_"max"$, sviluppandosi lungo un'elica inclinata a *$45^circ$* (rottura *"a becco di flauto"*). Se la torsione è *alternata*, si attivano entrambe le direzioni principali coniugate a $plus.minus 45^circ$, generando caratteristiche ramificazioni simmetriche a *"X"* sulla superficie cilindrica.
  

#figure(

fit-box(include "figs/fatica/fatica-fig13.typ")

)





#v(1em)


== Dati sperimentali

=== Dati sperimentali di base e dualismo materiale–componente

In campo statico, grandezze come il carico unitario di rottura $R_m$ e il limite di snervamento convenzionale $R_"p0.2"$ (o superiore $R_"eH"$ negli acciai con pianerottolo netto) misurate su un campione semplice valgono direttamente anche per il pezzo reale. A fatica questa equivalenza cade: scala dimensionale, geometria, intagli, finitura superficiale e processo tecnologico abbattono quasi sempre la resistenza del componente rispetto al campione (salvo specifici trattamenti superficiali compressivi).

La caratterizzazione sperimentale richiede quindi due livelli di prova. Si parte da *provette* normate (termine tecnico preferito al gergale *provino*), con forma e finitura controllate per isolare il comportamento del materiale; si passa poi a componenti in scala o al vero e a interi assiemi, come cellule aeronautiche testate su banchi multi-attuatore.

I dati di base si ricavano con sollecitazioni *nominali* (prive di intagli o concentrazioni locali di tensione), *uniassiali*, *cicliche* e ad *ampiezza costante*. Le prove multiassiali o ad ampiezza variabile restano invece riservate alle campagne industriali avanzate per riprodurre gli spettri reali di esercizio.

August Wöhler introdusse questa impostazione analizzando assali ferroviari e carrelli da miniera che cedevano ben al di sotto dei limiti statici. Le curve di *Wöhler* propriamente dette si riferiscono a prove all'inversione con tensione media nulla ($sigma_m = 0$, rapporto di ciclo $R = -1$), mentre la normativa anglosassone generalizza la rappresentazione nei diagrammi *S–N* (*Stress vs Number of cycles*) per qualunque livello dichiarato e costante di $sigma_m$.

Le prove standard operano tra $1" Hz"$ e circa $100" Hz"$, in funzione del tipo di sollecitazione e di macchina. Oltre tale soglia lo smorzamento isteretico interno dissipa più calore di quanto il campione riesca a cedere all'ambiente: la provetta si surriscalda durante il test e insorge un accoppiamento termo-meccanico che altera la risposta puramente meccanica del materiale.

=== Diagramma S–N (curva di Wöhler) e regimi di fatica

La resistenza a fatica lega tre variabili: ampiezza di tensione alternata $sigma_a$, numero di cicli a rottura $N$ e tensione media $sigma_m$. Poiché la superficie tridimensionale nello spazio $(sigma_a, N, sigma_m)$ è scomoda da ricavare e da usare nei calcoli, la si seziona su due piani complementari: a $sigma_m$ costante (diagramma S–N) e a $N$ costante (diagramma di Haigh).

Fissando $sigma_m = "costante"$ si ottiene il *diagramma S–N*, con $log_10 N$ in ascissa e la componente alternata $sigma_a$ in ordinata (in scala lineare o logaritmica). Ogni curva presuppone anche una *temperatura di prova* $T$ costante e dichiarata, di norma quella ambiente di riferimento ($23.5^circ "C"$).

Al crescere di $T$, i legami interatomici si indeboliscono e il materiale diventa più cedevole, come già mostrano le curve statiche di trazione. L'intera curva S–N si abbassa e il limite di fatica $sigma_D$ cala, imponendo campagne termiche dedicate per gli organi destinati a lavorare a caldo.

#figure(
  fit-box(include "figs/fatica/fatica-fig75.typ"),
)

Su un tracciato metallico tipico (come quello degli acciai) si distinguono tre regimi, governati da meccanismi fisici e criteri di progetto diversi:

- *Fatica oligociclica* ($10^0 lt.eq N lt.eq 10^3$): dal greco *oligos* ("poco"), scende dalla rottura statica ($R_m$) a $0.8"–"0.9 thin R_m$. Dominata dalla plasticità ciclica, si studia in deformazione ($varepsilon$) ed è spesso omessa nei diagrammi ad alto numero di cicli.
- *Resistenza a termine* ($10^3 < N < N_"ginocchio"$): la tensione ammissibile $sigma_a$ decade rapidamente al crescere di $N$. A ogni livello di carico corrisponde una durata limite finita $overline(N)$, espressa in cicli oppure in ore di servizio (come nei cuscinetti volventi).
- *Resistenza a vita infinita* ($N gt.eq N_"ginocchio"$): oltre il *ginocchio* la pendenza si abbatte. Negli acciai ($N_"ginocchio" approx 2 dot 10^6$) compare un asintoto orizzontale al *limite di fatica* $sigma_D$; nelle leghe di alluminio il ginocchio si sposta verso $10^7$ cicli mantenendo una lieve pendenza residua.

Se il materiale possiede un vero asintoto orizzontale, qualsiasi ciclo con $sigma_a < sigma_D$ evita la rottura per fatica indipendentemente dal numero di cicli. La verifica diventa allora analoga a quella statica, ma confronta la tensione di lavoro con il limite $sigma_D$, molto più basso di $R_m$ e $R_"p0.2"$.

Nella regione a termine, invece, il progettista entra in ordinata con la tensione alternata nominale $sigma_a$ e legge sulla curva la vita ammissibile $overline(N)$: se la durata richiesta in esercizio supera $overline(N)$, occorre ridurre le tensioni o scendere sotto $sigma_D$.

=== Architetture di prova e condizioni standard

Le norme definiscono schemi di prova capaci di imporre cicli controllati con macchine semplici ed economiche. La soluzione di riferimento per i cicli alterni simmetrici ($sigma_m = 0$) è la *flessione rotante*, in cui il carico rimane statico mentre ruota il provino.

#figure(
  fit-box(include "figs/fatica/fatica-fig76.typ"),
)

Una provetta cilindrica ruota a velocità angolare $omega$ sotto un momento flettente costante applicato tramite pesi statici $P$. Ogni fibra periferica $P_0$ passa così dal lembo teso ($+sigma_"max"$) a quello compresso ($-sigma_"max"$), generando una sinusoide $sigma(t)$ pura a media nulla senza bisogno di attuatori dinamici.

- *Macchina su quattro appoggi*: i due pesi simmetrici $P$ generano un momento flettente $M_f$ costante lungo l'intero tratto calibrato centrale. La rottura può avvenire in qualsiasi punto del tratto utile senza ambiguità sul momento applicato, a costo però di una macchina più ingombrante, pesante e costosa.
- *Macchina a sbalzo*: la provetta è vincolata su cuscinetti a sinistra e caricata con $P$ all'estremità libera, producendo un diagramma di $M_f$ lineare triangolare. Si sagoma la provetta a clessidra per localizzare la frattura nella gola, ma minimi errori assiali nell'individuare la sezione di rottura alterano il valore di $M_f$ letto sulla rampa.
- *Vincoli e metrologia meccanica*: nelle macchine puramente meccaniche (come negli schemi costruttivi di Giovannozzi), giochi e attriti dei cuscinetti generano momenti parassiti. La *metrologia meccanica* interviene progettando gli snodi per disaccoppiare gli attriti dalla grandezza nominale misurata.

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Prove in flessione piana.* La provetta è incastrata a sbalzo e oscilla nel piano sotto carico dinamico tramite una manovella eccentrica rotante a velocità $omega$.

    Un registro verticale trasla il centro di oscillazione fissando la componente media $sigma_m$, mentre l'eccentricità del bottone di manovella regola l'ampiezza $sigma_a$. Poiché il picco tensionale sollecita solo i due lembi estremi anziché l'intera circonferenza, il limite di fatica differisce lievemente dalla flessione rotante.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig77.typ"),
    )
  ],
)

#v(0.5em)

*Prove assiali e a torsione.* Le moderne macchine di trazione integrano attuatori bidirezionali sulla traversa mobile per eseguire prove di *trazione-compressione dinamica*, affiancate da banchi di *torsione alternata*. Poiché in trazione-compressione l'intera sezione sopporta la tensione massima (senza il gradiente lineare della flessione), le diverse sollecitazioni danno limiti di fatica differenti: in industria si adotta quindi una macchina preferenziale e si riconducono gli altri casi con fattori di scala sperimentali.

La cricca nuclea quasi sempre in superficie per scorrimento di dislocazioni, estrusioni e intrusioni: una rugosità incontrollata creerebbe micro-intagli acuti casuali che falserebbero i risultati. Anche il diametro incide, variando il volume esposto al picco tensionale (*effetto scala*). Le norme fissano perciò condizioni standard rigorose per il materiale base:

#nota[
  *Condizioni standard per il limite di fatica $sigma_(D-1)$:*
  - *Sollecitazione:* flessione rotante pura ($sigma_m = 0$, rapporto di ciclo $R = -1$);
  - *Geometria:* provetta cilindrica calibrata di diametro $d approx 10" mm"$ (intervallo normato $8"–"12" mm"$);
  - *Stato superficiale:* superficie esterna lucidata a specchio (lappata) per eliminare irregolarità d'innesco.
]

=== Dispersione statistica, metodo stair-case e stime empiriche

Le prove di fatica hanno una dispersione intrinseca elevata, dovuta a micro-eterogeneità del materiale, tolleranze geometriche e variabilità superficiale. A parità di $sigma_a$, le vite a rottura possono spaziare su oltre un ordine di grandezza, rendendo indispensabile un approccio probabilistico.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel diagramma S–N le rotture (`x`) e i campioni sospesi senza cedimento o *run-outs* (`o`) formano una fascia dispersa, interpolata con modelli statistici come la distribuzione di Weibull a due parametri.

    Le curve iso-probabilità indicano la frazione di rotture: $B_90$ (90% di rotture, superata solo dal 10% dei provini migliori), la mediana $B_50$ (50% di rotture) e la cautelativa $B_10$ (10% di rotture, ossia *affidabilità del 90%*).
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig78.typ"),
    )
  ],
)

#v(0.5em)

Nel progetto ordinario si usa la curva mediana $B_50$ (50% di probabilità di rottura), affidando le incertezze al coefficiente di sicurezza; nei settori ad alta affidabilità o vincolati da prassi normativa, come i cuscinetti a corpi volventi, si adotta direttamente la curva conservativa $B_10$ (90% di sopravvivenza).

==== Il metodo stair-case (Dixon–Mood)

Per determinare il limite mediano $B_50$ di $sigma_(D-1)$ si usa la procedura sequenziale *stair-case* (metodo di Dixon–Mood), su almeno 15 provini utili testati in sequenza fino a rottura o al raggiungimento del troncamento (*run-out*).

#v(0.5em)

#grid(
  columns: (0.7fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La prova procede a passo di tensione costante $d$ (nell'esempio su filetti M8 a $sigma_m = 400$ MPa, $d = 10$ MPa e $N = 5 dot.op 10^6$). In funzione dell'esito del provino $i$-esimo si aggiorna il livello del successivo:

    $ sigma_i text(" rotta") arrow.r.double sigma_(i+1) = sigma_i - d \
      sigma_i text(" non rotta") arrow.r.double sigma_(i+1) = sigma_i + d $

    I dati si elaborano sull'evento meno frequente, numerando con $i = 0, 1, 2, dots$ i livelli a partire dal più basso $sigma_0$ in cui esso compare.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig79.typ"),
    )
  ],
)

#v(0.5em)

Questa regola concentra le prove attorno al limite reale, risparmiando campioni rispetto a una griglia uniforme. Nell'esempio l'evento meno frequente è la non rottura (7 casi su 15): da $sigma_0 = 30" MPa"$ ($i = 0$) a $60" MPa"$ ($i = 3$) si ricavano $N = 7$, $A = 9$ e $B = 15$, da cui la mediana vale $sigma_(D,50) = sigma_0 + d(A \/ N plus.minus 0.5) approx 47.9" MPa"$ ($+0.5$ per le non rotture, $-0.5$ per le rotture), mentre $B$ fornisce la deviazione standard.

Anche con lo *stair-case*, costruire sperimentalmente una curva S–N completa resta lungo. Alla massima frequenza ammissibile per evitare il riscaldamento isteretico ($f = 100$ Hz), un singolo provino impiega per raggiungere $2 dot.op 10^6$ cicli:

$ t_1 = frac(2 dot.op 10^6, 100) = 2 dot.op 10^4 text(" s") approx 6 text(" h") $

Con una durata media di circa 5 ore a provino tra rotture e *run-outs*, un lotto di 15 campioni impegna la macchina per:

$ t_"tot" approx 15 dot.op 5 text(" h") = 75 text(" h") approx 3 text(" giorni") $

Tre giorni di prova continua forniscono così un solo punto della curva S–N, valido per un'unica tensione media e una sola geometria.

==== Stime empiriche preliminari dalla resistenza statica

Nelle prime fasi di progetto, alcune correlazioni empiriche evitano campagne lunghe stimando il limite di fatica dal solo carico unitario di rottura $R_m$, ricavabile con una rapida prova di trazione. Sono stime orientative valide soprattutto per metalli duttili e acciai strutturali non intagliati.

- *Criterio di Bach.* Lega linearmente il limite di fatica al carico di rottura $R_m$, distinguendo tra il ciclo alterno simmetrico ($R = -1$) e il ciclo pulsante all'origine ($R = 0$):
  $ sigma_(D-1) = 0.5 R_m quad (R = -1, med sigma_"min" = -sigma_"max") , quad sigma_(D 0) = 0.3 R_m quad (R = 0, med sigma_"min" = 0) $

- #block(breakable: false)[
    *Criterio di Fuchs (acciai legati).* Corregge la sovrastima del criterio di Bach negli acciai ad alta resistenza, dove l'elevata sensibilità ai microdifetti satura il limite di fatica oltre $R_m = 1400$ MPa:
    $ sigma_(D-1) = 0.5 R_m quad (R_m < 1400 text(" MPa")) , quad sigma_(D-1) = 700 text(" MPa") quad (R_m >= 1400 text(" MPa")) $
  ]

#nota[
  *Ambito applicativo delle stime empiriche.* Le relazioni di Bach e Fuchs servono solo per predimensionamenti di massima e confronti rapidi tra materiali. Per la progettazione esecutiva e la certificazione normativa, la dispersione statistica della fatica impone campagne sperimentali dedicate o banche dati certificate.
]

=== Influenza della tensione media e diagramma di Haigh

==== Effetto della tensione media sul limite di fatica

Sovrapponendo una tensione media statica $sigma_m$, il limite di fatica cambia sensibilmente: in trazione ($sigma_m > 0$) lo sforzo medio apre i microdifetti superficiali e abbatte rapidamente l'ampiezza ammissibile $sigma_a$ fino ad annullarla a $R_m$.

Nei dati su acciaio raccolti da Collins, passare dal ciclo simmetrico ($sigma_m = 0$) a una tensione media di trazione di $60 thin 000$ psi ($approx 400$ MPa) quasi dimezza il limite a vita infinita. In compressione ($sigma_m < 0$), al contrario, la resistenza cresce leggermente perché il carico statico ostacola l'apertura della cricca, almeno finché non subentra la plasticizzazione.

Per lavorare sul piano anziché sulla superficie 3D, alla curva S–N (sezione a $sigma_m$ costante) si affianca in coppia il *diagramma di Haigh*, ottenuto sezionando la superficie a numero di cicli $N$ costante.

==== Costruzione del diagramma di Haigh e retta di Goodman

Il diagramma di Haigh riporta $sigma_m$ in ascissa e la tensione alternata limite $sigma_a$ in ordinata per un fissato numero di cicli (tipicamente $N = 2 dot.op 10^6$ negli acciai). In trazione ($sigma_m > 0$), la nuvola sperimentale delle rotture segue un andamento concavo verso l'origine, interpolabile in media con la *parabola di Gerber* $sigma_D \/ sigma_(D-1) + (sigma_m \/ R_m)^2 = 1$.

Interpolando il centro della nuvola, però, la parabola di Gerber richiede molti punti sperimentali e lascia circa metà delle rotture *al di sotto* della curva (lato insicuro). Goodman adotta quindi una retta cautelativa che sottende l'intera fascia dei cedimenti congiungendo due soli valori noti: il limite alterno simmetrico $(0, sigma_(D-1))$ e la rottura statica $(R_m, 0)$:

$ frac(sigma_D, sigma_(D-1)) + frac(sigma_m, R_m) = 1 arrow.r.double sigma_D = sigma_(D-1) - frac(sigma_(D-1), R_m) sigma_m $

Qui $sigma_D$ è l'ordinata limite sulla retta di confine corrispondente all'ascissa operativa $sigma_m$, mentre il rapporto $sigma_(D-1) \/ R_m$ è un fattore di scala che rende omogenea la componente statica $sigma_m$ a quella alternata.

Con i soli tre parametri $sigma_(D-1)$, $R_"p0.2"$ e $R_m$, il diagramma si traccia subito anche su carta quadrettata per una prima verifica d'officina. Dato il punto di lavoro $(sigma_m, sigma_a)$, la norma ISO confronta direttamente l'ampiezza applicata $sigma_a$ con l'ordinata limite $sigma_D$ letta sulla verticale a $sigma_m$ costante ($sigma_a < sigma_D$).

#figure(
  fit-box(include "figs/fatica/fatica-fig80.typ")
)

==== Chiusura a snervamento, compressione e rapporti di ciclo

Nei materiali duttili la retta di Goodman non impedisce lo snervamento statico al picco del ciclo. Imponendo $sigma_"max" = sigma_m + sigma_a lt.eq R_"p0.2"$ in trazione e $sigma_"min" = sigma_m - sigma_a gt.eq -R_"p0.2"$ in compressione, compaiono le due rette a $plus.minus 45^circ$ di equazione $plus.minus sigma_m + sigma_a = R_"p0.2"$ (analoghe all'inviluppo statico esterno $plus.minus sigma_m + sigma_a = R_m$), che dividono il piano in tre zone:

- *Poligono di sicurezza.* L'area grigia delimitata insieme da Goodman e dalle rette di snervamento garantisce l'assenza sia di rottura per fatica sia di deformazioni plastiche permanenti.
- *Triangolo di plasticizzazione.* La zona ambrata tra la retta di snervamento e la retta di Goodman è sicura rispetto alla rottura per fatica per quel numero di cicli, ma causa plasticizzazione locale, inaccettabile in organi con tolleranze strette.
- *Regione esterna.* Oltre l'inviluppo combinato insorgono insieme plasticizzazione e rottura per fatica, fino al collasso statico oltre $R_m$.

In compressione ($sigma_m < 0$) le prove mostrano inizialmente un lieve aumento di resistenza seguito da una stabilizzazione orizzontale. A favore di sicurezza, il diagramma di Haigh adotta un plateau costante $sigma_a = sigma_(D-1)$, chiuso a sinistra dalla retta $-sigma_m + sigma_a = R_"p0.2"$ (oltre la quale si plasticizza pur senza rottura a fatica, fino al collasso statico sulla retta per $-R_m$).

Ogni punto sul piano $(sigma_m, sigma_a)$ giace su un raggio uscente dall'origine a rapporto di asimmetria $R$ o rapporto di ampiezza $R_a$ costante:

$ R = frac(sigma_"min", sigma_"max") , quad R_a = frac(sigma_a, sigma_m) = frac(1 - R, 1 + R) , quad R = frac(1 - R_a, 1 + R_a) $

Ogni raggio raggruppa i cicli con lo stesso rapporto di sollecitazione: l'asse verticale corrisponde al ciclo simmetrico ($R = -1$), la bisettrice del primo quadrante al ciclo all'origine ($R = 0$, $sigma_a = sigma_m$), la bisettrice del secondo al ciclo pulsante negativo ($R = -infinity$, $sigma_"max" = 0$) e l'asse orizzontale al carico statico puro ($R = 1$). Da questa lettura su $(sigma_m, sigma_a)$ derivano anche le varianti di Goodman–Smith, Moore e Rös.

=== Diagrammi alternativi di tensione media

Il diagramma di Haigh legge direttamente la coppia $(sigma_m, sigma_a)$, ma norme e manuali usano anche rappresentazioni basate su $sigma_"max"$, $sigma_"min"$ e sul rapporto di ciclo $R$, scegliendo di volta in volta in base ai dati di carico disponibili.

==== Diagramma di Goodman--Smith

Il diagramma di *Goodman--Smith* riporta in ascissa la tensione media $sigma_m$ e in ordinata, sullo stesso asse verticale, sia la tensione massima $sigma_"max" = sigma_m + sigma_a$ sia la minima $sigma_"min" = sigma_m - sigma_a$. La bisettrice del primo e terzo quadrante ($sigma = sigma_m$) funge da asse di simmetria, rispetto al quale i due estremi distano $plus.minus sigma_a$.

Il ciclo temporale $sigma(t)$ non è più un punto ma un *segmento verticale rigido* (assimilabile a un piccolo "manubrio") centrato sulla bisettrice all'ascissa $sigma_m$, con apice superiore $sigma_"max"$, apice inferiore $sigma_"min"$ e altezza totale $2 sigma_a$. La sicurezza sussiste solo se entrambi gli estremi restano interni al poligono limite.

Geometricamente il poligono ribalta i confini del diagramma di Haigh a cavallo della bisettrice a $45^circ$ per un fissato numero di cicli (di norma $2 dot 10^6$ negli acciai). Partendo dai soli tre parametri $sigma_(D-1)$, $R_"eH"$ (o $R_"p0.2"$ in assenza di snervamento netto) e $R_m$, il tracciamento segue sei passaggi:

+ *Punti base e bisettrice.* Si individua il punto statico $(R_m, R_m)$ e lo si collega all'origine mediante la bisettrice a $45^circ$; sull'asse verticale ($sigma_m = 0$) si segnano il limite alterno $+sigma_(D-1)$ e il simmetrico $-sigma_(D-1)$.
+ *Rette di Goodman.* Si congiunge $(R_m, R_m)$ con $+sigma_(D-1)$ e con $-sigma_(D-1)$: tali rette traslano nel piano $(sigma_m, sigma)$ la condizione di sicurezza a fatica di Goodman, mantenendo la bisettrice esattamente equidistante dai due rami.
+ *Troncatura allo snervamento.* Individuato il limite di snervamento superiore $R_"eH"$ in ordinata, si traccia la retta orizzontale fino alla bisettrice nel punto $B = (R_"eH", R_"eH")$; il tratto compreso tra il ramo superiore di Goodman e $B$ delimita la soglia di plasticizzazione.
+ *Chiusura del poligono in trazione.* Dall'intersezione tra $R_"eH"$ e il ramo superiore di Goodman si scende in verticale fino al punto $A$ sul ramo inferiore, quindi si chiude il poligono congiungendo $A$ con $B$ per preservare la simmetria del ciclo attorno alla bisettrice.
+ *Estensione in compressione.* Per $sigma_m < 0$, dai punti $plus.minus sigma_(D-1)$ si estendono due rami paralleli alla bisettrice ($45^circ$, ampiezza costante $sigma_a = sigma_(D-1)$) fino alla troncatura orizzontale allo snervamento $-R_"eH"$, chiudendo in modo analogo per proiezione verticale.
+ *Verifica del ciclo.* Noto il valore di $sigma_m$, lo si proietta sulla bisettrice e si posiziona a cavallo di tale punto il segmento verticale di ampiezza $2 sigma_a$: la sicurezza cade non appena anche uno solo dei due apici esce dal contorno marcato.

#figure(
  fit-box(include "figs/fatica/fatica-fig81.typ")
)

In compressione i materiali duttili resistono in genere a tensioni di plasticizzazione e rottura più alte che in trazione. Per semplicità e a favore di sicurezza, si estende però in compressione lo stesso valore $R_"eH"$ della trazione, evitando errori di lettura durante la verifica.

Per certificazioni rigorose il poligono si costruisce interpolando più curve S--N a tensioni medie crescenti; nella pratica d'officina bastano invece i tre valori $sigma_(D-1)$, $R_"eH"$ e $R_m$ per tracciare su carta quadrettata (es. $10"–"20" MPa"$ per quadretto) un inviluppo già affidabile.

==== Diagramma di Moore--Kommer--Jasper

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il diagramma di *Moore--Kommer--Jasper* porta in ascissa il rapporto di ciclo $R = sigma_"min" \/ sigma_"max"$ su $[-1, 1]$ e in ordinata la tensione massima $sigma_"max"$, passando con continuità dal ciclo alterno ($R = -1$) al pulsante ($R = 0$) fino al carico statico ($R = 1$).

    Poiché $R$ dipende in modo non lineare da $sigma_m$ e $sigma_a$, anche la retta di Goodman si trasforma in un arco crescente da $sigma_(D-1)$ verso $R_m$, troncato orizzontalmente allo snervamento $R_"p0.2"$. Tale curvatura rende meno agevole il tracciamento manuale rispetto a Haigh e Goodman--Smith.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig82.typ"),
    )
  ],
)

==== Diagramma di Rös (curva "master")

A seconda del problema, il ciclo può essere dato tramite $(sigma_m, sigma_a)$ oppure $(sigma_"min", sigma_"max")$. Il diagramma di *Rös* — chiamato *curva "master"* nelle normative aeronautiche statunitensi — riunisce entrambe le letture nello stesso piano sfruttando il legame lineare tra le due coppie:

$ sigma_m = (sigma_"max" + sigma_"min") / 2 , quad sigma_a = (sigma_"max" - sigma_"min") / 2 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Queste relazioni equivalgono a una *rotazione di $45^circ$* del sistema $(sigma_m, sigma_a)$ rispetto agli assi $(sigma_"min", sigma_"max")$: l'asse $sigma_m$ coincide con la bisettrice $R = 1$ ($sigma_"max" = sigma_"min"$), l'asse $sigma_a$ con la semiretta $R = -1$ ($sigma_"max" = -sigma_"min"$).

    Il poligono di Haigh ruotato di $45^circ$ e troncato in alto a $sigma_"max" = R_"p0.2"$ delimita la zona sicura. Un ciclo qualsiasi si individua così con un singolo punto $P$, leggendo a colpo d'occhio sia le tensioni estreme sia le componenti media e alternata.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig83.typ"),
    )
  ],
)

#v(0.6em)

I raggi uscenti dall'origine corrispondono a valori costanti di $R$ e $R_a = sigma_a \/ sigma_m$, consentendo di leggere subito il margine di sicurezza per carichi proporzionali. Rispetto a Goodman--Smith, che obbliga a spostare un segmento lungo la bisettrice, la curva "master" riduce dunque la verifica a un solo punto e controlla insieme fatica e snervamento in entrambi i sistemi di assi.

=== Stima analitica della curva S--N ed equazione di Basquin

Se manca l'intera campagna sperimentale ma sono noti la resistenza statica $R_m$ e il limite di fatica $sigma_D$ alla tensione media $sigma_m$ di lavoro, si può ricostruire per via analitica la curva S--N approssimata nella sola *regione a termine*.

==== Punti cardine $F$ e $G$

Il modello traccia un segmento tra due punti pivot: $F$, alla transizione tra campo oligociclico e resistenza a termine (pari a circa $0.8"–"0.9 thin R_m$ a media nulla, o al $90%$ della riserva statica residua $R_m - sigma_m$ per $sigma_m != 0$), e $G$ (*ginocchio*), all'ingresso della vita infinita:

$ F = (N_F, sigma_F) = (10^3, 0.9(R_m - sigma_m)) , quad G = (N_G, sigma_D) $

Le altre due regioni restano escluse dalla legge analitica. Nella fatica oligociclica ($N < 10^3$) la tensione varia poco ma domina la *plasticità ciclica*, da trattare in deformazione ($varepsilon$); oltre $N_G$, invece, negli acciai la curva diventa orizzontale su $sigma_D$.

Nelle leghe leggere di alluminio o nei giunti saldati il ginocchio $G$ non apre un asintoto piatto, bensì un secondo tratto a pendenza molto bassa; per convenzione, $(N_G, sigma_D)$ resta comunque il riferimento operativo per la lunga durata.

==== Formulazione log--log (Basquin) e semi--log

In scala doppiamente logaritmica ($log_(10) N$ in ascissa, $log_(10) sigma_a$ in ordinata), il tratto a termine $F$--$G$ è una retta descritta dall'*equazione di Basquin*, esplicitabile rispetto ai cicli $N$ oppure alla tensione $sigma_a$:

$ N sigma_a^k = B arrow.l.r.double log(N) = log(B) - k log(sigma_a) , quad sigma_a = A N^b arrow.l.r.double log(sigma_a) = log(A) + b log(N) $

Imponendo il passaggio per $F$ e $G$ si ricavano le costanti del materiale $(k, B)$ e $(b, A)$, con coefficiente angolare $b = -1 \/ k$ sul piano $(log N, log sigma_a)$:

$ k = frac(log(N_G) - log(N_F), log(sigma_F) - log(sigma_D)) , quad log(B) = log(N_G) + frac(log(N_G) - log(N_F), log(sigma_F) - log(sigma_D)) log(sigma_D) $

$ b = frac(log(sigma_D) - log(sigma_F), log(N_G) - log(N_F)) = -frac(1, k) , quad log(A) = log(sigma_D) - frac(log(sigma_D) - log(sigma_F), log(N_G) - log(N_F)) log(N_G) $

In scala *semi--logaritmica*, invece, i cicli restano in $log N$ mentre la tensione alternata $sigma_a$ rimane lineare, evitando di passare al logaritmo delle tensioni.

Si usa $N sigma_a^k = B$ quando si cerca la vita a fatica dato il carico, e $sigma_a = A N^b$ per trovare la tensione ammissibile fissata la durata. In scala semi--logaritmica le forme diretta e inversa diventano:

$ sigma_a = sigma_F - frac(sigma_F - sigma_D, log N_G - log N_F) (log N - log N_F) , quad log N = log N_F + frac(sigma_F - sigma_a, sigma_F - sigma_D) (log N_G - log N_F) $

#figure(
  fit-box(include "figs/fatica/fatica-fig84.typ"),
)

==== Dal materiale al componente reale

Tutte le curve S–N e i poligoni di Haigh, Goodman--Smith, Moore o Rös appena costruiti qualificano il *materiale base* su provette standard lucidate a specchio ($d approx 10 thin "mm"$), utili per il primo dimensionamento delle parti. Sul componente reale e sull'assieme prototipale (testato su banchi vibranti o multi-attuatore), *scala dimensionale*, *intagli* geometrici, *finitura superficiale* e trattamenti tecnologici degradano sensibilmente la resistenza locale, imponendo l'introduzione di appositi coefficienti correttivi prima della validazione sperimentale finale.

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Fatica dei componenti meccanici: carico, scala e finitura]
]
#v(0.4em)

== Da provetta a componente

Le prove di fatica in laboratorio si eseguono su *provette* unificate (spesso chiamate *provini* nel gergo d'officina) di piccolo diametro ($8"–"12 thin "mm"$), lucidate a specchio e prive di discontinuità geometriche. Un componente meccanico reale presenta invece taglia maggiore, intagli, superfici lavorate d'officina e ambienti operativi gravosi: la sua resistenza a fatica risulta quindi sensibilmente diversa da quella della provetta.

Nel dimensionamento statico la resistenza misurata sulla provetta coincide direttamente con quella del pezzo; a fatica occorre invece tradurre il dato sperimentale del materiale nelle condizioni effettive del componente. I parametri che governano questo passaggio si dividono in due famiglie:

*Fattori legati al componente:*
- *Dimensioni ($C_S$).* Al crescere della taglia la resistenza cala quando la sollecitazione presenta un gradiente lungo la sezione.
- *Intagli ($K_f$).* Brusche variazioni di sezione concentrano localmente le tensioni proprio dove si innesca il danno.
- *Finitura superficiale ($C_F$).* La rugosità lasciata dalle lavorazioni introduce micro-irregolarità che accelerano la nucleazione delle cricche.
- *Trattamenti superficiali.* Processi meccanici (come la *pallinatura* sul filo delle molle elicoidali), termici, chimici o rivestimenti modificano lo strato corticale per difendere da usura e corrosione (talvolta penalizzando la fatica) oppure per recuperare resistenza persa.

*Fattori legati alle condizioni di utilizzo:*
- *Tipo di carico ($C_L$).* Flessione, torsione e trazione-compressione distribuiscono in modo diverso le tensioni nella sezione, mutando la severità del ciclo rispetto al riferimento.
- *Temperatura e ambiente corrosivo.* Temperature elevate o fluttuanti generano tensioni e deformazioni termiche accoppiate ai carichi meccanici, mentre gli agenti aggressivi alterano lo stato chimico-fisico superficiale.

Il limite di fatica a inversione del componente ($sigma_(D-1)^C$) si ricava moltiplicando il limite misurato sulla provetta standard ($sigma_(D-1)$) per una produttoria di coefficienti correttivi $C_i$:

$ sigma_(D-1)^C = sigma_(D-1) dot product_i C_i $

Nella verifica strutturale, la tensione massima operativa nel punto critico non deve superare la resistenza del componente: $sigma_("max,op")(K_f) <= sigma_(D-1)^C$. I fattori $C_i$ compaiono a destra perché modificano la *resistenza del materiale* (di norma riducendola, salvo specifici trattamenti di rinforzo), mentre il fattore d'intaglio a fatica $K_f$ sta a sinistra perché amplifica la *tensione locale applicata*; anche quando li si raccoglie formalmente dallo stesso lato, il loro significato fisico resta distinto.

Per $C_L$, $C_S$, $C_F$ e $K_f$ la letteratura fornisce formule e abachi consolidati per il calcolo quantitativo diretto. Temperatura di esercizio, ambienti corrosivi e trattamenti superficiali specifici richiedono invece prove sperimentali dedicate sul singolo prodotto e si discutono qui in chiave qualitativa.

=== Effetto del tipo di carico ($C_L$)

Il coefficiente di carico $C_L$ (da *load*) rapporta la resistenza a fatica del componente alla prova di *flessione rotante* di Wöhler, assunta come riferimento unitario. Si adotta *$C_L = 1$ sia in flessione rotante sia in flessione piana*; a parità di sezione e di tensione massima al bordo, la *trazione-compressione* risulta invece sensibilmente più severa.

#v(0.4em)

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.1em,
  align: (left + horizon, center + horizon),
  [
    La differenza dipende dal profilo di tensione nella *zona di processo* (ZP), il sottile strato corticale di pochi micrometri sotto la superficie in cui il disordine cristallino fa nucleare le micro-cricche, mentre il cuore interno è sede della propagazione stabile e della rottura fragile finale.

    Per quantificare l'azione ciclica nello strato d'innesco si introduce la *tensione alterna efficace* $sigma_(a,"eff")("ZP")$, definita come media spaziale dell'ampiezza dinamica del ciclo attraverso lo spessore della ZP (e non come componente statica media).
  ],
  [
    #figure(
      image("images/fatica/ECM01-4_sem_nucleazione_zp.png", width: 92%),
    )
  ],
)

#v(0.5em)

#figure(
  fit-box(include "figs/fatica/fatica-fig85.typ")
)

In trazione-compressione il profilo è uniforme e l'intera ZP lavora continuativamente al picco nominale, sicché $sigma_(a,"eff")("ZP") = sigma_("tc")$. In flessione (così come in torsione) il gradiente lineare riduce invece la tensione sulle fibre più interne dello strato corticale ($sigma_(a,"eff")("ZP") < sigma_f$), attenuando la sollecitazione efficace e ritardando l'innesco del danno.

==== Valori di progetto e derivazione dalle curve $S$-$N$

Nei materiali metallici (in particolare negli acciai), l'evidenza sperimentale mostra che il limite di fatica in trazione-compressione ($sigma_(D-1)^T$, indicato anche con $sigma_(D-1)^(T C)$) è sempre inferiore a quello in flessione ($sigma_(D-1)^f$) secondo un rapporto compreso tra $0.6$ e $0.85$:

$ sigma_(D-1)^T = (0.6 div 0.85) dot sigma_(D-1)^f = C_L dot sigma_(D-1)^f $

Nel dimensionamento preliminare, in assenza di prove specifiche sul materiale, si adotta di norma il valore medio rappresentativo $C_L = 0.7$.

#nota[
  *Scelta progettuale di $C_L$.* Alcuni testi di riferimento (come lo *Shigley*) prescrivono in trazione-compressione $C_L = 0.85$ per non penalizzare eccessivamente la verifica in specifiche formulazioni. La scelta tra $0.7$ e $0.85$ va accordata al protocollo di calcolo adottato e alla disponibilità di dati sperimentali sul materiale.
]

#figure(
  fit-box(include "figs/fatica/fatica-fig86.typ")
) <fig-sn>

Tracciando le curve $S$-$N$ sperimentali in funzione della tensione nominale superficiale $sigma_a$ (@fig-sn, a sinistra), i due stati di carico si dispongono su livelli distinti. Riformulando invece i diagrammi in termini di tensione efficace $sigma_(a,"eff")$ (a destra), le curve di flessione e trazione-compressione collassano su un'unica legge con asintoto comune $sigma_(D-1)^0$ oltre il ginocchio $N_i = 2 dot 10^6$ cicli.

Il cedimento a fatica interviene quando $sigma_(a,"eff")$ raggiunge il valore limite intrinseco $sigma_(D-1)^0$. In trazione-compressione l'assenza di gradiente impone $sigma_(a,"eff") = sigma_a$, perciò la condizione teorica coincide direttamente con il limite sperimentale misurato:

$ sigma_(a,"eff") = sigma_a = sigma_(D-1)^0 , quad sigma_a = sigma_(D-1)^T quad arrow.r.double quad sigma_(D-1)^T = sigma_(D-1)^0 $

In flessione il gradiente attraverso la ZP riduce la tensione efficace rispetto al picco superficiale mediante un coefficiente di attenuazione $alpha < 1$, sicché $sigma_(a,"eff") = alpha dot sigma_a$. Imponendo il raggiungimento della soglia $sigma_(D-1)^0$ in corrispondenza del limite sperimentale $sigma_(D-1)^f$ si ricava:

$ alpha dot sigma_a = sigma_(D-1)^0 , quad sigma_a = sigma_(D-1)^f quad arrow.r.double quad sigma_(D-1)^f = frac(sigma_(D-1)^0, alpha) $

Sostituendo $sigma_(D-1)^0 = sigma_(D-1)^T$ nella relazione della flessione si ottiene il legame analitico tra i due limiti sperimentali, dimostrando che il fattore empirico $C_L$ coincide con il parametro geometrico $alpha$:

$ sigma_(D-1)^f = frac(sigma_(D-1)^T, alpha) quad arrow.r.double quad sigma_(D-1)^T = alpha dot sigma_(D-1)^f , quad alpha = C_L = 0.6 div 0.85 $

=== Effetto delle dimensioni o effetto scala ($C_S$)

La prova di *flessione rotante* su provetta normalizzata ($d = 8"–"12 thin "mm"$) fissa la condizione di riferimento unitaria sia per il carico ($C_L = 1$) sia per la taglia ($C_S = 1$). Quando le dimensioni trasversali del componente crescono a parità di tensione massima in superficie, la resistenza a fatica diminuisce nei carichi dotati di *gradiente di tensione*, ovvero *flessione* e *torsione*.

In *trazione-compressione*, invece, la distribuzione è già uniforme su tutta la sezione: l'aumento del diametro incrementa lievemente il volume esposto a possibili difetti ma non altera il profilo corticale di tensione. Non si applica pertanto un'ulteriore riduzione dimensionale (*$C_S = 1$ in trazione-compressione*), poiché la penalizzazione di circa il $30%$ rispetto alla flessione è già interamente conteggiata in $C_L$.

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Attenuazione del gradiente.* A pari tensione superficiale massima $sigma_a$, l'aumento del diametro riduce la pendenza della retta di flessione attorno all'asse neutro (che tende a raddrizzarsi). Nella *zona di processo* (ZP), la tensione efficace $sigma_(a,"eff")("ZP")$ si avvicina così al valore massimo $sigma_a$, come già accade in trazione.

    *Fascia ad alta sollecitazione.* Individuando la regione esposta a tensioni comprese tra $sigma_a$ e l'$80% thin sigma_a$, al crescere della taglia tale porzione diventa più estesa rispetto al provino da $8"–"12 thin "mm"$, sia in termini di *area assoluta* sia in *termini percentuali*.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig87.typ")
    )
  ],
)

#v(0.7em)

*Probabilità statistica di difetti.* Nella fascia maggiormente sollecitata ($0.80 thin sigma_a div sigma_a$) una superficie molto più ampia lavora vicino al picco ciclico: cresce quindi la probabilità statistica di intercettare micro-difetti superficiali che accelerano la nucleazione, giustificando il cedimento anticipato di grandi organi come gli alberi delle turbine idroelettriche rispetto alla provetta da $10 thin "mm"$.

*Estensione alla torsione.* Lo stesso decadimento dimensionale vale per la *torsione*, pura o combinata: mentre in flessione il gradiente lineare agisce lungo il diametro di un singolo piano di inflessione, nella sezione circolare torta la tensione tangenziale cresce linearmente lungo tutti i raggi.

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, left + horizon),
  [
    #fit-box(include "figs/fatica/fatica-fig88.typ")
  ],
  [
    *Lettura del diagramma $C_S (d)$.* Fino al diametro normato della provetta ($d = 10 thin "mm"$, o $8"–"12 thin "mm"$ secondo lo standard) vale $C_S = 1$. Oltre questa soglia, la curva per flessione e torsione scende rapidamente raggiungendo $C_S approx 0.81$ a $d = 50 thin "mm"$ e $C_S = 0.75$ a $d = 90 thin "mm"$.

    *Limite asintotico.* Per grandi diametri ($170"–"200 thin "mm"$), la retta di distribuzione si raddrizza fin quasi alla verticale nella fascia corticale, riproducendo uno stato localmente uniforme: $C_S$ converge così a $0.70$, pari al valore medio di $C_L$ in trazione-compressione.
  ],
)

#v(0.7em)

*Sezioni non circolari.* Quando la sezione trasversale non è circolare (ad esempio travi rettangolari o alberi scanalati), si entra nel diagramma sostituendo al diametro $d$ una *dimensione caratteristica equivalente* legata alla geometria della sezione (quale la base o una combinazione del rapporto base-altezza), definita nei manuali di progettazione.

*Limite inferiore della correzione.* La retta rossa a $0.70$ delimita inferiormente l'intervallo di variazione di $C_S$: in flessione e torsione l'abbattimento per effetto scala non scende oltre il livello medio della trazione-compressione ($C_L = 0.6 div 0.85$):

$ C_S = 1 " per " d <= 10 thin "mm", quad lim_(d -> oo) C_S approx C_(L,"medio") = 0.70 $

=== Effetto della finitura superficiale ($C_F$)

La nucleazione del danno a fatica nasce sempre da irregolarità superficiali in microscala. Anche partendo da una provetta lappata a specchio ($R_a <= 0.8 thin mu"m"$, a cui compete $C_F = 1$), una sollecitazione alternata genera progressivamente disordine cristallino lungo tre morfologie tipiche:

#grid(
  columns: (1.0fr, 0.94fr),
  column-gutter: 1.1em,
  align: (left + horizon, center + horizon),
  [
    - *Creste e avvallamenti* (_ridge and groove_): si aprono gole ad apice acuto assimilabili a micro-intagli con forte concentrazione tensionale.
    - *Ondulazioni* (_undulations_): le valli geometriche localizzano la deformazione ciclica sul fondo dell'onda.
    - *Estrusione a bande* (_slipband extrusion_): i piani cristallini slittano come fogli di una risma, espellendo lembi e aprendo micro-vuoti la cui coalescenza avvia la cricca.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig89.typ")
    )
  ],
)

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Quando il pezzo esce di lavorazione con una rugosità macroscopica $R_a > 0.8 thin mu"m"$, i solchi d'utensile formano intagli a spigolo vivo preesistenti — ben visibili nei rilievi microscopici 3D — che abbreviano l'innesco. A parità di legge di propagazione, anticipare la nucleazione riduce la durata e impone $C_F <= 1$.
  ],
  [
    #figure(
      image("images/fatica/ECM01-4_topografia_rugosita.png", width: 76%)
    )
  ],
)

==== Sensibilità alla fragilità e lettura del diagramma $C_F (R_m, R_a)$

Il coefficiente $C_F$ non dipende solo dalla rugosità $R_a$, ma è diagrammato anche in funzione del carico di rottura statico $R_m$. Sebbene un alto $R_m$ sembri ostacolare la frattura, negli acciai riduce la duttilità: nell'abaco *$R_m$ funge quindi da indice indiretto di fragilità*.

#grid(
  columns: (0.90fr, 1fr),
  column-gutter: 0.9em,
  align: (left + horizon, center + horizon),
  [
    Su acciai duttili a basso $R_m$ ($400 thin "MPa"$), *plasticizzazione* e *incrudimento* locali smussano il fondo delle micro-gole frenando l'avanzamento: $C_F$ resta almeno $0.85$ persino su superfici grezze ($R_a = 160 thin mu"m"$).

    Al crescere di $R_m$ manca il rilassamento plastico e le curve si aprono a ventaglio: per $R_a = 160 thin mu"m"$ il limite si dimezza a $1400 thin "MPa"$ ($C_F = 0.50$, e $0.48$ a $1500 thin "MPa"$), mentre finiture spinte ($R_a <= 3.2 thin mu"m"$) limitano la perdita entro il $9%$.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig90.typ")
    )
  ],
)

==== Criteri progettuali di finitura e protezione in esercizio

*Compromesso costi-finitura.* Per mantenere elevato $C_F$ si prescrive a disegno la rugosità $R_a$ più bassa compatibile con il ciclo tecnologico e i costi di produzione. Lucidare a specchio un acciaio dolce a basso $R_m$ offre benefici minimi, mentre su acciai ad altissima resistenza rettifica o lappatura ($R_a = 0.8"–"3.2 thin mu"m"$) sono indispensabili nelle zone critiche per non vanificarne le prestazioni.

#nota[
  *Degrado superficiale in esercizio.* Lo stato di finitura misurato alla consegna può peggiorare sensibilmente durante la vita operativa. Agenti aggressivi come umidità o acqua salmastra innescano vaiolature da corrosione che innalzano $R_a$ e degradano la chimica superficiale, facendo crollare $C_F$ ben sotto il valore di progetto: in ambienti severi occorre quindi proteggere il pezzo con rivestimenti o trattamenti superficiali dedicati.
]

#pagebreak()

#v(0.4em)

== Intaglio a fatica

=== Fenomenologia e meccanica dell'intaglio

==== Definizione, origini progettuali e stravolgimento del campo tensionale

Un *intaglio* è una brusca variazione della sezione resistente concentrata in una zona limitata del componente. Negli organi di macchine queste discontinuità geometriche nascono da esigenze costruttive inevitabili: senza cambi di diametro o sedi dedicate non sarebbe possibile vincolare cuscinetti, trasmettere potenza o collegare elementi rotanti.

- *Spallamenti e gole.* I gradini di diametro forniscono una battuta assiale agli anelli dei cuscinetti; le gole alloggiano anelli elastici di ritegno o fungono da scarico per l'utensile di rettifica.
- *Filettature, scanalature e fori.* Tratti filettati per ghiere di bloccaggio, profili scanalati per mozzi, fori di lubrificazione e sedi su dischi di turbine e compressori interrompono ripetutamente la continuità assiale del pezzo.

A parità di diametro della sezione minima $d$, le prove mostrano che un provino intagliato resiste sensibilmente meno di uno liscio sia in statica sia a fatica. Mentre nel tratto calibrato liscio le traiettorie di tensione scorrono quasi parallele, il brusco restringimento costringe il flusso tensionale a curvare rapidamente verso l'asse, concentrando lo sforzo al bordo libero dove nuclea il danno.

La curvatura delle linee di flusso stravolge anche la natura del campo locale: una sollecitazione esterna puramente monoassiale attiva componenti nelle altre direzioni principali, trasformando lo stato tensionale in *biassiale* nelle lastre piane sottili o *triassiale* nei solidi assialsimmetrici.

L'analisi assume sempre come riferimento la *sezione minima* (o ridotta) di fondo intaglio. Poiché il picco superficiale supera anche di diverse volte il valore medio calcolato con la teoria elementare della trave, occorre affiancare alle tensioni nominali opportuni coefficienti di concentrazione.

==== Distribuzione delle tensioni principali nei casi canonici

Individuata la sezione minima, si calcola per prima la *tensione nominale* ($sigma_n$ o $tau_n$) con il modello di De Saint-Venant, come se il pezzo avesse sezione costante priva di intaglio. Per un albero cilindrico con gola circonferenziale di raggio minimo $a$ e raggio di fondo gola $rho$, soggetto a sforzo assiale $P$ o momento torcente $M_t$, valgono:

$ sigma_n = frac(P, pi a^2) , quad tau_n = frac(2 M_t, pi a^3) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Gola cilindrica.* Sotto trazione $P$ nasce uno stato triassiale ($sigma_z$, $sigma_r$, $sigma_t$). La tensione assiale $sigma_z$ resta dominante con picco sul bordo ($sigma_(z, "max") approx 5 sigma_n$ per $a slash rho = 24$) e scende lievemente sotto $sigma_n$ sull'asse ($r = 0$) per equilibrio alla traslazione; sulla superficie libera si annulla invece $sigma_r$.

    In torsione ($a slash rho = 8$) il picco superficiale tocca $tau_"max" = 1.71 tau_n$. A differenza delle travi curve (ganci), dove la non linearità investe l'intera sezione, l'intaglio confina il picco in un sottilissimo strato superficiale critico a fatica.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig91.typ")
    )
  ],
)

#v(0.6em)

*Lastra piana intagliata.* In una lastra sottile di spessore $d$ e semi-larghezza minima $a$ (larghezza netta $2 a$) con intagli laterali di raggio $rho$, la tensione nello spessore svanisce e il campo resta *biassiale*. Per trazione assiale $P$ e momento flettente nel piano $M$ le tensioni nominali sono:

$ sigma_n = frac(P, 2 a d) , quad sigma_n = frac(3 M, 2 d a^2) $

Per $a slash rho = 4$, il picco al bordo sale a circa $3 sigma_n$ in trazione e $2 sigma_n$ in flessione: lontano dalle gole il diagramma mantiene l'andamento uniforme o lineare a *farfalla*, mentre presso il bordo subisce un brusco incremento non lineare di ampiezza e gradiente.

Nei calcoli manuali di progetto si amplifica la sola componente principale già attiva nel caso nominale, lasciando al coefficiente di sicurezza la copertura delle componenti trasversali secondarie ($sigma_r$, $sigma_t$).

=== Fattore di concentrazione statico $K_t$ e diagrammi di Peterson

==== Procedura di calcolo in statica e definizione di $K_t$

Per evitare modelli analitici complessi diversi per ogni forma, la verifica statica mantiene le formule elementari delle travi (o di dischi e tubi) correggendole in tre passi:

+ *Calcolo della tensione nominale.* Individuata la sezione minima dell'intaglio, si calcola la tensione massima che vi agirebbe in assenza di discontinuità ($sigma_"nom"$ o $tau_"nom"$) mediante De Saint-Venant.
+ *Applicazione del coefficiente correttivo.* Noti geometria, proporzioni e tipo di carico, si ricava da diagrammi sperimentali o modelli numerici il fattore di concentrazione statico per valutare la *tensione effettiva* di picco.
+ *Verifica di resistenza.* Si confronta la tensione locale (oppure quella nominale, in base alla duttilità del materiale e allo stato limite adottato) con la resistenza limite divisa per il coefficiente di sicurezza.

Il rapporto tra la tensione principale massima effettiva all'apice dell'intaglio e la tensione nominale nella sezione ristretta definisce il *fattore di concentrazione delle tensioni* (o *fattore di forma*), indicato con $K_t$ o $alpha_k$:

$ K_t = frac(sigma^"max", sigma_"nom") $

Per un albero con gola (diametro minimo $d$, diametro esterno $D$, raggio di fondo $r$) soggetto a forza assiale $F$, vale $sigma_"nom" = (4 F) / (pi d^2)$: la gola attiva la terna $sigma_z$, $sigma_c$, $sigma_r$ (con $sigma_r = 0$ sul bordo), ma $K_t$ amplifica la sola componente assiale dominante $sigma_z$. Per le geometrie comuni $K_t$ deriva per *via sperimentale* (fotoelasticità, estensimetri, vernici fragili); per forme non tabellate si ricorre alla *via numerica* (FEM o BEM).

==== Carte di Peterson e geometrie tipiche

Le campagne sperimentali sono raccolte nei diagrammi di R.E. Peterson (*Stress Concentration Factors*, Wiley, 1974). Ogni grafico correda la famiglia di curve con lo schema quotato del pezzo, il carico applicato e la formula esatta di $sigma_"nom"$ o $tau_"nom"$, esprimendo $K_t$ in funzione di rapporti adimensionali: snellezza del raccordo $r/d$ (o $r/h$) in ascissa e rapporto delle sezioni $D/d$ (o $H/h$) come parametro di curva.

#figure(
  grid(
    columns: (1fr, 1fr),
    column-gutter: 1.2em,
    row-gutter: 0.8em,
    align: (center + bottom, center + bottom),
    [
      #fit-box(include "figs/fatica-fig03.typ")
      #text(size: 7.5pt)[*Spallamento — Trazione*]
    ],
    [
      #fit-box(include "figs/fatica-fig09.typ")
      #text(size: 7.5pt)[*Spallamento — Flessione*]
    ],
    [
      #fit-box(include "figs/fatica-fig04.typ")
      #text(size: 7.5pt)[*Spallamento — Torsione*]
    ],
    [
      #fit-box(include "figs/fatica-fig07.typ")
      #text(size: 7.5pt)[*Gola — Trazione*]
    ],
    [
      #fit-box(include "figs/fatica-fig06.typ")
      #text(size: 7.5pt)[*Gola — Flessione*]
    ],
    [
      #fit-box(include "figs/fatica-fig05.typ")
      #text(size: 7.5pt)[*Gola — Torsione*]
    ],
  ),
)

Questa struttura riflette la *similitudine geometrica*: $K_t$ dipende soltanto dalle proporzioni adimensionali e dalla modalità di carico, non dalle dimensioni assolute in millimetri. Nelle applicazioni ricorrono quattro famiglie principali:

- *Albero con spallamento.* Raccordo di raggio $r$ tra i diametri $D$ e $d$, tabellato in trazione ($sigma_"nom" = 4 P \/ (pi d^2)$), flessione ($sigma_"nom" = 32 M_f \/ (pi d^3)$) e torsione ($tau_"nom" = 16 M_t \/ (pi d^3)$), dove $K_t$ risulta più contenuto.
- *Albero con gola circonferenziale.* Gola semicircolare o a U di raggio $r$ da $D$ a $d$: conserva le stesse formule nominali dello spallamento ma esibisce, a parità di $r/d$ e $D/d$, valori di $K_t$ leggermente più severi.
- *Lastre piane con spallamento o intagli laterali.* Elementi di larghezza lorda $H$, netta $h$ e spessore $t$ in trazione ($sigma_"nom" = P \/ (h dot t)$), letti su $r/h$ e $H/h$ (fino a $H/h = oo$ per intagli profondi); lo spessore $t$ entra solo in $sigma_"nom"$.
- *Lastra piana con foro centrale.* Per larghezza $b$, foro $d$ e spessore $h$, in trazione ($sigma_"nom" = P \/ ((b - d) h)$) conta il solo rapporto $d/b$ con un'unica curva indipendente da $h$ ($K_t -> 3.0$ per $d/b -> 0$); in flessione fuori piano ($sigma_"nom" = 6 M \/ ((b - d) h^2)$) sull'ascissa $d/b$ si riapre la famiglia parametrica in $d/h$.

#figure(
  grid(
    columns: (1fr, 1fr),
    column-gutter: 1.2em,
    row-gutter: 0.6em,
    align: (center + bottom, center + bottom),
    [
      #fit-box(include "figs/fatica-fig08.typ")
      #text(size: 7.5pt)[*Lastra con spallamento in trazione*]
    ],
    [
      #fit-box(include "figs/fatica-fig12.typ")
      #text(size: 7.5pt)[*Lastra con intagli laterali a U in trazione*]
    ],
    [
      #fit-box(include "figs/fatica-fig10.typ")
      #text(size: 7.5pt)[*Lastra forata in flessione fuori piano (parametro $d\/h$)*]
    ],
    [
      #fit-box(include "figs/fatica-fig11.typ")
      #text(size: 7.5pt)[*Lastra forata in trazione (curva unica in $d\/b$)*]
    ],
  ),
)

==== Limite teorico per raggio nullo e risposta elastoplastica

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nel modello elastico lineare, facendo tendere a zero il raggio di fondo intaglio ($r -> 0$, ossia $r/d -> 0$), tutte le curve di Peterson divergono verso un asintoto verticale ($K_t -> oo$, $sigma^"max" -> oo$), mentre per salto di sezione nullo ($D/d -> 1$) si appiattiscono su $K_t = 1$.

    Uno spigolo vivo reale non sviluppa però tensioni infinite: non appena il picco locale supera il limite elastico, le fibre al fondo gola snervano, smussando la punta tensionale e ridistribuendo il carico sul nucleo adiacente.

    Questa riserva separa la progettazione statica: un materiale fragile non tollera plasticizzazione e cede all'innesco sul bordo, mentre un materiale duttile mobilita l'intera sezione prima della rottura.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig92.typ"),
    )
  ],
)

=== Verifica statica: materiali fragili vs duttili e stati multiassiali

==== Ridistribuzione delle tensioni nei materiali duttili

Consideriamo una lastra duttile di larghezza netta $h$ con due intagli semicircolari laterali, sottoposta a una trazione assiale $P$ crescente. Lungo la sezione minima seguiamo tre posizioni rappresentative: il bordo dell'intaglio $A$, la fascia intermedia $B$ e il punto centrale $C$ (il più distante dalle gole).

#figure(
  fit-box(include "figs/fatica/fatica-fig93.typ"),
)

Al crescere di $P$, il profilo tensionale evolve attraverso quattro stadi consecutivi:

+ *Stadio (a) — Regime elastico.* Per bassi carichi si formano due picchi simmetrici («orecchie di gatto») ai bordi $A$ con $sigma_A = K_t sigma_"nom" < R_"eH"$, mentre il cuore $C$ lavora a tensione molto più bassa.
+ *Stadio (b) — Primo snervamento in $A$.* Aumentando $P$, le fibre in $A$ raggiungono la tensione di snervamento $R_"eH"$ (o $R_"p0.2"$): il picco locale smette di crescere e si arresta sul plateau plastico.
+ *Stadio (c) — Richiamo della fascia intermedia $B$.* Ulteriori incrementi di $P$ trasferiscono il carico extra sulle fibre interne ancora elastiche in $B$, che snervano progressivamente appiattendo le punte laterali.
+ *Stadio (d) — Completa plasticizzazione in $C$.* Quando anche il cuore $C$ raggiunge $R_"eH"$, l'intera sezione è snervata (*cerniera plastica*): esaurita la riserva elastica di recupero (*recovering*), un modesto aumento di $P$ porta tutte le fibre lungo il tratto plastico fino alla rottura duttile ($R_m$).

==== Criteri di verifica per sollecitazioni uniassiali
#figure(
      fit-box(include "figs/fatica/fatica-fig94.typ"),
    )

 Il comportamento statico si classifica tramite l'allungamento percentuale a rottura $A\%$, misurato sul tratto calibrato ricomponendo le due metà del provino dopo trazione.

    Nei *materiali fragili* ($A < 5\%$) la curva $sigma$–$varepsilon$ resta quasi lineare fino alla decoesione improvvisa: una cricca innescata sul bordo $A$ propaga istantaneamente, perciò la verifica deve confrontare il picco effettivo con il carico unitario di rottura $R_m$:

    $ sigma^"max" = K_t dot sigma_"nom" < R_m $

    I *materiali duttili* ($A > 5\%$) mostrano invece uno snervamento evidente ($R_"eH"$) o convenzionale allo $0.2\%$ ($R_"p0.2"$), seguito da incrudimento e *strizione* prima della rottura.
Nei materiali duttili il criterio di verifica cambia secondo la definizione progettuale di cedimento (introducendo poi il coefficiente di sicurezza sul limite scelto):

- *Primo snervamento.* Se non è ammessa alcuna plasticizzazione locale, il punto critico resta il bordo $A$ e si applica $K_t$ confrontando $sigma^"max" = K_t sigma_"nom"$ con $R_"eH"$ (o $R_"p0.2"$).
- *Completa plasticizzazione o rottura duttile.* Se una modesta plasticizzazione all'apice è tollerata, governa il cuore $C$ privo di effetto d'intaglio: si verifica $sigma_"nom" < R_"eH"$ contro la *cerniera plastica* e $sigma_"nom" < R_m$ contro la *rottura duttile*. Diverse normative mantengono formalmente la verifica in $A$ ponendo per convenzione $K_t = 1$, così da evitare errori nella scelta del punto critico pur descrivendo fisicamente lo stato di $C$.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto),
    inset: 5pt,
    align: (left, left, center, center, left),
    stroke: 0.6pt + black.transparentize(60%),
    fill: (x, y) => if y == 0 { luma(235) } else { none },
    [*Classe materiale*], [*Stato limite*], [*Punto critico*], [*Uso di $K_t$*], [*Verifica uniassiale*],
    [Fragile ($A < 5\%$)], [Rottura fragile], [$A$ (bordo)], [Applicato], [$sigma^"max" = K_t dot sigma_"nom" < R_m$],
    [Duttile ($A > 5\%$)], [Primo snervamento], [$A$ (bordo)], [Applicato], [$sigma^"max" = K_t dot sigma_"nom" < R_"eH" \/ R_"p0.2"$],
    [Duttile ($A > 5\%$)], [Cerniera plastica], [$C$ (cuore)], [Omesso ($K_t = 1$)], [$sigma_"nom" < R_"eH"$],
    [Duttile ($A > 5\%$)], [Rottura duttile], [$C$ (cuore)], [Omesso ($K_t = 1$)], [$sigma_"nom" < R_m$],
  ),
)

==== Estensione alle sollecitazioni multiassiali (criterio di Von Mises)

Quando sulla sezione intagliata agiscono simultaneamente flessione, sforzo normale e torsione, ciascuna sollecitazione possiede una propria tensione nominale e un diverso fattore $K_t$ letto sul relativo diagramma di Peterson:

$ sigma_"flex"^"max" = K_(t("flex")) dot sigma_"nom(flex)" , quad sigma_"norm"^"max" = K_(t("norm")) dot sigma_"nom(norm)" , quad tau^"max" = K_(t("tors")) dot tau_"nom" $

Per i materiali duttili l'ipotesi di Von Mises compone le tensioni nella tensione ideale equivalente $sigma_"id"$, distinguendo i tre stati limite:

- *Primo snervamento (punto $A$, con fattori $K_t$ distinti):*
  $ sigma_"id" = sqrt((sigma_"flex"^"max" + sigma_"norm"^"max")^2 + 3 (tau^"max")^2) < R_"eH", R_"p0.2" $

- *Completa plasticizzazione — cerniera plastica (punto $C$, senza $K_t$):*
  $ sigma_"id" = sqrt((sigma_"nom(flex)" + sigma_"nom(norm)")^2 + 3 tau_"nom"^2) < R_"eH" $

- *Rottura duttile (punto $C$, senza $K_t$):*
  $ sigma_"id" = sqrt((sigma_"nom(flex)" + sigma_"nom(norm)")^2 + 3 tau_"nom"^2) < R_m $

#nota[
  *Attenzione ad apice $"max"$ e pedice $"nom"$.* Nelle espressioni di Von Mises l'apice $"max"$ ($sigma^"max"$, $tau^"max"$) incorpora già i rispettivi fattori $K_(t("flex"))$, $K_(t("norm"))$, $K_(t("tors"))$ per il controllo al bordo $A$. Il pedice $"nom"$ ($sigma_"nom"$, $tau_"nom"$) indica invece le tensioni nominali pure senza $K_t$, riferite al raggiungimento dello snervamento o della rottura nel punto centrale $C$ (equivalente alla convenzione $K_t = 1$).
]

=== Effetto dell'intaglio a fatica: fattore $K_f$, sensibilità $q$ e metodi numerici

==== Fattore di riduzione della resistenza a fatica $K_f$ e confronto con $K_t$

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    A parità di diametro minimo $d$, la curva di Wöhler dei provini intagliati $S_n (n)$ (*notched*) giace sotto quella dei provini lisci $S_n (u)$ (*unnotched*) lungo tutta la vita a fatica. Il rapporto tra le due resistenze definisce il *fattore di riduzione della resistenza a fatica* $K_f$.

    Secondo la norma UNI 3964, a vita finita ($N$ cicli) e al limite di fatica per flessione rotante valgono:

    $ K_f^N = frac(sigma_(N, "liscio"), sigma_(N, "intagliato")) , quad K_f^("fl") = frac(sigma_(D-1, "liscio"), sigma_(D-1, "intagliato")) $

    Dalle prove emerge sistematicamente $1 < K_f < K_t$, ovvero:

    $ 1 < frac(sigma_(D-1, "provino liscio"), sigma_(D-1, "provino con intaglio")) < K_t $
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig95.typ"),
    )
  ],
)

#v(0.8em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    La disuguaglianza $K_f < K_t$ deriva dalla *teoria del gradiente*: il rapido decadimento tensionale sotto il bordo consente ai grani interni meno sollecitati di sostenere lo strato superficiale. Mentre $K_t$ è puramente geometrico, $K_f$ dipende anche da microstruttura e rigidezza della lega.

    Nella lettura fenomenologica di Strozzi su una lastra forata tesa, un carico stazionario impone l'intero picco $K_t sigma_"nom"$ (salvo snervamento locale); sotto cicli rapidi lo smorzamento interno ritarda la risposta, smussando la punta prima del massimo statico.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig96.typ"),
    )
  ],
)

*Regola progettuale inderogabile a fatica.* Poiché la rottura per fatica procede per propagazione *fragile* senza ridistribuzione plastica su tutta la sezione, nei materiali duttili il fenomeno del *recovering* non è sfruttabile: porre $K_f = 1$ è sempre un errore. Il fattore $K_f$ va applicato integralmente a tutte le componenti tensionali (assiale, flessionale e torsionale) sia a vita finita sia oltre il ginocchio della curva di Wöhler.

==== Sensibilità all'intaglio $q$ e relazione di Neuber-Peterson

Il legame operativo tra $K_f$ e il fattore geometrico statico $K_t$ si esprime tramite il *fattore di sensibilità del materiale all'intaglio* $q$ ($0 <= q <= 1$):

$ K_f = 1 + q (K_t - 1) $

La formula disaccoppia l'effetto di forma e carico ($K_t$) dalla risposta ciclica della lega ($q$): per $q = 0$ il materiale risulta insensibile all'intaglio ($K_f = 1$), mentre per $q = 1$ subisce per intero la concentrazione statica ($K_f = K_t$).

*Abaco sperimentale $q(r)$.* Il diagramma riporta $q$ in funzione del *raggio di curvatura di fondo intaglio* $r$ in $"mm"$ (pari a $d/2$ nel caso di un foro circolare), partendo in genere da $r approx 0.2$–$0.5 "mm"$ per tre famiglie metallurgiche:

- *Acciai temprati.* Elevatissima sensibilità anche con raggi ridotti: già a $r = 1 "mm"$ si raggiunge $q approx 0.95$–$1.0$ (la curva sperimentale si arresta attorno a $r = 2 "mm"$).
- *Acciai rinvenuti o normalizzati.* Sensibilità intermedia, con $q approx 0.9$ attorno a $r = 2 "mm"$.
- *Leghe di alluminio.* Maggiore capacità di attenuazione per piccoli raggi: il livello $q approx 0.9$ viene toccato solo verso $r = 4 "mm"$.

Tali curve forniscono valori approssimati e non sono verificate per *intagli profondi*.

*Formulazione analitica di Neuber.* Un'espressione alternativa calcola $q$ esplicitando $r$ (in $"mm"$) e una costante caratteristica del materiale $A$ (in $"mm"^(1\/2)$):

$ q = frac(1, 1 + A / sqrt(r)) $

Il parametro $A$ decresce con la tensione di snervamento $R_"eH"$ o $R_"p0.2"$. Negli *acciai alto-resistenziali* ($R_"eH"$ elevato) $A -> 0$, per cui $q -> 1$ e $K_f -> K_t$: l'incremento di resistenza statica rende l'acciaio quasi totalmente sensibile agli intagli a fatica.

#figure(
  grid(
    columns: (1.06fr, 1fr),
    column-gutter: 1em,
    align: (center + bottom, center + bottom),
    [
      #fit-box(include "figs/fatica/fatica-fig01.typ")
      #text(size: 8pt)[(a) Abaco sperimentale della sensibilità $q(r)$]
    ],
    [
      #fit-box(include "figs/fatica/fatica-fig02.typ")
      #text(size: 8pt)[(b) Parametro di Neuber $A(R_"eH", R_"p0.2")$]
    ],
  ),
)

==== Analisi numerica FEM per geometrie complesse

Quando il componente presenta forme tridimensionali articolate o accoppiamenti tra materiali diversi non riconducibili alle casistiche di Peterson — come una *protesi d'anca* in lega di titanio inserita nel femore specifico del paziente, ricca di variazioni di sezione e raccordi — la stima analitica di $K_t$ e $K_f$ non è praticabile.

Si ricorre allora al *Metodo degli Elementi Finiti* (FEM) o agli *Elementi al Contorno* (BEM). Il solido continuo viene discretizzato in una griglia (*mesh*) di piccoli elementi volumetrici di formulazione nota, vincolati tra loro attraverso i *nodi* di vertice condivisi e dotati delle rispettive equazioni costitutive (lega metallica e tessuto osseo rilevato sul paziente).

Imposti i carichi di esercizio, i vincoli e le condizioni di interfaccia nella sede chirurgica (prima e dopo l'osteointegrazione), il solutore assembla e risolve il sistema algebrico nodale restituendo spostamenti, deformate e mappe cromatiche delle tensioni distinte per materiale, così da individuare con precisione le concentrazioni locali d'intaglio.

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Sicurezza a fatica]
]
#v(0.4em)

== Sicurezza a fatica

=== Limite di fatica del componente e stato di tensione con intaglio

Le prove di laboratorio determinano il *limite di fatica standard* del materiale $sigma_(D-1)$ su provetta liscia di diametro $10" mm"$ sollecitata a flessione rotante. Per passare al *componente reale*, tale soglia va ridotta tramite i coefficienti correttivi (minori o al più uguali a $1$) di carico $C_L$, scala $C_S$ e finitura superficiale $C_F$, restringendo la regione di sicurezza:

$ sigma_(D-1)^C = C_L dot C_S dot C_F dot sigma_(D-1) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il ciclo di carico è descritto dalla *tensione media* $sigma_m$ (componente statica o *bias*) e dall'*ampiezza alternata* $sigma_a$ (escursione $Delta sigma = 2 sigma_a$). In presenza di un intaglio in stato *uniassiale*, entrambe le componenti nominali vanno moltiplicate per il fattore di intaglio a fatica $K_f > 1$, fissando il punto di lavoro $P(sigma_m, sigma_a)$:
    $ sigma_m = K_f dot sigma_(m,"nom"), quad sigma_a = K_f dot sigma_(a,"nom") $
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig97.typ"),
    )
  ]
)

Applicare il coefficiente dinamico $K_f$ anziché il fattore teorico statico $K_t$ anche alla tensione media $sigma_m$ è solo in apparenza incoerente. Sul pezzo non agiscono due carichi separati, ma l'intero ciclo: l'intaglio amplifica la *tensione massima* nel punto critico e, scomponendo il picco in media e alternata, $K_f$ si distribuisce linearmente su entrambi gli addendi:

$ sigma_"max" = sigma_m + sigma_a arrow.r.double K_f sigma_"max" = K_f (sigma_a + sigma_m) = K_f sigma_a + K_f sigma_m $

Alcune trattazioni portano $K_f$ al denominatore della resistenza del componente (dove $1/K_f < 1$ agisce come ulteriore fattore riduttivo), così da entrare nel diagramma direttamente con le tensioni nominali $(sigma_(m,"nom"), sigma_(a,"nom"))$:

$ sigma_(D-1)^C = frac(C_L dot C_S dot C_F, K_f) sigma_(D-1) $

#nota[
  *Limite di validità di $1/K_f$.* Portare $1/K_f$ dentro $sigma_(D-1)^C$ vale *solo per stati monoassiali* (trazione, flessione o torsione pura), dove il fattore di intaglio è unico. Negli stati *multiassiali*, invece, ogni sollecitazione semplice possiede un proprio $K_f$ distinto: non si può raccogliere un fattore comune al denominatore e i diversi $K_f$ restano applicati alle tensioni equivalenti $sigma_(m,"eq")$ e $sigma_(a,"eq")$ di $P$.
]

=== Diagramma di Haigh del componente e margine di sicurezza

Il *diagramma di Haigh* raccoglie le condizioni limite a durata fissata ($N = "costante"$, pari a $sigma_(D-1)^C$ a vita illimitata o alla resistenza a termine $sigma_N^C$ a vita finita) nel piano $(sigma_m, sigma_a)$. Le bisettrici dei quadranti individuano i cicli pulsanti: $R = sigma_"min" / sigma_"max" = -infinity$ per $sigma_m < 0$ e $R = 0$ per $sigma_m > 0$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Passando dalla provetta ($sigma_(D-1)$, tratteggiata verso $R_m$) al componente ($sigma_(D-1)^C$, continua spessa), il dominio sicuro si restringe ed è troncato ai lati dalle rette di Langer $|sigma_m| + sigma_a = R_("p0.2")$ contro lo snervamento statico. In compressione ($sigma_m < 0$), alle due scelte estreme — #text(fill: blue, weight: "bold")[chiusura orizzontale conservativa] o prolungamento diretto della retta di Goodman — alcune normative affiancano una pendenza intermedia corretta.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig98.typ"),
    )
  ]
)

#v(0.5em)
Un punto $P(sigma_m, sigma_a)$ interno al contorno del componente è in sicurezza, mentre uno esterno comporta cedimento a fatica. A differenza della verifica statica, in cui si confronta un unico scalare equivalente con $R_("p0.2")$ o $R_m$, il diagramma di Haigh è bidimensionale: il *margine di sicurezza* dipende quindi dalla direzione fisica lungo cui cresce il carico fino al bordo, cioè dai cosiddetti *cicli di esplosione*.

Il *coefficiente di sicurezza* $C S$ esprime il rapporto tra la condizione limite di cedimento e la sollecitazione massima d'esercizio, compensando quattro fonti d'incertezza:

- *Caratterizzazione del materiale.* Dispersione sperimentale dei limiti di fatica e approssimazione nella stima delle proprietà meccaniche reali.
- *Definizione dei carichi.* Incertezze su intensità, punto di applicazione e azioni secondarie non modellate, come una flessione parassita su un albero caricato assialmente per disallineamento.
- *Qualità della fornitura.* Scostamenti tra le caratteristiche nominali certificate dal fornitore e quelle effettive del lotto impiegato.
- *Limiti dei modelli analitici.* Semplificazioni introdotte nello schematizzare geometria, vincoli, effetti di scala e fattori correttivi locali.

Poiché la fatica risente di intagli, scala, processi e finitura molto più del caso statico, salvo prescrizioni diverse si adotta almeno $C S = 3$ (in genere $3$–$4$). Solo normative analitiche molto dettagliate (come la direttiva tedesca FKM), che risolvono gran parte delle incertezze nel modello di calcolo, consentono di scendere tra $1.5$ e $2$.

=== Coefficienti di sicurezza per vita illimitata

==== Ipotesi di crescita dei carichi sul diagramma di Haigh

Per verificare un componente a vita illimitata si posiziona $P(sigma_m^P, sigma_a^P)$ sul diagramma di Haigh (con tensioni nominali se $1/K_f$ è già incluso in $sigma_(D-1)^C$, altrimenti amplificate da $K_f$) e lo si proietta fino al contorno limite secondo una delle quattro traiettorie di crescita (*cicli di esplosione*), indicando con $sigma_D^"lim"$ l'ampiezza alternata limite di cedimento sul bordo (distinta da $sigma_(D-1)^C$):

- *Tensione media costante e alternata crescente.* È il caso di un recipiente a pressione costante investito da vibrazioni sismiche crescenti. Ad ascissa $sigma_m^P$ fissa, $P$ sale in verticale fino a $sigma_D^"lim"$, dando $C S = sigma_D^"lim" / sigma_a^P$.
- *Tensione media e alternata proporzionali.* Se entrambe crescono a rapporto di ciclo $R$ costante, la proiezione avanza dall'origine $O$ lungo la semiretta per $P$. Per similitudine dei triangoli i rapporti sulle componenti coincidono: $C S = sigma_D^"lim" / sigma_a^P = sigma_m^"lim" / sigma_m^P = sigma_"max"^"lim" / sigma_"max"^P = sigma_"min"^"lim" / sigma_"min"^P$.
- *Tensione media in parte costante e in parte proporzionale.* Separando la quota fissa $sigma_"mc"^P$ da quella proporzionale ad $sigma_a$ pari a $sigma_"mp"^P$ ($sigma_m^P = sigma_"mc"^P + sigma_"mp"^P$), la semiretta parte da $(sigma_"mc"^P, 0)$, passa per $P$ e incontra il contorno in $sigma_D^"lim"$, con $C S = sigma_D^"lim" / sigma_a^P$.
- *Tensione alternata costante e tensione media crescente.* Si presenta quando la pressione di esercizio subisce una deriva lenta mentre i disturbi vibratori restano invariati. A ordinata $sigma_a^P$ fissa, $P$ scorre in orizzontale verso destra fino a $sigma_m^"lim"$: è l'unico caso valutato sulle ascisse, con $C S = sigma_m^"lim" / sigma_m^P$.

#figure(
  fit-box(include "figs/fatica/fatica-fig99.typ"),
)

Nel caso proporzionale verrebbe spontaneo confrontare le lunghezze dei due segmenti obliqui dall'origine al bordo e a $P$, ma calcolare le ipotenuse espone a errori operativi evitabili. Le normative impiegano perciò direttamente i rapporti sulle coordinate cartesiane, unificando la lettura sulle ordinate ($sigma_D^"lim" / sigma_a^P$) nei primi tre casi e riservando le ascisse al quarto.

==== Effetto delle tensioni residue

Mentre un corpo puramente elastico torna scarico alla rimozione delle forze esterne, i trattamenti meccanici, termici o chimici congelano nel materiale autotensioni statiche permanenti dette *tensioni residue* ($sigma_"res"$). Poiché preesistono a pezzo scarico e sono costanti nel tempo, in esercizio esse traslano sia $sigma_"max"$ sia $sigma_"min"$ lasciando invariata l'ampiezza $sigma_a$ e sommandosi algebricamente alla sola tensione media:

$ sigma_m = sigma_m^"carichi" + sigma_"res" $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Su Haigh questa sovrapposizione sposta $P$ in orizzontale a ordinata $sigma_a$ fissa. Tensioni residue di trazione ($sigma_"res" > 0$) portano il punto a destra in $P''$, avvicinandolo al contorno limite e riducendo il margine a fatica.

    Al contrario, tensioni residue di compressione ($sigma_"res" < 0$) lo spostano a sinistra in $P'$, aumentando la distanza verticale dal bordo. I trattamenti superficiali mirano perciò a indurre stati compressivi per innalzare la resistenza a fatica.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig100.typ"),
    )
  ],
)

==== Diagramma di Ros per tensione minima costante

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Se la tensione minima $sigma_"min"^P$ resta fissa mentre cresce solo la massima $sigma_"max"$, su Haigh aumentano sia $sigma_m$ sia $sigma_a$ di $0.5 Delta sigma_"max"$ lungo una retta obliqua a $+45^circ$. Risulta allora più diretto il *diagramma di Ros* nel piano $(sigma_"min", sigma_"max")$.

    Qui la bisettrice a $+45^circ$ ($sigma_"max" = sigma_"min"$) individua l'asse statico $sigma_m$, quella a $-45^circ$ l'asse alternato $sigma_a$, e il limite superiore di fatica è troncato in orizzontale dallo snervamento $sigma_"max" = R_"p0.2"$.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig101.typ"),
    )
  ],
)

Fissata l'ascissa $sigma_"min"^P$, il punto $P(sigma_"min"^P, sigma_"max"^P)$ giace sopra la bisettrice di $sigma_m$ (poiché $sigma_"max"^P > sigma_"min"^P$) e sale in verticale fino al contorno superiore $sigma_"max"^"lim"$. Il coefficiente di sicurezza si legge direttamente come rapporto tra le tensioni massime, criterio ampiamente adottato in campo aerospaziale:

$ C S = frac(sigma_"max"^"lim", sigma_"max"^P) $

=== Stima della curva SN del componente e sicurezza a vita limitata

==== Stima della curva SN del componente

La curva SN del componente si stima a partire da quella sperimentale della provetta tracciata a tensione media $sigma_m$ costante. I coefficienti correttivi di carico, scala, finitura superficiale e intaglio spostano il tracciato verso il basso, riducendo l'ampiezza ammissibile a ogni durata.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    - *Punto iniziale a $10^3$ cicli.* Il regime oligociclico ($N < 10^3$) è omesso e demandato ad analisi in deformazione. Rispetto al valore $0.9 R_m$ della curva di Wöhler a $sigma_m = 0$, una $sigma_m != 0$ riduce l'ordinata di avvio a $0.9(R_m - sigma_m)$.
    - *Ginocchio e asintoto.* Il ginocchio resta alla durata tipica del materiale ($2 dot 10^6$ cicli per gli acciai), mentre il limite scende da $sigma_"D,provetta"$ a $sigma_"D,componente"$.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig102.typ"),
    )
  ],
)

==== Coefficienti di sicurezza per vita limitata

Verificare a vita limitata equivale a lavorare su famiglie di diagrammi di Haigh tracciati a diversi valori di $N = "costante"$. Sulla curva SN stimata del componente, dal punto di esercizio $P(N_o, sigma_a)$ della #text(fill: red.transparentize(10%), weight: "bold")[costruzione in rosso], si definiscono due diversi coefficienti di sicurezza:

- *Sicurezza in tensione ($C S_sigma$).* A parità di durata prescritta $N_o$, rapporta l'ampiezza limite a rottura $sigma_"No"$ letta sulla curva del componente alla tensione alternata applicata $sigma_a$ (approccio classico in resistenza).
- *Sicurezza in durata ($C S_N$).* A parità di tensione applicata $sigma_a$, confronta i cicli a cedimento $N_L$ con la durata richiesta di missione $N_o$ (come nei cuscinetti volventi, tra ore effettive di durata e ore nominali d'impiego consigliate).

$ C S_sigma = frac(sigma_"No", sigma_a), quad C S_N = frac(N_L, N_o) $

Sul tratto inclinato della regione a termine, rappresentato come una retta in carta doppio-logaritmica, i due margini sono legati dall'equazione di Basquin ($N dot sigma_a^k = "cost."$) tramite l'esponente $k > 1$ (inverso della pendenza bilogaritmica). Eguagliando la legge nei punti $(N_L, sigma_a)$ e $(N_o, sigma_"No")$, si ricava:

$ cases(
  N_L dot sigma_a^k = N_o dot sigma_"No"^k,
  frac(N_L, N_o) = (frac(sigma_"No", sigma_a))^k,
) arrow.r.double C S_N = C S_sigma^k $

Poiché l'esponente $k$ amplifica fortemente ogni variazione di tensione sul numero di cicli, a uno stesso margine $C S_sigma$ corrisponde un $C S_N$ molto più elevato. Occorre inoltre verificare il tipo di diagramma impiegato: su carte semilogaritmiche (con la sola ascissa $N$ in scala logaritmica e $sigma_a$ lineare) la legge di potenza di Basquin non si rappresenta come una retta.

#pagebreak()

#align(center)[
  #block(width: 80%)[
    #text(size: 16pt, weight: "bold")[Effetti dei trattamenti, della temperatura e dell'ambiente sulla resistenza a fatica]
  ]
]
#v(0.4em)

== Effetti dei trattamenti

=== Ruolo dei trattamenti superficiali e meccanismo delle tensioni residue

Il danneggiamento a fatica nuclea quasi sempre sulla *superficie libera* del componente, dove micro-scorrimenti plastici e irregolarità geometriche trovano minor vincolo. Proprietà meccaniche e stato tensionale dello strato corticale governano quindi la durata molto più del nucleo interno.

L'efficacia di un trattamento superficiale dipende dal *gradiente di tensione* nella sezione: in flessione, torsione o presso intagli il picco tensionale ricade proprio nello strato trattato e il guadagno è marcato; sotto trazione assiale uniforme l'intera sezione sopporta lo stesso sforzo e l'innesco può trasferirsi al cuore non trattato.

I processi tecnologici si dividono in *trattamenti meccanici*, *rivestimenti superficiali* e *trattamenti termici o diffusivi*. Segno ed entità della variazione del limite di fatica a ciclo simmetrico alterno ($sigma_(D-1)$) non sono sempre prevedibili per via teorica e vanno qualificati con prove sperimentali sul componente.

Le *tensioni residue* ($sigma_"res"$) formano un campo di sforzi auto-equilibrato che permane nel pezzo dopo la rimozione di carichi, trattamenti e vincoli esterni. Originate da deformazioni plastiche o trasformazioni locali non uniformi, a differenza degli sforzi elastici reversibili alterano stabilmente la tensione media del ciclo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Un trattamento meccanico applica un carico concentrato $F$ che induce *snervamento compressivo* locale. Lo strato plastificato tenderebbe a espandersi lateralmente, ma il cuore rimasto elastico ne vincola la dilatazione e lascia la pelle in #text(fill: blue, weight: "bold")[compressione residua].

    Sul diagramma di Haigh ($sigma_m, sigma_a$, limiti $sigma_(D-1)^C$, $R_"p0.2"$ e $R_m$), la tensione media efficace è $sigma_(m,"eff") = sigma_m + sigma_"res"$. Una #text(fill: blue, weight: "bold")[$sigma_"res" < 0$] sposta l'origine a carico nullo da $P$ a $P'$ dove il contorno ammissibile si innalza; una #text(fill: red.transparentize(10%), weight: "bold")[$sigma_"res" > 0$] la porta in $P''$ verso la retta di Goodman.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig103.typ"),
    )
  ],
)

Con il precarico compressivo $P' P$, la trazione esterna deve prima annullare $sigma_"res"$ per portare in trazione la superficie, ampliando il margine di sicurezza a fatica.

=== Trattamenti meccanici e processi di formatura

==== Pallinatura (_shot peening_)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La *pallinatura* (_shot peening_) bombarda la superficie con un getto stretto, persistente e ad alta velocità di piccole sferette d'acciaio molto dure, lanciate ad aria compressa o forza centrifuga su aree mirate (spesso su tavola rotante).

    Ogni urto incide una micro-impronta plastica che solleva lievemente i bordi e comprime lo strato adiacente fino a $h_"pall" approx 1 "mm"$, con guadagni di $Delta sigma_(D-1) approx +(20"–"35)\%$.

    L'efficacia è massima su acciai di media durezza e ghise, minore su leghe leggere e acciai molto duri che resistono all'indentazione.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig104.typ"),
    )
  ],
)

Brevettata da Föppl (1929) e industrializzata da Almen negli anni Trenta per le *molle a balestra*, oggi si usa anche su *molle elicoidali* e al piede dei *denti d'ingranaggi* in flessione. L'intensità del getto si tara su una lamella unificata (*Almen strip*, classi N, A, C) serrata su supporto: una volta svincolata, la compressione residua la incurva e un comparatore misura la freccia $f$.

==== Rullatura a freddo (_cold rolling_)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella *rullatura a freddo* (_cold rolling_), rulli sagomati su macchina utensile premono il pezzo rotante sotto abbondante lubrificazione per dissipare il calore d'attrito. Rispetto alla pallinatura lo strato compresso è molto più profondo ($h_"rull" approx 10 "mm"$) e la superficie risulta più regolare.

    Nel piano bilogaritmico $S"-"N$, la curva #text(fill: blue, weight: "bold")[rullata] mostra pendenza più dolce di quella #text(fill: red.transparentize(10%), weight: "bold")[non rullata]: l'incremento di resistenza cresce agli alti numeri di cicli, dove la vita è governata dall'innesco superficiale inibito da $sigma_"res" < 0$.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig105.typ"),
    )
  ],
)

Spesso il processo coincide con la generazione stessa della forma: è il caso dei *filetti delle viti*, formati e rullati in un'unica operazione, e dei *raccordi perno-maschetta* negli alberi a gomiti soggetti a flessione e torsione.

==== Formatura a freddo e lavorazioni a caldo

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella *formatura a freddo* delle lamiere (piegatura, bordatura, ondulazione, come nella laminazione a freddo), la flessione plastica allunga le fibre esterne e accorcia quelle interne.

    Allo scarico, il *ritorno elastico* del nucleo inverte i segni superficiali creando un profilo a farfalla: #text(fill: blue, weight: "bold")[compressione residua] sull'estradosso e #text(fill: red.transparentize(10%), weight: "bold")[trazione residua] sull'intradosso.

    Formatura e rullatura *a caldo* causano invece *decarburazione superficiale* ($"C" + "O"_2 -> "CO"_2$): la perdita di carbonio indebolisce la pelle e ne riduce il volume, il cui ritiro vincolato dal substrato induce #text(fill: red.transparentize(10%), weight: "bold")[trazione residua].
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig106.typ"),
    )
  ],
)

#nota[
  *Orientamento di montaggio e recupero.* Nelle lamiere formate a freddo conviene esporre alla trazione ciclica di esercizio le fibre esterne compresse, proteggendo l'intradosso già teso; dopo lavorazioni a caldo inevitabili occorre invece ripristinare la compressione con pallinatura o rullatura.
]

=== Rivestimenti superficiali

I rivestimenti superficiali rispondono a requisiti estetici o proteggono da *corrosione* e *usura*, con effetti sulla fatica molto variabili in funzione dello stato residuo indotto e dell'ambiente operativo.

- *Cromatura e nichelatura.* Molto diffusi contro usura e corrosione, depositano riporti in *trazione residua* ($sigma_"res" > 0$) che riducono sensibilmente la resistenza a fatica in aria; il calo si aggrava al crescere di $R_m$ del substrato, della durata richiesta e dello spessore depositato.
- *Compensazione in serie.* Per neutralizzare la trazione del riporto si antepone una *pallinatura* o una *nitrurazione* preventiva: il precarico compressivo iniziale bilancia la caduta successiva (la nichelatura risponde a tale sequenza con sensibilità maggiore della cromatura).
- *Cadmiatura e zincatura.* Risultano neutre sulla fatica in aria e proteggono dalla corrosione, ma offrono scarsa resistenza all'usura.
- *Elettrorivestimento e idrogeno.* Bagni galvanici non accuratamente controllati fanno diffondere idrogeno atomico nel reticolo metallico, causando *infragilimento da idrogeno* e cedimenti prematuri.
- *Anodizzazione (leghe leggere).* Crea una pellicola d'ossido dura ma fragile che si fessura sotto carico ciclico, innescando cricche in sinergia con la corrosione ($Delta sigma_(D-1) approx -(20"–"30)\%$).

#figure(
  {
    set par(justify: false)
    set text(hyphenate: false)
    fit-box(include "figs/fatica/fatica-fig107.typ")
  },
)

#v(0.3em)

=== Trattamenti termici, diffusivi e lavorazioni termiche

Nei processi termici le tensioni residue derivano da *cambiamenti di fase* localizzati, *diffusione chimica* o *raffreddamento differenziale* sotto forti gradienti di temperatura; stati analoghi insorgono anche in *saldatura*, *taglio alla fiamma* e *rettifica*.

*Cementazione e nitrurazione.* La diffusione interstiziale di carbonio o azoto indurisce uno strato di circa $1 "mm"$ e ne incrementa il volume; poiché il nucleo impedisce l'espansione, la superficie acquisisce *compressione residua* e ottima resistenza a fatica e usura.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Tempra superficiale e a induzione.* Portando l'acciaio a temperatura di austenitizzazione (diagramma Fe–C) e raffreddandolo rapidamente, la *trasformazione martensitica* comporta una dilatazione lineare:

    $ varepsilon_"mart" approx 0.5% $

    Se la tempra è solo superficiale (come nella *tempra a induzione*), il nucleo non temprato blocca l'espansione: nasce uno strato compresso (#box[$sigma_"res" < 0$]) abbinato a un *cuore tenace* che frena la propagazione.

    *Lavorazioni termiche localizzate.* Nella *zona termicamente alterata* (ZTA) di una saldatura, così come in rettifiche severe o tagli termici non controllati, il ritiro di raffreddamento vincolato dal metallo freddo circostante lascia in superficie nocive tensioni residue di trazione.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig108.typ"),
    )
  ],
)

=== Effetto della temperatura di esercizio e scorrimento viscoso

All'aumentare della temperatura decrescono resistenza statica $R_m$ e modulo di Young $E$. Nella progettazione a fatica la temperatura può agire come semplice *condizione al contorno* costante (spostando le curve di Wöhler $S"-"N$) oppure come *sollecitazione diretta* nella *fatica termica* e *termomeccanica*.

Mentre un corpo libero si dilata senza tensioni, in una struttura vincolata — ad esempio una barra doppiamente incastrata o gli organi di un motore a combustione interna — oscillazioni temporali o gradienti spaziali di temperatura impediscono le dilatazioni (generando compressione al riscaldamento e trazione al raffreddamento) e richiedono modelli dedicati.

#block(breakable: false)[
  A temperatura costante, bisogna invece distinguere tra fase di *nucleazione* e fase di *propagazione*:

  - *Bassa temperatura.* La ridotta agitazione termica ostacola gli scorrimenti plastici locali, innalza $R_"p0.2"$ e ritarda la nucleazione (favorendo i *componenti sani*). Calano tuttavia resilienza e tenacità a frattura $K_"Ic"$: in presenza di *difetti preesistenti* la propagazione accelera verso il collasso fragile.
  - *Alta temperatura.* L'energia termica facilita il moto delle dislocazioni, anticipando la nucleazione fino alla possibile scomparsa del limite di fatica; l'aumento di tenacità rallenta però la propagazione rispetto al regime freddo.
]

==== Scorrimento viscoso (_creep_)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Ad alta temperatura compare lo *scorrimento viscoso* (*creep*): una deformazione progressiva nel tempo che evolve anche sotto *carico statico costante* (come nelle palette di turbina in regime di crociera), valutata in laboratorio su provetta riscaldata da bobina termica con peso $F = "cost"$.

    Detta $T_f$ la *temperatura assoluta di fusione* (in Kelvin), il fenomeno si attiva oltre 0.3–0.4 $T_f$ e diventa dominante sopra 0.6–0.7 $T_f$, rendendo inapplicabile l'approccio tensionale classico.

    Dopo la deformazione istantanea $epsilon_0$, la curva $epsilon(t)$ percorre gli stadi *primario* (I, velocità decrescente), *secondario* (II, stazionario) e *terziario* (III, accelerazione instabile fino a rottura).
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig109.typ"),
    )
  ],
)

Nelle macchine termiche (turbine aeronautiche, motori a combustione interna) lo scorrimento viscoso agisce in parallelo con fatica meccanica, fatica termomeccanica e ossidazione ad alta temperatura, rendendo necessari modelli di *danneggiamento combinato*.

=== Effetto dell'ambiente corrosivo e criterio progettuale

L'attacco elettrochimico di un *ambiente corrosivo* altera e irruvidisce la superficie libera creando micro-crateri che anticipano la nucleazione e abbattono drasticamente la durata; l'aumento di temperatura aggrava il degrado accelerando la cinetica chimica.

Gli *acciai altoresistenziali* risultano molto più sensibili alla fatica-corrosione rispetto alle leghe duttili, mentre gli acciai ad *alto tenore di cromo* resistono meglio grazie alla passivazione superficiale. In ambiente aggressivo, riporti come cromatura, nichelatura, cadmiatura e zincatura — pur penalizzanti o neutri in aria — *incrementano la vita a fatica* perché isolano chimicamente il metallo base.

#nota[
  *Criterio progettuale unificante.* Nei trattamenti meccanici e termici l'effetto sulla fatica è governato dal segno della tensione residua superficiale: $sigma_"res" < 0$ (compressione) trasla favorevolmente il punto di lavoro sul diagramma di Haigh, mentre $sigma_"res" > 0$ (trazione) riduce i margini di sicurezza. Quando un rivestimento anticorrosivo o antiusura induce trazione residua, conviene compensarlo in serie con un trattamento compressivo preventivo e qualificare sperimentalmente l'intero ciclo sul componente.
]

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Fatica multiassiale]
]
#v(0.4em)

== Fatica multiassiale

=== Introduzione alla fatica multiassiale e classificazione degli stati di tensione

I modelli di base della fatica assumono un carico monoassiale a frequenza fissa e ampiezza costante, correggendo per processi tecnologici, tensione media, effetto scala e finitura superficiale. Nei componenti reali l'esercizio attiva invece più componenti di tensione simultanee nello stesso punto critico: si parla allora di *fatica multiassiale*, spesso combinata con ampiezze variabili nel tempo.

*Esempio applicativo: pala di generatore eolico.* Il progetto parte dall'analisi della missione, fissando tipologia e intensità dei carichi insieme a condizioni atmosferiche ed escursioni termiche. Sulla pala agiscono insieme resistenza aerodinamica (*drag*), portanza (*lift*), forza centrifuga e gravità: variando lungo il giro, queste azioni sovrappongono tensioni normali e tangenziali nella medesima sezione critica.

Passare dal provino al componente richiede sia banchi di prova multiassiali rappresentativi del servizio reale — complessi e costosi — sia modelli analitici dedicati. In base all'evoluzione nel tempo delle tensioni principali si distinguono tre regimi:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    - *Stati multiassiali semplici.* Tutte le tensioni principali toccano massimi e minimi nello stesso istante e mantengono direzioni fisse: i carichi operano in fase ($0^circ$) o in controfase ($180^circ$), dove lo sfasamento inverte solo il segno senza spostare gli estremi.
    - *Stati multiassiali complessi.* Le sollecitazioni presentano uno sfasamento parziale ($Delta phi != 0^circ, 180^circ$); le direzioni principali ruotano nel tempo e occorrono modelli avanzati.
    - *Caso intermedio.* Le componenti alternate sono in fase, ma tensioni medie con direzioni principali non coincidenti con quelle alternate fanno oscillare gli assi principali complessivi.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig110.typ"),
    )
  ],
)

#v(0.6em)
La trattazione di base affronta gli *stati multiassiali semplici*: la coincidenza temporale dei picchi consente di definire uno scalare equivalente di verifica, mentre i regimi complessi e intermedi richiedono formulazioni specialistiche.

=== Analisi sperimentale di Gough e Pollard e tensione equivalente

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    Gough e Pollard provano provini duttili in acciaio — #text(fill: blue, weight: "bold")[C 15] ($R_m = 425" MPa"$) e #text(fill: red.transparentize(10%), weight: "bold")[30 Ni Cr Mo 12] ($R_m = 900" MPa"$) — sotto flessione ($sigma_a$) e torsione ($tau_a$) alternate simmetriche ($R = -1$) simultanee, in fase o in controfase.

    Nel piano $(sigma_a, tau_a)$ le rotture seguono archi di ellisse di semiassi pari ai limiti di fatica in sola flessione rotante ($sigma_(D-1)$) e in sola torsione alternata ($tau_(D-1)$): l'area interna è sicura, la curva segna il cedimento incipiente e l'esterno la rottura.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig111.typ"),
    )
  ],
)

#v(0.6em)
Per i materiali duttili la condizione analitica di sicurezza all'interno o sul contorno dell'ellisse sperimentale si scrive:
$ (frac(sigma_a, sigma_(D-1)))^2 + (frac(tau_a, tau_(D-1)))^2 <= 1 $

Moltiplicando entrambi i membri per $sigma_(D-1)^2$ emerge il rapporto di scala tra i due limiti di fatica del materiale:
$ sigma_a^2 + (frac(sigma_(D-1), tau_(D-1)))^2 tau_a^2 <= sigma_(D-1)^2 $

Nei materiali duttili il limite torsionale vale sperimentalmente $tau_(D-1) approx 0.6 sigma_(D-1) approx sigma_(D-1) / sqrt(3)$ (in pratica il 57%–60% di $sigma_(D-1)$). Ponendo $(sigma_(D-1) / tau_(D-1))^2 approx 3$ ed estraendo la radice si ottiene la condizione di resistenza:
$ sqrt(sigma_a^2 + 3 tau_a^2) <= sigma_(D-1) $

Come nella verifica statica delle travi (dove sulle fibre esterne più sollecitate per flessione e torsione il taglio trasversale si annulla), la tensione equivalente non è misurata direttamente nel solido, ma condensa in un unico scalare lo stesso rischio di danno delle componenti combinate. Confrontando con $sigma_(D-1)$ e usando *Von Mises* per la parte media si ha:
$ sigma_(a,"eq") = sqrt(sigma_a^2 + 3 tau_a^2), quad sigma_(m,"eq") = sqrt(sigma_m^2 + 3 tau_m^2) $

*Confronto con Von Mises e limiti di validità.* L'espressione di $sigma_(a,"eq")$ coincide nella forma con il criterio statico di Von Mises, ma deriva dall'interpolazione di prove a fatica anziché dal lavoro elastico di distorsione. Mentre in Von Mises il coefficiente $3$ è una costante teorica esatta, in Gough e Pollard il rapporto $(sigma_(D-1) / tau_(D-1))^2$ può scostarsi leggermente da $3$ ed è tarabile sul singolo materiale; il modello vale inoltre per soli carichi in fase ($0^circ$) o controfase ($180^circ$).

*Materiali fragili.* Per materiali nettamente fragili — come ceramiche tecniche e allumina per scudi termici — Gough e Pollard propongono una curva empirica dedicata:
$ (frac(tau_a, tau_(D-1)))^2 + (frac(tau_a, sigma_a) - 1) (frac(sigma_a, sigma_(D-1)))^2 + (2 - frac(sigma_(D-1), tau_(D-1))) (frac(sigma_a, sigma_(D-1))) = 1 $
Nel progetto a fatica questa relazione è raramente impiegata: nei materiali fragili le cricche propagano rapidamente senza ridistribuzione plastica locale (*blunting*) agli intagli.

#pagebreak()

=== Estensione alle tensioni assiali secondo Shigley ed effetto dell'intaglio

In Gough e Pollard per materiali duttili la tensione normale $sigma_a$ è puramente flettente ($sigma_a^f$) e il cedimento limite vale $sqrt((sigma_a^f)^2 + 3 tau_a^2) = sigma_(D-1)$. Molti organi rotanti, come i rotori verticali di potenza, associano però torsione $tau_a$ e flessione rotante $sigma_a^f$ indotta dai vincoli a una tensione assiale di trazione-compressione $sigma_a^t$ dovuta al peso proprio o a spinte assiali.

Diversamente dal caso statico duttile, dove la resistenza a trazione governa anche la flessione, a fatica i due limiti differiscono: in flessione il gradiente confina il picco alle sole fibre esterne, perciò $sigma_(D-1)$ supera il limite in trazione-compressione uniforme $sigma_(D-1)^T = C_L dot sigma_(D-1)$, con $0.6 <= C_L <= 0.85$.

Per evitare arbitri nella scelta di $C_L$ senza sovrastimare il peso del termine assiale, Shigley adotta il valore unico $C_L = 0.85$. In sola trazione-compressione alternata il cedimento si raggiunge quando $sigma_a^t = 0.85 dot sigma_(D-1)$; dividere $sigma_a^t$ per $0.85$ riporta quindi la tensione assiale alla scala della flessione per il confronto con $sigma_(D-1)$:

$ sigma_a^t = sigma_(D-1)^T = C_L dot sigma_(D-1) approx 0.85 dot sigma_(D-1) quad arrow.r.double quad frac(sigma_a^t, 0.85) = sigma_(D-1) $

Poiché flessione e azione assiale agiscono lungo il medesimo asse del componente, le due tensioni normali rese omogenee si sommano direttamente in $sigma_(a,"eq")$, mentre la componente media conserva la forma statica di Von Mises:

$ sigma_(a,"eq") = sqrt((sigma_a^f + frac(sigma_a^t, 0.85))^2 + 3 tau_a^2), quad sigma_(m,"eq") = sqrt((sigma_m^f + sigma_m^t)^2 + 3 tau_m^2) $

#nota[
  *Omogeneità dei termini.* In $sigma_(a,"eq")$, $tau_a$ non va divisa per $0.85$ perché il coefficiente $3$ (da $(sigma_(D-1) / tau_(D-1))^2 approx 3$) la converte già alla scala di $sigma_(D-1)$. In $sigma_(m,"eq")$ manca invece lo $0.85$ poiché in regime statico duttile trazione e flessione hanno uguale limite di cedimento.
]

==== Effetto dell'intaglio e punto di lavoro

In presenza di intagli si passa dalle tensioni nominali a quelle effettive moltiplicando ogni termine per il proprio coefficiente di intaglio a fatica $K_f$ (anziché $K_t$). Poiché il danneggiamento dipende dalla tensione massima locale $sigma_"max" = sigma_m + sigma_a$, ciascun fattore specifico ($K_f^f$ per flessione, $K_f^t$ per trazione-compressione e $K_f^tau$ per torsione) si applica sia alla parte alternata sia a quella media:

$ sigma_(a,"eq") = sqrt((K_f^f sigma_a^f + frac(K_f^t sigma_a^t, 0.85))^2 + 3(K_f^tau tau_a)^2), quad sigma_(m,"eq") = sqrt((K_f^f sigma_m^f + K_f^t sigma_m^t)^2 + 3(K_f^tau tau_m)^2) $

Con stati multiassiali semplici (componenti in fase o controfase e direzioni principali fisse), la coppia $(sigma_(m,"eq"), sigma_(a,"eq"))$ individua il punto di lavoro $P$ sul diagramma di Haigh, riconducendo la verifica al caso monoassiale.

=== Verifica sul diagramma di Haigh multiassiale e cenni alla normativa FKM-Guideline

Individuato $P(sigma_(m,"eq"), sigma_(a,"eq"))$, il diagramma di Haigh del componente traccia la retta di Goodman tra $R_m$ e il limite di fatica ridotto $sigma_(D-1)^C$, ricavato dal limite in flessione rotante $sigma_(D-1)$ tramite i soli fattori dimensionale $C_S$ e di finitura superficiale $C_F$:

$ sigma_(D-1)^C = C_S dot C_F dot sigma_(D-1) $

Il fattore di carico $C_L$ va escluso da $sigma_(D-1)^C$: la correzione $0.85$ è già inclusa su $sigma_a^t$ dentro $sigma_(a,"eq")$ e reinserirla conterebbe due volte lo stesso effetto. Nel caso di riferimento a tensione media costante ($sigma_(m,"eq") = "cost"$, pur restando applicabili sul piano equivalente anche le altre leggi di carico come $R = "cost"$), la verticale per $P$ interseca l'asse $sigma_m$ in $H$ e la retta di Goodman in $L$, fissando il limite locale $sigma_D^"lim"$ e il coefficiente di sicurezza $"CS"$:

$ "CS" = frac(overline("LH"), overline("PH")) = frac(sigma_D^"lim", sigma_(a,"eq")) $

#figure(
  fit-box(include "figs/fatica/fatica-fig112.typ"),
) <fig:haigh-multi>

Poiché a $sigma_(m,"eq")$ costante la similitudine dei triangoli con vertice in $R_m$ dà $sigma_D^"lim" / "CS" = (sigma_(D-1)^C / "CS")(1 - sigma_(m,"eq") / R_m)$, la @fig:haigh-multi (b) traccia direttamente la retta limite ridotta tra $sigma_(D-1)^C / "CS"$ e $R_m$: fissato il $"CS"$ minimo di progetto o normativa, ogni punto $P$ interno al triangolo ridotto è verificato.

==== Cenni alla normativa FKM-Guideline (2003)

La normativa tedesca *FKM-Guideline* (*Analytical Strength Assessment*, Forschungskuratorium Maschinenbau, 5ª ed., VDMA Verlag, 2003) costituisce lo standard europeo di riferimento, per metodo e banca dati sui materiali, nel progetto a fatica di alberi di trasmissione. Le tensioni equivalenti effettive mantengono l'impianto di Shigley, moltiplicando ogni tensione nominale per il proprio $K_f$:

$ sigma_(a,"eq,eff")^"FKM" = sqrt((sigma_(a,"nom")^"tc" K_f^"tc" + sigma_(a,"nom")^b K_f^b)^2 + 3(tau_(a,"nom")^t K_f^t)^2), quad sigma_(m,"eq,eff")^"FKM" = sqrt((sigma_m^"tc" K_f^"tc" + sigma_m^b K_f^b)^2 + 3(tau_m^t K_f^t)^2) $

Apici e pedici indicano trazione-compressione ($"tc"$), flessione ($b$, *bending*) e torsione ($t$). In $sigma_(a,"eq,eff")^"FKM"$ non compare il divisore $0.85$ perché la FKM riferisce il confronto al limite di fatica del componente in trazione-compressione $sigma_(C,D-1)$, anziché alla flessione rotante, tenendo conto a parte dei fattori di carico nella taratura dei coefficienti:

$ sigma_(C,D-1) = C_F dot sigma_(D-1)^"tc" $

=== Il metodo storico di Sines e i suoi limiti

Per valutare l'influenza delle tensioni medie in fatica multiassiale, *Sines* provò provini cilindrici in quattro combinazioni: (a) $sigma_m + sigma_a$, (b) $sigma_m + tau_a$, (c) $tau_m + tau_a$ e (d) $tau_m + sigma_a$. Nei diagrammi ottenuti, la resistenza cala nettamente al crescere della tensione media normale mentre resta costante con sola torsione media.

#figure(
  fit-box(include "figs/fatica/fatica-fig113.typ"),
)

- *Casi a e b ($sigma_(m,1) + sigma_(m,2) != 0$).* La tensione media assiale $sigma_m$ rende non nulla la traccia del tensore medio; al crescere di $sigma_m$ l'ampiezza ammissibile ($sigma_a$ o $tau_a$) decresce sensibilmente.
- *Casi c e d ($sigma_(m,1) + sigma_(m,2) = 0$).* La torsione statica pura genera tensioni principali medie uguali e opposte ($sigma_(m,1) = +tau_m$, $sigma_(m,2) = -tau_m$); in quei provini la resistenza alternata resta pressoché insensibile a $tau_m$.

Da tali prove Sines dedusse che la tensione tangenziale media non influisce sulla vita a fatica e riscrisse la retta di Goodman ($sigma_(a,"eq") + m sigma_(m,"eq") <= sigma_(D-1)$) in *tensioni principali*, esprimendo $sigma_(a,"eq")$ secondo *Von Mises* e sostituendo a $sigma_(m,"eq")$ la sola somma algebrica delle tensioni medie principali:

$ frac(1, sqrt(2)) sqrt((sigma_(a,1) - sigma_(a,2))^2 + (sigma_(a,1) - sigma_(a,3))^2 + (sigma_(a,2) - sigma_(a,3))^2) + m (sigma_(m,1) + sigma_(m,2) + sigma_(m,3)) <= sigma_(D-1), quad m = frac(sigma_(D-1), R_m) $

Il primo termine coincide con $sqrt(sigma_a^2 + 3 tau_a^2)$ scritto nelle tre tensioni principali alternate, mentre la pendenza di Goodman $m = sigma_(D-1) / R_m$ rende il contributo medio omogeneo a $sigma_(D-1)$. In torsione statica pura ($sigma_(m,1) = -sigma_(m,2)$, $sigma_(m,3) = 0$) la parentesi media si annulla, azzerando ogni effetto di $tau_m$.

Oggi il criterio di Sines è abbandonato perché generalizza indebitamente il comportamento di provini particolari. Componenti reali quali *molle elicoidali*, *viti* e *bulloni* mostrano diagrammi di Haigh nel piano $(tau_m, tau_a)$ nettamente decrescenti; negli *alberi di trasmissione*, inoltre, ignorare $tau_m$ trascurerebbe una causa primaria di danneggiamento e rottura.

=== Critica all'approccio $K_f$ riduttivo e complessità delle prove multiassiali

Un altro schema storico porta $K_f$ a denominatore del limite di fatica a flessione alternata $sigma_(D-1)^b$ (*bending*), lasciando nominali le tensioni in $sigma_(a,"eq")$ ed escludendo la torsione dalla componente media:

$ sigma_(D-1)^C = frac(C_L dot C_S dot C_F, K_f) sigma_(D-1)^b, quad sigma_(a,"eq") = sqrt(sigma_a^2 + 3 tau_a^2), quad sigma_(m,"eq") = sigma_m $

L'impostazione è coerente solo sotto carico monoassiale, dove $K_f$ e i fattori correttivi sono univoci. Quando invece coesistono sforzo normale $N$ (trazione-compressione) e momento flettente $M_f$ (flessione rotante), i diagrammi di *Peterson* forniscono $K_f$ distinti a parità di geometria dell'intaglio, rendendo ambiguo sia quale $K_f$ porre a denominatore sia quali coefficienti $C_L$ e $C_S$ adottare a numeratore.

Per aggirare il dubbio si calcolavano talvolta due limiti di fatica distinti per flessione e per trazione-compressione, assumendo in via cautelativa il minore tra i due. Questa approssimazione è oggi sconsigliata dalla letteratura e dalle normative, che mantengono $sigma_(D-1)^C = C_S C_F sigma_(D-1)$ sul lato resistente e applicano ogni $K_f$ specifico alla rispettiva tensione nominale sul lato dei carichi.

==== Difficoltà delle prove sperimentali multiassiali

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    Alle criticità dei modelli si sommano quelle di laboratorio: provare su più assi componenti reali — come una *pala eolica* sollecitata simultaneamente su due piani ortogonali — richiede banchi dedicati, potenze elevate e alti costi di misura.

    Poiché *attuatori ortogonali* e telai di supporto sono elastici, senza svincolo cinematico la loro dinamica contamina quella del provino. Interponendo *cerniere di disaccoppiamento* agli estremi degli attuatori, lo spostamento in un piano ruota liberamente l'attuatore ortogonale senza infletterlo, isolando l'isteresi propria della pala.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig114.typ"),
    )
  ],
)

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Fatica ad ampiezza variabile]
]
#v(0.4em)

== Fatica ad ampiezza variabile

=== Sollecitazioni ad ampiezza variabile e classificazione dei segnali

I modelli classici di fatica assumono cicli sinusoidali ad ampiezza costante, come nella prova di flessione rotante. In esercizio gli organi meccanici subiscono invece storie temporali irregolari per ampiezza, frequenza, tensione media e sequenza di applicazione. Nei banchi prova multiasse tali storie, rilevate su pista o in opera, vengono iniettate tramite attuatori su sottosistemi completi (ad esempio un gruppo sospensione), misurando forze e risposta dinamica con celle di carico e accelerometri.

Per il dimensionamento analitico occorre ricondurre il segnale di tensione registrato $sigma(t)$ a cicli sinusoidali elementari confrontabili con la curva di Wöhler (a $sigma_m = 0$) o con le curve #box[$S$–$N$] (a $sigma_m != 0$). L'approccio dipende dalla natura temporale del segnale:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    - *Segnali periodici.* Pur con andamento interno irregolare, una finestra di periodo $T$ si ripete identica nel tempo. Rappresentano la quasi totalità delle applicazioni meccaniche e meccatroniche.
    - *Segnali casuali (_random fatigue_).* Privi di periodicità riconoscibile, richiedono modelli statistici e probabilistici nel dominio della frequenza.
    - *Scomposizione in blocchi.* Isolato il periodo $T$, la storia viene tradotta in pacchetti sinusoidali isofrequenziali definiti dalla terna $(n_i, sigma_"ai", sigma_"mi")$.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig115.typ"),
    )
  ],
)
#v(0.4em)

La procedura si articola in due fasi: estrarre dal segnale periodico i blocchi elementari $(n_i, sigma_"ai", sigma_"mi")$ e cumularne gli effetti di danno rispetto alla resistenza del materiale. Si esamina dapprima il sottocaso a tensione media costante ($sigma_m = "cost"$, eventualmente nulla), per poi estendere il modello al caso generale con $sigma_a$ e $sigma_m$ entrambe variabili.

=== Danneggiamento elementare e regola lineare di Palmgren-Miner

Quando $sigma_m$ resta costante su tutti i blocchi, l'intera storia di carico afferisce a un'unica curva #box[$S$–$N$] (curva di Wöhler se $sigma_m = 0$). Sul diagramma bilogaritmico si confrontano i cicli $n_i$ previsti in missione con la durata a rottura $N_i$ che compete a ciascun livello di tensione alternata $sigma_"ai"$.

#v(0.4em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    Applicando $n_1$ cicli al livello $sigma_"a1"$ (#text(fill: red.transparentize(10%), weight: "bold")[punti rossi]), il componente non cede perché resta a sinistra della retta di Basquin, sulla quale il collasso avviene dopo $N_1$ cicli (#text(fill: blue, weight: "bold")[punti blu]).

    Lo stesso vale per un secondo blocco a $sigma_"a2" > sigma_"a1"$, i cui $n_2 < N_2$ cicli non provocano da soli la rottura ma consumano un'ulteriore aliquota della vita potenziale del materiale.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig116.typ"),
    )
  ],
)
#v(0.4em)

La frazione di vita esaurita dal singolo blocco è quantificata dal *danno elementare* $D_i$, definito come rapporto tra i cicli applicati in missione $n_i$ e i cicli a rottura $N_i$ letti sulla curva #box[$S$–$N$] alla medesima tensione media:

$ D_1 = frac(n_1, N_1), quad D_2 = frac(n_2, N_2), quad D_i = frac(n_i, N_i) $

Secondo la *regola lineare di Palmgren-Miner*, i danni parziali si accumulano linearmente: se un primo livello consuma il 40% della vita e un secondo il 20%, il danno complessivo vale $0.6$ e resta un margine residuo del 40%. Il cedimento sopraggiunge all'esaurimento del 100% della capacità del materiale:

$ D = sum D_i = sum frac(n_i, N_i) = 1 <==> "Rottura a fatica" $

#nota[
  *Soglia convenzionale e margine di sicurezza.* La soglia critica $D = 1$ vale al livello di confidenza statistica della curva #box[$S$–$N$] adottata. Trattamenti superficiali, stato del componente e storia di carico possono spostare il collasso sperimentale leggermente sopra o sotto l'unità; in progetto si impone quindi $D < 1$ con un opportuno coefficiente di sicurezza sui cicli o sulle tensioni.
]

==== Cicli sotto il limite di fatica ed effetto della sequenza di carico

Nella regola di Palmgren-Miner classica sono *efficaci* i soli blocchi con ampiezza pari o superiore al limite di fatica ($sigma_"ai" >= sigma_D$). Per livelli sotto l'asintoto orizzontale ($sigma_"ai" < sigma_D$), la vita teorica diverge e il contributo alla sommatoria si annulla:

$ sigma_"ai" < sigma_D ==> N_i -> infinity ==> D_i = frac(n_i, infinity) = 0 $

Poiché l'addizione è commutativa, il modello lineare trascura inoltre l'*ordine di applicazione* dei carichi. Nella realtà fisica la sequenza incide: se cicli severi ($sigma_"ai" > sigma_D$) agiscono per primi e innescano una microcricca, la soglia di avanzamento si abbassa e anche i successivi cicli sotto l'asintoto ($sigma_"ai" < sigma_D$) contribuiscono in piccola parte a propagarla. Mentre metodi di calcolo più raffinati includono il danno delle ampiezze sotto $sigma_D$, nella verifica ordinaria tale scarto viene assorbito dal margine di sicurezza imposto su $D$.

=== Durata totale e tensione alternata equivalente ($sigma_m$ costante)

In sede di progetto il numero assoluto di cicli $n_i$ per ciascun regime non è noto a priori. Le specifiche di missione forniscono invece la ripartizione percentuale dell'esercizio: per un autoveicolo, ad esempio, le quote trascorse su percorso urbano (50%), autostradale (20%), collinare (10%) e montano (20%).

Ogni livello di carico si esprime allora come frazione $alpha_i = n_i slash N_"TOT"$ della durata totale incognita $N_"TOT"$ (espressa in cicli), con $0 < alpha_i < 1$ e $sum alpha_i = 1$:

$ n_i = alpha_i dot N_"TOT" quad (alpha_i < 1, quad sum alpha_i = 1) $

Sostituendo nella condizione limite di Palmgren-Miner ($D = 1$) si isola $N_"TOT"$, utilizzabile sia in *verifica* (calcolare la durata disponibile note le $alpha_i$), sia in *progetto* (fissare una vita di targa $N_"TOT"$ per dimensionare la sezione resistente):

$ sum frac(n_i, N_i) = 1 arrow.r.double N_"TOT" sum frac(alpha_i, N_i) = 1 arrow.r.double N_"TOT" = frac(1, sum frac(alpha_i, N_i)) $

==== Derivazione tramite legge di Basquin e tensione equivalente

Per esprimere $N_"TOT"$ direttamente in funzione delle ampiezze di tensione $sigma_"ai"$, si opera nella regione della *fatica a termine ad alto numero di cicli*. Resta escluso il primo tratto di *fatica oligociclica* (tra $0.9 R_m$ e $R_m$), dove prevalgono deformazioni plastiche cicliche studiate con modelli deformativi.

Lungo il tratto inclinato vale l'equazione di Basquin $sigma_a^k N = B$, dove $k$ governa la pendenza bilogaritmica della curva e la costante $B$ si determina imponendo il passaggio per il punto di ginocchio $(sigma_D, N_G)$ (tipicamente $N_G approx 2 dot 10^6$ cicli per gli acciai). Per ogni livello efficace ($sigma_"ai" >= sigma_D$) si ricava:

$ sigma_"ai"^k N_i = B , quad B = sigma_D^k N_G arrow.r.double N_i = frac(sigma_D^k N_G, sigma_"ai"^k) $

I blocchi con $sigma_"ai" < sigma_D$ danno danno nullo ($alpha_i slash N_i = 0$) e vanno esclusi dalla sostituzione di Basquin, altrimenti si prolungherebbe fittiziamente la retta inclinata sotto l'asintoto sovrastimando il danno. Limitando la somma ai soli livelli efficaci ($sigma_"ai" >= sigma_D$, pur mantenendo le $alpha_i$ riferite all'intera missione) si ottiene:

$ N_"TOT" = frac(sigma_D^k N_G, sum_(sigma_"ai" >= sigma_D) alpha_i sigma_"ai"^k) = frac(B, sum_(sigma_"ai" >= sigma_D) alpha_i sigma_"ai"^k) arrow.r.double N_"TOT" sum_(sigma_"ai" >= sigma_D) alpha_i sigma_"ai"^k = B $

Questa relazione vale *esclusivamente se $sigma_m$ è costante* per tutti i blocchi, così che $(B, k, sigma_D)$ siano unici. Sotto tale ipotesi si definisce una #text(fill: blue, weight: "bold")[tensione alternata equivalente] $sigma_"a,eq"$ che, applicata ad ampiezza costante per tutti gli $N_"TOT"$ cicli (indicati anche con $N_"eq"$), produce lo stesso danno cumulato dello spettro reale:

$ sigma_"a,eq"^k N_"TOT" = B arrow.r.double sigma_"a,eq" = root(k, sum_(sigma_"ai" >= sigma_D) alpha_i sigma_"ai"^k) , quad N_"TOT" = frac(B, sigma_"a,eq"^k) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    Pur non coincidendo in generale con nessuna delle ampiezze effettivamente applicate, #text(fill: blue, weight: "bold")[$sigma_"a,eq"$] sintetizza la severità dell'intera missione in un solo parametro tensionale collocato sulla retta di Basquin in $(sigma_"a,eq", N_"TOT")$.

    Mentre il generico blocco #text(fill: red.transparentize(10%), weight: "bold")[$n_i$] consuma la sola frazione $n_i slash N_i$, la stessa media pesata di potenza $k$ si ritrova nel calcolo del *carico dinamico equivalente* dei cuscinetti a corpi volventi (con le forze al posto delle tensioni).
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig117.typ"),
    )
  ],
)

=== Cumulativo di sollecitazione ed estensione a $sigma_m$ variabile

Per descrivere lo spettro di missione nelle specifiche tecniche tra costruttore e committente, i blocchi estratti vengono riordinati dalla tensione alternata $sigma_a$ (o escursione $Delta sigma$) massima alla minima e riportati in funzione dei cicli cumulati $N$. L'area sottesa restituisce una fotografia sintetica della severità globale d'esercizio, scalabile dal singolo periodo di riferimento all'intera vita utile tramite le frazioni $alpha_i$.

#v(0.4em)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    L'istogramma a gradini prende il nome di *cumulativo di sollecitazione* o *diagramma delle eccedenze* (in gergo motoristico *accumulata di carico*): ogni ascissa cumulata $N = sum_(j <= i) n_j$ (spesso riportata in scala logaritmica sugli spettri estesi) indica per quanti cicli una data ampiezza $sigma_a$ viene eguagliata o superata.

    Operativamente i rettangoli discreti ($n_1 dots n_6$) vengono interpolati con una #text(fill: blue, weight: "bold")[curva continua] troncata al raggiungimento del limite di fatica #text(fill: red.transparentize(10%), weight: "bold")[$sigma_D$], scartando la coda inferiore inefficace.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig118.typ"),
    )
  ],
)
#v(0.4em)

Quando $sigma_m$ è costante su tutti i livelli, il cumulativo si traduce in una tabella di progetto in cui $sigma_m$ e il corrispondente limite di fatica $sigma_D$ restano fissi su tutte le righe, con $sigma_D = sigma_"D-1"$ nel caso simmetrico $sigma_m = 0$ (@tab:spettro-cost).

#figure(
  table(
    columns: (auto, auto, auto, auto),
    align: center + horizon,
    inset: (x: 10pt, y: 4.5pt),
    stroke: 0.6pt + black.transparentize(60%),
    fill: (x, y) => if y == 0 { luma(235) } else if calc.odd(y) { white } else { luma(248) },
    [*$sigma_a$*], [*$sigma_m$*], [*$alpha$*], [*$sigma_D$*],
    [$sigma_"a1"$], [$sigma_m$ (cost)], [$alpha_1$], [$sigma_D$ (cost)],
    [$sigma_"a2"$], [$sigma_m$], [$alpha_2$], [$sigma_D$],
    [$dots$], [$dots$], [$dots$], [$dots$],
    [$sigma_"a,n"$], [$sigma_m$], [$alpha_n$], [$sigma_D$],
  ),
) <tab:spettro-cost>

==== Caso generale con $sigma_m$ e $sigma_a$ entrambe variabili

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.1em,
  align: (left + horizon, center + horizon),
  [
    Quando anche la tensione media $sigma_"mi"$ varia da un blocco all'altro, lo spettro si distribuisce su una matrice bidimensionale $(sigma_a, sigma_m)$, componendo una famiglia di cumulativi affiancati per ciascuna classe di tensione media (@fig:cumulativo-3d).

    Poiché a ogni $sigma_"mi"$ competono uno specifico limite di fatica $sigma_"D,i"$ e una diversa curva #box[$S$–$N$] di parametri $(B_i, k_i)$, cade l'ipotesi per calcolare direttamente un'unica $sigma_"a,eq"$. Resta invece pienamente valida la legge di Palmgren-Miner espressa tramite le frazioni di missione $alpha_i$, purché ogni durata a rottura $N_i (sigma_"mi")$ sia valutata sulla curva #box[$S$–$N$] pertinente alla propria tensione media:

    $ N_"TOT" = frac(1, sum frac(alpha_i, N_i (sigma_"mi"))) $
  ],
  [
    #figure(
      image("images/_doppioni/fatica/ECM01-9_cumulativo_3d.png", width: 92%),
    ) <fig:cumulativo-3d>
  ],
)

#v(0.4em)

#figure(
  fit-box(include "figs/fatica/fatica-fig119.typ"),
) <fig:haigh-wohler>

Operativamente la durata $N_"TOT"$ si calcola seguendo una di due procedure normative equivalenti (@fig:haigh-wohler), illustrabili analiticamente adottando ad esempio la retta di Goodman per $sigma_"mi" > 0$:

$ sigma_"D,i" = sigma_"D-1" (1 - frac(sigma_"mi", R_m)) , quad sigma_"a,eq,0" = frac(sigma_"ai", 1 - sigma_"mi" slash R_m) $

- *Procedura multi-curva (Haigh $arrow.r$ #box[$S$–$N$]).* Per ogni $sigma_"mi"$ si legge su Haigh il limite $sigma_"D,i"$, si traccia la relativa curva #box[$S$–$N$] di costanti $(B_i, k_i)$, si ricava $N_i (sigma_"mi")$ a livello $sigma_"ai"$ e si applica Palmgren-Miner; esige cautela per non abbinare carichi e curve di media diversa.
- *Riduzione a tensione media nulla ($sigma_m = 0$).* Adottata dalla direttiva FKM e dalle norme USA, proietta su Haigh ogni stato $(sigma_"mi", sigma_"ai")$ sull'asse $sigma_m = 0$, riconducendo l'intera lista all'unica curva di Wöhler in $sigma_"D-1"$ tramite le ampiezze equivalenti $sigma_"a,eq,0"$; sposta il rischio d'errore sulla proiezione in Haigh.

=== Conteggio dei cicli (*cycle counting*) e metodo *Rainflow*

Per ricondurre una storia di tensione irregolare ma periodica $sigma(t)$ alla lista discreta di blocchi sinusoidali $(n_i, sigma_"ai", sigma_"mi")$ richiesta dalle verifiche precedenti, le normative impiegano gli algoritmi di *conteggio dei cicli* (*cycle counting*) applicati alla sequenza di picchi e valli registrata in un periodo $T$.

==== Preparazione della finestra «periodico tra max»

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #set align(left)
    Riconosciuta la periodicità $T$ del segnale registrato, si evita di sezionarlo in istanti generici e si trasla rigidamente la finestra temporale fino a farla iniziare e terminare su due *massimi assoluti consecutivi* $sigma_"max"$ (@fig:finestra-max).

    Questa configurazione, detta *«periodico tra max»*, conserva inalterato l'intero contenuto informativo del periodo e crea alle due estremità due sponde verticali alla quota più alta, indispensabili per confinare il fluido nell'analogia idrologica.
  ],
  [
    #figure(
      fit-box(include "figs/fatica/fatica-fig120.typ"),
    ) <fig:finestra-max>
  ],
)

==== Algoritmo idrologico del serbatoio (*rainflow*)

Il criterio più accreditato nelle normative è il metodo *rainflow* («flusso di pioggia»), tradotto nella letteratura italiana nella variante equivalente del *metodo del serbatoio*. La spezzata cresta-valle racchiusa tra i due estremi $sigma_"max"$ è assimilata al profilo di un bacino montano inizialmente colmo d'acqua fino alla quota massima.

Immaginando di aprire una valvola sul fondo di una valle, l'acqua drena verso il basso: lo svuotamento individua un ciclo chiuso la cui tensione massima $sigma_"max,i"$ coincide con la quota del pelo libero iniziale prima dell'apertura e la cui tensione minima $sigma_"min,i"$ coincide con il fondo della valvola. Abbassandosi il livello principale, la geometria delle creste intermedie trattiene sacche d'acqua isolate a quote differenti.

Aprendo in sequenza una valvola sul fondo di ciascuna sacca residua si estraggono tutti i cicli secondari fino al completo prosciugamento del bacino. Rispetto ai metodi grafici basati sul tracciamento manuale di inviluppi armonici tra massimi e minimi — soggetti al rischio di omettere cicli interni — il serbatoio garantisce un controllo di completezza immediato: finché resta acqua in una valle, resta un ciclo da contabilizzare.

L'ordine di svuotamento (dalla valle più profonda a quelle minori oppure da sinistra verso destra, aggiornando coerentemente i peli liberi adiacenti) non altera la lista finale dei cicli. Per ogni salto estratto $(sigma_"min,i", sigma_"max,i")$ si calcolano escursione, ampiezza alternata e tensione media:

$ Delta sigma_i = sigma_"max,i" - sigma_"min,i", quad sigma_"ai" = (sigma_"max,i" - sigma_"min,i") / 2, quad sigma_"mi" = (sigma_"max,i" + sigma_"min,i") / 2 $

==== Esempio guidato su griglia MPa e costruzione dell'accumulata

Si applichi il metodo del serbatoio alla sequenza di estremi $300 -> 0 -> 200 -> -200 -> 200 -> -150 -> 100 -> 0 -> 100 -> -100 -> 300" MPa"$, delimitata dalle due sponde a $300" MPa"$ (@fig:serbatoio e @tab:conteggi):

- *Ciclo 1 (scarico principale).* A serbatoio colmo ($300" MPa"$), l'apertura della valvola più profonda a $-200" MPa"$ estrae il ciclo maggiore ($Delta sigma_1 = 500" MPa"$); le due creste a $200" MPa"$ arginano due bacini laterali a tale quota.
- *Ciclo 2 (sacca sinistra).* La valvola a $0" MPa"$ prosciuga l'invaso compreso tra la sponda sinistra e la prima cresta a $200" MPa"$ ($Delta sigma_2 = 200" MPa"$).
- *Ciclo 3 (valle secondaria destra).* Nel bacino destro a pelo libero $200" MPa"$, la valvola a $-150" MPa"$ scarica un salto $Delta sigma_3 = 350" MPa"$, lasciando due sottosacche arginate dalle creste a $100" MPa"$.
- *Cicli 4 e 5 (sottolivelli residui).* Le ultime due valvole svuotano le sacche residue da $100" MPa"$ rispettivamente fino a $0" MPa"$ ($Delta sigma_4 = 100" MPa"$) e fino a $-100" MPa"$ ($Delta sigma_5 = 200" MPa"$), lasciando il profilo completamente asciutto.

#figure(
  fit-box(include "figs/fatica/fatica-fig121.typ"),
) <fig:serbatoio>

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    inset: 5pt,
    align: center + horizon,
    stroke: 0.6pt + black.transparentize(60%),
    fill: (x, y) => if y == 0 { luma(235) } else if calc.odd(y) { white } else { luma(248) },
    [*Ciclo*], [*$sigma_"min"$ (MPa)*], [*$sigma_"max"$ (MPa)*], [*$Delta sigma$ (MPa)*], [*$sigma_a$ (MPa)*], [*$sigma_m$ (MPa)*],
    [1], [$-200$], [$300$], [$500$], [$250$], [$50$],
    [2], [$0$], [$200$], [$200$], [$100$], [$100$],
    [3], [$-150$], [$200$], [$350$], [$175$], [$25$],
    [4], [$0$], [$100$], [$100$], [$50$], [$50$],
    [5], [$-100$], [$100$], [$200$], [$100$], [$0$],
  ),
) <tab:conteggi>

Su storie industriali più estese — come il periodo completo da $27$ svuotamenti analizzato a lezione — più sacche distinte possono presentare la medesima coppia $(sigma_"min", sigma_"max")$ (ad esempio tre salti identici tra $-100$ e $+100" MPa"$ nello stesso periodo). In fase di sintesi le estrazioni uguali si accorpano sommando le rispettive occorrenze nella molteplicità $n_i$ per periodo (da cui le frazioni di missione $alpha_i = n_i slash sum n_j$) e si riordinano infine per $sigma_a$ decrescente per tracciare l'*accumulata di carico* e condurre la verifica di Palmgren-Miner.

