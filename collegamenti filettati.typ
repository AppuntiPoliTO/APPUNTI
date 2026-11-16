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

#set page(paper: "a4", margin: 2cm)
#set text(font: "New Computer Modern", size: 10.5pt, lang: "it")
#set heading(numbering: "1.")
#set par(justify: true)


= Verifica a fatica della vite (Normativa VDI 2230)

Per la verifica a fatica dei collegamenti filettati, la normativa tecnica (es. *VDI 2230*) utilizza un *Diagramma di Haigh* specifico per viti di classe da $8.8$ a $12.9$:

- *Ascissa:* tensione media adimensionalizzata rispetto allo snervamento, $sigma_m \/ R_(p 0.2)$ (estesa tipicamente da $0.1$ a $0.9$).
- *Ordinata:* ampiezza di tensione limite $sigma_D$ [MPa] (resistenza a fatica).
- *Scale differenziate (Rullatura):*
  - *Scala di sinistra (Viti non rullate):* valori di $sigma_D$ tra $40$ e $80 "MPa"$.
  - *Scala di destra (Viti rullate a freddo):* valori di $sigma_D$ tra $80$ e $160 "MPa"$. La rullatura a freddo (trattamento meccanico di deformazione plastica superficiale) *raddoppia* la resistenza a fatica.
- *Effetto scala (Rette di Goodman / Haigh):* le diverse curve rappresentano diverse dimensioni del fusto/filettatura. Le viti più piccole (M4 ÷ M8) presentano resistenze maggiori rispetto alle intermedie (M10 ÷ M16) e alle più grandi (M18 ÷ M30).
- *Nota sulla tensione equivalente:* nel diagramma si entra con la sola tensione assiale, ma l'effetto della componente di torsione dovuta al serraggio è già implicitamente tenuto in conto tramite il fattore $K$ della tensione equivalente.

== Criterio di sicurezza
Individuato il valore limite $sigma_D$ sulla curva corrispondente (in funzione del diametro della vite e di $sigma_m \/ R_(p 0.2)$), la vite è verificata se la tensione alternata d'esercizio $sigma_a$ rispetta un margine di sicurezza di almeno il $10\%$:
$ sigma_a <= 0.9 sigma_D $

= Calcolo di $sigma_a$ e $sigma_m$ dal Diagramma di Interferenza

Le tensioni nella vite si calcolano dividendo le rispettive forze (alternata e media) per la sezione resistente del nocciolo/filetto $A_n$:
$ sigma_a = F_(v,a) / A_n quad ; quad sigma_m = F_(v,m) / A_n $

A seconda di come varia nel tempo il carico esterno $C(t)$, sul diagramma di interferenza si distinguono *tre casi*:

== Caso a): Carico pulsante all'origine ($0 <= C(t) <= C_max$)
Il carico esterno oscilla tra $0$ e un massimo $C_max$.
- $F_(v,min) = F_(v,"lim")$ (forza di precarico / equilibrio iniziale)
- $F_(v,max) = F_(v,"lim") + Delta C_(max,v)$
- $F_(v,m) = F_(v,"lim") + (Delta C_(max,v)) / 2$
- $F_(v,a) = (Delta C_(max,v)) / 2$

== Caso b): Carico pulsante con minimo positivo ($C_min <= C(t) <= C_max$, con $C_min, C_max > 0$)
Il carico oscilla tra due valori positivi senza mai annullarsi; il valore minimo sulla vite non coincide più con $F_(v,"lim")$.
- $F_(v,min) = F_(v,"lim") + Delta C_(min,v)$
- $F_(v,max) = F_(v,"lim") + Delta C_(max,v)$
- $F_(v,m) = (F_(v,max) + F_(v,min)) / 2$
- $F_(v,a) = (F_(v,max) - F_(v,min)) / 2$

== Caso c): Carico con inversione di segno ($C_min <= 0 <= C_max$, con $C_max > 0$ e $C_min < 0$)
Il carico si inverte passando per lo zero (ad esempio un carico che in una fase comprime ulteriormente il giunto riducendo il tiro sulla vite).
- Le formule generali per $F_(v,max), F_(v,min), F_(v,m), F_(v,a)$ restano formalmente uguali al *Caso b)*.
- *Attenzione al segno:* poiché $C_min < 0$, la quota parte sulla vite risulta negativa:
  $ Delta C_(min,v) = C_min delta_p / (delta_v + delta_p) < 0 $
  Pertanto $F_(v,min) < F_(v,"lim")$ (sul grafico il punto di minimo della vite si trova *al di sotto* della linea di equilibrio $F_(v,"lim")$).

= Interventi per migliorare la resistenza a fatica

Per ridurre l'incidenza dei carichi affaticanti sulla vite si può intervenire su:
+ *Rullatura a freddo* dei filetti (non a caldo).
+ *Viti più deformabili (viti alleggerite):* riducendo il diametro del gambo liscio aumenta $delta_v$, quindi diminuisce la quota parte di carico $Delta C_v$ assorbita dalla vite. Nella zona alleggerita le tensioni aumentano per la sezione minore, ma lì *non ci sono gli intagli della filettatura*, quindi la resistenza a fatica è molto maggiore (la zona critica resta la filettatura, che viene così scaricata).
+ *Aumentare il numero di viti* per ridurre il carico $C$ agente sul singolo bullone.
+ *Cambiare classe del materiale* (soluzione tuttavia meno efficace a fatica rispetto al caso statico).
+ *Filettature speciali (ambito aeronautico):* viti *MJ – ISO 3161 (1977)*, caratterizzate da un raggio di raccordo a fondo filetto modificato per ridurre l'effetto di intaglio (sempre e solo rullate).

= Dispositivi antisvitamento e sistema Dado-Controdado

In condizioni statiche lo svitamento spontaneo è impedito se $alpha_m > phi.alt$ (come riportato nelle slide del corso). Tuttavia, in esercizio, *vibrazioni, scosse e sovraccarichi* possono provocare lo svitamento spontaneo.

== Dispositivi unificati
- *Elementi meccanici:* rosette elastiche (UNI 1751), rosette con nasello o linguetta (UNI 6599, 6600), piastrine (UNI 6601), dadi esagonali ad intagli (UNI 5593-5596), dadi autobloccanti (UNI EN 3377, 3723 in ambito aerospaziale).
- *Prodotti chimici:* adesivi _frenafiletti_.

== Sistema Dado - Controdado
- *Principio di funzionamento:* serrando il dado principale, i filetti vanno in contatto su un fianco. Serrando poi il *controdado* sopra di esso, il dado viene compresso verso il basso e *si inverte la superficie di contatto* tra i filetti della vite e quelli del dado. Il tratto di gambo compreso fra dado e controdado si comporta come una molla in tensione che aumenta l'attrito e blocca lo svitamento.
- *Proporzionamento (perché il controdado è più alto del dado):*
  - Il *dado* subisce uno scarico parziale e un'inversione di contatto, mitigando la forte concentrazione di carico che normalmente affligge i primi filetti: può quindi essere *più sottile*.
  - Il *controdado* lavora invece esattamente come un dado singolo contro il pezzo da serrare, sopportando la quasi totalità del carico con forti picchi sui primi filetti: deve pertanto avere *altezza maggiore* (configurazione corretta: dado basso sotto, controdado alto sopra).

= Casi Particolari: Carico applicato non sottotesta (Caso B)

Quando il carico esterno non è applicato direttamente al sottotesta e al dado (*Caso A*), ma agisce in sezioni interne alle parti serrate (*Caso B*), il comportamento elastico del giunto cambia.

== Modello a molle
Lo spessore totale delle parti $L_p$ viene suddiviso in tre zone: $L_a$ (esterna superiore), $L_b$ (compresa tra i punti di applicazione del carico), $L_c$ (esterna inferiore), con $L_p = L_a + L_b + L_c$. Definendo il rapporto adimensionale:
$ n = L_b / L_p < 1 quad => quad 1 - n = (L_a + L_c) / L_p $

Quando viene applicato il carico esterno, solo la zona centrale $L_b$ rimane effettivamente *compressa*, mentre le zone esterne $L_a$ e $L_c$ vengono *tirate* e lavorano in serie con la vite:
- *Deformabilità equivalente del pezzo (diminuisce):*
  $ delta_p^* equiv delta_p^b = L_b / (E_p dot A_p) = (n dot L_p) / (E_p dot A_p) < delta_p $
- *Deformabilità equivalente della vite (aumenta):*
  $ delta_v^* = L_v / (E_v dot A_v) + L_a / (E_p dot A_p) + L_c / (E_p dot A_p) = delta_v + (1 - n) delta_p > delta_v $

== Effetti sul Diagramma di Interferenza e conseguenze
Sul diagramma, rispetto al punto di equilibrio, le due caratteristiche *ruotano*: la retta della vite si appiattisce (è come se fosse più deformabile) e la retta del pezzo si irrigidisce (pendenza maggiore).
+ *Per la vite (effetto positivo):* la quota parte di carico $Delta C_v$ diminuisce. Quindi, per dimensionare la vite, è sempre cautelativo assumere il carico come applicato al sottotesta (Caso A).
+ *Per il collegamento (rischio critico):* la forza minima residua sul pezzo $F_(p,min)$ scende drasticamente, aumentando il rischio di *distacco delle parti* ($F_(p,min) = 0$). Se avviene il distacco, tutto il carico esterno grava sulla vite e si perde l'attrito/tenuta del giunto (condizione da evitare assolutamente).

= Casi Particolari: Elemento elastico tra i pezzi (Flange con guarnizione)

L'inserimento di una *guarnizione* (materiale soffice) tra due parti metalliche fa aumentare enormemente la deformabilità del pezzo $delta_p$.
- Sul diagramma di interferenza, la retta del pezzo diventa quasi orizzontale: di conseguenza quasi tutto il carico esterno grava sulla vite ($Delta C_v approx C$), rendendo il collegamento molto critico.

== Rimedio costruttivo (Flange bullonate con battuta metallo-metallo)
Nei recipienti in pressione o tubazioni flangiate, la guarnizione viene inserita in un'apposita sede lasciando inizialmente una piccola luce tra le due flange:
+ Nella fase iniziale del serraggio si comprime solo la guarnizione (che espande radialmente riempiendo la sede, senza però invadere la zona di battuta).
+ Proseguendo il serraggio, le due superfici metalliche delle flange arrivano a *contatto diretto*. Da quel momento la rigidezza aumenta bruscamente.

== Diagramma di interferenza composito (bilineare)
La caratteristica del pezzo diventa *poligonale* (composta da due segmenti):
- *Tratto inferiore (pendenza bassa):* deformabilità dominata dalla guarnizione.
- *Tratto superiore (pendenza ripida):* deformabilità dominata dal contatto metallo-metallo delle flange.
- *Vincolo di progetto:* il punto di lavoro con carico esterno applicato (forza residua $F_p$) deve rimanere sul tratto ripido (contatto metallico garantito), evitando di scendere nella zona della sola guarnizione dove si avrebbe apertura della flangia e perdita di fluido/gas.

= Viti con Carico Trasversale

*Regola fondamentale:* le viti *non devono lavorare a taglio*, poiché un eventuale scorrimento relativo dei pezzi introdurrebbe anche elevate sollecitazioni di *flessione*. Per impedire movimenti trasversali relativi si usano tre soluzioni:

== Viti passanti (collegamento ad attrito)
Il precarico deve garantire tra le superfici una forza d'attrito sufficiente a contrastare la forza trasversale totale $F_T$, evitando che i pezzi striscino andando a toccare il gambo della vite.
La forza minima di compressione sulle parti $F_(p,min)$ da imporre nel diagramma di interferenza è:
$ F_(p,min) = (F_T dot "CS") / (f dot n dot m) $
dove:
- $F_T$ = forza trasversale totale;
- $"CS"$ = coefficiente di sicurezza ($1.25 div 1.6$);
- $f$ = coefficiente d'attrito tra le superfici;
- $n$ = numero di bulloni;
- $m$ = numero di superfici di attrito tra i pezzi (es. $m = 1$ per due piastre sovrapposte).

== Viti con gambo calibrato (molto costose)
Il gambo è lavorato di precisione per accoppiarsi senza gioco nei fori, impedendo fisicamente lo scorrimento. Si calcolano *come i chiodi* (sul materiale della vite):
- *Verifica a taglio:*
  $ tau = F_T / (m dot n dot A) = (4 F_T) / (m dot n dot pi dot d^2) <= tau_"amm" quad "con" quad tau_"amm" = (0.4 div 0.6) R_(p 0.2) $
- *Verifica a pressione specifica (rifollamento/schiacciamento):*
  $ sigma = F_T / (n dot d dot s) <= sigma_"amm" quad "con" quad sigma_"amm" = (0.75 div 0.6) R_m quad "(come da slide)" $
  _(con $d$ diametro calibrato e $s$ spessore minore d'appoggio tra i pezzi)_.

== Inserzione di bussole
Si interpone una bussola cava che assorbe il taglio proteggendo la vite interna (la quale svolge solo funzione di serraggio assiale). Si calcola *come un chiodo cavo* (sul materiale della bussola):
- *Verifica a taglio:*
  $ tau = F_T / (m dot n dot A) <= tau_"amm" $
  _(Nota: nelle slide la formula espande l'area come $pi (d_e - d_i)^2 \/ 4$, ma geometricamente l'area resistente di una sezione circolare cava di diametro esterno $d_e$ e interno $d_i$ è $A = pi / 4 (d_e^2 - d_i^2)$)_.
- *Verifica a pressione specifica:*
  $ sigma = F_T / (d_e dot L_p dot n) <= sigma_"amm" $
  I limiti ammissibili $tau_"amm"$ e $sigma_"amm"$ seguono le stesse proporzioni indicate per le viti calibrate (riferiti al materiale della bussola).

#v(1em)

#block(
  fill: luma(242),
  stroke: (left: 3pt + rgb("#2b5c8f")),
  inset: 12pt,
  radius: 3pt,
  width: 100%,
)[
  #text(weight: "bold", size: 11pt, fill: rgb("#2b5c8f"))[Indicazioni per l'esame (dal docente)]
  #v(0.3em)
  - *Argomenti ad alta probabilità (domande aperte / esercizi):*
    - *Diagramma di Haigh (VDI 2230):* saperlo disegnare qualitativamente evidenziando l'effetto scala (posizione di viti piccole vs grandi), la doppia scala (rullate vs non rullate) e la condizione di verifica $sigma_a <= 0.9 sigma_D$.
    - *Cicli a fatica sul diagramma di interferenza:* saper ricavare $F_(v,max), F_(v,min), F_(v,m), F_(v,a)$ (e quindi $sigma_m, sigma_a$) in almeno uno dei tre casi ($a, b, c$).
    - *Soluzioni per migliorare la resistenza a fatica / statica* ragionando sui diagrammi di interferenza (es. viti alleggerite, numero di viti, rullatura).
    - *Carico applicato non sottotesta:* disegnare gli schemi A e B, spiegare qualitativamente l'analogia delle molle e disegnare/commentare la rotazione delle caratteristiche sul diagramma di interferenza (rischio distacco).
    - *Flange bullonate con guarnizione:* disegnare lo schema costruttivo con sede della guarnizione e contatto metallo-metallo, e rappresentare il diagramma di interferenza bilineare spiegando perché bisogna lavorare sul tratto superiore.
    - *Viti passanti a taglio:* ricordare la formula di $F_(p,min)$ perché serve a tracciare il limite inferiore nei diagrammi di interferenza.
  - *Argomenti di dettaglio (minore priorità mnemonica):*
    - Elenco dei dispositivi antisvitamento e dettaglio sull'altezza dado-controdado.
    - Formule mnemoniche di viti calibrate e bussole: è importante conoscere l'esistenza delle soluzioni e il ragionamento fisico (taglio sulla sezione resistente + schiacciamento sulla proiezione laterale $d dot s$), da cui si possono ricavare al momento le formule.
]