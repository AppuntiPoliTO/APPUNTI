#import "@preview/cetz:0.3.4": canvas, draw
#set page(
  paper: "a4",
  margin: 1.5cm,
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

#align(center)[
  #text(size: 16pt, weight: "bold")[Caratterizzazione a fatica e diagrammi fondamentali]
]
#v(0.2em)

= Dati sperimentali e diagrammi di fatica

== Dati sperimentali di base e dualismo materiale–componente

In campo statico, grandezze come il carico unitario di rottura $R_m$ e il limite di snervamento convenzionale $R_"p0.2"$ (o superiore $R_"eH"$ negli acciai con pianerottolo netto) misurate su un campione semplice valgono direttamente anche per il pezzo reale. A fatica questa equivalenza cade: scala dimensionale, geometria, intagli, finitura superficiale e processo tecnologico abbattono quasi sempre la resistenza del componente rispetto al campione (salvo specifici trattamenti superficiali compressivi).

La caratterizzazione sperimentale richiede quindi due livelli di prova. Si parte da *provette* normate (termine tecnico preferito al gergale *provino*), con forma e finitura controllate per isolare il comportamento del materiale; si passa poi a componenti in scala o al vero e a interi assiemi, come cellule aeronautiche testate su banchi multi-attuatore.

I dati di base si ricavano con sollecitazioni *nominali* (prive di intagli o concentrazioni locali di tensione), *uniassiali*, *cicliche* e ad *ampiezza costante*. Le prove multiassiali o ad ampiezza variabile restano invece riservate alle campagne industriali avanzate per riprodurre gli spettri reali di esercizio.

August Wöhler introdusse questa impostazione analizzando assali ferroviari e carrelli da miniera che cedevano ben al di sotto dei limiti statici. Le curve di *Wöhler* propriamente dette si riferiscono a prove all'inversione con tensione media nulla ($sigma_m = 0$, rapporto di ciclo $R = -1$), mentre la normativa anglosassone generalizza la rappresentazione nei diagrammi *S–N* (*Stress vs Number of cycles*) per qualunque livello dichiarato e costante di $sigma_m$.

Le prove standard operano tra $1" Hz"$ e circa $100" Hz"$, in funzione del tipo di sollecitazione e di macchina. Oltre tale soglia lo smorzamento isteretico interno dissipa più calore di quanto il campione riesca a cedere all'ambiente: la provetta si surriscalda durante il test e insorge un accoppiamento termo-meccanico che altera la risposta puramente meccanica del materiale.

== Diagramma S–N (curva di Wöhler) e regimi di fatica

La resistenza a fatica lega tre variabili: ampiezza di tensione alternata $sigma_a$, numero di cicli a rottura $N$ e tensione media $sigma_m$. Poiché la superficie tridimensionale nello spazio $(sigma_a, N, sigma_m)$ è scomoda da ricavare e da usare nei calcoli, la si seziona su due piani complementari: a $sigma_m$ costante (diagramma S–N) e a $N$ costante (diagramma di Haigh).

Fissando $sigma_m = "costante"$ si ottiene il *diagramma S–N*, con $log_10 N$ in ascissa e la componente alternata $sigma_a$ in ordinata (in scala lineare o logaritmica). Ogni curva presuppone anche una *temperatura di prova* $T$ costante e dichiarata, di norma quella ambiente di riferimento ($23.5^circ "C"$).

Al crescere di $T$, i legami interatomici si indeboliscono e il materiale diventa più cedevole, come già mostrano le curve statiche di trazione. L'intera curva S–N si abbassa e il limite di fatica $sigma_D$ cala, imponendo campagne termiche dedicate per gli organi destinati a lavorare a caldo.

#figure(
  canvas(length: 1.05cm, {
    // BBox: x in [-1.65, 10.1] (dx=11.75), y in [-1.15, 5.85], length=1.05cm -> larghezza = 12.34 cm <= 17.0 cm
    import draw: *

    // Assi principali
    line((0, 0), (9.4, 0), stroke: 0.9pt, mark: (end: ">", scale: 0.7))
    line((0, 0), (0, 5.0), stroke: 0.9pt, mark: (end: ">", scale: 0.7))
    content((9.52, 0), text(size: 9pt)[$N$], anchor: "west")
    content((-0.18, 4.92), text(size: 9pt)[$sigma_a$], anchor: "east")

    // Linee di riferimento verticali e orizzontali
    line((0.6, 0), (0.6, 4.25), stroke: (dash: "dotted", thickness: 0.6pt))
    line((3.1, 0), (3.1, 4.65), stroke: (dash: "dashed", thickness: 0.65pt))
    line((5.6, 0), (5.6, 0.12), stroke: 0.7pt)
    line((6.2, 0), (6.2, 4.65), stroke: (dash: "dashed", thickness: 0.65pt))
    line((0, 4.25), (0.6, 4.25), stroke: (dash: "dotted", thickness: 0.6pt))
    line((0, 3.65), (3.1, 3.65), stroke: (dash: "dotted", thickness: 0.6pt))
    line((0, 1.35), (6.2, 1.35), stroke: (dash: "dashed", thickness: 0.65pt))

    // Curva S-N nei tre regimi (acciai) + ramo inclinato leghe Al
    bezier((0.6, 4.25), (3.1, 3.65), (1.6, 4.22), (2.4, 3.92), stroke: 1.15pt)
    bezier((3.1, 3.65), (6.2, 1.35), (4.0, 3.08), (5.05, 1.85), stroke: 1.15pt)
    line((6.2, 1.35), (8.8, 1.35), stroke: 1.15pt)
    line((6.2, 1.35), (8.8, 0.95), stroke: (paint: rgb("#1f77b4"), dash: "dashed", thickness: 0.85pt))
    content((8.90, 0.95), text(size: 7.5pt, fill: rgb("#1f77b4"))[leghe Al], anchor: "west")

    // Punto di ginocchio
    circle((6.2, 1.35), radius: 0.075, fill: red, stroke: red)

    // Etichette assi e livelli tensionali
    content((-0.18, 4.25), text(size: 8.5pt)[$R_m$], anchor: "east")
    content((-0.18, 3.65), text(size: 8pt)[$0.8"–"0.9 thin R_m$], anchor: "east")
    content((-0.18, 1.35), text(size: 8.5pt)[$sigma_D$], anchor: "east")

    content((0.6, -0.20), text(size: 8.5pt)[$10^0$], anchor: "north")
    content((3.1, -0.20), text(size: 8.5pt)[$10^3$], anchor: "north")
    content((5.6, -0.20), text(size: 8.5pt)[$10^6$], anchor: "north")

    // Nota ginocchio
    line((6.2, -0.05), (6.2, -0.52), stroke: (paint: red, thickness: 0.55pt))
    content((6.2, -0.60), text(size: 8pt, fill: red)[$N_"ginocchio" approx 2 dot 10^6 " (acciai)," quad 10^7 " (leghe Al)"$], anchor: "north")

    // Delimitazioni e nomi dei regimi
    line((0.65, 4.65), (3.05, 4.65), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))
    content((1.85, 4.80), align(center, text(size: 8pt)[Fatica \ oligociclica]), anchor: "south")

    line((3.15, 5.25), (8.80, 5.25), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))
    content((5.98, 5.38), text(size: 8pt, weight: "bold")[Fatica ad alto numero di cicli], anchor: "south")

    content((4.65, 4.65), align(center, text(size: 8pt)[Resistenza \ *a termine*]), anchor: "center")
    content((7.50, 4.65), align(center, text(size: 8pt)[Resistenza \ *a vita infinita*]), anchor: "center")

    // Riquadro sigma_m e T costanti
    rect((6.65, 2.30), (9.35, 3.05), stroke: (paint: red, thickness: 0.8pt), fill: white)
    content((8.00, 2.675), align(center, text(size: 7.8pt, fill: red)[$sigma_m = "costante"$ \ $T = "costante"$]), anchor: "center")
  }),
  caption: [Diagramma S–N (curva di Wöhler per $sigma_m = 0$) con i tre regimi di fatica e il punto di ginocchio.],
)

Su un tracciato metallico tipico (come quello degli acciai) si distinguono tre regimi, governati da meccanismi fisici e criteri di progetto diversi:

- *Fatica oligociclica* ($10^0 lt.eq N lt.eq 10^3$): dal greco *oligos* ("poco"), scende dalla rottura statica ($R_m$) a $0.8"–"0.9 thin R_m$. Dominata dalla plasticità ciclica, si studia in deformazione ($varepsilon$) ed è spesso omessa nei diagrammi ad alto numero di cicli.
- *Resistenza a termine* ($10^3 < N < N_"ginocchio"$): la tensione ammissibile $sigma_a$ decade rapidamente al crescere di $N$. A ogni livello di carico corrisponde una durata limite finita $overline(N)$, espressa in cicli oppure in ore di servizio (come nei cuscinetti volventi).
- *Resistenza a vita infinita* ($N gt.eq N_"ginocchio"$): oltre il *ginocchio* la pendenza si abbatte. Negli acciai ($N_"ginocchio" approx 2 dot 10^6$) compare un asintoto orizzontale al *limite di fatica* $sigma_D$; nelle leghe di alluminio il ginocchio si sposta verso $10^7$ cicli mantenendo una lieve pendenza residua.

Se il materiale possiede un vero asintoto orizzontale, qualsiasi ciclo con $sigma_a < sigma_D$ evita la rottura per fatica indipendentemente dal numero di cicli. La verifica diventa allora analoga a quella statica, ma confronta la tensione di lavoro con il limite $sigma_D$, molto più basso di $R_m$ e $R_"p0.2"$.

Nella regione a termine, invece, il progettista entra in ordinata con la tensione alternata nominale $sigma_a$ e legge sulla curva la vita ammissibile $overline(N)$: se la durata richiesta in esercizio supera $overline(N)$, occorre ridurre le tensioni o scendere sotto $sigma_D$.

== Architetture di prova e condizioni standard

Le norme definiscono schemi di prova capaci di imporre cicli controllati con macchine semplici ed economiche. La soluzione di riferimento per i cicli alterni simmetrici ($sigma_m = 0$) è la *flessione rotante*, in cui il carico rimane statico mentre ruota il provino.

#figure(
  canvas(length: 1.05cm, {
    // BBox: x in [-0.2, 14.3] (dx=14.5), y in [-0.45, 7.95], length=1.05cm -> larghezza = 15.22 cm <= 17.0 cm
    import draw: *

    // --- FASCIA SUPERIORE: sezione rotante, diagramma sigma e ciclo sinusoidale ---
    // Sezione circolare
    circle((3.3, 6.2), radius: 1.1, stroke: 1pt, fill: white)
    line((1.95, 6.2), (8.35, 6.2), stroke: (dash: "dashed", thickness: 0.6pt))
    line((3.3, 4.9), (3.3, 7.5), stroke: (dash: "dashed", thickness: 0.6pt))
    arc((3.3, 6.2), start: 115deg, stop: 225deg, radius: 0.65, anchor: "origin", mark: (end: ">", scale: 0.6), stroke: 0.75pt)
    content((3.02, 5.90), text(size: 8pt)[$omega$], anchor: "center")
    circle((2.52, 6.98), radius: 0.08, fill: rgb("#2e7d32"), stroke: 0.6pt)
    content((2.38, 7.08), text(size: 7.5pt, fill: rgb("#2e7d32"), weight: "bold")[$P_0$], anchor: "south-east")

    // Linee di proiezione dalla sezione alla distribuzione lineare
    line((3.3, 7.3), (7.25, 7.3), stroke: (dash: "dotted", thickness: 0.6pt))
    line((3.3, 5.1), (5.35, 5.1), stroke: (dash: "dotted", thickness: 0.6pt))

    // Distribuzione lineare delle tensioni
    line((6.3, 6.2), (6.3, 7.3), (7.25, 7.3), close: true, fill: black.transparentize(86%), stroke: 0.85pt)
    line((6.3, 6.2), (6.3, 5.1), (5.35, 5.1), close: true, fill: black.transparentize(86%), stroke: 0.85pt)
    line((6.3, 4.95), (6.3, 7.45), stroke: 0.75pt)
    line((5.35, 5.1), (7.25, 7.3), stroke: 1.05pt)
    content((7.25, 7.42), text(size: 8pt)[$+sigma_"max"$], anchor: "south")
    content((5.35, 4.98), text(size: 8pt)[$-sigma_"max"$], anchor: "north")

    // Ciclo sinusoidale sigma(t)
    line((8.9, 4.85), (8.9, 7.70), stroke: 0.85pt, mark: (end: ">", scale: 0.65))
    line((8.7, 6.20), (13.7, 6.20), stroke: 0.85pt, mark: (end: ">", scale: 0.65))
    content((8.75, 7.65), text(size: 8.5pt)[$sigma$], anchor: "east")
    content((13.8, 6.20), text(size: 8.5pt)[$t$], anchor: "west")
    line((8.9, 7.3), (13.2, 7.3), stroke: (dash: "dotted", thickness: 0.6pt))
    line((8.9, 5.1), (13.2, 5.1), stroke: (dash: "dotted", thickness: 0.6pt))

    bezier((8.9, 6.2), (9.9, 6.2), (9.23, 7.666), (9.57, 7.666), stroke: (paint: blue, thickness: 1.05pt))
    bezier((9.9, 6.2), (10.9, 6.2), (10.23, 4.734), (10.57, 4.734), stroke: (paint: blue, thickness: 1.05pt))
    bezier((10.9, 6.2), (11.9, 6.2), (11.23, 7.666), (11.57, 7.666), stroke: (paint: blue, thickness: 1.05pt))
    bezier((11.9, 6.2), (12.9, 6.2), (12.23, 4.734), (12.57, 4.734), stroke: (paint: blue, thickness: 1.05pt))

    // --- FASCIA INFERIORE SINISTRA: provetta su 4 appoggi ---
    line((0.58, 3.25), (6.55, 3.25), stroke: (dash: "dashed", thickness: 0.6pt))
    arc((0.65, 3.25), start: 110deg, stop: 250deg, radius: (0.16, 0.35), anchor: "origin", mark: (end: ">", scale: 0.55), stroke: 0.75pt)
    content((0.30, 3.25), text(size: 8pt)[$omega$], anchor: "east")

    // Contorno provetta 4 appoggi
    line((0.85, 3.42), (1.95, 3.42), (2.30, 3.35), (4.70, 3.35), (5.05, 3.42), (6.15, 3.42),
         (6.15, 3.08), (5.05, 3.08), (4.70, 3.15), (2.30, 3.15), (1.95, 3.08), (0.85, 3.08),
         close: true, fill: black.transparentize(88%), stroke: 0.95pt)

    // Cuscinetti (4 appoggi)
    for bx in (1.15, 1.75, 5.25, 5.85) {
      rect((bx - 0.14, 3.42), (bx + 0.14, 3.64), fill: white, stroke: 0.7pt)
      line((bx - 0.14, 3.42), (bx + 0.14, 3.64), stroke: 0.55pt)
      line((bx - 0.14, 3.64), (bx + 0.14, 3.42), stroke: 0.55pt)
      rect((bx - 0.14, 2.86), (bx + 0.14, 3.08), fill: white, stroke: 0.7pt)
      line((bx - 0.14, 2.86), (bx + 0.14, 3.08), stroke: 0.55pt)
      line((bx - 0.14, 3.08), (bx + 0.14, 2.86), stroke: 0.55pt)
    }
    // Vincoli fissi esterni (appoggi 1.15 e 5.85)
    for gx in (1.15, 5.85) {
      line((gx - 0.24, 2.86), (gx + 0.24, 2.86), stroke: 0.8pt)
      line((gx - 0.20, 2.86), (gx - 0.30, 2.74), stroke: 0.55pt)
      line((gx - 0.05, 2.86), (gx - 0.15, 2.74), stroke: 0.55pt)
      line((gx + 0.10, 2.86), (gx + 0.00, 2.74), stroke: 0.55pt)
      line((gx + 0.24, 2.86), (gx + 0.14, 2.74), stroke: 0.55pt)
    }
    // Carichi P interni (1.75 e 5.25)
    for px in (1.75, 5.25) {
      line((px, 2.86), (px, 2.25), stroke: 0.9pt, mark: (end: ">", scale: 0.65))
      content((px, 2.18), text(size: 8pt)[$P$], anchor: "north")
      line((px, 2.00), (px, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
    }

    // Diagramma momento flettente M_f (4 appoggi)
    line((1.15, 1.35), (1.75, 0.50), (5.25, 0.50), (5.85, 1.35), close: true, fill: black.transparentize(82%), stroke: 0.9pt)
    content((3.50, 0.92), text(size: 8pt)[$M_f = "cost."$], anchor: "center")
    content((3.50, 0.05), text(size: 8pt, weight: "bold")[Provetta su quattro appoggi], anchor: "north")

    // --- FASCIA INFERIORE DESTRA: provetta a sbalzo ---
    line((8.38, 3.25), (14.15, 3.25), stroke: (dash: "dashed", thickness: 0.6pt))
    arc((8.45, 3.25), start: 110deg, stop: 250deg, radius: (0.16, 0.35), anchor: "origin", mark: (end: ">", scale: 0.55), stroke: 0.75pt)
    content((8.10, 3.25), text(size: 8pt)[$omega$], anchor: "east")

    // Contorno provetta a sbalzo sagomata
    line((8.65, 3.42), (10.50, 3.42), (11.15, 3.34), (11.80, 3.34), (12.35, 3.40), (13.85, 3.40),
         (13.85, 3.10), (12.35, 3.10), (11.80, 3.16), (11.15, 3.16), (10.50, 3.08), (8.65, 3.08),
         close: true, fill: black.transparentize(88%), stroke: 0.95pt)

    // Cuscinetti di incastro (9.05, 10.05) e carico (13.55)
    for bx in (9.05, 10.05) {
      rect((bx - 0.14, 3.42), (bx + 0.14, 3.64), fill: white, stroke: 0.7pt)
      line((bx - 0.14, 3.42), (bx + 0.14, 3.64), stroke: 0.55pt)
      line((bx - 0.14, 3.64), (bx + 0.14, 3.42), stroke: 0.55pt)
      rect((bx - 0.14, 2.86), (bx + 0.14, 3.08), fill: white, stroke: 0.7pt)
      line((bx - 0.14, 2.86), (bx + 0.14, 3.08), stroke: 0.55pt)
      line((bx - 0.14, 3.08), (bx + 0.14, 2.86), stroke: 0.55pt)
      line((bx - 0.24, 2.86), (bx + 0.24, 2.86), stroke: 0.8pt)
      line((bx - 0.20, 2.86), (bx - 0.30, 2.74), stroke: 0.55pt)
      line((bx - 0.05, 2.86), (bx - 0.15, 2.74), stroke: 0.55pt)
      line((bx + 0.10, 2.86), (bx + 0.00, 2.74), stroke: 0.55pt)
      line((bx + 0.24, 2.86), (bx + 0.14, 2.74), stroke: 0.55pt)
    }
    rect((13.41, 3.40), (13.69, 3.62), fill: white, stroke: 0.7pt)
    line((13.41, 3.40), (13.69, 3.62), stroke: 0.55pt)
    line((13.41, 3.62), (13.69, 3.40), stroke: 0.55pt)
    rect((13.41, 2.88), (13.69, 3.10), fill: white, stroke: 0.7pt)
    line((13.41, 2.88), (13.69, 3.10), stroke: 0.55pt)
    line((13.41, 3.10), (13.69, 2.88), stroke: 0.55pt)

    line((13.55, 2.88), (13.55, 2.25), stroke: 0.9pt, mark: (end: ">", scale: 0.65))
    content((13.55, 2.18), text(size: 8pt)[$P$], anchor: "north")

    // Diagramma momento flettente triangolare (sbalzo) + proiezione gola
    line((10.05, 2.65), (10.05, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
    line((11.475, 3.16), (11.475, 0.85), stroke: (dash: "dashed", paint: red.transparentize(20%), thickness: 0.55pt))
    line((13.55, 2.00), (13.55, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
    line((9.05, 1.35), (10.05, 0.50), (13.55, 1.35), close: true, fill: black.transparentize(82%), stroke: 0.9pt)
    content((10.85, 0.98), text(size: 8pt)[$M_f$], anchor: "center")
    content((11.30, 0.05), text(size: 8pt, weight: "bold")[Provetta a sbalzo], anchor: "north")
  }),
  caption: [Prove in flessione rotante: ciclo sinusoidale di una fibra periferica $P_0$ (in alto) e confronto fra configurazione su quattro appoggi e a sbalzo (in basso).],
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
      canvas(length: 1.00cm, {
        // BBox: x in [-0.2, 7.3] (dx=7.5), y in [0.15, 4.35], length=1.00cm -> larghezza = 7.50 cm <= 8.2 cm
        import draw: *

        // Incastro a sinistra
        rect((0.15, 2.65), (0.50, 3.85), fill: black.transparentize(82%), stroke: 0.9pt)
        for hy in (2.75, 2.95, 3.15, 3.35, 3.55, 3.75) {
          line((0.15, hy), (0.00, hy - 0.14), stroke: 0.6pt)
        }
        content((0.32, 3.98), text(size: 7.5pt)[Incastro], anchor: "south")

        // Provetta a sbalzo + posizioni limite tratteggiate
        line((0.50, 3.25), (4.35, 3.25), stroke: (dash: "dashed", thickness: 0.55pt))
        bezier((0.50, 3.25), (4.35, 3.70), (2.0, 3.26), (3.3, 3.45), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
        bezier((0.50, 3.25), (4.35, 2.80), (2.0, 3.24), (3.3, 3.05), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
        rect((0.50, 3.13), (4.35, 3.37), fill: black.transparentize(86%), stroke: 0.95pt)
        content((2.40, 3.55), text(size: 8pt)[Provetta], anchor: "south")

        // Freccia oscillazione
        line((4.65, 2.82), (4.65, 3.68), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))

        // Disco rotante eccentrico e biella
        circle((4.60, 1.45), radius: 0.65, fill: black.transparentize(92%), stroke: 0.85pt)
        circle((4.60, 1.45), radius: 0.045, fill: black, stroke: black)
        line((4.60, 1.45), (4.90, 1.85), stroke: (paint: blue, thickness: 1.0pt))

        // Biella dalla provetta al bottone di manovella
        line((4.35, 3.25), (4.90, 1.85), stroke: 1.35pt)
        circle((4.35, 3.25), radius: 0.075, fill: white, stroke: 0.9pt)
        circle((4.90, 1.85), radius: 0.075, fill: white, stroke: 0.9pt)

        // Rotazione omega (in basso, separata dalla linea di quota)
        arc((4.60, 1.45), start: -135deg, stop: -45deg, radius: 0.85, anchor: "origin", mark: (end: ">", scale: 0.6), stroke: 0.75pt)
        content((4.60, 0.42), text(size: 8pt)[$omega$], anchor: "north")

        // Regolazione componente media
        line((4.60, 1.45), (6.15, 1.45), stroke: (dash: "dotted", thickness: 0.6pt))
        line((6.15, 0.90), (6.15, 2.00), stroke: 0.7pt, mark: (start: ">", end: ">", scale: 0.6))
        content((6.15, 2.12), align(center, text(size: 7.5pt)[Regolazione \ comp. media]), anchor: "south")

        // Regolazione componente alternata (punta direttamente al raggio eccentrico)
        line((3.30, 1.65), (4.68, 1.68), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", fill: blue, scale: 0.55))
        content((3.20, 1.65), align(right, text(size: 7.5pt)[Regolazione \ comp. alternata]), anchor: "east")
      }),
      caption: [Schema cinematico della prova in flessione piana.],
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

== Dispersione statistica, metodo stair-case e stime empiriche

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
      canvas(length: 1.42cm, {
        // BBox: x in [-0.95, 4.35] (dx=5.30), y in [-0.85, 4.05], length=1.42cm -> larghezza = 7.53 cm <= 8.2 cm
        import draw: *

        // Riquadro assi principali (x = log10(N) - 4, y = (sigma_a - 10)/30)
        rect((0, 0), (4.0, 3.85), stroke: 0.9pt)

        // Ticks asse X (10^4 .. 10^8)
        for (xval, lbl) in ((0, $10^4$), (1, $10^5$), (2, $10^6$), (3, $10^7$), (4, $10^8$)) {
          line((xval, 0), (xval, -0.07), stroke: 0.7pt)
          line((xval, 3.85), (xval, 3.78), stroke: 0.55pt)
          content((xval, -0.12), anchor: "north", text(size: 7pt)[#lbl])
        }
        content((2.0, -0.40), anchor: "north", text(size: 7.5pt)[$N$])

        // Ticks asse Y (20 .. 120 MPa)
        for s in (20, 40, 60, 80, 100, 120) {
          let yval = (s - 10) / 30
          line((0, yval), (-0.07, yval), stroke: 0.7pt)
          line((4.0, yval), (3.93, yval), stroke: 0.55pt)
          content((-0.11, yval), anchor: "east", text(size: 7pt)[#s])
        }
        content((-0.68, 1.92), angle: 90deg, anchor: "center", text(size: 7.5pt)[$sigma_a$ (MPa)])

        // Riquadro parametri prova
        content((3.85, 3.68), anchor: "north-east", text(size: 7pt)[
          #align(right)[
            M12 \
            $sigma_m = 230$ MPa \
            Weibull-2p
          ]
        ])

        // Punti di rottura (x) distribuiti attorno a B50 tra B10 e B90
        let xpts = (
          (0.97, 3.33), (1.07, 3.33), (1.15, 3.33), (1.25, 3.33),
          (1.50, 2.33), (1.62, 2.33), (1.71, 2.33), (1.80, 2.33), (1.91, 2.33),
          (1.86, 1.67), (1.99, 1.67), (2.11, 1.67), (2.26, 1.67),
          (2.04, 1.33), (2.18, 1.33), (2.31, 1.33), (2.48, 1.33),
          (2.20, 1.00), (2.36, 1.00),
          (2.34, 0.76),
        )
        for (px, py) in xpts {
          let d = 0.045
          line((px - d, py - d), (px + d, py + d), stroke: 0.75pt)
          line((px - d, py + d), (px + d, py - d), stroke: 0.75pt)
        }

        // Run-outs (o) a troncamento N = 10^7
        let opts = (
          (3.00, 1.33), (2.88, 1.00), (3.02, 1.00), (3.00, 0.67), (3.00, 0.33),
        )
        for (px, py) in opts {
          circle((px, py), radius: 0.048, fill: white, stroke: 0.75pt + rgb("#1f77b4"))
        }

        // Curve iso-probabilità Weibull (B90, B50, B10)
        line((1.18, 3.45), (2.38, 1.55), (4.0, 1.55), stroke: (paint: black.transparentize(35%), thickness: 0.85pt, dash: "dashed"))
        content((3.42, 1.62), anchor: "south", text(size: 7pt)[$B_90$])

        line((1.05, 3.45), (2.38, 1.15), (4.0, 1.15), stroke: (paint: black, thickness: 1.0pt))
        content((3.42, 1.22), anchor: "south", text(size: 7pt, weight: "bold")[$B_50$])

        line((0.92, 3.45), (2.38, 0.72), (4.0, 0.72), stroke: (paint: rgb("#1f77b4"), thickness: 1.0pt))
        content((3.42, 0.79), anchor: "south", text(size: 7pt, fill: rgb("#1f77b4"), weight: "bold")[$B_10$])

        // Legenda inferiore
        line((0.35 - 0.045, -0.72 - 0.045), (0.35 + 0.045, -0.72 + 0.045), stroke: 0.75pt)
        line((0.35 - 0.045, -0.72 + 0.045), (0.35 + 0.045, -0.72 - 0.045), stroke: 0.75pt)
        content((0.48, -0.72), anchor: "west", text(size: 7pt)[rotture])

        circle((1.75, -0.72), radius: 0.048, fill: white, stroke: 0.75pt + rgb("#1f77b4"))
        content((1.88, -0.72), anchor: "west", text(size: 7pt)[*run-outs* (non rotture)])
      }),
      caption: [Fascia di dispersione S–N e curve iso-probabilità di Weibull $B_90$, $B_50$ e $B_10$.],
    )
  ],
)

#v(0.5em)

Nel progetto ordinario si usa la curva mediana $B_50$ (50% di probabilità di rottura), affidando le incertezze al coefficiente di sicurezza; nei settori ad alta affidabilità o vincolati da prassi normativa, come i cuscinetti a corpi volventi, si adotta direttamente la curva conservativa $B_10$ (90% di sopravvivenza).

=== Il metodo stair-case (Dixon–Mood)

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
      canvas(length: 0.96cm, {
        // BBox: x in [-0.10, 9.60] (dx=9.70), y in [0.00, 6.20], length=0.96cm -> larghezza = 9.31 cm <= 10.0 cm
        import draw: *

        let x_e1 = 0.0
        let x_e0 = 0.55
        let x_sig = 1.10
        let x_p0 = 1.95
        let pw = 0.50
        let x_end = x_p0 + 15 * pw // 9.45

        // Griglia principale stair-case (y da 2.75 a 6.05)
        let rows_y = (6.05, 5.60, 5.15, 4.77, 4.37, 3.97, 3.57, 3.17, 2.75)

        // Campiture righe intestazione e totali
        rect((0, 5.60), (x_end, 6.05), fill: black.transparentize(92%), stroke: none)
        rect((0, 4.77), (x_end, 5.60), fill: black.transparentize(95%), stroke: none)
        rect((0, 2.75), (x_end, 3.17), fill: black.transparentize(92%), stroke: none)

        // Linee orizzontali
        for yv in rows_y {
          line((0, yv), (x_end, yv), stroke: 0.65pt)
        }
        // Linee verticali principali
        line((0, 2.75), (0, 6.05), stroke: 0.8pt)
        line((x_e0, 2.75), (x_e0, 5.15), stroke: 0.6pt)
        line((x_sig, 2.75), (x_sig, 5.60), stroke: 0.75pt)
        line((x_p0, 2.75), (x_p0, 5.60), stroke: 0.8pt)
        line((x_end, 2.75), (x_end, 6.05), stroke: 0.8pt)

        // Linee verticali provini 1..15 (separate per header numeri 1..15 e celle dati)
        for k in range(1, 15) {
          let xk = x_p0 + k * pw
          line((xk, 5.15), (xk, 5.60), stroke: 0.45pt + black.transparentize(30%))
          line((xk, 3.17), (xk, 4.77), stroke: 0.45pt + black.transparentize(30%))
        }

        // Testata
        content((x_end / 2, 5.825), anchor: "center", text(size: 7pt, weight: "bold")[
          M8 "senza difetti" #h(0.8em) $sigma_m = 400$ MPa #h(0.8em) $d = 10$ MPa #h(0.8em) $N = 5 dot.op 10^6$
        ])
        content((x_sig / 2, 5.375), anchor: "center", text(size: 6.8pt, weight: "bold")[esito])
        content(((x_sig + x_p0) / 2, 5.375), anchor: "center", text(size: 7pt, weight: "bold")[$sigma_a$])
        content((0.275, 4.96), anchor: "center", text(size: 7pt, fill: rgb("#b02a2a"), weight: "bold")[1])
        content((0.825, 4.96), anchor: "center", text(size: 7pt, fill: rgb("#1f77b4"), weight: "bold")[0])
        content(((x_sig + x_p0) / 2, 4.96), anchor: "center", text(size: 6.8pt)[MPa])
        content(((x_p0 + x_end) / 2, 4.96), anchor: "center", text(size: 6.5pt)[1 = Rotta ; #h(0.5em) 0 = Non rotta])

        for p in range(1, 16) {
          let xp = x_p0 + (p - 0.5) * pw
          content((xp, 5.375), anchor: "center", text(size: 6.8pt)[#p])
        }

        // Livelli di tensione e totali per riga
        let row_data = (
          (4.57, "3", "0", "60"),
          (4.17, "4", "3", "50"),
          (3.77, "1", "3", "40"),
          (3.37, "0", "1", "30"),
        )
        for (yc, c1, c0, sig) in row_data {
          content((0.275, yc), anchor: "center", text(size: 7pt)[#c1])
          content((0.825, yc), anchor: "center", text(size: 7pt)[#c0])
          content(((x_sig + x_p0) / 2, yc), anchor: "center", text(size: 7pt, weight: "bold")[#sig])
        }

        // Sequenza stair-case (provino 1..15)
        let seq = (
          (1, 4.17, 1), (2, 3.77, 0), (3, 4.17, 1), (4, 3.77, 1), (5, 3.37, 0),
          (6, 3.77, 0), (7, 4.17, 1), (8, 3.77, 0), (9, 4.17, 0), (10, 4.57, 1),
          (11, 4.17, 0), (12, 4.57, 1), (13, 4.17, 0), (14, 4.57, 1), (15, 4.17, 1),
        )
        let pts = ()
        for (p, yc, val) in seq {
          pts.push((x_p0 + (p - 0.5) * pw, yc))
        }
        line(..pts, stroke: (paint: black.transparentize(72%), thickness: 0.7pt))

        for (p, yc, val) in seq {
          let xp = x_p0 + (p - 0.5) * pw
          let col = if val == 1 { rgb("#b02a2a") } else { rgb("#1f77b4") }
          content((xp, yc), anchor: "center", text(size: 7pt, fill: col, weight: "bold")[#val])
        }

        // Riga totali
        content((0.275, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[8])
        content((0.825, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[7])
        content(((x_sig + x_p0) / 2, 2.96), anchor: "center", text(size: 7pt, weight: "bold")[tot])
        content(((x_p0 + x_end) / 2, 2.96), anchor: "center", text(size: 7pt)[
          Evento meno frequente: #text(fill: rgb("#1f77b4"), weight: "bold")[Non rotta (0)]
        ])

        // Blocco inferiore sinistro: sintesi somme
        rect((0, 0.20), (4.45, 2.25), fill: black.transparentize(96%), stroke: 0.65pt)
        content((0.22, 1.92), anchor: "west", text(size: 7pt, weight: "bold")[Riepilogo evento meno frequente])
        content((0.22, 1.48), anchor: "west", text(size: 7pt)[Esiti non rotti: $N = sum n_i = 7$])
        content((0.22, 1.02), anchor: "west", text(size: 7pt)[Momento primo: $A = sum i n_i = 9$])
        content((0.22, 0.56), anchor: "west", text(size: 7pt)[Momento secondo: $B = sum i^2 n_i = 15$])

        // Blocco inferiore destro: tabella i, n, i*n, i^2*n
        let tx = (4.85, 5.80, 6.70, 7.60, 8.50, 9.45)
        let ty = (2.25, 1.84, 1.43, 1.02, 0.61, 0.20)
        rect((tx.at(0), ty.at(1)), (tx.at(5), ty.at(0)), fill: black.transparentize(92%), stroke: none)
        for yv in ty {
          line((tx.at(0), yv), (tx.at(5), yv), stroke: 0.65pt)
        }
        for xv in tx {
          line((xv, ty.at(5)), (xv, ty.at(0)), stroke: 0.65pt)
        }

        let headers = ($sigma_a$, $i$, $n$, $i n$, $i^2 n$)
        for idx in range(5) {
          let xc = (tx.at(idx) + tx.at(idx + 1)) / 2
          content((xc, 2.045), anchor: "center", text(size: 7pt, weight: "bold")[#headers.at(idx)])
        }

        let sum_rows = (
          ("60", "3", "0", "0", "0"),
          ("50", "2", "3", "6", "12"),
          ("40", "1", "3", "3", "3"),
          ("30", "0", "1", "0", "0"),
        )
        for r in range(4) {
          let yc = (ty.at(r + 1) + ty.at(r + 2)) / 2
          for c in range(5) {
            let xc = (tx.at(c) + tx.at(c + 1)) / 2
            content((xc, yc), anchor: "center", text(size: 7pt)[#sum_rows.at(r).at(c)])
          }
        }
      }),
      caption: [Sequenza sperimentale e tabulazione dei momenti statistici nel metodo *stair-case* (Dixon–Mood).],
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

=== Stime empiriche preliminari dalla resistenza statica

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

== Influenza della tensione media e diagramma di Haigh

=== Effetto della tensione media sul limite di fatica

Sovrapponendo una tensione media statica $sigma_m$, il limite di fatica cambia sensibilmente: in trazione ($sigma_m > 0$) lo sforzo medio apre i microdifetti superficiali e abbatte rapidamente l'ampiezza ammissibile $sigma_a$ fino ad annullarla a $R_m$.

Nei dati su acciaio raccolti da Collins, passare dal ciclo simmetrico ($sigma_m = 0$) a una tensione media di trazione di $60 thin 000$ psi ($approx 400$ MPa) quasi dimezza il limite a vita infinita. In compressione ($sigma_m < 0$), al contrario, la resistenza cresce leggermente perché il carico statico ostacola l'apertura della cricca, almeno finché non subentra la plasticizzazione.

Per lavorare sul piano anziché sulla superficie 3D, alla curva S–N (sezione a $sigma_m$ costante) si affianca in coppia il *diagramma di Haigh*, ottenuto sezionando la superficie a numero di cicli $N$ costante.

=== Costruzione del diagramma di Haigh e retta di Goodman

Il diagramma di Haigh riporta $sigma_m$ in ascissa e la tensione alternata limite $sigma_a$ in ordinata per un fissato numero di cicli (tipicamente $N = 2 dot.op 10^6$ negli acciai). In trazione ($sigma_m > 0$), la nuvola sperimentale delle rotture segue un andamento concavo verso l'origine, interpolabile in media con la *parabola di Gerber* $sigma_D \/ sigma_(D-1) + (sigma_m \/ R_m)^2 = 1$.

Interpolando il centro della nuvola, però, la parabola di Gerber richiede molti punti sperimentali e lascia circa metà delle rotture *al di sotto* della curva (lato insicuro). Goodman adotta quindi una retta cautelativa che sottende l'intera fascia dei cedimenti congiungendo due soli valori noti: il limite alterno simmetrico $(0, sigma_(D-1))$ e la rottura statica $(R_m, 0)$:

$ frac(sigma_D, sigma_(D-1)) + frac(sigma_m, R_m) = 1 arrow.r.double sigma_D = sigma_(D-1) - frac(sigma_(D-1), R_m) sigma_m $

Qui $sigma_D$ è l'ordinata limite sulla retta di confine corrispondente all'ascissa operativa $sigma_m$, mentre il rapporto $sigma_(D-1) \/ R_m$ è un fattore di scala che rende omogenea la componente statica $sigma_m$ a quella alternata.

Con i soli tre parametri $sigma_(D-1)$, $R_"p0.2"$ e $R_m$, il diagramma si traccia subito anche su carta quadrettata per una prima verifica d'officina. Dato il punto di lavoro $(sigma_m, sigma_a)$, la norma ISO confronta direttamente l'ampiezza applicata $sigma_a$ con l'ordinata limite $sigma_D$ letta sulla verticale a $sigma_m$ costante ($sigma_a < sigma_D$).

#figure(
  caption: [Diagramma di Haigh completo in trazione e compressione con retta di Goodman, limiti di snervamento a $plus.minus 45^circ$, triangolo di plasticizzazione e punto di lavoro.],
  canvas(length: 1.35cm, {
    // BBox: x in [-4.55, 4.75] (dx=9.30), y in [-0.65, 4.68], length=1.35cm -> larghezza = 12.56 cm <= 17.0 cm
    import draw: *

    let rm = 4.0
    let rp = 3.0
    let sd = 1.6
    // Intersezione Goodman-snervamento trazione: (2.333, 0.667)
    let x_gt = 2.333
    let y_gt = 0.667
    // Intersezione plateau-snervamento compressione: (-1.40, 1.60)
    let x_pc = -1.40

    // Triangolo di plasticizzazione (sicuro a fatica, plasticizzato staticamente)
    line(
      (x_gt, y_gt), (rm, 0), (rp, 0),
      close: true,
      fill: orange.transparentize(82%),
      stroke: none,
    )

    // Poligono di sicurezza campito (fatica + snervamento)
    line(
      (-rp, 0), (x_pc, sd), (0, sd), (x_gt, y_gt), (rp, 0),
      close: true,
      fill: black.transparentize(86%),
      stroke: 1.2pt,
    )

    // Assi principali
    line((-4.45, 0), (4.55, 0), stroke: 0.9pt, mark: (end: ">", fill: black, scale: 0.75))
    line((0, -0.15), (0, 4.52), stroke: 0.9pt, mark: (end: ">", fill: black, scale: 0.75))
    content((4.58, -0.12), anchor: "north", text(size: 8.5pt)[$sigma_m$])
    content((0, 4.58), anchor: "south", text(size: 8.5pt)[$sigma_a$])

    // Inviluppo statico Rm (45 deg esterno)
    line((-rm, 0), (0, rm), (rm, 0), stroke: (paint: black.transparentize(55%), thickness: 0.65pt, dash: "dotted"))

    // Prosecuzioni rette di snervamento a 45 deg
    line((x_pc, sd), (0, rp), stroke: (dash: "dashed", thickness: 0.75pt))
    line((0, rp), (x_gt, y_gt), stroke: (dash: "dashed", thickness: 0.75pt))

    // Prosecuzione retta di Goodman
    line((x_gt, y_gt), (rm, 0), stroke: (dash: "dashed", thickness: 0.85pt))

    // Parabola di Gerber (17 punti da x=0 a x=rm)
    let gerber = ()
    for k in range(0, 17) {
      let xk = rm * k / 16
      let yk = sd * (1 - (xk / rm) * (xk / rm))
      gerber.push((xk, yk))
    }
    line(..gerber, stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))

    // Punti sperimentali indicativi intorno alla parabola di Gerber
    let exp_pts = ((0.45, 1.56), (0.95, 1.49), (1.68, 1.34), (2.25, 1.06), (2.90, 0.72), (3.45, 0.38))
    for (px, py) in exp_pts {
      circle((px, py), radius: 0.045, fill: black, stroke: none)
    }

    // Raggi a rapporto di ciclo costante (R=0 e R=-inf)
    line((0, 0), (2.70, 2.70), stroke: (paint: black.transparentize(40%), thickness: 0.65pt, dash: "dashed"))
    content((2.76, 2.76), anchor: "south-west", text(size: 7.5pt)[$R = 0$])

    line((0, 0), (-2.70, 2.70), stroke: (paint: black.transparentize(40%), thickness: 0.65pt, dash: "dashed"))
    content((-2.76, 2.76), anchor: "south-east", text(size: 7.5pt)[$R = -infinity$])

    // Punto di lavoro sicuro P e confronto verticale ISO con sigma_D
    let wx = 1.30
    let wy = 0.52
    let wy_lim = sd * (1 - wx / rm) // 1.08
    line((wx, 0), (wx, wy), (0, wy), stroke: (paint: red.transparentize(20%), thickness: 0.65pt, dash: "dotted"))
    line((wx, wy), (wx, wy_lim), stroke: (paint: red.transparentize(20%), thickness: 0.65pt, dash: "dashed"))
    circle((wx, wy_lim), radius: 0.045, fill: white, stroke: 0.75pt + red.transparentize(10%))
    content((wx + 0.06, wy_lim + 0.03), anchor: "south-west", text(size: 7pt, fill: red.transparentize(10%))[$sigma_D$])
    circle((wx, wy), radius: 0.06, fill: red.transparentize(10%), stroke: 0.7pt + black)
    content((wx + 0.09, wy), anchor: "west", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[Lavoro])

    // Etichette assi (senza collisioni)
    content((-rm, -0.10), anchor: "north", text(size: 7.5pt)[$-R_m$])
    content((-rp, -0.10), anchor: "north", text(size: 7.5pt)[$-R_"p0.2"$])
    content((rp, -0.10), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
    content((rm, -0.10), anchor: "north", text(size: 7.5pt)[$R_m$])

    content((-0.12, sd + 0.14), anchor: "south-east", text(size: 7.5pt)[$sigma_(D-1)$])
    content((0.12, rp + 0.05), anchor: "south-west", text(size: 7.5pt)[$R_"p0.2"$])
    content((0.12, rm + 0.03), anchor: "south-west", text(size: 7.5pt)[$R_m$])

    // Etichette interne ed esterne con richiami
    content((-1.08, 0.48), anchor: "center", text(size: 7.2pt, weight: "bold")[Poligono \ sicuro])

    content((2.35, 2.05), anchor: "west", text(size: 7.2pt, fill: rgb("#1f77b4"))[Parabola di Gerber])
    line((2.30, 2.03), (1.85, 1.28), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", fill: rgb("#1f77b4"), scale: 0.55))

    content((3.40, 1.48), anchor: "south", text(size: 7.2pt)[Retta di Goodman])
    line((3.28, 1.44), (2.72, 0.54), stroke: 0.55pt, mark: (end: ">", fill: black, scale: 0.55))

    content((3.85, 0.92), anchor: "west", text(size: 6.8pt, fill: rgb("#b85d00"))[Plasticizzazione])
    line((3.80, 0.88), (3.12, 0.20), stroke: (paint: rgb("#b85d00"), thickness: 0.55pt), mark: (end: ">", fill: rgb("#b85d00"), scale: 0.55))

    content((-3.55, 1.45), anchor: "center", text(size: 7pt)[Snervamento \ ($plus.minus 45^circ$)])
    line((-3.15, 1.20), (-2.30, 0.72), stroke: 0.55pt, mark: (end: ">", fill: black, scale: 0.55))

    // Riquadro N = costante
    rect((2.55, 3.45), (4.55, 4.30), fill: white, stroke: 0.7pt)
    content((3.55, 3.875), anchor: "center", text(size: 7pt)[
      #align(center)[
        $N = text("costante")$ \
        ($2 dot.op 10^6$ acciai)
      ]
    ])
  })
)

=== Chiusura a snervamento, compressione e rapporti di ciclo

Nei materiali duttili la retta di Goodman non impedisce lo snervamento statico al picco del ciclo. Imponendo $sigma_"max" = sigma_m + sigma_a lt.eq R_"p0.2"$ in trazione e $sigma_"min" = sigma_m - sigma_a gt.eq -R_"p0.2"$ in compressione, compaiono le due rette a $plus.minus 45^circ$ di equazione $plus.minus sigma_m + sigma_a = R_"p0.2"$ (analoghe all'inviluppo statico esterno $plus.minus sigma_m + sigma_a = R_m$), che dividono il piano in tre zone:

- *Poligono di sicurezza.* L'area grigia delimitata insieme da Goodman e dalle rette di snervamento garantisce l'assenza sia di rottura per fatica sia di deformazioni plastiche permanenti.
- *Triangolo di plasticizzazione.* La zona ambrata tra la retta di snervamento e la retta di Goodman è sicura rispetto alla rottura per fatica per quel numero di cicli, ma causa plasticizzazione locale, inaccettabile in organi con tolleranze strette.
- *Regione esterna.* Oltre l'inviluppo combinato insorgono insieme plasticizzazione e rottura per fatica, fino al collasso statico oltre $R_m$.

In compressione ($sigma_m < 0$) le prove mostrano inizialmente un lieve aumento di resistenza seguito da una stabilizzazione orizzontale. A favore di sicurezza, il diagramma di Haigh adotta un plateau costante $sigma_a = sigma_(D-1)$, chiuso a sinistra dalla retta $-sigma_m + sigma_a = R_"p0.2"$ (oltre la quale si plasticizza pur senza rottura a fatica, fino al collasso statico sulla retta per $-R_m$).

Ogni punto sul piano $(sigma_m, sigma_a)$ giace su un raggio uscente dall'origine a rapporto di asimmetria $R$ o rapporto di ampiezza $R_a$ costante:

$ R = frac(sigma_"min", sigma_"max") , quad R_a = frac(sigma_a, sigma_m) = frac(1 - R, 1 + R) , quad R = frac(1 - R_a, 1 + R_a) $

Ogni raggio raggruppa i cicli con lo stesso rapporto di sollecitazione: l'asse verticale corrisponde al ciclo simmetrico ($R = -1$), la bisettrice del primo quadrante al ciclo all'origine ($R = 0$, $sigma_a = sigma_m$), la bisettrice del secondo al ciclo pulsante negativo ($R = -infinity$, $sigma_"max" = 0$) e l'asse orizzontale al carico statico puro ($R = 1$). Da questa lettura su $(sigma_m, sigma_a)$ derivano anche le varianti di Goodman–Smith, Moore e Rös.

== Diagrammi alternativi di tensione media

Il diagramma di Haigh legge direttamente la coppia $(sigma_m, sigma_a)$, ma norme e manuali usano anche rappresentazioni basate su $sigma_"max"$, $sigma_"min"$ e sul rapporto di ciclo $R$, scegliendo di volta in volta in base ai dati di carico disponibili.

=== Diagramma di Goodman--Smith

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
  canvas(length: 0.95cm, {
    import draw: *
    // BBox: x in [-5.1, 6.8] (dx=11.9), y in [-5.0, 6.4], length=0.95cm -> larghezza = 11.31 cm <= 11.5 cm

    // Poligono di sicurezza campito
    line(
      (-4.0, -4.0),
      (-2.2, -0.4),
      (0.0, 1.8),
      (3.3, 4.0),
      (4.0, 4.0),
      (3.3, 2.6),
      (0.0, -1.8),
      (-2.2, -4.0),
      close: true,
      fill: black.transparentize(90%),
      stroke: none,
    )

    // Assi principali
    line((-5.0, 0.0), (6.2, 0.0), stroke: 0.75pt, mark: (end: ">"))
    line((0.0, -4.8), (0.0, 5.8), stroke: 0.75pt, mark: (end: ">"))
    content((6.3, 0.0), anchor: "west")[#text(size: 8.5pt)[$sigma_m$]]
    content((0.0, 5.9), anchor: "south")[#text(size: 8.5pt)[$sigma_"max", sigma_"min"$]]

    // Bisettrice a 45 gradi, arco angolo e prolungamenti costruzione Goodman
    line((-4.5, -4.5), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.65pt))
    arc((0.0, 0.0), start: -180deg, stop: -135deg, radius: 1.05, anchor: "origin", stroke: 0.55pt)
    content((-1.22, -0.44), anchor: "east")[#text(size: 7.5pt)[$45^circ$]]

    line((3.3, 4.0), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.6pt))
    line((3.3, 2.6), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.6pt))
    circle((5.4, 5.4), radius: 0.06, fill: black)
    content((5.55, 5.4), anchor: "west")[#text(size: 8pt)[$(R_m, R_m)$]]

    // Linee di costruzione snervamento e proiezioni
    line((0.0, 4.0), (3.3, 4.0), stroke: (dash: "dashed", thickness: 0.6pt))
    line((3.3, 4.0), (3.3, 2.6), stroke: (dash: "dashed", thickness: 0.6pt))
    line((4.0, 4.0), (4.0, 0.0), stroke: (dash: "dotted", thickness: 0.6pt))
    line((0.0, -4.0), (-2.2, -4.0), stroke: (dash: "dashed", thickness: 0.6pt))
    line((-2.2, -4.0), (-2.2, -0.4), stroke: (dash: "dashed", thickness: 0.6pt))

    // Contorno poligono di sicurezza in tratto marcato
    line(
      (-4.0, -4.0),
      (-2.2, -0.4),
      (0.0, 1.8),
      (3.3, 4.0),
      (4.0, 4.0),
      (3.3, 2.6),
      (0.0, -1.8),
      (-2.2, -4.0),
      close: true,
      stroke: 1.15pt,
    )

    // Punti notevoli A, B e quote assi (senza collisioni con linee di costruzione)
    circle((3.3, 2.6), radius: 0.055, fill: black)
    content((3.45, 2.45), anchor: "north-west")[#text(size: 8pt)[$A$]]
    circle((4.0, 4.0), radius: 0.055, fill: black)
    content((4.55, 3.75), anchor: "west")[#text(size: 8pt)[$B$]]
    line((4.50, 3.77), (4.08, 3.96), stroke: 0.55pt, mark: (end: ">", scale: 0.5))

    content((-0.15, 4.0), anchor: "east")[#text(size: 8pt)[$R_"eH"$]]
    content((-0.12, 1.92), anchor: "south-east")[#text(size: 8pt)[$+sigma_(D-1)$]]
    content((0.15, -1.85), anchor: "west")[#text(size: 8pt)[$-sigma_(D-1)$]]
    content((0.15, -4.0), anchor: "west")[#text(size: 8pt)[$-R_"eH"$]]
    content((4.0, -0.15), anchor: "north")[#text(size: 8pt)[$R_"eH"$]]

    // Ciclo 1: sicuro (blu) con indicazioni manubrio
    line((1.65, 0.90), (1.65, 2.40), stroke: (paint: blue, thickness: 1.4pt))
    line((1.65, 0.90), (1.65, 0.0), stroke: (dash: "dotted", paint: blue, thickness: 0.6pt))
    circle((1.65, 2.40), radius: 0.055, fill: blue, stroke: blue)
    circle((1.65, 1.65), radius: 0.055, fill: white, stroke: (paint: blue, thickness: 0.9pt))
    circle((1.65, 0.90), radius: 0.055, fill: blue, stroke: blue)
    content((1.52, 2.34), anchor: "east")[#text(size: 7pt, fill: blue)[$sigma_"max"$]]
    content((1.52, 0.86), anchor: "east")[#text(size: 7pt, fill: blue)[$sigma_"min"$]]
    content((1.65, -0.15), anchor: "north")[#text(size: 7.5pt, fill: blue)[$sigma_(m,1)$]]

    // Ciclo 2: uscente (rosso)
    line((2.65, 1.30), (2.65, 4.00), stroke: (paint: red.transparentize(10%), thickness: 1.4pt))
    line((2.65, 1.30), (2.65, 0.0), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.6pt))
    circle((2.65, 4.00), radius: 0.055, fill: red.transparentize(10%), stroke: red.transparentize(10%))
    circle((2.65, 2.65), radius: 0.055, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
    circle((2.65, 1.30), radius: 0.055, fill: red.transparentize(10%), stroke: red.transparentize(10%))
    content((2.65, -0.15), anchor: "north")[#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_(m,2)$]]

    // Legenda compatta in alto a sinistra
    content((-4.7, 5.2), anchor: "north-west")[#text(size: 7.5pt, fill: blue, weight: "bold")[Ciclo 1: sicuro]]
    content((-4.7, 4.6), anchor: "north-west")[#text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[Ciclo 2: uscente]]
  })
)

In compressione i materiali duttili resistono in genere a tensioni di plasticizzazione e rottura più alte che in trazione. Per semplicità e a favore di sicurezza, si estende però in compressione lo stesso valore $R_"eH"$ della trazione, evitando errori di lettura durante la verifica.

Per certificazioni rigorose il poligono si costruisce interpolando più curve S--N a tensioni medie crescenti; nella pratica d'officina bastano invece i tre valori $sigma_(D-1)$, $R_"eH"$ e $R_m$ per tracciare su carta quadrettata (es. $10"–"20" MPa"$ per quadretto) un inviluppo già affidabile.

=== Diagramma di Moore--Kommer--Jasper

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
      canvas(length: 1.12cm, {
        import draw: *
        // BBox: x in [-0.95, 5.35] (dx=6.30), y in [-0.65, 4.30], length=1.12cm -> larghezza = 7.06 cm <= 8.2 cm

        let x_of(r) = 2.2 * (r + 1.0) // R in [-1, 1] -> x in [0, 4.4]
        let sd = 1.35
        let rp = 2.95
        let rm = 3.80
        let r_cut = 0.6825
        let x_cut = x_of(r_cut) // 3.702

        // Campionamento curva limite da R = -1 a R_cut (regione sicura) e fino a R = 1
        let safe_curve = ()
        for k in range(0, 17) {
          let rk = -1.0 + (r_cut + 1.0) * k / 16
          let yk = 2.0 / ((1.0 - rk) / sd + (1.0 + rk) / rm)
          safe_curve.push((x_of(rk), yk))
        }
        let ext_curve = ()
        for k in range(0, 9) {
          let rk = r_cut + (1.0 - r_cut) * k / 8
          let yk = 2.0 / ((1.0 - rk) / sd + (1.0 + rk) / rm)
          ext_curve.push((x_of(rk), yk))
        }

        // Regione sicura campita
        let poly = ((0.0, 0.0), ..safe_curve, (4.4, rp), (4.4, 0.0))
        line(..poly, close: true, fill: black.transparentize(88%), stroke: none)

        // Assi principali
        line((-0.15, 0.0), (4.95, 0.0), stroke: 0.8pt, mark: (end: ">", scale: 0.7))
        line((0.0, -0.15), (0.0, 4.05), stroke: 0.8pt, mark: (end: ">", scale: 0.7))
        content((5.05, 0.0), anchor: "west")[#text(size: 8pt)[$R$]]
        content((0.0, 4.12), anchor: "south")[#text(size: 8pt)[$sigma_"max"$]]

        // Riferimenti verticali R = 0 e R = 1 e snervamento Rp0.2
        line((2.2, 0.0), (2.2, 1.992), stroke: (dash: "dotted", thickness: 0.55pt))
        line((4.4, 0.0), (4.4, rm), stroke: (dash: "dotted", thickness: 0.55pt))
        line((0.0, rp), (x_cut, rp), stroke: (dash: "dotted", thickness: 0.6pt))
        line((0.0, rm), (4.4, rm), stroke: (dash: "dotted", thickness: 0.55pt))

        // Ramo tratteggiato fino a Rm e contorno marcato regione sicura
        line(..ext_curve, stroke: (dash: "dashed", paint: rgb("#1f77b4"), thickness: 0.8pt))
        line(..safe_curve, (4.4, rp), stroke: 1.15pt)
        line((4.4, rp), (4.4, 0.0), stroke: 0.85pt)

        // Punti notevoli
        circle((0.0, sd), radius: 0.055, fill: black)
        circle((2.2, 1.992), radius: 0.05, fill: black)
        circle((4.4, rm), radius: 0.055, fill: rgb("#1f77b4"), stroke: rgb("#1f77b4"))

        // Etichette assi
        content((0.0, -0.15), anchor: "north")[#text(size: 7.5pt)[$-1$]]
        content((2.2, -0.15), anchor: "north")[#text(size: 7.5pt)[$0$]]
        content((4.4, -0.15), anchor: "north")[#text(size: 7.5pt)[$+1$]]

        content((-0.12, sd), anchor: "east")[#text(size: 7.5pt)[$sigma_(D-1)$]]
        content((-0.12, rp), anchor: "east")[#text(size: 7.5pt)[$R_"p0.2"$]]
        content((-0.12, rm), anchor: "east")[#text(size: 7.5pt)[$R_m$]]
        content((2.15, 2.12), anchor: "south-east")[#text(size: 7pt)[$sigma_(D 0)$]]
        content((3.25, 0.85), anchor: "center")[#text(size: 7.2pt, weight: "bold")[Zona sicura]]
      }),
      caption: [Diagramma di Moore--Kommer--Jasper nel piano $(R, sigma_"max")$.],
    )
  ],
)

=== Diagramma di Rös (curva "master")

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
      canvas(length: 0.90cm, {
        import draw: *
        // BBox: x in [-4.1, 4.8] (dx=8.9), y in [-0.7, 4.5], length=0.90cm -> larghezza = 8.01 cm <= 8.2 cm

        // Poligono di sicurezza campito
        line(
          (-2.8, 0.0),
          (-1.4, 1.4),
          (1.87, 2.8),
          (2.8, 2.8),
          (0.0, 0.0),
          close: true,
          fill: black.transparentize(90%),
          stroke: none,
        )

        // Assi ortogonali (sigma_min, sigma_max)
        line((-3.4, 0.0), (4.0, 0.0), stroke: 0.75pt, mark: (end: ">"))
        line((0.0, -0.4), (0.0, 3.85), stroke: 0.75pt, mark: (end: ">"))
        content((4.08, 0.0), anchor: "west")[#text(size: 8pt)[$sigma_"min"$]]
        content((0.0, 3.92), anchor: "south")[#text(size: 8pt)[$sigma_"max"$]]

        // Assi ruotati di 45 gradi (sigma_m e sigma_a) ben distanziati da Rm
        line((0.0, 0.0), (4.05, 4.05), stroke: (paint: blue, thickness: 0.75pt), mark: (end: ">"))
        line((0.0, 0.0), (-2.95, 2.95), stroke: (paint: blue, thickness: 0.75pt), mark: (end: ">"))
        content((4.10, 4.10), anchor: "south-west")[#text(size: 8pt, fill: blue)[$sigma_m$]]
        content((-3.00, 3.00), anchor: "south-east")[#text(size: 8pt, fill: blue)[$sigma_a$]]

        // Raggi a rapporto R costante e prolungamenti
        line((0.0, 0.0), (-3.2, 1.6), stroke: (dash: "dashed", thickness: 0.55pt))
        content((-3.26, 1.6), anchor: "east")[#text(size: 7pt)[$R = -2$]]
        content((-2.35, 2.15), anchor: "north-east")[#text(size: 7pt, fill: blue)[$R = -1$]]
        content((0.12, 3.45), anchor: "west")[#text(size: 7pt)[$R = 0$]]
        content((2.82, 2.52), anchor: "north-west")[#text(size: 7pt, fill: blue)[$R = 1$]]

        // Costruzioni Goodman e snervamento
        line((1.87, 2.8), (3.5, 3.5), stroke: (dash: "dashed", thickness: 0.6pt))
        circle((3.5, 3.5), radius: 0.05, fill: black)
        content((3.36, 3.56), anchor: "south-east")[#text(size: 7.5pt)[$R_m$]]
        line((0.0, 2.8), (1.87, 2.8), stroke: (dash: "dotted", thickness: 0.6pt))
        content((0.10, 2.85), anchor: "south-west")[#text(size: 7.5pt)[$R_"p0.2"$]]

        // Contorno poligono di sicurezza
        line(
          (-2.8, 0.0),
          (-1.4, 1.4),
          (1.87, 2.8),
          (2.8, 2.8),
          (0.0, 0.0),
          close: true,
          stroke: 1.15pt,
        )

        // Punto di lavoro P e proiezioni su entrambi i riferimenti
        let px = 1.45
        let py = 2.05
        line((px, py), (px, 0.0), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.65pt))
        line((px, py), (0.0, py), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.65pt))
        line((px, py), (1.75, 1.75), stroke: (dash: "dotted", paint: blue, thickness: 0.65pt))
        line((px, py), (-0.30, 0.30), stroke: (dash: "dotted", paint: blue, thickness: 0.65pt))
        circle((px, py), radius: 0.065, fill: red.transparentize(10%), stroke: red.transparentize(10%))
        content((px + 0.08, py + 0.06), anchor: "south-west")[#text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$]]

        // Etichette assi sigma_D-1 senza collisioni
        line((-1.4, 1.4), (0.0, 1.4), stroke: (dash: "dotted", thickness: 0.5pt))
        line((-1.4, 1.4), (-1.4, 0.0), stroke: (dash: "dotted", thickness: 0.5pt))
        content((-1.4, -0.14), anchor: "north")[#text(size: 7.5pt)[$-sigma_(D-1)$]]
        content((0.08, 1.42), anchor: "south-west")[#text(size: 7.5pt)[$sigma_(D-1)$]]
      }),
      caption: [Diagramma di Rös (curva "master"): assi ortogonali $(sigma_"min", sigma_"max")$, assi ruotati di $45^circ$ $(sigma_m, sigma_a)$ e raggi a $R$ costante.],
    )
  ],
)

#v(0.6em)

I raggi uscenti dall'origine corrispondono a valori costanti di $R$ e $R_a = sigma_a \/ sigma_m$, consentendo di leggere subito il margine di sicurezza per carichi proporzionali. Rispetto a Goodman--Smith, che obbliga a spostare un segmento lungo la bisettrice, la curva "master" riduce dunque la verifica a un solo punto e controlla insieme fatica e snervamento in entrambi i sistemi di assi.

== Stima analitica della curva S--N ed equazione di Basquin

Se manca l'intera campagna sperimentale ma sono noti la resistenza statica $R_m$ e il limite di fatica $sigma_D$ alla tensione media $sigma_m$ di lavoro, si può ricostruire per via analitica la curva S--N approssimata nella sola *regione a termine*.

=== Punti cardine $F$ e $G$

Il modello traccia un segmento tra due punti pivot: $F$, alla transizione tra campo oligociclico e resistenza a termine (pari a circa $0.8"–"0.9 thin R_m$ a media nulla, o al $90%$ della riserva statica residua $R_m - sigma_m$ per $sigma_m != 0$), e $G$ (*ginocchio*), all'ingresso della vita infinita:

$ F = (N_F, sigma_F) = (10^3, 0.9(R_m - sigma_m)) , quad G = (N_G, sigma_D) $

Le altre due regioni restano escluse dalla legge analitica. Nella fatica oligociclica ($N < 10^3$) la tensione varia poco ma domina la *plasticità ciclica*, da trattare in deformazione ($varepsilon$); oltre $N_G$, invece, negli acciai la curva diventa orizzontale su $sigma_D$.

Nelle leghe leggere di alluminio o nei giunti saldati il ginocchio $G$ non apre un asintoto piatto, bensì un secondo tratto a pendenza molto bassa; per convenzione, $(N_G, sigma_D)$ resta comunque il riferimento operativo per la lunga durata.

=== Formulazione log--log (Basquin) e semi--log

In scala doppiamente logaritmica ($log_(10) N$ in ascissa, $log_(10) sigma_a$ in ordinata), il tratto a termine $F$--$G$ è una retta descritta dall'*equazione di Basquin*, esplicitabile rispetto ai cicli $N$ oppure alla tensione $sigma_a$:

$ N sigma_a^k = B arrow.l.r.double log(N) = log(B) - k log(sigma_a) , quad sigma_a = A N^b arrow.l.r.double log(sigma_a) = log(A) + b log(N) $

Imponendo il passaggio per $F$ e $G$ si ricavano le costanti del materiale $(k, B)$ e $(b, A)$, con coefficiente angolare $b = -1 \/ k$ sul piano $(log N, log sigma_a)$:

$ k = frac(log(N_G) - log(N_F), log(sigma_F) - log(sigma_D)) , quad log(B) = log(N_G) + frac(log(N_G) - log(N_F), log(sigma_F) - log(sigma_D)) log(sigma_D) $

$ b = frac(log(sigma_D) - log(sigma_F), log(N_G) - log(N_F)) = -frac(1, k) , quad log(A) = log(sigma_D) - frac(log(sigma_D) - log(sigma_F), log(N_G) - log(N_F)) log(N_G) $

In scala *semi--logaritmica*, invece, i cicli restano in $log N$ mentre la tensione alternata $sigma_a$ rimane lineare, evitando di passare al logaritmo delle tensioni.

Si usa $N sigma_a^k = B$ quando si cerca la vita a fatica dato il carico, e $sigma_a = A N^b$ per trovare la tensione ammissibile fissata la durata. In scala semi--logaritmica le forme diretta e inversa diventano:

$ sigma_a = sigma_F - frac(sigma_F - sigma_D, log N_G - log N_F) (log N - log N_F) , quad log N = log N_F + frac(sigma_F - sigma_a, sigma_F - sigma_D) (log N_G - log N_F) $

#figure(
  canvas(length: 1.36cm, {
    import draw: *

    content((2.5, 4.35), anchor: "south")[#text(size: 8.5pt, weight: "bold")[Scala log--log (equazione di Basquin)]]

    // Griglia logaritmica leggera su x (decadi e sottodecadi)
    for d in (0, 1, 2, 3, 4) {
      for m in (2, 3, 4, 5, 6, 7, 8, 9) {
        let xs = d + calc.log(m, base: 10)
        line((xs, 0.0), (xs, 4.0), stroke: (paint: luma(228), thickness: 0.35pt))
      }
      if d > 0 {
        line((d, 0.0), (d, 4.0), stroke: (paint: luma(195), thickness: 0.5pt))
      }
    }
    // Griglia logaritmica su y
    for s in (200, 300, 400, 500, 600, 700, 800, 900) {
      let ys = 4.0 * (calc.log(s, base: 10) - 2.0)
      line((0.0, ys), (5.0, ys), stroke: (paint: luma(222), thickness: 0.4pt))
    }

    // Cornice pannello sinistro
    rect((0.0, 0.0), (5.0, 4.0), stroke: 0.8pt)

    // Etichette asse x (N)
    for (xi, lbl) in ((0.0, $10^2$), (1.0, $10^3$), (2.0, $10^4$), (3.0, $10^5$), (4.0, $10^6$), (5.0, $10^7$)) {
      content((xi, -0.15), anchor: "north")[#text(size: 7.5pt)[#lbl]]
    }
    content((5.10, 0.12), anchor: "south-west")[#text(size: 8pt)[$N$]]

    // Etichette asse y (sigma_a)
    for (s, lbl) in ((100, [100]), (200, [200]), (500, [500]), (1000, [1000])) {
      let ys = 4.0 * (calc.log(s, base: 10) - 2.0)
      content((-0.12, ys), anchor: "east")[#text(size: 7.5pt)[#lbl]]
    }
    content((-0.78, 2.0), angle: 90deg, anchor: "center")[#text(size: 8pt)[$sigma_a$ (MPa)]]

    // Linee di demarcazione N_F = 10^3 (sigma_F = 850 MPa -> y = 3.718) e N_G = 2*10^6 (sigma_D = 300 MPa -> y = 1.908)
    line((1.0, 0.0), (1.0, 3.718), stroke: (dash: "dashed", thickness: 0.6pt))
    line((4.301, 0.0), (4.301, 1.908), stroke: (dash: "dashed", thickness: 0.6pt))

    // Curva S-N log-log: oligociclica (tratteggiata), Basquin F-G (blu), infinita (blu)
    line((0.0, 3.92), (1.0, 3.718), stroke: (dash: "dashed", paint: luma(90), thickness: 0.9pt))
    line((1.0, 3.718), (4.301, 1.908), (5.0, 1.908), stroke: (paint: blue, thickness: 1.35pt))

    // Triangolo di pendenza sul tratto F-G: x da 2.0 (y=3.170) a 3.5 (y=2.347)
    line((2.0, 3.170), (2.0, 2.347), (3.5, 2.347), stroke: (paint: blue, thickness: 0.65pt))
    content((2.65, 2.90), anchor: "south-west")[#text(size: 7.2pt, fill: blue)[$b = -1 \/ k$]]

    // Punti F e G ben distanziati dalla cornice superiore
    circle((1.0, 3.718), radius: 0.06, fill: blue, stroke: blue)
    content((1.16, 3.70), anchor: "west")[#text(size: 7.5pt)[$F(10^3, sigma_F)$]]
    circle((4.301, 1.908), radius: 0.06, fill: blue, stroke: blue)
    content((4.18, 1.72), anchor: "north-east")[#text(size: 7.5pt)[$G(N_G, sigma_D)$]]

    content((1.20, 0.32), anchor: "south-west")[#text(size: 7.5pt)[$sigma_m = "cost."$]]

    // ========================================================
    // PANNELLO DESTRO: SCALA SEMI-LOG
    // x in [7.2, 12.2] -> log10(N) in [2, 7]; y in [0, 4] -> sigma_a lineare in [0, 1000] MPa
    // ========================================================
    let x0 = 7.2
    content((x0 + 2.5, 4.35), anchor: "south")[#text(size: 8.5pt, weight: "bold")[Scala semi--log ($sigma_a$ lineare, $log N$)]]

    // Griglia logaritmica su x
    for d in (0, 1, 2, 3, 4) {
      for m in (2, 3, 4, 5, 6, 7, 8, 9) {
        let xs = x0 + d + calc.log(m, base: 10)
        line((xs, 0.0), (xs, 4.0), stroke: (paint: luma(228), thickness: 0.35pt))
      }
      if d > 0 {
        line((x0 + d, 0.0), (x0 + d, 4.0), stroke: (paint: luma(195), thickness: 0.5pt))
      }
    }
    // Griglia lineare su y (200, 400, 600, 800 MPa)
    for s in (200, 400, 600, 800) {
      let ys = 0.004 * s
      line((x0, ys), (x0 + 5.0, ys), stroke: (paint: luma(215), thickness: 0.45pt))
    }

    // Cornice pannello destro
    rect((x0, 0.0), (x0 + 5.0, 4.0), stroke: 0.8pt)

    // Etichette asse x (N)
    for (xi, lbl) in ((0.0, $10^2$), (1.0, $10^3$), (2.0, $10^4$), (3.0, $10^5$), (4.0, $10^6$), (5.0, $10^7$)) {
      content((x0 + xi, -0.15), anchor: "north")[#text(size: 7.5pt)[#lbl]]
    }
    content((x0 + 5.10, 0.12), anchor: "south-west")[#text(size: 8pt)[$N$]]

    // Etichette asse y (sigma_a lineare)
    for (s, lbl) in ((0, [0]), (200, [200]), (400, [400]), (600, [600]), (800, [800]), (1000, [1000])) {
      let ys = 0.004 * s
      content((x0 - 0.12, ys), anchor: "east")[#text(size: 7.5pt)[#lbl]]
    }
    content((x0 - 0.78, 2.0), angle: 90deg, anchor: "center")[#text(size: 8pt)[$sigma_a$ (MPa)]]

    // Linee di demarcazione N_F e N_G (sigma_F = 850 MPa -> y = 3.40)
    line((x0 + 1.0, 0.0), (x0 + 1.0, 3.40), stroke: (dash: "dashed", thickness: 0.6pt))
    line((x0 + 4.301, 0.0), (x0 + 4.301, 1.20), stroke: (dash: "dashed", thickness: 0.6pt))

    // Curva S-N semi-log: oligociclica (tratteggiata), tratto F-G (rosso), infinita (rosso)
    line((x0, 3.80), (x0 + 1.0, 3.40), stroke: (dash: "dashed", paint: luma(90), thickness: 0.9pt))
    line((x0 + 1.0, 3.40), (x0 + 4.301, 1.20), (x0 + 5.0, 1.20), stroke: (paint: red.transparentize(10%), thickness: 1.35pt))

    // Punti F e G
    circle((x0 + 1.0, 3.40), radius: 0.06, fill: red.transparentize(10%), stroke: red.transparentize(10%))
    content((x0 + 1.16, 3.44), anchor: "west")[#text(size: 7.5pt)[$F(10^3, sigma_F)$]]
    circle((x0 + 4.301, 1.20), radius: 0.06, fill: red.transparentize(10%), stroke: red.transparentize(10%))
    content((x0 + 4.18, 1.02), anchor: "north-east")[#text(size: 7.5pt)[$G(N_G, sigma_D)$]]

    content((x0 + 1.20, 0.32), anchor: "south-west")[#text(size: 7.5pt)[$sigma_m = "cost."$]]
  }),
  caption: [Stima analitica della curva S--N nella regione a termine tra $F$ e $G$: confronto tra modello #text(fill: blue, weight: "bold")[log--log (Basquin)] e #text(fill: red.transparentize(10%), weight: "bold")[semi--log].],
)

=== Dal materiale al componente reale

Tutte le curve S–N e i poligoni di Haigh, Goodman--Smith, Moore o Rös appena costruiti qualificano il *materiale base* su provette standard lucidate a specchio ($d approx 10 thin "mm"$), utili per il primo dimensionamento delle parti. Sul componente reale e sull'assieme prototipale (testato su banchi vibranti o multi-attuatore), *scala dimensionale*, *intagli* geometrici, *finitura superficiale* e trattamenti tecnologici degradano sensibilmente la resistenza locale, imponendo l'introduzione di appositi coefficienti correttivi prima della validazione sperimentale finale.

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Fatica dei componenti meccanici: carico, scala e finitura]
]
#v(0.4em)

= Dal provino al componente meccanico

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

= Effetto del tipo di carico ($C_L$)

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
      image("images/ECM01-4_sem_nucleazione_zp.png", width: 92%),
      caption: [Micrografia SEM in sezione di un'estrusione superficiale con micro-cricca nucleata nella zona di processo corticale (scala $5 thin mu"m"$).],
    )
  ],
)

#v(0.5em)

#figure(
  canvas(length: 1.0cm, {
    // BBox: x in [0.0, 15.6] (dx=15.6), y in [-4.25, 3.6], length=1.0cm -> larghezza = 15.6 cm <= 17.0 cm
    import draw: *

    // --- Pannello superiore sinistro: Flessione ---
    rect((0.4, 2.35), (4.2, 2.6), fill: black.transparentize(78%), stroke: none)
    rect((0.4, 1.0), (4.2, 1.25), fill: black.transparentize(78%), stroke: none)
    line((0.4, 2.35), (4.2, 2.35), stroke: 0.55pt)
    line((0.4, 1.25), (4.2, 1.25), stroke: 0.55pt)
    rect((0.4, 1.0), (4.2, 2.6), stroke: 1.1pt)
    line((0.1, 1.8), (4.5, 1.8), stroke: (dash: "dashed", thickness: 0.65pt))

    // Profilo lineare tensioni flessione (ampiezza superficiale = 1.20 u)
    line((2.3, 0.9), (2.3, 2.95), stroke: 0.65pt)
    line((1.1, 1.0), (3.5, 2.6), stroke: 1.0pt + blue)
    line((2.3, 2.0), (2.6, 2.0), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.3, 2.2), (2.9, 2.2), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.3, 2.475), (3.31, 2.475), stroke: 0.8pt + red, mark: (end: ">", scale: 0.55, fill: red))
    line((2.3, 1.6), (2.0, 1.6), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.3, 1.4), (1.7, 1.4), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.3, 1.125), (1.29, 1.125), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))

    // Quota sigma_f in alto e riquadro zoom ZP
    line((3.5, 2.6), (3.5, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
    line((2.3, 2.95), (3.5, 2.95), stroke: 0.8pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
    content((2.9, 3.12), anchor: "south", text(size: 8.5pt, fill: blue)[$sigma_f$])
    rect((2.2, 2.30), (3.6, 2.66), stroke: 0.7pt + red)
    circle((3.31, 2.475), radius: 0.06, fill: red, stroke: none)
    line((3.35, 2.50), (4.35, 3.05), stroke: 0.6pt + red, mark: (end: ">", scale: 0.55, fill: red))
    content((4.42, 3.05), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") < sigma_f$])
    content((2.3, 0.55), anchor: "north", text(size: 8.5pt, weight: "bold")[Flessione])

    // --- Pannello superiore destro: Trazione-compressione ---
    rect((8.8, 2.35), (12.6, 2.6), fill: black.transparentize(78%), stroke: none)
    rect((8.8, 1.0), (12.6, 1.25), fill: black.transparentize(78%), stroke: none)
    line((8.8, 2.35), (12.6, 2.35), stroke: 0.55pt)
    line((8.8, 1.25), (12.6, 1.25), stroke: 0.55pt)
    rect((8.8, 1.0), (12.6, 2.6), stroke: 1.1pt)
    line((8.5, 1.8), (12.9, 1.8), stroke: (dash: "dashed", thickness: 0.65pt))

    // Profilo uniforme trazione-compressione (pari ampiezza superficiale = 1.20 u)
    line((10.3, 0.9), (10.3, 2.95), stroke: 0.65pt)
    line((11.5, 1.0), (11.5, 2.6), stroke: 1.0pt + blue)
    for y_pos in (1.125, 1.4, 1.6, 2.0, 2.2) {
      line((10.3, y_pos), (11.5, y_pos), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    }
    line((10.3, 2.475), (11.5, 2.475), stroke: 0.8pt + red, mark: (end: ">", scale: 0.55, fill: red))

    // Quota sigma_tc in alto e riquadro zoom ZP
    line((11.5, 2.6), (11.5, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
    line((10.3, 2.95), (11.5, 2.95), stroke: 0.8pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
    content((10.9, 3.12), anchor: "south", text(size: 8.5pt, fill: blue)[$sigma_("tc")$])
    rect((10.2, 2.30), (11.6, 2.66), stroke: 0.7pt + red)
    circle((11.5, 2.475), radius: 0.06, fill: red, stroke: none)
    line((11.55, 2.50), (12.65, 3.05), stroke: 0.6pt + red, mark: (end: ">", scale: 0.55, fill: red))
    content((12.72, 3.05), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") = sigma_("tc")$])
    content((10.7, 0.55), anchor: "north", text(size: 8.5pt, weight: "bold")[Trazione-compressione])

    // Etichetta condivisa Zona di processo (ZP)
    content((6.5, 0.55), anchor: "north", text(size: 8pt)[Zona di processo (ZP)])
    line((5.0, 0.42), (3.85, 1.12), stroke: 0.6pt, mark: (end: ">", scale: 0.55))
    line((8.0, 0.42), (9.15, 1.12), stroke: 0.6pt, mark: (end: ">", scale: 0.55))

    // --- Pannello inferiore: Ingrandimento comparativo ZP a pari picco superficiale (2.20 u) ---
    rect((1.0, -4.2), (14.5, -0.3), stroke: (paint: red.transparentize(30%), thickness: 0.7pt), radius: 0.08)
    content((7.75, -0.52), anchor: "north", text(size: 8.5pt, weight: "bold")[Ingrandimento comparativo della zona di processo (ZP) a pari tensione superficiale])

    // Zoom sinistro: Flessione (asse x=2.60, picco x=4.80 -> delta=2.20 u; fondo ZP x=3.70; media x=4.25 -> delta=1.65 u)
    rect((2.1, -3.55), (6.3, -1.75), fill: black.transparentize(86%), stroke: none)
    line((2.1, -1.75), (6.3, -1.75), stroke: 1.1pt)
    line((2.1, -3.55), (6.3, -3.55), stroke: (dash: "dashed", thickness: 0.6pt))
    line((2.60, -3.7), (2.60, -1.25), stroke: 0.65pt)
    line((3.70, -3.55), (4.80, -1.75), stroke: 1.0pt + blue)
    line((2.60, -1.75), (4.80, -1.75), stroke: 1.0pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
    line((2.60, -2.20), (4.525, -2.20), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.60, -2.65), (4.25, -2.65), stroke: 1.0pt + red, mark: (end: ">", scale: 0.6, fill: red))
    line((2.60, -3.10), (3.975, -3.10), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    line((2.60, -3.55), (3.70, -3.55), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    circle((4.25, -2.65), radius: 0.08, fill: red, stroke: none)
    content((4.90, -1.65), anchor: "south-west", text(size: 8pt, fill: blue)[$sigma_f$])
    content((4.40, -2.65), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP")$])
    line((1.78, -3.55), (1.78, -1.75), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.6))
    content((1.65, -2.65), anchor: "east", text(size: 7.5pt)[ZP])
    content((4.2, -3.78), anchor: "north", text(size: 8pt)[Flessione: ampiezza media attenuata])

    // Zoom destro: Trazione-compressione (asse x=9.10, picco costante x=11.30 -> delta=2.20 u)
    rect((8.6, -3.55), (13.85, -1.75), fill: black.transparentize(86%), stroke: none)
    line((8.6, -1.75), (13.85, -1.75), stroke: 1.1pt)
    line((8.6, -3.55), (13.85, -3.55), stroke: (dash: "dashed", thickness: 0.6pt))
    line((9.10, -3.7), (9.10, -1.25), stroke: 0.65pt)
    line((11.30, -3.55), (11.30, -1.75), stroke: 1.0pt + blue)
    line((9.10, -1.75), (11.30, -1.75), stroke: 1.0pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
    for y_z in (-2.20, -3.10, -3.55) {
      line((9.10, y_z), (11.30, y_z), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    }
    line((9.10, -2.65), (11.30, -2.65), stroke: 1.0pt + red, mark: (end: ">", scale: 0.6, fill: red))
    circle((11.30, -2.65), radius: 0.08, fill: red, stroke: none)
    content((11.40, -1.65), anchor: "south-west", text(size: 8pt, fill: blue)[$sigma_("tc")$])
    content((11.45, -2.65), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") = sigma_("tc")$])
    content((11.22, -3.78), anchor: "north", text(size: 8pt)[Trazione-compressione: ampiezza uniforme])
  })
)

In trazione-compressione il profilo è uniforme e l'intera ZP lavora continuativamente al picco nominale, sicché $sigma_(a,"eff")("ZP") = sigma_("tc")$. In flessione (così come in torsione) il gradiente lineare riduce invece la tensione sulle fibre più interne dello strato corticale ($sigma_(a,"eff")("ZP") < sigma_f$), attenuando la sollecitazione efficace e ritardando l'innesco del danno.

== Valori di progetto e derivazione dalle curve $S$-$N$

Nei materiali metallici (in particolare negli acciai), l'evidenza sperimentale mostra che il limite di fatica in trazione-compressione ($sigma_(D-1)^T$, indicato anche con $sigma_(D-1)^(T C)$) è sempre inferiore a quello in flessione ($sigma_(D-1)^f$) secondo un rapporto compreso tra $0.6$ e $0.85$:

$ sigma_(D-1)^T = (0.6 div 0.85) dot sigma_(D-1)^f = C_L dot sigma_(D-1)^f $

Nel dimensionamento preliminare, in assenza di prove specifiche sul materiale, si adotta di norma il valore medio rappresentativo $C_L = 0.7$.

#nota[
  *Scelta progettuale di $C_L$.* Alcuni testi di riferimento (come lo *Shigley*) prescrivono in trazione-compressione $C_L = 0.85$ per non penalizzare eccessivamente la verifica in specifiche formulazioni. La scelta tra $0.7$ e $0.85$ va accordata al protocollo di calcolo adottato e alla disponibilità di dati sperimentali sul materiale.
]

#figure(
  canvas(length: 1.16cm, {
    // BBox: x in [0.0, 16.0] (dx=16.0), y in [0.0, 5.7], length=1.0cm -> larghezza = 16.0 cm <= 17.0 cm
    import draw: *

    // --- Pannello sinistro: Curve S-N sperimentali (sigma_a - N) ---
    content((3.825, 5.15), anchor: "south", text(size: 8.5pt, weight: "bold")[Curve $S$-$N$ sperimentali ($sigma_a$)])
    rect((1.2, 0.8), (6.45, 4.9), stroke: 0.9pt)

    // Griglia logaritmica decadi 10^2 .. 10^7 (1.05 u/decade)
    for (i, lbl) in ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$).enumerate() {
      let x = 1.2 + i * 1.05
      if i > 0 and i < 5 {
        line((x, 0.8), (x, 4.9), stroke: (paint: black.transparentize(82%), thickness: 0.45pt))
      }
      line((x, 0.8), (x, 0.72), stroke: 0.6pt)
      content((x, 0.64), anchor: "north", text(size: 7.5pt)[#lbl])
    }
    for y_g in (1.5, 2.2, 2.9, 3.6, 4.3) {
      line((1.2, y_g), (6.45, y_g), stroke: (paint: black.transparentize(86%), thickness: 0.45pt))
    }

    // Ginocchio N_i = 2*10^6: x = 1.2 + 4.301 * 1.05 = 5.72
    line((5.72, 0.8), (5.72, 4.9), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(40%)))
    content((5.66, 4.76), anchor: "north-east", text(size: 7pt)[$N_i = 2 dot 10^6$])

    // Curva Flessione (blu) e Trazione-compressione (rosso) da 10^3 (x=2.25)
    line((2.25, 4.55), (5.72, 3.15), (6.45, 3.15), stroke: 1.2pt + blue)
    line((2.25, 3.85), (5.72, 2.20), (6.45, 2.20), stroke: 1.2pt + red)
    line((1.2, 3.15), (5.72, 3.15), stroke: (dash: "dashed", thickness: 0.65pt, paint: blue))
    line((1.2, 2.20), (5.72, 2.20), stroke: (dash: "dashed", thickness: 0.65pt, paint: red))

    // Etichette curve e asse Y sinistro
    content((1.02, 4.82), anchor: "east", text(size: 8.5pt)[$sigma_a$])
    content((1.02, 3.15), anchor: "east", text(size: 8pt, fill: blue)[$sigma_(D-1)^f$])
    content((1.02, 2.20), anchor: "east", text(size: 8pt, fill: red)[$sigma_(D-1)^T$])
    content((3.65, 4.08), anchor: "south-west", text(size: 8pt, fill: blue)[Flessione])
    content((2.68, 2.68), anchor: "center", box(fill: white, inset: 1.5pt)[#text(size: 7.6pt, fill: red)[Trazione-compressione]])
    line((3.98, 2.68), (4.63, 2.68), stroke: 0.55pt + red, mark: (end: ">", scale: 0.5, fill: red))
    content((3.825, 0.25), anchor: "north", text(size: 8pt)[$N$ (cicli)])

    // Scarto C_L tra i due asintoti
    line((6.45, 3.15), (6.80, 3.15), stroke: (dash: "dotted", thickness: 0.55pt))
    line((6.45, 2.20), (6.80, 2.20), stroke: (dash: "dotted", thickness: 0.55pt))
    line((6.70, 2.20), (6.70, 3.15), stroke: 0.7pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.55))
    content((6.88, 2.675), anchor: "west", text(size: 7.5pt)[$C_L = 0.6 div 0.85$])

    // --- Pannello destro: Curva teorica unica (sigma_{a,eff} - N) ---
    content((12.475, 5.15), anchor: "south", text(size: 8.5pt, weight: "bold")[Curva teorica unificata ($sigma_(a,"eff")$)])
    rect((9.85, 0.8), (15.10, 4.9), stroke: 0.9pt)

    for (i, lbl) in ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$).enumerate() {
      let x = 9.85 + i * 1.05
      if i > 0 and i < 5 {
        line((x, 0.8), (x, 4.9), stroke: (paint: black.transparentize(82%), thickness: 0.45pt))
      }
      line((x, 0.8), (x, 0.72), stroke: 0.6pt)
      content((x, 0.64), anchor: "north", text(size: 7.5pt)[#lbl])
    }
    for y_g in (1.5, 2.2, 2.9, 3.6, 4.3) {
      line((9.85, y_g), (15.10, y_g), stroke: (paint: black.transparentize(86%), thickness: 0.45pt))
    }

    // Ginocchio comune N_i = 2*10^6: x = 9.85 + 4.301 * 1.05 = 14.37
    line((14.37, 0.8), (14.37, 4.9), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(40%)))
    content((14.31, 4.76), anchor: "north-east", text(size: 7pt)[$N_i = 2 dot 10^6$])

    // Curva sovrapposta (blu + rosso tratteggiato) da 10^3 (x=10.90)
    line((10.90, 3.85), (14.37, 2.20), (15.10, 2.20), stroke: 1.3pt + blue)
    line((10.90, 3.85), (14.37, 2.20), (15.10, 2.20), stroke: (paint: red, thickness: 1.2pt, dash: "dashed"))
    line((9.85, 2.20), (14.37, 2.20), stroke: (dash: "dashed", thickness: 0.65pt))

    content((9.67, 4.82), anchor: "east", text(size: 8.5pt)[$sigma_(a,"eff")$])
    content((9.67, 2.20), anchor: "east", text(size: 8pt)[$sigma_(D-1)^0$])
    content((12.95, 3.30), anchor: "south", align(center, text(size: 8pt)[Flessione +\ Traz.-compr.]))
    content((12.475, 0.25), anchor: "north", text(size: 8pt)[$N$ (cicli)])
  })
) <fig-sn>

Tracciando le curve $S$-$N$ sperimentali in funzione della tensione nominale superficiale $sigma_a$ (@fig-sn, a sinistra), i due stati di carico si dispongono su livelli distinti. Riformulando invece i diagrammi in termini di tensione efficace $sigma_(a,"eff")$ (a destra), le curve di flessione e trazione-compressione collassano su un'unica legge con asintoto comune $sigma_(D-1)^0$ oltre il ginocchio $N_i = 2 dot 10^6$ cicli.

Il cedimento a fatica interviene quando $sigma_(a,"eff")$ raggiunge il valore limite intrinseco $sigma_(D-1)^0$. In trazione-compressione l'assenza di gradiente impone $sigma_(a,"eff") = sigma_a$, perciò la condizione teorica coincide direttamente con il limite sperimentale misurato:

$ sigma_(a,"eff") = sigma_a = sigma_(D-1)^0 , quad sigma_a = sigma_(D-1)^T quad arrow.r.double quad sigma_(D-1)^T = sigma_(D-1)^0 $

In flessione il gradiente attraverso la ZP riduce la tensione efficace rispetto al picco superficiale mediante un coefficiente di attenuazione $alpha < 1$, sicché $sigma_(a,"eff") = alpha dot sigma_a$. Imponendo il raggiungimento della soglia $sigma_(D-1)^0$ in corrispondenza del limite sperimentale $sigma_(D-1)^f$ si ricava:

$ alpha dot sigma_a = sigma_(D-1)^0 , quad sigma_a = sigma_(D-1)^f quad arrow.r.double quad sigma_(D-1)^f = frac(sigma_(D-1)^0, alpha) $

Sostituendo $sigma_(D-1)^0 = sigma_(D-1)^T$ nella relazione della flessione si ottiene il legame analitico tra i due limiti sperimentali, dimostrando che il fattore empirico $C_L$ coincide con il parametro geometrico $alpha$:

$ sigma_(D-1)^f = frac(sigma_(D-1)^T, alpha) quad arrow.r.double quad sigma_(D-1)^T = alpha dot sigma_(D-1)^f , quad alpha = C_L = 0.6 div 0.85 $

= Effetto delle dimensioni o effetto scala ($C_S$)

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
      canvas(length: 1.55cm, {
        // BBox: x in [-2.05, 2.90] (dx=4.95), y in [-2.20, 3.85], length=1.55cm -> larghezza = 7.67 cm <= 8.2 cm
        import draw: *

        let r1 = 0.58
        let yc1 = 2.75
        let r2 = 1.55
        let yc2 = 0.0
        let amp = 1.75
        let x80 = 0.80 * amp

        // --- Provino piccolo (sopra) ---
        content((0, yc1 + r1 + 0.30), anchor: "south")[#text(size: 8pt, weight: "bold")[Provetta ($d = 8"–"12 thin "mm"$)]]

        circle((0, yc1), radius: r1, fill: luma(228), stroke: 1pt + black)

        // Calotta superiore campita tra 0.80*sigma_a e sigma_a (theta da 53.13deg a 126.87deg)
        let cap1 = ()
        for i in range(0, 25) {
          let ang = 53.13deg + i * (73.74deg / 24)
          cap1.push((r1 * calc.cos(ang), yc1 + r1 * calc.sin(ang)))
        }
        line(..cap1, close: true, fill: red.transparentize(65%), stroke: (paint: red.transparentize(10%), thickness: 0.75pt))

        // Assi di riferimento e profilo lineare
        line((-1.90, yc1), (1.90, yc1), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
        line((0, yc1 - r1 - 0.15), (0, yc1 + r1 + 0.15), stroke: (dash: "dotted", thickness: 0.55pt, paint: luma(110)))

        // Frecce di picco +/- sigma_a
        line((0, yc1 + r1), (amp, yc1 + r1), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))
        line((0, yc1 - r1), (-amp, yc1 - r1), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))

        // Livello 80% sigma_a e profilo di flessione
        let y1_80 = yc1 + 0.80 * r1
        line((-0.85, y1_80), (amp, y1_80), stroke: (paint: blue, thickness: 0.65pt, dash: "dashed"))
        line((-amp, yc1 - r1), (amp, yc1 + r1), stroke: 1.1pt + blue)

        // Etichette esterne con richiami anti-collisione
        line((amp + 0.04, yc1 + r1), (amp + 0.16, yc1 + r1 + 0.12), stroke: 0.55pt + black)
        content((amp + 0.18, yc1 + r1 + 0.12), anchor: "south-west")[#text(size: 7.5pt)[$sigma_a$]]

        line((amp + 0.04, y1_80), (amp + 0.16, y1_80 - 0.14), stroke: 0.55pt + blue)
        content((amp + 0.18, y1_80 - 0.14), anchor: "north-west")[#text(size: 7.5pt, fill: blue)[$80% thin sigma_a$]]

        // --- Albero grande (sotto) ---
        circle((0, yc2), radius: r2, fill: luma(228), stroke: 1pt + black)

        let cap2 = ()
        for i in range(0, 31) {
          let ang = 53.13deg + i * (73.74deg / 30)
          cap2.push((r2 * calc.cos(ang), yc2 + r2 * calc.sin(ang)))
        }
        line(..cap2, close: true, fill: red.transparentize(65%), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))

        // Assi di riferimento e profilo lineare
        line((-1.90, yc2), (1.90, yc2), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
        line((0, yc2 - r2 - 0.15), (0, yc2 + r2 + 0.15), stroke: (dash: "dotted", thickness: 0.55pt, paint: luma(110)))

        // Frecce di picco +/- sigma_a (identiche in ampiezza al provino)
        line((0, yc2 + r2), (amp, yc2 + r2), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))
        line((0, yc2 - r2), (-amp, yc2 - r2), stroke: 0.8pt + black, mark: (end: ">", scale: 0.6))

        // Livello 80% sigma_a, proiezione verticale comune e profilo di flessione
        let y2_80 = yc2 + 0.80 * r2
        line((x80, y1_80), (x80, y2_80), stroke: (paint: blue.transparentize(30%), thickness: 0.55pt, dash: "dotted"))
        line((-1.25, y2_80), (amp, y2_80), stroke: (paint: blue, thickness: 0.65pt, dash: "dashed"))
        line((-amp, yc2 - r2), (amp, yc2 + r2), stroke: 1.1pt + blue)
        circle((x80, y1_80), radius: 0.042, fill: blue, stroke: none)
        circle((x80, y2_80), radius: 0.042, fill: blue, stroke: none)

        // Etichette ben distanziate (delta y = 0.31 unità)
        content((amp + 0.12, yc2 + r2 + 0.04), anchor: "south-west")[#text(size: 7.5pt)[$sigma_a$]]
        content((amp + 0.12, y2_80 - 0.04), anchor: "north-west")[#text(size: 7.5pt, fill: blue)[$80% thin sigma_a$]]

        content((0, yc2 - r2 - 0.30), anchor: "north")[#text(size: 8pt, weight: "bold")[Albero grande ($d >> 12 thin "mm"$)]]
      })
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
    #canvas(length: 1.68cm, {
        // BBox: x in [-0.80, 5.20] (dx=6.00), y in [-0.85, 3.70], length=1.28cm -> larghezza = 7.68 cm <= 8.2 cm
        import draw: *

        let map-x(d) = (d - 10.0) / 38.0
        let map-y(cs) = (cs - 0.60) * 8.0

        // Griglia cartesiana (d ogni 10 mm da 10 a 200, C_S ogni 0.05)
        for i in range(0, 20) {
          let xg = map-x(10 + i * 10)
          line((xg, 0), (xg, 3.20), stroke: 0.35pt + luma(205))
        }
        for j in range(0, 9) {
          let yg = map-y(0.60 + j * 0.05)
          line((0, yg), (5.00, yg), stroke: 0.35pt + luma(205))
        }

        // Cornice degli assi
        rect((0, 0), (5.00, 3.20), stroke: 0.85pt + black)

        // Etichette asse Y
        let y-vals = (0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.00)
        let y-strs = ("0.60", "0.65", "0.70", "0.75", "0.80", "0.85", "0.90", "0.95", "1.00")
        for idx in range(0, y-vals.len()) {
          let yy = map-y(y-vals.at(idx))
          if y-strs.at(idx) == "0.70" {
            content((-0.08, yy), anchor: "east")[#box(stroke: 0.7pt + red.transparentize(10%), inset: 1.5pt, fill: white)[#text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[0.70]]]
          } else {
            content((-0.10, yy), anchor: "east")[#text(size: 7pt)[#y-strs.at(idx)]]
          }
        }
        content((0, 3.35), anchor: "south")[#text(size: 8pt, weight: "bold")[$C_S$]]

        // Etichette asse X (ogni 20 mm da 10 a 190, bordo destro a 200)
        for k in range(0, 10) {
          let d = 10 + k * 20
          content((map-x(d), -0.12), anchor: "north")[#text(size: 7pt)[#d]]
        }
        content((2.50, -0.48), anchor: "north")[#text(size: 7.5pt, weight: "bold")[$d$ [mm]]]

        // Asintoto orizzontale C_S = 0.70
        let y-asym = map-y(0.70)
        line((0, y-asym), (5.12, y-asym), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))

        // Curva sperimentale C_S(d) fedele all'abaco (Slide 9)
        let curve-data = (
          (10, 1.000), (15, 0.950), (20, 0.910), (25, 0.883), (30, 0.862),
          (40, 0.830), (50, 0.806), (60, 0.788), (70, 0.773), (80, 0.761),
          (90, 0.750), (100, 0.741), (110, 0.733), (120, 0.726), (130, 0.720),
          (140, 0.715), (150, 0.711), (160, 0.707), (170, 0.704), (180, 0.702),
          (190, 0.700), (200, 0.700),
        )
        let curve-pts = curve-data.map(p => (map-x(p.at(0)), map-y(p.at(1))))
        line(..curve-pts, stroke: 1.35pt + black)

        // Etichetta curva Flessione e torsione
        content((2.95, 2.65), anchor: "center")[
          #box(fill: white, stroke: 0.6pt + black, inset: 2.5pt, radius: 1.5pt)[
            #text(size: 7pt, weight: "bold")[Flessione e torsione]
          ]
        ]
        line((2.05, 2.55), (map-x(46), map-y(0.816)), stroke: 0.6pt + black, mark: (end: ">", scale: 0.55))

        // Etichetta asintoto C_L = 0.70
        content((3.10, 0.36), anchor: "center")[
          #box(fill: white, stroke: 0.6pt + red.transparentize(10%), inset: 2.2pt, radius: 1.5pt)[
            #set align(center)
            #text(size: 6.7pt)[Asintoto: valore medio $C_L = 0.70$ \ (trazione-compressione)]
          ]
        ]
        line((2.40, 0.61), (2.40, y-asym - 0.02), stroke: 0.6pt + red.transparentize(10%), mark: (end: ">", scale: 0.55))
      })
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

= Effetto della finitura superficiale ($C_F$)

La nucleazione del danno a fatica nasce sempre da irregolarità superficiali in microscala. Anche partendo da una provetta lappata a specchio ($R_a <= 0.8 thin mu"m"$, a cui compete $C_F = 1$), una sollecitazione alternata genera progressivamente disordine cristallino lungo tre morfologie tipiche:

#grid(
  columns: (1.06fr, 0.94fr),
  column-gutter: 0.9em,
  align: (left + horizon, center + horizon),
  [
    - *Creste e avvallamenti* (_ridge and groove_): si aprono gole ad apice acuto assimilabili a micro-intagli con forte concentrazione tensionale.
    - *Ondulazioni* (_undulations_): le valli geometriche localizzano la deformazione ciclica sul fondo dell'onda.
    - *Estrusione a bande* (_slipband extrusion_): i piani cristallini slittano come fogli di una risma, espellendo lembi e aprendo micro-vuoti la cui coalescenza avvia la cricca.
  ],
  [
    #figure(
      canvas(length: 0.76cm, {
        // BBox: x in [0.0, 10.0] (dx=10.0), y in [0.15, 4.35], length=0.76cm -> larghezza = 7.60 cm <= 8.2 cm
        import draw: *

        // Carico alternato superiore
        line((3.2, 3.80), (6.8, 3.80), mark: (start: ">", end: ">", scale: 0.65), stroke: (thickness: 0.8pt))
        content((5.0, 3.98), text(size: 7pt, weight: "bold")[Carico alternato], anchor: "south")

        // Etichette dei tre meccanismi
        content((1.75, 2.88), align(center, text(size: 6.8pt, weight: "bold")[Creste e\ avvallamenti]), anchor: "south")
        content((5.00, 2.98), text(size: 6.8pt, weight: "bold")[Ondulazioni], anchor: "south")
        content((8.25, 2.88), align(center, text(size: 6.8pt, weight: "bold")[Estrusione\ a bande]), anchor: "south")

        // Fondo campito del materiale sottostante
        rect((0.3, 0.95), (9.7, 2.15), fill: black.transparentize(90%), stroke: none)
        for ix in range(0, 22) {
          let x0 = 0.4 + ix * 0.42
          line((x0, 0.95), (x0 + 0.35, 1.65), stroke: (paint: black.transparentize(68%), thickness: 0.45pt))
        }
        line((0.3, 0.95), (9.7, 0.95), stroke: (thickness: 0.65pt))

        // Separatori verticali tra i tre regimi
        line((3.35, 0.95), (3.35, 2.80), stroke: (paint: black.transparentize(55%), dash: "dotted", thickness: 0.55pt))
        line((6.70, 0.95), (6.70, 2.80), stroke: (paint: black.transparentize(55%), dash: "dotted", thickness: 0.55pt))

        // 1) Creste e avvallamenti (ridge and groove)
        line(
          (0.30, 2.15), (0.70, 2.15), (1.02, 2.58), (1.34, 1.92),
          (1.68, 2.66), (2.00, 1.88), (2.34, 2.56), (2.66, 2.15), (3.70, 2.15),
          stroke: (thickness: 1.05pt),
        )

        // 2) Ondulazioni (undulations) con bezier raccordate (1.333 * A)
        bezier((3.70, 2.15), (4.35, 2.15), (3.91, 2.483), (4.14, 2.483), stroke: (thickness: 1.05pt))
        bezier((4.35, 2.15), (5.00, 2.15), (4.56, 1.817), (4.79, 1.817), stroke: (thickness: 1.05pt))
        bezier((5.00, 2.15), (5.65, 2.15), (5.21, 2.483), (5.44, 2.483), stroke: (thickness: 1.05pt))
        bezier((5.65, 2.15), (6.30, 2.15), (5.86, 1.817), (6.09, 1.817), stroke: (thickness: 1.05pt))

        // 3) Estrusione a bande di scorrimento (slipband extrusion)
        line(
          (6.30, 2.15), (7.30, 2.15), (7.55, 1.92), (8.05, 2.62),
          (8.18, 2.50), (7.86, 2.06), (8.28, 2.60), (8.40, 2.48),
          (8.16, 2.15), (9.70, 2.15),
          stroke: (thickness: 1.05pt),
        )
        // Piani di scorrimento e micro-vuoti coalescenti interni
        line((7.15, 1.35), (7.55, 1.92), stroke: (paint: black.transparentize(35%), dash: "dashed", thickness: 0.55pt))
        line((7.56, 1.48), (7.86, 2.06), stroke: (paint: black.transparentize(35%), dash: "dashed", thickness: 0.55pt))
        circle((7.34, 1.62), radius: 0.045, fill: white, stroke: (thickness: 0.6pt))
        circle((7.25, 1.49), radius: 0.042, fill: white, stroke: (thickness: 0.6pt))

        // Punti critici di innesco
        circle((2.00, 1.88), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
        circle((4.675, 1.90), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
        circle((7.55, 1.92), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))

        // Legenda inferiore
        circle((2.65, 0.45), radius: 0.13, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
        content((2.92, 0.45), text(size: 6.8pt)[Sito di innesco della micro-cricca], anchor: "west")
      }),
      caption: [Meccanismi microscopici di nucleazione superficiale.],
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
      image("images/ECM01-4_topografia_rugosita.png", width: 76%),
      caption: [Rilievo microscopico 3D della rugosità con avvallamento acuto d'innesco.],
    )
  ],
)

== Sensibilità alla fragilità e lettura del diagramma $C_F (R_m, R_a)$

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
      canvas(length: 0.77cm, {
        // BBox: x in [0.0, 10.55] (dx=10.55), y in [0.0, 6.45], length=0.77cm -> larghezza = 8.12 cm <= 10.0 cm
        import draw: *

        let map-x(rm) = 1.35 + ((rm - 200.0) / 100.0) * 0.56
        let map-y(cf) = 1.00 + ((cf - 0.40) / 0.10) * 0.85

        // Griglia cartesiana fedele a Slide 11: Rm in [200, 1500] (passo 100), CF in [0.4, 1.0] (passo 0.1)
        for i in range(0, 14) {
          let x = map-x(200 + i * 100)
          line((x, 1.00), (x, 6.10), stroke: (paint: luma(195), thickness: 0.45pt))
        }
        for j in range(0, 7) {
          let y = 1.00 + j * 0.85
          line((1.35, y), (8.63, y), stroke: (paint: luma(195), thickness: 0.45pt))
        }
        rect((1.35, 1.00), (8.63, 6.10), stroke: (thickness: 0.9pt))

        // Tacche ed etichette asse Y (CF)
        let cf_vals = ("0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1.0")
        for j in range(0, 7) {
          let y = 1.00 + j * 0.85
          content((1.20, y), text(size: 7pt)[#cf_vals.at(j)], anchor: "east")
        }
        content((0.35, 3.55), text(size: 8.5pt, weight: "bold")[$C_F$], anchor: "center")

        // Etichette asse X (Rm ogni 200 MPa da 200 a 1400; bordo destro a 1500 MPa)
        for k in range(0, 7) {
          let rm = 200 + k * 200
          content((map-x(rm), 0.82), text(size: 7pt)[#rm], anchor: "north")
        }
        content((4.99, 0.25), text(size: 8pt)[$R_m$ (MPa)], anchor: "center")

        // Curve sperimentali CF(Rm, Ra) campionate ogni 100 MPa su [200, 1500]
        let rms = (200, 300, 400, 500, 600, 700, 800, 900, 1000, 1100, 1200, 1300, 1400, 1500)
        let draw-cf(vals, st) = {
          let pts = ()
          for idx in range(0, rms.len()) {
            pts.push((map-x(rms.at(idx)), map-y(vals.at(idx))))
          }
          line(..pts, stroke: st)
        }

        draw-cf((1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000, 1.000), (paint: blue, thickness: 1.15pt))
        draw-cf((1.000, 0.990, 0.980, 0.973, 0.970, 0.967, 0.964, 0.961, 0.958, 0.955, 0.955, 0.955, 0.955, 0.955), (thickness: 0.95pt))
        draw-cf((1.000, 0.984, 0.968, 0.953, 0.941, 0.932, 0.925, 0.920, 0.917, 0.915, 0.914, 0.913, 0.913, 0.913), (thickness: 0.95pt))
        draw-cf((0.984, 0.965, 0.945, 0.927, 0.912, 0.901, 0.892, 0.884, 0.878, 0.872, 0.866, 0.863, 0.861, 0.860), (thickness: 0.95pt))
        draw-cf((0.980, 0.950, 0.920, 0.892, 0.866, 0.843, 0.822, 0.804, 0.788, 0.774, 0.763, 0.755, 0.750, 0.750), (thickness: 0.95pt))
        draw-cf((0.975, 0.932, 0.888, 0.845, 0.804, 0.768, 0.736, 0.707, 0.682, 0.663, 0.648, 0.637, 0.629, 0.623), (thickness: 0.95pt))
        draw-cf((0.950, 0.900, 0.850, 0.802, 0.756, 0.716, 0.678, 0.645, 0.613, 0.582, 0.552, 0.525, 0.500, 0.478), (paint: red.transparentize(10%), thickness: 1.15pt))

        // Etichette rugosità Ra sul bordo destro (x = 1500 MPa -> 8.63)
        content((8.80, map-y(1.000)), text(size: 6.8pt, fill: blue, weight: "bold")[0.8], anchor: "west")
        content((8.80, map-y(0.955)), text(size: 6.8pt)[1.6], anchor: "west")
        content((8.80, map-y(0.913)), text(size: 6.8pt)[3.2], anchor: "west")
        content((8.80, map-y(0.860)), text(size: 6.8pt)[6.3], anchor: "west")
        content((8.80, map-y(0.750)), text(size: 6.8pt)[10], anchor: "west")
        content((8.80, map-y(0.623)), text(size: 6.8pt)[40], anchor: "west")
        content((8.80, map-y(0.478)), text(size: 6.8pt, fill: red.transparentize(10%), weight: "bold")[160], anchor: "west")

        content((10.10, 3.55), text(size: 7.5pt)[Rugosità $R_a$ ($mu"m"$)], angle: 90deg, anchor: "center")
      }),
      caption: [Coefficiente di finitura superficiale $C_F (R_m, R_a)$ per acciai ($R_m$ fino a $1500 thin "MPa"$).],
    )
  ],
)

== Criteri progettuali di finitura e protezione in esercizio

*Compromesso costi-finitura.* Per mantenere elevato $C_F$ si prescrive a disegno la rugosità $R_a$ più bassa compatibile con il ciclo tecnologico e i costi di produzione. Lucidare a specchio un acciaio dolce a basso $R_m$ offre benefici minimi, mentre su acciai ad altissima resistenza rettifica o lappatura ($R_a = 0.8"–"3.2 thin mu"m"$) sono indispensabili nelle zone critiche per non vanificarne le prestazioni.

#nota[
  *Degrado superficiale in esercizio.* Lo stato di finitura misurato alla consegna può peggiorare sensibilmente durante la vita operativa. Agenti aggressivi come umidità o acqua salmastra innescano vaiolature da corrosione che innalzano $R_a$ e degradano la chimica superficiale, facendo crollare $C_F$ ben sotto il valore di progetto: in ambienti severi occorre quindi proteggere il pezzo con rivestimenti o trattamenti superficiali dedicati.
]

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Intaglio in statica e a fatica]
]
#v(0.4em)

= Fenomenologia e meccanica dell'intaglio

== Definizione, origini progettuali e stravolgimento del campo tensionale

Un *intaglio* è una brusca variazione della sezione resistente concentrata in una zona limitata del componente. Negli organi di macchine queste discontinuità geometriche nascono da esigenze costruttive inevitabili: senza cambi di diametro o sedi dedicate non sarebbe possibile vincolare cuscinetti, trasmettere potenza o collegare elementi rotanti.

- *Spallamenti e gole.* I gradini di diametro forniscono una battuta assiale agli anelli dei cuscinetti; le gole alloggiano anelli elastici di ritegno o fungono da scarico per l'utensile di rettifica.
- *Filettature, scanalature e fori.* Tratti filettati per ghiere di bloccaggio, profili scanalati per mozzi, fori di lubrificazione e sedi su dischi di turbine e compressori interrompono ripetutamente la continuità assiale del pezzo.

A parità di diametro della sezione minima $d$, le prove mostrano che un provino intagliato resiste sensibilmente meno di uno liscio sia in statica sia a fatica. Mentre nel tratto calibrato liscio le traiettorie di tensione scorrono quasi parallele, il brusco restringimento costringe il flusso tensionale a curvare rapidamente verso l'asse, concentrando lo sforzo al bordo libero dove nuclea il danno.

La curvatura delle linee di flusso stravolge anche la natura del campo locale: una sollecitazione esterna puramente monoassiale attiva componenti nelle altre direzioni principali, trasformando lo stato tensionale in *biassiale* nelle lastre piane sottili o *triassiale* nei solidi assialsimmetrici.

L'analisi assume sempre come riferimento la *sezione minima* (o ridotta) di fondo intaglio. Poiché il picco superficiale supera anche di diverse volte il valore medio calcolato con la teoria elementare della trave, occorre affiancare alle tensioni nominali opportuni coefficienti di concentrazione.

== Distribuzione delle tensioni principali nei casi canonici

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
      canvas(length: 1.0cm, {
        // BBox: x in [0.0, 7.8] (dx=7.8), y in [-0.7, 7.5], length=1.0cm -> larghezza = 7.8 cm <= 8.2 cm
        import draw: *

        // --- (a) Gola cilindrica in trazione ---
        content((3.90, 7.42), text(size: 8.5pt, weight: "bold")[(a) Gola cilindrica in trazione], anchor: "north")

        // Albero con gola (asse x = 1.65, y0 = 5.0)
        line((1.65, 3.25), (1.65, 6.75), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(110)))
        line((0.40, 6.65), (2.90, 6.65), stroke: 1.0pt)
        line((0.40, 3.35), (2.90, 3.35), stroke: 1.0pt)

        // Contorno sinistro con gola U (centro (0.68, 5.0), rho = 0.22 -> radice x = 0.90)
        line((0.40, 6.65), (0.40, 5.22), (0.68, 5.22), stroke: 1.0pt)
        arc((0.68, 5.0), start: 90deg, stop: -90deg, radius: 0.22, anchor: "origin", stroke: 1.0pt)
        line((0.68, 4.78), (0.40, 4.78), (0.40, 3.35), stroke: 1.0pt)

        // Contorno destro con gola U (centro (2.62, 5.0), rho = 0.22 -> radice x = 2.40)
        line((2.90, 6.65), (2.90, 5.22), (2.62, 5.22), stroke: 1.0pt)
        arc((2.62, 5.0), start: 90deg, stop: 270deg, radius: 0.22, anchor: "origin", stroke: 1.0pt)
        line((2.62, 4.78), (2.90, 4.78), (2.90, 3.35), stroke: 1.0pt)

        // Linee di flusso tensionali interne
        bezier((0.70, 6.50), (1.07, 5.00), (0.70, 5.65), (1.07, 5.40), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
        bezier((1.07, 5.00), (0.70, 3.50), (1.07, 4.60), (0.70, 4.35), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
        bezier((2.60, 6.50), (2.23, 5.00), (2.60, 5.65), (2.23, 5.40), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
        bezier((2.23, 5.00), (2.60, 3.50), (2.23, 4.60), (2.60, 4.35), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))

        // Carico P
        line((1.65, 6.65), (1.65, 7.05), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
        content((1.85, 6.88), text(size: 8pt)[$P$], anchor: "west")
        line((1.65, 3.35), (1.65, 2.95), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
        content((1.85, 3.12), text(size: 8pt)[$P$], anchor: "west")

        // Sezione minima e quote a, rho (freccia rho entrante nel vano aperto della gola)
        line((0.90, 5.0), (2.40, 5.0), stroke: (dash: "dotted", thickness: 0.6pt))
        line((2.40, 5.0), (2.40, 4.10), stroke: (dash: "dotted", thickness: 0.5pt))
        line((1.65, 4.15), (2.40, 4.15), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
        content((2.03, 4.02), text(size: 7.5pt)[$a$], anchor: "north")
        line((0.26, 5.00), (0.88, 5.00), stroke: 0.55pt, mark: (end: ">", scale: 0.48))
        content((0.22, 5.00), text(size: 7.5pt)[$rho$], anchor: "east")

        // Grafico tensioni principali normalizzate (r in [0, a] -> x in [4.0, 6.6])
        line((4.0, 3.6), (7.10, 3.6), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
        line((4.0, 3.6), (4.0, 6.5), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
        content((3.92, 6.52), text(size: 7.5pt)[$sigma / sigma_n$], anchor: "east")
        content((7.18, 3.60), text(size: 7.5pt)[$r$], anchor: "west")

        // Riferimento r = a e sigma_n = 1
        line((6.6, 3.6), (6.6, 6.30), stroke: (dash: "dotted", thickness: 0.6pt))
        content((6.6, 3.42), text(size: 7.5pt)[$a$], anchor: "north")
        line((4.0, 4.10), (6.6, 4.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(100)))

        // Tacche asse y (scala 0.5 cm/unità)
        for (val, yy) in (("1", 4.10), ("3", 5.10), ("5", 6.10)) {
          line((3.94, yy), (4.00, yy), stroke: 0.6pt)
          content((3.88, yy), text(size: 7pt)[#val], anchor: "east")
        }

        // Curve sigma_z/sigma_n, sigma_t/sigma_n, sigma_r/sigma_n
        bezier((4.0, 3.96), (6.6, 6.10), (5.8, 4.00), (6.4, 4.85), stroke: (paint: blue, thickness: 1.1pt))
        content((6.70, 6.10), text(size: 7.5pt, fill: blue)[$sigma_z / sigma_n$], anchor: "west")

        bezier((4.0, 3.82), (6.6, 4.35), (5.6, 3.86), (6.3, 4.08), stroke: (paint: red.transparentize(10%), thickness: 1.0pt))
        content((6.70, 4.42), text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_t / sigma_n$], anchor: "west")
        content((6.70, 4.02), text(size: 7pt, fill: luma(80))[$sigma_n$], anchor: "west")

        bezier((4.0, 3.82), (6.2, 4.12), (4.9, 3.88), (5.7, 4.15), stroke: (paint: black, thickness: 0.9pt))
        bezier((6.2, 4.12), (6.6, 3.60), (6.45, 4.08), (6.58, 3.78), stroke: (paint: black, thickness: 0.9pt))
        line((5.25, 3.32), (5.50, 3.93), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((5.25, 3.28), text(size: 7.5pt)[$sigma_r / sigma_n$], anchor: "north")

        // Separatore
        line((0.2, 2.68), (7.5, 2.68), stroke: (thickness: 0.4pt, paint: luma(190)))

        // --- (b) Lastra intagliata in flessione ---
        content((3.90, 2.52), text(size: 8.5pt, weight: "bold")[(b) Lastra intagliata in flessione], anchor: "north")

        // Lastra con intagli semicircolari laterali (asse x = 1.65, y0 = 0.85, rho = 0.35 -> a = 0.65)
        line((1.65, -0.25), (1.65, 1.95), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(110)))
        line((0.65, 1.95), (2.65, 1.95), stroke: 1.0pt)
        line((0.65, -0.25), (2.65, -0.25), stroke: 1.0pt)
        line((0.65, 1.95), (0.65, 1.20), stroke: 1.0pt)
        arc((0.65, 0.85), start: 90deg, stop: -90deg, radius: 0.35, anchor: "origin", stroke: 1.0pt)
        line((0.65, 0.50), (0.65, -0.25), stroke: 1.0pt)
        line((2.65, 1.95), (2.65, 1.20), stroke: 1.0pt)
        arc((2.65, 0.85), start: 90deg, stop: 270deg, radius: 0.35, anchor: "origin", stroke: 1.0pt)
        line((2.65, 0.50), (2.65, -0.25), stroke: 1.0pt)

        // Momenti flettenti M (fibre destre +a tese, fibre sinistre -a compresse)
        arc((1.65, 1.98), start: 35deg, stop: 145deg, radius: (0.85, 0.24), anchor: "origin", stroke: 0.75pt, mark: (end: ">", scale: 0.5))
        content((0.88, 2.15), text(size: 7.5pt)[$M$], anchor: "east")
        arc((1.65, -0.28), start: 325deg, stop: 215deg, radius: (0.85, 0.24), anchor: "origin", stroke: 0.75pt, mark: (end: ">", scale: 0.5))
        content((0.88, -0.45), text(size: 7.5pt)[$M$], anchor: "east")

        // Sezione minima e quota a
        line((1.00, 0.85), (2.30, 0.85), stroke: (dash: "dotted", thickness: 0.6pt))
        line((2.30, 0.85), (2.30, 0.12), stroke: (dash: "dotted", thickness: 0.5pt))
        line((1.65, 0.16), (2.30, 0.16), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
        content((1.98, 0.04), text(size: 7.5pt)[$a$], anchor: "north")

        // Profilo a farfalla distorto (x in [4.2, 6.7], centro x = 5.45, base y = 0.85)
        line((4.2, 0.85), (6.7, 0.85), stroke: 0.75pt)
        line((4.2, -0.25), (4.2, 1.95), stroke: (dash: "dotted", thickness: 0.55pt))
        line((5.45, 0.15), (5.45, 1.55), stroke: (dash: "dotted", thickness: 0.55pt))
        line((6.7, -0.25), (6.7, 1.95), stroke: (dash: "dotted", thickness: 0.55pt))

        // Farfalla nominale lineare
        line((4.2, 0.20), (6.7, 1.50), stroke: (dash: "dashed", thickness: 0.75pt, paint: luma(80)))
        content((6.78, 1.48), text(size: 7pt, fill: luma(80))[$sigma_n$], anchor: "west")

        // Profilo reale non lineare
        bezier((5.45, 0.85), (6.7, 1.92), (6.00, 1.12), (6.50, 1.42), stroke: (paint: blue, thickness: 1.1pt))
        bezier((5.45, 0.85), (4.2, -0.22), (4.90, 0.58), (4.40, 0.28), stroke: (paint: blue, thickness: 1.1pt))
        content((6.78, 1.92), text(size: 7.5pt, fill: blue)[$sigma_"max"$], anchor: "west")

        // Frecce tensione nella farfalla
        line((5.98, 0.85), (5.98, 1.15), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        line((6.38, 0.85), (6.38, 1.45), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        line((4.92, 0.85), (4.92, 0.55), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        line((4.52, 0.85), (4.52, 0.25), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))

        content((4.10, 0.85), text(size: 7pt)[$-a$], anchor: "east")
        content((5.36, 0.98), text(size: 7pt)[$0$], anchor: "south-east")
        content((6.78, 0.85), text(size: 7pt)[$+a$], anchor: "west")
      }),
      caption: [Tensioni principali nella gola cilindrica in trazione e distorsione non lineare della farfalla flessionale.],
    )
  ],
)

#v(0.6em)

*Lastra piana intagliata.* In una lastra sottile di spessore $d$ e semi-larghezza minima $a$ (larghezza netta $2 a$) con intagli laterali di raggio $rho$, la tensione nello spessore svanisce e il campo resta *biassiale*. Per trazione assiale $P$ e momento flettente nel piano $M$ le tensioni nominali sono:

$ sigma_n = frac(P, 2 a d) , quad sigma_n = frac(3 M, 2 d a^2) $

Per $a slash rho = 4$, il picco al bordo sale a circa $3 sigma_n$ in trazione e $2 sigma_n$ in flessione: lontano dalle gole il diagramma mantiene l'andamento uniforme o lineare a *farfalla*, mentre presso il bordo subisce un brusco incremento non lineare di ampiezza e gradiente.

Nei calcoli manuali di progetto si amplifica la sola componente principale già attiva nel caso nominale, lasciando al coefficiente di sicurezza la copertura delle componenti trasversali secondarie ($sigma_r$, $sigma_t$).

== Metodi di visualizzazione e stima: fotoelasticità e analogia idrodinamica

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, left + horizon),
  [
    #figure(
      canvas(length: 1.0cm, {
        // BBox: x in [0.0, 7.7] (dx=7.7), y in [0.0, 6.7], length=1.0cm -> larghezza = 7.7 cm <= 8.2 cm
        import draw: *

        // --- (a) Fotoelasticità ---
        content((1.85, 6.58), text(size: 8.5pt, weight: "bold")[(a) Fotoelasticità], anchor: "north")

        // Barra intagliata verticale (centro x = 1.35, y0 = 4.88, semilarghezza 0.75, rho = 0.26)
        line((0.60, 6.02), (2.10, 6.02), stroke: 1.0pt)
        line((0.60, 3.74), (2.10, 3.74), stroke: 1.0pt)
        line((0.60, 6.02), (0.60, 5.14), stroke: 1.0pt)
        arc((0.60, 4.88), start: 90deg, stop: -90deg, radius: 0.26, anchor: "origin", stroke: 1.0pt)
        line((0.60, 4.62), (0.60, 3.74), stroke: 1.0pt)
        line((2.10, 6.02), (2.10, 5.14), stroke: 1.0pt)
        arc((2.10, 4.88), start: 90deg, stop: 270deg, radius: 0.26, anchor: "origin", stroke: 1.0pt)
        line((2.10, 4.62), (2.10, 3.74), stroke: 1.0pt)

        // Carichi P
        line((1.35, 6.02), (1.35, 6.28), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        content((1.52, 6.16), text(size: 7.5pt)[$P$], anchor: "west")
        line((1.35, 3.74), (1.35, 3.48), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        content((1.52, 3.60), text(size: 7.5pt)[$P$], anchor: "west")

        // Frange birifrangenti addensate alle radici
        for rad in (0.09, 0.18, 0.28, 0.39) {
          arc((0.86, 4.88), start: -80deg, stop: 80deg, radius: rad, anchor: "origin", stroke: (thickness: 0.65pt, paint: luma(40)))
          arc((1.84, 4.88), start: 100deg, stop: 260deg, radius: rad, anchor: "origin", stroke: (thickness: 0.65pt, paint: luma(40)))
        }
        // Frange diradate lontano dall'intaglio
        bezier((0.68, 5.74), (2.02, 5.74), (1.10, 5.66), (1.60, 5.66), stroke: (thickness: 0.6pt, paint: luma(120)))
        bezier((0.68, 4.02), (2.02, 4.02), (1.10, 4.10), (1.60, 4.10), stroke: (thickness: 0.6pt, paint: luma(120)))

        // Richiami esterni puliti (freccia entrante dal vano gola senza intersecare gli archi)
        line((2.32, 5.72), (1.92, 5.70), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((2.36, 5.72), text(size: 7pt)[Zone scariche], anchor: "west")
        line((2.32, 4.88), (1.84, 4.88), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((2.36, 4.98), text(size: 7pt)[Frange dense], anchor: "west")
        content((2.36, 4.74), text(size: 6.5pt, fill: luma(70))[(alto gradiente)], anchor: "west")

        // --- (b) Analogia idrodinamica ---
        content((5.85, 6.58), text(size: 8.5pt, weight: "bold")[(b) Analogia idrodinamica], anchor: "north")

        // Sponde con 3 intagli in serie
        line((4.2, 5.70), (4.95, 5.70), stroke: 1.0pt)
        arc((5.15, 5.70), start: 180deg, stop: 360deg, radius: 0.20, anchor: "origin", stroke: 1.0pt)
        line((5.35, 5.70), (5.65, 5.70), stroke: 1.0pt)
        arc((5.85, 5.70), start: 180deg, stop: 360deg, radius: 0.20, anchor: "origin", stroke: 1.0pt)
        line((6.05, 5.70), (6.35, 5.70), stroke: 1.0pt)
        arc((6.55, 5.70), start: 180deg, stop: 360deg, radius: 0.20, anchor: "origin", stroke: 1.0pt)
        line((6.75, 5.70), (7.5, 5.70), stroke: 1.0pt)
        line((4.2, 4.10), (7.5, 4.10), stroke: 1.0pt)

        // Filetti fluidi (effetto ombra sulla gola centrale)
        line((4.2, 4.30), (7.5, 4.30), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        line((4.2, 4.65), (7.5, 4.65), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        bezier((4.2, 5.05), (5.85, 4.95), (4.85, 5.05), (5.20, 4.95), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt))
        bezier((5.85, 4.95), (7.5, 5.05), (6.50, 4.95), (6.85, 5.05), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        bezier((4.2, 5.45), (5.15, 5.22), (4.70, 5.45), (4.85, 5.24), stroke: (paint: rgb("#1f77b4"), thickness: 0.65pt))
        line((5.15, 5.22), (6.55, 5.22), stroke: (paint: rgb("#1f77b4"), thickness: 0.65pt))
        bezier((6.55, 5.22), (7.5, 5.45), (6.85, 5.24), (7.00, 5.45), stroke: (paint: rgb("#1f77b4"), thickness: 0.65pt), mark: (end: ">", scale: 0.42))

        line((5.85, 5.95), (5.85, 5.55), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((5.85, 6.00), text(size: 7pt)[Effetto ombra], anchor: "south")

        // Separatore
        line((0.2, 3.25), (7.5, 3.25), stroke: (thickness: 0.4pt, paint: luma(190)))

        // --- (c) Eccezione del foro piccolo ---
        content((3.85, 3.12), text(size: 8.5pt, weight: "bold")[(c) Eccezione del foro piccolo in trazione], anchor: "north")

        // Lastra forata in trazione P
        rect((0.8, 0.65), (3.1, 2.15), stroke: 1.0pt)
        line((0.8, 1.40), (0.45, 1.40), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        content((0.38, 1.40), text(size: 7.5pt)[$P$], anchor: "east")
        line((3.1, 1.40), (3.45, 1.40), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        content((3.52, 1.40), text(size: 7.5pt)[$P$], anchor: "west")

        // Filetti fluidi poco deviati
        line((0.8, 0.85), (3.1, 0.85), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        line((0.8, 1.95), (3.1, 1.95), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        bezier((0.8, 1.25), (1.95, 1.15), (1.50, 1.25), (1.75, 1.15), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt))
        bezier((1.95, 1.15), (3.1, 1.25), (2.15, 1.15), (2.40, 1.25), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))
        bezier((0.8, 1.55), (1.95, 1.65), (1.50, 1.55), (1.75, 1.65), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt))
        bezier((1.95, 1.65), (3.1, 1.55), (2.15, 1.65), (2.40, 1.55), stroke: (paint: rgb("#1f77b4"), thickness: 0.55pt), mark: (end: ">", scale: 0.42))

        circle((1.95, 1.40), radius: 0.14, fill: white, stroke: 0.9pt)
        content((1.95, 0.48), text(size: 7pt)[Flusso poco deviato], anchor: "north")

        // Profilo tensionale nella sezione del foro
        line((4.9, 1.54), (4.9, 2.25), stroke: 0.8pt)
        line((4.9, 0.55), (4.9, 1.26), stroke: 0.8pt)
        line((4.9, 1.26), (5.55, 1.26), stroke: (dash: "dotted", thickness: 0.55pt))
        line((4.9, 1.54), (5.55, 1.54), stroke: (dash: "dotted", thickness: 0.55pt))

        // Nominale sigma_n
        line((5.45, 1.54), (5.45, 2.25), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(90)))
        line((5.45, 0.55), (5.45, 1.26), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(90)))
        content((5.45, 0.46), text(size: 7pt, fill: luma(80))[$sigma_n$], anchor: "north")

        // Picco locale al bordo del foro
        bezier((5.45, 2.25), (6.95, 1.54), (5.45, 1.75), (5.75, 1.60), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        bezier((5.45, 0.55), (6.95, 1.26), (5.45, 1.05), (5.75, 1.20), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))

        // Frecce profilo
        for yy in (2.15, 1.90, 1.68) {
          line((4.9, yy), (5.45, yy), stroke: (paint: red.transparentize(10%), thickness: 0.5pt), mark: (end: ">", scale: 0.38))
        }
        line((4.9, 1.54), (6.92, 1.54), stroke: (paint: red.transparentize(10%), thickness: 0.6pt), mark: (end: ">", scale: 0.42))
        for yy in (0.65, 0.90, 1.12) {
          line((4.9, yy), (5.45, yy), stroke: (paint: red.transparentize(10%), thickness: 0.5pt), mark: (end: ">", scale: 0.38))
        }
        line((4.9, 1.26), (6.92, 1.26), stroke: (paint: red.transparentize(10%), thickness: 0.6pt), mark: (end: ">", scale: 0.42))

        line((6.45, 1.96), (6.90, 1.57), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((6.18, 2.02), text(size: 7pt, fill: red.transparentize(10%))[Picco locale \ al bordo], anchor: "south-west")
        content((6.98, 1.40), text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_"max"$], anchor: "west")
      }),
      caption: [Schema di fotoelasticità, analogia idrodinamica con effetto ombra ed eccezione del foro piccolo.],
    )
  ],
  [
    *Fotoelasticità.* Un modello del pezzo in resina trasparente *birifrangente* viene caricato sotto luce polarizzata o bianca, affiancando spesso *estensimetri* elettrici di confronto. La deformazione altera l'indice di rifrazione generando frange ottiche legate alla semidifferenza delle tensioni principali.

    Frange fitte denunciano rapidi gradienti tensionali, mentre frange rade indicano zone scariche; il metodo distingue trazione e compressione per verso dei lobi ottici ed evidenzia micro-intagli accidentali. Su queste prove R.E. Peterson costruì i propri abachi.
  ],
)

#v(0.6em)

#figure(
  grid(
    columns: (1.06fr, 1fr),
    column-gutter: 1em,
    align: (center + horizon, center + horizon),
    [
      #image("images/ECM01-5_fotoelasticita_lastra_estensimetri.jpg", height: 4.8cm)
      #text(size: 8pt)[(a) Lastra forata in luce bianca con estensimetri]
    ],
    [
      #image("images/ECM01-5_fotoelasticita_organi_macchine.png", height: 4.8cm)
      #text(size: 8pt)[(b) Gole, dente d'ingranaggio (contatto e piede) e vite ortopedica]
    ],
  ),
  caption: [Evidenze sperimentali fotoelastiche: doppia misura ottico-estensimetrica attorno a un foro (a) e addensamento delle frange in intagli meccanici reali (b).],
)

#v(0.5em)

*Analogia idrodinamica.* Assimilando i contorni del solido alle sponde di un canale e le traiettorie di sforzo ai filetti fluidi, restringimenti bruschi strozzano la corrente segnalando forti concentrazioni. In intagli multipli ravvicinati (come i filetti di una vite), le gole centrali restano parzialmente schermate da quelle esterne per *effetto ombra*, principio sfruttato anche nelle gole di scarico per addolcire le deviazioni del flusso.

*Eccezione del foro piccolo.* L'analogia idrodinamica cade in difetto per una lastra tesa con un piccolo foro centrale: i filetti globali appaiono quasi indisturbati, ma il ridottissimo raggio di curvatura produce sul bordo libero interno un picco locale severo ($K_t -> 3$ per foro circolare, oltre $10$ in micro-difetti acuti), punto privilegiato di innesco a fatica.

= Fattore di concentrazione statico $K_t$ e diagrammi di Peterson

== Procedura di calcolo in statica e definizione di $K_t$

Per evitare modelli analitici complessi diversi per ogni forma, la verifica statica mantiene le formule elementari delle travi (o di dischi e tubi) correggendole in tre passi:

+ *Calcolo della tensione nominale.* Individuata la sezione minima dell'intaglio, si calcola la tensione massima che vi agirebbe in assenza di discontinuità ($sigma_"nom"$ o $tau_"nom"$) mediante De Saint-Venant.
+ *Applicazione del coefficiente correttivo.* Noti geometria, proporzioni e tipo di carico, si ricava da diagrammi sperimentali o modelli numerici il fattore di concentrazione statico per valutare la *tensione effettiva* di picco.
+ *Verifica di resistenza.* Si confronta la tensione locale (oppure quella nominale, in base alla duttilità del materiale e allo stato limite adottato) con la resistenza limite divisa per il coefficiente di sicurezza.

Il rapporto tra la tensione principale massima effettiva all'apice dell'intaglio e la tensione nominale nella sezione ristretta definisce il *fattore di concentrazione delle tensioni* (o *fattore di forma*), indicato con $K_t$ o $alpha_k$:

$ K_t = frac(sigma^"max", sigma_"nom") $

Per un albero con gola (diametro minimo $d$, diametro esterno $D$, raggio di fondo $r$) soggetto a forza assiale $F$, vale $sigma_"nom" = (4 F) / (pi d^2)$: la gola attiva la terna $sigma_z$, $sigma_c$, $sigma_r$ (con $sigma_r = 0$ sul bordo), ma $K_t$ amplifica la sola componente assiale dominante $sigma_z$. Per le geometrie comuni $K_t$ deriva per *via sperimentale* (fotoelasticità, estensimetri, vernici fragili); per forme non tabellate si ricorre alla *via numerica* (FEM o BEM).

== Carte di Peterson e geometrie tipiche

Le campagne sperimentali sono raccolte nei diagrammi di R.E. Peterson (*Stress Concentration Factors*, Wiley, 1974). Ogni grafico correda la famiglia di curve con lo schema quotato del pezzo, il carico applicato e la formula esatta di $sigma_"nom"$ o $tau_"nom"$, esprimendo $K_t$ in funzione di rapporti adimensionali: snellezza del raccordo $r/d$ (o $r/h$) in ascissa e rapporto delle sezioni $D/d$ (o $H/h$) come parametro di curva.

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0.7em,
    row-gutter: 0.6em,
    align: (center + bottom, center + bottom, center + bottom),
    [
      #image("images/ECM01-5_peterson_spallamento_trazione.png", width: 100%)
      #text(size: 7.5pt)[*Spallamento — Trazione*]
    ],
    [
      #image("images/ECM01-5_peterson_spallamento_flessione.png", width: 100%)
      #text(size: 7.5pt)[*Spallamento — Flessione*]
    ],
    [
      #image("images/ECM01-5_peterson_spallamento_torsione.png", width: 100%)
      #text(size: 7.5pt)[*Spallamento — Torsione*]
    ],
    [
      #image("images/ECM01-5_peterson_gola_trazione.png", width: 100%)
      #text(size: 7.5pt)[*Gola — Trazione*]
    ],
    [
      #image("images/ECM01-5_peterson_gola_flessione.png", width: 100%)
      #text(size: 7.5pt)[*Gola — Flessione*]
    ],
    [
      #image("images/ECM01-5_peterson_gola_torsione.png", width: 100%)
      #text(size: 7.5pt)[*Gola — Torsione*]
    ],
  ),
  caption: [Carte sperimentali di Peterson del fattore $K_t$ per alberi assialsimmetrici con spallamento (riga superiore) e con gola circonferenziale (riga inferiore) in trazione, flessione e torsione.],
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
      #image("images/ECM01-5_peterson_lastra_spallamento.png", height: 4.1cm)
      #text(size: 7.5pt)[*Lastra con spallamento in trazione*]
    ],
    [
      #image("images/ECM01-5_peterson_lastra_intagli.png", height: 4.1cm)
      #text(size: 7.5pt)[*Lastra con intagli laterali a U in trazione*]
    ],
    [
      #image("images/ECM01-5_peterson_foro_flessione.png", height: 4.4cm)
      #text(size: 7.5pt)[*Lastra forata in flessione fuori piano (parametro $d\/h$)*]
    ],
    [
      #image("images/ECM01-5_peterson_foro_trazione.png", height: 4.4cm)
      #text(size: 7.5pt)[*Lastra forata in trazione (curva unica in $d\/b$)*]
    ],
  ),
  caption: [Carte di Peterson per elementi piani intagliati e forati, incluso il caso particolare della lastra forata tesa governato dal solo rapporto $d\/b$.],
)

== Limite teorico per raggio nullo e risposta elastoplastica

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
      canvas(length: 1.0cm, {
        // BBox: x in [-0.6, 6.8] (dx=7.4), y in [-0.1, 6.8], length=1.0cm -> larghezza = 7.4 cm <= 8.2 cm
        import draw: *

        // Griglia parametrica: x in [0.6, 5.1] -> r/d in [0, 0.3], y in [0.9, 6.1] -> K_t in [1.0, 3.0]
        for rd in (0.1, 0.2, 0.3) {
          let xx = 0.6 + (rd / 0.3) * 4.5
          line((xx, 0.9), (xx, 6.1), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(75%)))
          line((xx, 0.9), (xx, 0.78), stroke: 0.7pt)
          content((xx, 0.58), text(size: 7.5pt)[#rd], anchor: "center")
        }
        content((0.6, 0.58), text(size: 7.5pt)[0], anchor: "center")
        content((5.62, 0.58), text(size: 8pt)[$r / d$], anchor: "center")

        for kt in (1.0, 1.5, 2.0, 2.5, 3.0) {
          let yy = 0.9 + (kt - 1.0) * 2.6
          if kt > 1.0 {
            line((0.6, yy), (5.1, yy), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(75%)))
          }
          line((0.6, yy), (0.48, yy), stroke: 0.7pt)
          content((0.40, yy), text(size: 7.5pt)[#kt], anchor: "east")
        }
        content((-0.25, 3.5), text(size: 8pt)[$K_t$], anchor: "east")

        // Assi
        line((0.6, 0.9), (5.38, 0.9), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
        line((0.6, 0.9), (0.6, 6.45), stroke: 0.9pt, mark: (end: ">", scale: 0.6))

        // Limite D/d -> 1 (richiamo inferiore senza alcuna collisione con la curva 1.02)
        line((0.6, 0.9), (5.1, 0.9), stroke: (dash: "dashed", thickness: 0.8pt, paint: blue))
        line((2.85, 0.36), (2.85, 0.88), stroke: (thickness: 0.55pt, paint: blue), mark: (end: ">", scale: 0.45))
        content((2.85, 0.30), text(size: 7pt, fill: blue)[Limite $D\/d -> 1$ ($K_t = 1$)], anchor: "north")

        // Asintoto elastico r/d -> 0
        line((0.98, 6.38), (0.68, 6.08), stroke: (thickness: 0.55pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.48))
        content((1.04, 6.42), text(size: 7pt, fill: red.transparentize(10%))[Singolarità elastica $r\/d -> 0$ ($K_t -> oo$)], anchor: "west")

        // Soglia fisica di snervamento locale (smussamento)
        line((0.6, 4.95), (2.25, 4.95), stroke: (dash: "dashed", thickness: 0.75pt, paint: rgb("#1f77b4")))
        content((2.32, 4.98), text(size: 6.8pt, fill: rgb("#1f77b4"))[Limite reale per \ snervamento locale], anchor: "west")

        let curves = (
          (label: [$D\/d = 2.0$], c: 0.30, p: 0.50, rmin: 0.022, col: red.transparentize(15%)),
          (label: [$1.5$], c: 0.22, p: 0.48, rmin: 0.015, col: black),
          (label: [$1.15$], c: 0.13, p: 0.45, rmin: 0.010, col: black),
          (label: [$1.02$], c: 0.070, p: 0.42, rmin: 0.008, col: black.transparentize(30%)),
        )
        for cv in curves {
          let pts = ()
          let nsteps = 28
          for i in range(nsteps + 1) {
            let rd = cv.rmin + (0.30 - cv.rmin) * (i / nsteps)
            let kt = 1.0 + cv.c / calc.pow(rd, cv.p)
            if kt <= 3.0 {
              let xx = 0.6 + (rd / 0.3) * 4.5
              let yy = 0.9 + (kt - 1.0) * 2.6
              pts.push((xx, yy))
            }
          }
          line(..pts, stroke: (thickness: 1.05pt, paint: cv.col))
          let last = pts.last()
          content((last.at(0) + 0.12, last.at(1)), text(size: 7pt, fill: cv.col)[#cv.label], anchor: "west")
        }
      }),
      caption: [Andamento asintotico teorico di $K_t$ per $r\/d -> 0$ e limitazione fisica dovuta allo snervamento locale.],
    )
  ],
)

= Verifica statica: materiali fragili vs duttili e stati multiassiali

== Ridistribuzione delle tensioni nei materiali duttili

Consideriamo una lastra duttile di larghezza netta $h$ con due intagli semicircolari laterali, sottoposta a una trazione assiale $P$ crescente. Lungo la sezione minima seguiamo tre posizioni rappresentative: il bordo dell'intaglio $A$, la fascia intermedia $B$ e il punto centrale $C$ (il più distante dalle gole).

#figure(
  canvas(length: 1cm, {
    // BBox: x in [0.0, 15.6] (dx=15.6), y in [-0.2, 5.6], length=1.0cm -> larghezza = 15.6 cm <= 17.0 cm
    import draw: *

    // Schema superiore del carico P e larghezza h
    line((6.1, 5.25), (7.1, 5.25), stroke: 1pt)
    arc((7.5, 5.25), start: 180deg, stop: 360deg, radius: 0.40, anchor: "origin", stroke: 1pt)
    line((7.9, 5.25), (8.9, 5.25), stroke: 1pt)
    line((6.1, 3.85), (7.1, 3.85), stroke: 1pt)
    arc((7.5, 3.85), start: 0deg, stop: 180deg, radius: 0.40, anchor: "origin", stroke: 1pt)
    line((7.9, 3.85), (8.9, 3.85), stroke: 1pt)
    line((6.1, 3.85), (6.1, 5.25), stroke: 1pt)
    line((8.9, 3.85), (8.9, 5.25), stroke: 1pt)
    // Frecce P
    line((6.1, 4.55), (5.2, 4.55), stroke: 1.2pt, mark: (end: ">", scale: 0.7))
    line((8.9, 4.55), (9.8, 4.55), stroke: 1.2pt, mark: (end: ">", scale: 0.7))
    content((5.55, 4.88), [#text(size: 8pt, weight: "bold")[$P$]], anchor: "center")
    content((9.45, 4.88), [#text(size: 8pt, weight: "bold")[$P$]], anchor: "center")
    // Quota h
    line((7.5, 4.25), (7.5, 4.85), stroke: 0.55pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
    content((7.68, 4.55), [#text(size: 8pt)[$h$]], anchor: "west")
    // Freccia P crescente
    line((10.5, 4.55), (14.8, 4.55), stroke: (thickness: 0.75pt, paint: blue), mark: (end: ">", scale: 0.6))
    content((12.65, 4.85), [#text(size: 7.5pt, fill: blue)[Carico assiale $P$ crescente]], anchor: "center")

    // 4 pannelli orizzontali: (a), (b), (c), (d)
    let x0s = (0.35, 4.25, 8.15, 12.05)
    let labels = ("(a) Elastico", "(b) Snervamento in A", "(c) Zona B snerva", "(d) Cerniera plastica (C)")

    for idx in range(4) {
      let x0 = x0s.at(idx)
      let xsec = x0 + 0.85
      let xbase = x0 + 1.55
      let xreh = xbase + 1.15

      // Titolo pannello
      content((x0 + 1.55, 3.45), [#text(size: 7.5pt, weight: "bold")[#labels.at(idx)]], anchor: "center")

      // Geometria lastra con due intagli semicircolari (altezza sezione netta: y in [0.75, 2.75])
      line((x0, 3.10), (xsec - 0.35, 3.10), stroke: 0.9pt)
      arc((xsec, 3.10), start: 180deg, stop: 360deg, radius: 0.35, anchor: "origin", stroke: 0.9pt)
      line((xsec + 0.35, 3.10), (x0 + 1.35, 3.10), stroke: 0.9pt)

      line((x0, 0.40), (xsec - 0.35, 0.40), stroke: 0.9pt)
      arc((xsec, 0.40), start: 0deg, stop: 180deg, radius: 0.35, anchor: "origin", stroke: 0.9pt)
      line((xsec + 0.35, 0.40), (x0 + 1.35, 0.40), stroke: 0.9pt)

      // Linea asse sezione minima
      line((xsec, 0.75), (xsec, 2.75), stroke: (dash: "dotted", thickness: 0.5pt))

      // Linee di riferimento orizzontali dei bordi netti
      line((xsec, 2.75), (xreh + 0.15, 2.75), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(60%)))
      line((xsec, 0.75), (xreh + 0.15, 0.75), stroke: (dash: "dotted", thickness: 0.45pt, paint: black.transparentize(60%)))

      // Asse base tensioni (sigma = 0) e soglia R_eH
      line((xbase, 0.55), (xbase, 2.95), stroke: 0.8pt)
      line((xreh, 0.55), (xreh, 2.95), stroke: (dash: "dashed", thickness: 0.7pt, paint: red.transparentize(15%)))
      content((xreh, 0.25), [#text(size: 7pt, fill: red.transparentize(10%))[$R_"eH"$]], anchor: "center")

      // Profili di tensione per i 4 stadi
      if idx == 0 {
        // (a) Elastico: orecchie di gatto < R_eH
        let pts = ()
        for k in range(25) {
          let t = k / 24.0
          let yy = 0.75 + 2.0 * t
          let dy = calc.abs(t - 0.5) * 2.0
          let sig = 0.28 + 0.55 * calc.pow(dy, 2.6)
          pts.push((xbase + sig, yy))
        }
        line(..pts, stroke: (thickness: 1.1pt, paint: blue))
        for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
          let dy = calc.abs((fy - 0.75) / 2.0 - 0.5) * 2.0
          let sig = 0.28 + 0.55 * calc.pow(dy, 2.6)
          line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
        }
        circle((xsec, 2.75), radius: 0.06, fill: red.transparentize(10%), stroke: 0.5pt)
        content((xsec - 0.20, 2.58), [#text(size: 7.5pt, weight: "bold", fill: red.transparentize(10%))[A]], anchor: "east")
      } else if idx == 1 {
        // (b) Primo snervamento in A (tocca esattamente R_eH)
        let pts = ()
        for k in range(25) {
          let t = k / 24.0
          let yy = 0.75 + 2.0 * t
          let dy = calc.abs(t - 0.5) * 2.0
          let sig = 0.46 + 0.69 * calc.pow(dy, 2.4)
          pts.push((xbase + sig, yy))
        }
        line(..pts, stroke: (thickness: 1.1pt, paint: blue))
        for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
          let dy = calc.abs((fy - 0.75) / 2.0 - 0.5) * 2.0
          let sig = 0.46 + 0.69 * calc.pow(dy, 2.4)
          line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
        }
        circle((xsec, 2.75), radius: 0.055, fill: red.transparentize(10%), stroke: 0.5pt)
        circle((xsec, 2.32), radius: 0.06, fill: black, stroke: 0.5pt)
        content((xsec - 0.20, 2.32), [#text(size: 7.5pt, weight: "bold")[B]], anchor: "east")
      } else if idx == 2 {
        // (c) Zona intermedia B plasticizzata (plateau a R_eH)
        rect((xbase, 2.30), (xreh, 2.75), fill: red.transparentize(84%), stroke: none)
        rect((xbase, 0.75), (xreh, 1.20), fill: red.transparentize(84%), stroke: none)
        line((xreh, 0.75), (xreh, 1.20), stroke: (thickness: 1.15pt, paint: red.transparentize(10%)))
        line((xreh, 2.30), (xreh, 2.75), stroke: (thickness: 1.15pt, paint: red.transparentize(10%)))
        let pts = ()
        for k in range(17) {
          let t = k / 16.0
          let yy = 1.20 + 1.10 * t
          let dy = calc.abs(t - 0.5) * 2.0
          let sig = 0.78 + 0.37 * calc.pow(dy, 1.9)
          pts.push((xbase + sig, yy))
        }
        line(..pts, stroke: (thickness: 1.1pt, paint: blue))
        for fy in (0.75, 1.20, 1.75, 2.30, 2.75) {
          let sig = if fy >= 2.29 or fy <= 1.21 { 1.15 } else { 0.78 }
          line((xbase, fy), (xbase + sig, fy), stroke: (thickness: 0.55pt, paint: blue.transparentize(30%)), mark: (end: ">", scale: 0.4))
        }
        circle((xsec, 1.75), radius: 0.06, fill: blue, stroke: 0.5pt)
        content((xsec - 0.20, 1.75), [#text(size: 7.5pt, weight: "bold", fill: blue)[C]], anchor: "east")
      } else {
        // (d) Completa plasticizzazione (cerniera plastica)
        rect((xbase, 0.75), (xreh, 2.75), fill: red.transparentize(84%), stroke: none)
        line((xreh, 0.75), (xreh, 2.75), stroke: (thickness: 1.2pt, paint: red.transparentize(10%)))
        for fy in (0.75, 1.25, 1.75, 2.25, 2.75) {
          line((xbase, fy), (xreh, fy), stroke: (thickness: 0.55pt, paint: red.transparentize(25%)), mark: (end: ">", scale: 0.4))
        }
        circle((xsec, 1.75), radius: 0.06, fill: red.transparentize(10%), stroke: 0.5pt)
        content((xsec - 0.20, 1.75), [#text(size: 7.5pt, weight: "bold", fill: red.transparentize(10%))[C]], anchor: "east")
      }
    }
  }),
  caption: [Evoluzione elastoplastica e ridistribuzione delle tensioni sulla sezione minima di una lastra duttile intagliata al crescere di $P$.],
)

Al crescere di $P$, il profilo tensionale evolve attraverso quattro stadi consecutivi:

+ *Stadio (a) — Regime elastico.* Per bassi carichi si formano due picchi simmetrici («orecchie di gatto») ai bordi $A$ con $sigma_A = K_t sigma_"nom" < R_"eH"$, mentre il cuore $C$ lavora a tensione molto più bassa.
+ *Stadio (b) — Primo snervamento in $A$.* Aumentando $P$, le fibre in $A$ raggiungono la tensione di snervamento $R_"eH"$ (o $R_"p0.2"$): il picco locale smette di crescere e si arresta sul plateau plastico.
+ *Stadio (c) — Richiamo della fascia intermedia $B$.* Ulteriori incrementi di $P$ trasferiscono il carico extra sulle fibre interne ancora elastiche in $B$, che snervano progressivamente appiattendo le punte laterali.
+ *Stadio (d) — Completa plasticizzazione in $C$.* Quando anche il cuore $C$ raggiunge $R_"eH"$, l'intera sezione è snervata (*cerniera plastica*): esaurita la riserva elastica di recupero (*recovering*), un modesto aumento di $P$ porta tutte le fibre lungo il tratto plastico fino alla rottura duttile ($R_m$).

== Criteri di verifica per sollecitazioni uniassiali

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il comportamento statico si classifica tramite l'allungamento percentuale a rottura $A\%$, misurato sul tratto calibrato ricomponendo le due metà del provino dopo trazione.

    Nei *materiali fragili* ($A < 5\%$) la curva $sigma$–$varepsilon$ resta quasi lineare fino alla decoesione improvvisa: una cricca innescata sul bordo $A$ propaga istantaneamente, perciò la verifica deve confrontare il picco effettivo con il carico unitario di rottura $R_m$:

    $ sigma^"max" = K_t dot sigma_"nom" < R_m $

    I *materiali duttili* ($A > 5\%$) mostrano invece uno snervamento evidente ($R_"eH"$) o convenzionale allo $0.2\%$ ($R_"p0.2"$), seguito da incrudimento e *strizione* prima della rottura.
  ],
  [
    #figure(
      canvas(length: 0.92cm, {
        // BBox: x in [-0.3, 8.5] (dx=8.8), y in [-0.3, 5.0], length=0.92cm -> larghezza = 8.10 cm <= 8.2 cm
        import draw: *

        // --- (a) Materiale fragile (A < 5%) ---
        content((1.10, 4.88), text(size: 7.2pt, weight: "bold")[(a) Fragile], anchor: "north")
        line((0.35, 0.45), (1.95, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        line((0.35, 0.45), (0.35, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        content((2.02, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
        content((0.26, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

        line((0.35, 0.45), (0.98, 2.95), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        bezier((0.98, 2.95), (1.32, 3.55), (1.08, 3.25), (1.20, 3.42), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        circle((1.32, 3.55), radius: 0.055, fill: red.transparentize(10%), stroke: 0.5pt)
        line((0.35, 3.55), (1.32, 3.55), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
        content((0.27, 3.55), text(size: 7pt, fill: red.transparentize(10%))[$R_m$], anchor: "east")

        // --- (b) Duttile con snervamento evidente R_eH ---
        content((4.00, 4.88), text(size: 7.2pt, weight: "bold")[(b) Duttile ($R_"eH"$)], anchor: "north")
        line((2.95, 0.45), (5.10, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        line((2.95, 0.45), (2.95, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        content((5.17, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
        content((2.86, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

        line((2.95, 0.45), (3.25, 2.55), stroke: (paint: blue, thickness: 1.1pt))
        line((3.25, 2.55), (3.35, 2.32), (3.44, 2.40), (3.54, 2.35), (3.65, 2.38), stroke: (paint: blue, thickness: 1.0pt))
        bezier((3.65, 2.38), (4.42, 3.65), (3.88, 3.25), (4.15, 3.65), stroke: (paint: blue, thickness: 1.1pt))
        bezier((4.42, 3.65), (4.88, 3.00), (4.62, 3.65), (4.78, 3.35), stroke: (paint: blue, thickness: 1.1pt))
        circle((4.42, 3.65), radius: 0.055, fill: blue, stroke: 0.5pt)

        line((2.95, 2.55), (3.25, 2.55), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
        content((2.87, 2.55), text(size: 6.8pt, fill: blue)[$R_"eH"$], anchor: "east")
        line((2.95, 3.65), (4.42, 3.65), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
        content((2.87, 3.65), text(size: 7pt, fill: blue)[$R_m$], anchor: "east")

        // --- (c) Duttile con snervamento convenzionale R_p0.2 ---
        content((7.10, 4.88), text(size: 7.2pt, weight: "bold")[(c) Duttile ($R_"p0.2"$)], anchor: "north")
        line((6.05, 0.45), (8.20, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        line((6.05, 0.45), (6.05, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
        content((8.27, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
        content((5.96, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

        line((6.05, 0.45), (6.32, 2.15), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
        bezier((6.32, 2.15), (7.48, 3.65), (6.48, 3.15), (7.05, 3.65), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
        bezier((7.48, 3.65), (7.95, 3.02), (7.68, 3.65), (7.85, 3.35), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
        circle((7.48, 3.65), radius: 0.055, fill: rgb("#1f77b4"), stroke: 0.5pt)

        // Retta di scarico parallela allo 0.2% (pendenza 1.70/0.27 = 6.30 -> da (6.35, 0.45) a (6.68, 2.53))
        line((6.35, 0.45), (6.68, 2.53), stroke: (dash: "dotted", thickness: 0.65pt, paint: black))
        circle((6.68, 2.53), radius: 0.05, fill: white, stroke: 0.65pt)
        content((6.42, 0.32), text(size: 6.4pt)[$0.2\%$], anchor: "north")

        line((6.05, 2.53), (6.68, 2.53), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
        content((5.97, 2.53), text(size: 6.6pt, fill: rgb("#1f77b4"))[$R_"p0.2"$], anchor: "east")
        line((6.05, 3.65), (7.48, 3.65), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
        content((5.97, 3.65), text(size: 7pt, fill: rgb("#1f77b4"))[$R_m$], anchor: "east")
      }),
      caption: [Curve statiche $sigma$–$varepsilon$ per materiali fragili (a) e duttili a snervamento evidente $R_"eH"$ (b) o convenzionale $R_"p0.2"$ (c).],
    )
  ],
)

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
  caption: [Sintesi dei criteri di verifica statica uniassiale in presenza di intagli.],
)

== Estensione alle sollecitazioni multiassiali (criterio di Von Mises)

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

= Effetto dell'intaglio a fatica: fattore $K_f$, sensibilità $q$ e metodi numerici

== Fattore di riduzione della resistenza a fatica $K_f$ e confronto con $K_t$

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
      canvas(length: 0.72cm, {
        // BBox: x in [-0.7, 10.3] (dx=11.0), y in [-0.6, 7.3], length=0.72cm -> larghezza = 7.92 cm <= 8.2 cm
        import draw: *

        // --- Micro-schema (a) Provino liscio ("u") ---
        line((0.6, 6.75), (1.0, 6.75), (1.25, 6.60), (3.65, 6.60), (3.9, 6.75), (4.3, 6.75), stroke: 0.9pt)
        line((0.6, 5.85), (1.0, 5.85), (1.25, 6.00), (3.65, 6.00), (3.9, 5.85), (4.3, 5.85), stroke: 0.9pt)
        line((0.45, 6.30), (4.45, 6.30), stroke: (dash: "dashed", thickness: 0.5pt))
        line((2.45, 7.12), (2.45, 6.60), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        line((2.45, 5.48), (2.45, 6.00), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((2.45, 7.18), anchor: "south", text(size: 7.5pt)[$d$])
        content((2.45, 5.12), anchor: "center", text(size: 7pt)[(a) Provino liscio (u)])

        // --- Micro-schema (b) Provino intagliato ("n") ---
        line((5.2, 6.85), (6.80, 6.85), stroke: 0.9pt)
        arc((7.05, 6.85), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 0.9pt)
        line((7.30, 6.85), (8.9, 6.85), stroke: 0.9pt)
        line((5.2, 5.75), (6.80, 5.75), stroke: 0.9pt)
        arc((7.05, 5.75), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 0.9pt)
        line((7.30, 5.75), (8.9, 5.75), stroke: 0.9pt)
        line((5.05, 6.30), (9.05, 6.30), stroke: (dash: "dashed", thickness: 0.5pt))
        line((7.05, 7.12), (7.05, 6.60), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        line((7.05, 5.48), (7.05, 6.00), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
        content((7.05, 7.18), anchor: "south", text(size: 7.5pt)[$d$])
        content((7.05, 5.12), anchor: "center", text(size: 7pt)[(b) Provino intagliato (n)])

        // --- Diagramma log-log S_n vs N ---
        line((0.6, 0.55), (0.6, 4.40), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        line((0.6, 0.55), (7.65, 0.55), stroke: 0.85pt, mark: (end: ">", scale: 0.55))

        // Tacche asse N
        for (x, lbl) in ((1.2, $10^3$), (2.3, $10^4$), (3.4, $10^5$), (4.5, $10^6$), (5.6, $10^7$)) {
          line((x, 0.55), (x, 0.70), stroke: 0.6pt)
          content((x, 0.38), anchor: "north", text(size: 7pt)[#lbl])
        }
        content((4.1, -0.25), anchor: "center", text(size: 7.5pt)[Durata $N$ (cicli, scala log)])
        content((-0.25, 2.45), anchor: "center", std.rotate(-90deg, reflow: true)[#text(size: 7.5pt)[Tensione nominale $S_n$]])

        // Curva provini lisci S_n(u)
        line((1.2, 3.95), (4.4, 2.55), (6.5, 2.55), stroke: 1.15pt + blue)
        content((2.9, 3.55), anchor: "south-west", text(size: 7.5pt, fill: blue)[Provini lisci])
        content((5.55, 2.75), anchor: "south", text(size: 7.5pt, fill: blue)[$S_n (u)$])

        // Curva provini intagliati S_n(n)
        line((1.2, 3.25), (4.4, 1.55), (6.5, 1.55), stroke: 1.15pt + red.transparentize(10%))
        content((5.55, 1.35), anchor: "north", text(size: 7.5pt, fill: red.transparentize(10%))[$S_n (n)$])
        content((1.05, 1.10), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%))[Provini intagliati])
        line((2.15, 1.38), (2.45, 2.57), stroke: (paint: red.transparentize(10%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: red.transparentize(10%)))

        // Rapporto K_f
        line((6.5, 2.55), (7.10, 2.55), stroke: (dash: "dotted", thickness: 0.6pt))
        line((6.5, 1.55), (7.10, 1.55), stroke: (dash: "dotted", thickness: 0.6pt))
        line((6.85, 1.55), (6.85, 2.55), stroke: 0.75pt, mark: (start: ">", end: ">", scale: 0.5))
        content((7.15, 2.05), anchor: "west", text(size: 7.5pt)[$K_f = frac(S_n (u), S_n (n))$])
      }),
      caption: [Curve di Wöhler a parità di diametro minimo $d$ e definizione del fattore $K_f$.],
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
      canvas(length: 0.72cm, {
        // BBox: x in [-0.1, 10.6] (dx=10.7), y in [-0.3, 5.6], length=0.72cm -> larghezza = 7.70 cm <= 8.2 cm
        import draw: *

        // --- Lastra forata in trazione P ---
        rect((0.45, 1.3), (2.35, 4.7), stroke: 1.0pt)
        circle((1.4, 3.0), radius: 0.40, fill: white, stroke: 0.9pt)
        line((1.4, 4.7), (1.4, 5.45), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        line((1.4, 1.3), (1.4, 0.55), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
        content((1.65, 5.20), anchor: "west", text(size: 8pt)[$P$])
        content((1.65, 0.80), anchor: "west", text(size: 8pt)[$P$])

        // Sezione A-A
        line((0.12, 3.0), (2.68, 3.0), stroke: (dash: "dashed", thickness: 0.65pt))
        content((0.12, 3.22), anchor: "south", text(size: 7pt)[A])
        content((2.68, 3.22), anchor: "south", text(size: 7pt)[A])
        content((1.4, 0.05), anchor: "center", text(size: 7.5pt)[Sez. A–A])

        // Tensioni schematiche nella lastra (staccate dal bordo esterno)
        rect((0.45, 3.0), (1.00, 3.42), fill: black.transparentize(86%), stroke: 0.6pt)
        content((0.72, 3.58), anchor: "south", text(size: 7pt)[$sigma_n$])
        bezier((1.80, 3.92), (2.28, 3.42), (1.94, 3.55), (2.10, 3.45), stroke: 0.9pt + blue)
        line((1.80, 3.0), (1.80, 3.92), stroke: 0.6pt + blue)
        content((2.04, 4.10), anchor: "south", text(size: 7pt, fill: blue)[$sigma_t$])

        // Richiamo verso gli ingrandimenti
        line((1.80, 3.0), (3.48, 2.80), stroke: (dash: "dotted", thickness: 0.6pt))

        // --- Ingrandimento 1: Caso statico (K_t, con eventuale snervamento) ---
        circle((4.9, 2.8), radius: 1.42, fill: luma(250), stroke: 0.85pt)
        arc((3.05, 2.2), start: -26.7deg, stop: 62.6deg, radius: 1.0, anchor: "origin", stroke: 1.05pt)
        line((4.05, 2.2), (6.19, 2.2), stroke: 0.75pt)
        line((4.05, 2.2), (4.05, 3.82), stroke: 0.8pt + blue)
        // Punta elastica piena + tratteggio di eventuale troncamento plastico raccordato esattamente alla curva
        bezier((4.05, 3.82), (6.05, 2.75), (4.45, 3.12), (5.20, 2.82), stroke: 1.15pt + blue)
        line((4.05, 3.46), (4.24, 3.46), stroke: (dash: "dashed", paint: blue.transparentize(15%), thickness: 0.8pt))
        for (x, y) in ((4.24, 3.46), (4.55, 3.16), (4.95, 2.94), (5.35, 2.84), (5.75, 2.78)) {
          line((x, 2.2), (x, y), stroke: 0.5pt + blue, mark: (end: ">", scale: 0.35, fill: blue))
        }
        content((4.9, 4.42), anchor: "south", text(size: 7.5pt, fill: blue, weight: "bold")[Statico ($K_t$)])
        content((4.9, 1.15), anchor: "north", text(size: 6.8pt)[Picco pieno (o snerv.)])

        // Linea di riferimento del picco statico
        line((4.05, 3.82), (7.75, 3.82), stroke: (dash: "dotted", paint: black.transparentize(40%), thickness: 0.6pt))

        // --- Ingrandimento 2: Caso ciclico a fatica (K_f) ---
        circle((8.6, 2.8), radius: 1.42, fill: luma(250), stroke: 0.85pt)
        arc((6.75, 2.2), start: -26.7deg, stop: 62.6deg, radius: 1.0, anchor: "origin", stroke: 1.05pt)
        line((7.75, 2.2), (9.89, 2.2), stroke: 0.75pt)
        line((7.75, 3.22), (7.75, 3.82), stroke: (dash: "dashed", paint: black.transparentize(45%), thickness: 0.65pt))
        line((7.75, 2.2), (7.75, 3.22), stroke: 0.8pt + red.transparentize(10%))
        bezier((7.75, 3.82), (9.75, 2.75), (8.15, 3.12), (8.90, 2.82), stroke: (dash: "dashed", paint: black.transparentize(45%), thickness: 0.65pt))
        bezier((7.75, 3.22), (9.75, 2.75), (8.25, 3.02), (9.00, 2.80), stroke: 1.15pt + red.transparentize(10%))
        for (x, y) in ((7.90, 3.14), (8.25, 2.99), (8.65, 2.88), (9.05, 2.81), (9.45, 2.77)) {
          line((x, 2.2), (x, y), stroke: 0.5pt + red.transparentize(10%), mark: (end: ">", scale: 0.35, fill: red.transparentize(10%)))
        }
        content((8.6, 4.42), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[A fatica ($K_f < K_t$)])
        content((8.6, 1.15), anchor: "north", text(size: 6.8pt)[Picco dinamico smussato])
      }),
      caption: [Confronto al bordo foro tra picco statico ($K_t$, con eventuale snervamento locale) e picco ciclico attenuato ($K_f$).],
    )
  ],
)

*Regola progettuale inderogabile a fatica.* Poiché la rottura per fatica procede per propagazione *fragile* senza ridistribuzione plastica su tutta la sezione, nei materiali duttili il fenomeno del *recovering* non è sfruttabile: porre $K_f = 1$ è sempre un errore. Il fattore $K_f$ va applicato integralmente a tutte le componenti tensionali (assiale, flessionale e torsionale) sia a vita finita sia oltre il ginocchio della curva di Wöhler.

== Sensibilità all'intaglio $q$ e relazione di Neuber-Peterson

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
      #image("images/ECM01-5_sensibilita_intaglio_q.png", width: 100%)
      #text(size: 8pt)[(a) Abaco sperimentale della sensibilità $q(r)$]
    ],
    [
      #image("images/ECM01-5_parametro_neuber_A.png", width: 100%)
      #text(size: 8pt)[(b) Parametro di Neuber $A(R_"eH", R_"p0.2")$]
    ],
  ),
  caption: [Abachi sperimentali per la stima della sensibilità all'intaglio $q$ in funzione del raggio di raccordo $r$ (a) e tramite la costante $A$ di Neuber legata allo snervamento (b).],
)

== Analisi numerica FEM per geometrie complesse

Quando il componente presenta forme tridimensionali articolate o accoppiamenti tra materiali diversi non riconducibili alle casistiche di Peterson — come una *protesi d'anca* in lega di titanio inserita nel femore specifico del paziente, ricca di variazioni di sezione e raccordi — la stima analitica di $K_t$ e $K_f$ non è praticabile.

Si ricorre allora al *Metodo degli Elementi Finiti* (FEM) o agli *Elementi al Contorno* (BEM). Il solido continuo viene discretizzato in una griglia (*mesh*) di piccoli elementi volumetrici di formulazione nota, vincolati tra loro attraverso i *nodi* di vertice condivisi e dotati delle rispettive equazioni costitutive (lega metallica e tessuto osseo rilevato sul paziente).

Imposti i carichi di esercizio, i vincoli e le condizioni di interfaccia nella sede chirurgica (prima e dopo l'osteointegrazione), il solutore assembla e risolve il sistema algebrico nodale restituendo spostamenti, deformate e mappe cromatiche delle tensioni distinte per materiale, così da individuare con precisione le concentrazioni locali d'intaglio.

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Sicurezza a fatica]
]
#v(0.4em)

= Limite di fatica del componente e stato di tensione con intaglio

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
      canvas(length: 0.96cm, {
        // BBox: x in [-0.20, 7.55] (dx=7.75), y in [-0.45, 4.15], length=0.96cm -> larghezza = 7.44 cm <= 8.2 cm
        import draw: *

        // Assi cartesiani
        line((0, 0), (7.25, 0), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
        content((7.25, -0.15), text(size: 7.5pt)[Tempo], anchor: "north-east")
        line((0, 0), (0, 4.05), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
        content((0.15, 3.98), text(size: 7.5pt)[Tensione], anchor: "west")

        // Linee guida orizzontali tratteggiate
        line((0, 3.4), (6.05, 3.4), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))
        line((0, 2.25), (5.45, 2.25), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))
        line((0, 1.1), (6.05, 1.1), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))

        // Sinusoide con Bezier (punti di controllo a y0 +/- 1.333 * A)
        let ym = 2.25
        let amp = 1.15
        let w = 1.05
        let x0 = 0.20
        let dy = 1.333 * amp
        bezier((x0, ym), (x0 + w, ym), (x0 + 0.33 * w, ym + dy), (x0 + 0.67 * w, ym + dy), stroke: (paint: blue, thickness: 1.1pt))
        bezier((x0 + w, ym), (x0 + 2 * w, ym), (x0 + 1.33 * w, ym - dy), (x0 + 1.67 * w, ym - dy), stroke: (paint: blue, thickness: 1.1pt))
        bezier((x0 + 2 * w, ym), (x0 + 3 * w, ym), (x0 + 2.33 * w, ym + dy), (x0 + 2.67 * w, ym + dy), stroke: (paint: blue, thickness: 1.1pt))
        bezier((x0 + 3 * w, ym), (x0 + 4 * w, ym), (x0 + 3.33 * w, ym - dy), (x0 + 3.67 * w, ym - dy), stroke: (paint: blue, thickness: 1.1pt))

        // Quote verticali sul ciclo
        line((0.725, 0), (0.725, 2.25), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((0.84, 1.35), text(size: 7.5pt)[$sigma_m$], anchor: "west")

        line((1.775, 0), (1.775, 1.10), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((1.89, 0.55), text(size: 7.5pt)[$sigma_"min"$], anchor: "west")

        line((2.825, 0), (2.825, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((2.94, 1.65), text(size: 7.5pt)[$sigma_"max"$], anchor: "west")

        // Quote laterali di ampiezza
        line((4.80, 2.25), (4.80, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((4.92, 2.83), text(size: 7.5pt)[$sigma_a$], anchor: "west")

        line((4.80, 1.10), (4.80, 2.25), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((4.92, 1.68), text(size: 7.5pt)[$sigma_a$], anchor: "west")

        line((5.75, 1.10), (5.75, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
        content((5.87, 2.25), text(size: 7.5pt)[$Delta sigma = 2 sigma_a$], anchor: "west")
      }),
      caption: [Grandezze caratteristiche del ciclo sinusoidale.],
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

= Diagramma di Haigh del componente e margine di sicurezza

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
      canvas(length: 0.74cm, {
        // BBox: x in [-4.6, 5.55] (dx=10.15), y in [-0.6, 4.95], length=0.74cm -> larghezza = 7.51 cm <= 8.2 cm
        import draw: *

        // Assi principali
        line((-4.6, 0), (5.10, 0), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
        content((5.20, 0), text(size: 7.5pt)[$sigma_m$], anchor: "west")
        line((0, 0), (0, 4.85), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
        content((-0.18, 4.78), text(size: 7.5pt)[$sigma_a$], anchor: "east")

        // Riquadro N = costante
        rect((-4.45, 3.85), (-2.30, 4.55), stroke: 0.6pt)
        content((-3.375, 4.20), text(size: 7pt)[$N = "costante"$], anchor: "center")

        // Rette caratteristiche R = -infinito e R = 0 (tratteggio fine come da slide)
        line((0, 0), (-2.5, 2.5), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(30%)))
        content((-2.55, 2.55), text(size: 7pt)[$R = -infinity$], anchor: "south-east")
        line((0, 0), (2.5, 2.5), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(30%)))
        content((2.55, 2.55), text(size: 7pt)[$R = 0$], anchor: "south-west")

        // Limiti statici Rm (4.2) e Rp0.2 (3.2)
        line((-4.2, 0), (0, 4.2), (4.2, 0), stroke: (thickness: 0.55pt, paint: black.transparentize(45%)))
        line((-3.2, 0), (0, 3.2), (3.2, 0), stroke: (thickness: 0.55pt, paint: black.transparentize(45%)))

        // Etichette sugli assi
        content((-4.2, -0.18), text(size: 7pt)[$R_m$], anchor: "north")
        content((-3.2, -0.18), text(size: 7pt)[$R_("p0.2")$], anchor: "north")
        content((3.2, -0.18), text(size: 7pt)[$R_("p0.2")$], anchor: "north")
        content((4.2, -0.18), text(size: 7pt)[$R_m$], anchor: "north")
        content((-0.14, 4.22), text(size: 7pt)[$R_m$], anchor: "south-east")
        content((-0.95, 3.60), text(size: 7pt)[$R_("p0.2")$], anchor: "east")
        line((-0.90, 3.58), (-0.05, 3.22), stroke: 0.55pt, mark: (end: ">", scale: 0.45, fill: black))

        // Poligono provino (tratteggiato, da sigma_D-1 = 1.9)
        line((-3.2, 0), (-1.3, 1.9), (0, 1.9), (2.374, 0.826), (3.2, 0), stroke: (dash: "dashed", thickness: 0.75pt))
        line((2.374, 0.826), (4.2, 0), stroke: (dash: "dotted", thickness: 0.55pt, paint: black.transparentize(45%)))
        content((0.14, 1.95), text(size: 7pt)[$sigma_(D-1)$], anchor: "south-west")

        // Poligono componente (continuo spesso, da sigma_D-1^C = 1.15)
        line((-3.2, 0), (-1.609, 1.591), (0, 1.15), (2.823, 0.377), (3.2, 0), stroke: 1.2pt)
        line((2.823, 0.377), (4.2, 0), stroke: (dash: "dotted", thickness: 0.55pt, paint: black.transparentize(45%)))
        content((0.12, 1.12), text(size: 6.7pt)[$sigma_(D-1)^C$], anchor: "south-west")

        // Chiusura conservativa tratteggiata blu in compressione
        line((-2.05, 1.15), (0, 1.15), stroke: (dash: "dashed", thickness: 0.9pt, paint: blue))

        // Punto di lavoro P
        circle((1.15, 0.45), radius: 0.07, fill: red.transparentize(10%), stroke: none)
        content((1.28, 0.45), text(size: 7.5pt, weight: "bold")[$P$], anchor: "west")

        // Richiami esterni per Provino e Componente
        content((2.85, 2.00), text(size: 7pt)[Provino], anchor: "west")
        line((2.80, 1.96), (1.75, 1.108), stroke: 0.6pt, mark: (end: ">", scale: 0.5, fill: black))
        content((3.35, 1.15), text(size: 7pt)[Componente], anchor: "west")
        line((3.30, 1.11), (2.25, 0.534), stroke: 0.6pt, mark: (end: ">", scale: 0.5, fill: black))
      }),
      caption: [Diagramma di Haigh: confronto tra provino e componente.],
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

= Coefficienti di sicurezza per vita illimitata

== Ipotesi di crescita dei carichi sul diagramma di Haigh

Per verificare un componente a vita illimitata si posiziona $P(sigma_m^P, sigma_a^P)$ sul diagramma di Haigh (con tensioni nominali se $1/K_f$ è già incluso in $sigma_(D-1)^C$, altrimenti amplificate da $K_f$) e lo si proietta fino al contorno limite secondo una delle quattro traiettorie di crescita (*cicli di esplosione*), indicando con $sigma_D^"lim"$ l'ampiezza alternata limite di cedimento sul bordo (distinta da $sigma_(D-1)^C$):

- *Tensione media costante e alternata crescente.* È il caso di un recipiente a pressione costante investito da vibrazioni sismiche crescenti. Ad ascissa $sigma_m^P$ fissa, $P$ sale in verticale fino a $sigma_D^"lim"$, dando $C S = sigma_D^"lim" / sigma_a^P$.
- *Tensione media e alternata proporzionali.* Se entrambe crescono a rapporto di ciclo $R$ costante, la proiezione avanza dall'origine $O$ lungo la semiretta per $P$. Per similitudine dei triangoli i rapporti sulle componenti coincidono: $C S = sigma_D^"lim" / sigma_a^P = sigma_m^"lim" / sigma_m^P = sigma_"max"^"lim" / sigma_"max"^P = sigma_"min"^"lim" / sigma_"min"^P$.
- *Tensione media in parte costante e in parte proporzionale.* Separando la quota fissa $sigma_"mc"^P$ da quella proporzionale ad $sigma_a$ pari a $sigma_"mp"^P$ ($sigma_m^P = sigma_"mc"^P + sigma_"mp"^P$), la semiretta parte da $(sigma_"mc"^P, 0)$, passa per $P$ e incontra il contorno in $sigma_D^"lim"$, con $C S = sigma_D^"lim" / sigma_a^P$.
- *Tensione alternata costante e tensione media crescente.* Si presenta quando la pressione di esercizio subisce una deriva lenta mentre i disturbi vibratori restano invariati. A ordinata $sigma_a^P$ fissa, $P$ scorre in orizzontale verso destra fino a $sigma_m^"lim"$: è l'unico caso valutato sulle ascisse, con $C S = sigma_m^"lim" / sigma_m^P$.

#figure(
  canvas(length: 0.94cm, {
    // BBox: x in [-3.0, 11.8] (dx=14.8), y in [-0.9, 7.6], length=0.94cm -> larghezza = 13.91 cm <= 17.0 cm
    import draw: *

    let haigh-base(ox, oy, titolo) = {
      content((ox + 0.15, oy + 2.68), anchor: "south", text(size: 8pt, weight: "bold")[#titolo])
      line((ox - 3.0, oy), (ox + 3.4, oy), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
      content((ox + 3.5, oy), anchor: "west", text(size: 8pt)[$sigma_m$])
      line((ox, oy), (ox, oy + 2.45), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
      content((ox - 0.12, oy + 2.38), anchor: "east", text(size: 8pt)[$sigma_a$])

      // Poligono a 4 tratti del componente (Goodman verso Rm=3.60 + tagli di Langer a Rp0.2=2.50)
      line(
        (ox - 2.50, oy),
        (ox - 0.836, oy + 1.664),
        (ox + 1.840, oy + 0.660),
        (ox + 2.50, oy),
        close: true,
        stroke: (paint: black, thickness: 1.0pt),
        fill: black.transparentize(92%),
      )
      content((ox - 2.50, oy - 0.14), anchor: "north", text(size: 7pt)[$R_"p0.2"$])
      content((ox + 2.50, oy - 0.14), anchor: "north", text(size: 7pt)[$R_"p0.2"$])
      content((ox + 0.10, oy + 1.38), anchor: "south-west", text(size: 7.5pt)[$sigma_(D-1)^C$])
    }

    // Pannello (a): sigma_m costante, sigma_a crescente
    let ox = 0.0
    let oy = 4.35
    haigh-base(ox, oy, [a) $sigma_m$ costante, $sigma_a$ crescente])
    line((ox + 0.75, oy + 0.42), (ox + 0.75, oy + 1.069), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
    line((ox, oy + 1.069), (ox + 0.75, oy + 1.069), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox, oy + 0.42), (ox + 0.75, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox + 0.75, oy), (ox + 0.75, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    circle((ox + 0.75, oy + 0.42), radius: 0.065, fill: red.transparentize(10%), stroke: none)
    content((ox + 0.88, oy + 0.42), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
    content((ox - 0.10, oy + 1.069), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
    content((ox - 0.10, oy + 0.42), anchor: "east", text(size: 7pt)[$sigma_a^P$])
    content((ox + 0.75, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
    content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P)$])

    // Pannello (b): sigma_m e sigma_a proporzionali
    let ox = 7.9
    let oy = 4.35
    haigh-base(ox, oy, [b) $sigma_m$ e $sigma_a$ proporzionali])
    line((ox, oy), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(25%), thickness: 0.7pt))
    line((ox + 0.55, oy + 0.42), (ox + 1.186, oy + 0.906), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
    line((ox, oy + 0.906), (ox + 1.186, oy + 0.906), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox + 1.186, oy), (ox + 1.186, oy + 0.906), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox, oy + 0.42), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox + 0.55, oy), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    circle((ox + 0.55, oy + 0.42), radius: 0.065, fill: red.transparentize(10%), stroke: none)
    content((ox + 0.66, oy + 0.34), anchor: "north-west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
    content((ox - 0.10, oy + 0.906), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
    content((ox - 0.10, oy + 0.42), anchor: "east", text(size: 7pt)[$sigma_a^P$])
    content((ox + 0.55, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
    content((ox + 1.186, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^"lim"$])
    content((ox + 2.30, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P) = frac(sigma_m^"lim", sigma_m^P)$])

    // Pannello (c): sigma_m in parte costante e in parte proporzionale
    let ox = 0.0
    let oy = 0.0
    haigh-base(ox, oy, [c) $sigma_m$ in parte cost. e in parte prop.])
    line((ox + 0.55, oy), (ox + 0.95, oy + 0.36), stroke: (paint: black.transparentize(25%), thickness: 0.7pt))
    line((ox + 0.95, oy + 0.36), (ox + 1.447, oy + 0.807), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
    line((ox, oy + 0.807), (ox + 1.447, oy + 0.807), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox, oy + 0.36), (ox + 0.95, oy + 0.36), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox, oy), (ox, oy - 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
    line((ox + 0.55, oy), (ox + 0.55, oy - 0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
    line((ox + 0.95, oy + 0.36), (ox + 0.95, oy - 0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
    // Quote inferiori con frecce esterne
    line((ox, oy - 0.32), (ox + 0.55, oy - 0.32), stroke: (paint: black, thickness: 0.6pt))
    line((ox - 0.28, oy - 0.32), (ox, oy - 0.32), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
    line((ox + 0.83, oy - 0.32), (ox + 0.55, oy - 0.32), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
    content((ox - 0.34, oy - 0.32), anchor: "east", text(size: 7pt)[$sigma_"mc"^P$])
    line((ox + 0.55, oy - 0.68), (ox + 0.95, oy - 0.68), stroke: (paint: black, thickness: 0.6pt))
    line((ox + 0.27, oy - 0.68), (ox + 0.55, oy - 0.68), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
    line((ox + 1.23, oy - 0.68), (ox + 0.95, oy - 0.68), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
    content((ox + 1.29, oy - 0.68), anchor: "west", text(size: 7pt)[$sigma_"mp"^P$])

    circle((ox + 0.95, oy + 0.36), radius: 0.065, fill: red.transparentize(10%), stroke: none)
    content((ox + 0.87, oy + 0.44), anchor: "south-east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
    content((ox - 0.10, oy + 0.807), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
    content((ox - 0.10, oy + 0.36), anchor: "east", text(size: 7pt)[$sigma_a^P$])
    content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P)$])

    // Pannello (d): sigma_a costante, sigma_m crescente
    let ox = 7.9
    let oy = 0.0
    haigh-base(ox, oy, [d) $sigma_a$ costante, $sigma_m$ crescente])
    line((ox + 0.45, oy + 0.72), (ox + 1.680, oy + 0.72), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
    line((ox, oy + 0.72), (ox + 0.45, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox + 0.45, oy), (ox + 0.45, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    line((ox + 1.680, oy), (ox + 1.680, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
    circle((ox + 0.45, oy + 0.72), radius: 0.065, fill: red.transparentize(10%), stroke: none)
    content((ox + 0.45, oy + 0.86), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
    content((ox - 0.10, oy + 0.72), anchor: "east", text(size: 7pt)[$sigma_a^P$])
    content((ox + 0.45, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
    content((ox + 1.680, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^"lim"$])
    content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_m^"lim", sigma_m^P)$])
  }),
  caption: [Quattro ipotesi di crescita dei carichi (cicli di esplosione) sul diagramma di Haigh e relative definizioni di $C S$.],
)

Nel caso proporzionale verrebbe spontaneo confrontare le lunghezze dei due segmenti obliqui dall'origine al bordo e a $P$, ma calcolare le ipotenuse espone a errori operativi evitabili. Le normative impiegano perciò direttamente i rapporti sulle coordinate cartesiane, unificando la lettura sulle ordinate ($sigma_D^"lim" / sigma_a^P$) nei primi tre casi e riservando le ascisse al quarto.

== Effetto delle tensioni residue

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
      canvas(length: 0.96cm, {
        // BBox: x in [-3.1, 4.0] (dx=7.1), y in [-1.05, 2.75], length=0.96cm -> larghezza = 6.82 cm <= 8.2 cm
        import draw: *

        line((-3.1, 0), (3.4, 0), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((3.5, 0), anchor: "west", text(size: 8pt)[$sigma_m$])
        line((0, 0), (0, 2.55), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((-0.12, 2.48), anchor: "east", text(size: 8pt)[$sigma_a$])

        // Poligono a 4 tratti del componente (Goodman + tagli di Langer a Rp0.2 = 2.70)
        line(
          (-2.70, 0),
          (-0.911, 1.789),
          (1.990, 0.710),
          (2.70, 0),
          close: true,
          stroke: (paint: black, thickness: 1.05pt),
          fill: black.transparentize(92%),
        )
        content((-2.70, -0.14), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
        content((2.70, -0.14), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
        content((0.12, 1.48), anchor: "south-west", text(size: 7.5pt)[$sigma_(D-1)^C$])

        // Punti P', P, P'' e frecce di traslazione
        line((-0.39, 0.45), (-1.26, 0.45), stroke: (paint: black.transparentize(40%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
        line((-0.21, 0.45), (0.71, 0.45), stroke: (paint: black.transparentize(40%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
        circle((-1.35, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
        circle((-0.30, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
        circle((0.80, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
        content((-1.47, 0.45), anchor: "east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P'$])
        content((-0.30, 0.59), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
        content((0.92, 0.45), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P''$])

        // Proiezioni e quote inferiori
        line((-1.35, 0.45), (-1.35, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
        line((-0.30, 0.45), (-0.30, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
        line((0.80, 0.45), (0.80, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
        line((-0.30, -0.56), (-1.35, -0.56), stroke: (paint: black, thickness: 0.65pt), mark: (end: ">", scale: 0.45, fill: black))
        line((-0.30, -0.56), (0.80, -0.56), stroke: (paint: black, thickness: 0.65pt), mark: (end: ">", scale: 0.45, fill: black))
        content((-0.825, -0.68), anchor: "north", text(size: 7.5pt)[$sigma_"res"(-)$])
        content((0.25, -0.68), anchor: "north", text(size: 7.5pt)[$sigma_"res"(+)$])
      }),
      caption: [Effetto delle tensioni residue sul diagramma di Haigh.],
    )
  ],
)

== Diagramma di Ros per tensione minima costante

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
      canvas(length: 1.05cm, {
        // BBox: x in [-2.55, 3.45] (dx=6.00), y in [-0.45, 3.05], length=1.05cm -> larghezza = 6.30 cm <= 8.2 cm
        import draw: *

        // Assi cartesiani (sigma_min, sigma_max)
        line((-2.50, 0), (2.85, 0), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((2.95, 0), anchor: "west", text(size: 8pt)[$sigma_"min"$])
        line((0, -0.25), (0, 2.95), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((-0.12, 2.88), anchor: "east", text(size: 8pt)[$sigma_"max"$])

        // Assi ausiliari inclinati a +-45 gradi
        line((0, 0), (2.65, 2.65), stroke: (paint: black.transparentize(20%), thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((2.72, 2.72), anchor: "south-west", text(size: 8pt)[$sigma_m$])
        line((0, 0), (-2.10, 2.10), stroke: (paint: black.transparentize(20%), thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
        content((-2.17, 2.17), anchor: "south-east", text(size: 8pt)[$sigma_a$])

        // Livello di snervamento Rp0.2 tratteggiato fino al ginocchio e contorno superiore spesso
        line((0, 2.30), (1.35, 2.30), stroke: (paint: black, dash: "dashed", thickness: 0.7pt))
        line((-2.30, 0.20), (1.35, 2.30), (2.30, 2.30), stroke: (paint: black, thickness: 1.2pt))
        content((0.68, 2.38), anchor: "south", text(size: 7.5pt)[$R_"p0.2"$])

        // Punto P(0.72, 1.02) sopra la bisettrice sigma_m e proiezione verticale fino a sigma_max^lim = 1.937
        line((0.72, 0), (0.72, 1.02), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
        line((0.72, 1.02), (0.72, 1.937), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
        line((0, 1.02), (0.72, 1.02), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
        line((0, 1.937), (0.72, 1.937), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
        circle((0.72, 1.02), radius: 0.065, fill: red.transparentize(10%), stroke: none)
        content((0.64, 1.08), anchor: "south-east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
        content((0.72, -0.15), anchor: "north", text(size: 7.5pt)[$sigma_"min"^P$])
        content((-0.08, 0.98), anchor: "east", text(size: 7.5pt)[$sigma_"max"^P$])
        content((-0.08, 1.937), anchor: "east", text(size: 7.5pt)[$sigma_"max"^"lim"$])
      }),
      caption: [Diagramma di Ros per verifica a tensione minima costante.],
    )
  ],
)

Fissata l'ascissa $sigma_"min"^P$, il punto $P(sigma_"min"^P, sigma_"max"^P)$ giace sopra la bisettrice di $sigma_m$ (poiché $sigma_"max"^P > sigma_"min"^P$) e sale in verticale fino al contorno superiore $sigma_"max"^"lim"$. Il coefficiente di sicurezza si legge direttamente come rapporto tra le tensioni massime, criterio ampiamente adottato in campo aerospaziale:

$ C S = frac(sigma_"max"^"lim", sigma_"max"^P) $

= Stima della curva SN del componente e sicurezza a vita limitata

== Stima della curva SN del componente

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
      canvas(length: 0.96cm, {
        // BBox: x in [-0.80, 6.90] (dx=7.70), y in [-0.50, 4.95], length=0.96cm -> larghezza = 7.39 cm <= 8.2 cm
        import draw: *

        let x-start = 1.10
        let y-start = 4.10
        let x-knee = 4.07
        let y-prov = 2.15
        let y-comp = 1.35
        let x-end = 4.85
        let x-no = 2.35
        let y-no = 2.94
        let y-a = 1.90
        let x-nl = 3.48
        let red-col = red.transparentize(10%)

        // Linee guida geometriche (a 10^3 e al ginocchio 2*10^6)
        line((0, y-start), (x-start, y-start), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))
        line((x-start, 0), (x-start, y-start), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))
        line((x-knee, 0), (x-knee, y-prov), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(45%)))

        // Assi logaritmici
        line((0, 0), (5.05, 0), stroke: 0.8pt, mark: (end: ">", scale: 0.5, fill: black))
        line((0, 0), (0, 4.90), stroke: 0.8pt, mark: (end: ">", scale: 0.5, fill: black))

        // Tacche logaritmiche sull'asse N (decadi 10^2 .. 10^7, passo 0.90)
        let labels-n = ($10^2$, $10^3$, $10^4$, $10^5$, $10^6$, $10^7$)
        for d in range(0, 6) {
          let xd = 0.20 + d * 0.90
          line((xd, 0), (xd, 0.13), stroke: 0.7pt)
          content((xd, -0.15), text(size: 7pt)[#labels-n.at(d)], anchor: "north")
          if d < 5 {
            for s in (2, 3, 4, 5, 6, 7, 8, 9) {
              let xs = xd + 0.90 * calc.log(s, base: 10)
              line((xs, 0), (xs, 0.06), stroke: 0.45pt)
            }
          }
        }

        // Curve SN: provetta (tratteggiata) vs componente (continua)
        line((x-start, y-start), (x-knee, y-prov), (x-end, y-prov), stroke: (dash: "dashed", thickness: 0.9pt, paint: black.transparentize(30%)))
        line((x-start, y-start), (x-knee, y-comp), (x-end, y-comp), stroke: 1.15pt)
        circle((x-start, y-start), radius: 0.045, fill: black)

        // Costruzione verifica a vita limitata (punto P, verifica in tensione e in durata)
        line((x-no, 0), (x-no, y-a), stroke: (dash: "dashed", thickness: 0.65pt, paint: red-col))
        line((0, y-a), (x-no, y-a), stroke: (dash: "dashed", thickness: 0.65pt, paint: red-col))
        line((x-no, y-a), (x-no, y-no), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
        line((x-no, y-no), (0, y-no), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
        line((x-no, y-a), (x-nl, y-a), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
        line((x-nl, y-a), (x-nl, 0), stroke: (thickness: 0.85pt, paint: red-col), mark: (end: ">", scale: 0.5, fill: red-col))
        circle((x-no, y-a), radius: 0.055, fill: red-col, stroke: none)

        // Etichette assi e livelli
        content((-0.12, 4.82), text(size: 8pt)[$sigma_a$], anchor: "east")
        content((5.15, 0), text(size: 8pt)[$N$], anchor: "west")
        content((0.14, y-start + 0.14), text(size: 7.5pt)[$0.9(R_m - sigma_m)$], anchor: "south-west")
        content((4.85, 4.35), text(size: 7.5pt)[$sigma_m = "cost."$], anchor: "east")

        // Etichette ginocchio e curve
        content((2.65, 3.25), text(size: 7pt, fill: black.transparentize(25%))[Provetta], anchor: "south-west")
        content((4.46, 1.18), text(size: 7pt)[Componente], anchor: "north")
        line((x-knee, 2.55), (x-knee, y-prov + 0.08), stroke: (thickness: 0.55pt, paint: black.transparentize(40%)), mark: (end: ">", scale: 0.45, fill: black.transparentize(40%)))
        content((x-knee, 2.62), text(size: 7pt)[$2 dot 10^6$], anchor: "south")

        content((x-end + 0.08, y-prov), text(size: 7.5pt)[$sigma_"D,provetta"$], anchor: "west")
        content((x-end + 0.08, y-comp), text(size: 7.5pt)[$sigma_"D,componente"$], anchor: "west")

        // Etichette verifica a vita limitata (rosso)
        content((-0.12, y-no), text(size: 7.5pt, fill: red-col)[$sigma_"No"$], anchor: "east")
        content((-0.12, y-a), text(size: 7.5pt, fill: red-col)[$sigma_a$], anchor: "east")
        content((x-no + 0.08, 0.22), text(size: 7.5pt, fill: red-col)[$N_o$], anchor: "south-west")
        content((x-nl + 0.08, 0.22), text(size: 7.5pt, fill: red-col)[$N_L$], anchor: "south-west")
        content((x-no - 0.08, y-a - 0.10), text(size: 7.5pt, fill: red-col)[$P$], anchor: "north-east")
      }),
      caption: [Curva SN stimata del componente e margini a vita limitata.],
    )
  ],
)

== Coefficienti di sicurezza per vita limitata

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

= Ruolo dei trattamenti superficiali e meccanismo delle tensioni residue

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
      canvas(length: 0.75cm, {
        import draw: *
        // BBox: x in [0.2, 9.95] (dx=9.75), y in [0.0, 5.8], length=0.75cm -> larghezza = 7.31 cm <= 8.2 cm

        // Pannello sinistro: meccanismo di contenimento (3 stadi)
        // Stadio 1: carico locale F -> snervamento
        rect((0.45, 4.15), (3.05, 4.95), fill: black.transparentize(88%), stroke: 0.9pt)
        line((1.10, 4.95), (1.30, 4.65), (2.20, 4.65), (2.40, 4.95), close: true, fill: black.transparentize(64%), stroke: 0.8pt)
        line((1.75, 5.65), (1.75, 5.02), stroke: 1.1pt, mark: (end: ">", scale: 0.75))
        content((1.95, 5.38), anchor: "west", [#text(size: 7.5pt)[$F$]])
        content((1.75, 3.92), anchor: "north", [#text(size: 6.8pt)[1. Snervamento compressivo]])

        // Stadio 2: espansione laterale
        rect((1.10, 2.35), (2.40, 2.85), stroke: (dash: "dashed", thickness: 0.6pt))
        rect((0.80, 2.35), (2.70, 2.85), stroke: (paint: blue, thickness: 0.9pt), fill: blue.transparentize(88%))
        line((0.80, 2.60), (0.30, 2.60), stroke: (paint: blue, thickness: 0.8pt), mark: (end: ">", scale: 0.65))
        line((2.70, 2.60), (3.20, 2.60), stroke: (paint: blue, thickness: 0.8pt), mark: (end: ">", scale: 0.65))
        content((1.75, 2.12), anchor: "north", [#text(size: 6.8pt)[2. Espansione laterale]])

        // Stadio 3: contenimento del cuore elastico
        rect((0.40, 0.45), (0.90, 1.05), fill: black.transparentize(84%), stroke: 0.8pt)
        rect((2.60, 0.45), (3.10, 1.05), fill: black.transparentize(84%), stroke: 0.8pt)
        rect((0.90, 0.50), (2.60, 1.00), fill: blue.transparentize(80%), stroke: (paint: blue, thickness: 0.9pt))
        line((0.42, 0.75), (0.86, 0.75), stroke: (paint: blue, thickness: 0.85pt), mark: (end: ">", scale: 0.55))
        line((3.08, 0.75), (2.64, 0.75), stroke: (paint: blue, thickness: 0.85pt), mark: (end: ">", scale: 0.55))
        content((1.75, 0.25), anchor: "north", [#text(size: 6.8pt)[3. Cuore elastico comprime]])

        // Pannello destro: diagramma di Haigh
        line((4.35, 1.85), (9.90, 1.85), stroke: 0.8pt, mark: (end: ">", scale: 0.75))
        content((9.90, 2.04), anchor: "south", [#text(size: 7.5pt)[$sigma_m$]])
        line((6.85, 1.85), (6.85, 4.55), stroke: 0.8pt, mark: (end: ">", scale: 0.75))
        content((6.68, 4.50), anchor: "east", [#text(size: 7.5pt)[$sigma_a$]])

        // Tacche limiti statici
        line((4.90, 1.77), (4.90, 1.93), stroke: 0.7pt)
        content((4.90, 1.62), anchor: "north", [#text(size: 6.8pt)[$-R_"p0.2"$]])
        line((8.80, 1.77), (8.80, 1.93), stroke: 0.7pt)
        content((8.72, 1.62), anchor: "north", [#text(size: 6.8pt)[$R_"p0.2"$]])
        line((9.60, 1.77), (9.60, 1.93), stroke: 0.7pt)
        content((9.62, 1.62), anchor: "north", [#text(size: 6.8pt)[$R_m$]])

        // Contorno di Haigh fedele: snervamento sinistro -> picco compressivo -> Goodman -> snervamento destro
        line((4.90, 1.85), (6.08, 3.03), stroke: 1.1pt)
        line((6.08, 3.03), (6.85, 2.77), stroke: 1.1pt)
        line((6.85, 2.77), (8.40, 2.25), stroke: 1.1pt)
        line((8.40, 2.25), (9.60, 1.85), stroke: (dash: "dashed", thickness: 0.7pt))
        line((8.40, 2.25), (8.80, 1.85), stroke: 1.1pt)

        circle((6.85, 2.77), radius: 0.05, fill: black)
        content((6.96, 2.86), anchor: "south-west", [#text(size: 7.2pt)[$sigma_(D-1)^C$]])
        line((8.35, 3.45), (7.68, 2.52), stroke: 0.55pt, mark: (end: ">", scale: 0.6))
        content((8.35, 3.50), anchor: "south", [#text(size: 6.8pt)[Retta di Goodman]])

        // Linee di proiezione e punti P', P, P''
        for xx in (5.90, 6.85, 7.80) {
          line((xx, 1.85), (xx, 1.00), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(45%)))
        }
        circle((6.85, 1.85), radius: 0.07, fill: black)
        content((6.96, 1.98), anchor: "south-west", [#text(size: 7pt)[$P$]])
        circle((5.90, 1.85), radius: 0.07, fill: blue, stroke: blue)
        content((5.90, 2.02), anchor: "south", [#text(fill: blue, size: 7pt)[$P'$]])
        circle((7.80, 1.85), radius: 0.07, fill: red.transparentize(10%), stroke: red.transparentize(10%))
        content((7.80, 2.02), anchor: "south", [#text(fill: red.transparentize(10%), size: 7pt)[$P''$]])

        line((6.80, 1.12), (5.94, 1.12), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.6))
        content((6.60, 0.86), anchor: "north-east", [#text(fill: blue, size: 6.8pt)[$sigma_"res" (-)$]])
        line((6.90, 1.12), (7.76, 1.12), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">", scale: 0.6))
        content((7.10, 0.86), anchor: "north-west", [#text(fill: red.transparentize(10%), size: 6.8pt)[$sigma_"res" (+)$]])
      }),
      caption: [Contenimento elastico superficiale ed effetto di $sigma_"res"$ sul diagramma di Haigh.],
    )
  ],
)

Con il precarico compressivo $P' P$, la trazione esterna deve prima annullare $sigma_"res"$ per portare in trazione la superficie, ampliando il margine di sicurezza a fatica.

= Trattamenti meccanici e processi di formatura

== Pallinatura (_shot peening_)

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
      canvas(length: 0.76cm, {
        import draw: *
        // BBox: x in [0.0, 9.8] (dx=9.8), y in [0.4, 6.6], length=0.76cm -> larghezza = 7.45 cm <= 8.2 cm

        // a) Micro-indentazione da pallinatura
        content((0.1, 6.45), anchor: "west", [#text(size: 7.3pt, weight: "bold")[a) Micro-indentazione superficiale]])

        // Substrato elastico
        rect((0.5, 3.65), (5.9, 4.42), fill: black.transparentize(90%), stroke: 0.85pt)
        content((3.2, 4.02), anchor: "center", [#text(size: 6.8pt)[Cuore elastico]])

        // Strato compresso con impronta centrale e bordi rialzati
        line(
          (0.5, 4.42), (0.5, 5.02), (2.35, 5.02), (2.60, 5.15),
          (2.90, 4.83), (3.20, 4.75), (3.50, 4.83), (3.80, 5.15),
          (4.05, 5.02), (5.9, 5.02), (5.9, 4.42), close: true,
          fill: blue.transparentize(82%), stroke: (paint: blue, thickness: 0.9pt),
        )

        // Frecce compressione laterale nello strato corticale
        line((0.85, 4.72), (1.85, 4.72), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.65))
        line((5.55, 4.72), (4.55, 4.72), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.65))
        content((2.10, 4.72), anchor: "west", [#text(fill: blue, size: 6.8pt, weight: "bold")[$-$]])
        content((4.30, 4.72), anchor: "east", [#text(fill: blue, size: 6.8pt, weight: "bold")[$-$]])

        // Sferetta dura in impatto
        circle((3.2, 5.55), radius: 0.33, fill: black.transparentize(68%), stroke: 0.9pt)
        line((3.2, 6.28), (3.2, 5.92), stroke: 1.0pt, mark: (end: ">", scale: 0.7))
        content((3.38, 6.12), anchor: "west", [#text(size: 7pt)[$v$ (sferetta)]])

        // Richiamo bordo sollevato e quota h_pall
        line((4.65, 5.52), (3.86, 5.19), stroke: 0.55pt, mark: (end: ">", scale: 0.6))
        content((4.72, 5.55), anchor: "west", [#text(size: 6.6pt)[Bordo sollevato]])
        line((6.12, 4.42), (6.12, 5.02), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42))
        content((6.30, 4.72), anchor: "west", [#text(size: 6.8pt)[$h_"pall" approx 1 "mm"$]])
        content((6.30, 4.20), anchor: "west", [#text(fill: blue, size: 6.8pt, weight: "bold")[$sigma_"res" < 0$]])

        // Separatore
        line((0.1, 3.30), (9.6, 3.30), stroke: (dash: "dotted", thickness: 0.6pt))

        // b) Sistema provino Almen
        content((0.1, 2.96), anchor: "west", [#text(size: 7.3pt, weight: "bold")[b) Taratura con lamella Almen]])

        // Fase 1: Lamella vincolata sotto getto
        rect((0.45, 0.55), (3.65, 1.15), fill: black.transparentize(88%), stroke: 0.8pt)
        content((2.05, 0.85), anchor: "center", [#text(size: 6.5pt)[Afferraggio]])
        rect((0.70, 1.15), (3.40, 1.40), fill: blue.transparentize(80%), stroke: 0.8pt)
        rect((0.88, 1.40), (1.12, 1.52), fill: black.transparentize(65%), stroke: 0.6pt)
        rect((2.98, 1.40), (3.22, 1.52), fill: black.transparentize(65%), stroke: 0.6pt)

        // Ugello e getto di sferette
        rect((1.82, 2.30), (2.28, 2.65), fill: black.transparentize(78%), stroke: 0.75pt)
        line((1.90, 2.30), (1.50, 1.45), stroke: (dash: "dashed", thickness: 0.55pt))
        line((2.20, 2.30), (2.60, 1.45), stroke: (dash: "dashed", thickness: 0.55pt))
        line((2.05, 2.22), (2.05, 1.52), stroke: 0.7pt, mark: (end: ">", scale: 0.6))
        content((2.42, 2.48), anchor: "west", [#text(size: 6.6pt)[Getto]])

        // Freccia transizione
        line((3.90, 1.15), (4.55, 1.15), stroke: 0.8pt, mark: (end: ">", scale: 0.65))

        // Fase 2: Svincolo, incurvamento e misura freccia f
        rect((4.85, 0.45), (9.35, 0.68), fill: black.transparentize(88%), stroke: 0.75pt)
        circle((5.35, 0.80), radius: 0.12, fill: black.transparentize(70%), stroke: 0.7pt)
        circle((8.85, 0.80), radius: 0.12, fill: black.transparentize(70%), stroke: 0.7pt)

        // Corda di riferimento tratteggiata e lamella incurvata (picco intradosso y = 1.46)
        line((5.15, 0.92), (9.05, 0.92), stroke: (dash: "dotted", thickness: 0.55pt))
        bezier((5.05, 0.92), (9.15, 0.92), (6.35, 1.64), (7.85, 1.64), stroke: (paint: blue, thickness: 1.1pt))
        bezier((5.05, 1.12), (9.15, 1.12), (6.35, 1.84), (7.85, 1.84), stroke: (paint: blue, thickness: 1.1pt))
        line((5.05, 0.92), (5.05, 1.12), stroke: (paint: blue, thickness: 1.0pt))
        line((9.15, 0.92), (9.15, 1.12), stroke: (paint: blue, thickness: 1.0pt))

        // Comparatore e freccia d'arco f al centro dell'arco (pulita, zero sovrapposizioni)
        circle((7.10, 2.42), radius: 0.35, fill: white, stroke: 0.8pt)
        line((7.10, 2.42), (7.32, 2.59), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))
        line((7.10, 2.07), (7.10, 1.69), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
        content((7.58, 2.42), anchor: "west", [#text(size: 6.6pt)[Comparatore]])

        line((7.10, 0.94), (7.10, 1.44), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45))
        content((7.25, 1.18), anchor: "west", [#text(size: 7pt)[$f$]])
      }),
      caption: [Indentazione da pallinatura e misura della freccia d'arco $f$ su provino _Almen_.],
    )
  ],
)

Brevettata da Föppl (1929) e industrializzata da Almen negli anni Trenta per le *molle a balestra*, oggi si usa anche su *molle elicoidali* e al piede dei *denti d'ingranaggi* in flessione. L'intensità del getto si tara su una lamella unificata (*Almen strip*, classi N, A, C) serrata su supporto: una volta svincolata, la compressione residua la incurva e un comparatore misura la freccia $f$.

== Rullatura a freddo (_cold rolling_)

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
      canvas(length: 0.8cm, {
        import draw: *
        // BBox: x in [-0.2, 9.9] (dx=10.1), y in [0.1, 4.6], length=0.8cm -> larghezza = 8.08 cm <= 8.2 cm

        // Pannello sinistro: albero rotante tra 3 rulli
        circle((1.45, 2.3), radius: 0.82, fill: black.transparentize(90%), stroke: 1.0pt)
        content((1.45, 2.3), anchor: "center", [#text(size: 7.2pt)[Albero]])

        // Rullo superiore (90 deg)
        circle((1.45, 3.38), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
        line((1.45, 4.25), (1.45, 3.68), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
        content((1.63, 4.02), anchor: "west", [#text(fill: blue, size: 7.5pt)[$F$]])

        // Rullo inferiore sinistro (210 deg)
        circle((0.51, 1.76), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
        line((-0.10, 1.40), (0.25, 1.60), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
        content((0.00, 1.15), anchor: "north", [#text(fill: blue, size: 7.5pt)[$F$]])

        // Rullo inferiore destro (330 deg)
        circle((2.39, 1.76), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
        line((3.00, 1.40), (2.65, 1.60), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
        content((2.90, 1.15), anchor: "north", [#text(fill: blue, size: 7.5pt)[$F$]])

        // Freccia rotazione
        arc((1.45, 2.3), start: 15deg, stop: 60deg, radius: 1.12, anchor: "origin", stroke: 0.7pt, mark: (end: ">", scale: 0.65))
        content((2.50, 3.15), anchor: "west", [#text(size: 6.8pt)[Rotazione]])

        // Pannello destro: grafico log S-N comparativo
        rect((5.4, 1.2), (9.8, 4.3), stroke: 0.8pt)
        content((4.52, 2.75), angle: 90deg, anchor: "center", [#text(size: 7pt)[$sigma_a$ (% $R_m$)]])
        content((7.6, 0.35), anchor: "north", [#text(size: 7.2pt)[Cicli a rottura, $N$]])

        // Tacche asse X (10^4 .. 10^8)
        for (pos, lbl) in ((5.4, $10^4$), (6.5, $10^5$), (7.6, $10^6$), (8.7, $10^7$), (9.8, $10^8$)) {
          line((pos, 1.2), (pos, 1.32), stroke: 0.6pt)
          content((pos, 0.96), anchor: "north", [#text(size: 6.5pt)[#lbl]])
        }

        // Tacche asse Y (log10: 10, 20, 30, 50, 100)
        for (yy, lbl) in ((1.20, "10"), (2.13, "20"), (2.68, "30"), (3.37, "50"), (4.30, "100")) {
          line((5.4, yy), (5.52, yy), stroke: 0.6pt)
          content((5.22, yy), anchor: "east", [#text(size: 6.5pt)[#lbl]])
        }

        // Curve S-N convergenti a ~55% R_m per N = 10^4
        line((5.4, 3.48), (9.8, 2.72), stroke: (paint: blue, thickness: 1.2pt))
        content((7.95, 3.25), anchor: "south", [#text(fill: blue, size: 7pt, weight: "bold")[Rullata]])

        line((5.4, 3.48), (9.3, 1.52), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        content((7.48, 2.02), anchor: "north-east", [#text(fill: red.transparentize(10%), size: 7pt, weight: "bold")[Non rullata]])
      }),
      caption: [Schema di rullatura a freddo su albero e confronto tra curve $S"-"N$ a vita finita.],
    )
  ],
)

Spesso il processo coincide con la generazione stessa della forma: è il caso dei *filetti delle viti*, formati e rullati in un'unica operazione, e dei *raccordi perno-maschetta* negli alberi a gomiti soggetti a flessione e torsione.

== Formatura a freddo e lavorazioni a caldo

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
      canvas(length: 0.82cm, {
        import draw: *
        // BBox: x in [0.0, 9.5] (dx=9.5), y in [0.1, 6.5], length=0.82cm -> larghezza = 7.79 cm <= 8.2 cm

        // a) Piegatura a freddo (lamiera + farfalla tensioni residue)
        content((0.1, 6.28), anchor: "west", [#text(size: 7.3pt, weight: "bold")[a) Piegatura a freddo (dopo lo scarico)]])

        // Mini-schema lamiera piegata a sinistra + cerchio di zoom
        line((0.60, 5.65), (0.60, 4.45), stroke: 1.3pt)
        arc((1.10, 4.45), start: 180deg, stop: 270deg, radius: 0.50, anchor: "origin", stroke: 1.3pt)
        line((1.10, 3.95), (2.10, 3.95), stroke: 1.3pt)
        circle((0.76, 4.10), radius: 0.30, stroke: (dash: "dashed", thickness: 0.55pt))
        line((1.06, 4.15), (2.82, 4.65), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(45%)))

        // Zoom gomito con distribuzione residua a farfalla nello spessore
        // Centro di curvatura in (5.35, 5.75): r_ext = 2.55, r_med = 2.15, r_int = 1.75
        arc((5.35, 5.75), start: 192deg, stop: 256deg, radius: 2.55, anchor: "origin", stroke: 1.0pt)
        arc((5.35, 5.75), start: 192deg, stop: 256deg, radius: 1.75, anchor: "origin", stroke: 1.0pt)
        arc((5.35, 5.75), start: 194deg, stop: 254deg, radius: 2.15, anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(50%)))

        // Sezione radiale a theta = 225 deg: P_ext=(3.55,3.95), P_med=(3.83,4.23), P_int=(4.11,4.51)
        line((3.55, 3.95), (4.11, 4.51), stroke: 0.65pt)
        line((3.55, 3.95), (3.46, 4.28), (3.83, 4.23), close: true, fill: blue.transparentize(78%), stroke: (paint: blue, thickness: 0.8pt))
        line((3.83, 4.23), (4.20, 4.18), (4.11, 4.51), close: true, fill: red.transparentize(78%), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))

        content((3.25, 3.82), anchor: "center", [#text(fill: blue, size: 8pt, weight: "bold")[$-$]])
        content((4.38, 4.62), anchor: "center", [#text(fill: red.transparentize(10%), size: 8pt, weight: "bold")[$+$]])

        // Richiami senza incroci: intradosso (da lato concavo) ed estradosso (da sotto)
        line((5.35, 5.12), (3.82, 5.02), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
        content((5.45, 5.12), anchor: "west", [#text(size: 6.9pt)[Fibre interne: #text(fill: red.transparentize(10%), weight: "bold")[$sigma_"res" (+)$]]])

        line((5.35, 3.35), (4.52, 3.35), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
        content((5.45, 3.35), anchor: "west", [#text(size: 6.9pt)[Fibre esterne: #text(fill: blue, weight: "bold")[$sigma_"res" (-)$]]])

        // Separatore
        line((0.1, 2.95), (9.3, 2.95), stroke: (dash: "dotted", thickness: 0.6pt))

        // b) Lavorazione a caldo: decarburazione
        content((0.1, 2.58), anchor: "west", [#text(size: 7.3pt, weight: "bold")[b) Lavorazione a caldo: decarburazione]])
        rect((0.9, 0.35), (4.9, 1.30), fill: black.transparentize(88%), stroke: 0.9pt)
        content((2.9, 0.82), anchor: "center", [#text(size: 7pt)[Substrato (vincola il ritiro)]])
        rect((0.9, 1.30), (4.9, 1.70), fill: red.transparentize(80%), stroke: 0.9pt)

        // Frecce trazione sullo strato superficiale
        line((0.9, 1.50), (0.25, 1.50), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">"))
        line((4.9, 1.50), (5.55, 1.50), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">"))
        content((5.75, 1.62), anchor: "west", [#text(fill: red.transparentize(10%), size: 7pt, weight: "bold")[$sigma_"res" (+)$]])
        content((5.75, 1.15), anchor: "west", [#text(size: 6.9pt)[Pelle decarburata]])

        // Reazione decarburazione
        line((2.5, 1.70), (3.1, 2.15), stroke: 0.8pt, mark: (end: ">"))
        content((3.25, 2.18), anchor: "west", [#text(size: 7pt)[$"C" + "O"_2 -> "CO"_2$]])
      }),
      caption: [Tensioni residue dopo piegatura a freddo (a) e per decarburazione superficiale a caldo (b).],
    )
  ],
)

#nota[
  *Orientamento di montaggio e recupero.* Nelle lamiere formate a freddo conviene esporre alla trazione ciclica di esercizio le fibre esterne compresse, proteggendo l'intradosso già teso; dopo lavorazioni a caldo inevitabili occorre invece ripristinare la compressione con pallinatura o rullatura.
]

= Rivestimenti superficiali

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
    canvas(length: 1cm, {
      // BBox: x in [0.0, 16.4] (dx=16.4), y in [0.0, 7.2], length=1cm -> larghezza = 16.4 cm <= 17.0 cm
      import draw: *

      // Sfondo intestazione e riga alternata
      rect((0.0, 6.0), (16.4, 7.2), fill: black.transparentize(86%), stroke: none)
      rect((0.0, 1.95), (16.4, 3.9), fill: black.transparentize(94%), stroke: none)

      // Bordo esterno e griglia tabella
      rect((0.0, 0.0), (16.4, 7.2), stroke: (paint: black, thickness: 1.0pt))
      line((0.0, 6.0), (16.4, 6.0), stroke: (paint: black, thickness: 0.9pt))
      line((0.0, 3.9), (16.4, 3.9), stroke: (paint: black.transparentize(55%), thickness: 0.55pt))
      line((0.0, 1.95), (16.4, 1.95), stroke: (paint: black.transparentize(55%), thickness: 0.55pt))

      for x in (2.5, 5.6, 8.1, 10.7, 12.6) {
        line((x, 0.0), (x, 7.2), stroke: (paint: black.transparentize(55%), thickness: 0.55pt))
      }

      // Intestazioni colonna
      content((1.25, 6.6), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.5pt, weight: "bold")[Rivestimento])))
      content((4.05, 6.6), anchor: "center", box(width: 2.7cm, align(center, text(size: 7.5pt, weight: "bold")[Meccanismo / Stato residuo])))
      content((6.85, 6.6), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.5pt, weight: "bold")[Fatica in aria])))
      content((9.40, 6.6), anchor: "center", box(width: 2.2cm, align(center, text(size: 7.5pt, weight: "bold")[Fatica in ambiente corrosivo])))
      content((11.65, 6.6), anchor: "center", box(width: 1.5cm, align(center, text(size: 7.5pt, weight: "bold")[Usura])))
      content((14.50, 6.6), anchor: "center", box(width: 3.4cm, align(center, text(size: 7.5pt, weight: "bold")[Contromisure e rischi (infragilimento da H)])))

      // Riga 1: Cromatura / Nichelatura
      content((1.25, 4.95), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[*Cromatura / Nichelatura*])))
      content((4.05, 4.95), anchor: "center", box(width: 2.7cm, align(center, text(size: 7.2pt)[Riporto galvanico; tensioni residue di trazione ($sigma_"res" > 0$)])))
      content((6.85, 4.95), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[#text(fill: red.transparentize(10%), weight: "bold")[Riduce] (cresce con $R_m$, durata e spessore)])))
      content((9.40, 4.95), anchor: "center", box(width: 2.2cm, align(center, text(size: 7.2pt)[#text(fill: blue, weight: "bold")[Aumenta] (scherma il substrato)])))
      content((11.65, 4.95), anchor: "center", box(width: 1.5cm, align(center, text(size: 7.2pt)[#text(fill: blue, weight: "bold")[Buona]])))
      content((14.50, 4.95), anchor: "center", box(width: 3.4cm, align(center, text(size: 7.2pt)[Pallinatura o nitrurazione preventivi (Ni più sensibile); rischio infragilimento da H])))

      // Riga 2: Cadmiatura / Zincatura
      content((1.25, 2.925), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[*Cadmiatura / Zincatura*])))
      content((4.05, 2.925), anchor: "center", box(width: 2.7cm, align(center, text(size: 7.2pt)[Rivestimento protettivo senza stato residuo rilevante])))
      content((6.85, 2.925), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[*Neutro* (nessun effetto significativo)])))
      content((9.40, 2.925), anchor: "center", box(width: 2.2cm, align(center, text(size: 7.2pt)[#text(fill: blue, weight: "bold")[Aumenta] (scherma il metallo base)])))
      content((11.65, 2.925), anchor: "center", box(width: 1.5cm, align(center, text(size: 7.2pt)[#text(fill: red.transparentize(10%), weight: "bold")[Scarsa]])))
      content((14.50, 2.925), anchor: "center", box(width: 3.4cm, align(center, text(size: 7.2pt)[Controllo rigoroso del bagno galvanico contro infragilimento da idrogeno (H)])))

      // Riga 3: Anodizzazione
      content((1.25, 0.975), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[*Anodizzazione* \ (leghe leggere)])))
      content((4.05, 0.975), anchor: "center", box(width: 2.7cm, align(center, text(size: 7.2pt)[Pellicola d'ossido rigida e fragile])))
      content((6.85, 0.975), anchor: "center", box(width: 2.1cm, align(center, text(size: 7.2pt)[#text(fill: red.transparentize(10%), weight: "bold")[Riduce] (20%–30%)])))
      content((9.40, 0.975), anchor: "center", box(width: 2.2cm, align(center, text(size: 7.2pt)[#text(fill: red.transparentize(10%), weight: "bold")[Peggiora] (sinergia con corrosione)])))
      content((11.65, 0.975), anchor: "center", box(width: 1.5cm, align(center, text(size: 7.2pt)[Dura ma fragile al carico])))
      content((14.50, 0.975), anchor: "center", box(width: 3.4cm, align(center, text(size: 7.2pt)[Rischio cricche precoci della pellicola sotto carico ciclico])))
    })
  },
  caption: [Matrice comparativa dei rivestimenti superficiali: stato residuo, risposta a fatica in aria e in corrosione, usura e contromisure.],
)

#v(0.3em)

= Trattamenti termici, diffusivi e lavorazioni termiche

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
      canvas(length: 0.8cm, {
        // BBox: x in [0.0, 10.0] (dx=10.0), y in [0.3, 8.6], length=0.8cm -> larghezza = 8.00 cm <= 8.2 cm
        import draw: *

        // --- PANNELLO A: Trattamento superficiale (~1 mm / tempra induzione) ---
        content((0.2, 8.35), anchor: "west", text(size: 7.3pt, weight: "bold")[A) Trattamento superficiale (\~1 mm / induzione)])

        // Sezione componente
        rect((0.4, 4.9), (5.4, 6.75), fill: black.transparentize(92%), stroke: (paint: black, thickness: 0.9pt))
        rect((0.4, 6.75), (5.4, 7.45), fill: blue.transparentize(82%), stroke: (paint: black, thickness: 1.0pt))

        content((2.9, 5.82), anchor: "center", text(size: 7pt)[Cuore tenace indeformato])
        content((2.9, 7.82), anchor: "center", text(size: 7pt)[Espansione impedita (+0.5%)])

        // Frecce compressione nello strato trattato
        line((0.7, 7.1), (1.7, 7.1), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.7))
        line((5.1, 7.1), (4.1, 7.1), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.7))
        content((2.9, 7.1), anchor: "center", text(size: 7.2pt, fill: blue, weight: "bold")[$sigma_"res" < 0$])

        // Quota spessore ~1 mm e linea di proiezione interfaccia
        line((5.55, 6.75), (5.55, 7.45), stroke: (paint: black, thickness: 0.6pt), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42))
        content((5.72, 7.1), anchor: "west", text(size: 7pt)[\~1 mm])
        line((5.4, 6.75), (8.1, 6.75), stroke: (paint: black.transparentize(45%), dash: "dotted", thickness: 0.55pt))

        // Profilo qualitativo auto-equilibrato sigma_res(z)
        line((7.05, 7.45), (7.10, 6.95), (8.1, 6.75), (8.1, 7.45), close: true, fill: blue.transparentize(84%), stroke: none)
        line((8.1, 6.75), (8.48, 6.50), (8.25, 5.05), (8.1, 5.05), close: true, fill: red.transparentize(86%), stroke: none)
        line((8.1, 7.45), (8.1, 4.95), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
        line((6.8, 7.45), (9.6, 7.45), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
        line((7.05, 7.45), (7.10, 6.95), (8.1, 6.75), (8.48, 6.50), (8.25, 5.05), stroke: (paint: black, thickness: 1.1pt))

        content((7.3, 7.75), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
        content((8.7, 7.75), anchor: "center", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$+$])
        content((9.45, 7.75), anchor: "center", text(size: 7pt)[$sigma_"res"$])
        content((8.1, 4.72), anchor: "center", text(size: 7pt)[$z$])

        // Separatore orizzontale
        line((0.2, 4.35), (9.8, 4.35), stroke: (paint: black.transparentize(65%), dash: "dashed", thickness: 0.55pt))

        // --- PANNELLO B: Gradiente termico locale (saldatura / rettifica) ---
        content((0.2, 3.95), anchor: "west", text(size: 7.3pt, weight: "bold")[B) Gradiente termico locale (saldatura / rettifica)])

        // Piastra con ZTA centrale
        rect((0.4, 1.1), (5.4, 2.5), fill: black.transparentize(92%), stroke: (paint: black, thickness: 0.9pt))
        rect((2.1, 1.1), (3.7, 2.5), fill: red.transparentize(82%), stroke: (paint: red.transparentize(25%), dash: "dashed", thickness: 0.7pt))
        bezier((2.35, 2.5), (3.45, 2.5), (2.6, 2.95), (3.2, 2.95), stroke: (paint: red.transparentize(15%), thickness: 0.95pt))

        content((2.9, 1.8), anchor: "center", text(size: 7.2pt, weight: "bold")[ZTA])
        content((1.25, 1.8), anchor: "center", text(size: 7pt, fill: blue)[$sigma_"res" < 0$])
        content((4.55, 1.8), anchor: "center", text(size: 7pt, fill: blue)[$sigma_"res" < 0$])
        content((2.9, 3.35), anchor: "center", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$sigma_"res" > 0$])
        line((2.9, 3.16), (2.9, 2.82), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.6))
        content((2.9, 0.55), anchor: "center", text(size: 7pt)[Raffreddamento differenziale vincolato])

        // Profilo qualitativo sigma_res(x)
        line((8.1, 0.7), (8.1, 3.1), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
        line((6.4, 1.6), (9.7, 1.6), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))

        bezier((6.5, 1.6), (7.55, 1.6), (6.8, 1.05), (7.3, 1.05), stroke: (paint: blue, thickness: 1.1pt))
        bezier((7.55, 1.6), (8.65, 1.6), (7.85, 3.05), (8.35, 3.05), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        bezier((8.65, 1.6), (9.65, 1.6), (8.9, 1.05), (9.4, 1.05), stroke: (paint: blue, thickness: 1.1pt))

        content((8.1, 3.35), anchor: "center", text(size: 7pt)[$sigma_"res"$])
        content((9.72, 1.78), anchor: "south-east", text(size: 7pt)[$x$])
        content((8.48, 2.75), anchor: "west", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$+$])
        content((7.05, 0.88), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
        content((9.15, 0.88), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
      }),
      caption: [Profili auto-equilibrati di $sigma_"res"$ per indurimento superficiale (A) e gradiente termico locale (B).],
    )
  ],
)

= Effetto della temperatura di esercizio e scorrimento viscoso

All'aumentare della temperatura decrescono resistenza statica $R_m$ e modulo di Young $E$. Nella progettazione a fatica la temperatura può agire come semplice *condizione al contorno* costante (spostando le curve di Wöhler $S"-"N$) oppure come *sollecitazione diretta* nella *fatica termica* e *termomeccanica*.

Mentre un corpo libero si dilata senza tensioni, in una struttura vincolata — ad esempio una barra doppiamente incastrata o gli organi di un motore a combustione interna — oscillazioni temporali o gradienti spaziali di temperatura impediscono le dilatazioni (generando compressione al riscaldamento e trazione al raffreddamento) e richiedono modelli dedicati.

#block(breakable: false)[
  A temperatura costante, bisogna invece distinguere tra fase di *nucleazione* e fase di *propagazione*:

  - *Bassa temperatura.* La ridotta agitazione termica ostacola gli scorrimenti plastici locali, innalza $R_"p0.2"$ e ritarda la nucleazione (favorendo i *componenti sani*). Calano tuttavia resilienza e tenacità a frattura $K_"Ic"$: in presenza di *difetti preesistenti* la propagazione accelera verso il collasso fragile.
  - *Alta temperatura.* L'energia termica facilita il moto delle dislocazioni, anticipando la nucleazione fino alla possibile scomparsa del limite di fatica; l'aumento di tenacità rallenta però la propagazione rispetto al regime freddo.
]

== Scorrimento viscoso (_creep_)

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
      canvas(length: 0.75cm, {
        // BBox: x in [0.0, 10.6] (dx=10.6), y in [0.1, 5.6], length=0.75cm -> larghezza = 7.95 cm <= 8.2 cm
        import draw: *

        // --- Pannello sinistro: prova di creep (asse provetta x = 2.45) ---
        line((1.45, 5.2), (3.45, 5.2), stroke: 1.1pt)
        for hx in (1.55, 1.80, 2.05, 2.30, 2.55, 2.80, 3.05, 3.30) {
          line((hx, 5.2), (hx + 0.2, 5.45), stroke: 0.65pt)
        }

        // Asse di simmetria e afferraggio superiore
        line((2.45, 1.8), (2.45, 5.2), stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(55%)))
        rect((2.25, 4.6), (2.65, 5.2), fill: black.transparentize(86%), stroke: 0.9pt)

        // Provetta a osso di cane
        line(
          (2.20, 4.6), (2.20, 4.45), (2.32, 4.3), (2.32, 2.7), (2.20, 2.55), (2.20, 2.4),
          (2.70, 2.4), (2.70, 2.55), (2.58, 2.7), (2.58, 4.3), (2.70, 4.45), (2.70, 4.6),
          close: true, fill: black.transparentize(72%), stroke: 1pt,
        )

        // Afferraggio inferiore e peso costante
        rect((2.25, 1.8), (2.65, 2.4), fill: black.transparentize(86%), stroke: 0.9pt)
        rect((1.80, 0.75), (3.10, 1.8), fill: black.transparentize(72%), stroke: 1pt)
        content((2.45, 1.27), text(size: 7.5pt, weight: "bold")[Peso], anchor: "center")
        line((2.45, 0.75), (2.45, 0.15), stroke: 1.1pt, mark: (end: ">"))
        content((2.63, 0.38), text(size: 7.5pt)[$F = "cost"$], anchor: "west")

        // Camera e bobina termica
        rect(
          (1.68, 2.75), (3.22, 4.25),
          fill: red.transparentize(92%),
          stroke: (paint: red.transparentize(25%), dash: "dashed", thickness: 0.7pt),
        )
        for cy in (2.98, 3.33, 3.68, 4.03) {
          circle((1.90, cy), radius: 0.11, fill: orange.transparentize(45%), stroke: (paint: orange, thickness: 0.7pt))
          circle((3.00, cy), radius: 0.11, fill: orange.transparentize(45%), stroke: (paint: orange, thickness: 0.7pt))
        }

        // Richiami e annotazioni pannello sinistro senza collisioni
        content((1.22, 3.5), align(right, text(size: 7.2pt)[Bobina\ termica]), anchor: "east")
        line((1.30, 3.5), (1.76, 3.66), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
        content((3.35, 4.75), text(size: 7.2pt)[Provetta], anchor: "west")
        line((3.30, 4.72), (2.73, 4.52), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
        content((3.35, 3.5), text(size: 7.2pt, fill: red.transparentize(10%))[$T = "cost"$], anchor: "west")

        // --- Pannello destro: curva epsilon(t) ---
        line((4.9, 2.0), (10.2, 2.0), stroke: 0.9pt, mark: (end: ">"))
        line((4.9, 2.0), (4.9, 5.5), stroke: 0.9pt, mark: (end: ">"))
        content((4.68, 5.42), text(size: 8pt)[$epsilon$], anchor: "east")
        content((10.28, 2.0), text(size: 8pt)[$t$], anchor: "west")
        content((4.78, 2.45), text(size: 7.5pt)[$epsilon_0$], anchor: "east")

        // Curva di creep (elastico, primario, secondario, terziario)
        line((4.9, 2.0), (4.95, 2.45), stroke: (paint: blue, thickness: 1.1pt))
        bezier((4.95, 2.45), (5.88, 3.05), (5.1, 2.85), (5.48, 2.95), stroke: (paint: blue, thickness: 1.1pt))
        line((5.88, 3.05), (7.85, 3.55), stroke: (paint: blue, thickness: 1.1pt))
        bezier((7.85, 3.55), (9.35, 5.15), (8.45, 3.70), (9.15, 4.35), stroke: (paint: blue, thickness: 1.1pt))

        // Crocetta di rottura
        line((9.25, 5.05), (9.45, 5.25), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        line((9.25, 5.25), (9.45, 5.05), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
        content((9.10, 5.15), align(right, text(size: 7.2pt, fill: red.transparentize(10%))[Instabilità\ e rottura]), anchor: "east")

        // Guide verticali stadi
        line((5.88, 2.0), (5.88, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
        line((7.85, 2.0), (7.85, 3.55), stroke: (dash: "dotted", thickness: 0.6pt))
        line((9.35, 2.0), (9.35, 5.15), stroke: (dash: "dotted", thickness: 0.6pt))
        content((5.40, 2.25), text(size: 7pt)[I], anchor: "center")
        content((6.86, 2.25), text(size: 7pt)[II], anchor: "center")
        content((8.60, 2.25), text(size: 7pt)[III], anchor: "center")

        // Barra soglie termiche T / T_f
        rect((4.9, 0.75), (6.45, 1.05), fill: black.transparentize(90%), stroke: 0.7pt)
        rect((6.45, 0.75), (8.48, 1.05), fill: orange.transparentize(70%), stroke: 0.7pt)
        rect((8.48, 0.75), (10.2, 1.05), fill: red.transparentize(65%), stroke: 0.7pt)
        content((6.45, 1.15), text(size: 7pt)[0.3–0.4 $T_f$], anchor: "south")
        content((8.48, 1.15), text(size: 7pt)[0.6–0.7 $T_f$], anchor: "south")
        content((10.2, 1.15), text(size: 7pt)[$T_f$], anchor: "south")
        content((4.9, 0.63), text(size: 7pt)[$0$], anchor: "north")
        content((7.46, 0.63), text(size: 7pt)[Attivazione], anchor: "north")
        content((9.34, 0.63), align(center, text(size: 7pt)[Creep\ dominante]), anchor: "north")
      }),
      caption: [Prova di scorrimento viscoso a carico e temperatura costanti, stadi di _creep_ e soglie omologhe $T \/ T_f$.],
    )
  ],
)

Nelle macchine termiche (turbine aeronautiche, motori a combustione interna) lo scorrimento viscoso agisce in parallelo con fatica meccanica, fatica termomeccanica e ossidazione ad alta temperatura, rendendo necessari modelli di *danneggiamento combinato*.

= Effetto dell'ambiente corrosivo e criterio progettuale

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

= Introduzione alla fatica multiassiale e classificazione degli stati di tensione

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
      canvas(length: 1.15cm, {
        // BBox: x in [-0.6, 6.2] (dx=6.8), y in [-1.05, 5.35], length=1.15cm -> larghezza = 7.82 cm <= 8.2 cm
        import draw: line, circle, bezier, content

        // Legenda orizzontale in alto
        line((0.1, 5.20), (0.5, 5.20), stroke: (paint: blue, thickness: 1.1pt))
        content((0.58, 5.20), anchor: "west", text(size: 7pt)[$sigma(t)$])
        line((1.50, 5.20), (1.90, 5.20), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        content((1.98, 5.20), anchor: "west", text(size: 7pt)[$tau(t)$ ($0^circ$ / sfas.)])
        line((3.80, 5.20), (4.20, 5.20), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
        content((4.28, 5.20), anchor: "west", text(size: 7pt)[$tau(t)$ ($180^circ$)])

        // Sottografico superiore: Carichi semplici (y0 = 3.35)
        content((0.18, 4.78), anchor: "west", text(size: 7.5pt, weight: "bold")[Carichi semplici (in fase / controfase)])
        line((0, 2.35), (0, 4.55), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
        line((0, 3.35), (5.80, 3.35), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
        content((-0.10, 4.45), anchor: "east", text(size: 7.5pt)[$sigma, tau$])
        content((5.85, 3.35), anchor: "west", text(size: 7.5pt)[$t$])

        // sigma(t) superiore (A = 0.80, W = 1.80, 1.333*A = 1.066)
        bezier((0.0, 3.35), (1.8, 3.35), (0.594, 4.416), (1.206, 4.416), stroke: (paint: blue, thickness: 1.1pt))
        bezier((1.8, 3.35), (3.6, 3.35), (2.394, 2.284), (3.006, 2.284), stroke: (paint: blue, thickness: 1.1pt))
        bezier((3.6, 3.35), (5.4, 3.35), (4.194, 4.416), (4.806, 4.416), stroke: (paint: blue, thickness: 1.1pt))

        // tau(t) in fase 0° (A = 0.50, W = 1.80, 1.333*A = 0.667)
        bezier((0.0, 3.35), (1.8, 3.35), (0.594, 4.017), (1.206, 4.017), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        bezier((1.8, 3.35), (3.6, 3.35), (2.394, 2.683), (3.006, 2.683), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        bezier((3.6, 3.35), (5.4, 3.35), (4.194, 4.017), (4.806, 4.017), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))

        // tau(t) controfase 180° (A = 0.42, W = 1.80, 1.333*A = 0.560)
        bezier((0.0, 3.35), (1.8, 3.35), (0.594, 2.790), (1.206, 2.790), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
        bezier((1.8, 3.35), (3.6, 3.35), (2.394, 3.910), (3.006, 3.910), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))
        bezier((3.6, 3.35), (5.4, 3.35), (4.194, 2.790), (4.806, 2.790), stroke: (paint: orange, thickness: 0.95pt, dash: "dotted"))

        // Allineamento picchi/valli simultanei a x = 0.9
        line((0.9, 2.82), (0.9, 4.30), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
        circle((0.9, 4.15), radius: 0.045, fill: blue, stroke: none)
        circle((0.9, 3.85), radius: 0.045, fill: red.transparentize(10%), stroke: none)
        circle((0.9, 2.93), radius: 0.045, fill: orange, stroke: none)

        // Sottografico inferiore: Carichi complessi (y0 = 0.0)
        content((0.18, 1.62), anchor: "west", text(size: 7.5pt, weight: "bold")[Carichi complessi (sfasati)])
        line((0, -1.00), (0, 1.25), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
        line((0, 0.0), (5.80, 0.0), mark: (end: ">", scale: 0.65), stroke: 0.7pt)
        content((-0.10, 1.15), anchor: "east", text(size: 7.5pt)[$sigma, tau$])
        content((5.85, 0.0), anchor: "west", text(size: 7.5pt)[$t$])

        // sigma(t) inferiore (A = 0.80, W = 1.80)
        bezier((0.0, 0.0), (1.8, 0.0), (0.594, 1.066), (1.206, 1.066), stroke: (paint: blue, thickness: 1.1pt))
        bezier((1.8, 0.0), (3.6, 0.0), (2.394, -1.066), (3.006, -1.066), stroke: (paint: blue, thickness: 1.1pt))
        bezier((3.6, 0.0), (5.4, 0.0), (4.194, 1.066), (4.806, 1.066), stroke: (paint: blue, thickness: 1.1pt))

        // tau(t) sfasata di Δφ = 72° (dx = 0.72, A = 0.50, W = 1.80)
        bezier((0.0, -0.480), (0.72, 0.0), (0.242, -0.427), (0.482, -0.267), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        bezier((0.72, 0.0), (2.52, 0.0), (1.314, 0.667), (1.926, 0.667), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        bezier((2.52, 0.0), (4.32, 0.0), (3.114, -0.667), (3.726, -0.667), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))
        bezier((4.32, 0.0), (5.40, 0.480), (4.676, 0.400), (5.039, 0.560), stroke: (paint: red.transparentize(10%), thickness: 0.95pt, dash: "dashed"))

        // Linee di proiezione e quota Δφ tra i picchi (x = 0.9 e x = 1.62)
        line((0.9, 0.0), (0.9, 1.12), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
        line((1.62, 0.0), (1.62, 1.12), stroke: (dash: "dotted", thickness: 0.6pt, paint: luma(80)))
        circle((0.9, 0.80), radius: 0.045, fill: blue, stroke: none)
        circle((1.62, 0.50), radius: 0.045, fill: red.transparentize(10%), stroke: none)
        line((0.9, 0.98), (1.62, 0.98), mark: (start: ">", end: ">", scale: 0.5), stroke: 0.65pt)
        content((1.26, 1.07), anchor: "south", text(size: 7.5pt)[$Delta phi$])
      }),
      caption: [Stati di tensione multiassiali: carichi in fase ($0^circ$), controfase ($180^circ$) e sfasati ($Delta phi$).],
    )
  ],
)

#v(0.6em)
La trattazione di base affronta gli *stati multiassiali semplici*: la coincidenza temporale dei picchi consente di definire uno scalare equivalente di verifica, mentre i regimi complessi e intermedi richiedono formulazioni specialistiche.

= Analisi sperimentale di Gough e Pollard e tensione equivalente

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
      canvas(length: 1.0cm, {
        // BBox: x in [-0.9, 6.8] (dx=7.7), y in [-0.85, 4.70], length=1.0cm -> larghezza = 7.70 cm <= 8.2 cm
        import draw: line, circle, arc, content

        // Griglia leggera (passo 100 MPa = 1.0 unità)
        for gx in (1, 2, 3, 4, 5, 6) {
          line((gx, 0), (gx, 4.25), stroke: (paint: black.transparentize(88%), thickness: 0.45pt, dash: "dotted"))
          line((gx, -0.07), (gx, 0.07), stroke: 0.6pt)
          content((gx, -0.14), anchor: "north", text(size: 7pt)[#(gx * 100)])
        }
        for gy in (1, 2, 3, 4) {
          line((0, gy), (6.25, gy), stroke: (paint: black.transparentize(88%), thickness: 0.45pt, dash: "dotted"))
          line((-0.07, gy), (0.07, gy), stroke: 0.6pt)
          content((-0.14, gy), anchor: "east", text(size: 7pt)[#(gy * 100)])
        }
        content((-0.12, -0.14), anchor: "north-east", text(size: 7pt)[0])

        // Campitura regione di sicurezza (interna a C 15)
        arc((0, 0), start: 0deg, stop: 90deg, radius: (2.5, 1.5), anchor: "origin", mode: "PIE", fill: black.transparentize(88%), stroke: none)

        // Assi cartesiani
        line((-0.15, 0), (6.55, 0), mark: (end: ">", scale: 0.65), stroke: 0.8pt)
        line((0, -0.15), (0, 4.55), mark: (end: ">", scale: 0.65), stroke: 0.8pt)
        content((3.25, -0.52), anchor: "north", text(size: 8pt)[$sigma_a " (MPa)"$])
        content((0.15, 4.50), anchor: "west", text(size: 8pt)[$tau_a " (MPa)"$])

        // Curve ellittiche limite
        arc((0, 0), start: 0deg, stop: 90deg, radius: (2.5, 1.5), anchor: "origin", stroke: (paint: blue, thickness: 1.15pt))
        arc((0, 0), start: 0deg, stop: 90deg, radius: (5.5, 3.3), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 1.15pt))

        // Punti sperimentali schematici
        for pt in ((0.35, 1.52), (0.95, 1.38), (1.55, 1.14), (2.10, 0.85), (2.42, 0.35)) {
          circle(pt, radius: 0.045, fill: black, stroke: none)
        }
        for pt in ((0.50, 3.34), (1.60, 3.10), (2.75, 2.92), (4.15, 2.12), (4.95, 1.38), (5.38, 0.60)) {
          circle(pt, radius: 0.045, fill: black, stroke: none)
        }

        // Etichette curve e regione sicura
        content((0.52, 0.52), anchor: "center", text(size: 6.5pt, fill: luma(55))[Regione \ sicura])
        line((2.82, 1.25), (1.98, 0.92), mark: (end: ">", scale: 0.5, fill: blue), stroke: (paint: blue, thickness: 0.6pt))
        content((2.86, 1.25), anchor: "west", text(size: 7pt, fill: blue)[C 15 \ $R_m = 425$ MPa])

        line((4.18, 3.40), (3.78, 2.40), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)), stroke: (paint: red.transparentize(10%), thickness: 0.6pt))
        content((4.22, 3.45), anchor: "west", text(size: 7pt, fill: red.transparentize(10%))[30 Ni Cr Mo 12 \ $R_m = 900$ MPa])

        // Punto limite e punto insicuro
        circle((2.20, 3.02), radius: 0.065, fill: white, stroke: (paint: rgb("#c25e00"), thickness: 1.1pt))
        line((2.62, 3.55), (2.25, 3.09), mark: (end: ">", scale: 0.5, fill: rgb("#c25e00")), stroke: (paint: rgb("#c25e00"), thickness: 0.6pt))
        content((2.65, 3.58), anchor: "south", text(size: 6.8pt, fill: rgb("#c25e00"))[Limite])

        circle((5.30, 2.60), radius: 0.06, fill: red.transparentize(10%), stroke: none)
        content((5.42, 2.60), anchor: "west", text(size: 6.8pt, fill: red.transparentize(10%))[Insicuro])
      }),
      caption: [Curva limite sperimentale di Gough e Pollard nel piano $(sigma_a, tau_a)$.],
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

= Estensione alle tensioni assiali secondo Shigley ed effetto dell'intaglio

In Gough e Pollard per materiali duttili la tensione normale $sigma_a$ è puramente flettente ($sigma_a^f$) e il cedimento limite vale $sqrt((sigma_a^f)^2 + 3 tau_a^2) = sigma_(D-1)$. Molti organi rotanti, come i rotori verticali di potenza, associano però torsione $tau_a$ e flessione rotante $sigma_a^f$ indotta dai vincoli a una tensione assiale di trazione-compressione $sigma_a^t$ dovuta al peso proprio o a spinte assiali.

Diversamente dal caso statico duttile, dove la resistenza a trazione governa anche la flessione, a fatica i due limiti differiscono: in flessione il gradiente confina il picco alle sole fibre esterne, perciò $sigma_(D-1)$ supera il limite in trazione-compressione uniforme $sigma_(D-1)^T = C_L dot sigma_(D-1)$, con $0.6 <= C_L <= 0.85$.

Per evitare arbitri nella scelta di $C_L$ senza sovrastimare il peso del termine assiale, Shigley adotta il valore unico $C_L = 0.85$. In sola trazione-compressione alternata il cedimento si raggiunge quando $sigma_a^t = 0.85 dot sigma_(D-1)$; dividere $sigma_a^t$ per $0.85$ riporta quindi la tensione assiale alla scala della flessione per il confronto con $sigma_(D-1)$:

$ sigma_a^t = sigma_(D-1)^T = C_L dot sigma_(D-1) approx 0.85 dot sigma_(D-1) quad arrow.r.double quad frac(sigma_a^t, 0.85) = sigma_(D-1) $

Poiché flessione e azione assiale agiscono lungo il medesimo asse del componente, le due tensioni normali rese omogenee si sommano direttamente in $sigma_(a,"eq")$, mentre la componente media conserva la forma statica di Von Mises:

$ sigma_(a,"eq") = sqrt((sigma_a^f + frac(sigma_a^t, 0.85))^2 + 3 tau_a^2), quad sigma_(m,"eq") = sqrt((sigma_m^f + sigma_m^t)^2 + 3 tau_m^2) $

#nota[
  *Omogeneità dei termini.* In $sigma_(a,"eq")$, $tau_a$ non va divisa per $0.85$ perché il coefficiente $3$ (da $(sigma_(D-1) / tau_(D-1))^2 approx 3$) la converte già alla scala di $sigma_(D-1)$. In $sigma_(m,"eq")$ manca invece lo $0.85$ poiché in regime statico duttile trazione e flessione hanno uguale limite di cedimento.
]

== Effetto dell'intaglio e punto di lavoro

In presenza di intagli si passa dalle tensioni nominali a quelle effettive moltiplicando ogni termine per il proprio coefficiente di intaglio a fatica $K_f$ (anziché $K_t$). Poiché il danneggiamento dipende dalla tensione massima locale $sigma_"max" = sigma_m + sigma_a$, ciascun fattore specifico ($K_f^f$ per flessione, $K_f^t$ per trazione-compressione e $K_f^tau$ per torsione) si applica sia alla parte alternata sia a quella media:

$ sigma_(a,"eq") = sqrt((K_f^f sigma_a^f + frac(K_f^t sigma_a^t, 0.85))^2 + 3(K_f^tau tau_a)^2), quad sigma_(m,"eq") = sqrt((K_f^f sigma_m^f + K_f^t sigma_m^t)^2 + 3(K_f^tau tau_m)^2) $

Con stati multiassiali semplici (componenti in fase o controfase e direzioni principali fisse), la coppia $(sigma_(m,"eq"), sigma_(a,"eq"))$ individua il punto di lavoro $P$ sul diagramma di Haigh, riconducendo la verifica al caso monoassiale.

= Verifica sul diagramma di Haigh multiassiale e cenni alla normativa FKM-Guideline

Individuato $P(sigma_(m,"eq"), sigma_(a,"eq"))$, il diagramma di Haigh del componente traccia la retta di Goodman tra $R_m$ e il limite di fatica ridotto $sigma_(D-1)^C$, ricavato dal limite in flessione rotante $sigma_(D-1)$ tramite i soli fattori dimensionale $C_S$ e di finitura superficiale $C_F$:

$ sigma_(D-1)^C = C_S dot C_F dot sigma_(D-1) $

Il fattore di carico $C_L$ va escluso da $sigma_(D-1)^C$: la correzione $0.85$ è già inclusa su $sigma_a^t$ dentro $sigma_(a,"eq")$ e reinserirla conterebbe due volte lo stesso effetto. Nel caso di riferimento a tensione media costante ($sigma_(m,"eq") = "cost"$, pur restando applicabili sul piano equivalente anche le altre leggi di carico come $R = "cost"$), la verticale per $P$ interseca l'asse $sigma_m$ in $H$ e la retta di Goodman in $L$, fissando il limite locale $sigma_D^"lim"$ e il coefficiente di sicurezza $"CS"$:

$ "CS" = frac(overline("LH"), overline("PH")) = frac(sigma_D^"lim", sigma_(a,"eq")) $

#figure(
  canvas(length: 0.92cm, {
    // BBox: x in [-1.1, 14.5] (dx=15.6), y in [-1.15, 3.9], length=0.92cm -> larghezza = 14.35 cm <= 17.0 cm
    import draw: *

    // --- Pannello (a): Calcolo di CS ---
    line((-0.3, 0), (5.8, 0), stroke: 0.8pt, mark: (end: ">"))
    line((0, -0.3), (0, 3.7), stroke: 0.8pt, mark: (end: ">"))
    content((5.8, -0.22), anchor: "north", text(size: 8pt)[$sigma_m$])
    content((-0.18, 3.7), anchor: "east", text(size: 8pt)[$sigma_a$])

    line((0, 3.0), (5.2, 0), stroke: 1.1pt)
    circle((0, 3.0), radius: 0.045, fill: black, stroke: none)
    content((0.15, 3.10), anchor: "south-west", text(size: 8pt)[$sigma_(D-1)^C$])
    circle((5.2, 0), radius: 0.045, fill: black, stroke: none)
    content((5.2, -0.22), anchor: "north", text(size: 8pt)[$R_m$])

    line((1.9, 0), (1.9, 1.904), stroke: (paint: blue.darken(15%), thickness: 0.75pt))
    line((0, 0.95), (1.9, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
    line((0, 1.904), (1.9, 1.904), stroke: (dash: "dotted", thickness: 0.65pt))

    circle((1.9, 0), radius: 0.045, fill: black, stroke: none)
    content((2.00, 0.08), anchor: "south-west", text(size: 7.5pt)[$H$])
    content((1.9, -0.22), anchor: "north", text(size: 7.5pt)[$sigma_(m,"eq")$])

    circle((1.9, 0.95), radius: 0.06, fill: red, stroke: none)
    content((2.06, 0.95), anchor: "west", text(fill: red, size: 8pt)[$P$])
    content((-0.22, 0.95), anchor: "east", text(size: 7.5pt)[$sigma_(a,"eq")$])

    circle((1.9, 1.904), radius: 0.06, fill: blue, stroke: none)
    content((2.04, 2.04), anchor: "south-west", text(fill: blue, size: 8pt)[$L$])
    content((-0.22, 1.904), anchor: "east", text(size: 7.5pt)[$sigma_D^"lim"$])

    content((2.6, -0.78), anchor: "north", text(size: 8pt)[*(a)* Calcolo di $"CS"$])

    // --- Pannello (b): Retta limite ridotta ---
    line((8.1, 0), (13.3, 0), (8.1, 1.85), close: true, fill: black.transparentize(90%), stroke: none)

    line((7.8, 0), (13.9, 0), stroke: 0.8pt, mark: (end: ">"))
    line((8.1, -0.3), (8.1, 3.7), stroke: 0.8pt, mark: (end: ">"))
    content((13.9, -0.22), anchor: "north", text(size: 8pt)[$sigma_m$])
    content((7.92, 3.7), anchor: "east", text(size: 8pt)[$sigma_a$])

    line((8.1, 3.0), (13.3, 0), stroke: (dash: "dashed", thickness: 0.8pt, paint: black.transparentize(35%)))
    circle((8.1, 3.0), radius: 0.045, fill: black, stroke: none)
    content((8.25, 3.10), anchor: "south-west", text(size: 8pt)[$sigma_(D-1)^C$])

    line((8.1, 1.85), (13.3, 0), stroke: (paint: blue.darken(15%), thickness: 1.1pt))
    circle((8.1, 1.85), radius: 0.045, fill: blue.darken(15%), stroke: none)
    content((7.88, 1.85), anchor: "east", text(size: 7.5pt)[$frac(sigma_(D-1)^C, "CS")$])

    circle((13.3, 0), radius: 0.045, fill: black, stroke: none)
    content((13.3, -0.22), anchor: "north", text(size: 8pt)[$R_m$])

    line((8.1, 0.95), (10.0, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
    line((10.0, 0), (10.0, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
    circle((10.0, 0.95), radius: 0.06, fill: red, stroke: none)
    content((10.14, 0.88), anchor: "west", text(fill: red, size: 8pt)[$P$])
    content((7.88, 0.95), anchor: "east", text(size: 7.5pt)[$sigma_(a,"eq")$])
    content((10.0, -0.22), anchor: "north", text(size: 7.5pt)[$sigma_(m,"eq")$])

    line((11.6, 2.2), (10.9, 0.45), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
    content((11.65, 2.25), anchor: "south", text(size: 7.5pt)[Area sicura per $"CS"$])

    content((10.7, -0.78), anchor: "north", text(size: 8pt)[*(b)* Retta limite ridotta])
  }),
  caption: [Diagramma di Haigh multiassiale: (a) calcolo del coefficiente di sicurezza $"CS"$ a tensione media costante; (b) interpretazione grafica mediante retta limite ridotta.],
) <fig:haigh-multi>

Poiché a $sigma_(m,"eq")$ costante la similitudine dei triangoli con vertice in $R_m$ dà $sigma_D^"lim" / "CS" = (sigma_(D-1)^C / "CS")(1 - sigma_(m,"eq") / R_m)$, la @fig:haigh-multi (b) traccia direttamente la retta limite ridotta tra $sigma_(D-1)^C / "CS"$ e $R_m$: fissato il $"CS"$ minimo di progetto o normativa, ogni punto $P$ interno al triangolo ridotto è verificato.

== Cenni alla normativa FKM-Guideline (2003)

La normativa tedesca *FKM-Guideline* (*Analytical Strength Assessment*, Forschungskuratorium Maschinenbau, 5ª ed., VDMA Verlag, 2003) costituisce lo standard europeo di riferimento, per metodo e banca dati sui materiali, nel progetto a fatica di alberi di trasmissione. Le tensioni equivalenti effettive mantengono l'impianto di Shigley, moltiplicando ogni tensione nominale per il proprio $K_f$:

$ sigma_(a,"eq,eff")^"FKM" = sqrt((sigma_(a,"nom")^"tc" K_f^"tc" + sigma_(a,"nom")^b K_f^b)^2 + 3(tau_(a,"nom")^t K_f^t)^2), quad sigma_(m,"eq,eff")^"FKM" = sqrt((sigma_m^"tc" K_f^"tc" + sigma_m^b K_f^b)^2 + 3(tau_m^t K_f^t)^2) $

Apici e pedici indicano trazione-compressione ($"tc"$), flessione ($b$, *bending*) e torsione ($t$). In $sigma_(a,"eq,eff")^"FKM"$ non compare il divisore $0.85$ perché la FKM riferisce il confronto al limite di fatica del componente in trazione-compressione $sigma_(C,D-1)$, anziché alla flessione rotante, tenendo conto a parte dei fattori di carico nella taratura dei coefficienti:

$ sigma_(C,D-1) = C_F dot sigma_(D-1)^"tc" $

= Il metodo storico di Sines e i suoi limiti

Per valutare l'influenza delle tensioni medie in fatica multiassiale, *Sines* provò provini cilindrici in quattro combinazioni: (a) $sigma_m + sigma_a$, (b) $sigma_m + tau_a$, (c) $tau_m + tau_a$ e (d) $tau_m + sigma_a$. Nei diagrammi ottenuti, la resistenza cala nettamente al crescere della tensione media normale mentre resta costante con sola torsione media.

#figure(
  canvas(length: 0.74cm, {
    // BBox: x in [0.0, 20.0] (dx=20.0), y in [0.0, 9.4], length=0.74cm -> larghezza = 14.80 cm <= 17.0 cm
    import draw: *

    let draw-cell(ox, oy, label, mode) = {
      rect(
        (ox, oy),
        (ox + 9.5, oy + 4.4),
        stroke: (paint: black.transparentize(78%), thickness: 0.6pt),
        radius: 0.15,
      )
      content((ox + 0.30, oy + 4.18), anchor: "north-west", [#text(size: 8.5pt, weight: "bold")[#label]])

      // Provino cilindrico 2D a sinistra
      let yc = oy + 2.55
      line(
        (ox + 0.25, yc),
        (ox + 3.20, yc),
        stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(50%)),
      )
      line(
        (ox + 0.45, yc + 0.44), (ox + 0.90, yc + 0.44), (ox + 1.20, yc + 0.27),
        (ox + 2.25, yc + 0.27), (ox + 2.55, yc + 0.44), (ox + 3.00, yc + 0.44),
        (ox + 3.00, yc - 0.44), (ox + 2.55, yc - 0.44), (ox + 2.25, yc - 0.27),
        (ox + 1.20, yc - 0.27), (ox + 0.90, yc - 0.44), (ox + 0.45, yc - 0.44),
        close: true,
        fill: black.transparentize(88%),
        stroke: 0.95pt,
      )

      // Vettori di carico applicati (blu: tensione media, rosso: alternata)
      if mode == "a" {
        line((ox + 3.30, yc + 0.36), (ox + 4.30, yc + 0.36), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.7))
        content((ox + 3.80, yc + 0.54), anchor: "south", [#text(size: 7.5pt, fill: blue)[$sigma_m$]])
        line((ox + 3.30, yc - 0.36), (ox + 4.30, yc - 0.36), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.7))
        content((ox + 3.80, yc - 0.54), anchor: "north", [#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_a$]])
      } else if mode == "b" {
        line((ox + 3.30, yc + 0.42), (ox + 4.30, yc + 0.42), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.7))
        content((ox + 3.80, yc + 0.60), anchor: "south", [#text(size: 7.5pt, fill: blue)[$sigma_m$]])
        arc((ox + 3.55, yc - 0.42), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.48))
        content((ox + 4.02, yc - 0.42), anchor: "west", [#text(size: 7.5pt, fill: red.transparentize(10%))[$tau_a$]])
      } else if mode == "c" {
        arc((ox + 3.55, yc + 0.45), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.48))
        content((ox + 4.02, yc + 0.45), anchor: "west", [#text(size: 7.5pt, fill: blue)[$tau_m$]])
        arc((ox + 3.55, yc - 0.45), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.48))
        content((ox + 4.02, yc - 0.45), anchor: "west", [#text(size: 7.5pt, fill: red.transparentize(10%))[$tau_a$]])
      } else {
        arc((ox + 3.55, yc + 0.46), start: -68deg, stop: 68deg, radius: (0.24, 0.36), anchor: "origin", stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.48))
        content((ox + 4.02, yc + 0.46), anchor: "west", [#text(size: 7.5pt, fill: blue)[$tau_m$]])
        line((ox + 3.30, yc - 0.42), (ox + 4.30, yc - 0.42), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (start: ">", end: ">", scale: 0.7))
        content((ox + 3.80, yc - 0.58), anchor: "north", [#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_a$]])
      }

      // Condizione sulle tensioni medie principali
      let cond = if mode == "a" or mode == "b" {
        $sigma_(m,1) + sigma_(m,2) != 0$
      } else {
        $sigma_(m,1) + sigma_(m,2) = 0$
      }
      content((ox + 1.75, oy + 0.72), anchor: "center", [#text(size: 7.5pt)[#cond]])

      // Diagramma qualitativo a destra
      let ax0 = ox + 5.75
      let ay0 = oy + 0.95
      line((ax0 - 0.35, ay0), (ax0 + 3.15, ay0), stroke: 0.75pt, mark: (end: ">", scale: 0.65))
      line((ax0, ay0 - 0.10), (ax0, ay0 + 2.65), stroke: 0.75pt, mark: (end: ">", scale: 0.65))

      let xlabel = if mode == "a" or mode == "b" { $sigma_m$ } else { $tau_m$ }
      let ylabel = if mode == "a" or mode == "d" { $sigma_a$ } else { $tau_a$ }
      content((ax0 + 3.15, ay0 - 0.16), anchor: "north-east", [#text(size: 7.5pt)[#xlabel]])
      content((ax0 - 0.12, ay0 + 2.55), anchor: "east", [#text(size: 7.5pt)[#ylabel]])

      if mode == "a" or mode == "b" {
        line((ax0 - 0.25, ay0 + 2.25), (ax0 + 2.60, ay0 + 0.35), stroke: (paint: rgb("#1f77b4"), thickness: 1.15pt))
      } else {
        line((ax0 - 0.25, ay0 + 1.55), (ax0 + 2.60, ay0 + 1.55), stroke: (paint: rgb("#1f77b4"), thickness: 1.15pt))
      }
    }

    draw-cell(0.0, 5.0, "a)", "a")
    draw-cell(10.5, 5.0, "b)", "b")
    draw-cell(0.0, 0.0, "c)", "c")
    draw-cell(10.5, 0.0, "d)", "d")
  }),
  caption: [Analisi sperimentale di Sines: provini e influenza delle tensioni medie.],
)

- *Casi a e b ($sigma_(m,1) + sigma_(m,2) != 0$).* La tensione media assiale $sigma_m$ rende non nulla la traccia del tensore medio; al crescere di $sigma_m$ l'ampiezza ammissibile ($sigma_a$ o $tau_a$) decresce sensibilmente.
- *Casi c e d ($sigma_(m,1) + sigma_(m,2) = 0$).* La torsione statica pura genera tensioni principali medie uguali e opposte ($sigma_(m,1) = +tau_m$, $sigma_(m,2) = -tau_m$); in quei provini la resistenza alternata resta pressoché insensibile a $tau_m$.

Da tali prove Sines dedusse che la tensione tangenziale media non influisce sulla vita a fatica e riscrisse la retta di Goodman ($sigma_(a,"eq") + m sigma_(m,"eq") <= sigma_(D-1)$) in *tensioni principali*, esprimendo $sigma_(a,"eq")$ secondo *Von Mises* e sostituendo a $sigma_(m,"eq")$ la sola somma algebrica delle tensioni medie principali:

$ frac(1, sqrt(2)) sqrt((sigma_(a,1) - sigma_(a,2))^2 + (sigma_(a,1) - sigma_(a,3))^2 + (sigma_(a,2) - sigma_(a,3))^2) + m (sigma_(m,1) + sigma_(m,2) + sigma_(m,3)) <= sigma_(D-1), quad m = frac(sigma_(D-1), R_m) $

Il primo termine coincide con $sqrt(sigma_a^2 + 3 tau_a^2)$ scritto nelle tre tensioni principali alternate, mentre la pendenza di Goodman $m = sigma_(D-1) / R_m$ rende il contributo medio omogeneo a $sigma_(D-1)$. In torsione statica pura ($sigma_(m,1) = -sigma_(m,2)$, $sigma_(m,3) = 0$) la parentesi media si annulla, azzerando ogni effetto di $tau_m$.

Oggi il criterio di Sines è abbandonato perché generalizza indebitamente il comportamento di provini particolari. Componenti reali quali *molle elicoidali*, *viti* e *bulloni* mostrano diagrammi di Haigh nel piano $(tau_m, tau_a)$ nettamente decrescenti; negli *alberi di trasmissione*, inoltre, ignorare $tau_m$ trascurerebbe una causa primaria di danneggiamento e rottura.

= Critica all'approccio $K_f$ riduttivo e complessità delle prove multiassiali

Un altro schema storico porta $K_f$ a denominatore del limite di fatica a flessione alternata $sigma_(D-1)^b$ (*bending*), lasciando nominali le tensioni in $sigma_(a,"eq")$ ed escludendo la torsione dalla componente media:

$ sigma_(D-1)^C = frac(C_L dot C_S dot C_F, K_f) sigma_(D-1)^b, quad sigma_(a,"eq") = sqrt(sigma_a^2 + 3 tau_a^2), quad sigma_(m,"eq") = sigma_m $

L'impostazione è coerente solo sotto carico monoassiale, dove $K_f$ e i fattori correttivi sono univoci. Quando invece coesistono sforzo normale $N$ (trazione-compressione) e momento flettente $M_f$ (flessione rotante), i diagrammi di *Peterson* forniscono $K_f$ distinti a parità di geometria dell'intaglio, rendendo ambiguo sia quale $K_f$ porre a denominatore sia quali coefficienti $C_L$ e $C_S$ adottare a numeratore.

Per aggirare il dubbio si calcolavano talvolta due limiti di fatica distinti per flessione e per trazione-compressione, assumendo in via cautelativa il minore tra i due. Questa approssimazione è oggi sconsigliata dalla letteratura e dalle normative, che mantengono $sigma_(D-1)^C = C_S C_F sigma_(D-1)$ sul lato resistente e applicano ogni $K_f$ specifico alla rispettiva tensione nominale sul lato dei carichi.

== Difficoltà delle prove sperimentali multiassiali

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
      canvas(length: 1.05cm, {
        // BBox: x in [-0.35, 6.85] (dx=7.20), y in [-0.40, 4.70], length=1.05cm -> larghezza = 7.56 cm <= 8.2 cm
        import draw: line, rect, circle, bezier, content

        // Telaio fisso inferiore (orizzontale) + tratteggio d'incastro
        line((1.5, 0.0), (4.5, 0.0), stroke: 1.05pt)
        for hx in (1.7, 2.1, 2.5, 2.9, 3.3, 3.7, 4.1, 4.45) {
          line((hx, 0.0), (hx - 0.20, -0.22), stroke: 0.6pt)
        }
        content((4.62, -0.05), anchor: "west", text(size: 7pt, fill: luma(50))[Telaio di supporto])

        // Telaio fisso sinistro (verticale) + tratteggio d'incastro
        line((0.0, 1.65), (0.0, 4.25), stroke: 1.05pt)
        for hy in (1.85, 2.25, 2.65, 3.05, 3.45, 3.85, 4.20) {
          line((0.0, hy), (-0.22, hy - 0.20), stroke: 0.6pt)
        }

        // Collare di carico e sezione alare della pala
        rect((2.25, 2.55), (3.75, 3.65), radius: 0.08, fill: black.transparentize(90%), stroke: 0.9pt)
        bezier((2.46, 3.10), (3.60, 3.04), (2.72, 3.48), (3.22, 3.30), stroke: 1.05pt)
        bezier((2.46, 3.10), (3.60, 3.04), (2.72, 2.82), (3.22, 2.92), stroke: 1.05pt)
        circle((2.82, 3.12), radius: 0.11, fill: black.transparentize(75%), stroke: 0.65pt)

        // Spostamenti simultanei sui due piani ortogonali
        line((2.42, 4.02), (3.58, 4.02), mark: (start: ">", end: ">", scale: 0.50, fill: blue), stroke: (paint: blue, thickness: 0.85pt))
        content((3.00, 4.14), anchor: "south", text(size: 7.5pt, fill: blue)[$Delta x(t)$])

        line((4.10, 2.68), (4.10, 3.52), mark: (start: ">", end: ">", scale: 0.50, fill: red.transparentize(10%)), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
        content((4.22, 3.10), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%))[$Delta y(t)$])

        // Attuatore verticale Fy(t) + cerniere di disaccoppiamento
        line((2.80, 0.0), (3.00, 0.24), (3.20, 0.0), stroke: 0.8pt)
        line((3.00, 0.33), (3.00, 0.62), stroke: 0.95pt)
        rect((2.78, 0.62), (3.22, 1.56), fill: black.transparentize(86%), stroke: 0.95pt)
        line((2.81, 1.12), (3.19, 1.12), stroke: 1.1pt)
        line((3.00, 1.12), (3.00, 2.46), stroke: 0.95pt)
        // Traccia cinematica tratteggiata (rotazione libera senza flessione parassita)
        line((3.00, 0.24), (3.32, 2.52), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
        circle((3.00, 0.24), radius: 0.09, fill: white, stroke: 0.95pt)
        circle((3.00, 2.55), radius: 0.09, fill: white, stroke: 0.95pt)
        content((2.64, 1.10), anchor: "east", text(size: 7.5pt, fill: red.transparentize(10%))[$F_y (t)$])

        // Attuatore orizzontale Fx(t) + cerniere di disaccoppiamento
        line((0.0, 2.90), (0.24, 3.10), (0.0, 3.30), stroke: 0.8pt)
        line((0.33, 3.10), (0.60, 3.10), stroke: 0.95pt)
        rect((0.60, 2.88), (1.50, 3.32), fill: black.transparentize(86%), stroke: 0.95pt)
        line((1.05, 2.91), (1.05, 3.29), stroke: 1.1pt)
        line((1.05, 3.10), (2.16, 3.10), stroke: 0.95pt)
        line((0.24, 3.10), (2.22, 3.38), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
        circle((0.24, 3.10), radius: 0.09, fill: white, stroke: 0.95pt)
        circle((2.25, 3.10), radius: 0.09, fill: white, stroke: 0.95pt)
        content((1.05, 3.46), anchor: "south", text(size: 7.5pt, fill: blue)[$F_x (t)$])

        // Richiami esterni senza collisioni
        line((4.25, 4.12), (3.76, 3.63), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
        content((4.32, 4.18), anchor: "west", text(size: 7pt)[Sezione pala \ e collare])

        line((4.22, 1.58), (3.13, 2.48), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
        line((4.22, 1.32), (3.13, 0.30), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
        content((4.28, 1.45), anchor: "west", text(size: 7pt)[Cerniere di \ disaccoppiamento])
      }),
      caption: [Schema cinematico di prova biassiale su pala eolica con attuatori ortogonali e cerniere di disaccoppiamento.],
    )
  ],
)

#pagebreak()

#align(center)[
  #text(size: 16pt, weight: "bold")[Fatica ad ampiezza variabile]
]
#v(0.4em)

= Sollecitazioni ad ampiezza variabile e classificazione dei segnali

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
      canvas(length: 1.0cm, {
        // BBox: x in [-0.7, 7.3] (dx=8.0), y in [-0.85, 5.25], length=1.0cm -> larghezza = 8.0 cm <= 8.2 cm
        import draw: line, bezier, content

        // --- Pannello superiore: segnale irregolare periodico ---
        line((0, 2.95), (0, 5.15), stroke: 0.7pt, mark: (end: ">"))
        line((-0.1, 3.8), (6.6, 3.8), stroke: 0.7pt, mark: (end: ">"))
        content((-0.18, 5.05), text(size: 8pt)[$sigma$], anchor: "east")
        content((6.72, 3.8), text(size: 8pt)[$t$], anchor: "west")

        let wave = (
          (0.00, 0.15), (0.10, 0.55), (0.20, 0.75), (0.30, 0.25),
          (0.40, -0.40), (0.52, -0.05), (0.65, 0.45), (0.75, 0.05),
          (0.85, -0.65), (0.98, -0.15), (1.10, 0.55), (1.22, 0.20),
          (1.35, -0.25), (1.45, 0.35), (1.55, 0.85), (1.68, 0.10),
          (1.80, -0.75), (1.92, -0.20), (2.05, 0.35), (2.15, 0.05),
          (2.25, -0.35), (2.35, 0.15), (2.45, 0.50), (2.60, 0.15),
        )
        for x0 in (0.3, 2.9) {
          let pts = wave.map(p => (x0 + p.at(0), 3.8 + p.at(1)))
          line(..pts, stroke: (paint: black, thickness: 0.85pt))
        }
        let tail = wave.slice(0, 9).map(p => (5.5 + p.at(0), 3.8 + p.at(1)))
        line(..tail, stroke: (paint: black, thickness: 0.85pt))

        line((0.3, 3.05), (0.3, 5.05), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(35%)))
        line((2.9, 3.05), (2.9, 5.05), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(35%)))
        line((0.3, 4.92), (2.9, 4.92), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.6))
        content((1.6, 5.02), text(size: 7.5pt)[$T$], anchor: "south")

        // --- Pannello inferiore: scomposizione in tre pacchetti con ampiezza e media distinte ---
        line((0, -0.15), (0, 2.15), stroke: 0.7pt, mark: (end: ">"))
        line((-0.1, 0.0), (6.6, 0.0), stroke: 0.7pt, mark: (end: ">"))
        content((-0.18, 2.08), text(size: 8pt)[$sigma$], anchor: "east")
        content((6.72, 0.0), text(size: 8pt)[$t$], anchor: "west")

        let trains = (
          (0.20, 3, 0.28, 1.18, 0.66),
          (2.05, 4, 0.21, 0.88, 0.45),
          (3.90, 5, 0.17, 0.62, 0.27),
        )
        for tr in trains {
          let xs = tr.at(0)
          let nc = tr.at(1)
          let wh = tr.at(2)
          let ym = tr.at(3)
          let amp = tr.at(4)
          let xe = xs + 2 * nc * wh
          line((xs - 0.05, ym), (xe + 0.05, ym), stroke: (dash: "dashed", thickness: 0.65pt, paint: blue.transparentize(20%)))
          for i in range(nc) {
            let xa = xs + 2 * i * wh
            let xb = xa + wh
            let xc = xb + wh
            bezier((xa, ym), (xb, ym), (xa + 0.33 * wh, ym + 1.333 * amp), (xa + 0.67 * wh, ym + 1.333 * amp), stroke: (paint: black, thickness: 0.85pt))
            bezier((xb, ym), (xc, ym), (xb + 0.33 * wh, ym - 1.333 * amp), (xb + 0.67 * wh, ym - 1.333 * amp), stroke: (paint: black, thickness: 0.85pt))
          }
        }
        content((5.72, 0.62), text(size: 7.2pt, fill: blue)[$sigma_"mi"$], anchor: "west")

        line((1.96, -0.35), (1.96, 1.92), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(40%)))
        line((3.81, -0.35), (3.81, 1.92), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(40%)))

        line((0.20, -0.28), (1.88, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
        content((1.04, -0.40), text(size: 7pt)[$n_1, sigma_"a1", sigma_"m1"$], anchor: "north")

        line((2.05, -0.28), (3.73, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
        content((2.89, -0.40), text(size: 7pt)[$n_2, sigma_"a2", sigma_"m2"$], anchor: "north")

        line((3.90, -0.28), (5.60, -0.28), stroke: 0.55pt, mark: (start: ">", end: ">", scale: 0.55))
        content((4.75, -0.40), text(size: 7pt)[$n_3, sigma_"a3", sigma_"m3"$], anchor: "north")
      }),
      caption: [Segnale periodico irregolare di periodo $T$ e scomposizione in pacchetti sinusoidali $(n_i, sigma_"ai", sigma_"mi")$.],
    )
  ],
)
#v(0.4em)

La procedura si articola in due fasi: estrarre dal segnale periodico i blocchi elementari $(n_i, sigma_"ai", sigma_"mi")$ e cumularne gli effetti di danno rispetto alla resistenza del materiale. Si esamina dapprima il sottocaso a tensione media costante ($sigma_m = "cost"$, eventualmente nulla), per poi estendere il modello al caso generale con $sigma_a$ e $sigma_m$ entrambe variabili.

= Danneggiamento elementare e regola lineare di Palmgren-Miner

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
      canvas(length: 1.0cm, {
        // BBox: x in [-1.05, 6.95] (dx=8.0), y in [-0.65, 4.80], length=1.0cm -> larghezza = 8.0 cm <= 8.2 cm
        import draw: line, circle, content

        line((0, 0), (0, 4.65), stroke: 0.75pt, mark: (end: ">"))
        line((0, 0), (6.15, 0), stroke: 0.75pt, mark: (end: ">"))
        content((-0.15, 4.62), text(size: 8pt)[$sigma_a$], anchor: "east")
        content((6.25, 0.0), text(size: 8pt)[$N$], anchor: "west")

        for d in range(5) {
          let x0 = d * 1.1
          for m in (1, 2, 3, 5, 7) {
            let xg = x0 + 1.1 * calc.log(m, base: 10)
            if xg <= 5.52 {
              let p = if m == 1 { black.transparentize(65%) } else { black.transparentize(84%) }
              let w = if m == 1 { 0.45pt } else { 0.35pt }
              line((xg, 0), (xg, 4.2), stroke: (paint: p, thickness: w))
            }
          }
        }
        line((5.5, 0), (5.5, 4.2), stroke: (paint: black.transparentize(65%), thickness: 0.45pt))

        for s in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10) {
          let yg = 4.2 * calc.log(s, base: 10)
          let p = if s == 1 or s == 10 { black.transparentize(65%) } else { black.transparentize(82%) }
          let w = if s == 1 or s == 10 { 0.45pt } else { 0.35pt }
          line((0, yg), (5.5, yg), stroke: (paint: p, thickness: w))
        }

        content((-0.12, 4.20), text(size: 7pt)[1000], anchor: "east")
        content((-0.12, 0.00), text(size: 7pt)[100], anchor: "east")
        for d in range(5) {
          let xd = d * 1.1
          let exp = d + 2
          content((xd, -0.18), text(size: 7pt)[$10^#exp$], anchor: "north")
        }

        let x-ng = 4.731
        let y-d = 1.438
        line((1.1, 4.2), (x-ng, y-d), (5.65, y-d), stroke: (paint: black, thickness: 1.15pt))
        line((0, y-d), (x-ng, y-d), stroke: (dash: "dashed", thickness: 0.6pt, paint: black.transparentize(35%)))
        content((-0.12, y-d), text(size: 7pt)[$sigma_D$], anchor: "east")
        content((3.75, 3.55), text(size: 7.5pt)[$sigma_m = "cost"$], anchor: "west")
        line((3.72, 3.45), (3.21, 2.65), stroke: (thickness: 0.55pt, paint: black.transparentize(25%)), mark: (end: ">", scale: 0.5))

        // Livello sigma_a2
        let y2 = 2.945
        let xn2-mis = 0.55
        let xn2-rot = 2.75
        line((0, y2), (xn2-rot, y2), stroke: (dash: "dotted", thickness: 0.7pt, paint: black.transparentize(20%)))
        line((xn2-mis, y2), (xn2-mis, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(15%)))
        line((xn2-rot, y2), (xn2-rot, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: blue.transparentize(15%)))
        circle((xn2-mis, y2), radius: 0.08, fill: red.transparentize(10%), stroke: none)
        circle((xn2-rot, y2), radius: 0.08, fill: blue, stroke: none)
        content((-0.12, y2), text(size: 7pt)[$sigma_"a2"$], anchor: "east")
        content((xn2-mis, -0.18), text(size: 7pt, fill: red.transparentize(10%))[$n_2$], anchor: "north")
        content((xn2-rot, -0.18), text(size: 7pt, fill: blue)[$N_2$], anchor: "north")

        // Livello sigma_a1
        let y1 = 2.108
        let xn1-mis = 1.65
        let xn1-rot = 3.85
        line((0, y1), (xn1-rot, y1), stroke: (dash: "dotted", thickness: 0.7pt, paint: black.transparentize(20%)))
        line((xn1-mis, y1), (xn1-mis, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(15%)))
        line((xn1-rot, y1), (xn1-rot, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: blue.transparentize(15%)))
        circle((xn1-mis, y1), radius: 0.08, fill: red.transparentize(10%), stroke: none)
        circle((xn1-rot, y1), radius: 0.08, fill: blue, stroke: none)
        content((-0.12, y1), text(size: 7pt)[$sigma_"a1"$], anchor: "east")
        content((xn1-mis, -0.18), text(size: 7pt, fill: red.transparentize(10%))[$n_1$], anchor: "north")
        content((xn1-rot, -0.18), text(size: 7pt, fill: blue)[$N_1$], anchor: "north")

        // Livello sotto sigma_D
        let y3 = 0.65
        line((0, y3), (5.55, y3), stroke: (dash: "dashed", thickness: 0.75pt, paint: black.transparentize(20%)), mark: (end: ">", scale: 0.6))
        content((-0.12, y3), text(size: 7pt)[$sigma_"a3"$], anchor: "east")
        content((5.62, y3), text(size: 7pt)[$N -> infinity$], anchor: "west")
      }),
      caption: [Confronto tra cicli di missione $n_i$ e durata a rottura $N_i$ sulla curva #box[$S$–$N$] a $sigma_m = "cost"$.],
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

== Cicli sotto il limite di fatica ed effetto della sequenza di carico

Nella regola di Palmgren-Miner classica sono *efficaci* i soli blocchi con ampiezza pari o superiore al limite di fatica ($sigma_"ai" >= sigma_D$). Per livelli sotto l'asintoto orizzontale ($sigma_"ai" < sigma_D$), la vita teorica diverge e il contributo alla sommatoria si annulla:

$ sigma_"ai" < sigma_D ==> N_i -> infinity ==> D_i = frac(n_i, infinity) = 0 $

Poiché l'addizione è commutativa, il modello lineare trascura inoltre l'*ordine di applicazione* dei carichi. Nella realtà fisica la sequenza incide: se cicli severi ($sigma_"ai" > sigma_D$) agiscono per primi e innescano una microcricca, la soglia di avanzamento si abbassa e anche i successivi cicli sotto l'asintoto ($sigma_"ai" < sigma_D$) contribuiscono in piccola parte a propagarla. Mentre metodi di calcolo più raffinati includono il danno delle ampiezze sotto $sigma_D$, nella verifica ordinaria tale scarto viene assorbito dal margine di sicurezza imposto su $D$.

= Durata totale e tensione alternata equivalente ($sigma_m$ costante)

In sede di progetto il numero assoluto di cicli $n_i$ per ciascun regime non è noto a priori. Le specifiche di missione forniscono invece la ripartizione percentuale dell'esercizio: per un autoveicolo, ad esempio, le quote trascorse su percorso urbano (50%), autostradale (20%), collinare (10%) e montano (20%).

Ogni livello di carico si esprime allora come frazione $alpha_i = n_i slash N_"TOT"$ della durata totale incognita $N_"TOT"$ (espressa in cicli), con $0 < alpha_i < 1$ e $sum alpha_i = 1$:

$ n_i = alpha_i dot N_"TOT" quad (alpha_i < 1, quad sum alpha_i = 1) $

Sostituendo nella condizione limite di Palmgren-Miner ($D = 1$) si isola $N_"TOT"$, utilizzabile sia in *verifica* (calcolare la durata disponibile note le $alpha_i$), sia in *progetto* (fissare una vita di targa $N_"TOT"$ per dimensionare la sezione resistente):

$ sum frac(n_i, N_i) = 1 arrow.r.double N_"TOT" sum frac(alpha_i, N_i) = 1 arrow.r.double N_"TOT" = frac(1, sum frac(alpha_i, N_i)) $

== Derivazione tramite legge di Basquin e tensione equivalente

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
      canvas(length: 0.94cm, {
        // BBox: x in [-1.2, 7.3] (dx=8.5), y in [-0.6, 4.9], length=0.94cm -> larghezza = 7.99 cm <= 8.2 cm
        import draw: *

        // Griglia bilogaritmica di sfondo
        for gx in (0.2, 1.4, 2.6, 3.8, 5.0, 6.2) {
          line((gx, 0), (gx, 4.55), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
        }
        for gy in (0.8, 1.6, 2.4, 3.2, 4.0) {
          line((0, gy), (6.65, gy), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
        }

        // Assi principali
        line((0, 0), (0, 4.7), stroke: 0.9pt, mark: (end: ">"))
        line((0, 0), (6.95, 0), stroke: 0.9pt, mark: (end: ">"))
        content((-0.18, 4.65), anchor: "east", text(size: 8.5pt)[$sigma_a$])
        content((6.95, -0.18), anchor: "north", text(size: 8.5pt)[$N$])
        content((0.2, -0.18), anchor: "north", text(size: 7.5pt)[$10^2$])

        // Curva di Wohler (Basquin + asintoto)
        line((0.4, 4.4), (5.6, 1.3), stroke: 1.2pt)
        line((5.6, 1.3), (6.65, 1.3), stroke: 1.2pt)
        circle((5.6, 1.3), radius: 0.07, fill: black)
        content((4.45, 2.95), anchor: "west", text(size: 7.5pt)[$sigma_m = "cost"$])
        line((4.40, 2.88), (3.86, 2.38), stroke: (thickness: 0.55pt, paint: black.transparentize(25%)), mark: (end: ">", scale: 0.5))
        content((5.75, 1.50), anchor: "south-west", text(size: 7pt)[Ginocchio])

        // Proiezioni del ginocchio (sigma_D, N_G)
        line((0, 1.3), (5.6, 1.3), stroke: (dash: "dotted", thickness: 0.65pt))
        line((5.6, 1.3), (5.6, 0), stroke: (dash: "dotted", thickness: 0.65pt))
        content((-0.15, 1.3), anchor: "east", text(size: 8pt)[$sigma_D$])
        content((5.6, -0.18), anchor: "north", text(size: 8pt)[$N_G$])

        // Generico livello (sigma_ai, n_i, N_i)
        line((0, 1.956), (4.5, 1.956), stroke: (dash: "dotted", thickness: 0.7pt))
        line((4.5, 1.956), (4.5, 0), stroke: (dash: "dotted", thickness: 0.7pt))
        line((1.4, 1.956), (1.4, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(10%)))
        circle((4.5, 1.956), radius: 0.07, fill: black)
        circle((1.4, 1.956), radius: 0.085, fill: red.transparentize(10%), stroke: none)
        content((-0.15, 1.956), anchor: "east", text(size: 8pt)[$sigma_"ai"$])
        content((1.4, -0.18), anchor: "north", text(size: 8pt, fill: red.transparentize(10%))[$n_i$])
        content((4.5, -0.18), anchor: "north", text(size: 8pt)[$N_i$])

        // Punto equivalente (sigma_a,eq, N_TOT)
        line((0, 2.731), (3.2, 2.731), stroke: (dash: "dotted", thickness: 0.85pt, paint: blue))
        line((3.2, 2.731), (3.2, 0), stroke: (dash: "dotted", thickness: 0.85pt, paint: blue))
        circle((3.2, 2.731), radius: 0.09, fill: blue, stroke: none)
        content((-0.15, 2.731), anchor: "east", text(size: 8pt, fill: blue)[$sigma_"a,eq"$])
        content((3.2, -0.18), anchor: "north", text(size: 8pt, fill: blue)[$N_"TOT"$])
      }),
      caption: [Individuazione grafica di $(sigma_"a,eq", N_"TOT")$ sulla curva #box[$S$–$N$] a $sigma_m = "cost"$.],
    )
  ],
)

= Cumulativo di sollecitazione ed estensione a $sigma_m$ variabile

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
      canvas(length: 0.94cm, {
        // BBox: x in [-1.25, 7.25] (dx=8.5), y in [-0.75, 4.55], length=0.94cm -> larghezza = 7.99 cm <= 8.2 cm
        import draw: *

        // Assi
        line((0, 0), (0, 4.4), stroke: 0.9pt, mark: (end: ">"))
        line((0, 0), (6.7, 0), stroke: 0.9pt, mark: (end: ">"))
        content((-0.18, 4.28), anchor: "east", text(size: 8.5pt)[$sigma_a$])
        content((-0.18, 3.80), anchor: "east", text(size: 7pt)[$(Delta sigma)$])
        content((6.75, -0.18), anchor: "north", text(size: 8.5pt)[$N$])

        // Istogramma a gradini decrescenti (n1..n6) con quote ampiezza blocco n_i
        let blocks = (
          (0.00, 1.02, 3.70, [$n_1$]),
          (1.02, 1.95, 3.18, [$n_2$]),
          (1.95, 2.83, 2.66, [$n_3$]),
          (2.83, 3.67, 2.15, [$n_4$]),
          (3.67, 4.48, 1.65, [$n_5$]),
          (4.48, 5.25, 1.15, [$n_6$]),
        )
        line((0, 0), (0, -0.45), stroke: 0.5pt)
        for (x0, x1, h, lbl) in blocks {
          rect((x0, 0), (x1, h), fill: black.transparentize(90%), stroke: 0.85pt)
          line((x1, 0), (x1, -0.45), stroke: 0.5pt)
          line((x0 + 0.04, -0.22), (x1 - 0.04, -0.22), stroke: 0.5pt, mark: (start: ">", end: ">", scale: 0.38))
          content(((x0 + x1) / 2, -0.32), anchor: "north", text(size: 7.2pt)[#lbl])
        }

        // Inviluppo continuo approssimante, troncamento a sigma_D e coda scartata
        bezier((0, 3.88), (5.25, 1.15), (1.75, 3.42), (4.10, 2.02), stroke: (paint: blue, thickness: 1.2pt))
        line((5.25, 1.15), (5.25, 0), stroke: (paint: blue, thickness: 1.2pt))
        bezier((5.25, 1.15), (6.30, 0.52), (5.60, 0.94), (5.95, 0.72), stroke: (paint: black.transparentize(50%), dash: "dotted", thickness: 0.75pt))

        // Linea del limite di fatica sigma_D
        line((0, 1.15), (6.35, 1.15), stroke: (dash: "dashed", thickness: 0.7pt, paint: red.transparentize(10%)))
        content((-0.15, 1.15), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_D$])

        // Etichette di richiamo senza sovrapposizioni
        content((3.35, 3.52), anchor: "west", text(size: 7.5pt, fill: blue)[Inviluppo continuo])
        line((3.28, 3.45), (2.62, 2.82), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", scale: 0.5))
        content((5.42, 1.92), anchor: "west", text(size: 7pt, fill: blue)[Troncamento\ a $sigma_D$])
        line((5.58, 1.56), (5.28, 1.20), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", scale: 0.5))
      }),
      caption: [Diagramma delle eccedenze con passi $n_i$ e curva continua troncata a $sigma_D$.],
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
  caption: [Tabella dello spettro di missione a tensione media costante ($sigma_D = sigma_"D-1"$ se $sigma_m = 0$).],
) <tab:spettro-cost>

== Caso generale con $sigma_m$ e $sigma_a$ entrambe variabili

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
      image("images/ECM01-9_cumulativo_3d.png", width: 92%),
      caption: [Cumulativo di sollecitazione tridimensionale $log(N)$ al variare di $sigma_a$ e $sigma_m$.],
    ) <fig:cumulativo-3d>
  ],
)

#v(0.4em)

#figure(
  canvas(length: 0.94cm, {
    // BBox: x in [-1.35, 15.35] (dx=16.7), y in [-0.65, 5.15], length=0.94cm -> larghezza = 15.70 cm <= 17.0 cm
    import draw: *

    // --- Pannello sinistro: Diagramma di Haigh ---
    content((2.9, 4.95), anchor: "center", text(size: 8.5pt, weight: "bold")[Diagramma di Haigh])
    line((0, 0), (0, 4.65), stroke: 0.9pt, mark: (end: ">"))
    line((0, 0), (6.15, 0), stroke: 0.9pt, mark: (end: ">"))
    content((-0.18, 4.55), anchor: "east", text(size: 8.5pt)[$sigma_a$])
    content((6.25, 0.0), anchor: "west", text(size: 8.5pt)[$sigma_m$])

    // Retta limite di Goodman da sigma_D-1 (2.85) a R_m (5.70)
    line((0, 2.85), (5.70, 0), stroke: 1.1pt)
    content((-0.15, 2.85), anchor: "east", text(size: 8pt)[$sigma_"D-1"$])
    content((5.70, -0.18), anchor: "north", text(size: 8pt)[$R_m$])

    // Lettura di sigma_D,i (1.95) in corrispondenza di sigma_m,i (1.80)
    line((1.80, 0), (1.80, 1.95), stroke: (dash: "dotted", thickness: 0.75pt, paint: red.transparentize(10%)))
    line((1.80, 1.95), (0, 1.95), stroke: (dash: "dotted", thickness: 0.75pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.6))
    circle((1.80, 1.95), radius: 0.065, fill: red.transparentize(10%), stroke: none)
    content((1.80, -0.18), anchor: "north", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"m,i"$])
    content((-0.15, 1.95), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"D,i"$])

    // Punto di lavoro (sigma_m,i, sigma_ai) = (1.80, 2.40) e riduzione a sigma_m = 0 -> sigma_a,eq,0 = 3.508
    line((5.70, 0), (1.80, 2.40), stroke: (dash: "dashed", thickness: 0.6pt, paint: blue.transparentize(35%)))
    line((1.80, 2.40), (0, 3.508), stroke: (dash: "dashed", thickness: 0.85pt, paint: blue), mark: (end: ">", scale: 0.6))
    line((1.80, 1.95), (1.80, 2.40), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
    circle((1.80, 2.40), radius: 0.075, fill: blue, stroke: none)
    circle((0, 3.508), radius: 0.065, fill: blue, stroke: none)
    content((-0.15, 3.508), anchor: "east", text(size: 8pt, fill: blue)[$sigma_"a,eq,0"$])
    content((1.98, 2.48), anchor: "south-west", text(size: 7.2pt, fill: blue)[$(sigma_"m,i", sigma_"ai")$])
    content((1.05, 3.48), anchor: "west", text(size: 7pt, fill: blue)[Riduzione a $sigma_m = 0$])

    // --- Freccia di raccordo Haigh -> Wohler ---
    line((6.25, 1.95), (7.42, 1.95), stroke: (paint: red.transparentize(10%), thickness: 1.25pt), mark: (end: ">", scale: 0.78))
    content((6.84, 2.18), anchor: "south", text(size: 7.2pt, fill: red.transparentize(10%))[Raccordo $sigma_"D,i"$])

    // --- Pannello destro: Famiglia di curve S-N ---
    content((11.75, 4.95), anchor: "center", text(size: 8.5pt, weight: "bold")[Famiglia di curve #box[$S$–$N$]])
    for gx in (9.9, 11.268, 12.2, 13.2, 14.3) {
      line((gx, 0), (gx, 4.45), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
    }
    for gy in (0.95, 1.95, 2.85, 3.95) {
      line((8.5, gy), (14.8, gy), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
    }

    line((8.5, 0), (8.5, 4.65), stroke: 0.9pt, mark: (end: ">"))
    line((8.5, 0), (15.05, 0), stroke: 0.9pt, mark: (end: ">"))
    content((8.35, 4.55), anchor: "east", text(size: 8.5pt)[$sigma_a$])
    content((15.10, -0.18), anchor: "north", text(size: 8.5pt)[$N$])
    content((8.80, -0.18), anchor: "north", text(size: 7.5pt)[$10^2$])
    content((10.05, -0.18), anchor: "north", text(size: 7.5pt)[$10^4$])
    content((13.2, -0.18), anchor: "north", text(size: 8pt)[$N_G$])

    // Curva sigma_m = 0 (ginocchio a 2.85)
    line((8.8, 4.35), (13.2, 2.85), stroke: (paint: black.transparentize(20%), thickness: 0.95pt))
    line((13.2, 2.85), (14.8, 2.85), stroke: (paint: black.transparentize(20%), thickness: 0.95pt))
    content((8.35, 2.85), anchor: "east", text(size: 7.5pt)[$sigma_"D-1"$])
    content((13.35, 3.00), anchor: "south-west", text(size: 7.5pt)[$sigma_m = 0$])

    // Curva sigma_m = sigma_m,i (ginocchio a 1.95)
    line((8.8, 2.976), (13.2, 1.95), stroke: 1.2pt)
    line((13.2, 1.95), (14.8, 1.95), stroke: 1.2pt)
    line((8.5, 1.95), (13.10, 1.95), stroke: (dash: "dashed", thickness: 0.8pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.62))
    circle((13.2, 1.95), radius: 0.075, fill: red.transparentize(10%), stroke: none)
    content((8.35, 1.95), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"D,i"$])
    content((13.35, 2.10), anchor: "south-west", text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_m = sigma_"m,i"$])

    // Lettura concorde di N_i (x = 11.268) dalle due procedure
    let xni = 11.268
    line((8.5, 2.40), (xni, 2.40), stroke: (dash: "dotted", thickness: 0.7pt))
    line((8.5, 3.508), (xni, 3.508), stroke: (dash: "dashed", thickness: 0.75pt, paint: blue))
    line((xni, 3.508), (xni, 0), stroke: (dash: "dotted", thickness: 0.75pt, paint: blue))
    circle((xni, 2.40), radius: 0.068, fill: black, stroke: none)
    circle((xni, 3.508), radius: 0.072, fill: blue, stroke: none)
    content((8.35, 2.40), anchor: "east", text(size: 7.5pt)[$sigma_"ai"$])
    content((8.35, 3.508), anchor: "east", text(size: 7.5pt, fill: blue)[$sigma_"a,eq,0"$])
    content((xni, -0.18), anchor: "north", text(size: 8pt, fill: blue)[$N_i$])

    // Curva sigma_m > sigma_m,i
    line((8.8, 2.15), (13.2, 0.95), stroke: (paint: black.transparentize(45%), thickness: 0.85pt))
    line((13.2, 0.95), (14.8, 0.95), stroke: (paint: black.transparentize(45%), thickness: 0.85pt))
    content((13.35, 0.78), anchor: "north-west", text(size: 7.5pt, fill: black.transparentize(35%))[$sigma_m > sigma_"m,i"$])

    // Proiezione verticale al ginocchio N_G
    line((13.2, 2.85), (13.2, 0), stroke: (dash: "dotted", thickness: 0.6pt))
  }),
  caption: [Raccordo tra diagramma di Haigh e famiglia di curve #box[$S$–$N$]: equivalenza sulla durata $N_i$ tra lettura multi-curva a $sigma_"D,i"$ e riduzione a $sigma_m = 0$ ($sigma_"a,eq,0"$).],
) <fig:haigh-wohler>

Operativamente la durata $N_"TOT"$ si calcola seguendo una di due procedure normative equivalenti (@fig:haigh-wohler), illustrabili analiticamente adottando ad esempio la retta di Goodman per $sigma_"mi" > 0$:

$ sigma_"D,i" = sigma_"D-1" (1 - frac(sigma_"mi", R_m)) , quad sigma_"a,eq,0" = frac(sigma_"ai", 1 - sigma_"mi" slash R_m) $

- *Procedura multi-curva (Haigh $arrow.r$ #box[$S$–$N$]).* Per ogni $sigma_"mi"$ si legge su Haigh il limite $sigma_"D,i"$, si traccia la relativa curva #box[$S$–$N$] di costanti $(B_i, k_i)$, si ricava $N_i (sigma_"mi")$ a livello $sigma_"ai"$ e si applica Palmgren-Miner; esige cautela per non abbinare carichi e curve di media diversa.
- *Riduzione a tensione media nulla ($sigma_m = 0$).* Adottata dalla direttiva FKM e dalle norme USA, proietta su Haigh ogni stato $(sigma_"mi", sigma_"ai")$ sull'asse $sigma_m = 0$, riconducendo l'intera lista all'unica curva di Wöhler in $sigma_"D-1"$ tramite le ampiezze equivalenti $sigma_"a,eq,0"$; sposta il rischio d'errore sulla proiezione in Haigh.

= Conteggio dei cicli (*cycle counting*) e metodo *Rainflow*

Per ricondurre una storia di tensione irregolare ma periodica $sigma(t)$ alla lista discreta di blocchi sinusoidali $(n_i, sigma_"ai", sigma_"mi")$ richiesta dalle verifiche precedenti, le normative impiegano gli algoritmi di *conteggio dei cicli* (*cycle counting*) applicati alla sequenza di picchi e valli registrata in un periodo $T$.

== Preparazione della finestra «periodico tra max»

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
      canvas(length: 1.0cm, {
        // BBox: x in [-0.65, 7.35] (dx=8.0), y in [0.10, 4.30], length=1.0cm -> larghezza = 8.00 cm <= 8.2 cm
        import draw: line, rect, circle, content

        let period-pts = (
          (0.35, 0.55), (0.75, -0.25), (1.10, 0.25), (1.45, -0.55),
          (1.80, 1.00), (2.15, -0.35), (2.50, 0.45), (2.90, -0.85),
          (3.35, 0.55), (3.75, -0.25), (4.10, 0.25), (4.45, -0.55),
          (4.80, 1.00), (5.15, -0.35), (5.50, 0.45), (5.90, -0.85),
          (6.35, 0.55), (6.75, -0.25),
        )
        let amp = 0.62

        // --- Pannello superiore: finestra periodica generica ---
        let y-top = 3.05
        rect((0.95, y-top - 0.62), (3.95, y-top + 0.72), fill: black.transparentize(92%), stroke: none)
        line((0.0, y-top), (7.00, y-top), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
        line((0.0, y-top - 0.72), (0.0, y-top + 0.85), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
        content((-0.12, y-top + 0.83), anchor: "east", text(size: 7.5pt)[$sigma$])
        content((7.08, y-top), anchor: "west", text(size: 7.5pt)[$t$])

        let top-pts = period-pts.map(p => (p.at(0), y-top + amp * p.at(1)))
        line(..top-pts, stroke: (paint: black, thickness: 0.95pt))

        line((0.95, y-top - 0.65), (0.95, y-top + 0.82), stroke: (paint: luma(90), thickness: 0.75pt, dash: "dashed"))
        line((3.95, y-top - 0.65), (3.95, y-top + 0.82), stroke: (paint: luma(90), thickness: 0.75pt, dash: "dashed"))
        line((0.95, y-top + 0.86), (3.95, y-top + 0.86), mark: (start: ">", end: ">", scale: 0.45), stroke: 0.65pt)
        content((2.45, y-top + 0.94), anchor: "south", text(size: 7.2pt)[Finestra generica ($T$)])

        // --- Pannello inferiore: finestra traslata "periodico tra max" ---
        let y-bot = 0.90
        let y-max = y-bot + amp * 1.00
        rect((1.80, y-bot - 0.62), (4.80, y-max), fill: rgb("#1f77b4").transparentize(86%), stroke: none)
        line((0.0, y-bot), (7.00, y-bot), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
        line((0.0, y-bot - 0.72), (0.0, y-bot + 0.85), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
        content((-0.12, y-bot + 0.83), anchor: "east", text(size: 7.5pt)[$sigma$])
        content((7.08, y-bot), anchor: "west", text(size: 7.5pt)[$t$])

        let bot-pts = period-pts.map(p => (p.at(0), y-bot + amp * p.at(1)))
        line(..bot-pts, stroke: (paint: black, thickness: 0.95pt))

        line((1.80, y-max), (4.80, y-max), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))
        line((1.80, y-bot - 0.65), (1.80, y-max + 0.16), stroke: (paint: rgb("#1f77b4"), thickness: 1.2pt))
        line((4.80, y-bot - 0.65), (4.80, y-max + 0.16), stroke: (paint: rgb("#1f77b4"), thickness: 1.2pt))
        circle((1.80, y-max), radius: 0.055, fill: rgb("#1f77b4"), stroke: none)
        circle((4.80, y-max), radius: 0.055, fill: rgb("#1f77b4"), stroke: none)

        content((1.66, y-max + 0.04), anchor: "east", text(size: 7.2pt, fill: rgb("#1f77b4"))[$sigma_"max"$])
        content((4.94, y-max + 0.04), anchor: "west", text(size: 7.2pt, fill: rgb("#1f77b4"))[$sigma_"max"$])
        line((1.80, y-max + 0.22), (4.80, y-max + 0.22), mark: (start: ">", end: ">", scale: 0.45), stroke: (paint: rgb("#1f77b4"), thickness: 0.75pt))
        content((3.30, y-max + 0.30), anchor: "south", text(size: 7.2pt, fill: rgb("#1f77b4"), weight: "bold")[Periodico tra max ($T$)])
      }),
      caption: [Traslazione della finestra periodica $T$ tra due massimi assoluti consecutivi $sigma_"max"$.],
    ) <fig:finestra-max>
  ],
)

== Algoritmo idrologico del serbatoio (*rainflow*)

Il criterio più accreditato nelle normative è il metodo *rainflow* («flusso di pioggia»), tradotto nella letteratura italiana nella variante equivalente del *metodo del serbatoio*. La spezzata cresta-valle racchiusa tra i due estremi $sigma_"max"$ è assimilata al profilo di un bacino montano inizialmente colmo d'acqua fino alla quota massima.

Immaginando di aprire una valvola sul fondo di una valle, l'acqua drena verso il basso: lo svuotamento individua un ciclo chiuso la cui tensione massima $sigma_"max,i"$ coincide con la quota del pelo libero iniziale prima dell'apertura e la cui tensione minima $sigma_"min,i"$ coincide con il fondo della valvola. Abbassandosi il livello principale, la geometria delle creste intermedie trattiene sacche d'acqua isolate a quote differenti.

Aprendo in sequenza una valvola sul fondo di ciascuna sacca residua si estraggono tutti i cicli secondari fino al completo prosciugamento del bacino. Rispetto ai metodi grafici basati sul tracciamento manuale di inviluppi armonici tra massimi e minimi — soggetti al rischio di omettere cicli interni — il serbatoio garantisce un controllo di completezza immediato: finché resta acqua in una valle, resta un ciclo da contabilizzare.

L'ordine di svuotamento (dalla valle più profonda a quelle minori oppure da sinistra verso destra, aggiornando coerentemente i peli liberi adiacenti) non altera la lista finale dei cicli. Per ogni salto estratto $(sigma_"min,i", sigma_"max,i")$ si calcolano escursione, ampiezza alternata e tensione media:

$ Delta sigma_i = sigma_"max,i" - sigma_"min,i", quad sigma_"ai" = (sigma_"max,i" - sigma_"min,i") / 2, quad sigma_"mi" = (sigma_"max,i" + sigma_"min,i") / 2 $

== Esempio guidato su griglia MPa e costruzione dell'accumulata

Si applichi il metodo del serbatoio alla sequenza di estremi $300 -> 0 -> 200 -> -200 -> 200 -> -150 -> 100 -> 0 -> 100 -> -100 -> 300" MPa"$, delimitata dalle due sponde a $300" MPa"$ (@fig:serbatoio e @tab:conteggi):

- *Ciclo 1 (scarico principale).* A serbatoio colmo ($300" MPa"$), l'apertura della valvola più profonda a $-200" MPa"$ estrae il ciclo maggiore ($Delta sigma_1 = 500" MPa"$); le due creste a $200" MPa"$ arginano due bacini laterali a tale quota.
- *Ciclo 2 (sacca sinistra).* La valvola a $0" MPa"$ prosciuga l'invaso compreso tra la sponda sinistra e la prima cresta a $200" MPa"$ ($Delta sigma_2 = 200" MPa"$).
- *Ciclo 3 (valle secondaria destra).* Nel bacino destro a pelo libero $200" MPa"$, la valvola a $-150" MPa"$ scarica un salto $Delta sigma_3 = 350" MPa"$, lasciando due sottosacche arginate dalle creste a $100" MPa"$.
- *Cicli 4 e 5 (sottolivelli residui).* Le ultime due valvole svuotano le sacche residue da $100" MPa"$ rispettivamente fino a $0" MPa"$ ($Delta sigma_4 = 100" MPa"$) e fino a $-100" MPa"$ ($Delta sigma_5 = 200" MPa"$), lasciando il profilo completamente asciutto.

#figure(
  canvas(length: 0.58cm, {
    // BBox: x in [-1.6, 26.8] (dx=28.4), y in [-3.8, 5.5], length=0.58cm -> larghezza = 16.47 cm <= 17.0 cm
    import draw: line, circle, content

    let ym(v) = v / 100.0 * 1.35
    let raw-pts = (
      (0, 300), (1, 0), (2, 200), (3, -200), (4, 200),
      (5, -150), (6, 100), (7, 0), (8, 100), (9, -100), (10, 300),
    )

    // --- Helper di griglia per un pannello ---
    let draw-grid(x0) = {
      for v in (-200, -150, -100, -50, 0, 50, 100, 150, 200, 250, 300) {
        let yy = ym(v)
        let is-major = calc.rem(v, 100) == 0
        if is-major {
          let p-col = if v == 0 { luma(165) } else { luma(215) }
          line((x0, yy), (x0 + 10, yy), stroke: (paint: p-col, thickness: 0.45pt))
          content((x0 - 0.18, yy), anchor: "east", text(size: 7pt)[#v])
        } else {
          line((x0, yy), (x0 + 10, yy), stroke: (paint: luma(230), thickness: 0.35pt, dash: "dotted"))
        }
      }
      for gx in range(1, 11) {
        line((x0 + gx, ym(-200)), (x0 + gx, ym(300)), stroke: (paint: luma(222), thickness: 0.35pt, dash: "dotted"))
      }
      line((x0, ym(-200)), (x0, ym(348)), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
      line((x0, ym(-200)), (x0 + 10.25, ym(-200)), mark: (end: ">", scale: 0.5), stroke: 0.65pt)
      content((x0 - 0.15, ym(352)), anchor: "east", text(size: 7pt)[$sigma$ (MPa)])
      content((x0 + 10.05, ym(-212)), anchor: "north", text(size: 7pt)[$t$])
    }

    // --- Pannello (a): Bacino colmo (300 MPa) e ciclo 1 ---
    draw-grid(0)
    let pts-a = raw-pts.map(p => (p.at(0), ym(p.at(1))))
    line(..pts-a, close: true, fill: rgb("#1f77b4").transparentize(84%), stroke: none)
    line((0, ym(300)), (10, ym(300)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt, dash: "dashed"))
    line(..pts-a, stroke: (paint: black, thickness: 1.05pt))

    // Valvola 1
    circle((3, ym(-200)), radius: 0.095, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
    line((3, ym(-200) - 0.10), (3, ym(-258)), mark: (end: ">", scale: 0.5), stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
    content((3, ym(-266)), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[Ciclo 1])

    // Quota Delta sigma_1
    line((3, ym(-200)), (10.75, ym(-200)), stroke: (paint: luma(120), thickness: 0.5pt, dash: "dotted"))
    line((10, ym(300)), (10.75, ym(300)), stroke: (paint: luma(120), thickness: 0.5pt, dash: "dotted"))
    line((10.62, ym(-200)), (10.62, ym(300)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5), stroke: 0.65pt)
    content((10.78, ym(55)), anchor: "west", text(size: 7pt)[$Delta sigma_1$ \ 500])

    content((5.0, ym(368)), anchor: "south", text(size: 7.5pt, weight: "bold")[(a) Bacino colmo e scarico principale])

    // --- Pannello (b): Svuotamento delle sacche residue (cicli 2-5) ---
    let xb = 13.8
    draw-grid(xb)

    // Sacca 2 (200 -> 0)
    line((xb + 0.333, ym(200)), (xb + 1, ym(0)), (xb + 2, ym(200)), close: true, fill: rgb("#1f77b4").transparentize(78%), stroke: none)
    line((xb + 0.333, ym(200)), (xb + 2, ym(200)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))

    // Sacca 3 (200 -> -150)
    line((xb + 4, ym(200)), (xb + 5, ym(-150)), (xb + 6, ym(100)), (xb + 7, ym(0)), (xb + 8, ym(100)), (xb + 9, ym(-100)), (xb + 9.75, ym(200)), close: true, fill: rgb("#1f77b4").transparentize(89%), stroke: none)
    line((xb + 4, ym(200)), (xb + 9.75, ym(200)), stroke: (paint: rgb("#1f77b4"), thickness: 0.8pt, dash: "dashed"))

    // Sacca 4 (100 -> 0) e Sacca 5 (100 -> -100)
    line((xb + 6, ym(100)), (xb + 7, ym(0)), (xb + 8, ym(100)), close: true, fill: rgb("#1f77b4").transparentize(66%), stroke: none)
    line((xb + 6, ym(100)), (xb + 8, ym(100)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))
    line((xb + 8, ym(100)), (xb + 9, ym(-100)), (xb + 9.5, ym(100)), close: true, fill: rgb("#1f77b4").transparentize(66%), stroke: none)
    line((xb + 8, ym(100)), (xb + 9.5, ym(100)), stroke: (paint: rgb("#1f77b4"), thickness: 0.85pt))

    // Profilo spezzato
    let pts-b = raw-pts.map(p => (xb + p.at(0), ym(p.at(1))))
    line(..pts-b, stroke: (paint: black, thickness: 1.05pt))

    // Valvole 2..5 (con valvola 3 portata sotto quota -200 per zero collisioni)
    for vpair in ((1, 0, "Ciclo 2"), (5, -150, "Ciclo 3"), (7, 0, "Ciclo 4"), (9, -100, "Ciclo 5")) {
      let vx = xb + vpair.at(0)
      let vy = ym(vpair.at(1))
      let lbl = vpair.at(2)
      circle((vx, vy), radius: 0.09, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
      if lbl == "Ciclo 3" {
        line((vx, vy - 0.10), (vx, ym(-258)), mark: (end: ">", scale: 0.5), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
        content((vx, ym(-266)), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[#lbl])
      } else {
        line((vx, vy - 0.10), (vx, vy - 0.68), mark: (end: ">", scale: 0.48), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
        content((vx, vy - 0.74), anchor: "north", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[#lbl])
      }
    }

    // Quota Delta sigma_2 (0..200) centrata sulla sacca 2 senza toccare i versanti
    line((xb + 1.0, ym(0) + 0.11), (xb + 1.0, ym(200)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.44), stroke: 0.6pt)
    content((xb + 0.80, ym(216)), anchor: "south-west", text(size: 7pt)[$Delta sigma_2 = 200$])

    // Quota Delta sigma_4 (0..100) lungo la verticale della valvola 4 senza intersecare il versante
    line((xb + 7.0, ym(0) + 0.11), (xb + 7.0, ym(100)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42), stroke: 0.6pt)
    content((xb + 7.0, ym(116)), anchor: "south", text(size: 7pt)[$Delta sigma_4 = 100$])

    // Quota interna Delta sigma_5 (-100..100)
    line((xb + 9.15, ym(-100)), (xb + 10.55, ym(-100)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
    line((xb + 9.50, ym(100)), (xb + 10.55, ym(100)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
    line((xb + 10.45, ym(-100)), (xb + 10.45, ym(100)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.48), stroke: 0.6pt)
    content((xb + 10.60, ym(0)), anchor: "west", text(size: 7pt)[$Delta sigma_5$ \ 200])

    // Quota esterna Delta sigma_3 (-150..200) senza incroci con quote interne
    line((xb + 5.15, ym(-150)), (xb + 11.95, ym(-150)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
    line((xb + 9.75, ym(200)), (xb + 11.95, ym(200)), stroke: (paint: luma(120), thickness: 0.45pt, dash: "dotted"))
    line((xb + 11.82, ym(-150)), (xb + 11.82, ym(200)), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.48), stroke: 0.6pt)
    content((xb + 11.96, ym(135)), anchor: "west", text(size: 7pt)[$Delta sigma_3$ \ 350])

    content((xb + 5.0, ym(368)), anchor: "south", text(size: 7.5pt, weight: "bold")[(b) Svuotamento delle sacche residue])
  }),
  caption: [Applicazione del metodo del serbatoio su griglia in MPa: (a) scarico della valle principale a $-200" MPa"$ e (b) drenaggio progressivo delle sacche residue (cicli 2–5).],
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
  caption: [Parametri caratteristici dei cinque cicli estratti dal profilo di esempio.],
) <tab:conteggi>

Su storie industriali più estese — come il periodo completo da $27$ svuotamenti analizzato a lezione — più sacche distinte possono presentare la medesima coppia $(sigma_"min", sigma_"max")$ (ad esempio tre salti identici tra $-100$ e $+100" MPa"$ nello stesso periodo). In fase di sintesi le estrazioni uguali si accorpano sommando le rispettive occorrenze nella molteplicità $n_i$ per periodo (da cui le frazioni di missione $alpha_i = n_i slash sum n_j$) e si riordinano infine per $sigma_a$ decrescente per tracciare l'*accumulata di carico* e condurre la verifica di Palmgren-Miner.
