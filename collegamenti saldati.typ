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
#pagebreak()
=== Architettura delle tecnologie principali di saldatura
Una prima classificazione generale distingue tra #strong[saldatura autogena] (in cui il materiale base partecipa alla fusione o subisce un passaggio di stato/giunzione sotto elevata pressione) e #strong[saldatura eterogenea].

Le principali tecnologie si articolano come segue:
#grid(
  columns: 2,
  gutter: 1em,
  [- #strong[Saldatura autogena per fusione]:
    - #emph[alla fiamma] (ossiacetilenica, ossidrica, ecc., molto diffusa anche nelle operazioni di manutenzione degli impianti);
    - #emph[ad arco]: con elettrodi rivestiti; con elettrodo infusibile in atmosfera inerte (TIG); ad arco sommerso; a filo continuo (in atmosfera inerte MIG, in atmosfera attiva MAG, oppure senza protezione di gas); a elettrogas; al plasma;
    - #emph[ad elettroscoria], #emph[alluminotermica], #emph[a fascio elettronico];, #emph[a laser].],
  [- #strong[Saldatura autogena per pressione]:
    - #emph[a fuoco] (bollitura);
    - #emph[elettrica]: a resistenza (a punti, a rilievi, a rulli, di testa), a scintillio, a induzione;
    - #emph[ad attrito];
    - #emph[a esplosione];
    - #emph[a ultrasuoni].],
)

- #strong[Saldatura eterogenea]:
  - #emph[brasatura capillare] (alla fiamma, elettrica a resistenza, a induzione);
  - #emph[saldobrasatura] (alla fiamma, all'arco).

Nell'analisi di queste tecnologie, due aspetti risultano cruciali per la qualità del giunto: la presenza di una #strong[protezione della zona di saldatura] per impedire l'ingresso di gas atmosferici (causa di difetti interni) e la tendenza del processo e del materiale d'apporto a generare #strong[cricche a caldo o a freddo]. Mentre difetti quali imperfette incollature, porosità o soffiature possono essere parzialmente tollerati se di dimensioni ridotte e sufficientemente distribuiti, le cricche — soprattutto se emergenti — non sono tollerate poiché rappresentano già la nucleazione di un danneggiamento in grado di propagare rapidamente verso la rottura.

=== Saldatura per fusione
La saldatura per fusione ad arco è ampiamente utilizzata nelle costruzioni di carpenteria e nei recipienti in pressione, con procedure e tipi di giunti codificati dalle norme UNI 1307/1 e UNI 1307/2. Il calore necessario alla fusione è fornito da uno o più archi elettrici che scoccano tra l'elettrodo e i pezzi di materiale base; il processo si effettua senza intervento di pressione, con o senza aggiunta di materiale d'apporto.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Questo procedimento provoca la fusione localizzata del materiale base in corrispondenza del cianfrino, generando nelle regioni immediatamente adiacenti una #strong[zona termicamente alterata (ZTA)] in cui il ciclo termico modifica le proprietà del materiale e altera lo stato di tensione.],[#canvas(length: 1cm, {
  import draw: *

  // Profili della zona fusa (cono) e dei bordi organici della ZTA
  let x-fus(t) = 0.20 + 0.70 * calc.pow(t, 0.78) + 0.05 * calc.sin(t * calc.pi)
  let x-haz-l(t) = -(0.52 + 1.03 * calc.pow(t, 0.68) + 0.045 * calc.sin(t * 2.3 * calc.pi) - 0.02 * calc.cos(t * 4.1 * calc.pi))
  let x-haz-r(t) = 0.50 + 1.02 * calc.pow(t, 0.70) + 0.04 * calc.sin(t * 2.1 * calc.pi + 0.6) + 0.02 * calc.cos(t * 3.7 * calc.pi)

  let steps = 28
  let ts = range(steps + 1).map(i => i / steps)

  let haz-left-pts = (
    ..ts.map(t => (x-haz-l(t), 1.2 * t)),
    ..ts.rev().map(t => (-x-fus(t), 1.2 * t)),
  )
  let haz-right-pts = (
    ..ts.map(t => (x-fus(t), 1.2 * t)),
    ..ts.rev().map(t => (x-haz-r(t), 1.2 * t)),
  )

  line(..haz-left-pts, close: true, fill: gray.transparentize(85%), stroke: none)
  line(..haz-right-pts, close: true, fill: gray.transparentize(85%), stroke: none)

  // Tratteggio parallelo inclinato confinato nei poligoni della ZTA
  let hatch-poly(pts, slope, spacing, stroke-style) = {
    let n = pts.len()
    let cs = pts.map(p => p.at(1) - slope * p.at(0))
    let c-min = calc.min(..cs)
    let c-max = calc.max(..cs)
    let k = calc.ceil((c-max - c-min) / spacing)
    for idx in range(1, k) {
      let c = c-min + idx * spacing
      let xs = ()
      for i in range(n) {
        let p1 = pts.at(i)
        let p2 = pts.at(calc.rem(i + 1, n))
        let d1 = p1.at(1) - slope * p1.at(0) - c
        let d2 = p2.at(1) - slope * p2.at(0) - c
        if (d1 <= 0 and d2 > 0) or (d2 <= 0 and d1 > 0) {
          let frac = -d1 / (d2 - d1)
          xs.push(p1.at(0) + frac * (p2.at(0) - p1.at(0)))
        }
      }
      xs = xs.sorted()
      let j = 0
      while j + 1 < xs.len() {
        let x1 = xs.at(j)
        let x2 = xs.at(j + 1)
        line((x1, slope * x1 + c), (x2, slope * x2 + c), stroke: stroke-style)
        j += 2
      }
    }
  }

  hatch-poly(haz-left-pts, -0.72, 0.11, 0.45pt + luma(50))
  hatch-poly(haz-right-pts, 0.72, 0.11, 0.45pt + luma(50))

  // Contorni esterni della ZTA (non perfettamente rettilinei)
  line(..ts.map(t => (x-haz-l(t), 1.2 * t)), stroke: (paint: black, thickness: 0.6pt, dash: "densely-dashed"))
  line(..ts.map(t => (x-haz-r(t), 1.2 * t)), stroke: (paint: black, thickness: 0.6pt, dash: "densely-dashed"))

  // Lamiere del materiale base (si fermano ai limiti del cono di fusione)
  line((-4.0, 1.2), (-x-fus(1.0), 1.2), stroke: 1pt)
  line((x-fus(1.0), 1.2), (4.0, 1.2), stroke: 1pt)
  line((-4.0, 0), (-x-fus(0.0), 0), stroke: 1pt)
  line((x-fus(0.0), 0), (4.0, 0), stroke: 1pt)

  // Materiale d'apporto (zona fusa continua: sovrametallo + limiti curvi + radice)
  let weld-pts = (
    ..ts.map(t => (-x-fus(t), 1.2 * t)),
    ..range(1, 20).map(i => {
      let u = i / 20
      (-0.90 + 1.80 * u, 1.2 + 0.28 * calc.sin(u * calc.pi))
    }),
    ..ts.rev().map(t => (x-fus(t), 1.2 * t)),
    ..range(1, 10).map(i => {
      let u = i / 10
      (0.20 - 0.40 * u, -0.07 * calc.sin(u * calc.pi))
    }),
  )
  line(..weld-pts, close: true, fill: black, stroke: 0.9pt + black)

  // Frecce ed etichette
  line((-0.85, 1.80), (-0.35, 1.38), mark: (end: ">"), stroke: 0.8pt)
  line((-0.95, -0.65), (-0.65, 0.35), mark: (end: ">"), stroke: 0.8pt)
  line((0.95, -0.65), (0.65, 0.35), mark: (end: ">"), stroke: 0.8pt)
  content((0, 2.02), text(size: 8.5pt)[materiale d'apporto])
  content((-2.6, 0.6), text(size: 8.5pt)[materiale base])
  content((2.6, 0.6), text(size: 8.5pt)[materiale base])
  content((0, -0.88), text(size: 8.5pt)[zona termicamente alterata])
})])

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
- #strong[di sostegno]: sostiene il bagno di fusione, risultando particolarmente utile nelle posizioni di saldatura scomode quali quelle ad asse verticale o sopratesta.],[#canvas(length: 1cm, {
  import draw: *

  line((1.00, 0.62), (3.95, 0.62), (3.71, 0.80), (3.46, 0.95), (3.15, 1.08), (2.60, 1.15), (0.85, 1.15), close: true, fill: gray.transparentize(86%), stroke: none)
  line((0.85, 1.15), (2.60, 1.15), (3.15, 1.08), (3.65, 0.96), (2.95, 1.22), (2.25, 1.30), (0.88, 1.32), close: true, fill: gray.transparentize(68%), stroke: none)
  line((3.95, 0.62), (4.45, 0.55), (5.20, 0.56), (5.65, 0.62), (5.58, 0.74), (5.75, 0.85), (5.00, 0.89), (3.55, 0.94), (3.75, 0.78), close: true, fill: gray.transparentize(90%), stroke: none)
  line((3.45, 1.01), (4.15, 0.98), (4.85, 0.96), (5.55, 0.88), (5.35, 0.85), (4.60, 0.90), (3.55, 0.94), close: true, fill: gray.transparentize(64%), stroke: none)

  line((4.565, 2.33), (5.615, 4.15), (6.585, 3.59), (5.535, 1.77), close: true, fill: gray.transparentize(82%), stroke: none)
  line((4.738, 2.23), (5.788, 4.05), (6.412, 3.69), (5.362, 1.87), close: true, fill: white, stroke: none)

  bezier((0.68, 0.62), (1.00, 0.62), (0.78, 0.65), (0.90, 0.59), stroke: 0.75pt)
  line((1.00, 0.62), (3.95, 0.62), stroke: 0.9pt)
  line((1.00, 0.62), (0.85, 1.15), stroke: 0.9pt)
  line((0.85, 1.15), (2.60, 1.15), stroke: 0.85pt)
  bezier((2.60, 1.15), (3.95, 0.62), (3.15, 1.15), (3.55, 0.95), stroke: 0.9pt)

  line((1.15, 0.62), (1.00, 1.15), stroke: 0.5pt)
  line((1.35, 0.62), (1.20, 1.15), stroke: 0.5pt)
  line((1.55, 0.62), (1.40, 1.15), stroke: 0.5pt)
  line((1.75, 0.62), (1.60, 1.15), stroke: 0.5pt)
  line((1.95, 0.62), (1.80, 1.15), stroke: 0.5pt)
  line((2.15, 0.62), (2.00, 1.15), stroke: 0.5pt)
  line((2.35, 0.62), (2.20, 1.15), stroke: 0.5pt)
  line((2.55, 0.62), (2.40, 1.15), stroke: 0.5pt)
  line((2.75, 0.62), (2.60, 1.15), stroke: 0.5pt)
  line((2.95, 0.62), (2.81, 1.13), stroke: 0.5pt)
  line((3.15, 0.62), (3.02, 1.09), stroke: 0.5pt)
  line((3.35, 0.62), (3.24, 1.03), stroke: 0.5pt)
  line((3.55, 0.62), (3.46, 0.95), stroke: 0.5pt)
  line((3.75, 0.62), (3.70, 0.81), stroke: 0.5pt)

  line((0.85, 1.15), (0.88, 1.32), stroke: 0.8pt)
  bezier((0.88, 1.32), (2.25, 1.30), (1.35, 1.35), (1.85, 1.29), stroke: 0.8pt)
  bezier((2.25, 1.30), (3.55, 0.98), (2.75, 1.29), (3.20, 1.13), stroke: 0.8pt)

  circle((1.02, 1.23), radius: 0.015, fill: black, stroke: none)
  circle((1.18, 1.26), radius: 0.015, fill: black, stroke: none)
  circle((1.33, 1.20), radius: 0.013, fill: black, stroke: none)
  circle((1.48, 1.25), radius: 0.015, fill: black, stroke: none)
  circle((1.65, 1.21), radius: 0.014, fill: black, stroke: none)
  circle((1.80, 1.26), radius: 0.015, fill: black, stroke: none)
  circle((1.98, 1.21), radius: 0.013, fill: black, stroke: none)
  circle((2.15, 1.25), radius: 0.015, fill: black, stroke: none)
  circle((2.32, 1.20), radius: 0.014, fill: black, stroke: none)
  circle((2.50, 1.23), radius: 0.015, fill: black, stroke: none)
  circle((2.70, 1.19), radius: 0.014, fill: black, stroke: none)
  circle((2.90, 1.15), radius: 0.013, fill: black, stroke: none)
  circle((3.10, 1.10), radius: 0.013, fill: black, stroke: none)

  bezier((3.95, 0.62), (5.65, 0.62), (4.45, 0.51), (5.20, 0.54), stroke: 0.9pt)
  line((5.65, 0.62), (8.40, 0.62), stroke: 0.9pt)
  line((5.75, 0.85), (8.40, 0.85), stroke: 0.9pt)
  bezier((5.65, 0.62), (5.75, 0.85), (5.52, 0.71), (5.58, 0.82), stroke: 0.75pt)

  bezier((3.52, 0.95), (4.15, 0.92), (3.72, 0.91), (3.95, 0.95), stroke: 0.75pt)
  bezier((4.22, 0.92), (4.88, 0.91), (4.45, 0.88), (4.68, 0.94), stroke: 0.75pt)
  bezier((4.95, 0.90), (5.62, 0.86), (5.18, 0.87), (5.42, 0.90), stroke: 0.75pt)

  bezier((3.42, 1.03), (3.95, 0.98), (3.60, 1.04), (3.78, 0.97), stroke: 0.75pt)
  bezier((4.05, 0.99), (4.65, 0.98), (4.25, 1.02), (4.45, 0.96), stroke: 0.75pt)
  bezier((4.72, 0.97), (5.32, 0.94), (4.95, 1.00), (5.15, 0.95), stroke: 0.75pt)
  bezier((5.28, 0.93), (5.75, 0.85), (5.45, 0.96), (5.62, 0.88), stroke: 0.75pt)
  bezier((5.30, 0.87), (5.55, 0.89), (5.38, 0.91), (5.48, 0.91), stroke: 0.6pt)

  line((4.18, 0.65), (4.21, 0.73), stroke: 0.5pt)
  line((4.32, 0.62), (4.35, 0.71), stroke: 0.5pt)
  line((4.48, 0.66), (4.50, 0.75), stroke: 0.5pt)
  line((4.62, 0.60), (4.65, 0.69), stroke: 0.5pt)
  line((4.78, 0.64), (4.80, 0.74), stroke: 0.5pt)
  line((4.94, 0.61), (4.96, 0.70), stroke: 0.5pt)
  line((5.10, 0.66), (5.12, 0.76), stroke: 0.5pt)
  line((5.25, 0.63), (5.28, 0.72), stroke: 0.5pt)
  line((5.40, 0.68), (5.42, 0.77), stroke: 0.5pt)

  line((4.565, 2.33), (5.615, 4.15), stroke: 1pt)
  line((5.535, 1.77), (6.585, 3.59), stroke: 1pt)
  line((4.738, 2.23), (5.788, 4.05), stroke: 0.9pt)
  line((5.362, 1.87), (6.412, 3.69), stroke: 0.9pt)

  line((4.95, 2.35), (5.85, 3.91), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.15, 2.15), (6.05, 3.71), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.28, 2.00), (6.22, 3.63), stroke: 0.5pt)

  bezier((5.788, 4.050), (6.180, 4.009), (5.832, 4.127), (6.008, 4.108), stroke: 0.9pt)
  bezier((6.180, 4.009), (6.412, 3.690), (6.352, 3.910), (6.456, 3.767), stroke: 0.9pt)
  bezier((6.412, 3.690), (6.020, 3.731), (6.368, 3.613), (6.192, 3.632), stroke: 0.9pt)
  bezier((6.020, 3.731), (5.788, 4.050), (5.848, 3.830), (5.744, 3.973), stroke: 0.9pt)

  line((5.85, 3.96), (6.32, 3.70), stroke: 0.5pt)
  line((5.92, 4.02), (6.38, 3.76), stroke: 0.5pt)
  line((6.02, 4.05), (6.40, 3.84), stroke: 0.5pt)
  line((5.82, 3.88), (6.24, 3.65), stroke: 0.5pt)

  bezier((5.615, 4.150), (6.225, 4.087), (5.684, 4.270), (5.957, 4.242), stroke: 1pt)
  bezier((6.225, 4.087), (6.585, 3.590), (6.493, 3.932), (6.654, 3.710), stroke: 1pt)
  bezier((5.615, 4.150), (5.788, 4.050), (5.65, 4.06), (5.72, 4.02), stroke: 0.9pt)
  bezier((6.585, 3.590), (6.412, 3.690), (6.54, 3.60), (6.47, 3.64), stroke: 0.9pt)

  bezier((4.565, 2.33), (5.535, 1.77), (4.80, 2.15), (5.30, 1.98), stroke: 0.9pt)
  bezier((4.738, 2.23), (5.362, 1.87), (4.92, 2.02), (5.16, 1.96), stroke: 0.8pt)

  circle((4.65, 1.72), radius: (0.045, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.95, 1.82), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.20, 1.72), radius: (0.040, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.48, 1.42), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.78, 1.50), radius: (0.050, 0.090), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.06, 1.44), radius: (0.045, 0.085), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.62, 1.18), radius: (0.045, 0.075), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((4.90, 1.20), radius: (0.045, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)
  circle((5.14, 1.18), radius: (0.040, 0.080), fill: gray.transparentize(82%), stroke: 0.65pt)

  circle((5.36, 1.56), radius: (0.032, 0.145), fill: gray.transparentize(35%), stroke: 0.65pt)
  circle((5.50, 1.46), radius: (0.030, 0.135), fill: gray.transparentize(35%), stroke: 0.65pt)
  circle((5.42, 1.22), radius: (0.034, 0.130), fill: gray.transparentize(35%), stroke: 0.65pt)

  bezier((2.20, 1.32), (3.90, 2.15), (2.70, 1.55), (3.40, 1.75), stroke: (dash: "dashed", thickness: 0.75pt))
  bezier((3.90, 2.15), (4.85, 3.25), (4.20, 2.65), (4.50, 3.05), stroke: (dash: "dashed", thickness: 0.75pt))
  bezier((5.85, 2.30), (6.65, 0.85), (6.20, 1.85), (6.50, 1.35), stroke: (dash: "dashed", thickness: 0.75pt))

  line((2.30, 3.45), (3.45, 3.45), (4.95, 3.00), stroke: 0.55pt)
  content((2.88, 3.60), text(size: 7.5pt)[rivestimento], anchor: "center")

  line((7.80, 3.50), (6.80, 3.50), (5.70, 3.25), stroke: 0.55pt)
  content((7.30, 3.65), text(size: 7.5pt)[anima], anchor: "center")

  line((1.50, 2.55), (3.30, 2.55), (3.95, 2.15), stroke: 0.55pt)
  content((2.40, 2.70), text(size: 7.5pt)[protezione gassosa], anchor: "center")

  line((1.50, 2.00), (3.30, 2.00), stroke: 0.55pt)
  line((2.50, 2.00), (2.15, 0.90), stroke: 0.55pt)
  content((2.40, 2.15), text(size: 7.5pt)[deposito solidificato], anchor: "center")

  line((0.35, 1.62), (1.95, 1.62), stroke: 0.55pt)
  line((1.60, 1.62), (1.45, 1.24), stroke: 0.55pt)
  content((1.15, 1.77), text(size: 7.5pt)[scoria solidificata], anchor: "center")

  line((8.55, 2.00), (6.30, 2.00), (5.06, 1.44), stroke: 0.55pt)
  content((7.42, 2.15), text(size: 7.5pt)[materiale in trasferimento], anchor: "center")

  line((8.20, 1.55), (6.70, 1.55), (5.50, 1.46), stroke: 0.55pt)
  line((6.70, 1.55), (4.85, 0.95), stroke: 0.55pt)
  line((6.70, 1.55), (5.42, 0.90), stroke: 0.55pt)
  content((7.45, 1.70), text(size: 7.5pt)[scoria liquida], anchor: "center")

  line((8.30, 1.10), (6.60, 1.10), (5.05, 0.72), stroke: 0.55pt)
  content((7.45, 1.25), text(size: 7.5pt)[bagno di fusione], anchor: "center")

  line((6.35, 0.18), (7.80, 0.18), stroke: 0.55pt)
  line((7.80, 1.15), (7.80, 0.85), mark: (end: ">"), stroke: 0.6pt)
  line((7.80, 0.18), (7.80, 0.62), mark: (end: ">"), stroke: 0.6pt)
  content((7.05, 0.33), text(size: 7.5pt)[penetrazione], anchor: "center")
})])

In base alla composizione del rivestimento, si distinguono due principali tipologie di elettrodi, con importanti implicazioni sulla difettosità del giunto:
- #strong[Elettrodi rutilici]: il rivestimento è costituito prevalentemente da biossido di titanio (o rutilo), che conferisce al bagno di fusione una notevole fluidità e un ottimo aspetto superficiale dopo la solidificazione. Tuttavia, questi rivestimenti sviluppano una notevole quantità di #strong[idrogeno], che tende a infragilire il materiale e a favorire l'apertura e la propagazione di difetti; per questo non possono essere utilizzati quando sussiste il pericolo di cricche a caldo e a freddo. Grazie alla facilità esecutiva, trovano impiego in carpenteria di modesto spessore.
- #strong[Elettrodi basici]: il rivestimento è composto da ossidi di ferro, ferroleghe di manganese ($"Mn"$) e silicio ($"Si"$), silicati e soprattutto carbonati di calcio e magnesio, con l'aggiunta di fluoruro di calcio (fluorite) per facilitarne la fusione. Sono gli unici rivestimenti in grado di sopportare elevate temperature di essiccazione (fino a circa $400 degree "C"$), garantendo la quasi totale eliminazione dell'idrogeno e quindi dell'acqua. Risultano pertanto più versatili e universalmente impiegati nelle saldature strutturali importanti.

=== Saldatura ad arco sommerso
#grid(
  columns: 2,
  gutter: 1em,
  [La saldatura ad arco sommerso è un procedimento autogeno per fusione in cui l'arco elettrico scocca tra un filo elettrodo fusibile, alimentato automaticamente, e il pezzo da saldare. L'arco risulta completamente sommerso e invisibile, poiché la zona di saldatura è ricoperta da un #strong[flusso] granulare (simile a polvere/sabbia) che svolge le medesime funzioni protettive della scoria nella saldatura a elettrodo rivestito, proteggendo il bagno dall'ossidazione dell'aria.

Un impianto ad arco sommerso è costituito dai seguenti elementi:
- un #strong[generatore di corrente] (analogo a quello per elettrodo rivestito) di elevato amperaggio ($1000 "-" 3000 "A"$);
- un #strong[traina-filo] che alimenta automaticamente il filo di apporto, di diametro almeno pari a $2 "mm"$;
- una #strong[tramoggia] contenente il flusso di protezione, che viene depositato anteriormente all'elettrodo tramite un ugello di alimentazione e raccolto/aspirato posteriormente dopo il passaggio, lasciando il cordone pulito.],
  [#canvas(length: 1cm, {
  import draw: *

  line((-3.0, 0.09), (0.8, 1.42), (4.2, 0.23), (0.4, -1.1), close: true, fill: white, stroke: none)
  line((-3.0, 0.09), (0.4, -1.1), (0.4, -1.65), (-3.0, -0.46), close: true, fill: gray.transparentize(90%), stroke: none)
  line((0.4, -1.1), (4.2, 0.23), (4.2, -0.32), (0.4, -1.65), close: true, fill: gray.transparentize(85%), stroke: none)

  line((-3.0, 0.09), (0.8, 1.42), (4.2, 0.23), (0.4, -1.1), close: true, stroke: 1pt)
  line((-3.0, 0.09), (-3.0, -0.46), (0.4, -1.65), (4.2, -0.32), (4.2, 0.23), stroke: 1pt)
  line((0.4, -1.1), (0.4, -1.65), stroke: 1pt)

  line((-2.95, 0.07), (-2.73, -0.55), stroke: 0.45pt)
  line((-2.67, -0.03), (-2.45, -0.65), stroke: 0.45pt)
  line((-2.39, -0.12), (-2.17, -0.75), stroke: 0.45pt)
  line((-2.11, -0.22), (-1.89, -0.85), stroke: 0.45pt)
  line((-1.83, -0.32), (-1.61, -0.95), stroke: 0.45pt)

  line((-0.90, -0.65), (-0.68, -1.27), stroke: 0.45pt)
  line((-0.62, -0.74), (-0.40, -1.37), stroke: 0.45pt)
  line((-0.34, -0.84), (-0.12, -1.47), stroke: 0.45pt)
  line((-0.06, -0.94), (0.16, -1.57), stroke: 0.45pt)
  line((0.18, -1.02), (0.40, -1.65), stroke: 0.45pt)

  line((0.65, -1.01), (0.43, -1.64), stroke: 0.45pt)
  line((0.97, -0.90), (0.75, -1.53), stroke: 0.45pt)
  line((1.29, -0.79), (1.07, -1.42), stroke: 0.45pt)
  line((1.61, -0.68), (1.39, -1.30), stroke: 0.45pt)
  line((1.93, -0.56), (1.71, -1.19), stroke: 0.45pt)
  line((2.25, -0.45), (2.03, -1.08), stroke: 0.45pt)
  line((2.57, -0.34), (2.35, -0.97), stroke: 0.45pt)
  line((2.89, -0.23), (2.67, -0.86), stroke: 0.45pt)
  line((3.21, -0.12), (2.99, -0.74), stroke: 0.45pt)
  line((3.53, -0.01), (3.31, -0.63), stroke: 0.45pt)
  line((3.85, 0.11), (3.63, -0.52), stroke: 0.45pt)
  line((4.17, 0.22), (3.95, -0.41), stroke: 0.45pt)

  bezier((-1.65, -0.38), (-0.95, -0.63), (-1.65, -0.98), (-0.95, -1.12), fill: gray.transparentize(45%), stroke: 0.9pt)
  line((-1.52, -0.43), (-1.45, -0.75), stroke: 0.45pt)
  line((-1.36, -0.48), (-1.28, -0.88), stroke: 0.45pt)
  line((-1.20, -0.54), (-1.12, -0.84), stroke: 0.45pt)

  line((-1.60, -0.40), (0.05, 0.18), (0.55, 0.00), (-1.00, -0.61), close: true, fill: black.transparentize(25%), stroke: 0.8pt)
  bezier((-1.60, -0.40), (-1.00, -0.61), (-1.42, -0.36), (-1.18, -0.44), fill: black.transparentize(25%), stroke: 0.8pt)

  bezier((-1.15, 0.56), (1.05, -0.21), (-0.45, 1.15), (0.75, 0.95), fill: gray.transparentize(82%), stroke: none)
  bezier((1.05, -0.21), (2.48, 0.32), (1.75, -0.15), (2.40, 0.05), fill: gray.transparentize(82%), stroke: none)
  bezier((2.48, 0.32), (-1.15, 0.56), (2.30, 1.05), (0.20, 1.15), fill: gray.transparentize(82%), stroke: none)
  line((-1.15, 0.56), (1.05, -0.21), (2.48, 0.32), close: true, fill: gray.transparentize(82%), stroke: none)

  bezier((-1.15, 0.56), (1.05, -0.21), (-0.35, 1.02), (0.65, 0.85), fill: gray.transparentize(65%), stroke: 0.9pt)
  line((-1.15, 0.56), (0.30, 0.055), (1.05, -0.21), stroke: 0.8pt)

  bezier((1.05, -0.21), (2.48, 0.32), (1.75, -0.15), (2.40, 0.05), stroke: 0.9pt)
  bezier((2.48, 0.32), (1.29, 0.92), (2.52, 0.65), (1.95, 0.90), stroke: 0.9pt)
  bezier((0.81, 0.95), (-1.15, 0.56), (0.15, 0.98), (-0.65, 0.78), stroke: 0.9pt)

  circle((1.35, 0.12), radius: 0.02, fill: black, stroke: none)
  circle((1.62, 0.02), radius: 0.02, fill: black, stroke: none)
  circle((1.88, 0.15), radius: 0.02, fill: black, stroke: none)
  circle((2.15, 0.26), radius: 0.02, fill: black, stroke: none)
  circle((1.48, 0.34), radius: 0.02, fill: black, stroke: none)
  circle((1.75, 0.42), radius: 0.02, fill: black, stroke: none)
  circle((2.05, 0.48), radius: 0.02, fill: black, stroke: none)
  circle((2.28, 0.38), radius: 0.02, fill: black, stroke: none)
  circle((1.22, 0.48), radius: 0.02, fill: black, stroke: none)
  circle((1.55, 0.62), radius: 0.02, fill: black, stroke: none)
  circle((1.85, 0.66), radius: 0.02, fill: black, stroke: none)
  circle((2.10, 0.60), radius: 0.02, fill: black, stroke: none)
  circle((1.40, 0.72), radius: 0.02, fill: black, stroke: none)
  circle((1.68, 0.78), radius: 0.02, fill: black, stroke: none)
  circle((0.72, 0.65), radius: 0.02, fill: black, stroke: none)
  circle((0.58, 0.42), radius: 0.02, fill: black, stroke: none)

  line((0.30, 0.06), (0.30, 0.58), stroke: 1.2pt)

  rect((0.19, 0.58), (0.41, 1.28), fill: white, stroke: none)
  arc((0.30, 0.58), start: 180deg, stop: 360deg, radius: (0.11, 0.04), anchor: "origin", stroke: 0.9pt)
  line((0.19, 0.58), (0.19, 1.28), stroke: 0.9pt)
  line((0.41, 0.58), (0.41, 1.28), stroke: 0.9pt)

  rect((0.04, 1.28), (0.56, 2.05), fill: white, stroke: none)
  arc((0.30, 1.28), start: 180deg, stop: 360deg, radius: (0.26, 0.09), anchor: "origin", stroke: 1pt)
  line((0.04, 1.28), (0.04, 2.05), stroke: 1pt)
  line((0.56, 1.28), (0.56, 2.05), stroke: 1pt)
  circle((0.30, 2.05), radius: (0.26, 0.09), fill: white, stroke: 1pt)

  rect((0.81, 0.80), (1.29, 2.18), fill: white, stroke: none)
  arc((1.05, 0.80), start: 180deg, stop: 360deg, radius: (0.24, 0.085), anchor: "origin", stroke: 1pt)
  line((0.81, 0.80), (0.81, 2.18), stroke: 1pt)
  line((1.29, 0.80), (1.29, 2.18), stroke: 1pt)
  circle((1.05, 2.18), radius: (0.24, 0.085), fill: white, stroke: 1pt)

  bezier((0.30, 2.05), (-0.35, 2.55), (0.20, 2.35), (-0.05, 2.50), mark: (end: ">"), stroke: 0.8pt)
  bezier((1.05, 2.18), (1.65, 2.68), (1.15, 2.48), (1.38, 2.62), mark: (end: ">"), stroke: 0.8pt)

  content((-0.42, 2.58), text(size: 8pt)[dispositivo per l'avanzamento del filo], anchor: "east")
  content((1.72, 2.70), text(size: 8pt)[alla tramoggia], anchor: "west")

  line((2.82, 1.52), (1.85, 0.55), stroke: 0.6pt)
  circle((1.85, 0.55), radius: 0.03, fill: black, stroke: none)
  content((2.85, 1.55), text(size: 8pt)[flusso], anchor: "south-west")

  line((3.82, 0.87), (3.10, 0.15), stroke: 0.6pt)
  circle((3.10, 0.15), radius: 0.03, fill: black, stroke: none)
  content((3.85, 0.90), text(size: 8pt)[pezzo], anchor: "south-west")

  line((-2.02, 1.32), (0.28, 0.32), stroke: 0.6pt)
  content((-2.05, 1.35), text(size: 8pt)[filo], anchor: "east")

  line((-0.42, -1.87), (-1.05, -0.46), stroke: 0.6pt)
  circle((-1.05, -0.46), radius: 0.03, fill: black, stroke: none)
  content((-0.40, -1.90), text(size: 8pt)[scoria], anchor: "north-west")

  line((-2.27, -1.97), (-1.35, -0.74), stroke: 0.6pt)
  circle((-1.35, -0.74), radius: 0.03, fill: black, stroke: none)
  content((-2.30, -2.00), text(size: 8pt)[cordone], anchor: "north-east")
})],
)

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