#import "../../figs/comuni/_helpers.typ": fig-safe, img-flag

#let nota(body) = block(width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body)

= *Innesti*

== Innesti a denti e a frizione

=== Funzione, classificazione e requisiti di progetto

A differenza dei giunti, che richiedono l'arresto della macchina per collegare o scollegare gli alberi, gli *innesti* vengono azionati *in esercizio* per interrompere o ripristinare il flusso di potenza tra organo motore e utilizzatore — consentendo di intervenire sull'architettura della linea di trasmissione (come nell'automobile, dove la frizione disconnette temporaneamente il motore dal cambio per effettuare la cambiata senza spegnerlo). Il comando può essere *esterno* (manuale, meccanico, idraulico, pneumatico o elettromagnetico — quest'ultimo più pronto perché il segnale si propaga come corrente elettrica, riducendo il ritardo tra azione e risposta) oppure *autonomo*, innescato dalla dinamica stessa del sistema al superamento di una coppia limite, di una velocità critica o all'inversione del moto.

Dal punto di vista del principio fisico di trasmissione della coppia, gli innesti si classificano in:
- *A contatto:* per *accoppiamento di forma* o azione meccanica positiva (innesti a denti o a dentini) oppure per *attrito* tra superfici solide (innesti a frizione piani, conici o a tamburo).
- *Senza contatto:* mediante *fenomeni elettromeccanici* (isteresi magnetica, correnti parassite, particelle magnetiche) oppure *attrito fluido* (giunti idraulici / fluidodinamici).

Il transitorio più delicato del progetto è la *sincronizzazione*, ossia la fase in cui l'albero condotto (inizialmente fermo o a velocità diversa) viene accelerato fino a uguagliare la velocità angolare dell'albero motore. Essa impone un compromesso rigoroso:
- *Inserimento troppo rapido:* produce elevati gradienti di velocità e accelerazioni brusche delle inerzie in gioco, generando picchi di coppia nettamente superiori alla coppia di regime e urti (*colpi d'ariete*) dannosi per la resistenza strutturale della trasmissione e dell'utenza.
- *Inserimento troppo lento:* introduce un ritardo inaccettabile tra il comando e la messa a regime e, negli innesti con elementi dissipativi (attrito, isteresi o attrito fluido), protrae lo strisciamento relativo trasformando grandi quantità di energia meccanica in *calore*. Se tale calore si accumula senza essere smaltito in tempo, insorgono deformazioni termiche locali e decadimento della resistenza dei materiali.

#nota[
  *Funzioni secondarie e requisiti termomeccanici di progetto.* Oltre a durata strutturale, prontezza operativa, gradualità d'inserimento e *invarianza delle prestazioni nel tempo* (che richiede un controllo puntuale dell'usura, poiché l'assottigliamento delle superfici e la crescita dei giochi alterano la risposta a parità di comando), gli innesti possono regolare il flusso energetico, introdurre *elasticità e smorzamento* contro le vibrazioni torsionali della linea oppure *dissipare energia* in calore. La funzione dissipativa è esasperata nei *freni*, che riprendono molte architetture degli innesti a frizione ma con l'obiettivo di convertire rapidamente energia cinetica in energia termica. Il dimensionamento termomeccanico dipende perciò dal ciclo di servizio: negli *inserimenti prolungati* (es. frenatura in discesa) occorre massimizzare la *trasmissione di calore verso l'ambiente*; negli *inserimenti saltuari* ad alta energia seguiti da intervalli di raffreddamento (es. freni aeronautici) è prioritaria un'elevata *capacità termica* per contenere la temperatura di picco.
]

=== Innesto a denti

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'*innesto a denti* è la soluzione più semplice basata sull'*accoppiamento di forma*: alle estremità dei due alberi coassiali sono montate due flange frontali dotate di profili a denti perfettamente coniugati. Azionando una *leva* incernierata che impegna la gola di un *collare*, si sposta assialmente la flangia scorrevole portando a contatto i fianchi dei denti: la coppia e la rotazione si trasferiscono per puro *ostacolo meccanico*, senza alcun slittamento a regime.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-4.20, 0.00), (-3.15, 0.00), stroke: 0.55pt)
  line((-3.02, 0.00), (-2.90, 0.00), stroke: 0.55pt)
  line((-2.77, 0.00), (-1.65, 0.00), stroke: 0.55pt)
  line((-1.52, 0.00), (-1.40, 0.00), stroke: 0.55pt)
  line((-1.27, 0.00), (-0.15, 0.00), stroke: 0.55pt)
  line((-0.02, 0.00), (0.10, 0.00), stroke: 0.55pt)
  line((0.23, 0.00), (1.35, 0.00), stroke: 0.55pt)
  line((1.48, 0.00), (1.60, 0.00), stroke: 0.55pt)
  line((1.73, 0.00), (2.85, 0.00), stroke: 0.55pt)
  line((2.98, 0.00), (3.10, 0.00), stroke: 0.55pt)
  line((3.23, 0.00), (4.70, 0.00), stroke: 0.55pt)

  line((1.72, -0.40), (1.72, 0.45), stroke: 0.55pt)
  line((1.72, 0.55), (1.72, 0.65), stroke: 0.55pt)
  line((1.72, 0.75), (1.72, 1.55), stroke: 0.55pt)
  line((1.72, 1.65), (1.72, 1.75), stroke: 0.55pt)
  line((1.72, 1.85), (1.72, 2.25), stroke: 0.55pt)

  line((-3.90, 0.60), (-3.00, 0.60), stroke: 1.05pt)
  line((-3.90, -0.60), (-3.00, -0.60), stroke: 1.05pt)
  bezier((-3.90, 0.60), (-3.90, 0.00), (-3.99, 0.42), (-3.99, 0.18), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.99, -0.18), (-3.99, -0.42), stroke: 1.05pt)
  bezier((-3.90, 0.00), (-3.90, -0.60), (-3.81, -0.18), (-3.81, -0.42), stroke: 0.85pt)
  line((-3.95, -0.14), (-3.85, -0.06), stroke: 0.45pt)
  line((-3.97, -0.26), (-3.83, -0.16), stroke: 0.45pt)
  line((-3.97, -0.38), (-3.83, -0.28), stroke: 0.45pt)
  line((-3.95, -0.50), (-3.85, -0.40), stroke: 0.45pt)

  line((-3.85, 0.52), (-3.05, 0.52), stroke: 0.45pt)
  line((-3.85, -0.52), (-3.05, -0.52), stroke: 0.45pt)
  line((-3.82, -0.42), (-3.05, -0.42), stroke: 0.45pt)

  line((-3.00, -1.00), (-3.00, 1.00), stroke: 1.05pt)
  arc((-2.88, 1.00), start: 98deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((-2.88, -1.00), start: 180deg, stop: 262deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((-2.90, 1.12), (-1.52, 1.32), stroke: 1.05pt)
  line((-2.90, -1.12), (-1.52, -1.32), stroke: 1.05pt)
  arc((-1.52, 1.42), start: 278deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)
  arc((-1.52, -1.42), start: 0deg, stop: 82deg, radius: 0.10, anchor: "origin", stroke: 1.05pt)

  line((-2.85, -1.03), (-1.58, -1.22), stroke: 0.45pt)
  line((-2.85, -0.93), (-1.58, -1.10), stroke: 0.45pt)

  line((-2.70, 0.15), (-1.12, 0.15), stroke: (dash: "dashed", thickness: 0.65pt))
  line((-2.70, -0.13), (-1.12, -0.13), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-2.70, 0.01), start: 90deg, stop: 270deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((-1.12, 0.01), start: 270deg, stop: 450deg, radius: 0.14, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((-1.42, -1.95), (-1.42, 1.95), stroke: 1.05pt)
  arc((-1.27, 1.95), start: 90deg, stop: 180deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  arc((-1.27, -1.95), start: 180deg, stop: 270deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((-1.27, 2.10), (-0.20, 2.10), stroke: 1.05pt)
  line((-1.27, -2.10), (-0.20, -2.10), stroke: 1.05pt)

  line((-1.32, -1.58), (-0.82, -1.58), stroke: 0.45pt)

  line((-0.20, 2.10), (-0.20, 1.54), stroke: 1.05pt)
  bezier((-0.20, 1.82), (-0.80, 0.85), (-0.52, 1.66), (-0.78, 1.25), stroke: 1.05pt)
  bezier((-0.20, 1.54), (-0.80, 0.85), (-0.48, 1.42), (-0.72, 1.14), stroke: 1.05pt)
  line((-0.80, 0.85), (-0.80, 0.00), stroke: 1.05pt)
  line((-0.80, 0.00), (-0.20, 0.00), stroke: 1.05pt)

  bezier((-0.32, 1.43), (-0.20, 0.55), (-0.23, 1.18), (-0.20, 0.85), stroke: 0.9pt)
  line((-0.20, 0.55), (-0.20, 0.00), stroke: 0.9pt)
  line((-0.44, 1.32), (-0.28, 1.32), stroke: 0.5pt)
  line((-0.53, 1.22), (-0.26, 1.22), stroke: 0.5pt)
  line((-0.62, 1.10), (-0.24, 1.10), stroke: 0.5pt)
  line((-0.68, 0.98), (-0.23, 0.98), stroke: 0.5pt)
  line((-0.75, 0.85), (-0.22, 0.85), stroke: 0.5pt)

  line((-0.80, 0.60), (-0.45, 0.60), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.36, 0.50), stroke: 0.85pt)
  line((-0.36, 0.50), (-0.36, 0.00), stroke: 0.85pt)
  line((-0.45, 0.60), (-0.45, 0.00), stroke: 0.75pt)
  line((-0.36, 0.42), (-0.20, 0.42), stroke: 0.5pt)
  line((-0.36, 0.32), (-0.20, 0.32), stroke: 0.5pt)
  line((-0.36, 0.22), (-0.20, 0.22), stroke: 0.5pt)
  line((-0.36, 0.12), (-0.20, 0.12), stroke: 0.5pt)

  line((-0.20, -2.10), (-0.20, -1.46), stroke: 1.05pt)
  line((-0.20, -1.46), (-0.40, -1.46), stroke: 1.05pt)
  line((-0.80, -2.10), (-0.80, -1.82), stroke: 1.05pt)
  bezier((-0.80, -1.82), (-0.20, -0.85), (-0.48, -1.68), (-0.22, -1.25), stroke: 1.05pt)
  line((-0.20, -0.85), (-0.20, 0.00), stroke: 1.05pt)

  line((-0.08, -0.60), (-0.08, 0.50), stroke: 0.85pt)
  line((-0.08, 0.50), (-0.01, 0.56), stroke: 0.85pt)
  line((-0.08, -0.60), (-0.01, -0.66), stroke: 0.85pt)
  line((-0.01, -0.75), (-0.01, 0.68), stroke: 0.9pt)
  line((-0.01, 0.68), (0.10, 0.68), stroke: 0.9pt)
  line((-0.01, -0.75), (0.70, -0.75), stroke: 1.05pt)
  line((0.02, -0.45), (0.68, -0.45), stroke: 0.5pt)
  line((0.02, -0.58), (0.68, -0.58), stroke: 0.5pt)

  line((0.10, 2.10), (1.20, 2.10), stroke: 1.05pt)
  arc((1.20, 1.95), start: 0deg, stop: 90deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((0.10, 2.10), (0.10, 1.46), stroke: 1.05pt)
  line((0.10, 1.46), (0.30, 1.46), stroke: 1.05pt)
  line((0.70, 2.10), (0.70, 1.82), stroke: 1.05pt)
  bezier((0.70, 1.82), (0.10, 0.85), (0.38, 1.68), (0.12, 1.25), stroke: 1.05pt)
  line((0.10, 0.85), (0.10, 0.00), stroke: 1.05pt)
  line((0.10, 0.00), (0.70, 0.00), stroke: 1.05pt)
  line((0.70, 0.00), (0.70, -0.75), stroke: 1.05pt)

  bezier((0.70, -0.75), (0.10, -1.52), (0.62, -1.12), (0.36, -1.38), stroke: 1.05pt)
  bezier((0.70, -0.75), (0.10, -1.82), (0.68, -1.30), (0.42, -1.68), stroke: 1.05pt)
  bezier((0.20, -0.75), (0.36, -1.35), (0.20, -1.02), (0.26, -1.22), stroke: 0.95pt)
  line((0.22, -0.86), (0.64, -0.86), stroke: 0.5pt)
  line((0.23, -0.96), (0.60, -0.96), stroke: 0.5pt)
  line((0.25, -1.08), (0.54, -1.08), stroke: 0.5pt)
  line((0.29, -1.20), (0.46, -1.20), stroke: 0.5pt)

  line((0.10, -1.52), (0.10, -2.10), stroke: 1.05pt)
  line((0.10, -2.10), (1.20, -2.10), stroke: 1.05pt)
  arc((1.20, -1.95), start: 270deg, stop: 360deg, radius: 0.15, anchor: "origin", stroke: 1.05pt)
  line((1.35, -1.95), (1.35, 1.95), stroke: 1.05pt)

  line((0.25, -1.78), (1.26, -1.78), stroke: 0.45pt)
  line((0.18, -1.96), (1.26, -1.96), stroke: 0.45pt)

  line((1.35, 1.24), (1.42, 1.24), stroke: 0.9pt)
  line((1.35, -1.24), (1.42, -1.24), stroke: 0.9pt)
  line((2.02, 1.24), (2.08, 1.24), stroke: 0.9pt)
  line((2.02, -1.24), (2.08, -1.24), stroke: 0.9pt)

  line((1.42, -1.48), (1.42, 1.48), stroke: 1.05pt)
  line((2.02, -1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.42, -1.48), (2.02, -1.48), stroke: 1.05pt)
  line((1.42, 1.48), (1.48, 1.48), stroke: 1.05pt)
  line((1.96, 1.48), (2.02, 1.48), stroke: 1.05pt)
  line((1.46, -1.38), (1.98, -1.38), stroke: 0.45pt)

  circle((1.72, 0.00), radius: 0.18, stroke: 0.95pt)
  circle((1.72, 0.00), radius: 0.28, stroke: 1.05pt)

  line((1.53, 0.21), (1.44, 2.75), stroke: 1.05pt)
  line((1.91, 0.21), (2.00, 2.75), stroke: 1.05pt)
  bezier((1.44, 2.75), (1.72, 2.75), (1.53, 2.78), (1.63, 2.72), stroke: 1.05pt)
  bezier((1.72, 2.75), (2.00, 2.75), (1.81, 2.78), (1.91, 2.72), stroke: 1.05pt)

  rect((2.08, -1.52), (2.30, 1.52), stroke: 1.05pt)
  line((2.12, 1.42), (2.26, 1.42), stroke: 0.45pt)
  line((2.12, -1.36), (2.26, -1.36), stroke: 0.45pt)
  line((2.12, -1.44), (2.26, -1.44), stroke: 0.45pt)

  arc((2.38, 1.23), start: 180deg, stop: 262deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  arc((2.38, -1.23), start: 98deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1.05pt)
  line((2.38, 1.15), (3.43, 0.98), stroke: 1.05pt)
  line((2.38, -1.15), (3.43, -0.98), stroke: 1.05pt)
  arc((3.43, 0.86), start: 0deg, stop: 82deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  arc((3.43, -0.86), start: 278deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 1.05pt)
  line((3.55, -0.86), (3.55, 0.86), stroke: 1.05pt)

  line((2.42, -1.07), (3.40, -0.91), stroke: 0.45pt)
  line((2.42, -0.96), (3.40, -0.81), stroke: 0.45pt)

  line((0.10, 0.68), (1.42, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.68), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.10, 0.48), (1.42, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, 0.48), (3.30, 0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, 0.48), (3.30, 0.68), stroke: (dash: "dashed", thickness: 0.65pt))

  line((0.70, -0.48), (1.42, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.48), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0.70, -0.68), (1.42, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.02, -0.68), (3.30, -0.68), stroke: (dash: "dashed", thickness: 0.65pt))
  line((3.30, -0.68), (3.30, -0.48), stroke: (dash: "dashed", thickness: 0.65pt))

  line((3.55, 0.60), (4.42, 0.60), stroke: 1.05pt)
  line((3.55, -0.60), (4.42, -0.60), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.51, 0.42), (4.51, 0.18), stroke: 1.05pt)
  bezier((4.42, 0.60), (4.42, 0.00), (4.33, 0.42), (4.33, 0.18), stroke: 0.85pt)
  bezier((4.42, 0.00), (4.42, -0.60), (4.51, -0.18), (4.51, -0.42), stroke: 1.05pt)
  line((4.37, 0.46), (4.47, 0.54), stroke: 0.45pt)
  line((4.35, 0.34), (4.49, 0.44), stroke: 0.45pt)
  line((4.35, 0.22), (4.49, 0.32), stroke: 0.45pt)
  line((4.37, 0.10), (4.47, 0.20), stroke: 0.45pt)

  line((3.60, 0.53), (4.36, 0.53), stroke: 0.45pt)
  line((3.60, -0.53), (4.40, -0.53), stroke: 0.45pt)
  line((3.60, -0.42), (4.40, -0.42), stroke: 0.45pt)

  circle((1.62, 2.18), radius: 0.04, fill: black, stroke: none)
  line((1.62, 2.18), (0.82, 2.78), stroke: 0.6pt)
  line((0.82, 2.78), (0.64, 2.78), stroke: 0.6pt)
  content((0.55, 2.78), text(size: 8.5pt, style: "italic")[leva], anchor: "east")

  circle((1.72, -1.08), radius: 0.04, fill: black, stroke: none)
  line((1.72, -1.08), (1.96, -2.02), stroke: 0.6pt)
  line((1.96, -2.02), (2.14, -2.02), stroke: 0.6pt)
  content((2.23, -2.02), text(size: 8.5pt, style: "italic")[collare], anchor: "west")
})

],
)

Poiché l'imbocco richiede che i denti si presentino in fase favorevole durante la traslazione assiale, l'inserimento è consentito solo a macchina ferma o a *moto lento* (altrimenti gli urti tra le teste dei denti risultano distruttivi); superfici frontali inclinate agevolano l'innesto. Il disinserimento può avvenire anche in esercizio, ma sotto carico la pressione sui fianchi genera un attrito non trascurabile che la leva deve vincere per separare i profili: l'inclinazione del fianco può favorire oppure ostacolare l'apertura.

=== Innesti a frizione

Negli *innesti a frizione* la coppia è trasmessa per *attrito* tra due o più superfici rivestite di materiale ad alto coefficiente d'attrito e premute da una spinta assiale $F$: la pressione di contatto generata dalla forza normale sviluppa forze tangenziali circonferenziali capaci di trasferire il momento torcente tra i due alberi. Le architetture fondamentali impiegano superfici piane a *corona circolare* (sinistra e centro-sinistra), superfici *troncoconiche* (centro-destra, in cui l'inclinazione del cono sfrutta l'effetto cuneo amplificando la pressione normale a parità di spinta assiale $F$) oppure superfici cilindriche *a tamburo* con ganasce radiali espansibili o centrifughe (destra).

#align(center)[
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.17cm, {
  import draw: *

  line((0, 0), (14.4, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.8, -1.8), (1.8, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((12.6, -1.8), (12.6, 1.8), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  circle((1.8, 0), radius: 1.5, stroke: 1pt)
  circle((1.8, 0), radius: 0.88, stroke: 1pt)
  circle((1.8, 0), radius: 0.22, stroke: 0.9pt)
  rect((1.51, -0.06), (1.59, 0.06), fill: white, stroke: 0.8pt)
  arc((1.8, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  line((4.8, 0.22), (4.8, 0.6), (5.15, 0.6), (5.15, 1.5), (5.55, 1.5), (5.55, 0.22), close: true, stroke: 1pt)
  line((5.15, 1.35), (5.3, 1.5), stroke: 0.5pt)
  line((5.15, 1.15), (5.5, 1.5), stroke: 0.5pt)
  line((5.15, 0.95), (5.55, 1.35), stroke: 0.5pt)
  line((5.15, 0.75), (5.55, 1.15), stroke: 0.5pt)
  line((4.8, 0.4), (5.0, 0.6), stroke: 0.5pt)
  line((4.8, 0.22), (5.55, 0.97), stroke: 0.5pt)
  line((5.0, 0.22), (5.55, 0.77), stroke: 0.5pt)
  line((5.2, 0.22), (5.55, 0.57), stroke: 0.5pt)
  line((5.4, 0.22), (5.55, 0.37), stroke: 0.5pt)

  line((4.8, -0.22), (4.8, -0.6), (5.15, -0.6), (5.15, -1.5), (5.55, -1.5), (5.55, -0.22), close: true, stroke: 1pt)
  line((4.8, -0.42), (4.98, -0.22), stroke: 0.5pt)
  line((4.82, -0.6), (5.18, -0.22), stroke: 0.5pt)
  line((5.02, -0.6), (5.38, -0.22), stroke: 0.5pt)
  line((5.15, -0.67), (5.55, -0.27), stroke: 0.5pt)
  line((5.15, -0.87), (5.55, -0.47), stroke: 0.5pt)
  line((5.15, -1.07), (5.55, -0.67), stroke: 0.5pt)
  line((5.15, -1.27), (5.55, -0.87), stroke: 0.5pt)
  line((5.15, -1.47), (5.55, -1.07), stroke: 0.5pt)
  line((5.32, -1.5), (5.55, -1.27), stroke: 0.5pt)

  line((5.58, 0.88), (5.58, 1.5), (6.0, 1.5), (6.0, 0.6), (6.35, 0.6), (6.35, 0.22), (5.65, 0.22), (5.65, 0.88), close: true, stroke: 1pt)
  line((5.8, 1.5), (6.0, 1.3), stroke: 0.5pt)
  line((5.6, 1.5), (6.0, 1.1), stroke: 0.5pt)
  line((5.58, 1.32), (6.0, 0.9), stroke: 0.5pt)
  line((6.1, 0.6), (6.35, 0.35), stroke: 0.5pt)
  line((5.58, 1.12), (6.3, 0.4), stroke: 0.5pt)
  line((5.58, 0.92), (6.28, 0.22), stroke: 0.5pt)
  line((5.65, 0.65), (6.08, 0.22), stroke: 0.5pt)
  line((5.65, 0.45), (5.88, 0.22), stroke: 0.5pt)

  line((5.58, -0.88), (5.58, -1.5), (6.0, -1.5), (6.0, -0.6), (6.35, -0.6), (6.35, -0.22), (5.65, -0.22), (5.65, -0.88), close: true, stroke: 1pt)
  line((6.15, -0.22), (6.35, -0.42), stroke: 0.5pt)
  line((5.95, -0.22), (6.33, -0.6), stroke: 0.5pt)
  line((5.75, -0.22), (6.13, -0.6), stroke: 0.5pt)
  line((5.65, -0.32), (6.0, -0.67), stroke: 0.5pt)
  line((5.65, -0.52), (6.0, -0.87), stroke: 0.5pt)
  line((5.65, -0.72), (6.0, -1.07), stroke: 0.5pt)
  line((5.58, -0.85), (6.0, -1.27), stroke: 0.5pt)
  line((5.58, -1.05), (6.0, -1.47), stroke: 0.5pt)
  line((5.58, -1.25), (5.83, -1.5), stroke: 0.5pt)
  line((5.58, -1.45), (5.63, -1.5), stroke: 0.5pt)

  line((5.55, 0.88), (5.65, 0.88), stroke: 0.8pt)
  line((5.55, -0.88), (5.65, -0.88), stroke: 0.8pt)
  line((5.6, -0.88), (5.6, 0.88), stroke: 0.7pt)

  line((5.565, 0.88), (5.565, 1.5), stroke: (paint: red, thickness: 2.2pt))
  line((5.565, -1.5), (5.565, -0.88), stroke: (paint: red, thickness: 2.2pt))

  line((4.45, 0.22), (4.8, 0.22), stroke: 0.9pt)
  line((4.45, -0.22), (4.8, -0.22), stroke: 0.9pt)
  line((5.55, -0.22), (5.55, 0.22), stroke: 0.9pt)
  line((5.65, 0.22), (6.7, 0.22), stroke: 0.9pt)
  line((5.65, -0.22), (6.7, -0.22), stroke: 0.9pt)
  line((5.65, -0.22), (5.65, 0.22), stroke: 0.9pt)

  rect((4.85, -0.04), (5.38, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((5.75, -0.04), (6.52, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((6.85, 0.44), (6.42, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((6.85, -0.44), (6.42, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  line((7.7, 0.22), (7.7, 0.6), (8.05, 0.6), (8.05, 1.5), (8.85, 1.5), (8.85, 1.38), (8.25, 1.29), (8.25, 0.92), (8.42, 0.92), (8.42, 0.22), close: true, stroke: 1pt)
  line((8.05, 1.35), (8.2, 1.5), stroke: 0.5pt)
  line((8.05, 1.15), (8.4, 1.5), stroke: 0.5pt)
  line((8.42, 1.32), (8.6, 1.5), stroke: 0.5pt)
  line((8.62, 1.35), (8.77, 1.5), stroke: 0.5pt)
  line((8.05, 0.95), (8.25, 1.15), stroke: 0.5pt)
  line((8.05, 0.75), (8.25, 0.95), stroke: 0.5pt)
  line((7.7, 0.4), (7.9, 0.6), stroke: 0.5pt)
  line((7.7, 0.22), (8.4, 0.92), stroke: 0.5pt)
  line((7.9, 0.22), (8.42, 0.74), stroke: 0.5pt)
  line((8.1, 0.22), (8.42, 0.54), stroke: 0.5pt)
  line((8.3, 0.22), (8.42, 0.34), stroke: 0.5pt)

  line((7.7, -0.22), (7.7, -0.6), (8.05, -0.6), (8.05, -1.5), (8.85, -1.5), (8.85, -1.38), (8.25, -1.29), (8.25, -0.92), (8.42, -0.92), (8.42, -0.22), close: true, stroke: 1pt)
  line((7.7, -0.42), (7.88, -0.22), stroke: 0.5pt)
  line((7.72, -0.6), (8.08, -0.22), stroke: 0.5pt)
  line((7.92, -0.6), (8.28, -0.22), stroke: 0.5pt)
  line((8.05, -0.67), (8.42, -0.3), stroke: 0.5pt)
  line((8.05, -0.87), (8.42, -0.5), stroke: 0.5pt)
  line((8.05, -1.07), (8.42, -0.7), stroke: 0.5pt)
  line((8.05, -1.27), (8.25, -1.07), stroke: 0.5pt)
  line((8.38, -0.92), (8.42, -0.88), stroke: 0.5pt)
  line((8.05, -1.47), (8.25, -1.27), stroke: 0.5pt)
  line((8.22, -1.5), (8.4, -1.32), stroke: 0.5pt)
  line((8.42, -1.5), (8.58, -1.34), stroke: 0.5pt)
  line((8.62, -1.5), (8.75, -1.37), stroke: 0.5pt)

  line((8.28, 1.08), (8.28, 1.26), (8.85, 1.34), (8.85, 0.6), (9.25, 0.6), (9.25, 0.22), (8.55, 0.22), (8.55, 0.6), (8.7, 0.6), (8.7, 1.08), close: true, stroke: 1pt)
  line((8.65, 1.31), (8.85, 1.11), stroke: 0.5pt)
  line((8.42, 1.28), (8.85, 0.85), stroke: 0.5pt)
  line((8.28, 1.22), (8.42, 1.08), stroke: 0.5pt)
  line((8.7, 1.0), (9.1, 0.6), stroke: 0.5pt)
  line((8.7, 0.8), (9.25, 0.25), stroke: 0.5pt)
  line((8.7, 0.6), (9.08, 0.22), stroke: 0.5pt)
  line((8.55, 0.55), (8.88, 0.22), stroke: 0.5pt)
  line((8.55, 0.35), (8.68, 0.22), stroke: 0.5pt)

  line((8.28, -1.08), (8.28, -1.26), (8.85, -1.34), (8.85, -0.6), (9.25, -0.6), (9.25, -0.22), (8.55, -0.22), (8.55, -0.6), (8.7, -0.6), (8.7, -1.08), close: true, stroke: 1pt)
  line((9.05, -0.22), (9.25, -0.42), stroke: 0.5pt)
  line((8.85, -0.22), (9.23, -0.6), stroke: 0.5pt)
  line((8.65, -0.22), (9.03, -0.6), stroke: 0.5pt)
  line((8.55, -0.32), (8.85, -0.62), stroke: 0.5pt)
  line((8.55, -0.52), (8.85, -0.82), stroke: 0.5pt)
  line((8.7, -0.87), (8.85, -1.02), stroke: 0.5pt)
  line((8.7, -1.07), (8.85, -1.22), stroke: 0.5pt)
  line((8.52, -1.08), (8.76, -1.32), stroke: 0.5pt)
  line((8.32, -1.08), (8.53, -1.29), stroke: 0.5pt)

  line((8.25, -1.29), (8.25, 1.29), stroke: 0.7pt)
  line((8.28, -1.08), (8.28, 1.08), stroke: 0.7pt)
  line((8.42, -0.92), (8.42, 0.92), stroke: 0.7pt)
  line((8.55, -0.6), (8.55, 0.6), stroke: 0.7pt)
  line((8.85, -1.34), (8.85, -1.38), stroke: 0.8pt)
  line((8.85, 1.34), (8.85, 1.38), stroke: 0.8pt)

  line((8.26, 1.275), (8.85, 1.36), stroke: (paint: red, thickness: 2.2pt))
  line((8.26, -1.275), (8.85, -1.36), stroke: (paint: red, thickness: 2.2pt))

  line((7.35, 0.22), (7.7, 0.22), stroke: 0.9pt)
  line((7.35, -0.22), (7.7, -0.22), stroke: 0.9pt)
  line((8.55, 0.22), (9.6, 0.22), stroke: 0.9pt)
  line((8.55, -0.22), (9.6, -0.22), stroke: 0.9pt)

  rect((7.75, -0.04), (8.28, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)
  rect((8.65, -0.04), (9.42, 0.04), radius: 0.04, fill: white, stroke: 0.7pt)

  line((9.75, 0.44), (9.32, 0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)
  line((9.75, -0.44), (9.32, -0.44), mark: (end: "stealth", fill: black, scale: 1.1), stroke: 0.9pt)

  // --- Vista a destra: ganasce centrifughe ---
  circle((12.6, 0), radius: 1.5, stroke: 1pt)
  circle((12.6, 0), radius: 1.4, stroke: 0.9pt)
  circle((12.6, 0), radius: 0.22, stroke: 0.9pt)
  rect((12.33, -0.05), (12.40, 0.05), fill: white, stroke: 0.8pt)
  arc((12.6, 0), start: 164deg, stop: 196deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)

  // Mozzo a stella (6 guide radiali)
  arc((12.6, 0), start: 38.4deg, stop: 81.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 98.4deg, stop: 141.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 158.4deg, stop: 201.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 218.4deg, stop: 261.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 278.4deg, stop: 321.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)
  arc((12.6, 0), start: 338.4deg, stop: 381.6deg, radius: 0.62, anchor: "origin", stroke: 0.9pt)

  // Pareti delle 6 guide radiali (dalla radice r=0.62 fino all'anello esterno r=1.4)
  line((12.50, 0.612), (12.50, 1.396), stroke: 0.9pt)
  line((12.70, 0.612), (12.70, 1.396), stroke: 0.9pt)

  line((12.50, -0.612), (12.50, -1.396), stroke: 0.9pt)
  line((12.70, -0.612), (12.70, -1.396), stroke: 0.9pt)

  line((13.08, 0.393), (13.759, 0.785), stroke: 0.9pt)
  line((13.18, 0.219), (13.859, 0.611), stroke: 0.9pt)

  line((12.12, 0.393), (11.441, 0.785), stroke: 0.9pt)
  line((12.02, 0.219), (11.341, 0.611), stroke: 0.9pt)

  line((12.12, -0.393), (11.441, -0.785), stroke: 0.9pt)
  line((12.02, -0.219), (11.341, -0.611), stroke: 0.9pt)

  line((13.08, -0.393), (13.759, -0.785), stroke: 0.9pt)
  line((13.18, -0.219), (13.859, -0.611), stroke: 0.9pt)

  // Chiusure delle estremità delle 6 guide (a r=1.28)
  line((12.50, 1.28), (12.70, 1.28), stroke: 0.8pt)
  line((12.50, -1.28), (12.70, -1.28), stroke: 0.8pt)
  line((13.658, 0.727), (13.758, 0.553), stroke: 0.8pt)
  line((11.542, 0.727), (11.442, 0.553), stroke: 0.8pt)
  line((11.542, -0.727), (11.442, -0.553), stroke: 0.8pt)
  line((13.658, -0.727), (13.758, -0.553), stroke: 0.8pt)

  // 6 settori / spicchi espansibili (archi interni r=0.74 e fianchi tra guide)
  arc((12.6, 0), start: 37.8deg, stop: 82.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, 0.733), (12.70, 1.396), stroke: 0.9pt)
  line((13.185, 0.453), (13.759, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 97.8deg, stop: 142.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.50, 0.733), (12.50, 1.396), stroke: 0.9pt)
  line((12.015, 0.453), (11.441, 0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 157.8deg, stop: 202.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((11.915, 0.279), (11.341, 0.611), stroke: 0.9pt)
  line((11.915, -0.279), (11.341, -0.611), stroke: 0.9pt)

  arc((12.6, 0), start: 217.8deg, stop: 262.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.015, -0.453), (11.441, -0.785), stroke: 0.9pt)
  line((12.50, -0.733), (12.50, -1.396), stroke: 0.9pt)

  arc((12.6, 0), start: 277.8deg, stop: 322.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((12.70, -0.733), (12.70, -1.396), stroke: 0.9pt)
  line((13.185, -0.453), (13.759, -0.785), stroke: 0.9pt)

  arc((12.6, 0), start: 337.8deg, stop: 382.2deg, radius: 0.74, anchor: "origin", stroke: 0.9pt)
  line((13.285, -0.279), (13.859, -0.611), stroke: 0.9pt)
  line((13.285, 0.279), (13.859, 0.611), stroke: 0.9pt)

  // Arco blu d'attrito sullo spicchio superiore sinistro (da 94° a 146°)
  arc((12.6, 0), start: 94.1deg, stop: 145.9deg, radius: 1.4, anchor: "origin", stroke: (paint: blue.lighten(20%), thickness: 2.2pt))

  // Freccia curva di rotazione attorno al mozzo (punta stealth piena)
  arc((12.6, 0), start: 18deg, stop: 245deg, radius: 0.42, anchor: "origin", mark: (start: "stealth", fill: black, scale: 0.58), stroke: 0.8pt)

  // 6 frecce centrifughe al centro dei 6 spicchi (0°, 60°, 120°, 180°, 240°, 300°)
  line((13.44, 0), (13.90, 0), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((11.76, 0), (11.30, 0), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((13.02, 0.727), (13.25, 1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((12.18, 0.727), (11.95, 1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((12.18, -0.727), (11.95, -1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
  line((13.02, -0.727), (13.25, -1.126), mark: (end: "stealth", fill: black, scale: 0.62), stroke: 0.85pt)
})
]

La spinta $F$ di chiusura può essere applicata mediante leve meccaniche (caratterizzate da un ritardo leggermente maggiore rispetto ai comandi fluidi o elettrici), attuatori idraulici o elettromagnetici, oppure tramite un *organo elastico* opportunamente precaricato. Poiché spesso non è agevole inserire un secondo attuatore contrapposto per la manovra inversa, l'elemento elastico lavora in antagonismo al comando: nelle frizioni automobilistiche si adotta una *molla a diaframma* — evoluzione della molla a tazza troncoconica, intagliata radialmente in lamine trapezoidali per aumentarne la flessibilità — vincolata su una circonferenza di fulcro tra coperchio e spingidisco. In marcia normale la molla mantiene serrato il pacco; premendone la parte centrale attraverso il circuito idraulico del pedale, il bordo esterno arretra allontanando lo spingidisco e interrompendo il flusso di potenza verso il cambio, mentre al rilascio la molla richiude progressivamente l'innesto.

I valori del *coefficiente d'attrito* (sia statico sia cinetico) dipendono da cinque fattori principali: *materiali* accoppiati, *natura dell'ambiente* (umidità e contaminazione), *pressione di contatto*, *velocità relativa di slittamento* e *temperatura*. Il ciclo operativo attraversa tre fasi distinte:
1. *Inserimento (sincronizzazione):* le superfici strisciano reciprocamente mentre la parte condotta accelera; si sviluppano calore (che richiede adeguati percorsi di conduzione verso l'esterno) e *usura* del materiale d'attrito, con progressiva alterazione della geometria di contatto.
2. *Sincronismo:* uguagliate le velocità angolari, cessa lo strisciamento e l'innesto si comporta come un *giunto torsionalmente più o meno rigido*.
3. *Disinserimento:* si manifesta un nuovo transitorio di slittamento; a innesto aperto è fondamentale limitare o *azzerare la coppia d'attrito parassita a vuoto*, poiché qualsiasi trascinamento residuo genera perdite di potenza, riscaldamento continuo e usura prematura.

Per assicurare un funzionamento regolare e ripetibile sono essenziali:
- *Centratura assiale e rigidezza dei supporti:* evitano rotazioni relative tra le flange e mantengono le superfici perfettamente allineate lungo la normale, garantendo una distribuzione uniforme della pressione.
- *Solchi radiali tra le guarnizioni:* facilitano l'evacuazione dei detriti d'usura e di eventuali contaminanti esterni dalla zona di contatto.
- *Superfici di contatto anulari* con rapporto tra raggio esterno e raggio interno dimensionato per massimizzare l'*efficacia* dell'innesto, definita come il rapporto tra la coppia d'attrito sviluppata e la forza assiale $F$ necessaria all'accostamento.

==== Innesto monodisco

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Nella configurazione *monodisco*, la flangia motrice (volano) $A$ è calettata sull'albero motore, mentre il disco condotto $D$ — rivestito su entrambe le facce con guarnizioni ad alto attrito — scorre assialmente sul mozzo scanalato dell'albero condotto. Lo *spingidisco* $B$, azionato dal sistema di attuazione, trasla assialmente serrando il disco $D$ contro $A$ all'interno della *campana* (che svolge funzioni di contenimento, guida dei perni di comando e smaltimento termico). Le superfici attive di attrito che trasferiscono coppia in parallelo sono quindi *due*: l'interfaccia $A$–$D$ e l'interfaccia $B$–$D$.
  ],
  [#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.9cm, {
  import draw: *

  // ==================== VISTA FRONTALE (SINISTRA) ====================
  // Sfondo campana e mozzo sezionati
  circle((0, 0), radius: 2.40, fill: gray.transparentize(88%), stroke: none)
  circle((0, 0), radius: 2.20, fill: white, stroke: none)
  circle((0, 0), radius: 0.65, fill: gray.transparentize(86%), stroke: none)

  // Tratteggio sezione campana esterna (anello R = 2.20 .. 2.40)
  line((-2.36, 0.42), (-2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, 0.82), (-2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, 1.20), (-1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, 1.54), (-1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, 1.84), (-1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, 2.08), (-1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, 2.25), (-0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, 2.36), (-0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, 2.40), (0.00, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((0.42, 2.36), (0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.82, 2.25), (0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((1.20, 2.08), (1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((1.54, 1.84), (1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.84, 1.54), (1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((2.08, 1.20), (1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((2.25, 0.82), (2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.36, 0.42), (2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.40, 0.00), (2.20, 0.00), stroke: 0.45pt + gray.darken(45%))
  line((2.36, -0.42), (2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.25, -0.82), (2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.08, -1.20), (1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((1.84, -1.54), (1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((1.54, -1.84), (1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.20, -2.08), (1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((0.82, -2.25), (0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((0.42, -2.36), (0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, -2.40), (0.00, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, -2.36), (-0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, -2.25), (-0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, -2.08), (-1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, -1.84), (-1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, -1.54), (-1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, -1.20), (-1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, -0.82), (-2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.36, -0.42), (-2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.40, 0.00), (-2.20, 0.00), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio mozzo centrale (R = 0.28 .. 0.65, inclinato a 135 gradi)
  line((-0.25, 0.60), (-0.60, 0.25), stroke: 0.45pt + gray.darken(45%))
  line((0.02, 0.65), (-0.65, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.28, 0.58), (-0.02, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((-0.28, 0.02), (-0.58, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((0.46, 0.46), (0.18, 0.18), stroke: 0.45pt + gray.darken(45%))
  line((-0.18, -0.18), (-0.46, -0.46), stroke: 0.45pt + gray.darken(45%))
  line((0.58, 0.28), (0.28, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.02, -0.28), (-0.28, -0.58), stroke: 0.45pt + gray.darken(45%))
  line((0.65, 0.02), (-0.02, -0.65), stroke: 0.45pt + gray.darken(45%))
  line((0.60, -0.25), (0.25, -0.60), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio albero interno (R = 0.28, inclinato a 45 gradi)
  line((-0.20, -0.20), (0.20, 0.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.26, -0.08), (0.08, 0.26), stroke: 0.45pt + gray.darken(45%))
  line((-0.08, -0.26), (0.26, 0.08), stroke: 0.45pt + gray.darken(45%))

  // Circonferenze vista frontale
  circle((0, 0), radius: 2.40, stroke: 1pt)
  circle((0, 0), radius: 2.20, stroke: 1pt)
  circle((0, 0), radius: 2.13, stroke: 0.65pt)
  circle((0, 0), radius: 1.35, stroke: 0.85pt)
  circle((0, 0), radius: 0.65, stroke: 1pt)
  circle((0, 0), radius: 0.28, stroke: 1pt)

  // Linguetta vista frontale
  rect((-0.34, -0.06), (-0.23, 0.06), fill: white, stroke: 0.85pt)


  // ==================== VISTA SEZIONATA (DESTRA) ====================
  // Riempimenti di fondo per i corpi sezionati
  // Campana superiore e inferiore
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, 1.35), (5.45, 1.65), fill: gray.transparentize(86%), stroke: none)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, -1.65), (5.45, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Corpo A (sopra e sotto)
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, fill: gray.transparentize(88%), stroke: none)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, fill: gray.transparentize(88%), stroke: none)

  // Spingidisco B (sopra e sotto)
  rect((4.58, 1.35), (4.95, 2.15), fill: gray.transparentize(86%), stroke: none)
  rect((4.58, -2.15), (4.95, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Mozzo e disco D (con guarnizioni d'attrito)
  rect((4.25, 0.28), (4.63, 0.65), fill: gray.transparentize(86%), stroke: none)
  rect((4.25, -0.65), (4.63, -0.28), fill: gray.transparentize(86%), stroke: none)
  rect((4.40, 0.65), (4.48, 2.13), fill: gray.transparentize(75%), stroke: none)
  rect((4.40, -2.13), (4.48, -0.65), fill: gray.transparentize(75%), stroke: none)
  rect((4.30, 1.35), (4.40, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, 1.35), (4.58, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.30, -2.13), (4.40, -1.35), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, -2.13), (4.58, -1.35), fill: gray.transparentize(65%), stroke: none)

  // Tratteggio Corpo A superiore (inclinato a 135 gradi: dx = -dy)
  line((4.05, 2.20), (4.30, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((3.80, 2.20), (4.30, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 2.05), (4.30, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.80), (4.15, 1.35), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.55), (4.08, 1.17), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.30), (4.08, 0.92), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.05), (4.08, 0.67), stroke: 0.45pt + gray.darken(45%))
  line((3.65, 0.85), (4.08, 0.42), stroke: 0.45pt + gray.darken(45%))
  line((3.40, 0.85), (3.97, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.75), (3.72, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.50), (3.47, 0.28), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Corpo A inferiore (inclinato a 135 gradi: dx = -dy)
  line((3.80, -0.28), (4.08, -0.56), stroke: 0.45pt + gray.darken(45%))
  line((3.55, -0.28), (4.08, -0.81), stroke: 0.45pt + gray.darken(45%))
  line((3.30, -0.28), (4.08, -1.06), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.48), (4.08, -1.31), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.73), (3.37, -0.85), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -0.93), (4.30, -1.53), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.18), (4.30, -1.78), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.43), (4.30, -2.03), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.68), (4.22, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.93), (3.97, -2.20), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Campana superiore e inferiore (inclinato a 45 gradi: dx = dy)
  line((3.70, 2.20), (3.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((3.95, 2.20), (4.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.20, 2.20), (4.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.45, 2.20), (4.65, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.70, 2.20), (4.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.95, 2.20), (5.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.20, 2.20), (5.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 2.00), (5.45, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 1.45), (5.45, 1.65), stroke: 0.45pt + gray.darken(45%))
  line((5.30, 1.35), (5.45, 1.50), stroke: 0.45pt + gray.darken(45%))

  line((3.70, -2.40), (3.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.95, -2.40), (4.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.20, -2.40), (4.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.45, -2.40), (4.65, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.70, -2.40), (4.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.95, -2.40), (5.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.20, -2.40), (5.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -2.15), (5.45, -1.95), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -1.65), (5.45, -1.45), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Spingidisco B (sopra e sotto, inclinato a 135 gradi: dx = -dy)
  line((4.75, 2.15), (4.95, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 2.07), (4.95, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.82), (4.95, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.57), (4.80, 1.35), stroke: 0.45pt + gray.darken(45%))

  line((4.75, -1.35), (4.95, -1.55), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.43), (4.95, -1.80), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.68), (4.95, -2.05), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.93), (4.80, -2.15), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Mozzo D (sopra e sotto, inclinato a 45 gradi: dx = dy)
  line((4.25, 0.45), (4.45, 0.65), stroke: 0.45pt + gray.darken(45%))
  line((4.28, 0.28), (4.63, 0.63), stroke: 0.45pt + gray.darken(45%))
  line((4.48, 0.28), (4.63, 0.43), stroke: 0.45pt + gray.darken(45%))

  line((4.25, -0.47), (4.44, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((4.28, -0.65), (4.63, -0.30), stroke: 0.45pt + gray.darken(45%))
  line((4.48, -0.65), (4.63, -0.50), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio guarnizioni d'attrito
  line((4.30, 1.45), (4.40, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.65), (4.40, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.85), (4.40, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 2.03), (4.40, 2.13), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.45), (4.58, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.65), (4.58, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.85), (4.58, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 2.03), (4.58, 2.13), stroke: 0.45pt + gray.darken(55%))

  line((4.30, -2.03), (4.40, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.85), (4.40, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.65), (4.40, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.45), (4.40, -1.35), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -2.03), (4.58, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.85), (4.58, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.65), (4.58, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.45), (4.58, -1.35), stroke: 0.45pt + gray.darken(55%))

  // ==================== CONTORNI PRINCIPALI VISTA DESTRA ====================
  // Albero sinistro
  line((2.88, 0.28), (4.14, 0.28), (4.14, -0.28), (2.88, -0.28), stroke: 1pt)
  bezier((2.88, 0.28), (2.88, 0.00), (2.82, 0.18), (2.94, 0.10), stroke: 0.85pt)
  bezier((2.88, 0.00), (2.88, -0.28), (2.82, -0.10), (2.94, -0.18), stroke: 0.85pt)
  // Cava linguetta albero sinistro
  line((3.35, 0.05), (3.92, 0.05), stroke: 0.8pt)
  line((3.35, -0.05), (3.92, -0.05), stroke: 0.8pt)
  arc((3.35, 0.00), start: 90deg, stop: 270deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)
  arc((3.92, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Albero destro
  line((5.55, 0.28), (4.20, 0.28), (4.20, -0.28), (5.55, -0.28), stroke: 1pt)
  bezier((5.55, 0.28), (5.55, 0.00), (5.61, 0.18), (5.49, 0.10), stroke: 0.85pt)
  bezier((5.55, 0.00), (5.55, -0.28), (5.61, -0.10), (5.49, -0.18), stroke: 0.85pt)
  // Cava linguetta albero destro
  line((4.20, 0.05), (4.98, 0.05), stroke: 0.8pt)
  line((4.20, -0.05), (4.98, -0.05), stroke: 0.8pt)
  arc((4.98, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Contorno Corpo A
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, stroke: 1pt)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, stroke: 1pt)
  line((4.08, 0.28), (4.08, -0.28), stroke: 0.8pt)

  // Contorno Campana
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, stroke: 1pt)
  rect((5.25, 1.35), (5.45, 1.65), stroke: 1pt)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, stroke: 1pt)
  rect((5.25, -1.65), (5.45, -1.35), stroke: 1pt)
  // Spigoli interni campana in vista
  line((5.25, 1.35), (5.25, 0.28), stroke: 0.8pt)
  line((5.45, 1.35), (5.45, 0.28), stroke: 0.8pt)
  line((5.25, -1.35), (5.25, -0.28), stroke: 0.8pt)
  line((5.45, -1.35), (5.45, -0.28), stroke: 0.8pt)

  // Contorno Disco e Mozzo D
  rect((4.25, 0.28), (4.63, 0.65), stroke: 1pt)
  rect((4.25, -0.65), (4.63, -0.28), stroke: 1pt)
  rect((4.40, 0.65), (4.48, 2.13), stroke: 0.9pt)
  rect((4.40, -2.13), (4.48, -0.65), stroke: 0.9pt)
  rect((4.30, 1.35), (4.40, 2.13), stroke: 0.9pt)
  rect((4.48, 1.35), (4.58, 2.13), stroke: 0.9pt)
  rect((4.30, -2.13), (4.40, -1.35), stroke: 0.9pt)
  rect((4.48, -2.13), (4.58, -1.35), stroke: 0.9pt)
  line((4.30, 1.35), (4.30, -1.35), stroke: 0.75pt)

  // Contorno Spingidisco B e perni di guida
  rect((4.58, 1.35), (4.95, 2.15), stroke: 1pt)
  rect((4.58, -2.15), (4.95, -1.35), stroke: 1pt)
  line((4.95, 1.35), (4.95, 0.28), stroke: 0.8pt)
  line((4.95, -1.35), (4.95, -0.28), stroke: 0.8pt)
  // Perni guida
  rect((4.95, 1.65), (5.60, 1.88), fill: white, stroke: 0.9pt)
  rect((4.95, -1.88), (5.60, -1.65), fill: white, stroke: 0.9pt)

  // Frecce forza molle spingidisco (punte stealth piene)
  line((5.25, 2.03), (4.97, 2.03), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, 1.48), (4.97, 1.48), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, -1.48), (4.97, -1.48), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, -2.03), (4.97, -2.03), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)

  // ==================== ASSI DI SIMMETRIA ====================
  // Asse orizzontale principale
  line((-2.70, 0), (5.95, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale vista frontale
  line((0, -2.75), (0, 2.95), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale mediano disco D
  line((4.44, -2.75), (4.44, 2.75), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Assi perni spingidisco
  line((4.80, 1.765), (5.75, 1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.80, -1.765), (5.75, -1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // ==================== ETICHETTE E RICHIAMI ====================
  // Etichette componenti principali con fondino per massima leggibilità
  rect((3.84, 1.62), (4.16, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.00, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*A*])

  rect((4.61, 1.62), (4.92, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.765, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*B*])

  rect((4.28, 0.31), (4.60, 0.62), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.44, 0.465), text(size: 11.5pt, fill: rgb("#e60000"))[*D*])

  // Richiamo "campana"
  line((4.95, 2.32), (6.10, 2.68), stroke: 0.6pt)
  content((6.18, 2.70), text(size: 10pt)[_campana_], anchor: "west")

  // Richiamo "spingidisco"
  line((4.82, -1.55), (6.00, -2.35), stroke: 0.6pt)
  content((6.08, -2.38), text(size: 10pt)[_spingidisco_], anchor: "west")
})
],
)

#v(0.6em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Il disco condotto presenta una modesta *deformazione elastica fuori dal piano* (leggera curvatura assiale): man mano che lo spingidisco $B$ avanza comprimendo il disco flessibile contro la flangia $A$, la lamina si appiattisce progressivamente facendo crescere con gradualità l'area di contatto e uniformando la pressione; al rilascio, il ritorno elastico del disco agevola un distacco netto evitando trascinamenti a vuoto. Inoltre, l'ampia superficie esterna esposta rispetto al volume favorisce lo smaltimento del calore verso l'ambiente.
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-05.typ", max-h: 3.4cm)],
)

#v(0.5em)

Poiché il disco frizione è relativamente snello e torsionalmente cedevole — e la coppia erogata dal motore a combustione interna presenta continue fluttuazioni — sulla linea di trasmissione si propagano *vibrazioni torsionali* e strappi. Per assorbirli, il disco non è vincolato rigidamente al mozzo d'uscita ma vi è collegato tramite un *parastrappi* (fino alla soluzione più evoluta del *doppio volano*, introdotta sul mercato da Valeo): la coppia passa prima alla corona d'attrito, poi attraversa un set di *molle elicoidali cilindriche circonferenziali* — spesso abbinate a uno smorzatore ad attrito — e infine raggiunge il mozzo, rendendo l'innesto equivalente a un *giunto elastico torsionalmente cedevole*.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0.8em,
  align: (center + horizon, center + horizon),
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-06.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi su disco frizione])],
  [#fig-safe(image("../../images/innesti/ecm-c13-p1-07.jpg"), max-h: 4.3cm, caption: text(size: 8.5pt, fill: luma(80))[Parastrappi in un doppio volano])]
)

#v(0.5em)

#grid(
  columns: (1.25fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    *Principio dello smorzatore dinamico (modello a 2 masse e risposta in frequenza).* Il funzionamento del doppio volano si comprende immediatamente per analogia con il sistema traslazionale a due masse illustrato a lato:
    - *Sistema a 1 massa:* una massa principale $m_1$ collegata al telaio fisso mediante una molla $k_1$ e uno smorzatore $c_1$ presenta, al variare della pulsazione forzante $omega$, una risposta in frequenza $|X_1(omega)|$ (curva tratteggiata rossa) dominata da un picco di risonanza pronunciato alla frequenza propria $omega_0$, la cui altezza è limitata soltanto dallo smorzamento interno $c_1$.
    - *Aggiunta della massa secondaria (2 masse):* collegando a $m_1$ una seconda massa più piccola $m_2$ tramite un proprio gruppo molla–smorzatore $(k_2, c_2)$, le due masse inizialmente oscillano insieme ma, in prossimità della risonanza $omega_0$, la massa $m_2$ entra in moto in *controfase* rispetto a $m_1$ (spostamento $x_2$ opposto a $x_1$). La forza inerziale così generata da $m_2$ si oppone direttamente all'oscillazione di $m_1$, contenendone lo spostamento.
 
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-smorzatore.typ", max-h: 9.2cm, caption: text(size: 8.5pt, fill: luma(80))[Modello traslazionale a 2 masse e confronto delle curve di risposta in frequenza (FRF): sistema a 1 massa vs smorzatore dinamico / doppio volano.])],
)
   - *Effetto sulla risposta in frequenza (FRF):* nella curva del sistema accoppiato (linea continua blu), il picco singolo in $omega_0$ viene *abbattuto* e sostituito da *due picchi di risonanza laterali* ($omega_1 < omega_0$ e $omega_2 > omega_0$) di ampiezza massima drasticamente inferiore. Lo smorzatore dinamico svolge dunque una doppia azione: *attenua* fortemente il picco vibratorio e *sposta* le frequenze critiche lontano dalla risonanza originaria $omega_0$.
  - *Trasposizione torsionale al doppio volano:* nel dispositivo reale l'unico cambiamento riguarda la natura del moto, da traslazionale a *torsionale*. La massa secondaria $m_2$ è rappresentata dal secondo disco del volano e il collegamento $(k_2, c_2)$ dalle molle elicoidali circonferenziali (e dall'attrito interno): all'insorgere di una vibrazione torsionale, anziché trasmetterla rigidamente, il disco secondario ruota sfasato rispetto al primario comprimendo le molle e smorzando efficacemente le oscillazioni lungo la trasmissione.
==== Innesto multidisco

#grid(
  columns: (1fr, 1.05fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Quando occorre trasmettere *coppie molto elevate*, un innesto monodisco richiederebbe una corona circolare d'attrito di diametro esterno eccessivo, con forte aumento dell'ingombro radiale e perdita di rigidezza (un disco sottile e molto largo diventa flessibile e difficilmente controllabile). La soluzione consiste nel moltiplicare in parallelo le superfici di attrito affiancando più dischi in un *pacco dischi* (in genere fino a un massimo di 12 dischi), ottenendo grande capacità di coppia in un volume molto compatto — caratteristica ideale in applicazioni a spazio ridotto come quelle *motociclistiche*.

    Nel pacco, i *dischi condotti* (rivestiti con materiali ad alto attrito quali fibra di carbonio, bronzo sinterizzato o grafite) sono montati su un *mozzo scanalato scorrevole sotto carico, centrato sui fianchi*, e si alternano a *dischi conduttori* in acciaio incastrati nelle cave interne della *campana* esterna. 
  ],
  [#fig-safe(include "../../figs/innesti/ecm-c13-p1-09.typ", max-h: 10cm, caption: text(size: 8.5pt, fill: luma(80))[In alto: schema generale dell'innesto multidisco (vista frontale e sezione assiale). In basso: semisezione di innesto multidisco a comando elettromagnetico con molle di richiamo.])],
)
Quando il pacco è serrato i due gruppi ruotano solidali trasferendo potenza; rilasciando la pressione i dischi scorrono e ruotano indipendentemente. In ambito motociclistico il serraggio è affidato tipicamente a quattro molle elicoidali agenti su una piastra spingidisco, mentre il disinnesto avviene tramite un'asta spingidisco contrapposta azionata dalla leva al manubrio.

    Alternando dischi piani a dischi leggermente predeformati a *onda sinusoidale* si migliorano la gradualità d'inserimento e il distacco completo a vuoto. Tuttavia, la forte compattezza elimina gli spazi liberi di aerazione tipici del monodisco, ostacolando lo smaltimento termico dai dischi interni: nei multidisco a secco il rischio di *surriscaldamento locale* è quindi elevato e il progetto termico risulta critico; tale limite si supera nei modelli *a bagno d'olio* (a immersione o a circolazione forzata). Oltre ai comandi meccanici, idraulici o pneumatici, l'attuazione può essere *elettromagnetica* (figura in basso): alimentando la bobina (`+` / `−`), l'elettromagnete richiama l'ancora mobile serrando lo spingidisco contro il pacco dischi; interrompendo la corrente, le *molle* di richiamo riportano lo spingidisco in posizione aperta.

#v(0.5em)

Una soluzione classica, largamente impiegata sui veicoli terrestri, è l'innesto multidisco a *comando meccanico a leva* (sezioni #box[$A$–$A$] e #box[$B$–$B$] in figura): nel mozzo scanalato sono ricavate tre tasche radiali a 120° (visibili in #box[$B$–$B$]) che alloggiano altrettante *leve* incernierate su un perno di fulcro. Una forcella esterna (non rappresentata) impegna la gola circonferenziale della *slitta* facendola scorrere assialmente lungo l'albero verso il pacco dischi (verso sinistra in #box[$A$–$A$]): l'estremità destra della leva scivola lungo il *profilo curvilineo raccordato* della slitta e si abbassa infossandosi all'interno della propria sede. Ruotando attorno al fulcro, il piede curvo sinistro della leva viene portato a contatto e premuto contro lo *spingidisco* mobile, serrando l'intero pacco dischi contro l'anello di battuta imbullonato a destra; facendo arretrare la slitta, la leva rientra in posizione di riposo liberando lo spingidisco e aprendo l'innesto.

#align(center)[
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // ========================
  // PANNELLO SINISTRO: SEZIONE B-B
  // Centro: (-3.6, 0.0)
  // ========================

  // Corona esterna del tamburo sezionata (tra R = 1.98 e R = 2.35)
  circle((-3.6, 0.0), radius: 2.35, fill: luma(220), stroke: none)
  circle((-3.6, 0.0), radius: 1.98, fill: white, stroke: none)

  // Flangia esterna e circonferenza asse bulloni
  circle((-3.6, 0.0), radius: 2.80, stroke: 1.1pt)
  circle((-3.6, 0.0), radius: 2.35, stroke: 1.1pt)
  circle((-3.6, 0.0), radius: 2.57, stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // 8 fori bulloni sulla flangia esterna (R = 2.57, ogni 45°)
  // 0°: (-1.03, 0.0)
  circle((-1.03, 0.0), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.03, 0.0), radius: 0.11, stroke: 0.7pt)
  // 45°: (-1.78, 1.82)
  circle((-1.78, 1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.78, 1.82), radius: 0.11, stroke: 0.7pt)
  // 90°: (-3.60, 2.57)
  circle((-3.60, 2.57), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-3.60, 2.57), radius: 0.11, stroke: 0.7pt)
  // 135°: (-5.42, 1.82)
  circle((-5.42, 1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-5.42, 1.82), radius: 0.11, stroke: 0.7pt)
  // 180°: (-6.17, 0.0)
  circle((-6.17, 0.0), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-6.17, 0.0), radius: 0.11, stroke: 0.7pt)
  // 225°: (-5.42, -1.82)
  circle((-5.42, -1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-5.42, -1.82), radius: 0.11, stroke: 0.7pt)
  // 270°: (-3.60, -2.57)
  circle((-3.60, -2.57), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-3.60, -2.57), radius: 0.11, stroke: 0.7pt)
  // 315°: (-1.78, -1.82)
  circle((-1.78, -1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.78, -1.82), radius: 0.11, stroke: 0.7pt)

  // Assi radiali a 45° sui fori bulloni
  line((-2.12, 1.48), (-1.42, 2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-5.08, 1.48), (-5.78, 2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-5.08, -1.48), (-5.78, -2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-2.12, -1.48), (-1.42, -2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Tratteggio a 45° sulla corona esterna sezionata (R da 1.98 a 2.35)
  line((-5.82, 0.58), (-4.98, 1.42), stroke: 0.45pt)
  line((-5.92, 0.18), (-5.56, 0.54), stroke: 0.45pt)
  line((-4.86, 1.54), (-4.24, 2.16), stroke: 0.45pt)
  line((-5.94, -0.20), (-5.58, 0.16), stroke: 0.45pt)
  line((-4.34, 1.76), (-3.80, 2.30), stroke: 0.45pt)
  line((-5.86, -0.58), (-5.50, -0.22), stroke: 0.45pt)
  line((-3.40, 1.98), (-3.06, 2.32), stroke: 0.45pt)
  line((-5.72, -0.96), (-5.38, -0.62), stroke: 0.45pt)
  line((-3.00, 1.90), (-2.68, 2.22), stroke: 0.45pt)
  line((-5.50, -1.36), (-5.12, -0.98), stroke: 0.45pt)
  line((-2.62, 1.72), (-2.32, 2.02), stroke: 0.45pt)
  line((-5.20, -1.72), (-4.75, -1.27), stroke: 0.45pt)
  line((-2.28, 1.45), (-1.98, 1.75), stroke: 0.45pt)
  line((-4.80, -2.02), (-4.25, -1.47), stroke: 0.45pt)
  line((-1.98, 1.10), (-1.68, 1.40), stroke: 0.45pt)
  line((-4.30, -2.22), (-3.82, -1.74), stroke: 0.45pt)
  line((-1.75, 0.65), (-1.42, 0.98), stroke: 0.45pt)
  line((-3.40, -2.32), (-2.95, -1.87), stroke: 0.45pt)
  line((-1.64, 0.15), (-1.28, 0.51), stroke: 0.45pt)
  line((-2.85, -2.18), (-1.45, -0.78), stroke: 0.45pt)
  line((-2.25, -1.88), (-1.30, -0.93), stroke: 0.45pt)

  // Circonferenze del vano dischi (R = 1.98 esterna, R = 1.91 profilo dischi, R = 1.52 interna)
  circle((-3.6, 0.0), radius: 1.98, stroke: 1pt)
  circle((-3.6, 0.0), radius: 1.91, stroke: 0.8pt)
  circle((-3.6, 0.0), radius: 1.52, stroke: 0.9pt)

  // 6 cave rettangolari nel tamburo con denti dei dischi esterni (radiali, centrati a 90°, 270°, 30°, 150°, 210°, 330°)
  // 90° (alto, da R=1.91 a R=2.15, mezza larghezza w=0.19)
  line((-3.79, 1.91), (-3.79, 2.15), (-3.41, 2.15), (-3.41, 1.91), close: true, fill: white, stroke: 0.95pt)
  line((-3.79, 2.08), (-3.41, 2.08), stroke: 0.75pt)
  // 270° (basso)
  line((-3.79, -1.91), (-3.79, -2.15), (-3.41, -2.15), (-3.41, -1.91), close: true, fill: white, stroke: 0.95pt)
  line((-3.79, -2.08), (-3.41, -2.08), stroke: 0.75pt)
  // 30° (alto-destra: u=(0.866, 0.5), v=(-0.5, 0.866))
  line((-1.85, 1.12), (-1.64, 1.24), (-1.83, 0.91), (-2.04, 0.79), close: true, fill: white, stroke: 0.95pt)
  line((-1.70, 1.21), (-1.89, 0.88), stroke: 0.75pt)
  // 150° (alto-sinistra: u=(-0.866, 0.5), v=(-0.5, -0.866))
  line((-5.35, 1.12), (-5.56, 1.24), (-5.37, 0.91), (-5.16, 0.79), close: true, fill: white, stroke: 0.95pt)
  line((-5.50, 1.21), (-5.31, 0.88), stroke: 0.75pt)
  // 210° (basso-sinistra: u=(-0.866, -0.5))
  line((-5.35, -1.12), (-5.56, -1.24), (-5.37, -0.91), (-5.16, -0.79), close: true, fill: white, stroke: 0.95pt)
  line((-5.50, -1.21), (-5.31, -0.88), stroke: 0.75pt)
  // 330° (basso-destra: u=(0.866, -0.5))
  line((-1.85, -1.12), (-1.64, -1.24), (-1.83, -0.91), (-2.04, -0.79), close: true, fill: white, stroke: 0.95pt)
  line((-1.70, -1.21), (-1.89, -0.88), stroke: 0.75pt)

  // Doppie linee perfettamente parallele ai raggi (0°, 60°, 120°, 180°, 240°, 300°, tra R=1.52 e R=1.91, offset ±0.035)
  // 0°: u=(1, 0), v=(0, 1)
  line((-2.080, 0.035), (-1.690, 0.035), stroke: 0.8pt)
  line((-2.080, -0.035), (-1.690, -0.035), stroke: 0.8pt)
  // 180°: u=(-1, 0), v=(0, -1)
  line((-5.120, 0.035), (-5.510, 0.035), stroke: 0.8pt)
  line((-5.120, -0.035), (-5.510, -0.035), stroke: 0.8pt)
  // 60°: u=(0.5, 0.866), v=(-0.866, 0.5)
  line((-2.870, 1.334), (-2.675, 1.672), stroke: 0.8pt)
  line((-2.810, 1.299), (-2.615, 1.637), stroke: 0.8pt)
  // 120°: u=(-0.5, 0.866), v=(-0.866, -0.5)
  line((-4.330, 1.334), (-4.525, 1.672), stroke: 0.8pt)
  line((-4.390, 1.299), (-4.585, 1.637), stroke: 0.8pt)
  // 240°: u=(-0.5, -0.866), v=(0.866, -0.5)
  line((-4.330, -1.334), (-4.525, -1.672), stroke: 0.8pt)
  line((-4.390, -1.299), (-4.585, -1.637), stroke: 0.8pt)
  // 300°: u=(0.5, -0.866), v=(0.866, 0.5)
  line((-2.870, -1.334), (-2.675, -1.672), stroke: 0.8pt)
  line((-2.810, -1.299), (-2.615, -1.637), stroke: 0.8pt)

  // Mozzo interno scanalato: 15 denti con fianchi rettilinei rigorosamente paralleli al raggio medio di ciascun dente (larghezza costante 2w=0.22, da R=1.38 a R=1.52)
  line(
    // Dente 10°: u=(0.9848, 0.1736), v=(-0.1736, 0.9848)
    (-2.222, 0.131), (-2.084, 0.156), (-2.122, 0.372), (-2.260, 0.348),
    // Dente 30°: u=(0.8660, 0.5000), v=(-0.5000, 0.8660)
    (-2.350, 0.595), (-2.229, 0.665), (-2.339, 0.855), (-2.460, 0.785),
    // Dente 50°: u=(0.6428, 0.7660), v=(-0.7660, 0.6428)
    (-2.629, 0.986), (-2.539, 1.094), (-2.707, 1.235), (-2.797, 1.128),
    // Dente 70°: u=(0.3420, 0.9397), v=(-0.9397, 0.3420)
    (-3.025, 1.259), (-2.977, 1.391), (-3.183, 1.466), (-3.231, 1.334),
    // Passaggio cava superiore 90° (a R=1.38)
    (-3.470, 1.380), (-3.730, 1.380),
    // Dente 110°: u=(-0.3420, 0.9397), v=(-0.9397, -0.3420)
    (-3.969, 1.334), (-4.017, 1.466), (-4.223, 1.391), (-4.175, 1.259),
    // Dente 130°: u=(-0.6428, 0.7660), v=(-0.7660, -0.6428)
    (-4.403, 1.128), (-4.493, 1.235), (-4.661, 1.094), (-4.571, 0.986),
    // Dente 150°: u=(-0.8660, 0.5000), v=(-0.5000, -0.8660)
    (-4.740, 0.785), (-4.861, 0.855), (-4.971, 0.665), (-4.850, 0.595),
    // Dente 170°: u=(-0.9848, 0.1736), v=(-0.1736, -0.9848)
    (-4.940, 0.348), (-5.078, 0.372), (-5.116, 0.156), (-4.978, 0.131),
    // Dente 190°: u=(-0.9848, -0.1736), v=(0.1736, -0.9848)
    (-4.978, -0.131), (-5.116, -0.156), (-5.078, -0.372), (-4.940, -0.348),
    // Passaggio cava 210° (a R=1.38)
    (-4.860, -0.578), (-4.730, -0.803),
    // Dente 230°: u=(-0.6428, -0.7660), v=(0.7660, -0.6428)
    (-4.571, -0.986), (-4.661, -1.094), (-4.493, -1.235), (-4.403, -1.128),
    // Dente 250°: u=(-0.3420, -0.9397), v=(0.9397, -0.3420)
    (-4.175, -1.259), (-4.223, -1.391), (-4.017, -1.466), (-3.969, -1.334),
    // Dente 270°: u=(0.0, -1.0), v=(1.0, 0.0)
    (-3.710, -1.380), (-3.710, -1.520), (-3.490, -1.520), (-3.490, -1.380),
    // Dente 290°: u=(0.3420, -0.9397), v=(0.9397, 0.3420)
    (-3.231, -1.334), (-3.183, -1.466), (-2.977, -1.391), (-3.025, -1.259),
    // Dente 310°: u=(0.6428, -0.7660), v=(0.7660, 0.6428)
    (-2.797, -1.128), (-2.707, -1.235), (-2.539, -1.094), (-2.629, -0.986),
    // Passaggio cava 330° (a R=1.38)
    (-2.470, -0.803), (-2.340, -0.578),
    // Dente 350°: u=(0.9848, -0.1736), v=(0.1736, 0.9848)
    (-2.260, -0.348), (-2.122, -0.372), (-2.084, -0.156), (-2.222, -0.131),
    close: true, fill: luma(220), stroke: 0.95pt
  )

  // Tratteggio sul mozzo interno sezionato
  line((-4.85, 0.25), (-4.05, 1.05), stroke: 0.45pt)
  line((-4.92, -0.15), (-4.32, 0.45), stroke: 0.45pt)
  line((-4.25, 0.52), (-3.75, 1.02), stroke: 0.45pt)
  line((-4.42, -0.85), (-3.92, -0.35), stroke: 0.45pt)
  line((-3.45, 0.65), (-3.02, 1.08), stroke: 0.45pt)
  line((-4.15, -1.15), (-3.35, -0.35), stroke: 0.45pt)
  line((-3.80, -1.28), (-2.85, -0.33), stroke: 0.45pt)
  line((-2.88, 0.05), (-2.38, 0.55), stroke: 0.45pt)
  line((-3.35, -1.32), (-2.75, -0.72), stroke: 0.45pt)
  line((-2.88, -0.35), (-2.28, 0.25), stroke: 0.45pt)

  // 3 sedi radiali profonde per le chiavette/leve (a 90°, 210°, 330°, fianchi perfettamente paralleli ai rispettivi raggi da R=0.95 a R=1.38, mezza larghezza w=0.13, tassello grigio nella parte esterna da R=1.16 a R=1.38)
  // 90°: u=(0, 1), v=(-1, 0)
  line((-3.730, 0.950), (-3.730, 1.380), (-3.470, 1.380), (-3.470, 0.950), close: true, fill: white, stroke: 0.95pt)
  line((-3.730, 1.160), (-3.730, 1.380), (-3.470, 1.380), (-3.470, 1.160), close: true, fill: luma(165), stroke: 0.95pt)
  // 210°: u=(-0.8660, -0.5000), v=(0.5000, -0.8660)
  line((-4.358, -0.588), (-4.730, -0.803), (-4.860, -0.577), (-4.488, -0.362), close: true, fill: white, stroke: 0.95pt)
  line((-4.540, -0.693), (-4.730, -0.803), (-4.860, -0.577), (-4.670, -0.467), close: true, fill: luma(165), stroke: 0.95pt)
  // 330°: u=(0.8660, -0.5000), v=(0.5000, 0.8660)
  line((-2.712, -0.362), (-2.340, -0.577), (-2.470, -0.803), (-2.842, -0.588), close: true, fill: white, stroke: 0.95pt)
  line((-2.530, -0.467), (-2.340, -0.577), (-2.470, -0.803), (-2.660, -0.693), close: true, fill: luma(165), stroke: 0.95pt)

  // Foro centrale dell'albero (R = 0.72) con sede per linguetta a 30°:
  // Fianchi rigorosamente paralleli al raggio di 30° u=(0.8660, 0.5000), v=(-0.5000, 0.8660), mezza larghezza w=0.13
  // Intersezione col cerchio R=0.72 (a r_base = sqrt(0.72^2 - 0.13^2) = 0.7082, angoli 30° ± 10.4° = 19.6° e 40.4°):
  // P1(19.6°) = (-2.922, 0.242), P4(40.4°) = (-3.052, 0.467)
  // Fondo cava ortogonale al raggio 30° a r_fondo = 0.86:
  // P2 = (-2.790, 0.317), P3 = (-2.920, 0.543)
  circle((-3.6, 0.0), radius: 0.72, fill: white, stroke: none)
  line((-2.922, 0.242), (-2.790, 0.317), (-2.920, 0.543), (-3.052, 0.467), close: true, fill: white, stroke: none)
  arc((-3.6, 0.0), start: 40.4deg, stop: 379.6deg, radius: 0.72, anchor: "origin", stroke: 1.1pt)
  line((-3.052, 0.467), (-2.920, 0.543), (-2.790, 0.317), (-2.922, 0.242), stroke: 1.1pt)

  // Assi di simmetria e linea di sezione A-A
  line((-6.75, 0.0), (-0.45, 0.0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-3.6, -3.65), (-3.6, 3.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Frecce di sezione A-A (in alto e in basso sul pannello sinistro)
  line((-3.6, 3.35), (-3.6, 3.72), stroke: 0.9pt)
  line((-3.6, 3.65), (-3.10, 3.65), mark: (end: ">"), stroke: 0.85pt)
  content((-3.72, 3.65), text(size: 9pt)[$A$], anchor: "east")

  line((-3.6, -3.35), (-3.6, -3.72), stroke: 0.9pt)
  line((-3.6, -3.65), (-3.10, -3.65), mark: (end: ">"), stroke: 0.85pt)
  content((-3.72, -3.65), text(size: 9pt)[$A$], anchor: "east")

  // Titolo B-B
  content((-5.75, 2.95), text(size: 9.5pt)[$B - B$], anchor: "south")


  // ========================
  // PANNELLO DESTRO: SEZIONE A-A
  // Asse orizzontale y = 0.0, da x = 0.8 a x = 5.8
  // ========================

  // --- META SUPERIORE (y > 0) ---

  // Mozzo interno sezionato superiore (con spalla sinistra porta-perno x = 1.40..1.54)
  line((1.40, 0.72), (5.55, 0.72), (5.55, 1.12), (4.65, 1.12), (4.50, 0.95), (1.54, 0.95), (1.54, 1.42), (1.40, 1.42), close: true, fill: luma(220), stroke: 1pt)

  // Tratteggio sezione mozzo superiore
  line((1.50, 0.72), (1.73, 0.95), stroke: 0.45pt)
  line((1.80, 0.72), (2.03, 0.95), stroke: 0.45pt)
  line((2.10, 0.72), (2.33, 0.95), stroke: 0.45pt)
  line((2.40, 0.72), (2.63, 0.95), stroke: 0.45pt)
  line((2.70, 0.72), (2.93, 0.95), stroke: 0.45pt)
  line((3.00, 0.72), (3.23, 0.95), stroke: 0.45pt)
  line((3.30, 0.72), (3.53, 0.95), stroke: 0.45pt)
  line((3.60, 0.72), (3.83, 0.95), stroke: 0.45pt)
  line((3.90, 0.72), (4.13, 0.95), stroke: 0.45pt)
  line((4.20, 0.72), (4.43, 0.95), stroke: 0.45pt)
  line((4.50, 0.72), (4.90, 1.12), stroke: 0.45pt)
  line((4.80, 0.72), (5.20, 1.12), stroke: 0.45pt)
  line((5.10, 0.72), (5.50, 1.12), stroke: 0.45pt)

  // Linee di fondo della cava leva e scanalatura superiore (x da 1.54 a 3.62)
  line((1.54, 1.38), (3.62, 1.38), stroke: 0.85pt)
  line((1.54, 1.52), (1.88, 1.52), stroke: 0.85pt)
  line((3.52, 1.38), (3.62, 1.38), (3.62, 1.18), stroke: 0.9pt)

  // Carcassa / flangia esterna superiore (da x = 1.50 a x = 3.25)
  line((1.50, 2.80), (1.68, 2.80), (1.68, 2.35), (3.25, 2.35), (3.25, 2.15), (2.12, 2.15), (2.12, 1.98), (1.80, 1.98), (1.80, 1.86), (1.50, 1.86), close: true, fill: luma(220), stroke: 1pt)
  // Foro bullone flangia sinistra in alto
  line((1.50, 2.46), (1.68, 2.46), (1.68, 2.68), (1.50, 2.68), close: true, fill: white, stroke: 0.9pt)
  line((1.15, 2.57), (1.92, 2.57), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Tratteggio carcassa superiore
  line((1.52, 1.92), (1.78, 2.18), stroke: 0.45pt)
  line((1.62, 2.22), (1.75, 2.35), stroke: 0.45pt)
  line((1.88, 1.98), (2.25, 2.35), stroke: 0.45pt)
  line((2.28, 2.15), (2.48, 2.35), stroke: 0.45pt)
  line((2.55, 2.15), (2.75, 2.35), stroke: 0.45pt)
  line((2.82, 2.15), (3.02, 2.35), stroke: 0.45pt)

  // Pacco dischi frizione superiore (x da 2.12 a 2.98, corpo tra y = 1.52 e y = 1.98, denti fino a 1.38 e 2.15)
  line((2.12, 1.38), (2.98, 1.38), (2.98, 2.15), (2.12, 2.15), close: true, fill: luma(195), stroke: 0.95pt)
  line((2.12, 1.98), (2.98, 1.98), stroke: 0.75pt)
  line((2.12, 1.52), (2.98, 1.52), stroke: 0.75pt)
  // Lamelle verticali dei dischi frizione
  line((2.20, 1.38), (2.20, 2.15), stroke: 0.6pt)
  line((2.28, 1.38), (2.28, 2.15), stroke: 0.6pt)
  line((2.36, 1.38), (2.36, 2.15), stroke: 0.6pt)
  line((2.44, 1.38), (2.44, 2.15), stroke: 0.6pt)
  line((2.52, 1.38), (2.52, 2.15), stroke: 0.6pt)
  line((2.60, 1.38), (2.60, 2.15), stroke: 0.6pt)
  line((2.68, 1.38), (2.68, 2.15), stroke: 0.6pt)
  line((2.76, 1.38), (2.76, 2.15), stroke: 0.6pt)
  line((2.84, 1.38), (2.84, 2.15), stroke: 0.6pt)
  line((2.92, 1.38), (2.92, 2.15), stroke: 0.6pt)

  // Anello spingidisco sinistro (x da 1.88 a 2.12, y da 1.38 a 1.98)
  line((1.88, 1.38), (2.12, 1.38), (2.12, 1.98), (1.88, 1.98), close: true, fill: luma(225), stroke: 0.95pt)
  line((1.88, 1.48), (2.12, 1.72), stroke: 0.45pt)
  line((1.88, 1.72), (2.12, 1.96), stroke: 0.45pt)

  // Piattello/ghiera di chiusura destra del pacco dischi con bulloni (x da 2.98 a 3.52)
  line((2.98, 1.38), (3.52, 1.38), (3.52, 1.85), (3.25, 1.85), (3.25, 2.15), (2.98, 2.15), close: true, fill: luma(225), stroke: 0.95pt)
  // Bullone superiore esterno (y = 2.24)
  line((2.80, 2.19), (3.35, 2.19), (3.35, 2.29), (2.80, 2.29), close: true, fill: white, stroke: 0.75pt)
  line((3.25, 2.15), (3.36, 2.15), (3.36, 2.33), (3.25, 2.33), close: true, fill: white, stroke: 0.8pt)
  // Bullone intermedio di registro (y = 1.65)
  line((3.02, 1.58), (3.68, 1.58), (3.68, 1.72), (3.02, 1.72), close: true, fill: white, stroke: 0.8pt)
  line((3.52, 1.52), (3.68, 1.52), (3.68, 1.78), (3.52, 1.78), close: true, fill: white, stroke: 0.85pt)
  line((2.92, 1.65), (3.78, 1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Leva di comando (bilanciere) alloggiata nella cava superiore
  line(
    (1.56, 1.02), (1.58, 1.25), (1.74, 1.82), (1.86, 1.78), (1.88, 1.66),
    (1.78, 1.32), (1.84, 1.22), (2.85, 1.18), (4.35, 1.18), (4.65, 1.12),
    (4.45, 0.98), (4.15, 0.95), (1.66, 0.95),
    close: true, fill: white, stroke: 1.05pt
  )
  // Perno di fulcro della leva
  circle((1.67, 1.08), radius: 0.08, fill: white, stroke: 0.9pt)
  // Nervatura longitudinale della leva
  line((1.78, 1.04), (4.18, 1.04), (4.52, 1.12), stroke: 0.75pt)

  // Manicotto scorrevole d'innesto superiore (con rampa conica interna a sinistra, x da 3.78 a 4.98)
  line(
    (3.78, 1.36), (3.78, 1.60), (4.05, 1.60), (4.05, 1.36),
    (4.70, 1.36), (4.70, 1.60), (4.98, 1.60), (4.98, 1.12),
    (4.12, 1.12), (3.92, 1.22),
    close: true, fill: luma(220), stroke: 1pt
  )
  // Tratteggio del manicotto scorrevole superiore
  line((3.80, 1.32), (4.05, 1.57), stroke: 0.45pt)
  line((3.96, 1.20), (4.12, 1.36), stroke: 0.45pt)
  line((4.14, 1.12), (4.38, 1.36), stroke: 0.45pt)
  line((4.40, 1.12), (4.64, 1.36), stroke: 0.45pt)
  line((4.66, 1.12), (4.98, 1.44), stroke: 0.45pt)
  line((4.70, 1.42), (4.88, 1.60), stroke: 0.45pt)


  // --- META INFERIORE (y < 0) ---

  // Mozzo interno inferiore sezionato (a 270° non c'è cava leva, quindi pieno fino a y = -1.38 / -1.52)
  line((1.40, -0.72), (5.55, -0.72), (5.55, -1.12), (3.62, -1.12), (3.62, -1.38), (1.40, -1.38), close: true, fill: luma(220), stroke: 1pt)
  // Dente scanalato inferiore visibile da x = 1.54 a x = 3.52 (tra y = -1.38 e y = -1.52)
  line((1.54, -1.38), (1.54, -1.52), (1.88, -1.52), stroke: 0.85pt)
  // Tratteggio sezione mozzo inferiore
  line((1.45, -1.38), (2.11, -0.72), stroke: 0.45pt)
  line((1.75, -1.38), (2.41, -0.72), stroke: 0.45pt)
  line((2.05, -1.38), (2.71, -0.72), stroke: 0.45pt)
  line((2.35, -1.38), (3.01, -0.72), stroke: 0.45pt)
  line((2.65, -1.38), (3.31, -0.72), stroke: 0.45pt)
  line((2.95, -1.38), (3.61, -0.72), stroke: 0.45pt)
  line((3.25, -1.38), (3.91, -0.72), stroke: 0.45pt)
  line((3.81, -1.12), (4.21, -0.72), stroke: 0.45pt)
  line((4.11, -1.12), (4.51, -0.72), stroke: 0.45pt)
  line((4.41, -1.12), (4.81, -0.72), stroke: 0.45pt)
  line((4.71, -1.12), (5.11, -0.72), stroke: 0.45pt)
  line((5.01, -1.12), (5.41, -0.72), stroke: 0.45pt)

  // Carcassa / flangia esterna inferiore
  line((1.50, -2.80), (1.68, -2.80), (1.68, -2.35), (3.25, -2.35), (3.25, -2.15), (2.12, -2.15), (2.12, -1.98), (1.80, -1.98), (1.80, -1.86), (1.50, -1.86), close: true, fill: luma(220), stroke: 1pt)
  // Foro bullone flangia sinistra in basso
  line((1.50, -2.46), (1.68, -2.46), (1.68, -2.68), (1.50, -2.68), close: true, fill: white, stroke: 0.9pt)
  line((1.15, -2.57), (1.92, -2.57), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Tratteggio carcassa inferiore
  line((1.52, -2.18), (1.78, -1.92), stroke: 0.45pt)
  line((1.62, -2.35), (1.75, -2.22), stroke: 0.45pt)
  line((1.88, -2.35), (2.25, -1.98), stroke: 0.45pt)
  line((2.28, -2.35), (2.48, -2.15), stroke: 0.45pt)
  line((2.55, -2.35), (2.75, -2.15), stroke: 0.45pt)
  line((2.82, -2.35), (3.02, -2.15), stroke: 0.45pt)

  // Pacco dischi frizione inferiore (x da 2.12 a 2.98, y da -1.38 a -2.15)
  line((2.12, -1.38), (2.98, -1.38), (2.98, -2.15), (2.12, -2.15), close: true, fill: luma(195), stroke: 0.95pt)
  line((2.12, -1.98), (2.98, -1.98), stroke: 0.75pt)
  line((2.12, -1.52), (2.98, -1.52), stroke: 0.75pt)
  line((2.20, -1.38), (2.20, -2.15), stroke: 0.6pt)
  line((2.28, -1.38), (2.28, -2.15), stroke: 0.6pt)
  line((2.36, -1.38), (2.36, -2.15), stroke: 0.6pt)
  line((2.44, -1.38), (2.44, -2.15), stroke: 0.6pt)
  line((2.52, -1.38), (2.52, -2.15), stroke: 0.6pt)
  line((2.60, -1.38), (2.60, -2.15), stroke: 0.6pt)
  line((2.68, -1.38), (2.68, -2.15), stroke: 0.6pt)
  line((2.76, -1.38), (2.76, -2.15), stroke: 0.6pt)
  line((2.84, -1.38), (2.84, -2.15), stroke: 0.6pt)
  line((2.92, -1.38), (2.92, -2.15), stroke: 0.6pt)

  // Anello spingidisco inferiore sinistro
  line((1.88, -1.38), (2.12, -1.38), (2.12, -1.98), (1.88, -1.98), close: true, fill: luma(225), stroke: 0.95pt)
  line((1.88, -1.72), (2.12, -1.48), stroke: 0.45pt)
  line((1.88, -1.96), (2.12, -1.72), stroke: 0.45pt)

  // Piattello/ghiera di chiusura inferiore destra con bulloni
  line((2.98, -1.38), (3.52, -1.38), (3.52, -1.85), (3.25, -1.85), (3.25, -2.15), (2.98, -2.15), close: true, fill: luma(225), stroke: 0.95pt)
  // Bullone inferiore esterno
  line((2.80, -2.19), (3.35, -2.19), (3.35, -2.29), (2.80, -2.29), close: true, fill: white, stroke: 0.75pt)
  line((3.25, -2.15), (3.36, -2.15), (3.36, -2.33), (3.25, -2.33), close: true, fill: white, stroke: 0.8pt)
  // Bullone inferiore intermedio
  line((3.02, -1.58), (3.68, -1.58), (3.68, -1.72), (3.02, -1.72), close: true, fill: white, stroke: 0.8pt)
  line((3.52, -1.52), (3.68, -1.52), (3.68, -1.78), (3.52, -1.78), close: true, fill: white, stroke: 0.85pt)
  line((2.92, -1.65), (3.78, -1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Manicotto scorrevole d'innesto inferiore (con invito conico a sinistra)
  line(
    (3.78, -1.36), (3.78, -1.60), (4.05, -1.60), (4.05, -1.36),
    (4.70, -1.36), (4.70, -1.60), (4.98, -1.60), (4.98, -1.12),
    (4.12, -1.12), (3.92, -1.22),
    close: true, fill: luma(220), stroke: 1pt
  )
  line((3.80, -1.57), (4.05, -1.32), stroke: 0.45pt)
  line((3.96, -1.36), (4.12, -1.20), stroke: 0.45pt)
  line((4.14, -1.36), (4.38, -1.12), stroke: 0.45pt)
  line((4.40, -1.36), (4.64, -1.12), stroke: 0.45pt)
  line((4.66, -1.44), (4.98, -1.12), stroke: 0.45pt)
  line((4.70, -1.60), (4.88, -1.42), stroke: 0.45pt)

  // Posizione traslata del manicotto (in tratteggio fantasma a destra, sopra e sotto)
  line((4.98, 1.60), (5.18, 1.60), (5.18, 1.12), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.05, 1.60), (4.26, 1.60), (4.26, 1.36), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.98, -1.60), (5.18, -1.60), (5.18, -1.12), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.05, -1.60), (4.26, -1.60), (4.26, -1.36), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Contorno del foro centrale e cava per linguetta vista in sezione longitudinale (quote y allineate a P3.y=0.543 e P1.y=0.242)
  line((1.40, 0.72), (1.40, -0.72), stroke: 1pt)
  line((5.55, 0.72), (5.55, -0.72), stroke: 1pt)
  line((1.40, 0.543), (5.55, 0.543), stroke: 0.85pt)
  line((1.40, 0.242), (5.55, 0.242), stroke: 0.75pt)
  line((1.40, 1.86), (1.40, 1.42), stroke: 0.9pt)
  line((1.40, -1.86), (1.40, -1.38), stroke: 0.9pt)

  // Profilo fantasma del coperchio/accoppiamento sinistro a tratto-punto
  line((1.05, 2.80), (1.50, 2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.35, 2.80), (1.35, -2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.05, -2.80), (1.50, -2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Asse principale orizzontale della sezione A-A
  line((0.95, 0.0), (5.85, 0.0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Linea di sezione verticale B-B (x = 2.52)
  line((2.52, -3.65), (2.52, 3.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Frecce di sezione B-B (verso sinistra)
  line((2.52, 3.35), (2.52, 3.72), stroke: 0.9pt)
  line((2.52, 3.65), (2.02, 3.65), mark: (end: ">"), stroke: 0.85pt)
  content((2.64, 3.65), text(size: 9pt)[$B$], anchor: "west")

  line((2.52, -3.35), (2.52, -3.72), stroke: 0.9pt)
  line((2.52, -3.65), (2.02, -3.65), mark: (end: ">"), stroke: 0.85pt)
  content((2.64, -3.65), text(size: 9pt)[$B$], anchor: "west")

  // Titolo A-A
  content((3.55, 2.95), text(size: 9.5pt)[$A - A$], anchor: "south")

  // Indicatore di movimento bidirezionale con ellisse rossa tratteggiata (sopra il manicotto scorrevole)
  line((4.10, 1.92), (4.92, 1.92), mark: (start: ">", end: ">"), stroke: 0.85pt)
  circle((4.51, 1.92), radius: 0.05, fill: black, stroke: none)
  circle((4.51, 1.92), radius: (0.62, 0.28), stroke: (paint: red, thickness: 1.3pt, dash: "dashed"))
})
[Innesto a frizione multidisco a comando meccanico a leva: sezione trasversale #box[$B$–$B$] e sezione assiale #box[$A$–$A$].])
]
