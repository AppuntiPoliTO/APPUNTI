#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw
#let canvas(..args) = align(center, cetz-canvas(..args))

#set page(paper: "a4", margin: 1.5cm, numbering: "1", number-align: bottom + right)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")

#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)

// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body
)
#let circ = sym.degree
#let varphi = $phi$
#let varepsilon = $epsilon$
#set heading(numbering: "1.")


= Caratteristiche di resistenza statica dei materiali

== Tensione e deformazione unitaria uniassiale

Se una trave è omogenea e risulta sottoposta a una sollecitazione semplice di trazione o compressione, tutte le fibre longitudinali subiscono un identico allungamento. Di conseguenza, le sezioni rette della trave si spostano mantenendosi tutte parallele a se stesse, determinando una distribuzione uniforme (ripartita) delle tensioni interne su tutta la generica sezione retta.

La tensione unitaria (uniassiale) $sigma_(x x)$ assume quindi il medesimo valore in tutti i punti della sezione. Indicando con $P$ il carico assiale applicato, con $N = P$ lo sforzo normale interno e con $A$ l'area della sezione retta, la tensione unitaria è definita dal rapporto:

$ sigma_(x x) = P / A $

#align(center)[
  #canvas(length: 1.2cm, {
    import draw: *
    // Cilindro sezionato (asse inclinato leggermente di pendenza 0.14)
    // Faccia anteriore (sezione A) centrata in (0, 0)
    circle((0, 0), radius: (0.55, 1.3), stroke: 1.2pt)
    // Profilo superiore e inferiore del tronco cilindrico fino a x = 2.0, y = 0.28
    line((0, 1.3), (2.0, 1.58), stroke: 1.2pt)
    line((0, -1.3), (2.0, -1.02), stroke: 1.2pt)
    // Faccia posteriore (arco visibile a destra)
    arc((2.0, 0.28), start: -90deg, stop: 90deg, radius: (0.55, 1.3), anchor: "origin", stroke: 1.2pt)

    // Asse x e forza P a destra
    line((2.55, 0.36), (5.2, 0.73), mark: (end: ">"), stroke: 0.9pt)
    line((2.55, 0.36), (4.0, 0.56), mark: (end: ">"), stroke: 1.4pt)
    content((3.5, 0.85), text(size: 7pt)[$P$], anchor: "south")
    content((5.1, 0.45), text(size: 7pt)[$x$], anchor: "north")

    // Vettori di distribuzione uniforme sigma_xx sulla sezione A
    line((0.1, 1.0), (-0.95, 0.85), mark: (end: ">"), stroke: 0.7pt)
    line((0.3, 0.85), (-0.75, 0.70), mark: (end: ">"), stroke: 0.7pt)
    line((-0.05, 0.6), (-1.1, 0.45), mark: (end: ">"), stroke: 0.7pt)
    line((0.2, 0.45), (-0.85, 0.30), mark: (end: ">"), stroke: 0.7pt)
    line((-0.1, 0.15), (-1.15, 0.0), mark: (end: ">"), stroke: 0.7pt)
    line((0.35, 0.0), (-0.7, -0.15), mark: (end: ">"), stroke: 0.7pt)
    line((0.0, -0.3), (-1.05, -0.45), mark: (end: ">"), stroke: 0.7pt)
    line((0.3, -0.5), (-0.75, -0.65), mark: (end: ">"), stroke: 0.7pt)
    line((-0.05, -0.75), (-1.1, -0.90), mark: (end: ">"), stroke: 0.7pt)
    line((0.25, -0.9), (-0.8, -1.05), mark: (end: ">"), stroke: 0.7pt)
    line((0.05, -1.1), (-1.0, -1.25), mark: (end: ">"), stroke: 0.7pt)

    content((-0.6, 1.35), text(size: 7pt)[$sigma_(x x)$], anchor: "south")
    content((0.22, 0.35), text(size: 7pt)[$A$], anchor: "center")

    // Risultante N = P a sinistra
    line((-1.4, -0.2), (-2.9, -0.41), mark: (end: ">"), stroke: 1.4pt)
    content((-2.2, 0.0), text(size: 7pt)[$N = P$], anchor: "south")
  })
]

Nella notazione a doppio indice di $sigma_(x x)$, il primo pedice indica la direzione della normale alla sezione rispetto alla quale la tensione è calcolata, mentre il secondo pedice individua la direzione della tensione stessa. Dal punto di vista dimensionale, esprimendo il carico in Newton ($"N"$) e l'area della sezione trasversale in millimetri quadrati ($"mm"^2$), l'unità di misura della tensione risulta essere:

$ "N" / "mm"^2 = "MPa" $

#nota[
  L'ipotesi di distribuzione uniforme delle tensioni interne cessa di essere valida localmente in corrispondenza:
  - dei "punti" di applicazione del carico;
  - di brusche variazioni della geometria della trave.
]


Sottoponendo una trave a uno stato di trazione, le sue dimensioni geometriche variano in funzione dell'intensità del carico applicato $P$. Se la trave possiede una lunghezza iniziale $l$, l'applicazione del carico ne determina un incremento longitudinale fino alla lunghezza finale $l + Delta l$.

#align(center)[
  #canvas(length: 1.3cm, {
    import draw: *
    // Trave nella configurazione iniziale di lunghezza l
    rect((0, 0.25), (4.8, -0.25), stroke: 1pt)
    // Tratto allungato Delta l (tratteggiato)
    line((4.8, 0.25), (5.8, 0.25), stroke: (dash: "dashed", thickness: 1pt))
    line((4.8, -0.25), (5.8, -0.25), stroke: (dash: "dashed", thickness: 1pt))
    line((5.8, 0.25), (5.8, -0.25), stroke: (dash: "dashed", thickness: 1pt))

    // Asse di simmetria punto-tratto
    line((-0.2, 0), (6.0, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))

    // Forze esterne di trazione P
    line((-0.1, 0), (-1.4, 0), mark: (end: ">"), stroke: 1.1pt)
    content((-1.2, 0.3), text(size: 7pt)[$P$], anchor: "south")
    line((6.0, 0), (7.3, 0), mark: (end: ">"), stroke: 1.1pt)
    content((6.1, 0.3), text(size: 7pt)[$P$], anchor: "south")

    // Linee di estensione verticali per le quote
    line((0, -0.25), (0, -2.3), stroke: 0.5pt)
    line((4.8, -0.25), (4.8, -1.4), stroke: 0.5pt)
    line((5.8, -0.25), (5.8, -2.3), stroke: 0.5pt)

    // Quota l
    line((0, -1.1), (4.8, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((2.4, -0.95), text(size: 7pt)[$l$], anchor: "south")

    // Quota Delta l
    line((4.8, -1.1), (5.8, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((5.3, -0.95), text(size: 7pt)[$Delta l$], anchor: "south")

    // Quota totale l + Delta l
    line((0, -2.0), (5.8, -2.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((2.9, -1.85), text(size: 7pt)[$l + Delta l$], anchor: "south")
  })
]

La variazione di lunghezza $Delta l$ prende il nome di *allungamento assoluto* della trave. Il rapporto tra l'allungamento assoluto $Delta l$ e la lunghezza iniziale $l$ della trave è definito *allungamento relativo* o *deformazione unitaria* (uniassiale):

$ varepsilon_(x x) = (Delta l) / l $

== Prova di trazione statica

Tra le prove sperimentali impiegate per la caratterizzazione statica dei materiali, le più importanti e frequenti sono le prove di trazione e di compressione, le quali vengono eseguite mediante apposite macchine di prova di tipo idraulico oppure elettromeccanico.

In generale, le prove meccaniche consentono di classificare i lotti di materiale attenendosi alle prescrizioni delle normative tecniche nazionali e internazionali, come ad esempio la norma *UNI EN ISO 6895-3:2015* (_Materiali metallici - Prova di trazione - Metodo di prova a bassa temperatura_). Per finalità di ricerca e sviluppo o per la qualificazione di nuovi materiali, è inoltre possibile condurre prove sperimentali modificando le condizioni operative rispetto agli standard normativi, ad esempio variando la temperatura di esercizio e/o la storia di applicazione dei carichi.

=== Schema della macchina di prova e geometria dei provini

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [



La macchina è costituita dall'accoppiamento di una *struttura fissa* (8) e di una *struttura mobile* (4). Entrambe supportano le ganasce dedicate al bloccaggio del *provino* (5), la cui posizione iniziale può essere regolata tramite una *vite di manovra* (6).

*Principio di funzionamento (prova di trazione)*
+ Una *pompa* (2) invia olio in pressione all'interno di un *cilindro idraulico* (1), la cui pressione è costantemente monitorata da un *manometro* (7).
+ La pressione provoca la corsa verticale del *pistone* (3).
+ Poiché il pistone è solidale alla traversa della *struttura mobile* (4), il suo movimento trasferisce direttamente il carico assiale alla ganascia superiore, inducendo lo sforzo di trazione sul *provino* (5).],[#image("gransuconeidraulico.png", width:80%)])






La geometria dei provini varia in funzione della tipologia di sollecitazione applicata:
- per le prove di trazione si impiegano generalmente provini a *sezione circolare* caratterizzati da un rapporto tra la lunghezza utile iniziale $L_0$ e il diametro $d$ pari a circa $L_0 / d approx 15$;
- in alternativa, per le prove di trazione su laminati si utilizzano provini piatti a *sezione rettangolare* (di spessore $a$ e larghezza $b$, con sezione trasversale iniziale $S_0 = a b$);
- per le prove 

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    // 1. Provino a sezione circolare (in alto, y = 4.2)
    // Teste di serraggio
    rect((0, 3.85), (1.1, 4.55), stroke: 1pt)
    rect((6.1, 3.85), (7.2, 4.55), stroke: 1pt)
    // Tratto calibrato centrale
    line((1.6, 4.42), (5.6, 4.42), stroke: 1pt)
    line((1.6, 3.98), (5.6, 3.98), stroke: 1pt)
    // Raccordi tra teste e tratto utile
    bezier((1.1, 4.55), (1.6, 4.42), (1.3, 4.42), (1.45, 4.42), stroke: 1pt)
    bezier((1.1, 3.85), (1.6, 3.98), (1.3, 3.98), (1.45, 3.98), stroke: 1pt)
    bezier((5.6, 4.42), (6.1, 4.55), (5.75, 4.42), (5.9, 4.42), stroke: 1pt)
    bezier((5.6, 3.98), (6.1, 3.85), (5.75, 3.98), (5.9, 3.98), stroke: 1pt)
    // Asse
    line((-0.2, 4.2), (7.4, 4.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))
    // Sezione ribaltata circolare S_0
    circle((3.1, 4.2), radius: 0.22, fill: luma(220), stroke: 0.9pt)
    line((3.25, 4.35), (3.65, 4.7), mark: (start: ">"), stroke: 0.6pt)
    content((3.7, 4.7), text(size: 7pt)[$S_0$], anchor: "west")
    // Tacche di riferimento per L_0
    line((2.1, 4.05), (2.1, 4.35), stroke: 0.9pt)
    line((5.1, 4.05), (5.1, 4.35), stroke: 0.9pt)
    line((2.1, 4.05), (2.1, 2.2), stroke: 0.5pt)
    line((5.1, 4.05), (5.1, 2.2), stroke: 0.5pt)
    line((2.1, 3.55), (5.1, 3.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((3.6, 3.6), text(size: 7pt)[$L_0$], anchor: "south")
    // Quota diametro d
    line((5.6, 4.42), (7.85, 4.42), stroke: 0.5pt)
    line((5.6, 3.98), (7.85, 3.98), stroke: 0.5pt)
    line((7.7, 3.98), (7.7, 4.42), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((7.6, 4.2), text(size: 7pt)[$d$], anchor: "east")

    // 2. Provino a sezione rettangolare (al centro, y = 2.2)
    rect((0, 1.85), (1.1, 2.55), stroke: 1pt)
    rect((6.1, 1.85), (7.2, 2.55), stroke: 1pt)
    line((1.6, 2.42), (5.6, 2.42), stroke: 1pt)
    line((1.6, 1.98), (5.6, 1.98), stroke: 1pt)
    bezier((1.1, 2.55), (1.6, 2.42), (1.3, 2.42), (1.45, 2.42), stroke: 1pt)
    bezier((1.1, 1.85), (1.6, 1.98), (1.3, 1.98), (1.45, 1.98), stroke: 1pt)
    bezier((5.6, 2.42), (6.1, 2.55), (5.75, 2.42), (5.9, 2.42), stroke: 1pt)
    bezier((5.6, 1.98), (6.1, 1.85), (5.75, 1.98), (5.9, 1.98), stroke: 1pt)
    line((-0.2, 2.2), (7.4, 2.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))
    // Sezione ribaltata rettangolare S_0 di spessore a
    rect((3.0, 1.98), (3.2, 2.42), fill: luma(220), stroke: 0.9pt)
    line((3.0, 2.42), (3.0, 2.75), stroke: 0.5pt)
    line((3.2, 2.42), (3.2, 2.75), stroke: 0.5pt)
    line((2.7, 2.68), (3.0, 2.68), mark: (end: ">"), stroke: 0.6pt)
    line((3.5, 2.68), (3.2, 2.68), mark: (end: ">"), stroke: 0.6pt)
    content((3.1, 2.72), text(size: 7pt)[$a$], anchor: "south")
    line((3.2, 2.3), (3.6, 2.65), mark: (start: ">"), stroke: 0.6pt)
    content((3.65, 2.65), text(size: 7pt)[$S_0$], anchor: "west")
    // Tacche
    line((2.1, 2.05), (2.1, 2.35), stroke: 0.9pt)
    line((5.1, 2.05), (5.1, 2.35), stroke: 0.9pt)
    // Quota larghezza b
    line((5.6, 2.42), (7.85, 2.42), stroke: 0.5pt)
    line((5.6, 1.98), (7.85, 1.98), stroke: 0.5pt)
    line((7.7, 1.98), (7.7, 2.42), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((7.6, 2.2), text(size: 7pt)[$b$], anchor: "east")
    // Etichetta teste di serraggio
    content((7.1, 3.2), text(size: 7pt)[teste di serraggio], anchor: "center")
    line((6.6, 3.4), (6.4, 3.85), mark: (end: ">"), stroke: 0.6pt)
    line((6.6, 3.0), (6.4, 2.55), mark: (end: ">"), stroke: 0.6pt)

    // Quote L_c e L_t
    line((1.6, 4.42), (1.6, 1.3), stroke: 0.5pt)
    line((5.6, 4.42), (5.6, 1.3), stroke: 0.5pt)
    line((1.6, 1.45), (5.6, 1.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((3.6, 1.5), text(size: 7pt)[$L_c$], anchor: "south")
    line((0, 1.85), (0, 0.9), stroke: 0.5pt)
    line((7.2, 1.85), (7.2, 0.9), stroke: 0.5pt)
    line((0, 1.05), (7.2, 1.05), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((3.6, 1.1), text(size: 7pt)[$L_t$], anchor: "south")

    // 3. Provino allungato con strizione (in basso, y = 0.0)
    rect((0, -0.35), (1.1, 0.35), stroke: 1pt)
    rect((6.7, -0.35), (7.8, 0.35), stroke: 1pt)
    line((1.6, 0.2), (3.4, 0.2), stroke: 1pt)
    line((1.6, -0.2), (3.4, -0.2), stroke: 1pt)
    line((4.4, 0.2), (6.2, 0.2), stroke: 1pt)
    line((4.4, -0.2), (6.2, -0.2), stroke: 1pt)
    // Raccordi teste
    bezier((1.1, 0.35), (1.6, 0.2), (1.3, 0.2), (1.45, 0.2), stroke: 1pt)
    bezier((1.1, -0.35), (1.6, -0.2), (1.3, -0.2), (1.45, -0.2), stroke: 1pt)
    bezier((6.2, 0.2), (6.7, 0.35), (6.35, 0.2), (6.5, 0.2), stroke: 1pt)
    bezier((6.2, -0.2), (6.7, -0.35), (6.35, -0.2), (6.5, -0.2), stroke: 1pt)
    // Zona di strizione centrale attorno a x = 3.9
    bezier((3.4, 0.2), (3.9, 0.1), (3.6, 0.2), (3.7, 0.1), stroke: 1pt)
    bezier((3.9, 0.1), (4.4, 0.2), (4.1, 0.1), (4.2, 0.2), stroke: 1pt)
    bezier((3.4, -0.2), (3.9, -0.1), (3.6, -0.2), (3.7, -0.1), stroke: 1pt)
    bezier((3.9, -0.1), (4.4, -0.2), (4.1, -0.1), (4.2, -0.2), stroke: 1pt)
    line((3.9, -0.25), (3.9, 0.25), stroke: 0.8pt)
    line((-0.2, 0), (8.0, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
    // Sezione ristretta S_u
    circle((2.8, 0), radius: 0.1, fill: luma(220), stroke: 0.8pt)
    line((2.87, 0.07), (3.25, 0.42), mark: (start: ">"), stroke: 0.6pt)
    content((3.3, 0.42), text(size: 7pt)[$S_u$], anchor: "west")
    // Quota L_u
    line((2.0, -0.15), (2.0, 0.15), stroke: 0.9pt)
    line((5.8, -0.15), (5.8, 0.15), stroke: 0.9pt)
    line((2.0, -0.15), (2.0, -0.7), stroke: 0.5pt)
    line((5.8, -0.15), (5.8, -0.7), stroke: 0.5pt)
    line((2.0, -0.55), (5.8, -0.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
    content((3.9, -0.5), text(size: 7pt)[$L_u$], anchor: "south")
  })
]



Nella figura precedente sono evidenziate la sezione iniziale $S_0$, la lunghezza utile iniziale tra i riferimenti $L_0$, la lunghezza del tratto calibrato $L_c$, la lunghezza totale del provino $L_t$ e, a rottura o strizione avvenuta, la sezione minima ristretta $S_u$ e la lunghezza utile finale $L_u$.

=== Modalità di esecuzione della prova

La prova di trazione viene preferibilmente condotta in *controllo di deformazione*. Poiché si tratta di una prova di caratterizzazione statica, la velocità di prova viene impostata in modo da sollecitare il provino lentamente e progressivamente, evitando effetti dinamici o inerziali.

Il valore della velocità di prova è prescritto dalle normative di riferimento e dipende dalle proprietà elastiche del provino in esame: per i materiali metallici si imposta tipicamente una velocità di deformazione compresa nell'intervallo tra $2,5 dot 10^(-4) "s"^(-1)$ e $2,5 dot 10^(-3) "s"^(-1)$. Dalle acquisizioni sperimentali si costruisce quindi il *diagramma tensione-deformazione* ($sigma$-$varepsilon$), stabilendo il legame costitutivo tra la forza agente sul provino e il corrispondente allungamento.

== Il diagramma tensione-deformazione ($sigma$-$varepsilon$)

Il diagramma $sigma$-$varepsilon$ ricavato da una prova di trazione viene convenzionalmente suddiviso in quattro zone caratteristiche: `O-A`, `A-B`, `B-C` e `C-D`.

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    // Assi cartesiani
    line((-0.3, 0), (6.2, 0), mark: (end: ">"), stroke: 0.9pt)
    line((0, -0.3), (0, 4.5), mark: (end: ">"), stroke: 0.9pt)
    content((-0.2, -0.25), text(size: 7pt)[$"O"$], anchor: "center")
    content((6.1, -0.3), text(size: 7pt)[$varepsilon$], anchor: "north")
    content((-0.3, 4.4), text(size: 7pt)[$sigma$], anchor: "east")

    // Curva tensione-deformazione
    // Tratto elastico lineare O-A
    line((0, 0), (0.55, 2.0), stroke: 1.2pt)
    // Zona di snervamento A-B (oscillazione/pianerottolo)
    bezier((0.55, 2.0), (0.95, 1.95), (0.68, 2.2), (0.82, 1.85), stroke: 1.2pt)
    // Zona di incrudimento B-C fino al massimo C(3.4, 3.5)
    bezier((0.95, 1.95), (3.4, 3.5), (1.5, 2.95), (2.5, 3.5), stroke: 1.2pt)
    // Zona di snervamento locale C-D fino a rottura D(4.8, 3.0)
    bezier((3.4, 3.5), (4.8, 3.0), (3.9, 3.5), (4.4, 3.25), stroke: 1.2pt)

    // Proiezioni dal punto di massimo C
    line((0, 3.5), (3.4, 3.5), stroke: 0.5pt)
    line((3.4, 0), (3.4, 3.5), stroke: 0.5pt)

    // Punti notevoli
    content((0.42, 2.05), text(size: 7pt)[$"A"$], anchor: "east")
    content((1.05, 1.8), text(size: 7pt)[$"B"$], anchor: "west")
    content((3.4, 3.62), text(size: 7pt)[$"C"$], anchor: "south")
    content((4.95, 3.05), text(size: 7pt)[$"D"$], anchor: "west")

    // Etichette descrittive e linee di richiamo
    line((0.28, 1.0), (-0.8, 1.05), stroke: 0.5pt)
    content((-0.9, 1.05), text(size: 7pt)[zona di elasticità], anchor: "east")

    line((0.75, 2.15), (-0.6, 2.65), stroke: 0.5pt)
    content((-0.7, 2.65), text(size: 7pt)[zona di snervamento], anchor: "east")

    line((1.8, 2.85), (1.3, 3.65), stroke: 0.5pt)
    content((1.3, 3.75), text(size: 7pt)[zona di incrudimento], anchor: "south")

    line((3.4, 3.9), (3.4, 4.3), stroke: 0.5pt)
    content((3.4, 4.35), text(size: 7pt)[strizione provino], anchor: "south")

    line((4.15, 3.4), (4.9, 3.95), stroke: 0.5pt)
    content((5.0, 3.95), text(size: 7pt)[zona di snervamento locale], anchor: "west")

    content((5.1, 2.3), text(size: 7pt)[cedimento finale del provino], anchor: "west")
  })
]



L'analisi dettagliata dei quattro tratti evidenzia i seguenti comportamenti fisici:
+ *Tratto `O-A` (zona di elasticità)*: il materiale segue una legge costitutiva lineare ed esiste una diretta proporzionalità tra la tensione applicata e la deformazione prodotta.
+ *Tratto `A-B` (zona di snervamento)*: si manifesta una sensibile variazione di lunghezza del provino senza che vi sia una crescita apprezzabile del carico applicato. L'esistenza di una zona di snervamento ben distinta non costituisce una proprietà comune a tutti i materiali.
+ *Tratto `B-C` (zona di incrudimento)*: l'ulteriore allungamento del provino richiede un nuovo aumento del carico applicato fino al raggiungimento di un valore massimo in corrispondenza del punto $"C"$; tale incremento di tensione in funzione della deformazione risulta tuttavia molto più lento rispetto a quello osservato nella zona elastica.
+ *Tratto `C-D` (zona di snervamento locale)*: superato il punto di massimo carico $"C"$, in una specifica regione del provino la sezione trasversale comincia a restringersi sensibilmente dando luogo al fenomeno della *strizione*, il quale localizza la zona in cui si verificherà la rottura finale. In questa fase l'allungamento prosegue con una diminuzione del carico esterno fino al punto $"D"$, che corrisponde al *cedimento finale* del provino.

#nota[
  Nel tratto `C-D` il diagramma mostra una diminuzione apparente della tensione nonostante la tensione effettiva media nella sezione ristretta continui ad aumentare: ciò è dovuto al fatto che il diagramma fa riferimento ai *valori ingegneristici* (o nominali) della tensione $sigma = F / S_0$ e della deformazione $varepsilon = (Delta L) / L_0$, calcolati rapportando forza e allungamento all'area $S_0$ e alla lunghezza utile $L_0$ iniziali del provino.
]

=== Comportamento allo scarico e deformazione residua

Analizzando il comportamento del materiale qualora si interrompa la prova e si scarichi il provino a partire da diversi punti del diagramma $sigma$-$varepsilon$, si distinguono due regimi fondamentali:

- Se lo scarico avviene all'interno del tratto elastico `O-A`, il punto rappresentativo ripercorre esattamente la retta `O-A` in senso inverso fino all'origine $"O"$, annullando completamente la deformazione all'azzerarsi del carico.
- Se invece il provino viene caricato oltre il limite di snervamento fino a un generico punto $"K"$ appartenente alla zona di incrudimento e successivamente scaricato, il percorso di scarico segue una legge rettilinea `K-L` parallela al tratto elastico iniziale `O-A`.



#canvas(length: 1cm, {
  import draw: *

  // Assi cartesiani
  line((-0.35, 0), (6.2, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, -0.95), (0, 4.4), mark: (end: ">"), stroke: 0.9pt)

  // Curva principale O-A-B-K-C-D
  line((0, 0), (0.55, 2.0), stroke: 1.2pt)
  bezier((0.55, 2.0), (0.95, 1.95), (0.68, 2.2), (0.82, 1.85), stroke: 1.2pt)
  bezier((0.95, 1.95), (1.9, 2.95), (1.25, 2.4), (1.6, 2.75), stroke: 1.2pt)
  bezier((1.9, 2.95), (3.4, 3.5), (2.3, 3.25), (2.85, 3.5), stroke: 1.2pt)
  bezier((3.4, 3.5), (4.8, 3.0), (3.9, 3.5), (4.4, 3.25), stroke: 1.2pt)

  // Retta di scarico elastico K-L (tratteggiata)
  line((1.9, 2.95), (1.09, 0), stroke: (dash: "dashed", thickness: 0.8pt))

  // Proiezione verticale K-M
  line((1.9, 2.95), (1.9, 0), stroke: 0.6pt)

  // Frecce lungo O-A (carico/scarico elastico reversibile)
  line((0.28, 0.7), (0.42, 1.21), mark: (end: ">"), stroke: 0.6pt)
  line((0.25, 1.4), (0.11, 0.89), mark: (end: ">"), stroke: 0.6pt)

  // Frecce di carico plastico lungo B-K e K-C
  line((1.25, 2.2), (1.55, 2.5), mark: (end: ">"), stroke: 0.6pt)
  line((2.15, 2.98), (2.55, 3.16), mark: (end: ">"), stroke: 0.6pt)

  // Frecce lungo K-L (scarico e successivo ricarico elastico)
  line((1.55, 1.95), (1.41, 1.44), mark: (end: ">"), stroke: 0.6pt)
  line((1.48, 0.95), (1.62, 1.46), mark: (end: ">"), stroke: 0.6pt)

  // Linee di riferimento verticali per le quote sotto l'asse
  line((1.09, 0), (1.09, -0.85), stroke: 0.5pt)
  line((1.9, 0), (1.9, -0.85), stroke: 0.5pt)

  // Quote delle deformazioni plastica (varepsilon_pl) ed elastica (varepsilon_el)
  line((0, -0.65), (1.09, -0.65), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((1.09, -0.65), (1.9, -0.65), mark: (start: ">", end: ">"), stroke: 0.6pt)

  // Etichette degli assi e dell'origine
  content((-0.22, -0.22), [O], anchor: "center")
  content((6.15, -0.25), [$varepsilon$], anchor: "north")
  content((-0.25, 4.3), [$sigma$], anchor: "east")

  // Etichette dei punti notevoli
  content((0.42, 2.05), [A], anchor: "east")
  content((1.0, 1.82), [B], anchor: "west")
  content((1.85, 3.12), [K], anchor: "south")
  content((3.4, 3.65), [C], anchor: "south")
  content((4.92, 3.0), [D], anchor: "west")
  content((0.98, 0.15), [L], anchor: "south")
  content((2.08, 0.15), [M], anchor: "south")

  // Etichette delle deformazioni
  content((0.545, -0.55), [$varepsilon_"pl"$], anchor: "south")
  content((1.495, -0.55), [$varepsilon_"el"$], anchor: "south")
})

Al termine dello scarico nel punto $"L"$ (a tensione nulla), la deformazione totale raggiunta nel punto $"M"$ sotto carico risulta scomposta nella somma di due contributi:
- l'aliquota *elastica* $varepsilon_"el"$ (segmento `L-M`), che viene integralmente recuperata durante la fase di scarico;
- l'aliquota *plastica* permanente $varepsilon_"pl"$ (segmento `O-L`), che rimane come deformazione residua irreversibile nel provino scarico. Qualora il provino venga nuovamente ricaricato a partire da $"L"$, esso risponderà elasticamente lungo la medesima retta `L-K` fino a raggiungere nuovamente la tensione corrispondente al punto $"K"$.


= Diagramma tensione-deformazione e limiti caratteristici

== Comportamento allo scarico e deformazione residua

Se durante l'esecuzione della prova di trazione si scarica il provino prima di raggiungere la rottura, ad esempio in corrispondenza di un generico punto $K$ appartenente al campo elasto-plastico, il legame tra forza e allungamento durante la fase di scarico è rappresentato da un tratto rettilineo $K$-$L$, parallelo al tratto elastico lineare iniziale $O$-$A$.

Al termine dello scarico (carico nullo), l'ascissa totale raggiunta dal punto $K$ (indicata con $M$ sull'asse delle deformazioni) si scompone in due contributi distinti:
- Il segmento $O L$ rappresenta la *deformazione plastica residua* $epsilon_"pl"$, a cui corrisponde un allungamento permanente che rimane nel provino anche dopo la rimozione completa del carico.
- Il segmento $L M$, che corrisponde all'accorciamento recuperato dal provino durante la fase di scarico, è pari alla *deformazione elastica* $epsilon_"el"$.

#nota[
Se il provino viene caricato esclusivamente entro i limiti del tratto elastico iniziale $O$-$A$ e successivamente scaricato, non si manifestano scorrimenti permanenti: risulta quindi $epsilon_"pl" = 0$ e l'allungamento è puramente elastico e interamente reversibile.
]

== Limite di elasticità, limite di proporzionalità e tipologie di snervamento

Mentre in alcuni materiali metallici il tratto $A$-$B$ individua una *zona di snervamento evidente* ben distinguibile, in molti altri materiali la transizione dal comportamento elastico a quello plastico avviene in modo graduale. In tali casi non è possibile individuare lo snervamento in modo netto e si ricorre pertanto alle definizioni convenzionali stabilite dalla normativa:
- Il *limite di elasticità* è definito come la tensione massima fino alla quale il materiale non manifesta deformazioni residue allo scarico.
- La tensione oltre la quale il materiale cessa di seguire la legge di proporzionalità lineare tra tensione e deformazione è detta *limite di proporzionalità* $R_"p"$.

A seconda di come si manifesta lo scostamento dalla proporzionalità lineare durante la prova, la normativa distingue due categorie fondamentali di comportamento allo snervamento:
1. *Materiali con snervamento evidente ($R_e$)*: la curva presenta un brusco cedimento plastico accompagnato da oscillazioni o da un plateau orizzontale. Si definiscono il *carico unitario di snervamento superiore* $R_"eH"$ (corrispondente al primo picco massimo raggiunto prima della caduta di tensione) e il *carico unitario di snervamento inferiore* $R_"eL"$ (corrispondente al valore minimo o di plateau successivo, trascurando eventuali effetti transitori iniziali indicati dal punto $a$).
2. *Materiali senza snervamento evidente ($R_"p"$)*: la curva devia progressivamente dalla retta elastica iniziale. Si definisce convenzionalmente il *carico unitario di scostamento dalla proporzionalità* $R_"p"$, individuato tracciando una retta parallela al tratto lineare iniziale a partire da una deformazione plastica residua assegnata $epsilon_"pl" = e_"p"$ (tipicamente pari allo $0,2%$, da cui la notazione $R_("p0,2")$).

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: Snervamento evidente con oscillazioni (ReH, ReL) ---
  line((0, 0), (3.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((3.6, -0.25), text(size: 7pt)[$e$], anchor: "north")
  content((-0.2, 4.2), text(size: 7pt)[$R$], anchor: "east")
  content((0, -0.25), text(size: 7pt)[$0$], anchor: "north")

  // Tratto elastico + picco ReH + oscillazioni ReL + incrudimento
  line((0, 0), (0.6, 2.7), stroke: 1pt)
  bezier((0.6, 2.7), (1.0, 2.55), (0.72, 3.35), (0.88, 3.35), stroke: 1pt)
  bezier((1.0, 2.55), (1.25, 2.65), (1.08, 2.3), (1.17, 2.3), stroke: 1pt)
  bezier((1.25, 2.65), (1.45, 2.65), (1.3, 2.75), (1.4, 2.55), stroke: 1pt)
  bezier((1.45, 2.65), (1.65, 2.65), (1.5, 2.75), (1.6, 2.55), stroke: 1pt)
  bezier((1.65, 2.65), (1.85, 2.65), (1.7, 2.75), (1.8, 2.55), stroke: 1pt)
  line((1.85, 2.65), (2.7, 3.6), stroke: 1pt)

  // Linee di riferimento e quote ReH, ReL
  line((-0.9, 3.12), (0.8, 3.12), stroke: 0.5pt)
  line((-0.45, 2.6), (2.0, 2.6), stroke: 0.5pt)
  line((-0.8, 0), (-0.8, 3.12), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-0.35, 0), (-0.35, 2.6), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.88, 1.56), text(size: 7pt)[$R_"eH"$], anchor: "east")
  content((-0.42, 1.3), text(size: 7pt)[$R_"eL"$], anchor: "east")

  // Indicazione avvallamento iniziale transitorio (a)
  line((1.55, 1.6), (1.13, 2.38), mark: (end: ">"), stroke: 0.6pt)
  content((1.6, 1.55), text(size: 7pt)[$a$], anchor: "north-west")
  content((1.5, 4.4), text(size: 7pt)[*Snervamento evidente ($R_e$)*], anchor: "south")

  // --- PANNELLO 2: Snervamento evidente a plateau netto (ReL) ---
  line((4.6, 0), (8.0, 0), mark: (end: ">"), stroke: 0.8pt)
  line((4.6, 0), (4.6, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((8.0, -0.25), text(size: 7pt)[$e$], anchor: "north")
  content((4.4, 4.2), text(size: 7pt)[$R$], anchor: "east")
  content((4.6, -0.25), text(size: 7pt)[$0$], anchor: "north")

  line((4.6, 0), (5.1, 2.5), stroke: 1pt)
  line((5.1, 2.5), (5.8, 2.5), stroke: 1pt)
  bezier((5.8, 2.5), (7.6, 3.7), (6.3, 3.2), (7.0, 3.6), stroke: 1pt)

  line((4.05, 2.5), (5.1, 2.5), stroke: 0.5pt)
  line((4.15, 0), (4.15, 2.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.08, 1.25), text(size: 7pt)[$R_"eL"$], anchor: "east")
  content((6.2, 4.4), text(size: 7pt)[*Plateau di snervamento*], anchor: "south")

  // --- PANNELLO 3: Limite di proporzionalità convenzionale (Rp) ---
  line((9.4, 0), (13.0, 0), mark: (end: ">"), stroke: 0.8pt)
  line((9.4, 0), (9.4, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((13.0, -0.25), text(size: 7pt)[$epsilon$ ($e$)], anchor: "north")
  content((9.2, 4.2), text(size: 7pt)[$sigma$ ($R$)], anchor: "east")
  content((9.4, -0.25), text(size: 7pt)[$0$], anchor: "north")

  // Retta modulo elastico e curva elasto-plastica continua
  line((9.4, 0), (10.15, 3.9), stroke: 0.7pt)
  line((9.4, 0), (9.8, 2.08), stroke: 1pt)
  bezier((9.8, 2.08), (11.2, 3.65), (10.0, 2.85), (10.6, 3.35), stroke: 1pt)

  // Retta parallela di scarico per deformazione residua ep
  line((10.15, 0), (10.85, 3.64), stroke: (dash: "dashed", thickness: 0.7pt))

  // Orizzontale Rp e quote
  line((8.75, 3.38), (10.8, 3.38), stroke: 0.5pt)
  line((8.85, 0), (8.85, 3.38), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.78, 1.69), text(size: 7pt)[$R_"p"$], anchor: "east")

  line((9.4, -0.55), (9.4, 0), stroke: 0.5pt)
  line((10.15, -0.55), (10.15, 0), stroke: 0.5pt)
  line((9.4, -0.45), (10.15, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((9.77, -0.6), text(size: 7pt)[$epsilon_"pl"$ ($e_"p"$)], anchor: "north")
  content((11.2, 4.4), text(size: 7pt)[*Snervamento convenzionale ($R_"p"$)*], anchor: "south")
})

= Parametri del diagramma tensione-deformazione

== Rigidezza, resistenza a rottura e deformazioni caratteristiche

Dall'analisi completa del diagramma $sigma$-$epsilon$ registrato fino alla rottura del provino (punto $D$) si estraggono i parametri meccanici fondamentali di resistenza, rigidezza e duttilità:
- Il *modulo elastico* (o modulo di Young) $E$ è definito come il coefficiente angolare (tangente trigonometrica dell'angolo di inclinazione) del tratto lineare iniziale $O$-$A$.
- Il *limite di rottura* o *tensione di rottura* $R_"m"$ si ricava dividendo la forza massima sopportata dal provino (corrispondente al punto di massimo $C$ del diagramma) per l'area iniziale $S_0$ della sezione retta calibrata.
- Sull'asse delle ascisse si distinguono le componenti di allungamento percentuale in corrispondenza del carico massimo $R_"m"$ e della rottura finale $D$:
  - $A_"g"$: allungamento percentuale non proporzionale (plastico) al carico massimo $R_"m"$, ottenuto scaricando parallelamente alla retta elastica dal punto di massimo;
  - $A_"gt"$: allungamento percentuale totale (elastico più plastico) al carico massimo $R_"m"$ (valutato in corrispondenza di un eventuale plateau di massimo di ampiezza $Delta e$);
  - $A$: *allungamento relativo a rottura* (deformazione plastica residua valutata a rottura avvenuta, scaricando dal punto $D$ parallelamente al tratto elastico);
  - $A_"t"$: allungamento percentuale totale a rottura (includendo l'aliquota elastica al momento del cedimento finale in $D$).

#canvas(length: 1cm, {
  import draw: *

  // Assi principali
  line((0, 0), (8.2, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, 0), (0, 4.8), mark: (end: ">"), stroke: 0.9pt)
  content((8.2, -0.25), text(size: 7pt)[$epsilon$], anchor: "north")
  content((-0.25, 4.7), text(size: 7pt)[$sigma$], anchor: "east")
  content((-0.2, -0.2), text(size: 7pt)[$O$], anchor: "north-east")

  // Retta tangente elastica tratteggiata
  line((0, 0), (1.35, 4.5), stroke: (dash: "dashed", thickness: 0.7pt, paint: red))

  // Curva tensione-deformazione O - A - B - C(Rm) - D
  line((0, 0), (0.6, 2.0), stroke: 1.1pt)
  bezier((0.6, 2.0), (1.1, 2.0), (0.75, 2.25), (0.95, 1.85), stroke: 1.1pt)
  bezier((1.1, 2.0), (4.5, 3.7), (2.0, 3.3), (3.3, 3.7), stroke: 1.1pt)
  bezier((4.5, 3.7), (6.6, 3.1), (5.3, 3.7), (6.0, 3.45), stroke: 1.1pt)

  content((0.48, 2.05), text(size: 7pt)[$A$], anchor: "east")
  content((1.18, 1.85), text(size: 7pt)[$B$], anchor: "north-west")
  content((6.75, 3.15), text(size: 7pt)[$D$], anchor: "south-west")

  // Quota Rm
  line((-0.85, 3.7), (4.5, 3.7), stroke: 0.5pt)
  line((-0.7, 0), (-0.7, 3.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.8, 1.85), text(size: 7pt)[$R_"m"$], anchor: "east")

  // Indicazione intervallo Delta e attorno al massimo
  line((4.0, 3.68), (4.0, 4.6), stroke: 0.5pt)
  line((4.5, 3.7), (4.5, 4.3), stroke: 0.5pt)
  line((5.0, 3.68), (5.0, 4.6), stroke: 0.5pt)
  line((4.0, 4.5), (5.0, 4.5), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((4.5, 4.58), text(size: 7pt)[$Delta e$], anchor: "south")
  line((3.5, 4.2), (4.5, 4.2), mark: (end: ">"), stroke: 0.5pt)
  content((3.9, 4.25), text(size: 7pt)[$Delta e slash 2$], anchor: "south")
  line((5.5, 4.0), (4.5, 4.0), mark: (end: ">"), stroke: 0.5pt)
  content((5.1, 4.05), text(size: 7pt)[$Delta e slash 2$], anchor: "south")

  // Rette di scarico e proiezioni verticali per Ag, Agt, A, At
  line((4.5, 3.7), (3.39, 0), stroke: 0.6pt)
  line((4.5, 3.7), (4.5, 0), stroke: 0.6pt)
  line((6.6, 3.1), (5.67, 0), stroke: 0.6pt)
  line((6.6, 3.1), (6.6, 0), stroke: 0.6pt)

  // Estensioni verticali sotto l'asse x per le quote di deformazione
  line((0, 0), (0, -2.6), stroke: 0.6pt)
  line((3.39, 0), (3.39, -0.65), stroke: 0.6pt)
  line((4.5, 0), (4.5, -1.25), stroke: 0.6pt)
  line((5.67, 0), (5.67, -1.85), stroke: 0.6pt)
  line((6.6, 0), (6.6, -2.45), stroke: 0.6pt)

  line((0, -0.5), (3.39, -0.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.7, -0.45), text(size: 7pt)[$A_"g"$], anchor: "south")

  line((0, -1.1), (4.5, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.25, -1.05), text(size: 7pt)[$A_"gt"$], anchor: "south")

  line((0, -1.7), (5.67, -1.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.83, -1.65), text(size: 7pt)[$A$], anchor: "south")

  line((0, -2.3), (6.6, -2.3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.3, -2.25), text(size: 7pt)[$A_"t"$], anchor: "south")
})

L'*allungamento relativo a rottura* $A$, espresso solitamente in percentuale, misura la deformazione plastica residua permanente dopo il cedimento del provino ed è definito dalla relazione:
// INCERTO: dedotto dal contesto
$ A = (L_u - L_0) / L_0 dot 100 $
dove:
- $L_0$ è la *lunghezza iniziale tra i riferimenti* (tratto utile di misura marcato sul provino prima della prova), avente sezione trasversale iniziale di area $S_0$ (circolare di diametro $d$, oppure rettangolare di lati $a$ e $b$);
- $L_c$ è la *lunghezza del tratto calibrato* a sezione costante e $L_t$ è la *lunghezza totale* del provino incluse le *teste di serraggio*;
- $L_u$ è la *lunghezza finale tra i riferimenti* misurata dopo la rottura riaccostando le due parti fratturate del provino, in corrispondenza della quale la sezione minima strizionata ha area $S_u$.

#canvas(length: 1cm, {
  import draw: *

  // --- PROVINO 1: Sezione circolare iniziale (S0, d, L0) ---
  rect((0, 4.0), (1.1, 5.0), stroke: 0.9pt)
  rect((6.9, 4.0), (8.0, 5.0), stroke: 0.9pt)
  bezier((1.1, 5.0), (1.7, 4.8), (1.3, 5.0), (1.45, 4.8), stroke: 0.9pt)
  bezier((1.1, 4.0), (1.7, 4.2), (1.3, 4.0), (1.45, 4.2), stroke: 0.9pt)
  bezier((6.9, 5.0), (6.3, 4.8), (6.7, 5.0), (6.55, 4.8), stroke: 0.9pt)
  bezier((6.9, 4.0), (6.3, 4.2), (6.7, 4.0), (6.55, 4.2), stroke: 0.9pt)
  line((1.7, 4.8), (6.3, 4.8), stroke: 0.9pt)
  line((1.7, 4.2), (6.3, 4.2), stroke: 0.9pt)
  line((-0.3, 4.5), (8.3, 4.5), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Tacche L0 e sezione circolare ribaltata S0
  line((2.3, 4.3), (2.3, 4.7), stroke: 0.9pt)
  line((5.7, 4.3), (5.7, 4.7), stroke: 0.9pt)
  circle((3.4, 4.5), radius: 0.3, fill: luma(220), stroke: 0.8pt)
  line((3.55, 4.75), (4.0, 5.15), mark: (start: ">"), stroke: 0.6pt)
  content((4.05, 5.2), text(size: 7pt)[$S_0$], anchor: "west")

  // Quota diametro d
  line((8.0, 4.8), (8.7, 4.8), stroke: 0.5pt)
  line((8.0, 4.2), (8.7, 4.2), stroke: 0.5pt)
  line((8.55, 4.2), (8.55, 4.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.48, 4.5), text(size: 7pt)[$d$], anchor: "east")

  // Quota L0
  line((2.3, 4.3), (2.3, 3.45), stroke: 0.5pt)
  line((5.7, 4.3), (5.7, 3.45), stroke: 0.5pt)
  line((2.3, 3.65), (5.7, 3.65), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 3.7), text(size: 7pt)[$L_0$], anchor: "south")

  // --- PROVINO 2: Sezione rettangolare iniziale (S0, a, b, Lc, Lt) ---
  rect((0, 2.0), (1.1, 3.0), stroke: 0.9pt)
  rect((6.9, 2.0), (8.0, 3.0), stroke: 0.9pt)
  bezier((1.1, 3.0), (1.7, 2.8), (1.3, 3.0), (1.45, 2.8), stroke: 0.9pt)
  bezier((1.1, 2.0), (1.7, 2.2), (1.3, 2.0), (1.45, 2.2), stroke: 0.9pt)
  bezier((6.9, 3.0), (6.3, 2.8), (6.7, 3.0), (6.55, 2.8), stroke: 0.9pt)
  bezier((6.9, 2.0), (6.3, 2.2), (6.7, 2.0), (6.55, 2.2), stroke: 0.9pt)
  line((1.7, 2.8), (6.3, 2.8), stroke: 0.9pt)
  line((1.7, 2.2), (6.3, 2.2), stroke: 0.9pt)
  line((-0.3, 2.5), (8.3, 2.5), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((2.3, 2.3), (2.3, 2.7), stroke: 0.9pt)
  line((5.7, 2.3), (5.7, 2.7), stroke: 0.9pt)
  rect((3.3, 2.2), (3.5, 2.8), fill: luma(220), stroke: 0.8pt)
  line((3.3, 2.8), (3.3, 3.2), stroke: 0.5pt)
  line((3.5, 2.8), (3.5, 3.2), stroke: 0.5pt)
  line((3.0, 3.1), (3.3, 3.1), mark: (end: ">"), stroke: 0.5pt)
  line((3.8, 3.1), (3.5, 3.1), mark: (end: ">"), stroke: 0.5pt)
  content((3.4, 3.15), text(size: 7pt)[$a$], anchor: "south")
  line((3.5, 2.65), (3.95, 3.0), mark: (start: ">"), stroke: 0.6pt)
  content((4.0, 3.05), text(size: 7pt)[$S_0$], anchor: "west")

  // Quota larghezza b
  line((8.0, 2.8), (8.7, 2.8), stroke: 0.5pt)
  line((8.0, 2.2), (8.7, 2.2), stroke: 0.5pt)
  line((8.55, 2.2), (8.55, 2.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.48, 2.5), text(size: 7pt)[$b$], anchor: "east")

  // Etichetta teste di serraggio
  line((7.3, 3.45), (7.1, 4.0), mark: (end: ">"), stroke: 0.6pt)
  line((7.3, 3.45), (7.1, 3.0), mark: (end: ">"), stroke: 0.6pt)
  content((6.6, 3.45), text(size: 7pt)[teste di serraggio], anchor: "west")

  // Quote Lc e Lt
  line((1.7, 4.8), (1.7, 1.35), stroke: 0.5pt)
  line((6.3, 4.8), (6.3, 1.35), stroke: 0.5pt)
  line((1.7, 1.5), (6.3, 1.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.55), text(size: 7pt)[$L_c$], anchor: "south")

  line((0, 2.0), (0, 0.85), stroke: 0.5pt)
  line((8.0, 2.0), (8.0, 0.85), stroke: 0.5pt)
  line((0, 1.0), (8.0, 1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.05), text(size: 7pt)[$L_t$], anchor: "south")

  // --- PROVINO 3: Provino a rottura con strizione (Su, Lu) ---
  rect((0, -0.7), (1.1, 0.3), stroke: 0.9pt)
  rect((7.3, -0.7), (8.4, 0.3), stroke: 0.9pt)
  bezier((1.1, 0.3), (1.7, 0.1), (1.3, 0.3), (1.45, 0.1), stroke: 0.9pt)
  bezier((1.1, -0.7), (1.7, -0.5), (1.3, -0.7), (1.45, -0.5), stroke: 0.9pt)
  bezier((7.3, 0.3), (6.7, 0.1), (7.1, 0.3), (6.95, 0.1), stroke: 0.9pt)
  bezier((7.3, -0.7), (6.7, -0.5), (7.1, -0.7), (6.95, -0.5), stroke: 0.9pt)

  line((1.7, 0.1), (3.6, 0.1), stroke: 0.9pt)
  line((1.7, -0.5), (3.6, -0.5), stroke: 0.9pt)
  bezier((3.6, 0.1), (4.2, -0.05), (3.85, 0.1), (3.95, -0.05), stroke: 0.9pt)
  bezier((3.6, -0.5), (4.2, -0.35), (3.85, -0.5), (3.95, -0.35), stroke: 0.9pt)
  bezier((4.2, -0.05), (4.8, 0.1), (4.45, -0.05), (4.55, 0.1), stroke: 0.9pt)
  bezier((4.2, -0.35), (4.8, -0.5), (4.45, -0.35), (4.55, -0.5), stroke: 0.9pt)
  line((4.8, 0.1), (6.7, 0.1), stroke: 0.9pt)
  line((4.8, -0.5), (6.7, -0.5), stroke: 0.9pt)
  line((-0.3, -0.2), (8.7, -0.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Sezione di rottura e Su
  line((4.2, -0.55), (4.2, 0.15), stroke: 1.0pt)
  circle((3.1, -0.2), radius: 0.15, fill: luma(220), stroke: 0.8pt)
  line((3.1, -0.05), (4.2, -0.05), stroke: 0.5pt)
  line((3.1, -0.35), (4.2, -0.35), stroke: 0.5pt)
  line((3.2, -0.1), (3.65, 0.25), mark: (start: ">"), stroke: 0.6pt)
  content((3.7, 0.3), text(size: 7pt)[$S_u$], anchor: "west")

  // Tacche e quota Lu
  line((2.1, -0.4), (2.1, 0.0), stroke: 0.9pt)
  line((6.3, -0.4), (6.3, 0.0), stroke: 0.9pt)
  line((2.1, -0.4), (2.1, -1.15), stroke: 0.5pt)
  line((6.3, -0.4), (6.3, -1.15), stroke: 0.5pt)
  line((2.1, -1.0), (6.3, -1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.2, -0.95), text(size: 7pt)[$L_u$], anchor: "south")
})

= Materiali fragili e materiali duttili

L'allungamento percentuale a rottura $A$ consente di quantificare l'ampiezza del campo plastico del materiale e permette convenzionalmente di distinguere tra *comportamento fragile* e *comportamento duttile*:
- La soglia indicativa di separazione è fissata convenzionalmente a $A = 5%$: al di sotto di tale valore ($A < 5%$) il comportamento del materiale si definisce *fragile*.
- I metalli presentano in generale un comportamento duttile ($A > 5%$), sebbene alcune leghe metalliche specifiche (come le ghise) mostrino un comportamento marcatamente fragile.

Anche l'analisi visiva della morfologia della superficie di rottura fornisce un'indicazione diretta della natura meccanica del cedimento:
- *Rottura fragile*: avviene per *decoesione frontale* lungo un piano ortogonale all'asse di sollecitazione, governata dal raggiungimento delle *tensioni normali* critiche senza apprezzabile deformazione plastica o restringimento trasversale.
- *Rottura duttile*: avviene per *scorrimento plastico* governato dalle *tensioni tangenziali* (inclinate a $45 circ$ rispetto all'asse del carico), generando una marcata strizione localizzata e la caratteristica frattura a "coppa e cono".

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: Materiale Fragile ---
  line((0, 0), (2.8, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((2.8, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((-0.2, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((0, 0), (0.35, 2.7), stroke: 1.1pt)
  line((0.27, 2.62), (0.43, 2.78), stroke: 0.8pt)
  line((0.27, 2.78), (0.43, 2.62), stroke: 0.8pt)

  content((1.4, -0.7), text(size: 7pt)[*Fragile*: decoesione frontale\ (tensioni normali)], anchor: "north")

  // --- PANNELLO 2: Materiale Duttile (senza snervamento evidente) ---
  line((4.2, 0), (7.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((4.2, 0), (4.2, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((7.6, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((4.0, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((4.2, 0), (4.5, 2.1), stroke: 1.1pt)
  bezier((4.5, 2.1), (6.0, 2.85), (4.8, 2.65), (5.4, 2.85), stroke: 1.1pt)
  bezier((6.0, 2.85), (7.1, 2.35), (6.5, 2.85), (6.85, 2.6), stroke: 1.1pt)

  content((5.9, -0.7), text(size: 7pt)[*Duttile*: scorrimento continuo\ (tensioni tangenziali)], anchor: "north")

  // --- PANNELLO 3: Materiale Duttile (con snervamento evidente) ---
  line((8.8, 0), (12.4, 0), mark: (end: ">"), stroke: 0.8pt)
  line((8.8, 0), (8.8, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((12.4, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((8.6, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((8.8, 0), (9.1, 1.5), stroke: 1.1pt)
  bezier((9.1, 1.5), (9.3, 1.5), (9.15, 1.7), (9.25, 1.3), stroke: 1.1pt)
  bezier((9.3, 1.5), (9.5, 1.5), (9.35, 1.7), (9.45, 1.3), stroke: 1.1pt)
  bezier((9.5, 1.5), (9.7, 1.5), (9.55, 1.7), (9.65, 1.3), stroke: 1.1pt)
  bezier((9.7, 1.5), (11.0, 2.85), (10.0, 2.55), (10.5, 2.85), stroke: 1.1pt)
  bezier((11.0, 2.85), (12.0, 2.35), (11.4, 2.85), (11.75, 2.6), stroke: 1.1pt)

  content((10.6, -0.7), text(size: 7pt)[*Duttile*: con snervamento\ evidente e strizione], anchor: "north")
})

#nota[
_[Figura nelle slide: Fotografie macroscopiche delle superfici di rottura di provini cilindrici. Nel caso fragile la superficie di frattura è piana, granulare e ortogonale all'asse del provino senza riduzione di diametro; nei due casi duttili si osserva una marcata strizione del collo e la tipica conformazione a "coppa e cono" con labbro di taglio inclinato a $45 circ$.]_
]

= Tensione e deformazione ingegneristiche e reali

== Definizione dei valori ingegneristici

Il concetto di *valori ingegneristici* (o convenzionali) è ampiamente adottato nelle normative tecniche. Nella loro definizione si assumono come grandezze di riferimento costanti l'*area iniziale* $S_0$ della sezione normale alla direzione del carico e la *lunghezza iniziale* $L_0$ del tratto utile del provino _(si veda lo schema geometrico del provino nella sezione precedente)_.

Il *valore ingegneristico della tensione* $sigma$ è definito come:
$ sigma = F / S_0 $
mentre il *valore ingegneristico della deformazione* $epsilon$ è dato da:
// INCERTO: dedotto dal contesto
$ epsilon = (Delta L) / L_0 = (L - L_0) / L_0 $

La tensione ingegneristica rappresenta una quantità *misurabile indirettamente* con estrema semplicità durante la prova, poiché le macchine di trazione rilevano istante per istante la forza applicata $F$, mentre l'area iniziale $S_0$ è nota a priori dalla geometria del provino.

== Strizione e definizione dei valori reali (effettivi)

Nella realtà fisica della prova, soprattutto con l'insorgere del fenomeno della *strizione* dopo il raggiungimento del carico massimo, la sezione trasversale in corrispondenza della zona di futura rottura subisce un evidente restringimento localizzato: l'area effettiva $S$ della sezione retta del provino diminuisce quindi progressivamente nel corso della prova di trazione ($S < S_0$).

#nota[
_[Figura nelle slide: Fotografia ravvicinata delle due metà di un provino metallico cilindrico filettato portato a rottura duttile, in cui è chiaramente visibile il forte restringimento conico localizzato (strizione) in prossimità della sezione di distacco.]_
]

Tenendo conto della geometria istantanea del provino, si introducono il *valore reale della tensione* $sigma_"reale"$, riferito all'area corrente effettiva $S$:
// INCERTO: dedotto dal contesto
$ sigma_"reale" = F / S $
e il *valore reale (o logaritmico) della deformazione* $epsilon_"reale"$, ottenuto integrando gli incrementi infinitesimi di allungamento $d l$ rispetto alla lunghezza istantanea $l$:
// INCERTO: dedotto dal contesto
$ epsilon_"reale" = integral_(L_0)^L (d l) / l = ln (L / L_0) $

Se si tiene conto della progressiva riduzione dell'area della sezione retta del provino, sul diagramma $sigma$-$epsilon$ il valore della *tensione reale* continua a crescere monotonamente anche dopo il superamento della tensione ingegneristica di rottura $R_"m"$ (punto $C$). Il cedimento fisico del provino avviene pertanto in corrispondenza del valore di *tensione reale* rappresentato dal *punto $D'$*, anziché al valore apparente più basso della *tensione ingegneristica* rappresentato dal *punto $D$*.

#canvas(length: 1cm, {
  import draw: *

  // Assi
  line((0, 0), (7.8, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, 0), (0, 5.2), mark: (end: ">"), stroke: 0.9pt)
  content((7.8, -0.25), text(size: 7pt)[$epsilon$], anchor: "north")
  content((-0.25, 5.1), text(size: 7pt)[$sigma$], anchor: "east")
  content((0.2, 0.2), text(size: 7pt)[$O$], anchor: "south-west")

  // Tratto comune O - A - B - C
  line((0, 0), (0.55, 2.0), stroke: 1.0pt)
  bezier((0.55, 2.0), (1.35, 2.2), (0.7, 2.4), (1.15, 2.35), stroke: 1.0pt)
  bezier((1.35, 2.2), (4.0, 3.4), (2.1, 3.05), (3.1, 3.4), stroke: 1.0pt)

  // Ramo ingegneristico C - D (decrescente per strizione apparente)
  bezier((4.0, 3.4), (6.6, 2.5), (4.9, 3.4), (5.8, 3.05), stroke: 1.0pt)

  // Ramo reale C - D' (crescente per riduzione effettiva dell'area S)
  bezier((4.0, 3.4), (6.6, 4.65), (4.8, 3.55), (5.7, 4.05), stroke: 1.0pt)

  // Linee di proiezione orizzontali tratteggiate sull'asse sigma
  line((0, 2.0), (0.55, 2.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.2), (1.35, 2.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.5), (6.6, 2.5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 3.4), (4.0, 3.4), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 4.65), (6.6, 4.65), stroke: (dash: "dashed", thickness: 0.6pt))

  // Etichette punti
  content((0.65, 1.9), text(size: 7pt)[$A$], anchor: "north-west")
  content((1.4, 2.1), text(size: 7pt)[$B$], anchor: "north-west")
  content((3.95, 3.28), text(size: 7pt)[$C$], anchor: "north")
  content((6.75, 2.45), text(size: 7pt)[$D$ (ingegneristica)], anchor: "west")
  content((6.75, 4.65), text(size: 7pt)[$D'$ (reale)], anchor: "west")
})

= Tensione ammissibile e coefficiente di sicurezza

== Criterio di verifica statica e scelta della tensione limite cazzi nel culo

I dati sperimentali relativi alle proprietà meccaniche dei materiali, ottenuti mediante la prova di trazione, vengono impiegati direttamente nei calcoli pratici di progettazione e verifica per determinare la resistenza strutturale dei sistemi meccanici.

A tale scopo si definisce la *tensione ammissibile* (o tensione di sicurezza) $sigma_"amm"$ come il rapporto tra una specifica *tensione limite* (carico unitario limite) $sigma_L$ del materiale e un parametro adimensionale $s > 1$ denominato *coefficiente di sicurezza*:
// INCERTO: dedotto dal contesto
$ sigma_"amm" = sigma_L / s $

Per garantire che un componente meccanico sollecitato staticamente non raggiunga condizioni di cedimento strutturale in esercizio, la tensione limite $sigma_L$ viene selezionata in funzione della natura duttile o fragile del materiale:
- Per i *materiali duttili*, poiché il fuori servizio funzionale è determinato dall'insorgere di grandi deformazioni plastiche permanenti, si assume la tensione limite $sigma_L$ uguale al limite di snervamento $R_"p"$ (oppure $R_"eH"$):
  // INCERTO: dedotto dal contesto
  $ sigma_"amm" = R_"p" / s quad ("oppure " sigma_"amm" = R_"eH" / s) $
- Per i *materiali fragili* (e in determinati casi anche per materiali moderatamente plastici), poiché la rottura avviene senza snervamento premonitore, si assume la tensione limite $sigma_L$ uguale al limite di rottura $R_"m"$:
  // INCERTO: dedotto dal contesto
  $ sigma_"amm" = R_"m" / s $

== Esempio di progettazione: caso di trazione pura

Si desidera determinare l'area minima della sezione trasversale $A$ di un corpo cilindrico realizzato in acciaio strutturale $"S235"$, sottoposto a uno sforzo assiale di trazione pura $P = 100000 "N"$, assumendo un coefficiente di sicurezza pari a $s = 1,5$ rispetto allo snervamento.

Dalla designazione normalizzata dell'acciaio ($"S235"$) si ricava direttamente che la tensione di snervamento vale $R_"p" = 235 "MPa" = 235 "N" / "mm"^2$. La tensione ammissibile del materiale risulta pertanto:
// INCERTO: dedotto dal contesto
$ sigma_"amm" = R_"p" / s = (235 "MPa") / 1,5 approx 156,7 "MPa" approx 157 "MPa" $

Imponendo che la tensione di lavoro $sigma = P / A$ non superi la tensione ammissibile $sigma_"amm"$, l'area minima necessaria della sezione retta del corpo cilindrico risulta:
// INCERTO: dedotto dal contesto
$ A = P / sigma_"amm" = (100000 "N") / (157 "N" / "mm"^2) approx 637 "mm"^2 $

= Legge tensione-deformazione unitarie

Per la maggior parte dei materiali strutturali, nel regime dei piccoli allungamenti si riscontra sperimentalmente una proporzionalità diretta tra la tensione unitaria e la deformazione unitaria. Tale relazione costitutiva prende il nome di *legge di Hooke*:

$ sigma_(x x) = E epsilon_(x x) $

Il coefficiente di proporzionalità $E$ è denominato *modulo di elasticità normale* (o *modulo di Young*). Esso rappresenta una costante fisica intrinseca del materiale, determinata per via sperimentale; poiché la deformazione unitaria $epsilon_(x x)$ è una grandezza adimensionale, il modulo $E$ possiede le medesime dimensioni fisiche della tensione unitaria ($"N"/"mm"^2 = "MPa"$).

Sostituendo all'interno della legge di Hooke le definizioni di tensione normale $sigma_(x x) = P / A$ e di deformazione longitudinale $epsilon_(x x) = (Delta l) / l$, si ottiene la relazione che lega direttamente la forza assiale applicata $P$ alla variazione di lunghezza della trave:

$ sigma_(x x) = E epsilon_(x x) quad arrow.r.double quad frac(P, A) = E frac(Delta l, l) $

Da tale espressione è possibile esplicitare sia la forza assiale $P$ in funzione dell'allungamento assoluto $Delta l$, sia l'allungamento stesso in funzione del carico:

$ P = frac(E A, l) Delta l , quad Delta l = frac(P l, E A) $

#nota[
Si definisce *rigidezza assiale* della trave il rapporto $frac(E A, l)$, il quale esprime la resistenza offerta dall'elemento strutturale alla deformazione assiale.
]

== Contrazione trasversale e coefficiente di Poisson

L'evidenza sperimentale mostra che, contemporaneamente all'allungamento longitudinale $Delta l$ indotto da uno stato di trazione monoassiale, il materiale subisce una contrazione trasversale $Delta a$ direttamente proporzionale all'allungamento stesso.

#canvas(length: 1cm, {
  import draw: *
  // Rettangolo deformato (tratteggiato)
  rect((0.8, 2.05), (7.2, 3.55), stroke: (dash: "dashed", thickness: 0.8pt))
  // Rettangolo indeformato (continuo)
  rect((1.4, 1.8), (6.6, 3.8), stroke: 1.2pt)

  // Frecce tensione sigma_xx a sinistra
  line((1.4, 3.8), (0.5, 3.8), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 3.47), (0.5, 3.47), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 3.13), (0.5, 3.13), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.8), (0.5, 2.8), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.47), (0.5, 2.47), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.13), (0.5, 2.13), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 1.8), (0.5, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((0.6, 4.15), text(size: 7pt)[$sigma_(x x)$])

  // Frecce tensione sigma_xx a destra
  line((6.6, 3.8), (7.5, 3.8), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 3.47), (7.5, 3.47), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 3.13), (7.5, 3.13), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.8), (7.5, 2.8), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.47), (7.5, 2.47), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.13), (7.5, 2.13), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 1.8), (7.5, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((7.4, 4.15), text(size: 7pt)[$sigma_(x x)$])

  // Quote verticali interne (a e a - Delta a)
  line((3.5, 1.8), (3.5, 3.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.35, 2.8), text(size: 7pt)[$a$], anchor: "east")

  line((4.7, 2.05), (4.7, 3.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.55, 2.8), text(size: 7pt)[$a - Delta a$], anchor: "east")

  // Linee di estensione e quote orizzontali (l e l + Delta l)
  line((1.4, 1.8), (1.4, 0.8), stroke: 0.5pt)
  line((6.6, 1.8), (6.6, 0.8), stroke: 0.5pt)
  line((1.4, 1.0), (6.6, 1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.2), text(size: 7pt)[$l$], anchor: "south")

  line((0.8, 2.05), (0.8, 0.1), stroke: 0.5pt)
  line((7.2, 2.05), (7.2, 0.1), stroke: 0.5pt)
  line((0.8, 0.3), (7.2, 0.3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 0.5), text(size: 7pt)[$l + Delta l$], anchor: "south")
})

La corrispondente deformazione unitaria trasversale $epsilon_(y y)$ è legata alla deformazione longitudinale $epsilon_(x x)$ dalla relazione:

$ epsilon_(y y) = - frac(Delta a, a) = - nu frac(Delta l, l) = - nu epsilon_(x x) = - nu frac(sigma_(x x), E) $

Il coefficiente di proporzionalità adimensionale $nu$ prende il nome di *coefficiente di Poisson*; esso viene determinato sperimentalmente e, per la maggior parte dei materiali metallici, assume valori compresi nell'intervallo $0.25 <= nu <= 0.35$.

= Lavoro di deformazione

Si supponga che la forza esterna $P$, che sollecita a trazione la trave, cresca dal valore nullo iniziale fino al valore finale in modo sufficientemente lento da non innescare azioni dinamiche, realizzando così un *processo di carico statico*.

#canvas(length: 1.3cm, {
  import draw: *
  // PANNELLO 1: Trave soggetta a trazione
  rect((0.8, 2.0), (3.3, 2.4), stroke: 1.1pt)
  line((3.3, 2.4), (3.8, 2.4), stroke: (dash: "dashed", thickness: 0.9pt))
  line((3.8, 2.4), (3.8, 2.0), stroke: (dash: "dashed", thickness: 0.9pt))
  line((3.8, 2.0), (3.3, 2.0), stroke: (dash: "dashed", thickness: 0.9pt))
  // Asse baricentrico e asse x
  line((0.5, 2.2), (4.0, 2.2), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((4.7, 2.2), (5.4, 2.2), mark: (end: ">"), stroke: 0.7pt)
  content((5.3, 1.9), text(size: 7pt)[$x$])
  // Forze P
  line((0.8, 2.2), (0.1, 2.2), mark: (end: ">"), stroke: 1.1pt)
  content((0.2, 2.55), text(size: 7pt)[$P$])
  line((3.9, 2.2), (4.6, 2.2), mark: (end: ">"), stroke: 1.1pt)
  content((3.9, 2.55), text(size: 7pt)[$P$])

  // PANNELLO 2: Diagramma P - Delta l
  // Area elementare tratteggiata
  line((7.6, 0.8), (7.6, 2.2), (7.9, 2.45), (7.9, 0.8), close: true, fill: luma(220), stroke: 0.6pt)
  line((7.6, 1.0), (7.9, 1.25), stroke: 0.5pt)
  line((7.6, 1.3), (7.9, 1.55), stroke: 0.5pt)
  line((7.6, 1.6), (7.9, 1.85), stroke: 0.5pt)
  line((7.6, 1.9), (7.9, 2.15), stroke: 0.5pt)

  // Assi cartesiani
  line((6.2, 0.2), (6.2, 4.3), mark: (end: ">"), stroke: 0.8pt)
  line((6.2, 0.8), (10.2, 0.8), mark: (end: ">"), stroke: 0.8pt)
  content((5.9, 4.2), text(size: 7pt)[$P$])
  content((10.1, 0.5), text(size: 7pt)[$Delta l$])
  content((5.95, 0.55), text(size: 7pt)[$O$])

  // Retta di carico OC
  line((6.2, 0.8), (9.5, 3.89), stroke: 1.2pt)

  // Proiezioni punto C e generico P
  line((6.1, 3.52), (9.1, 3.52), stroke: 0.6pt)
  line((9.1, 3.52), (9.1, 0.2), stroke: 0.6pt)
  content((5.9, 3.52), text(size: 7pt)[$P$])
  content((9.35, 3.52), text(size: 7pt)[$C$])
  content((9.3, 1.05), text(size: 7pt)[$B$])

  line((6.1, 2.32), (7.75, 2.32), stroke: 0.6pt)
  content((5.9, 2.32), text(size: 7pt)[$P$])

  // Quote d(Delta l) e Delta l
  line((7.6, 0.8), (7.6, 0.35), stroke: 0.5pt)
  line((7.9, 0.8), (7.9, 0.35), stroke: 0.5pt)
  line((7.2, 0.45), (7.6, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((8.3, 0.45), (7.9, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((7.6, 0.45), (7.9, 0.45), stroke: 0.6pt)
  content((8.45, 0.58), text(size: 7pt)[$d(Delta l)$])

  line((6.2, 0.25), (9.1, 0.25), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((7.65, 0.0), text(size: 7pt)[$Delta l$])
})

Il lavoro elementare $d L$ compiuto dalla forza $P$ per uno spostamento infinitesimo $d(Delta l)$ vale:

$ d L = P d(Delta l) $

Integrando tale contributo lungo l'intero processo di carico, il lavoro complessivo $L$ corrispondente allo spostamento finale $Delta l$ coincide geometricamente con l'area del triangolo $O B C$ sotteso dalla retta di carico:

$ L = frac(1, 2) P Delta l $

Sostituendo le relazioni costitutive della rigidezza assiale ricavate in precedenza, il lavoro di deformazione può essere espresso alternativamente in funzione del solo allungamento o della sola forza applicata:

$ L = frac(1, 2) P Delta l = frac(1, 2) frac(E A, l) Delta l^2 = frac(1, 2) frac(P^2 l, E A) $

Indicando con $V = A l$ il volume complessivo della trave e ricordando che $sigma_(x x) = P / A$ e $sigma_(x x) = E epsilon_(x x)$, il lavoro di deformazione si esprime in funzione dello stato tensionale e deformativo come:

$ L = frac(1, 2) sigma_(x x) epsilon_(x x) V = frac(1, 2) frac(sigma_(x x)^2, E) V = frac(1, 2) epsilon_(x x)^2 E V $

Dividendo per il volume $V$, si ottiene il corrispondente *lavoro di deformazione per unità di volume* (o densità di energia di deformazione elastica) $L_V$:

$ L_V = frac(1, 2) sigma_(x x) epsilon_(x x) = frac(1, 2) frac(sigma_(x x)^2, E) = frac(1, 2) epsilon_(x x)^2 E $

= Deformazioni termiche assiali

Finora si è assunto che i sistemi strutturali soggetti a carichi meccanici permanessero a una temperatura ambiente $T_"amb"$ costante. Se tuttavia una trave libera (non vincolata) è immersa in un campo termico uniforme caratterizzato da una variazione di temperatura $Delta T$ rispetto a $T_"amb"$, essa subisce una variazione di lunghezza $Delta l_T$ direttamente proporzionale al salto termico $Delta T$ e alla lunghezza iniziale $l$:

$ Delta l_T = alpha l Delta T $

Il parametro $alpha$ è denominato *coefficiente di dilatazione termica lineare*; esso costituisce una proprietà fisica caratteristica del materiale, ha dimensioni $[circ"C"^(-1)]$ e assume i valori tipici riportati nella tabella seguente.

#table(
  columns: 2,
  align: (left, right),
  table.header([*Materiale*], [*$alpha$ $[circ"C"^(-1)]$*]),
  table.hline(),
  [Acciai], [$11.7 dot 10^(-6)$],
  [Leghe di Alluminio], [$23.5 dot 10^(-6)$],
  [Leghe di Titanio], [$9.0 dot 10^(-6)$],
  [Leghe di Rame], [$16.9 dot 10^(-6)$],
  [Poliestere], [$166 dot 10^(-6)$],
)

Dividendo l'allungamento termico per la lunghezza iniziale $l$, si definisce la *deformazione unitaria termica*:

$ epsilon_T = alpha Delta T $

Qualora una barra sollecitata a trazione sia contemporaneamente soggetta a un incremento uniforme di temperatura $Delta T$ rispetto alla temperatura di montaggio, la deformazione termica si sovrappone linearmente alla deformazione meccanica $epsilon_"mec"$ prodotta dal carico assiale. La deformazione unitaria complessiva $epsilon$ e l'allungamento totale $Delta l$ valgono pertanto:

$ epsilon = epsilon_"mec" + epsilon_T = frac(sigma, E) + alpha Delta T $

$ Delta l = Delta l_"mec" + Delta l_T = frac(P l, E A) + alpha l Delta T $

= Comportamento meccanico dei materiali metallici

I materiali metallici impiegati nelle costruzioni meccaniche presentano due proprietà strutturali fondamentali:
- *Omogeneità*: il materiale possiede le medesime proprietà fisiche e meccaniche in tutti i suoi punti.
- *Isotropia*: il materiale presenta le stesse proprietà meccaniche lungo tutte le direzioni dello spazio.

Tra le famiglie di materiali metallici di più frequente impiego nella progettazione industriale di sistemi meccanici figurano:
- Acciai e ghise (leghe Ferro-Carbonio);
- Leghe di alluminio;
- Leghe di titanio;
- Leghe rame-stagno (bronzi);
- Leghe di magnesio.

Il comportamento tensionale-deformativo a trazione di diverse leghe metalliche di interesse ingegneristico è illustrato nel diagramma comparativo seguente.

#canvas(length: 1cm, {
  import draw: *
  // Assi e riquadro del grafico (x: 0..8 -> eps 0..0.24, y: 0..5.4 -> sigma 0..1800)
  rect((1.0, 0.6), (9.0, 6.0), stroke: 0.8pt)

  // Tacche asse x (Deformazione)
  line((2.33, 0.6), (2.33, 0.72), stroke: 0.6pt)
  line((3.67, 0.6), (3.67, 0.72), stroke: 0.6pt)
  line((5.0, 0.6), (5.0, 0.72), stroke: 0.6pt)
  line((6.33, 0.6), (6.33, 0.72), stroke: 0.6pt)
  line((7.67, 0.6), (7.67, 0.72), stroke: 0.6pt)
  content((1.0, 0.35), text(size: 7pt)[$0$])
  content((2.33, 0.35), text(size: 7pt)[$0.04$])
  content((3.67, 0.35), text(size: 7pt)[$0.08$])
  content((5.0, 0.35), text(size: 7pt)[$0.12$])
  content((6.33, 0.35), text(size: 7pt)[$0.16$])
  content((7.67, 0.35), text(size: 7pt)[$0.20$])
  content((9.0, 0.35), text(size: 7pt)[$0.24$])
  content((5.0, 0.0), text(size: 7pt)[$"Deformazione" epsilon, "mm"/"mm"$])

  // Tacche asse y (Sforzo MPa)
  line((1.0, 1.2), (1.12, 1.2), stroke: 0.6pt)
  line((1.0, 1.8), (1.12, 1.8), stroke: 0.6pt)
  line((1.0, 2.4), (1.12, 2.4), stroke: 0.6pt)
  line((1.0, 3.0), (1.12, 3.0), stroke: 0.6pt)
  line((1.0, 3.6), (1.12, 3.6), stroke: 0.6pt)
  line((1.0, 4.2), (1.12, 4.2), stroke: 0.6pt)
  line((1.0, 4.8), (1.12, 4.8), stroke: 0.6pt)
  line((1.0, 5.4), (1.12, 5.4), stroke: 0.6pt)
  content((0.9, 0.6), text(size: 7pt)[$0$], anchor: "east")
  content((0.9, 1.2), text(size: 7pt)[$200$], anchor: "east")
  content((0.9, 1.8), text(size: 7pt)[$400$], anchor: "east")
  content((0.9, 2.4), text(size: 7pt)[$600$], anchor: "east")
  content((0.9, 3.0), text(size: 7pt)[$800$], anchor: "east")
  content((0.9, 3.6), text(size: 7pt)[$1000$], anchor: "east")
  content((0.9, 4.2), text(size: 7pt)[$1200$], anchor: "east")
  content((0.9, 4.8), text(size: 7pt)[$1400$], anchor: "east")
  content((0.9, 5.4), text(size: 7pt)[$1600$], anchor: "east")
  content((0.9, 6.0), text(size: 7pt)[$1800$], anchor: "east")
  content((0.3, 6.25), text(size: 7pt)[$"Sforzo, MPa"$], anchor: "west")

  // 1. Acciaio SAE 1340 temprato e rinvenuto a 370 °C
  line((1.0, 0.6), (1.2, 5.1), stroke: 1.1pt)
  bezier((1.2, 5.1), (6.0, 5.3), (1.4, 5.55), (4.0, 5.45), stroke: 1.1pt)
  content((6.1, 5.3), text(size: 7pt)[Acciaio SAE 1340 temprato e rinvenuto a $370 circ"C"$], anchor: "west")

  // 2. Acciaio legato al nichel (alta resistenza)
  line((1.0, 0.6), (1.3, 3.6), stroke: 0.6pt)
  bezier((1.3, 3.6), (3.1, 4.8), (2.2, 5.8), (2.7, 5.5), stroke: 0.6pt)
  content((3.0, 5.1), text(size: 7pt)[Acciaio legato al nichel], anchor: "west")

  // 3. Acciaio inossidabile 17-7PH
  line((1.0, 0.6), (1.3, 4.6), stroke: 0.8pt)
  bezier((1.3, 4.6), (2.7, 4.2), (1.6, 4.95), (2.3, 4.7), stroke: 0.8pt)
  line((2.7, 4.2), (3.7, 2.7), stroke: (dash: "dashed", thickness: 0.8pt))
  content((2.7, 4.45), text(size: 7pt)[Acciaio inossidabile 17-7PH], anchor: "west")

  // 4. Acciaio inossidabile (18-8)
  line((1.0, 0.6), (1.3, 3.0), stroke: 1.1pt)
  bezier((1.3, 3.0), (5.0, 3.7), (2.5, 4.5), (4.0, 4.4), stroke: 1.1pt)
  content((4.5, 4.15), text(size: 7pt)[Acciaio inossidabile (18-8)], anchor: "west")

  // 5. Lega di titanio solubilizzato (Ti-6Al-4V)
  line((1.0, 0.6), (1.4, 3.1), stroke: 0.8pt)
  bezier((1.4, 3.1), (4.5, 3.1), (2.2, 3.65), (3.8, 3.65), stroke: 0.8pt)
  line((4.5, 3.1), (5.0, 1.9), stroke: (dash: "dashed", thickness: 0.8pt))
  content((5.1, 3.7), text(size: 7pt)[Lega di titanio solubilizzato (Ti-6Al-4V)], anchor: "west")
  line((5.05, 3.65), (4.4, 3.3), mark: (end: ">"), stroke: 0.5pt)

  // 6. Acciaio legato al nichel (media resistenza)
  line((1.0, 0.6), (1.25, 2.4), stroke: 0.6pt)
  bezier((1.25, 2.4), (5.5, 2.6), (2.8, 3.2), (4.2, 3.1), stroke: 0.6pt)
  content((5.0, 3.3), text(size: 7pt)[Acciaio legato al nichel], anchor: "west")
  line((4.95, 3.25), (4.3, 2.95), mark: (end: ">"), stroke: 0.5pt)

  // 7. Lega N-155 solubilizzata
  line((1.0, 0.6), (1.3, 2.1), stroke: 1.1pt)
  bezier((1.3, 2.1), (8.4, 2.75), (2.5, 3.05), (5.5, 3.0), stroke: 1.1pt)
  content((6.0, 3.0), text(size: 7pt)[Lega N-155 solubilizzata], anchor: "west")

  // 8. Lega di alluminio (2024-T81)
  line((1.0, 0.6), (1.25, 1.8), stroke: 0.7pt)
  bezier((1.25, 1.8), (3.0, 1.8), (1.6, 2.15), (2.4, 2.0), stroke: 0.7pt)
  line((3.0, 1.8), (3.5, 1.55), stroke: (dash: "dashed", thickness: 0.7pt))
  content((5.1, 2.45), text(size: 7pt)[Lega di alluminio (2024-T81)], anchor: "west")
  line((5.05, 2.45), (2.6, 1.95), mark: (end: ">"), stroke: 0.5pt)

  // 9. Alcoa 27ST
  line((1.0, 0.6), (1.2, 1.65), stroke: 0.8pt)
  bezier((1.2, 1.65), (4.8, 1.88), (2.2, 1.65), (3.5, 1.88), stroke: 0.8pt)
  content((3.6, 2.02), text(size: 7pt)[Alcoa 27ST], anchor: "west")

  // 10. Acciaio strutturale
  line((1.0, 0.6), (1.15, 1.38), stroke: 1.1pt)
  bezier((1.15, 1.38), (8.5, 1.36), (3.5, 1.68), (6.0, 1.55), stroke: 1.1pt)
  content((7.1, 1.6), text(size: 7pt)[Acciaio strutturale], anchor: "west")

  // 11. Magnesio
  line((1.0, 0.6), (1.15, 1.0), stroke: 0.6pt)
  bezier((1.15, 1.0), (4.7, 1.18), (2.3, 1.35), (3.6, 1.32), stroke: 0.6pt)
  content((4.75, 1.15), text(size: 7pt)[Magnesio], anchor: "west")
})

== Classificazione e proprietà degli acciai

L'*acciaio* è una lega binaria Ferro-Carbonio (Fe-C) caratterizzata da un tenore massico di carbonio inferiore al $2\%$ (più precisamente $C < 2.1\%$, oltre il quale si entra nel campo delle ghise). Gli acciai vengono classificati principalmente in funzione della percentuale di carbonio e della destinazione d'impiego. Sulla base del tenore di carbonio si distinguono:
- *Acciai dolci*: $0.15\% < C < 0.25\%$;
- *Acciai semiduri*: $0.25\% < C < 0.50\%$;
- *Acciai duri*: $0.50\% < C < 0.75\%$.

#canvas(length: 1cm, {
  import draw: *
  // Radice: Leghe Ferrose
  content((5.2, 5.5), text(size: 7pt)[*Leghe Ferrose*])
  line((5.2, 5.3), (5.2, 4.7), stroke: (paint: blue, thickness: 1.8pt))

  // Diramazione principale Acciai vs Ghise
  line((3.0, 4.7), (5.2, 4.7), stroke: (paint: red, thickness: 1.5pt))
  line((3.0, 4.7), (3.0, 4.2), stroke: (paint: red, thickness: 1.5pt))
  content((4.1, 4.95), text(size: 7pt)[$C < 2.1\%$])
  content((3.0, 3.95), text(size: 7pt)[*Acciai*])

  line((5.2, 4.7), (7.5, 4.7), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((7.5, 4.7), (7.5, 4.2), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  content((6.35, 4.95), text(size: 7pt)[$2.1\% < C < 4.6\%$])
  content((7.5, 3.95), text(size: 7pt)[*Ghise*])

  // Sotto-albero Ghise
  line((7.5, 3.75), (7.5, 3.3), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((5.7, 3.3), (9.3, 3.3), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((5.7, 3.3), (5.7, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((6.8, 3.3), (6.8, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((8.0, 3.3), (8.0, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((9.3, 3.3), (9.3, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  content((5.7, 2.55), text(size: 7pt)[Grigie])
  content((6.8, 2.55), text(size: 7pt)[Sferoidali])
  content((8.0, 2.55), text(size: 7pt)[Bianche])
  content((9.3, 2.55), text(size: 7pt)[Malleabili])

  // Sotto-albero Acciai: Basso-legati e Alto-legati
  line((3.0, 3.75), (3.0, 3.3), stroke: (paint: red, thickness: 1.5pt))
  line((1.8, 3.3), (4.8, 3.3), stroke: (paint: red, thickness: 1.5pt))
  line((1.8, 3.3), (1.8, 2.85), stroke: (paint: red, thickness: 1.5pt))
  line((4.8, 3.3), (4.8, 1.95), stroke: (paint: red, thickness: 1.5pt))
  content((1.8, 2.6), text(size: 7pt)[*Basso-legati*])
  content((4.8, 1.7), text(size: 7pt)[*Alto-legati*])

  // Diramazioni Basso-legati (Basso, Medio, Alto carbonio)
  line((1.8, 2.4), (1.8, 2.0), stroke: (paint: red, thickness: 1.5pt))
  line((0.5, 2.0), (3.6, 2.0), stroke: (paint: red, thickness: 1.5pt))
  line((0.5, 2.0), (0.5, 1.55), stroke: (paint: red, thickness: 1.5pt))
  line((2.0, 2.0), (2.0, 1.55), stroke: (paint: red, thickness: 1.5pt))
  line((3.6, 2.0), (3.6, 1.55), stroke: (paint: red, thickness: 1.5pt))
  content((0.5, 1.3), text(size: 7pt)[Basso carbonio])
  content((2.0, 1.3), text(size: 7pt)[Medio carbonio])
  content((3.6, 1.3), text(size: 7pt)[Alto carbonio])

  // Foglie Basso carbonio
  line((0.5, 1.1), (0.5, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((0.0, 0.75), (1.1, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((0.0, 0.75), (0.0, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((1.1, 0.75), (1.1, 0.4), stroke: (paint: red, thickness: 1.5pt))
  content((0.0, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((1.1, 0.1), text(size: 7pt)[Basso-legati,\ alta resistenza])

  // Foglie Medio carbonio
  line((2.0, 1.1), (2.0, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((1.85, 0.75), (2.8, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((1.85, 0.75), (1.85, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((2.8, 0.75), (2.8, 0.4), stroke: (paint: red, thickness: 1.5pt))
  content((2.0, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((2.85, 0.1), text(size: 7pt)[Trattabili\ a caldo])

  // Foglie Alto carbonio e Alto-legati
  line((3.6, 1.1), (3.6, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((3.5, 0.75), (4.4, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((3.5, 0.75), (3.5, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((4.4, 0.75), (4.4, 0.4), stroke: (paint: red, thickness: 1.5pt))

  line((4.8, 1.5), (4.8, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((4.55, 0.75), (5.4, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((4.55, 0.75), (4.55, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((5.4, 0.75), (5.4, 0.4), stroke: (paint: red, thickness: 1.5pt))

  content((3.65, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((4.5, 0.15), text(size: 7pt)[Utensili])
  content((5.45, 0.15), text(size: 7pt)[Inossidabili])
})

Le principali grandezze meccaniche che caratterizzano il comportamento degli acciai sono:
- *Resistenza*: attitudine a sopportare i carichi applicati, determinata sperimentalmente mediante la prova di trazione.
- *Durezza*: resistenza locale che il materiale oppone alla penetrazione; viene misurata tramite prove sperimentali eseguite con una macchina di prova denominata *durometro*.
- *Duttilità o tenacità*: misura dell'energia di deformazione che il materiale è in grado di assorbire prima di giungere a rottura; un'indicazione quantitativa della tenacità è fornita dall'area complessiva sottesa dalla curva tensione-deformazione ($sigma$-$epsilon$) ricavata dalla prova di trazione.

=== Designazione normativa (UNI EN 10027)

La normativa *UNI EN 10027* stabilisce i criteri di classificazione e le sigle di designazione alfanumerica dei diversi tipi di acciaio. La designazione dipende dalla destinazione d'impiego, dalle caratteristiche meccaniche minime garantite e dalla composizione chimica (percentuale di carbonio e di elementi leganti):
- *Acciai non legati*: designati in base al tenore medio di carbonio (ad esempio `C40`, avente circa lo $0.40\%$ di carbonio);
- *Acciai da costruzione*: designati in base all'impiego strutturale e al carico unitario di snervamento minimo in $"MPa"$ (ad esempio `S355`);
- *Acciai legati da bonifica*: designati indicando il tenore di carbonio e i principali elementi di lega con i rispettivi fattori moltiplicativi (ad esempio `34CrMo4`).


// === Blocco_02_Slide_14-24 ===

== Acciai Inossidabili e Leghe Non Ferrose

=== Acciai Inossidabili

Fra gli acciai legati rivestono particolare importanza gli acciai inossidabili (comunemente detti _inox_, basati su leghe al Cromo-Molibdeno, $"CrMo"$). L'elemento fondamentale per la resistenza agli agenti atmosferici e chimici è il Cromo ($"Cr"$), il quale favorisce la protezione contro la corrosione attraverso il fenomeno della *passivazione*: a contatto con l'ossigeno atmosferico ($"O"_2$), il cromo forma un sottilissimo film superficiale di ossido di cromo, continuo e impermeabile all'ossigeno stesso, che impedisce l'ulteriore ossidazione del substrato metallico sottostante.

Anche il Molibdeno ($"Mo"$) contribuisce a ridurre la corrosione, ma il tenore che se ne aggiunge in lega rimane modesto per due ragioni principali: si tratta di un metallo costoso e la sua presenza rende la lega molto dura e, di conseguenza, difficile da lavorare alle macchine utensili.

#canvas(length: 1cm, {
  import draw: *
  
  // Substrato acciaio inossidabile
  rect((0, 0), (4.6, 0.65), fill: rgb(0, 180, 245), stroke: 0.7pt + black)
  content((2.3, 0.325), text(size: 7pt, fill: white, weight: "bold")[Acciaio inossidabile])
  
  // Film passivante di ossido di Cr
  rect((0, 0.65), (4.6, 0.92), fill: luma(130), stroke: 0.7pt + black)
  
  // Frecce ondulate di O2 incidenti dall'alto
  // Freccia 1 (x = 0.7)
  bezier((0.7, 2.0), (0.7, 1.75), (0.85, 1.92), (0.55, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((0.7, 1.75), (0.7, 1.5), (0.85, 1.67), (0.55, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((0.7, 1.5), (0.7, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((0.55, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia 2 (x = 2.3)
  bezier((2.3, 2.0), (2.3, 1.75), (2.45, 1.92), (2.15, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((2.3, 1.75), (2.3, 1.5), (2.45, 1.67), (2.15, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((2.3, 1.5), (2.3, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((2.15, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia 3 (x = 3.9)
  bezier((3.9, 2.0), (3.9, 1.75), (4.05, 1.92), (3.75, 1.83), stroke: 0.8pt + rgb(210, 50, 30))
  bezier((3.9, 1.75), (3.9, 1.5), (4.05, 1.67), (3.75, 1.58), stroke: 0.8pt + rgb(210, 50, 30))
  line((3.9, 1.5), (3.9, 1.05), stroke: 0.8pt + rgb(210, 50, 30), mark: (end: ">", size: 0.14))
  content((3.75, 1.6), text(size: 7pt, fill: rgb(210, 50, 30))[$"O"_2$], anchor: "east")
  
  // Freccia arancione verso etichetta strato passivante
  line((4.7, 0.82), (4.98, 0.82), (4.98, 0.88), (5.12, 0.785), (4.98, 0.69), (4.98, 0.75), (4.7, 0.75), close: true, fill: rgb(240, 100, 20), stroke: 0.5pt + rgb(160, 50, 0))
  
  // Testo descrittivo a destra
  content((5.25, 0.82), text(size: 7pt, weight: "bold")[Film di ossido di $"Cr"$ impermeabile all'$"O"_2$], anchor: "west")
  content((6.1, 0.48), text(size: 7pt, fill: rgb(30, 40, 160), weight: "bold")[(strato passivante)], anchor: "west")
})

In base alla loro microstruttura cristallina, gli acciai inossidabili si suddividono principalmente in due famiglie:
- *Acciai inossidabili austenitici*, caratterizzati da una superiore resistenza alla corrosione;
- *Acciai inossidabili martensitici*, che presentano caratteristiche più alto-resistenziali dal punto di vista meccanico.

=== Leghe di Alluminio

Le leghe di alluminio di impiego strutturale si suddividono principalmente in due categorie in funzione dell'elemento di lega principale:
- *Leghe Alluminio-Rame* ($"Cu" 3 div 5 %$): presentano una buona resistenza meccanica dopo il trattamento termico di bonifica, raggiungendo una tensione di rottura $R_m = 400 div 500 "MPa"$. Sono note con i nomi commerciali di _Avional_, _Duralluminio_ e _Recidal_, e trovano largo impiego nell'industria aeronautica e automobilistica (costruzione di veicoli).
- *Leghe Alluminio-Zinco* ($"Zn" 5 div 8 %$): la presenza dello zinco incrementa notevolmente la resistenza meccanica dopo bonifica, portando il carico di rottura a valori di $R_m = 500 div 700 "MPa"$, unitamente a una buona resistenza alla corrosione. Il nome commerciale di riferimento per questa classe è _Ergal_.

=== Titanio e Leghe di Titanio

L'impiego strutturale del titanio e delle sue leghe offre molteplici vantaggi ingegneristici:
- *Leggerezza*: presenta una massa inferiore del $40 %$ rispetto all'acciaio, con una densità pari a $4,5 "g/cm"^3$ contro i $7,9 "g/cm"^3$ dell'acciaio;
- *Eccellenti proprietà meccaniche* (elevata resistenza specifica);
- *Scarsa tossicità e ottima biocompatibilità*, che lo rendono ideale per applicazioni biomedicali e protesiche;
- *Assenza di proprietà magnetiche* (materiale amagnetico);
- *Buona resistenza agli acidi* e agli ambienti chimicamente aggressivi;
- *Buona trasmissione del calore*, sebbene con una conducibilità termica inferiore rispetto a quella degli acciai.

=== Magnesio e Leghe di Magnesio

Il magnesio e le leghe di magnesio si distinguono per i seguenti vantaggi applicativi:
- *Densità minima*: possiedono la minore densità ($1,8 "g/cm"^3$) rispetto a qualsiasi altro materiale metallico di impiego strutturale. In termini relativi, la loro densità è pari a circa $2 / 3$ di quella delle leghe di alluminio, $2 / 5$ di quella delle leghe di titanio e appena $1 / 5$ di quella dell'acciaio;
- *Elevata resistenza specifica* e *buona lavorabilità in getti* (fonderia);
- *Buona saldabilità* e *buona resistenza a corrosione*;
- *Migliore resistenza all'invecchiamento* rispetto ai materiali compositi a matrice polimerica.

=== Tabelle Riepilogative delle Proprietà dei Materiali Metallici

Di seguito si riportano i valori tipici del modulo di elasticità longitudinale $E$, del coefficiente di Poisson $nu$, della densità $rho$, della tensione di rottura $R_m$ e della tensione di snervamento (o limite di proporzionalità) $R_p$ per i principali acciai, ghise e leghe non ferrose.

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, center, center, center, center),
    table.header(
      [*Materiale*], [$E ["MPa"]$], [$nu$], [$rho ["kg/m"^3]$], [$R_m ["MPa"]$], [$R_p ["MPa"]$]
    ),
    table.hline(),
    [Acciai da costruzione], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$360 - 510$], [$235 - 350$],
    [Acciai non legati per getti], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$300 - 500$], [$200 - 350$],
    [Acciai per getti], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$400 - 600$], [$250 - 400$],
    [Acciai da bonifica], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$500 - 1100$], [$350 - 750$],
    [Acciai da cementazione], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$500 - 1500$], [$350 - 1000$],
    [Acciai speciali per molle], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$1200 - 1800$], [$900 - 1300$],
    [Acciai inossidabili], [$2,1 dot 10^5$], [$0,3$], [$7800$], [$600 - 1200$], [$400 - 900$],
    [Ghise], [$1,6 dot 10^5$], [$0,3$], [$7000$], [$350 - 500$], [---],
  ),
  caption: [Proprietà fisiche e meccaniche di acciai e ghise.]
)

#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto),
    align: (left, center, center, center, center, center),
    table.header(
      [*Lega*], [$E ["MPa"]$], [$nu$], [$rho ["kg/m"^3]$], [$R_m ["MPa"]$], [$R_p ["MPa"]$]
    ),
    table.hline(),
    [Al-Cu (Dural)], [$7,2 dot 10^4$], [$0,34$], [$2500$], [$400 - 500$], [$250 - 350$],
    [Al-Zn (Ergal)], [$7,2 dot 10^4$], [$0,34$], [$2500$], [$500 - 700$], [$450 - 500$],
    [Mg], [$4,6 dot 10^4$], [$0,34$], [$1700$], [$200 - 300$], [$160 - 250$],
    [Cu-St], [$1,1 dot 10^5$], [$0,3$], [$8000$], [$150 - 200$], [$300 - 400$],
    [Ti], [$1,1 dot 10^5$], [$0,34$], [$4500$], [$600 - 1200$], [$400 - 800$],
  ),
  caption: [Proprietà fisiche e meccaniche delle principali leghe non ferrose.]
)

= Comportamento Meccanico dei Materiali Compositi

== Definizione e Classificazione

Si definisce *materiale composito* la combinazione di due o più micro o macro-costituenti che differiscono nella forma e nella composizione chimica e che risultano reciprocamente insolubili. All'interno del sistema, uno dei costituenti prende il nome di *matrice* (fase continua), mentre gli altri costituiscono le *cariche* di rinforzo (fase dispersa); nella maggior parte delle applicazioni strutturali, tali cariche sono rappresentate da *fibre*.

I materiali compositi si distinguono in primo luogo in base alla natura chimico-fisica della matrice:
- *Compositi a matrice polimerica (PMC)*: caratterizzati da elevate proprietà meccaniche specifiche (rapporto resistenza/peso e rigidezza/peso);
- *Compositi a matrice metallica (MMC)*: progettati per offrire una resistenza meccanica migliorata alle alte temperature rispetto ai polimeri;
- *Compositi a matrice ceramica (CMC)*: sviluppati principalmente per ottenere una tenacità a frattura migliorata rispetto ai ceramici monolitici tradizionali.

In secondo luogo, i materiali compositi si classificano in base alla geometria e alla disposizione delle cariche di rinforzo, che determinano il grado di simmetria elastica del materiale:
- *Cariche sferiche*: generano materiali compositi con proprietà macroscopicamente *isotrope*;
- *Cariche irregolari*: danno luogo a compositi con proprietà *non isotrope* (anisotrope);
- *Cariche a piattello (lamellari)*: conferiscono proprietà *isotrope nel piano* di giacitura dei piattelli;
- *Fibre corte o lunghe*: utilizzate per realizzare compositi unidirezionali oppure laminati (anche sotto forma di tessuti bidimensionali 2D), i quali esibiscono proprietà *ortotrope*.

#nota[_[Figura nelle slide: fotografie a confronto tra fasci di fibre lunghe sciolte e nastri/tessuti bidimensionali (2D) di fibre lunghe intrecciate affiancati a un righello millimetrato]_]

== Tipologie di Fibre e Matrici Polimeriche

=== Fibre di Rinforzo

Le tipologie di fibre più diffuse nelle applicazioni strutturali sono tre:
1. *Fibre di vetro*: presentano un'ottima resistenza meccanica ($2 - 5 "GPa"$), un basso costo di produzione e una buona tenacità, ma sono penalizzate da un basso modulo elastico ($70 - 80 "GPa"$) e da una media densità ($2,5 - 2,8 "g/cm"^3$).
2. *Fibre di carbonio*: offrono un'ottima resistenza meccanica ($3,1 - 4,5 "GPa"$), un elevatissimo modulo elastico ($220 - 800 "GPa"$) e una bassa densità ($1,7 - 2,1 "g/cm"^3$), a fronte tuttavia di un alto costo e di una bassa tenacità (comportamento fragile agli urti).
3. *Fibre aramidiche* (note con i nomi commerciali _Kevlar_ e _Nomex_): coniugano un'ottima resistenza meccanica ($3,0 - 4,5 "GPa"$) con un'alta tenacità, un costo medio, un medio modulo elastico ($130 - 150 "GPa"$) e una densità molto bassa ($< 1,5 "g/cm"^3$).

=== Matrici Polimeriche

Le matrici polimeriche si suddividono in due grandi categorie:
- *Matrici termoindurenti*: tra le più utilizzate figurano le *resine epossidiche*, caratterizzate da buone proprietà meccaniche, ottima adesione chimico-fisica alle fibre e minore ritiro volumetrico durante la reticolazione, sebbene abbiano un costo elevato. Vengono impiegate prevalentemente in combinazione con fibre di carbonio e fibre aramidiche per la realizzazione di compositi pregiati (ad esempio nel settore aeronautico).
- *Matrici termoplastiche*: si utilizza ampiamente il *Nylon* (poliammidi $"PA6"$ o $"PA66"$) e trovano crescente diffusione i tecnopolimeri ad alte prestazioni, quali $"PEEK"$, $"PEI"$ e $"PPS"$.

== Risposta Meccanica del Manufatto Composito

Dal punto di vista costitutivo, la fibra considerata singolarmente esibisce un comportamento generalmente *fragile* (elastico lineare fino a rottura), mentre la matrice può presentare un comportamento sia *fragile* sia *duttile* a seconda della sua formulazione.

#nota[
Un manufatto realizzato in materiale composito presenta proprietà elastiche e resistenziali fortemente variabili in funzione della percentuale in volume (frazione volumetrica) di matrice e di fibra, nonché della direzione di applicazione del carico rispetto all'orientamento delle fibre. Al crescere della percentuale volumetrica di matrice, le proprietà meccaniche globali del manufatto decrescono notevolmente.
]

#canvas(length: 1cm, {
  import draw: *
  
  // Laminato composito a fibre lunghe orizzontali (alternanza matrice grigio-blu e fibre bianche)
  // Strati di matrice (6 strati grigio-blu) e 5 fibre bianche intermedie
  rect((-2.5, -0.78), (2.5, 0.78), fill: rgb(95, 115, 140), stroke: 0.7pt + black)
  
  // Fibre orizzontali bianche
  rect((-2.5, 0.48), (2.5, 0.64), fill: white, stroke: 0.5pt + black)
  rect((-2.5, 0.21), (2.5, 0.37), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.08), (2.5, 0.08), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.37), (2.5, -0.21), fill: white, stroke: 0.5pt + black)
  rect((-2.5, -0.64), (2.5, -0.48), fill: white, stroke: 0.5pt + black)
  
  // Contorno esterno del provino
  rect((-2.5, -0.78), (2.5, 0.78), fill: none, stroke: 0.8pt + black)
  
  // Frecce rosse longitudinali (direzione delle fibre - alta resistenza)
  // Freccia destra
  line((2.7, 0.16), (3.15, 0.16), (3.15, 0.42), (3.55, 0.0), (3.15, -0.42), (3.15, -0.16), (2.7, -0.16), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Freccia sinistra
  line((-2.7, 0.16), (-3.15, 0.16), (-3.15, 0.42), (-3.55, 0.0), (-3.15, -0.42), (-3.15, -0.16), (-2.7, -0.16), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Frecce rosse trasversali (direzione ortogonale alle fibre - governata dalla matrice)
  // Freccia superiore
  line((-0.13, 0.92), (-0.13, 1.22), (-0.38, 1.22), (0.0, 1.48), (0.38, 1.22), (0.13, 1.22), (0.13, 0.92), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
  
  // Freccia inferiore
  line((-0.13, -0.92), (-0.13, -1.22), (-0.38, -1.22), (0.0, -1.48), (0.38, -1.22), (0.13, -1.22), (0.13, -0.92), close: true, fill: rgb(245, 35, 10), stroke: 0.6pt + black)
})
