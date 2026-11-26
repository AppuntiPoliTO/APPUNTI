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
= *Alberi di Trasmissione*

== Dimensionamento e verifica
<alberi-dimensionamento-e-verifica>

Lo studio degli elementi costruttivi delle macchine si apre con l'*albero di trasmissione* per una duplice motivazione metodologica:
1. *Applicazione diretta del calcolo a fatica:* l'albero rotante costituisce il caso archetipico di implementazione dei criteri di resistenza a fatica e dei fattori di concentrazione delle tensioni studiati nella meccanica del danneggiamento.
2. *Continuità con la teoria elementare della trave:* essendo un corpo snello (*traviforme*), ad esso si applicano direttamente i modelli di calcolo delle caratteristiche di sollecitazione e delle deformazioni della meccanica strutturale.

Un passaggio fondamentale nel dimensionamento è la distinzione formale tra assi e alberi:
- *Asse (Axle):* Elemento rotante o fisso adibito a sostenere elementi ruotanti; soggetto unicamente a flessione, non trasmette momento torcente significativo (es. asse ferroviario).
- *Albero (Shaft):* Elemento rotante di trasmissione che eroga potenza; subisce flessione (rotante) ed è specificamente soggetto a momento torcente.

Assi e alberi sono gli organi di macchina più prossimi al modello strutturale di *trave* (l'applicabilità del modello di De Saint-Venant è garantita da dimensioni della sezione trasversale sensibilmente inferiori allo sviluppo longitudinale), dal quale si distinguono perché destinati a *ruotare o oscillare attorno al proprio asse geometrico*. Oltre a flessione e (negli alberi) torsione, entrambi possono sopportare *carichi assiali* originati da spinte di dentature elicoidali o coniche, *precarico assiale* di montaggio dei cuscinetti, o *peso proprio* dell'albero e degli organi calettati nelle configurazioni ad *asse verticale*.

L'adozione della *sezione circolare (assialsimmetrica)* risponde a due esigenze:
- *Regolarità dinamica di rotazione:* mantiene costante il momento d'inerzia rispetto a qualunque asse baricentrico durante la rotazione, evitando fluttuazioni inerziali e irregolarità di moto tipiche delle sezioni prismatiche (es. quadrate o rettangolari).
- *Sicurezza antinfortunistica:* l'assenza di spigoli vivi in rotazione riduce drasticamente il rischio di aggancio o ferimento grave per contatto accidentale dell'operatore con l'organo in movimento.

Dal punto di vista costruttivo e morfologico, lungo lo sviluppo assiale la sezione dell'albero varia in modo articolato per consentire infilaggio, bloccaggio assiale (tramite spallamenti) e calettamento dei vari organi, nonostante i severi *effetti di intaglio* (concentrazione locale delle tensioni) introdotti da tali discontinuità geometriche. Si distinguono tre tipologie di tratti cilindrici o conici:
- *Fusto:* tratto intermedio che raccorda e distanzia le zone di calettamento, trasmettendo le azioni interne da una sezione all'altra;
- *Sedi:* tratti specificamente lavorati (spesso con cave per linguette o scanalature) destinati ad alloggiare gli organi che scambiano potenza (ruote dentate, pulegge, giunti);
- *Perni (di estremità o intermedi):* porzioni cilindriche corte, rettificate e con ristrette tolleranze dimensionali e geometriche, destinate ad alloggiare e sopportare i cuscinetti di supporto.

#align(center)[

#include "figs/alberi/alberi-fig01.typ"

]
#v(1em)

Per limitare pesi e ingombri, la linea di trasmissione opera ad elevata velocità angolare: essendo la potenza il prodotto tra coppia e velocità angolare, l'alta velocità abbatte la coppia torcente trasmessa, consentendo alberi più snelli e leggeri. Tale esigenza è stringente nei veicoli terrestri, navali e aeronautici, dove una linea pesante richiederebbe ulteriore potenza solo per essere trasportata. L'architettura di trasmissione può quindi prevedere una prima trasformazione cinematica già *a monte* dell'albero (dal motore verso la linea) per *innalzare la velocità angolare* e ridurre la coppia sull'albero lungo, e una seconda *a valle* (in prossimità dell'utenza finale, come il differenziale automobilistico o il riduttore finale) per *abbattere la velocità e moltiplicare la coppia* erogata alle ruote o all'elica: l'albero di trasmissione può così ruotare a una velocità angolare diversa sia da quella del motore sia da quella dell'utenza. Lungo la linea si inseriscono anche giunti e innesti a frizione con funzione di "elemento fusibile", che in caso di sovraccarico grave cedono preservando l'integrità del motore.

=== Il concetto di sistema meccanico e la linea di trasmissione
A differenza dell'elemento strutturale isolato (la semplice *trave* della meccanica strutturale), nella costruzione di macchine si analizza un *sistema meccanico*: un insieme di sottosistemi e componenti collegati e assemblabili costruttivamente per svolgere una precisa funzione, tipicamente la *trasmissione e il controllo del moto e della potenza* da una sorgente a un utilizzatore.

#align(center)[
  #include "figs/alberi/alberi-fig02.typ"
]

Lo schema funzionale di una linea di trasmissione tipo comprende:
- *Motore (M):* sorgente che genera la potenza meccanica $P$, erogandola all'albero di uscita con coppia motrice $C_m$ e velocità angolare $omega_m$ ($P = C_m omega_m$, oppure $P = F v$ se sorgente o utilizzatore operano con moto traslatorio anziché rotatorio, con $F$ forza sviluppata e $v$ velocità lineare).
- *Utilizzatore (U):* organo operatore (dotato di propria inerzia) che richiede coppia per funzionare, può subire urti o danni in esercizio ripercuotendoli a ritroso lungo la linea, e riceve la potenza del motore (a meno delle perdite per attrito) generalmente con coppia $C_u$ e velocità angolare $omega_u$ *diverse* da quelle motrici, restando invariato (nel caso ideale) il prodotto:
  $ P = C_m omega_m = C_u omega_u $
  L'elevata inerzia dell'utilizzatore (es. *elica navale*, con massa cospicua distribuita a grande distanza radiale dall'asse e conseguente elevato momento d'inerzia polare) giustifica l'erogazione di una coppia $C_u$ altissima a bassa velocità $omega_u$. In ambito navale ciò è realizzabile collegando l'albero motore a un secondo albero porta-elica tramite trasmissione multipla a cinghie e pulegge in parallelo: in tale schema occorre controllare rigorosamente la *freccia flessionale* dell'albero snello, poiché un'inflessione eccessiva comprometterebbe il lavoro delle cinghie portando le pulegge rotanti a strisciare o urtare contro la cassa statorica fissa.
- *Albero di trasmissione e Giunti (1):* l'albero rotante trasferisce la potenza da M a U attraversando la macchina, e deve risultare leggero (data l'estensione assiale), poco ingombrante e facilmente accessibile per la manutenzione. I *giunti* (1) lo collegano a motore e utilizzatore assolvendo quattro possibili funzioni progettuali:
  1. compensare eventuali *errori di allineamento* (assiali, radiali o angolari) tra gli assi collegati;
  2. fungere da *elemento sacrificabile ("fusibile" meccanico)* per guasto o sovraccarico improvviso, interrompendo la trasmissione a salvaguardia di motore o utilizzatore;
  3. contenere e smorzare le *vibrazioni* della linea (lato motore e utilizzatore);
  4. contribuire a *regolarizzare la velocità di rotazione*.
- *Supporti (2 e 3):* cuscinetti che collegano l'albero al telaio fisso (suolo/statore), consentendone la libera rotazione attorno al proprio asse ma posizionandolo nello spazio e agendo da vincoli strutturali su cui scaricare forze e reazioni vincolari.

La sintesi progettuale del sistema richiede di:
1. determinare la *configurazione di massima* e gli elementi costitutivi;
2. attribuire a ciascun componente la propria *funzione* specifica;
3. *dimensionare* ogni elemento a resistenza statica, durata a fatica e deformabilità;
4. prevenire *problemi di funzionamento* (interferenze, vibrazioni, usura, surriscaldamento);
5. curare la *compatibilità geometrica e funzionale* e garantire la *reale possibilità di assemblaggio e smontaggio* delle parti.

==== Modalità di trasmissione del moto e architettura costruttiva
Il trasferimento di potenza tra componenti avviene secondo due modalità cinematiche, con precisi compromessi progettuali tra rigidezza, precisione cinematica e costo:
- *Trasmissione del moto (rotatorio $arrow.r$ rotatorio):* dipende dalla disposizione degli assi e dalle esigenze di compattezza e variazione di velocità:
  - *Alberi coassiali (mediante giunti):* i *giunti articolati (es. cardanici)*, a differenza di quelli rigidi, trasmettono la coppia consentendo un *moto relativo controllato* (angolare o assiale) tra gli alberi.
  - *Alberi paralleli vicini o ad assi incidenti/sghembi (mediante ingranaggi):* le ruote dentate cilindriche o coniche (che permettono più cambi di direzione e velocità riducendo gli ingombri) realizzano un contatto diretto tra corpi rigidi; garantiscono un *interasse rigorosamente fisso e stabile* (specifica di progetto), rapporto di velocità costante ed esatto e vibrazioni contenute, ma comportano costi elevati per lavorazioni di precisione, lubrificazione, fatica superficiale e usura dei denti.
  - *Alberi paralleli distanti (trasmissioni flessibili a cinghie e pulegge o a catena):* l'elemento intermedio flessibile ed elastico (cinghia) abbatte i costi costruttivi e offre estrema versatilità geometrica, ma non garantisce il mantenimento rigoroso della posizione relativa (fasatura) tra gli alberi ed espone maggiormente a vibrazioni se gli alberi sono molto deformabili.
- *Trasformazione del moto (rotatorio $arrow.l.r$ lineare):* converte una rotazione in traslazione rettilinea o viceversa (es. sistemi pignone-cremagliera, viti a ricircolo di sfere accoppiate a guide lineari).

L'inserimento costruttivo dell'albero nella macchina (es. in un riduttore a ingranaggi) richiede di integrare e dimensionare organi accessori sulla parte rotante e su quella fissa:
- *Collegamenti mozzo-albero:* gli organi che scambiano coppia (ruote dentate, pulegge, volani, semi-giunti) sono resi solidali alla rotazione tramite *accoppiamento di forma* (*chiavette, linguette, profili scanalati*) o per attrito/interferenza, e posizionati assialmente con *spallamenti* sull'albero o *distanziali* interposti (il distanziale è superfluo se è già presente uno spallamento con la medesima funzione di battuta assiale).
- *Interfaccia con i supporti (cuscinetti volventi vs bronzine):* il vincolo rotazionale albero-telaio usa cuscinetti a strisciamento (*bronzine*) o *cuscinetti volventi* (composti da *anello interno* rotante solidale all'albero, *anello esterno* fisso nella cassa statorica e *corpi volventi* interposti), scelti in base a velocità di rotazione, entità dei carichi e durata richiesta.
- *Parte statorica (cassa e tenute):* l'involucro fisso è progettato in moduli connessi da *collegamenti smontabili filettati* (viti e bulloni) per consentire il montaggio degli alberi, includendo *coperchi* ed elementi di tenuta per delimitare la regione di lavoro (trattenere i lubrificanti ed evitare contaminazioni esterne).

==== Schematizzazione dei vincoli
Ai fini della statica elementare, gli alberi sono schematizzati come travi e i cuscinetti come vincoli ideali per gestire reazioni, dilatazione termica e grado di vincolo angolare:
- *Scorrimento assiale (Cerniera vs Carrello):* la distinzione non dipende necessariamente dal tipo di cuscinetto (che può essere il medesimo cuscinetto radiale a una corona di sfere in entrambi i supporti $A$ e $B$), ma da *come sono vincolati assialmente gli anelli interno ed esterno* nel montaggio:
  - *Cerniera (supporto $A$):* un cuscinetto è bloccato assialmente per fornire rigidezza e scaricare le spinte. L'anello interno è bloccato assialmente sul rotore da ambo i lati (es. tra distanziale ed elemento di chiusura o spallamento), e l'anello esterno è bloccato nella sede statorica (tra uno spallamento della cassa e un coperchio imbullonato). Avendo le piste dei cuscinetti radiali a sfere profilo toroidale (semicircolare), il contatto sfera-pista sviluppa una modesta reazione assiale in ambo i versi pur consentendo una lieve rotazione angolare relativa nel piano di flessione: impedisce traslazioni radiale e assiale lasciando libera la rotazione.
  - *Carrello (supporto $B$):* il cuscinetto opposto è libero di scorrere assialmente per assorbire la dilatazione termica. L'anello interno resta bloccato sull'albero (tra distanziale e spallamento del fusto), mentre l'*anello esterno è alloggiato nella sede cilindrica della cassa senza battute assiali laterali*. Con una *dilatazione termica* differenziale tra albero e cassa in esercizio, l'anello esterno trasla leggermente rilassando l'allungamento termico ed evitando severe forze di compressione assiale parassite che sovraccaricherebbero albero e cuscinetti se entrambi i supporti fossero bloccati.
- *Grado di vincolo angolare (flessionale):*
  - *Appoggio semplice (cerniera o carrello ideali):* un singolo cuscinetto che consente piccole rotazioni relative dell'asse nel piano di flessione impone abbassamento trasversale nullo ma rotazione angolare della linea elastica libera ($phi_A, phi_B != 0$).
  - *Incastro:* un supporto molto esteso assialmente (bronzina lunga) o una coppia di cuscinetti opportunamente distanziati che contrastano l'inclinazione dell'asse reagiscono anche con una coppia flettente, approssimando un *incastro* (rotazione impedita, $phi = 0$) che irrigidisce notevolmente la struttura e modifica i diagrammi del momento flettente.

#figure(include "figs/alberi/alberi-fig03.typ")

=== Dimensionamento preliminare e processo iterativo
Con riferimento allo schema statico con organo (es. ingranaggio) calettato all'estremità a sbalzo $C$, la forza trasversale $F$ scambiata tra i denti genera un diagramma del momento flettente $M_f$ lineare (triangolare) con massimo sul supporto intermedio $B$. Contemporaneamente, la coppia torcente $M_t$ introdotta in $C$ percorre l'albero fino all'estremità opposta $A$ collegata all'utenza (o al motore), generando un diagramma di momento torcente costante su tutta la lunghezza attiva tra ingresso e uscita di potenza.

Delineato lo schema delle forze, si calcolano i momenti flettenti nei due piani ortogonali ottenendo il momento flettente totale risultante $M_f = sqrt(M_x^2 + M_y^2)$. Per alberi in acciaio duttile, il predimensionamento adotta il criterio di Tresca (massima tensione tangenziale):
$ sigma_(i d) = sqrt(sigma^2 + 4 tau^2) = sqrt((M_f / W_f)^2 + 4 (M_t / W_t)^2) $

Per una sezione circolare piena di diametro $D$, il momento d'inerzia polare $I_p = (pi D^4) / 32$ è doppio rispetto a quello assiale $I = (pi D^4) / 64$; dividendo per il raggio esterno $R = D / 2$, il modulo di resistenza a torsione risulta doppio di quello a flessione ($W_t = (pi D^3) / 16 = 2 W_f$, con $W_f = (pi D^3) / 32$), semplificando la tensione ideale in:
$ sigma_(i d) = 1 / W_f sqrt(M_f^2 + M_t^2) $

Imponendo la condizione limite $sigma_(i d) <= sigma_"amm"$, si ricava il modulo di resistenza a flessione minimo necessario e il diametro minimo teorico:
$ W_f = 1 / sigma_"amm" sqrt(M_f^2 + M_t^2) = (pi D^3) / 32 quad arrow.r.double quad D_"min" = (32 / (pi sigma_"amm") sqrt(M_f^2 + M_t^2))^(1/3) $

Aspetti normativi e metodologici del progetto diretto:
- *Indipendenza delle sollecitazioni dalla geometria trasversale:* in uno schema isostatico (trascurando in prima approssimazione il peso proprio dell'albero rispetto alle forze esterne degli organi), i diagrammi di $M_f$ e $M_t$ dipendono solo dai carichi esterni e dalle distanze assiali tra supporti e organi, risultando *indipendenti dal diametro $D$* e tracciabili prima di definire la sezione.
- *Confronto Tresca vs Von Mises:* Von Mises presenta un coefficiente $3$ anziché $4$ sulla tensione tangenziale ($sigma_(i d, "VM") = sqrt(sigma^2 + 3 tau^2)$). Sebbene la scelta dipenda dalla normativa di riferimento, Tresca è preferito nel predimensionamento poiché fornisce una stima leggermente superiore (più cautelativa) della tensione ideale, garantendo una sezione preliminare più robusta.
- *Giustificazione del coefficiente di sicurezza $C S = 10$:* mentre una verifica puramente statica usa coefficienti modesti ($C S approx 1.5 - 2$ per la contenuta incertezza su carichi e materiale), il predimensionamento dell'albero usa una procedura formalmente statica con margine volutamente esasperato ($C S = 10$ o valore normativo analogo) per compensare preventivamente il severo abbattimento di resistenza dovuto a *fatica* e *intagli*. Partire da una sezione sovradimensionata rispetto alla statica fa convergere il progetto in sole $2 - 3$ iterazioni.
- *Tensione limite vs tensione ammissibile ($sigma_"amm"$):* la *tensione limite* è la proprietà intrinseca del materiale (es. $R_m$ o $R_(p 0.2)$), mentre la *tensione ammissibile* ($sigma_"amm" = sigma_"lim" / (C S)$, es. $R_m / (C S)$) include già il coefficiente di sicurezza. Se una norma o tabella fornisce direttamente $sigma_"amm"$, non si deve dividere ulteriormente per $C S$, ma solo imporre $sigma_(i d) <= sigma_"amm"$.
- *Applicazione per tratti ed effetto degli intagli:* la formula di $D_"min"$ si applica alla sezione più sollecitata di ciascun tratto a diametro costante. Poiché l'alloggiamento degli accessori impone variazioni di sezione (spallamenti a raggio stretto, cave per chiavette/linguette, filettature) che agiscono da intagli, i fattori di concentrazione delle tensioni ($K_t$, $K_f$) possono spostare la sezione critica: una sezione intagliata, pur soggetta a momenti nominali $M_f$ e $M_t$ *inferiori* rispetto al picco dei diagrammi, può sviluppare tensioni locali amplificate molto più gravose, governando il dimensionamento. La riverifica a fatica va quindi estesa sistematicamente a tutte le discontinuità geometriche.

==== Disegno della struttura e calcoli di verifica per il dimensionamento finale
Stimati i diametri preliminari $D_"min"$, si esegue il *disegno costruttivo dell'albero* definendo variazioni di sezione, *raggi di raccordo* e *finiture superficiali*, intrecciando il progetto con i componenti accessori:
- *Vincoli da catalogo cuscinetti:* condizionano il *diametro dei perni* (coincidente coi diametri interni normalizzati a catalogo, es. multipli di $5 "mm"$) e l'altezza e il *raggio di raccordo degli spallamenti* (il raggio sul fondo dello spallamento deve essere inferiore allo smusso dell'anello interno a catalogo per garantire il corretto appoggio assiale contro la parete verticale).
- *Compatibilità con gli organi di trasmissione:* le geometrie dei mozzi di ruote dentate, pulegge e volani sono definite in compatibilità con le sedi dell'albero.

Definita la geometria completa, il processo iterativo si chiude con i *calcoli di verifica finale* lungo quattro direttrici:
1. *Verifiche statiche:* controllo del non superamento dei limiti statici (rottura e, per materiali duttili, *snervamento*) nelle sezioni più sollecitate sotto i carichi massimi o di picco.
2. *Verifiche a rigidezza (deformabilità stazionaria):* controllo tramite l'equazione della linea elastica che frecce flessionali $delta$ e rotazioni angolari $phi$ rientrino nei limiti ammissibili per i cuscinetti, per il corretto ingranamento delle ruote dentate e per scongiurare il contatto fisico rotore-statore.
   - *Nota progettuale:* se un albero in acciaio non supera la verifica a rigidezza, *è inutile sostituire il materiale con un acciaio più pregiato o ad alta resistenza*. Tutti gli acciai appartengono alla stessa classe elastica con identico modulo di Young ($E approx 210 "GPa"$): dipendendo la rigidezza flessionale da $E I$, per ridurre frecce e rotazioni è indispensabile *modificare la geometria* (aumentare i diametri per incrementare $I = (pi D^4) / 64$, o ridurre la distanza tra i supporti).
3. *Verifiche a fatica:* valutazione della resistenza a durata (vita infinita o a termine) nelle sezioni critiche a flessione rotante e torsione.
   - *Nota progettuale:* risultano determinanti la *forma locale degli intagli* (raggi di raccordo agli spallamenti, cave per linguette, gole di scarico), la *finitura superficiale* (rugosità da lavorazione) e i *trattamenti superficiali* (pallinatura, nitrurazione, cementazione, tempra superficiale), che incidono talora *quasi più del materiale base selezionato*.
4. *Verifiche di risposta dinamica:* controllo dell'assenza di risonanze (velocità critiche) nel campo operativo e del margine rispetto alla soglia di instabilità dinamica, in cui sono cruciali lo *smorzamento interno del materiale* e la rigidezza/smorzamento dei *supporti*.

Solo il superamento congiunto di tutte le verifiche determina univocamente forma, dimensioni, materiale e trattamenti termici/superficiali dell'albero.