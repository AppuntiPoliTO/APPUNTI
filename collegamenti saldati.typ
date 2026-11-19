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
== Saldature (Collegamenti Saldati) – Introduzione e Tecnologie


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

],
  [#canvas(length: 1cm, {
  import draw: *

  // --- Palette & gradienti 3D ---
  let grad-base = gradient.linear(luma(215), luma(178), luma(195), angle: 90deg)
  let grad-weld = gradient.linear(luma(128), luma(88), luma(108), angle: 90deg)
  let grad-slag = gradient.linear(rgb("#6e35a3"), rgb("#451870"), rgb("#2d0e4a"), angle: 90deg)
  let grad-molten-flux = gradient.linear(rgb("#8e2c7d"), rgb("#e85d04"), rgb("#faa307"), angle: 0deg)
  let grad-flux = gradient.linear(rgb("#ebe6dc"), rgb("#d4ccbe"), rgb("#beb5a5"), angle: 90deg)
  let grad-pool-outer = gradient.radial((rgb("#e63946"), 0%), (rgb("#b5171e"), 55%), (rgb("#6e0d12"), 100%))
  let grad-pool-inner = gradient.radial((rgb("#fff3b0"), 0%), (rgb("#ff7b00"), 35%), (rgb("#ef233c"), 100%))
  let grad-contact = gradient.linear(rgb("#784310"), rgb("#d98c36"), rgb("#f7cb77"), rgb("#b86b18"), rgb("#633409"), angle: 0deg)
  let grad-wire = gradient.linear(rgb("#7d4018"), rgb("#f0a868"), rgb("#c46d30"), rgb("#6e3612"), angle: 0deg)
  let grad-pipe-cu = gradient.linear(rgb("#7c4732"), rgb("#dca084"), rgb("#f0bfa6"), rgb("#b87356"), rgb("#693926"), angle: 0deg)
  let grad-pipe-tip = gradient.linear(luma(70), luma(145), luma(175), luma(105), luma(60), angle: 0deg)
  let grad-guide = gradient.linear(rgb("#ffffff").transparentize(40%), rgb("#e6c7c2").transparentize(55%), rgb("#bfa19c").transparentize(40%), angle: 0deg)

  // --- Helper per tubo inclinato in sezione (pareti visibili + flusso granulare interno) ---
  let flux-tube(cx, cy, angle-deg, len-total, len-tip, radius, arrow-up: true) = {
    scope({
      translate((cx, cy))
      rotate(angle-deg)

      let r-tip = radius * 1.03
      let r-in = radius * 0.76

      // Bordo posteriore dell'apertura superiore
      merge-path(close: true, fill: rgb("#8f533a"), stroke: 0.75pt + luma(40), {
        arc((radius, len-total), start: 0deg, stop: 180deg, radius: (radius, radius * 0.30))
        line((-radius, len-total), (-r-in, len-total))
        arc((-r-in, len-total), start: 180deg, stop: 0deg, radius: (r-in, radius * 0.22))
        line((r-in, len-total), (radius, len-total))
      })

      // Fondo continuo del flusso granulare interno (raccordato al cumulo alla bocca)
      merge-path(close: true, fill: grad-flux, stroke: none, {
        line((-r-in, -0.03), (r-in, -0.03), (r-in, len-total))
        arc((r-in, len-total), start: 0deg, stop: 180deg, radius: (r-in, radius * 0.22))
        line((-r-in, len-total), (-r-in, -0.03))
      })

      // Granuli nel tubo con lo stesso stile del flusso depositato
      for i in range(0, 120) {
        let u = calc.rem(calc.abs(calc.sin(i * 12.9898 + cx * 3.1) * 43758.5453), 1.0)
        let v = calc.rem(calc.abs(calc.sin(i * 78.233 + cy * 5.7) * 24634.6345), 1.0)
        let gx = -(r-in - 0.025) + u * 2 * (r-in - 0.025)
        let gy = -0.01 + v * (len-total - 0.01)
        let r = 0.018 + calc.rem(i * 7, 4) * 0.006
        let shade = luma(145 + calc.rem(i * 23, 85))
        circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
      }

      // Pareti superiori in rame/terracotta (sinistra e destra)
      rect((-radius, len-tip), (-r-in, len-total), fill: grad-pipe-cu, stroke: 0.75pt + luma(40))
      rect((r-in, len-tip), (radius, len-total), fill: grad-pipe-cu, stroke: 0.75pt + luma(40))

      // Pareti della punta inferiore in acciaio scuro (sinistra e destra)
      rect((-r-tip, 0), (-r-in, len-tip), fill: grad-pipe-tip, stroke: 0.75pt + luma(35))
      rect((r-in, 0), (r-tip, len-tip), fill: grad-pipe-tip, stroke: 0.75pt + luma(35))

      // Collare di giunzione sulle pareti
      line((-radius * 1.04, len-tip), (-r-in, len-tip), stroke: 1.1pt + luma(30))
      line((r-in, len-tip), (radius * 1.04, len-tip), stroke: 1.1pt + luma(30))

      // Freccia direzionale bianca sulla punta
      let s = if arrow-up { 1 } else { -1 }
      let y0 = len-tip * 0.50
      line(
        (-0.055, y0 - s * 0.24),
        (0.055, y0 - s * 0.24),
        (0.055, y0 + s * 0.06),
        (0.13, y0 + s * 0.06),
        (0, y0 + s * 0.28),
        (-0.13, y0 + s * 0.06),
        (-0.055, y0 + s * 0.06),
        close: true,
        fill: white,
        stroke: 0.55pt + luma(30),
      )
    })
  }

  // --- 1. Metallo saldato (sinistra) e Metallo base (destra) ---
  line(
    (4.95, 0.45), (8.95, 0.45),
    (9.03, 0.75), (8.88, 1.05), (9.02, 1.38), (8.93, 1.72),
    (5.05, 1.72),
    close: true,
    fill: grad-base,
    stroke: 0.85pt + luma(40),
  )

  line(
    (1.05, 0.45), (5.00, 0.45),
    (5.00, 0.72), (4.62, 0.90), (4.22, 1.30), (3.92, 1.72),
    (3.75, 1.80), (1.05, 1.80),
    (0.97, 1.48), (1.12, 1.15), (0.98, 0.80),
    close: true,
    fill: grad-weld,
    stroke: 0.85pt + luma(35),
  )

  // Linee sottili di solidificazione nel metallo saldato
  for xoff in (1.6, 2.2, 2.8, 3.4) {
    hobby((xoff, 1.78), (xoff + 0.25, 1.25), (xoff + 0.65, 0.75), stroke: 0.4pt + luma(145).transparentize(45%))
  }

  // --- 2. Bagno di fusione (ZTA + esterno + nucleo caldo) ---
  merge-path(close: true, fill: luma(135).transparentize(35%), stroke: (paint: luma(80), thickness: 0.4pt, dash: "densely-dashed"), {
    line((3.72, 1.72), (6.30, 1.72))
    hobby((6.30, 1.72), (5.92, 1.18), (5.48, 0.76), (5.05, 0.65), (4.62, 0.74), (4.15, 1.18), (3.72, 1.72))
  })

  merge-path(close: true, fill: grad-pool-outer, stroke: 0.85pt + rgb("#4a070a"), {
    line((3.88, 1.72), (6.15, 1.72))
    hobby((6.15, 1.72), (5.82, 1.28), (5.42, 0.86), (5.05, 0.73), (4.65, 0.84), (4.22, 1.25), (3.88, 1.72))
  })

  merge-path(close: true, fill: grad-pool-inner, stroke: 0.5pt + rgb("#ff9e00"), {
    line((4.22, 1.72), (5.84, 1.72))
    hobby((5.84, 1.72), (5.60, 1.38), (5.32, 1.06), (5.05, 0.96), (4.80, 1.04), (4.48, 1.36), (4.22, 1.72))
  })

  // --- 3. Flusso fuso (strato liquido sopra il bagno) ---
  merge-path(close: true, fill: grad-molten-flux, stroke: 0.6pt + rgb("#6e1423"), {
    hobby((3.82, 1.82), (4.15, 1.94), (4.70, 1.97), (5.40, 1.94), (5.85, 1.83), (6.05, 1.72))
    line((6.05, 1.72), (3.88, 1.72), (3.82, 1.82))
  })

  // --- 4. Scoria solidifica (strato viola a sinistra) ---
  line(
    (1.05, 1.80), (3.80, 1.80), (4.06, 1.93), (3.82, 2.00), (1.05, 2.00),
    close: true,
    fill: grad-slag,
    stroke: 0.8pt + rgb("#24093d"),
  )
  line((1.12, 1.96), (3.78, 1.96), stroke: 0.7pt + rgb("#a875d9").transparentize(30%))

  // --- 5. Strato continuo di flusso granulare (cumulo + flussi dai tubi) ---
  // Unico percorso continuo che risale nella bocca del tubo di recupero (sx) e scende da quello di alimentazione (dx)
  merge-path(close: true, fill: grad-flux, stroke: 0.75pt + luma(80), {
    hobby((2.05, 2.00), (2.22, 2.10), (2.27, 2.28))
    line((2.27, 2.28), (2.75, 2.40))
    hobby((2.75, 2.40), (2.82, 2.22), (3.30, 2.26), (4.25, 2.48), (5.00, 2.56), (5.75, 2.48), (6.75, 2.24), (7.14, 2.15), (7.18, 2.28))
    line((7.18, 2.28), (7.66, 2.16))
    hobby((7.66, 2.16), (7.72, 1.95), (7.92, 1.72))
    line((7.92, 1.72), (6.05, 1.72), (5.85, 1.83), (5.40, 1.94), (4.70, 1.97), (4.15, 1.94), (3.82, 2.00), (2.05, 2.00))
  })

  // Granuli nel cumulo principale
  for i in range(0, 400) {
    let u = calc.rem(calc.abs(calc.sin(i * 12.9898 + 0.5) * 43758.5453), 1.0)
    let v = calc.rem(calc.abs(calc.sin(i * 78.233 + 1.7) * 24634.6345), 1.0)
    let gx = 2.15 + u * 5.65
    let dx = (gx - 5.0) / 2.85
    let y-top = 2.52 - 0.58 * dx * dx
    let y-bot = if gx < 3.85 { 2.03 } else if gx < 5.95 { 1.97 } else { 1.76 }
    if y-top > y-bot + 0.05 {
      let gy = y-bot + 0.025 + v * (y-top - y-bot - 0.06)
      let dist-arc = calc.sqrt(calc.pow(gx - 5.0, 2) + calc.pow(gy - 1.75, 2))
      if dist-arc > 0.46 {
        let r = 0.018 + calc.rem(i * 7, 4) * 0.006
        let shade = luma(145 + calc.rem(i * 23, 85))
        circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
      }
    }
  }

  // Granuli continui nelle bocche dei tubi (recupero a sx, alimentazione a dx)
  for (cx, cy, ang) in ((2.51, 2.26, 14deg), (7.42, 2.14, -14deg)) {
    scope({
      translate((cx, cy))
      rotate(ang)
      for i in range(0, 28) {
        let u = calc.rem(calc.abs(calc.sin(i * 19.31 + cx) * 19283.41), 1.0)
        let v = calc.rem(calc.abs(calc.sin(i * 41.77 + cy) * 31827.19), 1.0)
        let gx = -0.20 + u * 0.40
        let gy = -0.14 + v * 0.20
        let r = 0.018 + calc.rem(i * 5, 4) * 0.005
        let shade = luma(145 + calc.rem(i * 19, 85))
        circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
      }
    })
  }

  // --- 6. Cavità dell'arco e Arco elettrico ---
  merge-path(close: true, fill: gradient.radial((rgb("#fff9db"), 0%), (rgb("#ffd166").transparentize(20%), 65%), (rgb("#f77f00").transparentize(60%), 100%)), stroke: 0.5pt + rgb("#ff9f1c").transparentize(40%), {
    line((4.54, 1.72), (5.46, 1.72))
    hobby((5.46, 1.72), (5.38, 2.04), (5.00, 2.18), (4.62, 2.04), (4.54, 1.72))
  })

  hobby(
    (4.94, 2.00), (4.74, 1.62), (4.80, 1.32), (5.00, 1.24),
    (5.20, 1.32), (5.26, 1.62), (5.06, 2.00),
    close: true,
    fill: gradient.radial((rgb("#ffffff"), 0%), (rgb("#ffe066"), 45%), (rgb("#f77f00"), 100%)),
    stroke: 0.55pt + rgb("#e85d04"),
  )

  hobby(
    (4.97, 1.95), (4.86, 1.62), (4.90, 1.40), (5.00, 1.36),
    (5.10, 1.40), (5.14, 1.62), (5.03, 1.95),
    close: true,
    fill: rgb("#fffbe6"),
    stroke: none,
  )

  // Goccia di metallo fuso che si stacca dall'elettrodo
  circle((5.0, 1.92), radius: (0.042, 0.058), fill: rgb("#ffd166"), stroke: 0.4pt + rgb("#e85d04"))

  // --- 7. Tubi di flusso (sinistra: recupero, destra: alimentazione) ---
  flux-tube(2.51, 2.30, 14deg, 2.37, 0.75, 0.25, arrow-up: true)
  flux-tube(7.42, 2.18, -14deg, 2.46, 0.82, 0.25, arrow-up: false)

  // --- 8. Elettrodo consumabile, guida inferiore traslucida e tubo di contatto ---
  rect((4.94, 1.98), (5.06, 3.45), fill: grad-wire, stroke: 0.7pt + rgb("#4a250d"))

  rect((4.76, 2.66), (5.24, 3.38), radius: 0.04, fill: grad-guide, stroke: 0.65pt + luma(90))
  line((4.83, 2.72), (4.83, 3.32), stroke: 0.6pt + white.transparentize(35%))
  line((5.18, 2.72), (5.18, 3.32), stroke: 0.5pt + luma(120).transparentize(50%))

  line(
    (4.72, 3.38), (4.72, 4.92), (5.28, 4.92), (5.28, 3.30), (5.00, 3.38),
    close: true,
    fill: grad-contact,
    stroke: 0.8pt + rgb("#4a2508"),
  )
  circle((5.0, 4.92), radius: (0.28, 0.09), fill: rgb("#9c5a14"), stroke: 0.8pt + rgb("#4a2508"))
  circle((5.0, 4.92), radius: (0.12, 0.04), fill: rgb("#3b1f05"), stroke: none)

  // --- 9. Etichette e frecce di riferimento ---
  let arrow-style = (mark: (end: "stealth", fill: black, size: 0.14), stroke: 0.7pt + luma(20))

  content((0.75, 4.85), text(size: 7.5pt)[flusso di \ recupero], anchor: "center")
  line((1.22, 4.55), (1.92, 4.10), ..arrow-style)

  content((1.10, 3.35), text(size: 7.5pt)[scoria \ solidifica], anchor: "center")
  line((1.32, 3.00), (1.82, 2.02), ..arrow-style)

  content((0.95, 2.40), text(size: 7.5pt)[metallo \ saldato], anchor: "center")
  line((1.22, 2.12), (1.80, 1.32), ..arrow-style)

  content((3.55, 3.90), text(size: 7.5pt)[elettrodo \ consumabile], anchor: "center")
  line((4.02, 3.55), (4.92, 2.48), ..arrow-style)

  content((3.30, 2.88), text(size: 7.5pt)[flusso \ fuso], anchor: "center")
  line((3.55, 2.60), (4.22, 1.88), ..arrow-style)

  content((4.30, 2.32), text(size: 7.5pt)[arco], anchor: "center")
  line((4.42, 2.18), (4.84, 1.62), ..arrow-style)

  content((6.30, 4.30), text(size: 7.5pt)[tubo di \ contatto], anchor: "center")
  line((5.78, 4.30), (5.30, 4.30), ..arrow-style)

  content((6.35, 3.35), text(size: 7.5pt)[bagno di \ fusione], anchor: "center")
  line((5.98, 3.05), (5.42, 1.45), ..arrow-style)

  content((6.70, 2.65), text(size: 7.5pt)[flusso], anchor: "center")
  line((6.70, 2.48), (6.70, 2.18), ..arrow-style)

  content((9.00, 4.85), text(size: 7.5pt)[flusso di \ alimentazione], anchor: "center")
  line((8.75, 4.50), (8.18, 4.10), ..arrow-style)

  content((8.95, 2.45), text(size: 7.5pt)[metallo \ base], anchor: "center")
  line((8.70, 2.15), (8.22, 1.32), ..arrow-style)
})],
)
Un impianto ad arco sommerso è costituito dai seguenti elementi:
- un #strong[generatore di corrente] (analogo a quello per elettrodo rivestito) di elevato amperaggio ($1000 "-" 3000 "A"$);
- un #strong[traina-filo] che alimenta automaticamente il filo di apporto, di diametro almeno pari a $2 "mm"$;
- una #strong[tramoggia] contenente il flusso di protezione, che viene depositato anteriormente all'elettrodo tramite un ugello di alimentazione e raccolto/aspirato posteriormente dopo il passaggio, lasciando il cordone pulito.
Trattandosi di un processo automatizzato (in cui il sistema movimenta l'elettrodo senza intervento manuale diretto), garantisce elevata precisione, ma risulta particolarmente lento e spesso richiede più passate successive per riempire cianfrini profondi. È universalmente impiegato nelle #strong[saldature di forti spessori]


=== Saldatura a filo continuo (MIG/MAG)
#grid(
  columns: 2,
  gutter: 1em,
  [Il principio di funzionamento è lo stesso della saldatura ad arco sommerso: un filo continuo viene svolto da una bobina mediante un motore elettrico (alimentatore filo), passa attraverso una guaina fino alla torcia impugnata dall'operatore e scocca l'arco andando in corto circuito sul pezzo da saldare.

L'unica differenza risiede nel sistema di protezione dall'aria, che non è affidato a un flusso solido ma a un #strong[flusso di gas in pressione] convogliato attraverso un'intercapedine attorno all'elettrodo centrale:
],
  [#canvas(length: 1cm, {
  import draw: *

  rect((0.2, 0.4), (1.4, 0.65), stroke: 1pt)
  content((0.8, 0.525), text(size: 6pt)[PEZZO])
  arc((0.85, 0.65), start: 0deg, stop: 180deg, radius: (0.12, 0.08), anchor: "origin", stroke: 0.7pt)

  rect((1.25, 1.35), (2.05, 1.65), stroke: 1pt)
  rect((1.45, 1.25), (1.65, 1.35), stroke: 0.8pt)
  content((1.65, 1.82), text(size: 6.5pt)[TORCIA])
  bezier((1.25, 1.62), (0.90, 1.22), (1.02, 1.62), (0.95, 1.42), stroke: 1pt)
  bezier((1.25, 1.38), (1.04, 1.16), (1.10, 1.38), (1.07, 1.28), stroke: 1pt)
  line((0.86, 1.23), (1.08, 1.15), (0.98, 0.86), (0.76, 0.94), close: true, stroke: 1pt)
  line((0.87, 0.90), (0.83, 0.78), stroke: 0.8pt)

  rect((2.8, 0.3), (4.0, 1.0), stroke: 1pt)
  content((3.4, 0.65), text(size: 5.5pt)[GENERATORE])
  line((2.8, 0.45), (1.4, 0.45), stroke: 0.8pt)
  content((2.64, 0.57), text(size: 7pt)[$-$])
  line((2.8, 0.85), (2.55, 0.85), (2.55, 1.42), (2.05, 1.42), stroke: 0.8pt)
  content((2.64, 0.97), text(size: 7pt)[$+$])

  rect((1.85, 2.35), (2.65, 2.80), stroke: 1pt)
  content((2.25, 2.98), text(size: 6pt)[ALIMENTATORE FILO])
  circle((3.15, 2.575), radius: 0.24, stroke: 1pt)
  circle((3.15, 2.575), radius: 0.025, fill: black, stroke: none)
  arc((3.15, 2.575), start: 200deg, stop: 30deg, radius: 0.13, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
  circle((3.65, 2.575), radius: 0.24, stroke: 1pt)
  circle((3.65, 2.575), radius: 0.025, fill: black, stroke: none)
  arc((3.65, 2.575), start: 160deg, stop: 330deg, radius: 0.13, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
  line((2.65, 2.575), (3.65, 2.575), stroke: (dash: "dashed", thickness: 0.6pt))

  circle((3.95, 3.85), radius: 0.42, stroke: 1pt)
  circle((3.95, 3.85), radius: 0.025, fill: black, stroke: none)
  content((4.46, 3.92), text(size: 6.5pt)[BOBINA FILO], anchor: "west")
  bezier((3.75, 4.22), (3.40, 3.60), (3.45, 4.10), (3.40, 3.85), stroke: 0.75pt)
  line((3.40, 3.60), (3.40, 1.76), stroke: 0.75pt)
  bezier((3.40, 1.76), (3.20, 1.56), (3.40, 1.62), (3.32, 1.56), stroke: 0.75pt)
  line((3.20, 1.56), (2.05, 1.56), stroke: 0.75pt)

  line((4.77, 0.30), (5.13, 0.30), (5.10, 0.38), (4.80, 0.38), close: true, stroke: 1pt)
  line((4.80, 0.38), (4.80, 1.85), stroke: 1pt)
  line((5.10, 0.38), (5.10, 1.85), stroke: 1pt)
  arc((4.95, 1.85), start: 0deg, stop: 180deg, radius: (0.15, 0.25), anchor: "origin", stroke: 1pt)
  line((4.92, 2.10), (4.92, 2.28), stroke: 0.8pt)
  line((4.98, 2.10), (4.98, 2.28), stroke: 0.8pt)
  line((4.87, 2.28), (5.03, 2.28), stroke: 1pt)
  content((4.95, 1.32), text(size: 6pt)[G])
  content((4.95, 1.12), text(size: 6pt)[A])
  content((4.95, 0.92), text(size: 6pt)[S])
  line((4.92, 2.20), (4.40, 2.20), (4.40, 1.49), (2.05, 1.49), stroke: 0.8pt)

  line((6.05, 0.95), (7.85, 0.45), (8.305, 0.84), (8.375, 0.78), (8.445, 0.96), (8.90, 1.35), (7.10, 1.85), close: true, stroke: 0.9pt)
  line((6.05, 0.95), (6.05, 0.73), (7.85, 0.23), (8.90, 1.08), (8.90, 1.35), stroke: 0.9pt)
  line((7.85, 0.45), (7.85, 0.23), stroke: 0.9pt)
  line((8.305, 0.84), (7.475, 1.15), stroke: 0.7pt)
  line((8.445, 0.96), (7.475, 1.15), stroke: 0.7pt)
  line((8.375, 0.78), (7.475, 1.15), stroke: 0.6pt)
  line((6.575, 1.40), (7.475, 1.15), stroke: 0.7pt)
  arc((6.72, 1.36), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
  arc((6.87, 1.32), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
  arc((7.02, 1.28), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
  arc((7.17, 1.23), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
  circle((7.475, 1.15), radius: (0.18, 0.08), fill: black.transparentize(85%), stroke: 0.7pt)
  line((8.05, 1.70), (8.50, 1.575), mark: (end: ">", scale: 0.6, fill: black), stroke: 0.7pt)

  line((7.135, 3.25), (7.135, 2.05), (7.245, 1.75), (7.305, 1.75), (7.195, 2.05), (7.195, 3.25), close: true, fill: black.transparentize(75%), stroke: 0.8pt)
  line((7.815, 3.25), (7.815, 2.05), (7.705, 1.75), (7.645, 1.75), (7.755, 2.05), (7.755, 3.25), close: true, fill: black.transparentize(75%), stroke: 0.8pt)
  circle((7.475, 3.25), radius: (0.34, 0.09), stroke: 0.9pt)
  arc((7.475, 1.75), start: 180deg, stop: 360deg, radius: (0.23, 0.06), anchor: "origin", stroke: 0.9pt)
  arc((7.475, 1.75), start: 180deg, stop: 360deg, radius: (0.17, 0.045), anchor: "origin", stroke: 0.7pt)

  rect((7.325, 1.95), (7.44, 3.05), fill: black.transparentize(85%), stroke: 0.75pt)
  rect((7.51, 1.95), (7.625, 3.05), fill: black.transparentize(85%), stroke: 0.75pt)

  line((7.44, 3.95), (7.44, 1.65), (7.475, 1.50), (7.51, 1.65), (7.51, 3.95), close: true, fill: white, stroke: 0.85pt)

  circle((7.26, 3.68), radius: 0.17, stroke: 0.8pt)
  line((7.22, 3.68), (7.30, 3.68), stroke: 0.5pt)
  line((7.26, 3.64), (7.26, 3.72), stroke: 0.5pt)
  arc((7.26, 3.68), start: 200deg, stop: 100deg, radius: 0.23, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
  circle((7.69, 3.68), radius: 0.17, stroke: 0.8pt)
  line((7.65, 3.68), (7.73, 3.68), stroke: 0.5pt)
  line((7.69, 3.64), (7.69, 3.72), stroke: 0.5pt)
  arc((7.69, 3.68), start: -20deg, stop: 80deg, radius: 0.23, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)

  bezier((7.35, 1.73), (7.26, 1.25), (7.30, 1.52), (7.26, 1.40), stroke: 0.55pt)
  bezier((7.41, 1.72), (7.36, 1.22), (7.39, 1.50), (7.36, 1.35), stroke: 0.55pt)
  bezier((7.54, 1.72), (7.59, 1.22), (7.56, 1.50), (7.59, 1.35), stroke: 0.55pt)
  bezier((7.60, 1.73), (7.69, 1.25), (7.65, 1.52), (7.69, 1.40), stroke: 0.55pt)
  line((7.475, 1.48), (7.475, 1.18), stroke: 0.6pt)
  line((7.45, 1.44), (7.41, 1.22), stroke: 0.5pt)
  line((7.50, 1.44), (7.54, 1.22), stroke: 0.5pt)

  line((7.625, 2.75), (9.60, 2.75), (9.60, 2.07), stroke: 0.75pt)
  line((8.65, 1.15), (9.60, 1.15), (9.60, 1.83), stroke: 0.75pt)
  circle((9.60, 1.95), radius: 0.12, stroke: 0.75pt)

  line((9.15, 0.45), (8.55, 0.70), stroke: 0.55pt)
  line((9.15, 0.45), (8.70, 1.05), stroke: 0.55pt)
  content((9.21, 0.45), text(size: 7pt)[1], anchor: "west")

  line((6.85, 0.25), (7.45, 1.13), stroke: 0.55pt)
  content((6.79, 0.25), text(size: 7pt)[2], anchor: "east")

  line((6.00, 1.75), (6.85, 1.32), stroke: 0.55pt)
  content((5.94, 1.75), text(size: 7pt)[3], anchor: "east")

  line((6.20, 2.30), (7.31, 1.55), stroke: 0.55pt)
  content((6.14, 2.30), text(size: 7pt)[4], anchor: "east")

  line((6.30, 2.70), (7.14, 2.45), stroke: 0.55pt)
  content((6.24, 2.70), text(size: 7pt)[5], anchor: "east")

  line((6.45, 3.25), (7.33, 2.80), stroke: 0.55pt)
  content((6.39, 3.25), text(size: 7pt)[6], anchor: "east")

  line((7.05, 4.02), (7.44, 3.92), stroke: 0.55pt)
  content((6.99, 4.02), text(size: 7pt)[7], anchor: "east")

  line((8.35, 3.78), (7.86, 3.70), stroke: 0.55pt)
  line((8.35, 3.78), (7.36, 3.81), stroke: 0.55pt)
  content((8.41, 3.78), text(size: 7pt)[8], anchor: "west")
})],
)
- #strong[MIG (Metal Inert Gas)]: utilizza un gas inerte (tipicamente Argon) che non partecipa alla fusione. L'Argon puro si impiega prevalentemente nella saldatura dell'alluminio, del rame e delle sue leghe (come il bronzo).
- #strong[MAG (Metal Active Gas)]: utilizza un gas attivo (anidride carbonica, $"CO"_2$) oppure miscele di $"Ar" "-" "CO"_2$ contenenti una frazione attiva anche minima, che partecipa alla fusione. Le miscele $"Ar" "-" "CO"_2$ in diverse percentuali si utilizzano per tutti gli altri materiali (ferro, acciaio inossidabile, ecc.).

In funzione della modalità con cui si staccano le gocce di materiale d'apporto, si distingue tra trasferimento a corto circuito (#emph[short-arc]) e trasferimento in #emph[spray-arc].
Rispetto all'arco sommerso, l'assenza del flusso solido da distribuire e recuperare rende la manipolazione molto più agile e la deposizione assai rapida, permettendo di eseguire riporti di dimensioni importanti. Le applicazioni spaziano dai particolari meccanici alle riparazioni di stampi anche di notevoli dimensioni.

=== Saldatura TIG (Tungsten Inert Gas)
#grid(
  columns: (1fr,1.6fr),
  gutter: 1em,
  [La saldatura TIG è un procedimento ad arco in cui il calore è generato da un arco elettrico che scocca tra un #strong[elettrodo infusibile in tungsteno] (che mantiene costanti lunghezza e diametro) e il pezzo da saldare, in atmosfera di gas inerte (Argon). L'arco fonde i lembi del pezzo mentre il materiale da riporto viene aggiunto manualmente dall'esterno mediante una bacchetta separata, avente caratteristiche paragonabili a quelle del materiale base. 

],
  [#canvas(length: 0.8cm, {
  import draw: *

  // =========================================================
  // 1. METALLO BASE, BAGNO DI FUSIONE E METALLO SOLIDIFICATO
  // =========================================================
  line((1.80, 0.40), (9.00, 0.40), (9.00, 1.15), (1.80, 1.15), close: true, fill: luma(222), stroke: none)

  for i in range(0, 18) {
    let x0 = 1.95 + i * 0.40
    if x0 < 8.85 {
      line((x0, 0.40), (calc.min(x0 + 0.35, 9.00), calc.min(0.40 + 0.35, 1.15)), stroke: 0.3pt + luma(175))
      if x0 + 0.35 < 8.65 {
        line((x0 + 0.20, 0.40), (x0 + 0.75, 1.15), stroke: 0.3pt + luma(175))
      }
    }
  }

  // Zona fusa e cordone di metallo solidificato
  bezier(
    (5.55, 1.15), (9.00, 1.15),
    (6.20, 0.58), (7.60, 0.58),
    close: true,
    fill: rgb("#b86b43").transparentize(10%),
    stroke: 0.6pt + rgb("#7c4223")
  )
  bezier(
    (5.55, 1.15), (9.00, 1.15),
    (6.30, 1.36), (8.20, 1.34),
    close: true,
    fill: rgb("#c97a50"),
    stroke: 0.75pt + rgb("#6d381c")
  )
  for rx in (6.15, 6.65, 7.15, 7.65, 8.15, 8.55) {
    bezier((rx, 1.15), (rx + 0.10, 1.26), (rx + 0.08, 1.19), (rx + 0.10, 1.22), stroke: 0.55pt + rgb("#7c4223"))
  }

  // Bagno di fusione
  bezier(
    (4.32, 1.15), (5.75, 1.15),
    (4.55, 0.42), (5.50, 0.42),
    close: true,
    fill: rgb("#e53935"),
    stroke: 0.6pt + rgb("#b71c1c")
  )
  bezier(
    (4.58, 1.15), (5.48, 1.15),
    (4.75, 0.65), (5.32, 0.65),
    close: true,
    fill: rgb("#ff7043"),
    stroke: none
  )

  line((1.80, 1.15), (4.32, 1.15), stroke: 0.9pt)
  line((1.80, 0.40), (9.00, 0.40), stroke: 0.9pt)

  // =========================================================
  // 2. ATMOSFERA PROTETTIVA E ARCO
  // =========================================================
  line(
    (4.88, 2.43), (5.45, 2.25),
    (6.32, 1.15), (3.82, 1.15),
    close: true,
    fill: aqua.transparentize(80%),
    stroke: (paint: rgb("#00acc1").transparentize(45%), thickness: 0.5pt, dash: "dashed")
  )

  bezier((4.68, 1.15), (5.40, 1.15), (4.92, 2.22), (5.18, 2.22), close: true, fill: rgb("#ffb300").transparentize(20%), stroke: none)
  bezier((4.80, 1.15), (5.28, 1.15), (4.96, 2.15), (5.14, 2.15), close: true, fill: rgb("#ffe033"), stroke: none)
  bezier((4.92, 1.15), (5.16, 1.15), (5.00, 2.04), (5.10, 2.04), close: true, fill: rgb("#fffde7"), stroke: none)

  // =========================================================
  // 3. BACCHETTA DI SALDATURA E FRECCIA DI AVANZAMENTO
  // =========================================================
  line((1.75, 4.02), (1.84, 4.10), (4.22, 1.56), (4.13, 1.48), close: true, fill: luma(185), stroke: 0.7pt)

  line(
    (2.40, 4.45), (2.92, 4.68), (2.80, 4.52), (3.65, 4.52),
    (3.65, 4.38), (2.80, 4.38), (2.92, 4.22),
    close: true,
    fill: rgb("#29b6f6").transparentize(20%),
    stroke: 0.5pt + rgb("#0288d1")
  )

  // =========================================================
  // 4. GUAINA / MANICO CON CANALI STRATIFICATI
  // =========================================================
  line((5.95, 4.32), (9.10, 4.66), (9.10, 5.76), (5.95, 5.42), close: true, fill: luma(145), stroke: none)
  line((5.95, 4.32), (9.10, 4.66), stroke: 0.9pt)
  line((5.95, 5.42), (9.10, 5.76), stroke: 0.9pt)
  circle((9.10, 5.21), radius: (0.17, 0.55), fill: luma(245), stroke: 0.9pt)

  // Canale 1: Entrata acqua (fredda)
  line((5.72, 5.13), (9.08, 5.49), (9.08, 5.65), (5.72, 5.29), close: true, fill: rgb("#1e88e5"), stroke: 0.55pt)
  line((7.85, 5.43), (7.55, 5.40), stroke: (paint: white, thickness: 0.8pt), mark: (end: ">", size: 0.12))

  // Canale 2: Conduttore elettrico
  line((5.65, 4.92), (9.32, 5.31), (9.32, 5.41), (5.65, 5.02), close: true, fill: luma(205), stroke: 0.6pt)

  // Canale 3: Ingresso gas di protezione
  line((5.58, 4.68), (9.08, 5.05), (9.08, 5.22), (5.58, 4.85), close: true, fill: rgb("#80deea"), stroke: 0.55pt)
  line((7.85, 4.99), (7.55, 4.96), stroke: (paint: rgb("#006064"), thickness: 0.8pt), mark: (end: ">", size: 0.12))

  // Canale 4: Uscita acqua (calda)
  line((5.50, 4.44), (9.08, 4.82), (9.08, 4.98), (5.50, 4.60), close: true, fill: rgb("#ffd54f"), stroke: 0.55pt)
  line((7.55, 4.72), (7.85, 4.75), stroke: (paint: rgb("#bf360c"), thickness: 0.8pt), mark: (end: ">", size: 0.12))

  // =========================================================
  // 5. TORCIA TIG (SEZIONE STRATIFICATA)
  // =========================================================
  group({
    translate((5.05, 1.98))
    rotate(-18deg)

    // Camera interna del gas nell'ugello
    line((-0.26, 0.38), (0.26, 0.38), (0.37, 1.25), (0.37, 2.05), (-0.37, 2.05), (-0.37, 1.25), close: true, fill: aqua.transparentize(70%), stroke: none)

    // Diffusore / gas lens con fori e condotto centrale
    line((-0.37, 1.25), (0.37, 1.25), (0.37, 2.05), (-0.37, 2.05), close: true, fill: rgb("#fb8c00"), stroke: 0.7pt)
    line((-0.14, 1.25), (0.14, 1.25), (0.14, 2.05), (-0.14, 2.05), close: true, fill: rgb("#ffe0b2"), stroke: 0.6pt)
    for hx in (-0.26, 0.26) {
      for hy in (1.45, 1.70, 1.90) {
        circle((hx, hy), radius: 0.04, fill: aqua.transparentize(30%), stroke: 0.4pt + rgb("#e65100"))
      }
    }
    line((-0.22, 1.22), (-0.22, 0.78), stroke: (paint: rgb("#00838f"), thickness: 0.65pt), mark: (end: ">", size: 0.10))
    line((0.22, 1.22), (0.22, 0.78), stroke: (paint: rgb("#00838f"), thickness: 0.65pt), mark: (end: ">", size: 0.10))

    // Pareti in sezione dell'ugello ceramico
    line((-0.36, 0.38), (-0.24, 0.38), (-0.37, 1.25), (-0.37, 2.05), (-0.49, 2.05), (-0.49, 1.25), close: true, fill: rgb("#d8648c"), stroke: 0.8pt)
    line((0.24, 0.38), (0.36, 0.38), (0.49, 1.25), (0.49, 2.05), (0.37, 2.05), (0.37, 1.25), close: true, fill: rgb("#d8648c"), stroke: 0.8pt)

    // Corpo torcia con camere di raffreddamento e pinza
    line((-0.46, 2.05), (0.46, 2.05), (0.46, 3.72), (-0.46, 3.72), close: true, fill: luma(195), stroke: 0.9pt)
    line((-0.38, 2.15), (-0.20, 2.15), (-0.20, 3.45), (-0.38, 3.45), close: true, fill: rgb("#1e88e5").transparentize(25%), stroke: 0.5pt)
    line((0.20, 2.15), (0.38, 2.15), (0.38, 3.45), (0.20, 3.45), close: true, fill: rgb("#ffd54f").transparentize(15%), stroke: 0.5pt)
    line((-0.12, 2.05), (0.12, 2.05), (0.12, 3.55), (-0.12, 3.55), close: true, fill: luma(225), stroke: 0.6pt)

    // Tappo posteriore
    line((-0.32, 3.72), (0.32, 3.72), (0.32, 3.96), (-0.32, 3.96), close: true, fill: luma(215), stroke: 0.8pt)
    line((-0.44, 3.96), (0.44, 3.96), (0.44, 4.24), (-0.44, 4.24), close: true, fill: luma(85), stroke: 0.9pt)
    for kx in (-0.28, -0.14, 0.0, 0.14, 0.28) {
      line((kx, 3.98), (kx, 4.22), stroke: 0.4pt + luma(50))
    }

    // Elettrodo di tungsteno con punta conica affilata
    line(
      (0.00, 0.00),
      (0.055, 0.28),
      (0.055, 3.15),
      (-0.055, 3.15),
      (-0.055, 0.28),
      close: true,
      fill: luma(220),
      stroke: 0.75pt
    )
  })

  // =========================================================
  // 6. ETICHETTE E LINEE DI RICHIAMO
  // =========================================================
  let lx = 1.45

  line((lx + 0.12, 5.45), (5.55, 5.45), stroke: 0.6pt)
  content((lx, 5.45), text(size: 8pt)[Torcia TIG], anchor: "east")

  line((lx + 0.12, 4.75), (4.20, 4.75), (5.32, 3.55), stroke: 0.6pt)
  content((lx, 4.75), text(size: 8pt)[Diffusore], anchor: "east")

  line((lx + 0.12, 3.45), (3.85, 3.45), (5.12, 2.18), stroke: 0.6pt)
  content((lx, 3.45), text(size: 8pt)[Elettrodo di tungsteno], anchor: "east")

  line((lx + 0.12, 2.75), (3.65, 2.75), (4.98, 1.55), stroke: 0.6pt)
  content((lx, 2.75), text(size: 8pt)[Arco], anchor: "east")

  line((lx + 0.12, 2.15), (3.58, 2.15), stroke: 0.6pt)
  content((lx, 2.15), text(size: 8pt)[Bacchetta di saldatura], anchor: "east")

  line((lx + 0.12, 1.50), (2.45, 1.50), (2.45, 0.80), stroke: 0.6pt)
  content((lx, 1.50), text(size: 8pt)[Metallo base], anchor: "east")

  let rx = 9.75

  line((6.95, 5.33), (6.95, 6.25), (rx - 0.12, 6.25), stroke: 0.6pt)
  content((rx, 6.25), text(size: 8pt)[Entrata acqua (fredda)], anchor: "west")

  line((9.32, 5.36), (9.50, 5.36), (9.50, 5.65), (rx - 0.12, 5.65), stroke: 0.6pt)
  content((rx, 5.65), text(size: 8pt)[Conduttore elettrico], anchor: "west")

  line((7.05, 4.92), (7.05, 4.15), (rx - 0.12, 4.15), stroke: 0.6pt)
  content((rx, 4.15), text(size: 8pt)[Ingresso gas di protezione], anchor: "west")

  line((6.45, 4.62), (6.45, 3.55), (rx - 0.12, 3.55), stroke: 0.6pt)
  content((rx, 3.55), text(size: 8pt)[Uscita acqua (calda)], anchor: "west")

  line((5.46, 2.78), (6.20, 2.95), (rx - 0.12, 2.95), stroke: 0.6pt)
  content((rx, 2.95), text(size: 8pt)[Uscita gas di protezione], anchor: "west")

  line((5.65, 1.65), (6.30, 2.35), (rx - 0.12, 2.35), stroke: 0.6pt)
  content((rx, 2.35), text(size: 8pt)[Atmosfera protettiva], anchor: "west")

  line((7.35, 1.24), (7.65, 1.75), (rx - 0.12, 1.75), stroke: 0.6pt)
  content((rx, 1.75), text(size: 8pt)[Metallo solidificato], anchor: "west")
})],
)
Per evitare pericolose inclusioni di tungsteno nel giunto, l'elettrodo non deve mai venire a contatto con il pezzo.
Il processo consente di saldare un'ampia gamma di materiali: acciai, acciai inossidabili, acciai temperati, leghe di alluminio, magnesio e titanio. Le sue caratteristiche principali sono:
- arco molto concentrato e facilmente controllabile;
- elevata regolarità di fusione, con cordoni di altissima qualità e penetrazione;
- trasferimento molto preciso del materiale d'apporto;
- impiego praticamente universale.
Il principale difetto del procedimento è la #strong[lentezza esecutiva], dovuta alla necessità di un controllo puntuale da parte dell'operatore, che lo rende inadatto a lavorazioni grossolane e rapide.



Tra le applicazioni tipiche figurano la riparazione di stampi (anche per materie plastiche), il settore automotive e la costruzione di #strong[scambiatori di calore a fascio tubiero], dove la saldatura TIG — spesso eseguita con sistemi automatizzati — permette di fissare ciascun tubo nei fori relativamente piccoli della piastra tubiera garantendo tenuta e precisione senza occludere i condotti. A seconda delle esigenze di tenuta, esistono diversi posizionamenti dei tubi nei fori della piastra, alcuni dei quali prevedono anche la saldatura interna al foro.

=== Terminologia e architettura del giunto saldato
Il #strong[giunto saldato] è la regione in cui avviene il collegamento dei pezzi mediante saldatura. Nella sua geometria si definiscono i seguenti elementi:
- #strong[lembi, bordi o teste]: le superfici minori che limitano i pezzi (superfici laterali rispetto allo sviluppo del cordone);
- #strong[facce]: le superfici maggiori (superiori e inferiori) che limitano i pezzi;
- #strong[cianfrino]: la cavità predisposta tra i lembi che viene riempita dal cordone di saldatura (può avere forma a V, a U, a X, ecc.);
- #strong[ZTA (Zona Termicamente Alterata)]: la regione del metallo base adiacente al cordone di saldatura nella quale il raggiungimento di temperature elevate ha indotto variazioni nella microstruttura e nelle proprietà meccaniche, chimiche e fisiche del metallo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel caso dell'acciaio, il cordone di saldatura risulta normalmente più resistente del metallo adiacente a causa dell'#strong[ingrossamento del grano] nella ZTA, che riduce la resistenza dell'acciaio rispetto a una struttura a grano fine.],[#canvas(length: 1cm, {
  import draw: *
  line((-1.60, 0), (-1.60, 1.0), stroke: 0.5pt)
  line((-1.52, 0), (-1.52, 1.0), stroke: 0.5pt)
  line((-1.44, 0), (-1.44, 1.0), stroke: 0.5pt)
  line((-1.36, 0), (-1.36, 1.0), stroke: 0.5pt)
  line((-1.28, 0), (-1.28, 1.0), stroke: 0.5pt)
  line((-1.20, 0), (-1.20, 1.0), stroke: 0.5pt)
  line((-1.12, 0), (-1.12, 1.0), stroke: 0.5pt)
  line((-1.04, 0), (-1.04, 1.0), stroke: 0.5pt)
  line((-0.96, 0), (-0.96, 1.0), stroke: 0.5pt)
  line((-0.88, 0), (-0.88, 1.0), stroke: 0.5pt)
  line((-0.80, 0), (-0.80, 1.0), stroke: 0.5pt)
  line((-0.72, 0), (-0.72, 0.9), stroke: 0.5pt)
  line((-0.64, 0), (-0.64, 0.8), stroke: 0.5pt)
  line((-0.56, 0), (-0.56, 0.7), stroke: 0.5pt)
  line((-0.48, 0), (-0.48, 0.6), stroke: 0.5pt)
  line((-0.40, 0), (-0.40, 0.5), stroke: 0.5pt)
  line((-0.32, 0), (-0.32, 0.4), stroke: 0.5pt)
  line((-0.24, 0), (-0.24, 0.3), stroke: 0.5pt)
  line((-0.16, 0), (-0.16, 0.2), stroke: 0.5pt)
  line((-0.08, 0), (-0.08, 0.1), stroke: 0.5pt)
  line((0.08, 0), (0.08, 0.1), stroke: 0.5pt)
  line((0.16, 0), (0.16, 0.2), stroke: 0.5pt)
  line((0.24, 0), (0.24, 0.3), stroke: 0.5pt)
  line((0.32, 0), (0.32, 0.4), stroke: 0.5pt)
  line((0.40, 0), (0.40, 0.5), stroke: 0.5pt)
  line((0.48, 0), (0.48, 0.6), stroke: 0.5pt)
  line((0.56, 0), (0.56, 0.7), stroke: 0.5pt)
  line((0.64, 0), (0.64, 0.8), stroke: 0.5pt)
  line((0.72, 0), (0.72, 0.9), stroke: 0.5pt)
  line((0.80, 0), (0.80, 1.0), stroke: 0.5pt)
  line((0.88, 0), (0.88, 1.0), stroke: 0.5pt)
  line((0.96, 0), (0.96, 1.0), stroke: 0.5pt)
  line((1.04, 0), (1.04, 1.0), stroke: 0.5pt)
  line((1.12, 0), (1.12, 1.0), stroke: 0.5pt)
  line((1.20, 0), (1.20, 1.0), stroke: 0.5pt)
  line((1.28, 0), (1.28, 1.0), stroke: 0.5pt)
  line((1.36, 0), (1.36, 1.0), stroke: 0.5pt)
  line((1.44, 0), (1.44, 1.0), stroke: 0.5pt)
  line((1.52, 0), (1.52, 1.0), stroke: 0.5pt)
  line((1.60, 0), (1.60, 1.0), stroke: 0.5pt)
  line((-0.8, 1.0), (0, 0), (0.8, 1.0), close: true, fill: black, stroke: none)
  arc((0, 0.2607), start: 42.74deg, stop: 137.26deg, radius: 1.0893, anchor: "origin", fill: black, stroke: none)
  line((-0.09, 0), (-0.06, -0.06), (0.06, -0.06), (0.09, 0), close: true, fill: black, stroke: none)
  line((-4.5, 0), (4.5, 0), stroke: 1pt)
  line((-4.5, 1.0), (-0.8, 1.0), stroke: 1pt)
  line((0.8, 1.0), (4.5, 1.0), stroke: 1pt)
  line((-4.5, 0), (-4.5, 1.0), stroke: 1pt)
  line((4.5, 0), (4.5, 1.0), stroke: 1pt)
  line((-0.8, 1.0), (0, 0), (0.8, 1.0), stroke: 1pt)
  content((-3.2, 1.85), text(size: 8.5pt)[facce], anchor: "south")
  line((-3.0, 1.75), (-2.4, 1.03), mark: (end: ">"), stroke: 0.9pt)
  content((0, 1.85), text(size: 8.5pt)[cianfrino], anchor: "south")
  line((-0.3, 1.75), (-0.75, 1.05), mark: (end: ">"), stroke: 0.9pt)
  line((0.3, 1.75), (0.75, 1.05), mark: (end: ">"), stroke: 0.9pt)
  content((2.65, 1.85), text(size: 8.5pt)[facce], anchor: "south")
  line((2.45, 1.75), (2.1, 1.03), mark: (end: ">"), stroke: 0.9pt)
  line((2.85, 1.75), (3.1, 0.03), mark: (end: ">"), stroke: 0.9pt)
  content((-3.6, -0.7), text(size: 8.5pt)[lembo], anchor: "north")
  line((-3.85, -0.6), (-4.47, 0.45), mark: (end: ">"), stroke: 0.9pt)
  content((0.15, -0.7), text(size: 8.5pt)[ZTA], anchor: "north")
  line((0.0, -0.6), (-0.35, 0.35), mark: (end: ">"), stroke: 0.9pt)
  content((3.6, -0.7), text(size: 8.5pt)[lembo], anchor: "north")
  line((3.85, -0.6), (4.47, 0.45), mark: (end: ">"), stroke: 0.9pt)
})])

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
- #strong[tensioni residue di compressione] nelle zone adiacenti del metallo base.],[#canvas(length: 0.8cm, {
  import draw: *

  // Facce del blocco
  line((-2.50, 1.25), (-0.40, 2.30), (1.85, 1.05), (-0.25, 0.00), close: true, fill: luma(248), stroke: 0.9pt)
  line((-2.50, 1.25), (-0.25, 0.00), (-0.25, -1.90), (-2.50, -0.65), close: true, fill: luma(242), stroke: 0.9pt)
  line((-0.25, 0.00), (1.85, 1.05), (1.85, -0.85), (-0.25, -1.90), close: true, fill: white, stroke: 0.9pt)

  // Cordone di saldatura superiore (copre il bordo posteriore)
  merge-path(close: true, fill: luma(236), stroke: 0.85pt, {
    bezier((-1.80, 1.60), (-1.10, 1.95), (-1.66, 1.91), (-1.24, 2.12))
    line((-1.10, 1.95), (1.15, 0.70))
    bezier((1.15, 0.70), (0.45, 0.35), (1.01, 0.87), (0.59, 0.66))
    line((0.45, 0.35), (-1.80, 1.60))
  })

  // Striature del cordone
  for i in range(1, 12) {
    let t = i / 12.0
    let p0 = (-1.80 + t * 2.25, 1.60 - t * 1.25)
    let p1 = (-1.10 + t * 2.25, 1.95 - t * 1.25)
    let c0 = (p0.at(0) + 0.14, p0.at(1) + 0.31)
    let c1 = (p1.at(0) - 0.14, p1.at(1) + 0.17)
    bezier(p0, p1, c0, c1, stroke: 0.4pt + luma(140))
  }

  // Sezione trasversale a X del cordone (con sovrametallo superiore e inferiore)
  merge-path(close: true, fill: luma(230), stroke: 0.85pt, {
    bezier((0.45, 0.35), (1.15, 0.70), (0.59, 0.66), (1.01, 0.87))
    line((1.15, 0.70), (0.86, -0.395), (1.15, -1.20))
    bezier((1.15, -1.20), (0.45, -1.55), (1.01, -1.40), (0.59, -1.61))
    line((0.45, -1.55), (0.74, -0.455), (0.45, 0.35))
  })

  // Tratteggio nella sezione del cordone
  line((0.65, -0.21), (0.87, -0.36), stroke: 0.45pt + luma(120))
  line((0.55, 0.06), (0.91, -0.19), stroke: 0.45pt + luma(120))
  line((0.46, 0.33), (0.96, -0.02), stroke: 0.45pt + luma(120))
  line((0.60, 0.43), (1.00, 0.15), stroke: 0.45pt + luma(120))
  line((0.77, 0.51), (1.05, 0.32), stroke: 0.45pt + luma(120))
  line((0.94, 0.59), (1.09, 0.48), stroke: 0.45pt + luma(120))
  line((0.70, -0.59), (1.01, -0.81), stroke: 0.45pt + luma(120))
  line((0.66, -0.76), (1.10, -1.07), stroke: 0.45pt + luma(120))
  line((0.61, -0.93), (1.06, -1.24), stroke: 0.45pt + luma(120))
  line((0.57, -1.10), (0.90, -1.33), stroke: 0.45pt + luma(120))
  line((0.52, -1.27), (0.73, -1.41), stroke: 0.45pt + luma(120))
  line((0.48, -1.44), (0.56, -1.49), stroke: 0.45pt + luma(120))

  // Tensioni di trazione nel cordone (frecce uscenti)
  line((-0.88, 1.63), (0.25, 1.00), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.85), stroke: 1.2pt)

  line((0.80, -0.06), (0.80, 0.42), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.5), stroke: 0.75pt)
  line((0.61, 0.085), (0.99, 0.275), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.5), stroke: 0.75pt)

  line((0.80, -1.26), (0.80, -0.78), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.5), stroke: 0.75pt)
  line((0.61, -1.115), (0.99, -0.925), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.5), stroke: 0.75pt)

  // Tensioni di compressione nel metallo base (frecce entranti)
  line((-1.70, 1.18), (-1.12, 0.86), mark: (end: "stealth", fill: white, scale: 0.7), stroke: 0.8pt)
  line((-0.44, 0.48), (-1.02, 0.80), mark: (end: "stealth", fill: white, scale: 0.7), stroke: 0.8pt)

  line((-0.30, 1.88), (0.28, 1.56), mark: (end: "stealth", fill: white, scale: 0.7), stroke: 0.8pt)
  line((0.96, 1.18), (0.38, 1.50), mark: (end: "stealth", fill: white, scale: 0.7), stroke: 0.8pt)

  for pos in ((0.12, -0.30), (0.12, -1.25), (1.48, 0.40), (1.48, -0.55)) {
    let (cx, cy) = pos
    line((cx, cy + 0.22), (cx, cy + 0.03), mark: (end: "stealth", fill: white, scale: 0.45), stroke: 0.65pt)
    line((cx, cy - 0.22), (cx, cy - 0.03), mark: (end: "stealth", fill: white, scale: 0.45), stroke: 0.65pt)
    line((cx - 0.18, cy - 0.09), (cx - 0.025, cy - 0.0125), mark: (end: "stealth", fill: white, scale: 0.45), stroke: 0.65pt)
    line((cx + 0.18, cy + 0.09), (cx + 0.025, cy + 0.0125), mark: (end: "stealth", fill: white, scale: 0.45), stroke: 0.65pt)
  }

  // Etichette e richiami
  line((-1.40, 2.55), (-0.95, 1.80), mark: (end: "stealth", fill: red, scale: 0.75), stroke: 0.9pt + red)
  content((-1.40, 2.62), text(size: 8.5pt)[tensioni residue di trazione nel cordone], anchor: "south")

  line((2.20, 1.50), (0.85, 1.30), mark: (end: "stealth", fill: red, scale: 0.75), stroke: 0.9pt + red)
  content((2.25, 1.50), text(size: 8.5pt)[tensioni residue di compressione\ nel metallo base], anchor: "west")
})])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Tali tensioni inducono assestamenti e deformazioni della struttura (quali imbarcamenti e disallineamenti), tanto più marcati quanto più lungo è il cordone. Per contenere questi fenomeni in fase di assemblaggio, il progettista può prescrivere specifici interventi:
- #strong[Azione meccanica]: mantenere le parti di materiale base perfettamente allineate mediante vincoli esterni (morse) fino al completo assestamento del cordone, prevenendo imbarcamenti e disallineamenti (pratica molto diffusa nelle costruzioni navali).
- #strong[Ordine di ripresa per cordone a X]: nei forti spessori, deporre il cordone mediante passate successive simmetriche rispetto al piano mediano (ad esempio prima passata centrale 1, poi passate 2 e 3 sui lati opposti, quindi 4 e 5 a completamento, ed eventuali ulteriori passate simmetriche) per bilanciare l'introduzione del calore.
- #strong[Ordine di esecuzione di un cordone lungo]: anziché procedere in modo continuo da un'estremità all'altra (che causerebbe raffreddamenti asimmetrici e tensioni non uniformi), eseguire la saldatura per tratti simmetrici — ad esempio fissando prima il tratto centrale (1), poi i due tratti esterni simmetrici (2 e 3) e completando infine i tratti intermedi mancanti (4 e 5).
- #strong[Deformazione imposta preventiva (compensazione)]: nei casi in cui l'entità della distorsione sia nota a priori (tipicamente nelle costruzioni navali), si predeforma l'elemento in direzione opposta a quella indotta dalle tensioni residue, in modo che a saldatura completata i due effetti si compensino portando il componente in piano.],[#canvas(length: 1.3cm, {
  import draw: *

  // Panel 1: Azione meccanica
  content((2.30, 6.15), text(size: 8.5pt)[Azione meccanica], anchor: "center")

  // Upper sub-figure
  line((1.55, 5.20), (2.10, 5.20), (1.95, 5.45), (1.55, 5.45), close: true, fill: luma(242), stroke: none)
  line((2.50, 5.20), (3.05, 5.20), (3.05, 5.45), (2.65, 5.45), close: true, fill: luma(242), stroke: none)
  rect((1.55, 4.83), (3.05, 5.05), fill: luma(242), stroke: none)

  line((1.55, 5.34), (1.69, 5.20), stroke: 0.45pt)
  line((1.58, 5.45), (1.83, 5.20), stroke: 0.45pt)
  line((1.72, 5.45), (1.97, 5.20), stroke: 0.45pt)
  line((1.86, 5.45), (2.085, 5.225), stroke: 0.45pt)

  line((2.553, 5.288), (2.64, 5.20), stroke: 0.45pt)
  line((2.605, 5.375), (2.78, 5.20), stroke: 0.45pt)
  line((2.67, 5.45), (2.92, 5.20), stroke: 0.45pt)
  line((2.81, 5.45), (3.05, 5.21), stroke: 0.45pt)
  line((2.95, 5.45), (3.05, 5.35), stroke: 0.45pt)

  line((1.55, 4.97), (1.69, 4.83), stroke: 0.45pt)
  line((1.61, 5.05), (1.83, 4.83), stroke: 0.45pt)
  line((1.75, 5.05), (1.97, 4.83), stroke: 0.45pt)
  line((1.89, 5.05), (2.11, 4.83), stroke: 0.45pt)
  line((2.03, 5.05), (2.25, 4.83), stroke: 0.45pt)
  line((2.17, 5.05), (2.39, 4.83), stroke: 0.45pt)
  line((2.31, 5.05), (2.53, 4.83), stroke: 0.45pt)
  line((2.45, 5.05), (2.67, 4.83), stroke: 0.45pt)
  line((2.59, 5.05), (2.81, 4.83), stroke: 0.45pt)
  line((2.73, 5.05), (2.95, 4.83), stroke: 0.45pt)
  line((2.87, 5.05), (3.05, 4.87), stroke: 0.45pt)
  line((3.01, 5.05), (3.05, 5.01), stroke: 0.45pt)

  line((0.30, 5.05), (2.26, 5.05), (2.16, 5.20), (0.30, 5.20), close: true, stroke: 0.9pt)
  line((2.34, 5.05), (4.30, 5.05), (4.30, 5.20), (2.44, 5.20), close: true, stroke: 0.9pt)
  line((1.55, 5.20), (2.10, 5.20), (1.95, 5.45), (1.55, 5.45), close: true, stroke: 0.9pt)
  line((2.50, 5.20), (3.05, 5.20), (3.05, 5.45), (2.65, 5.45), close: true, stroke: 0.9pt)
  rect((1.55, 4.83), (3.05, 5.05), stroke: 0.9pt)

  line((1.75, 5.75), (1.75, 5.45), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 5.75), (2.85, 5.45), mark: (end: ">"), stroke: 0.75pt)
  line((1.75, 4.53), (1.75, 4.83), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, 4.53), (2.30, 4.83), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 4.53), (2.85, 4.83), mark: (end: ">"), stroke: 0.75pt)

  // Lower sub-figure
  line((1.55, 3.90), (2.10, 3.90), (1.95, 4.15), (1.55, 4.15), close: true, fill: luma(242), stroke: none)
  line((2.50, 3.90), (3.05, 3.90), (3.05, 4.15), (2.65, 4.15), close: true, fill: luma(242), stroke: none)
  rect((0.90, 3.53), (3.70, 3.75), fill: luma(242), stroke: none)

  line((1.55, 4.04), (1.69, 3.90), stroke: 0.45pt)
  line((1.58, 4.15), (1.83, 3.90), stroke: 0.45pt)
  line((1.72, 4.15), (1.97, 3.90), stroke: 0.45pt)
  line((1.86, 4.15), (2.085, 3.925), stroke: 0.45pt)

  line((2.553, 3.988), (2.64, 3.90), stroke: 0.45pt)
  line((2.605, 4.075), (2.78, 3.90), stroke: 0.45pt)
  line((2.67, 4.15), (2.92, 3.90), stroke: 0.45pt)
  line((2.81, 4.15), (3.05, 3.91), stroke: 0.45pt)
  line((2.95, 4.15), (3.05, 4.05), stroke: 0.45pt)

  line((0.90, 3.67), (1.04, 3.53), stroke: 0.45pt)
  line((0.96, 3.75), (1.18, 3.53), stroke: 0.45pt)
  line((1.10, 3.75), (1.32, 3.53), stroke: 0.45pt)
  line((1.24, 3.75), (1.46, 3.53), stroke: 0.45pt)
  line((1.38, 3.75), (1.60, 3.53), stroke: 0.45pt)
  line((1.52, 3.75), (1.74, 3.53), stroke: 0.45pt)
  line((1.66, 3.75), (1.88, 3.53), stroke: 0.45pt)
  line((1.80, 3.75), (2.02, 3.53), stroke: 0.45pt)
  line((1.94, 3.75), (2.16, 3.53), stroke: 0.45pt)
  line((2.08, 3.75), (2.30, 3.53), stroke: 0.45pt)
  line((2.22, 3.75), (2.44, 3.53), stroke: 0.45pt)
  line((2.36, 3.75), (2.58, 3.53), stroke: 0.45pt)
  line((2.50, 3.75), (2.72, 3.53), stroke: 0.45pt)
  line((2.64, 3.75), (2.86, 3.53), stroke: 0.45pt)
  line((2.78, 3.75), (3.00, 3.53), stroke: 0.45pt)
  line((2.92, 3.75), (3.14, 3.53), stroke: 0.45pt)
  line((3.06, 3.75), (3.28, 3.53), stroke: 0.45pt)
  line((3.20, 3.75), (3.42, 3.53), stroke: 0.45pt)
  line((3.34, 3.75), (3.56, 3.53), stroke: 0.45pt)
  line((3.48, 3.75), (3.70, 3.53), stroke: 0.45pt)
  line((3.62, 3.75), (3.70, 3.67), stroke: 0.45pt)

  line((0.30, 3.75), (2.26, 3.75), (2.16, 3.90), (0.30, 3.90), close: true, stroke: 0.9pt)
  line((2.34, 3.75), (4.30, 3.75), (4.30, 3.90), (2.44, 3.90), close: true, stroke: 0.9pt)
  line((1.55, 3.90), (2.10, 3.90), (1.95, 4.15), (1.55, 4.15), close: true, stroke: 0.9pt)
  line((2.50, 3.90), (3.05, 3.90), (3.05, 4.15), (2.65, 4.15), close: true, stroke: 0.9pt)
  rect((0.90, 3.53), (3.70, 3.75), stroke: 0.9pt)

  line((1.63, 4.45), (1.63, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.75, 4.45), (1.75, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.87, 4.45), (1.87, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 4.45), (2.85, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.45, 3.23), (1.45, 3.53), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, 3.23), (2.30, 3.53), mark: (end: ">"), stroke: 0.75pt)
  line((3.15, 3.23), (3.15, 3.53), mark: (end: ">"), stroke: 0.75pt)

  // Panel 2: Ordine di ripresa per realizzare il cordone a X
  content((2.30, 2.40), text(size: 8.5pt)[Ordine di ripresa per realizzare il cordone a X], anchor: "center")
  content((2.30, 2.10), text(size: 8.5pt)[per bilanciare l'introduzione del calore nel], anchor: "center")
  content((2.30, 1.80), text(size: 8.5pt)[pezzo], anchor: "center")

  line((0.30, 0.10), (1.75, 0.10), (2.14, 0.65), (2.14, 0.85), (1.75, 1.40), (0.30, 1.40), close: true, stroke: 0.9pt)
  line((4.30, 0.10), (2.85, 0.10), (2.46, 0.65), (2.46, 0.85), (2.85, 1.40), (4.30, 1.40), close: true, stroke: 0.9pt)

  arc((2.30, 0.595), start: 55.66deg, stop: 124.34deg, radius: 0.975, anchor: "origin", stroke: 0.8pt)
  arc((2.30, 0.274), start: 66.64deg, stop: 113.36deg, radius: 0.976, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 0.282), start: 72.49deg, stop: 107.51deg, radius: 0.648, anchor: "origin", stroke: 0.7pt)

  arc((2.30, 1.262), start: 253.19deg, stop: 286.81deg, radius: 0.702, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 1.479), start: 251.72deg, stop: 288.28deg, radius: 1.189, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 2.432), start: 257.06deg, stop: 282.94deg, radius: 2.362, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 0.905), start: 235.66deg, stop: 304.34deg, radius: 0.975, anchor: "origin", stroke: 0.8pt)

  content((2.30, 0.75), text(size: 6.5pt)[$1$], anchor: "center")
  content((2.30, 0.42), text(size: 6.5pt)[$2$], anchor: "center")
  content((2.30, 1.09), text(size: 6.5pt)[$3$], anchor: "center")
  content((2.30, 0.18), text(size: 6.0pt)[$4$], anchor: "center")
  content((2.30, 1.41), text(size: 6.5pt)[$5$], anchor: "center")
  content((2.30, 0.00), text(size: 6.0pt)[$6$], anchor: "center")

  content((4.30, -0.30), text(size: 5.5pt)[da A. De Paulis, E. Manfredi, C. di Macchine], anchor: "east")

  // Panel 3: Ordine di esecuzione di un cordone lungo
  content((2.30, -1.10), text(size: 8.5pt)[Ordine di esecuzione di un cordone lungo], anchor: "center")

  rect((0.40, -2.23), (1.16, -2.07), fill: luma(195), stroke: none)
  rect((1.92, -2.23), (2.68, -2.07), fill: luma(195), stroke: none)
  rect((3.44, -2.23), (4.20, -2.07), fill: luma(195), stroke: none)

  arc((0.44, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.54, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.64, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.74, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.84, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.94, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((1.04, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  arc((1.96, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.06, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.16, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.26, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.36, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.46, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.56, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  arc((3.48, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.58, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.68, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.78, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.88, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.98, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((4.08, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  rect((0.40, -2.85), (4.20, -1.45), stroke: 0.9pt)
  line((0.40, -2.07), (4.20, -2.07), stroke: 0.8pt)
  line((0.40, -2.23), (4.20, -2.23), stroke: 0.8pt)
  line((1.16, -2.23), (1.16, -2.07), stroke: 0.75pt)
  line((1.92, -2.23), (1.92, -2.07), stroke: 0.75pt)
  line((2.68, -2.23), (2.68, -2.07), stroke: 0.75pt)
  line((3.44, -2.23), (3.44, -2.07), stroke: 0.75pt)

  content((0.78, -2.42), text(size: 7.5pt)[$3$], anchor: "center")
  content((1.54, -2.42), text(size: 7.5pt)[$5$], anchor: "center")
  content((2.30, -2.42), text(size: 7.5pt)[$1$], anchor: "center")
  content((3.06, -2.42), text(size: 7.5pt)[$4$], anchor: "center")
  content((3.82, -2.42), text(size: 7.5pt)[$2$], anchor: "center")

  // Panel 4: Deformazione imposta prima dell'esecuzione della saldatura
  content((2.30, -3.70), text(size: 8.5pt)[Deformazione imposta prima], anchor: "center")
  content((2.30, -4.00), text(size: 8.5pt)[dell'esecuzione della saldatura], anchor: "center")

  arc((2.30, 1.97), start: 255.75deg, stop: 284.25deg, radius: 6.50, anchor: "origin", stroke: 0.9pt)
  arc((2.30, 1.97), start: 255.75deg, stop: 284.25deg, radius: 6.41, anchor: "origin", stroke: 0.9pt)
  line((0.70, -4.33), (0.722, -4.243), stroke: 0.9pt)
  line((3.90, -4.33), (3.878, -4.243), stroke: 0.9pt)

  arc((2.30, -11.33), start: 75.75deg, stop: 104.25deg, radius: 6.50, anchor: "origin", stroke: 0.9pt)
  arc((2.30, -11.33), start: 75.75deg, stop: 104.25deg, radius: 6.41, anchor: "origin", stroke: 0.9pt)
  line((0.70, -5.03), (0.722, -5.117), stroke: 0.9pt)
  line((3.90, -5.03), (3.878, -5.117), stroke: 0.9pt)

  line((0.70, -4.73), (0.70, -5.03), mark: (end: ">"), stroke: 0.75pt)
  line((3.90, -4.73), (3.90, -5.03), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, -5.22), (2.30, -4.92), mark: (end: ">"), stroke: 0.75pt)

  rect((0.70, -5.60), (3.90, -5.51), stroke: 0.9pt)
})])

=== Effetto di intaglio nelle saldature
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nelle saldature coesistono due distinti meccanismi di concentrazione delle tensioni:
- #strong[Intaglio geometrico]: dovuto alla discontinuità geometrica della sezione trasversale al piede del cordone di saldatura (dove si forma uno spigolo rispetto alla faccia della lamiera, sia sul lato superiore sia su quello inferiore) nonché a eventuali fessure interne.
- #strong[Intaglio metallurgico]: nella zona di transizione tra metallo base e metallo d'apporto (ZTA) si ha una variazione brusca e localizzata delle caratteristiche meccaniche, chimico-fisiche ed elastiche del materiale, che ne accresce la disomogeneità e l'anisotropia. Ciò perturba il flusso delle tensioni generando picchi locali di tensione. Anche qualora il cordone venga molato a filo per eliminare completamente l'intaglio geometrico, l'effetto di intaglio metallurgico permane in quanto legato all'alterazione microstrutturale.],[#canvas(length: 1cm, {
  import draw: *

  line((0.2, 0.7), (0.5, 0.4), stroke: 0.55pt)
  line((0.2, 1.1), (0.9, 0.4), stroke: 0.55pt)
  line((0.2, 1.5), (1.3, 0.4), stroke: 0.55pt)
  line((0.5, 1.6), (1.7, 0.4), stroke: 0.55pt)
  line((0.9, 1.6), (1.896, 0.604), stroke: 0.55pt)
  line((1.3, 1.6), (1.572, 1.328), stroke: 0.55pt)

  line((2.164, 0.736), (2.5, 0.4), stroke: 0.55pt)
  line((2.287, 1.013), (2.9, 0.4), stroke: 0.55pt)
  line((2.411, 1.289), (3.3, 0.4), stroke: 0.55pt)
  line((2.535, 1.565), (3.7, 0.4), stroke: 0.55pt)
  line((2.9, 1.6), (3.8, 0.7), stroke: 0.55pt)
  line((3.3, 1.6), (3.8, 1.1), stroke: 0.55pt)
  line((3.7, 1.6), (3.8, 1.5), stroke: 0.55pt)

  line((1.92, 0.46), (2.137, 0.677), stroke: 0.5pt)
  line((1.905, 0.585), (2.250, 0.930), stroke: 0.5pt)
  line((1.861, 0.681), (2.364, 1.184), stroke: 0.5pt)
  line((1.818, 0.778), (2.477, 1.437), stroke: 0.5pt)
  line((1.775, 0.875), (2.531, 1.631), stroke: 0.5pt)
  line((1.731, 0.971), (2.470, 1.710), stroke: 0.5pt)
  line((1.688, 1.068), (2.399, 1.779), stroke: 0.5pt)
  line((1.645, 1.165), (2.316, 1.836), stroke: 0.5pt)
  line((1.602, 1.262), (2.220, 1.880), stroke: 0.5pt)
  line((1.558, 1.358), (2.110, 1.910), stroke: 0.5pt)
  line((1.515, 1.455), (1.980, 1.920), stroke: 0.5pt)
  line((1.472, 1.552), (1.811, 1.891), stroke: 0.5pt)

  line((0.2, 1.6), (1.45, 1.6), stroke: 1pt)
  line((2.55, 1.6), (3.8, 1.6), stroke: 1pt)
  line((0.2, 0.4), (1.92, 0.4), stroke: 1pt)
  line((1.92, 0.4), (1.92, 0.45), stroke: 1pt)
  arc((2.0, 0.45), start: 0deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((2.08, 0.45), (2.08, 0.4), stroke: 1pt)
  line((2.08, 0.4), (3.8, 0.4), stroke: 1pt)

  line((1.45, 1.6), (1.92, 0.55), (1.92, 0.45), stroke: 0.9pt)
  line((2.55, 1.6), (2.08, 0.55), (2.08, 0.45), stroke: 0.9pt)
  arc((2.0, 1.287), start: 29.62deg, stop: 150.38deg, radius: 0.633, anchor: "origin", stroke: 1pt)

  line((1.82, 1.07), (1.92, 1.19), (2.04, 1.29), (1.94, 1.17), close: true, fill: black, stroke: none)

  line((3.15, 2.22), (2.61, 1.66), mark: (end: ">"), stroke: 1.5pt)
  line((1.20, 0.52), (1.80, 1.06), mark: (end: ">"), stroke: 1.5pt)
  line((2.62, -0.22), (2.08, 0.34), mark: (end: ">"), stroke: 1.5pt)

  content((3.18, 2.26), text(size: 8pt)[_Intaglio_], anchor: "south-west")
  content((1.10, 0.26), text(size: 8pt)[_Fessura \ interna_], anchor: "north")
  content((2.66, -0.24), text(size: 8pt)[_Intaglio_], anchor: "north-west")

  line((5.4, 0.7), (5.7, 0.4), stroke: 0.55pt)
  line((5.4, 1.1), (6.1, 0.4), stroke: 0.55pt)
  line((5.4, 1.5), (6.5, 0.4), stroke: 0.55pt)
  line((5.7, 1.6), (6.9, 0.4), stroke: 0.55pt)
  line((6.1, 1.6), (7.096, 0.604), stroke: 0.55pt)
  line((6.5, 1.6), (6.772, 1.328), stroke: 0.55pt)

  line((7.364, 0.736), (7.7, 0.4), stroke: 0.55pt)
  line((7.487, 1.013), (8.1, 0.4), stroke: 0.55pt)
  line((7.611, 1.289), (8.5, 0.4), stroke: 0.55pt)
  line((7.735, 1.565), (8.9, 0.4), stroke: 0.55pt)
  line((8.1, 1.6), (9.0, 0.7), stroke: 0.55pt)
  line((8.5, 1.6), (9.0, 1.1), stroke: 0.55pt)
  line((8.9, 1.6), (9.0, 1.5), stroke: 0.55pt)

  line((7.12, 0.46), (7.337, 0.677), stroke: 0.5pt)
  line((7.105, 0.585), (7.450, 0.930), stroke: 0.5pt)
  line((7.061, 0.681), (7.564, 1.184), stroke: 0.5pt)
  line((7.018, 0.778), (7.677, 1.437), stroke: 0.5pt)
  line((6.975, 0.875), (7.700, 1.600), stroke: 0.5pt)
  line((6.931, 0.971), (7.560, 1.600), stroke: 0.5pt)
  line((6.888, 1.068), (7.420, 1.600), stroke: 0.5pt)
  line((6.845, 1.165), (7.280, 1.600), stroke: 0.5pt)
  line((6.802, 1.262), (7.140, 1.600), stroke: 0.5pt)
  line((6.758, 1.358), (7.000, 1.600), stroke: 0.5pt)
  line((6.715, 1.455), (6.860, 1.600), stroke: 0.5pt)
  line((6.672, 1.552), (6.720, 1.600), stroke: 0.5pt)

  line((7.637, 1.347), (7.890, 1.600), stroke: 0.5pt)
  line((7.523, 1.093), (8.030, 1.600), stroke: 0.5pt)
  line((7.474, 0.904), (8.170, 1.600), stroke: 0.5pt)
  line((7.570, 0.860), (8.270, 1.560), stroke: 0.5pt)
  line((7.684, 0.834), (8.296, 1.446), stroke: 0.5pt)
  line((7.825, 0.835), (8.295, 1.305), stroke: 0.5pt)
  line((8.047, 0.917), (8.213, 1.083), stroke: 0.5pt)

  line((5.4, 1.6), (9.0, 1.6), stroke: 1pt)
  line((5.4, 0.4), (9.0, 0.4), stroke: 1pt)
  line((6.65, 1.6), (7.12, 0.55), (7.12, 0.4), stroke: 0.9pt)
  line((7.75, 1.6), (7.28, 0.55), (7.28, 0.4), stroke: 0.9pt)

  circle((7.75, 1.38), radius: 0.55, stroke: 0.75pt)
  line((8.35, 2.50), (7.77, 1.63), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))

  content((7.35, 2.22), text(size: 8pt)[_Intaglio \ metallurgico_], anchor: "south")

})])

=== Tipi di giunti saldati
#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La normativa tecnica riconduce la grande varietà di soluzioni costruttive a due paradigmi fondamentali di analisi: il #strong[giunto testa a testa] e il #strong[cordone d'angolo] (che collega due superfici orientate tra loro a $90 degree$). Una selezione dei principali tipi di giunti comprende:
1. #strong[Giunto testa a testa (1)]: unisce due elementi complanari mediante un cianfrino praticato sui lembi.
2. #strong[Giunto a T a completa penetrazione (2)]: combina entrambi i paradigmi, poiché la parte interna lavora come un giunto testa a testa mentre i due triangoli esterni lavorano come cordoni d'angolo.
3. #strong[Giunto a T con cordone d'angolo (3)]: unisce due piastre perpendicolari tramite cordoni d'angolo.
4. #strong[Giunto a croce con cordoni d'angolo (4)]: costituito da quattro cordoni d'angolo che collegano due piastre ad una piastra passante perpendicolare.
5. #strong[Giunto a sovrapposizione (5)] (#emph[overlap]): collega due lamiere sovrapposte mediante cordoni d'angolo deposti tra il lembo di una piastra e la faccia dell'altra; presenta una marcata asimmetria.
6. #strong[Giunto a semplice coprigiunto (6)]: mantiene allineate due piastre mediante una piastra di banda superiore collegata con cordoni d'angolo, rimanendo comunque asimmetrico.
7. #strong[Giunto a doppio coprigiunto (7)]: impiega due coprigiunti uguali e opposti saldati su entrambi i lati; aumenta lo spessore complessivo ma garantisce simmetria di comportamento e bilanciamento delle masse.],[#canvas(length: 1.1cm, {
  import draw: *

  // (1)
  rect((0.95, 10.80), (2.75, 11.12), stroke: 0.9pt)
  line((1.67, 11.12), (2.03, 11.12), (1.85, 10.80), close: true, fill: black, stroke: 0.9pt)
  content((1.35, 11.33), text(size: 7.5pt)[(1)], anchor: "center")

  // (2)
  rect((0.95, 8.78), (2.75, 9.10), stroke: 0.9pt)
  line((1.67, 10.30), (2.03, 10.30), (2.03, 9.26), (1.85, 9.10), (1.67, 9.26), close: true, stroke: 0.9pt)
  line((1.49, 9.10), (1.81, 9.10), (1.67, 9.26), close: true, fill: black, stroke: 0.9pt)
  line((1.89, 9.10), (2.21, 9.10), (2.03, 9.26), close: true, fill: black, stroke: 0.9pt)
  content((1.30, 10.03), text(size: 7.5pt)[(2)], anchor: "center")

  // (3)
  rect((0.95, 6.76), (2.75, 7.08), stroke: 0.9pt)
  rect((1.67, 7.08), (2.03, 8.28), stroke: 0.9pt)
  line((1.49, 7.08), (1.67, 7.08), (1.67, 7.26), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 7.08), (2.21, 7.08), (2.03, 7.26), close: true, fill: black, stroke: 0.9pt)
  content((1.30, 8.01), text(size: 7.5pt)[(3)], anchor: "center")

  // (4)
  rect((0.95, 4.84), (2.75, 5.16), stroke: 0.9pt)
  rect((1.67, 5.16), (2.03, 6.26), stroke: 0.9pt)
  rect((1.67, 3.74), (2.03, 4.84), stroke: 0.9pt)
  line((1.49, 5.16), (1.67, 5.16), (1.67, 5.34), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 5.16), (2.21, 5.16), (2.03, 5.34), close: true, fill: black, stroke: 0.9pt)
  line((1.49, 4.84), (1.67, 4.84), (1.67, 4.66), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 4.84), (2.21, 4.84), (2.03, 4.66), close: true, fill: black, stroke: 0.9pt)
  content((2.40, 5.90), text(size: 7.5pt)[(4)], anchor: "center")

  // (5)
  rect((0.45, 2.92), (2.25, 3.24), stroke: 0.9pt)
  rect((1.45, 2.60), (3.25, 2.92), stroke: 0.9pt)
  line((2.25, 2.92), (2.43, 2.92), (2.25, 3.10), close: true, fill: black, stroke: 0.9pt)
  line((1.27, 2.92), (1.45, 2.92), (1.45, 2.74), close: true, fill: black, stroke: 0.9pt)
  content((2.83, 3.13), text(size: 7.5pt)[(5)], anchor: "center")

  // (6)
  rect((0.00, 1.46), (1.77, 1.78), stroke: 0.9pt)
  rect((1.93, 1.46), (3.70, 1.78), stroke: 0.9pt)
  rect((0.95, 1.78), (2.75, 2.10), stroke: 0.9pt)
  line((0.73, 1.78), (0.95, 1.78), (0.95, 2.00), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 1.78), (2.97, 1.78), (2.75, 2.00), close: true, fill: black, stroke: 0.9pt)
  content((3.30, 2.01), text(size: 7.5pt)[(6)], anchor: "center")

  // (7)
  rect((0.00, 0.32), (1.77, 0.64), stroke: 0.9pt)
  rect((1.93, 0.32), (3.70, 0.64), stroke: 0.9pt)
  rect((0.95, 0.64), (2.75, 0.96), stroke: 0.9pt)
  rect((0.95, 0.00), (2.75, 0.32), stroke: 0.9pt)
  line((0.73, 0.64), (0.95, 0.64), (0.95, 0.86), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 0.64), (2.97, 0.64), (2.75, 0.86), close: true, fill: black, stroke: 0.9pt)
  line((0.73, 0.32), (0.95, 0.32), (0.95, 0.10), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 0.32), (2.97, 0.32), (2.75, 0.10), close: true, fill: black, stroke: 0.9pt)
  content((3.30, 0.87), text(size: 7.5pt)[(7)], anchor: "center")
})])

=== Principali criteri per il progetto di giunti saldati ed esempi costruttivi
Una corretta progettazione dei collegamenti saldati deve rispettare una serie di criteri geometrici e tecnologici volti a garantire eseguibilità, integrità strutturale e contenimento delle tensioni residue:

- #strong[Uniformità degli spessori]: non si devono collegare direttamente lamiere di spessore molto differente; occorre rastremare la lamiera più spessa in corrispondenza del giunto fino a portarla allo spessore dell'altra (sia nei collegamenti piani asimmetrici o simmetrici, sia nei collegamenti ad angolo). Analogamente, un profilato o un tubo non può essere saldato direttamente a un parallelepipedo o a un disco di dimensioni rilevanti senza un'opportuna preparazione tecnologica della superficie di raccordo (operazione che può tuttavia risultare costosa).
- #strong[Divieto di terminazioni "a punta"]: una lamiera sottile non deve terminare a spigolo vivo (angolo acuto) nella zona di saldatura, poiché lo spigolo fonde completamente con il materiale base/d'apporto perdendo la propria funzione geometrica.
- #strong[Divieto di incrocio o sovrapposizione delle saldature]: una volta eseguito un cordone, non bisogna rifonderlo per deporne un altro. Nel caso dell'incontro di più tubi angolati su una stessa piastra, lo spazio residuo renderebbe estremamente difficile l'esecuzione dei cordoni d'angolo: è preferibile interporre un tubo di diametro maggiore che offra una superficie di riscontro più ampia e accessibile. Allo stesso modo, quando una costola di rinforzo incontra una giunzione a T già saldata, si pratica uno scarico (foro o smusso) nell'angolo della costola affinché i cordoni della costola non intersechino il cordone principale della T.
- #strong[Accessibilità e geometria delle superfici di riscontro]: prima di definire il disegno tecnico occorre valutare l'accessibilità per l'esecuzione dei cordoni, gli ingombri delle attrezzature (portaelettrodi/materiale d'apporto) e la modalità esecutiva (manuale, semiautomatica o automatizzata tramite robot). Ad esempio, per fissare un tubo spesso su una piastra, adagiarlo direttamente sul piano è errato per la difficoltà di saldatura; appiattire la base del tubo rappresenta una soluzione buona (poiché sostituisce la linea di contatto con una superficie rettangolare), ma l'accesso nell'angolo rimane disagevole; la soluzione migliore consiste nell'utilizzare un cosiddetto "tubo quadrato" (condotto interno circolare con involucro esterno a sezione parallelepipeda), che consente di deporre agevolmente i cordoni d'angolo.
- #strong[Evitare lunghi cordoni continui allineati]: nella realizzazione di cilindri lunghi o recipienti in pressione, eseguire saldature longitudinali continue allineate lungo la medesima generatrice concentra le tensioni residue da un solo lato della struttura. È preferibile suddividere il cilindro in tronchi e sfalsare (ruotare angolarmente) la posizione del cordone longitudinale tratto per tratto, ottenendo una naturale compensazione delle tensioni residue attorno all'asse e facilitando l'accesso dell'operatore.

- #strong[Centraggio e stabilizzazione]: per elementi di notevole sviluppo verticale o soggetti a momenti ribaltanti (come un perno filettato o un'attrezzatura di supporto su una piastra di base), la semplice saldatura perimetrale in appoggio risulta poco precisa e vulnerabile al ribaltamento sia durante la saldatura sia in esercizio. È preferibile praticare un foro nella parete di base in cui inserire e centrare l'elemento, eseguendo la saldatura anche nella zona centrale inferiore.
- #strong[Riduzione del numero di cordoni]: occorre evitare per quanto possibile di frazionare un componente in molte lamiere distinte da saldare tra loro, soluzione che richiede attrezzature complesse per il posizionamento e aumenta il rischio di distorsioni geometriche dovute alle tensioni residue. Quando possibile, è preferibile ricavare il corpo principale mediante piegatura di un'unica lamiera e limitare le saldature ai soli fondi.

== Saldature (Collegamenti saldati) – Progettazione e verifica

==== Normativa di riferimento e qualificazione del giunto saldato

La descrizione tecnologica del processo di saldatura è propedeutica alla fase di progettazione e verifica strutturale. Poiché la saldatura è un processo tecnologico eseguito sul momento mediante trasformazione del materiale — a differenza di collegamenti come viti e bulloni, in cui il serraggio determina condizioni di accoppiamento predeterminate da materiale, lubrificazione e geometria — la qualità finale del giunto dipende da diversi elementi critici regolamentati da specifiche normative tecniche:

- #strong[Procedimenti di saldatura e tipi di giunti:] normati dalla UNI 1307.
- #strong[Qualificazione della tecnologia e del procedimento:] poiché il processo di saldatura (#emph[welding]) può essere realizzato con modalità, strumenti e parametri molto differenti, la normativa americana ASME (associazione degli ingegneri meccanici americana) ne disciplina la qualificazione attraverso la certificazione ASME PQR/WPS.
- #strong[Qualificazione dell'operatore (saldatura manuale):] essendo l'esecuzione legata all'abilità, alla professionalità e alla competenza del saldatore (in relazione a tecnologie, dimensioni e accessibilità differenti), l'operatore deve essere dotato di uno specifico patentino che certifica i diversi livelli di precisione e qualità raggiungibili, disciplinato sia in ambito europeo sia americano (certificazione ASME WPQ).
- #strong[Qualificazione del cordone di saldatura:] il cordone deve essere monitorato sia immediatamente dopo l'esecuzione del processo sia periodicamente nel tempo, al fine di individuare difetti o la loro propagazione nella zona adiacente con conseguente rischio di cedimento. Tale verifica avviene mediante #strong[controlli non distruttivi (CND)] — quali raggi X (RX) e/o ultrasuoni (US) — che non alterano le caratteristiche meccaniche, chimiche e fisiche del giunto.
- #strong[Resistenza statica e a fatica del giunto:] disciplinata dalla normativa europea Eurocodice 3, introdotta nel 1993 e successivamente rielaborata (norme UNI EN 1993 1-8 per la verifica statica e UNI EN 1993 1-9 per la verifica a fatica).

Quando un progetto dipende fortemente da un processo tecnologico, l'analisi analitica e numerica non è da sola sufficiente a garantire il comportamento in esercizio della struttura: occorre qualificare il processo, il manufatto e l'operatore, ipotizzare livelli minimi di difettosità ammissibile (pratica standard in ambito aeronautico, aerospaziale e nucleare), programmare ispezioni periodiche documentate e orientare gli interventi verso una manutenzione il più possibile predittiva anziché correttiva.

==== Difetti nel cordone di saldatura

Al termine di un processo tecnologico complesso è molto difficile ottenere un cordone privo di imperfezioni. Le discontinuità rilevate tramite controlli non distruttivi diventano veri e propri #strong[difetti] quando superano i limiti di accettazione — in termini di tipologia, distribuzione, localizzazione, numerosità, dimensione e gravità — fissati dalle normative tecniche (UNI, ASME, IIW – Istituto Internazionale/Europeo di Saldatura, e Istituto Italiano di Saldatura). L'identificazione e l'accettabilità vengono stabilite confrontando i risultati dei controlli non distruttivi con immagini di riferimento, definizioni e limiti quantitativi normativi.

Un metodo di riferimento molto diffuso (ad esempio nell'industria nucleare) è il #strong[referto radiografico], interpretato da una figura tecnica specializzata nella diagnosi non distruttiva (analoga al radiologo in medicina). Sulla radiografia i difetti appaiono prevalentemente come zone più scure (a minore densità rispetto al materiale circostante) all'interno della traccia più chiara del cordone, ad eccezione delle inclusioni di tungsteno che risultano più chiare e lucenti. I difetti più comuni sono: pori e tarli, inclusioni di scoria e di tungsteno, mancanza di penetrazione e/o mancanza di fusione, e cricche trasversali e longitudinali.

Tali difetti hanno un impatto strutturale molto diverso: mentre pori, tarli, inclusioni e mancanze di penetrazione o fusione costituiscono in prima battuta imperfezioni tecnologiche (che possono comunque favorire successivamente la nucleazione di fratture), le #strong[cricche] sono già veri e propri danneggiamenti strutturali estremamente pericolosi, poiché propagano all'aumentare dei cicli di carico in condizioni dinamiche e affaticanti.

Le principali tipologie di difetti (escluse le cricche) presentano le seguenti caratteristiche:

- #strong[Pori (e soffiature):] dovuti allo sviluppo di vapore acqueo o gas intrappolati nel cordone (ad esempio per l'uso di elettrodi a rivestimento basico non ben essiccati). Sono vuoti congelati nel materiale con densità molto inferiore a quella del metallo del cordone e appaiono sulla radiografia come macchie piccole, tondeggianti e scure (simili a nuvolette). Si distinguono le porosità ($nothing lt.eq 1 "mm"$) dalle soffiature ($nothing gt.eq 1 "mm"$). Le principali origini comprendono: nella saldatura ossiacetilenica, fiamma mal regolata, eccesso di carbonio nel metallo base, acciaio non calmato, dardo troppo lontano o eccesso di acetilene; nella saldatura elettrica manuale, elettrodi umidi o mal conservati, arco troppo lungo, ambiente umido o lembi ossidati; nella saldatura ArgonArc, arco troppo lungo o insufficienza/scarsa purezza del gas inerte; nella saldatura ad arco sommerso e Sigma sono poco probabili (eventualmente dovuti a insufficienza di flusso protettivo).
- #strong[Tarli (e nidi di tarli):] originati dall'unione di più pori ravvicinati in successione durante il processo e il raffreddamento. Sono inclusioni di gas non tondeggianti, singole o raggruppate, che appaiono sulla radiografia come macchie allungate e scure con bordi lisci (piccoli segmenti o configurazioni a spina di pesce, spesso presenti numerosi nella stessa zona). Sono tipici della saldatura elettrica manuale per cattiva tecnica operativa con elettrodi basici, elettrodi umidi o di cattiva qualità, eccessiva corrente o ambiente umido, mentre risultano poco probabili nella saldatura ossiacetilenica (cattiva tecnica operativa), ArgonArc, arco sommerso e Sigma.
- #strong[Inclusioni di scoria:] dipendono dalla natura dell'elettrodo, dal suo stato di conservazione e dalla scarsa pulizia della scoria dell'elettrodo nella saldatura manuale. Appaiono come macchie piccole e scure con bordi irregolari dovute alla contaminazione da materiale estraneo. Possono presentarsi anche come #strong[inclusioni di scoria allungate o allineate] (ossidi o sottoprodotti del processo racchiusi nel metallo saldato), visibili come linee scure sensibilmente larghe, irregolari, continue o interrotte e allineate con la saldatura (più localizzate e discrete rispetto ai tarli). Nella saldatura elettrica manuale derivano da scarsa pulizia a fine passata, profilo irregolare delle passate sottostanti, scarsa abilità del saldatore o cattiva preparazione dei lembi; nell'arco sommerso da una passata inferiore con profilo eccessivamente convesso.
- #strong[Inclusioni di tungsteno:] si verificano esclusivamente nella saldatura TIG (ArgonArc) in seguito al contatto accidentale tra l'elettrodo in tungsteno e il materiale base (cattiva tecnica operativa). Per la diversa natura del materiale appaiono come macchie tondeggianti o irregolari molto chiare, bianchissime e lucenti, di dimensioni variabili, quindi facilmente identificabili.
- #strong[Mancanza di penetrazione, mancanza di fusione e incollatura:] dovute tipicamente a un'eccessiva velocità di passata e a un incompleto riempimento del vano del cordone (cianfrino), per cui l'adesione non si realizza sull'intera superficie disponibile. La #strong[mancanza di penetrazione] appare come una linea scura longitudinale piuttosto spessa ed evidente al centro del cordone. La #strong[mancanza di fusione] (imperfetta o mancata fusione tra materiale base e metallo d'apporto) appare come una linea scura, finissima (o più marcata a seconda dello spessore del difetto), localizzata fuori centro verso i lembi; le origini includono eccessiva distanza dei lembi, eccessiva velocità di avanzamento, posizione di lavoro (es. sopratesta), potenza del cannello eccessiva (ossiacetilenica), slivellamento dei lembi (elettrica manuale) o insufficiente corrente di saldatura (arco sommerso e Sigma). L'#strong[incollatura] corrisponde analogamente a una superficie non perfettamente adesa tra i bordi, visibile come una sottile linea scura longitudinale di discontinuità.
- #strong[Cordone incompleto, insellamento e incisione marginale:] un'incompletezza nell'esecuzione del cordone produce zone non coperte o coperte parzialmente con ombre radiografiche regolari dovute alla variazione di densità. L'#strong[insellamento] consiste in un cedimento o avvallamento locale del cordone che modifica la risposta radiografica; l'#strong[incisione marginale] consiste in incisioni laterali lungo i bordi del cordone.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Quattro schemi comparativi di difetti di saldatura su referto radiografico: inclusioni di scoria, incollatura, mancanza di penetrazione e cordone incompleto. Per ciascun difetto sono riportati: a) sezione trasversale del giunto saldato, b) andamento del profilo di densità (alta/bassa) lungo la sezione, c) immagine radiografica reale con riquadri rossi che evidenziano rispettivamente i punti scuri delle scorie, la linea sottile dell'incollatura, la linea scura spessa della mancanza di penetrazione e l'ombra regolare del cordone incompleto.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schemi comparativi di insellamento e incisione marginale (ciascuno con a) sezione trasversale, b) profilo di densità alta/bassa, c) referto radiografico con riquadri rossi) e scheda normativa Fig. 93.1 dedicata a porosità e soffiature, contenente sezione schematica del cordone con bolle interne, referto radiografico con macchie scure tondeggianti evidenziate e legenda di definizione, aspetto radiografico e principali origini per i vari procedimenti di saldatura.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schede normative Fig. 93.2 (tarli e nidi di tarli) e Fig. 93.3 (inclusioni di scoria allungate o allineate). Ciascuna scheda mostra la sezione trasversale schematica del cordone, il corrispondente referto radiografico con riquadro/cerchio rosso sull'anomalia (segmenti allungati a spina di pesce per i tarli e linee scure larghe e irregolari per le scorie) e il testo con definizione, aspetto radiografico e principali origini.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schede normative Fig. 93.4 (inclusioni di tungsteno) e Fig. 93.5 (mancanza di fusione). Ciascuna scheda mostra la sezione trasversale schematica del cordone, il corrispondente referto radiografico con riquadro rosso sull'anomalia (macchie bianchissime brillanti per il tungsteno e linea scura finissima fuori centro per la mancanza di fusione) e il testo con definizione, aspetto radiografico e principali origini.]])

==== Cricche

Le cricche si distinguono nettamente dagli altri difetti poiché costituiscono già un danneggiamento attivo della struttura, potenzialmente fatale per la sicurezza. Di conseguenza, la presenza di cricche comporta sempre la #strong[non accettazione] del giunto saldato: il cordone va scartato, rimosso e rifatto completamente. Sul referto radiografico le cricche compaiono come tracce corte e scure, trasversali o longitudinali rispetto al cordone. Si distinguono in due categorie principali:

- #strong[Cricche a caldo] (formate oltre i $700 degree "C"$): dovute alla presenza di un bagno di saldatura arricchito di impurezze (principalmente zolfo $S$ e fosforo $P$) causate dall'impiego di elettrodi non puliti. Sono generalmente localizzate verso il centro del cordone.
- #strong[Cricche a freddo] (a fine raffreddamento o ritardate): dovute alla diversa solubilità dell'idrogeno ($H_2$) nel metallo caldo rispetto a quello freddo, con idrogeno proveniente dai rivestimenti degli elettrodi oppure dai flussi esterni o interni nella saldatura ad arco sommerso o MIG/MAG. Sono localizzate ai bordi del cordone oppure nella zona termicamente alterata del materiale base, ossia sui fianchi appartenenti alle parti congiunte interessate termicamente dal processo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In ambiti particolarmente critici per la sicurezza (#emph[safety critical]) — come l'industria chimica, l'industria nucleare o le strutture offshore delle piattaforme petrolifere nel Mare del Nord, dove il collasso strutturale comporta gravi danni e perdite di vite umane — sono prescritti controlli periodici serrati (con ripetizione a intervalli massimi di circa sei mesi), confrontando le radiografie nel tempo per individuare tempestivamente l'insorgere di nuovi difetti o anomalie.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Tre fotografie di cricche rilevate con tecniche differenti: in alto a sinistra un ingrandimento macrografico/metallografico di una cricca che si propaga nella sezione del giunto; in alto a destra una cricca lungo un cordone d'angolo messa in evidenza da una traccia rossa su fondo bianco tramite liquidi penetranti; in basso una cricca lungo il cordone evidenziata in verde fluorescente mediante particelle ferromagnetiche illuminate con luce di Wood.]])

==== Controlli non distruttivi (CND)

I controlli non distruttivi permettono di ispezionare il cordone di saldatura senza alterarne l'integrità. Tra i principali metodi impiegati industrialmente rientrano gli ultrasuoni, il controllo magnetoscopico, i liquidi penetranti, l'ispezione visiva e la radiografia.

#strong[Controllo con ultrasuoni (US):] si basa sulla propagazione e riflessione di onde sonore (impulsi ultrasonori) all'interno del materiale alla velocità del suono caratteristica del mezzo. Una sonda compatta, dotata di un disco piezoelettrico sotto una piastra di usura e pilotata da elettronica di potenza e da un computer, viene accoppiata alla superficie del pezzo mediante un fluido, gel o olio accoppiante (#emph[couplant]) che assicura il contatto acustico e il passaggio delle onde. Esistono due modalità operative principali: nella modalità #strong[impulso-eco (#emph[pulse-echo])] un unico trasduttore emette l'impulso e riceve l'eco riflesso; su un monitor (intensità sull'asse verticale $Y$, tempo — o profondità calcolata nota la velocità del suono — sull'asse orizzontale $X$), in una zona priva di difetti compaiono soltanto l'impulso di trasmissione e l'eco della superficie opposta (#emph[back wall echo]), mentre una cavità o discontinuità interna riflette anticipatamente tutto o parte dell'impulso generando un eco di difetto (#emph[defect echo], eventualmente seguito da echi di doppia riflessione). Nella modalità #strong[a trasmissione (#emph[through-transmission])] un secondo trasduttore ricevente posto in posizione opportuna rileva l'attenuazione del segnale bloccato dal difetto oppure lo spostamento del punto e del tempo di volo dell'onda riflessa/rifratta, inclusi gli effetti diffrattivi e di interferenza/sovrapposizione delle onde.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il controllo a ultrasuoni è particolarmente potente e quantitativo perché consente di indagare il pezzo in profondità e di determinare posizione, qualità e dimensione del difetto, lasciando una registrazione precisa e documentabile nel tempo. Un esempio applicativo di controllo impulso-eco riguarda l'ispezione di un cilindro in acciaio alto $200 "mm"$ con difetti interni artificiali non visibili dall'esterno (un foro a $130 "mm"$ di profondità e un taglio di sega a $87 "mm"$, quest'ultimo capace di generare anche un secondo eco minore di doppia riflessione a $174 "mm"$), la cui profondità viene letta tramite #emph[trigger gates] sullo schermo dopo l'applicazione del gel accoppiante. In ambito ferroviario e tranviario, la tecnica viene applicata periodicamente sugli assili cavi delle ruote: dopo aver applicato olio accoppiante nel foro assiale, una sonda dedicata emette impulsi angolati a $45 degree$; in presenza di una cricca esterna si verifica una doppia riflessione che produce un eco tipico di difetto, da distinguere dagli echi di contorno (#emph[contour echoes]) causati dagli spallamenti geometrici dell'assile.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Raccolta sul controllo con ultrasuoni (US): in alto a sinistra schema del controllo ultrasonoro su un cordone di saldatura con sonda e tracciato degli echi; in alto al centro fotografia di un operatore che muove una sonda su un pezzo collegata allo strumento di misura; in alto a destra schermata oscilloscopica con i picchi degli echi in funzione della profondità; in basso a sinistra schema in sezione di un giunto con trasduttori e raggi ultrasonori numerati da 1 a 6; in basso al centro immagine di scansione ultrasonora e relativo tracciato; in basso a destra schema degli effetti diffrattivi nello spazio e nel tempo con trasduttore trasmettente T, ricevente R, zona morta (Dead Zone), percorsi 1, 2, 3 e grafico temporale dell'onda longitudinale (LW) con picchi 1, 2, 3 e intervallo $Delta t$.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Controllo magnetoscopico (particelle magnetiche):] sfrutta la perturbazione delle linee di flusso di un campo magnetico in presenza di discontinuità. La superficie da esaminare viene cosparsa con un liquido contenente particelle ferromagnetiche in sospensione e sottoposta a un campo magnetico generato da un magnetoscopio (che può applicare il campo anche in due direzioni ortogonali tra loro, con tempi di magnetizzazione controllati, ad esempio tra $0","5$ e $2 "s"$, e successivo smagnetizzatore). In corrispondenza di un difetto, la distorsione delle linee di flusso fa concentrare e orientare le particelle lungo i bordi del difetto stesso. Illuminando la zona con luce ultravioletta (luce di Wood), le particelle fluorescenti/fosforescenti rendono immediatamente visibili la localizzazione, la forma e la tipologia della discontinuità. A differenza degli ultrasuoni, questa tecnica è efficace essenzialmente per difetti superficiali: fornisce una percezione immediata della criticità, ma non permette di determinare con precisione le dimensioni in profondità né di documentarle con elevata accuratezza quantitativa.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Tavola sul controllo magnetoscopico e a correnti indotte: in alto a sinistra fotografia di un albero ispezionato con particelle ferromagnetiche fluorescenti verdi sotto luce di Wood; in alto a destra fotografia di un banco magnetoscopico con bobina toroidale di magnetizzazione; in basso a sinistra schema delle linee di flusso magnetico all'interno di un elemento con deviazione in corrispondenza di difetti superficiali e interni; in basso a destra schema con bobina di eccitazione (Excitation coil), linee di campo magnetico (Magnetic field), correnti parassite (Eddy Current) e bobina ricevente (Receiver coil difference).]])

#strong[Controllo con liquidi penetranti:] sfrutta il fenomeno della capillarità per individuare difetti affioranti in superficie (come piccole cricche) e risulta economico, pratico e rapido, sebbene prevalentemente qualitativo. Il procedimento si articola in cinque fasi:

1. #strong[Preparazione e sgrassatura:] pulizia e lavaggio accurato della superficie.
2. #strong[Applicazione del penetrante:] stesura di un liquido o vernice di colore molto acceso (tipicamente rosso), rimovibile con acqua, che penetra per capillarità riempiendo completamente il difetto.
3. #strong[Rimozione dell'eccesso di penetrante:] pulitura superficiale che elimina il velo esterno di liquido senza asportare quello trattenuto per capillarità all'interno della cavità.
4. #strong[Applicazione del rilevatore (sviluppatore):] spruzzatura di un materiale di colore fortemente contrastante (tipicamente bianco) che richiama parzialmente in superficie il penetrante contenuto nel difetto.
5. #strong[Ispezione:] rilevazione visiva immediata delle tracce colorate corrispondenti alle spaccature.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La tecnica viene utilizzata anche come prova di impermeabilizzazione per rilevare esclusivamente #strong[difetti passanti] (controllo di perdite) in una parete: si applica il penetrante su una superficie e lo sviluppatore sulla superficie opposta, verificando l'eventuale comparsa di tracce dovute al passaggio del liquido.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Sequenza operativa del controllo con liquidi penetranti: in alto tre fotografie dell'applicazione su un albero (stesura del liquido rosso a pennello, pulizia e spruzzatura del rilevatore); al centro cinque schemi in sezione della cricca corrispondenti alle fasi di preparazione/sgrassatura, applicazione del penetrante, rimozione dell'eccesso, applicazione del rilevatore e ispezione; in basso schema del controllo di difetto passante (sviluppatore su una faccia e penetrante sulla faccia opposta della parete) e fotografia di una superficie con tracce rosse di cricche.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Ispezione visiva (diretta o robotizzata) e radiografia (RX / tomografia 3D):] l'ispezione visiva diretta consente di fotografare o filmare difetti superficiali tramite telecamere, droni o sistemi robotizzati dotati di fibre ottiche con illuminazione variabile, introdotti ad esempio all'interno di recipienti in pressione vuoti (in analogia con la laparoscopia medica). La #strong[radiografia (RX)] prevede invece l'emissione di radiazioni attraverso il cordone di saldatura e la raccolta del segnale su una pellicola o schermo posto sul lato opposto, fornendo una documentazione permanente, quantitativa e ad alta definizione, essenziale nei settori ad alta criticità di sicurezza come l'industria nucleare. Poiché la radiografia tradizionale su pellicola fornisce una sola proiezione perpendicolare al cordone senza informazioni sulla profondità, l'integrazione tra CND e robotica ha portato a sistemi mobili di tomografia a raggi X (come il sistema #emph[TomoWeld] per tubazioni in acciaio austenitico e ferritico negli impianti nucleari): un manipolatore esegue prima una scansione panoramica attorno al tubo e poi una scansione laminografica lungo l'asse del tubo, ricostruendo un volume radiografico 3D che permette di rilevare difetti non visibili con tecniche convenzionali e di misurarne esattamente posizione, profondità e dimensioni, tutelando la sicurezza dell'operatore in zone di difficile accesso.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema dell'esame radiografico su un giunto saldato (sorgente superiore che emette un fascio conico di raggi X attraverso la saldatura verso la lastra sottostante) e immagine di una radiografia in scala di grigi con macchie circolari chiare di varie dimensioni.]])

#pagebreak()

==== Verifica statica secondo Eurocodice 3 (UNI EN 1993:2005 1-8)

La norma europea #strong[UNI EN 1993:2005 1-8 (Eurocode 3 – Design of steel structures, Part 1-8: Design of joints)] si applica alle costruzioni in acciaio da carpenteria realizzate con gli acciai strutturali #strong[S235, S275, S355, S420 e S460] (in cui il valore numerico dell'acronimo indica la tensione di snervamento in $"MPa"$). Essa definisce le procedure di verifica statica distinguendo tra #strong[giunti saldati testa a testa] (#emph[butt welds]) e #strong[giunti con cordoni d'angolo] (#emph[fillet welds]); lievi variazioni di simbologia e di approccio tra i diversi casi derivano dalla sintesi delle preesistenti normative nazionali europee.

===== Giunti testa a testa e giunti a T a completa penetrazione

Per i giunti testa a testa a completa penetrazione (#emph[butt welds], sezione 4.7 della norma) non viene fornita una specifica procedura di calcolo per la saldatura: si assume che la resistenza della giunzione sia pari alla minore tra quelle delle parti collegate. La stessa schematizzazione si applica ai #strong[giunti a T a completa penetrazione], nei quali una piastra è saldata perpendicolarmente a una piastra di appoggio (tendenzialmente di pari spessore $s$) mediante un cordone composto da una parte nel cianfrino e una porzione esterna simile a un cordone d'angolo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La geometria è caratterizzata dalla lunghezza del cordone $L$, dallo spessore $s$ (minore degli spessori collegati oppure spessore dell'elemento a completa penetrazione) e dalla larghezza totale $H$ (materiale base più materiale d'apporto). Adottando un sistema di riferimento centrato sullo sviluppo longitudinale del cordone (asse lungo $L$), possono essere presenti tre componenti di tensione attive:

- $sigma_perp$: tensione normale (di trazione e/o compressione) perpendicolare alla sezione longitudinale del cordone (cioè perpendicolare alla linea d'asse);
- $tau_parallel$: tensione tangenziale nella sezione longitudinale, parallela allo sviluppo del cordone;
- $sigma_parallel$: tensione normale (di trazione e/o compressione) parallela all'asse del cordone.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Due schemi tridimensionali della geometria e delle tensioni attive: in alto un giunto saldato testa a testa e in basso un giunto a T a completa penetrazione. Su entrambi sono indicate le quote s (spessore), L (lunghezza del cordone), H (larghezza totale) e i vettori delle tensioni $sigma_perp$, $tau_parallel$ e $sigma_parallel$ sulle rispettive facce.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[La sezione resistente $A_(r e s)$ del cordone coincide con le sezioni trasversali di una piastra continua monolitica nelle due direzioni principali:

- per tensioni derivanti da azioni di trazione normali all'asse del cordone ($sigma_perp$) e per tensioni derivanti da azioni di taglio ($tau_parallel$):
$ A_(r e s) = L dot.op s quad (1) $
- per tensioni derivanti da azioni di trazione parallele all'asse del cordone ($sigma_parallel$):
$ A_(r e s) = H dot.op s quad (2) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema tridimensionale del giunto testa a testa con quote L, s e H e superficie tratteggiata che evidenzia la sezione resistente frontale/trasversale del cordone.]])

Trattandosi normalmente di materiale duttile, si calcola la #strong[tensione ideale] secondo l'ipotesi dell'energia di Von Mises. In presenza di tutte e tre le componenti di tensione (due normali e una tangenziale), la formulazione include il termine misto negativo tra le tensioni normali:

$ sigma_(i d) = sqrt(sigma_perp^2 + sigma_parallel^2 - sigma_perp sigma_parallel + 3 tau_parallel^2) $

Sebbene non esplicitamente specificato nella norma, in analogia con i calcoli di resistenza statica delle parti collegate si verifica:

$ sigma_(i d) lt.eq frac(R, S) $

dove $R$ rappresenta il limite di resistenza del materiale delle parti collegate (limite di snervamento in prima battuta e, in seconda battuta, limite di rottura: entrambe le verifiche risultano di interesse) e $S$ è il coefficiente di sicurezza statico, dell'ordine di grandezza di $1","5$.

===== Giunti con cordoni d'angolo (#emph[fillet welds])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nei giunti con cordoni d'angolo (sezione 4.5 della norma), le componenti di tensione che agiscono nel cordone sono:

- $sigma$: tensione normale (di trazione e/o compressione) perpendicolare all'asse del cordone, agente sulle due facce ortogonali;
- $tau$: tensione tangenziale diretta secondo l'asse del cordone;
- $sigma_parallel$: eventuale tensione normale (di trazione e/o compressione) agente nella sezione trasversale del cordone, che #strong[non deve essere considerata] secondo la normativa (scelta che semplifica il modello evitando ambiguità nell'equilibrio delle azioni esterne e trova riscontro nell'osservazione sperimentale).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema tridimensionale di un giunto a T con cordoni d'angolo di lunghezza nominale l. Sono evidenziate le componenti di tensione $sigma$ sulle due facce ortogonali del cordone, $tau$ lungo l'asse del cordone e $sigma_parallel$ sulla sezione trasversale frontale con l'indicazione "NON CONSIDERARE".]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Osservando l'andamento delle linee di flusso delle tensioni che attraversano la sezione trasversale triangolare del cordone d'angolo, la sezione effettivamente perpendicolare al flusso tensionale è la cosiddetta #strong[sezione di gola]. Essa costituisce la sezione resistente di riferimento sia per le tensioni normali all'asse del cordone sia per quelle di taglio lungo l'asse, nell'ipotesi di tensioni distribuite uniformemente (plasticizzazione):

$ A_(r e s) = L dot.op a $

dove:
- $a$ è l'#strong[altezza di gola], ovvero l'altezza del triangolo inscritto nella sezione trasversale del cordone;
- $p$ è il #strong[piede del cordone]; se il piede è simmetrico (triangolo rettangolo isoscele), vale:
$ a = frac(p, sqrt(2)) $
- $L$ è la #strong[lunghezza effettiva del cordone]; per tenere conto degli effetti di bordo alle due estremità del cordone di lunghezza nominale $l$, si detrae la dimensione $a$ da entrambi i lati:
$ L = l - 2a $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Due schemi della sezione di gola di un cordone d'angolo: in alto vista bidimensionale del giunto a T con linee di flusso di tensione che attraversano i cordoni e indicazione della sezione di gola; in basso vista tridimensionale del prisma triangolare del cordone con piede simmetrico p sui due cateti, altezza di gola a, lunghezza effettiva L e piano inclinato tratteggiato della sezione di gola.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Verifica di resistenza statica – 1° metodo (#emph[Directional Method], sezione 4.5.3.2):] la verifica viene condotta nel sistema di riferimento locale solidale alla sezione di gola (sezione critica obliqua). Le componenti di tensione attive sulla sezione di gola sono la tensione normale $sigma_perp^g$, la tensione tangenziale perpendicolare all'asse del cordone $tau_perp^g$ e la tensione tangenziale parallela all'asse del cordone $tau_parallel^g$; la componente normale parallela $sigma_parallel^g$ non si considera.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema tridimensionale della sezione di gola di un cordone d'angolo (metodo direzionale) con rappresentazione dei vettori delle tensioni locali: $sigma_perp^g$ normale al piano inclinato di gola, $tau_perp^g$ e $tau_parallel^g$ giacenti nel piano di gola (rispettivamente perpendicolare e parallela all'asse), e $sigma_parallel^g$ sulla faccia trasversale frontale.]])

Devono essere soddisfatte simultaneamente la verifica della tensione equivalente di Von Mises sulla sezione di gola e una condizione limitativa sulla sola componente normale $sigma_perp^g$ (affinché essa non risulti dominante da sola, restando inferiore al $90\%$ del rapporto $f_u \/ gamma_(M 2)$):

$ sqrt((sigma_perp^g)^2 + 3[(tau_perp^g)^2 + (tau_parallel^g)^2]) lt.eq frac(f_u, beta_w gamma_(M 2)) quad "e" quad sigma_perp^g lt.eq frac(0","9 f_u, gamma_(M 2)) $

dove:
- $f_u$ è il carico di rottura del materiale base;
- $gamma_(M 2) = 1","25$ è il coefficiente di sicurezza;
- $beta_w$ è il fattore di correlazione, che esprime il rapporto tra la resistenza del materiale base e quella del materiale d'apporto (correlato alla resistenza e alla tenacità dell'acciaio; vale $1$ per le resistenze più elevate ed è ridotto per quelle inferiori):

#table(
  columns: 6,
  align: (left, center, center, center, center, center),
  [Materiale], [S235], [S275], [S355], [S420], [S460],
  [$f_u$ (MPa)], [$360$], [$430$], [$510$], [$520$], [$540$],
  [$beta_w$], [$0","8$], [$0","85$], [$0","9$], [$1$], [$1$],
)

#strong[Verifica di resistenza statica – 2° metodo (#emph[Simplified Method], sezione 4.5.3.3):] un approccio più moderno e diffuso in ingegneria civile e carpenteria industriale formula la verifica in termini di #strong[forze per unità di lunghezza] ($"N/mm"$), considerando la singola sezione bidimensionale del cordone anziché le tensioni su superficie:

$ F_(w, E d) lt.eq F_(w, R d) $

dove $F_(w, E d)$ è la forza risultante per unità di lunghezza che il cordone deve trasmettere e $F_(w, R d)$ è la forza resistente per unità di lunghezza:

$ F_(w, R d) = f_(v w, d) dot.op a = frac(f_u \/ sqrt(3), beta_w gamma_(M 2)) dot.op a $

con $f_(v w, d)$ resistenza a taglio della saldatura, mentre $gamma_(M 2)$, $beta_w$ e $f_u$ mantengono gli stessi valori del metodo direzionale.

#strong[Vincoli dimensionali:] l'Eurocodice prescrive inoltre i seguenti limiti geometrici per i cordoni d'angolo:
- spessori $s$ delle parti saldate superiori a $4 "mm"$;
- altezza di gola $a > 3 "mm"$;
- lunghezza effettiva $L > 30 "mm"$ e $L > 6 dot.op a$.

#pagebreak()

==== Verifica a fatica secondo Eurocodice 3 (UNI EN 1993:2005 1-9)

La norma #strong[UNI EN 1993:2005 1-9 (Eurocode 3 – Design of steel structures, Part 1-9: Fatigue)] disciplina la verifica a fatica dei giunti saldati, caratterizzati tipicamente da stati di sollecitazione multiassiali e da storie di carico dinamiche ad ampiezza variabile.

Per impostare la verifica è necessario conoscere la storia di carico nel tempo in termini di tensione. Nei giunti saldati non si fa riferimento alla tensione alternata $sigma_a$, bensì al #strong[$Delta$ di tensione] ($Delta sigma$ oppure $Delta tau$), ossia l'escursione tra tensione massima e minima secondo l'accezione classica di Wöhler. Nel caso di oscillazioni ad ampiezza variabile si applica il #strong[metodo di conteggio Rainflow] (nella versione della "vasca da bagno" o "serbatoio") per ricavare lo spettro dei $Delta$ di tensione, e si valuta il danno cumulativo mediante la legge di #strong[Palmgren-Miner].

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[I livelli di resistenza a fatica non dipendono soltanto dal materiale, ma dalla specifica geometria del giunto: la normativa classifica tutte le soluzioni costruttive industriali in apposite tabelle di #strong[categorie di dettaglio] (#emph[detail categories]). Il numero che identifica ciascuna categoria funge contemporaneamente da codice e da valore numerico della sollecitazione ammissibile ad ampiezza costante $Delta sigma_C$ (oppure $Delta tau_C$) in $"MPa"$ corrispondente a $N_C = 2 dot.op 10^6$ cicli. Esistono numerose categorie per sollecitazioni normali $Delta sigma$ e solo due classi per geometrie sollecitate prevalentemente a taglio $Delta tau$ (come saldature circonferenziali di flange bullonate o tubi saldati a piastre).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Estratto di tabelle normative Eurocodice 3-1-9 delle categorie di dettaglio costruttivo per giunti saldati, suddivise nelle colonne Detail category, Constructional detail, Description e Requirements. Sono raffigurati dettagli di categoria 125 (saldature longitudinali continue automatiche testa a testa e a cordone d'angolo), categoria 80 (pioli saldati e saldature circonferenziali a taglio su flange/piastre) e categoria 112 (giunzioni trasversali senza piatto di sostegno, con indicazione dell'effetto scala per spessori $t > 25 "mm"$: $k_s = (25 \/ t)^(0","2)$).]])

===== Calcolo delle tensioni mediante ribaltamento della sezione di gola

Nella verifica a fatica dei cordoni d'angolo, la sezione critica rimane la sezione di gola, ma la normativa preferisce riferire le tensioni al sistema di riferimento globale solidale alle due piastre collegate anziché al sistema locale inclinato della gola. Operativamente, la sezione di gola viene idealmente #strong[ribaltata] (come se fosse incernierata) su uno dei due lati del cordone (orizzontale oppure verticale), scegliendo il lato più conveniente rispetto alla disposizione dei carichi.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Ribaltando la sezione sul lato orizzontale, la componente verticale risulta normale ($sigma_perp$) e quella orizzontale giacente nel piano risulta tangenziale ($tau_perp$), mentre $tau_parallel$ giace sempre lungo l'asse del cordone; ribaltando invece sul lato verticale, i ruoli di $sigma_perp$ e $tau_perp$ si scambiano. Nonostante questa arbitrarietà nella denominazione delle singole componenti, la tensione equivalente risultante descrive in modo coerente lo stesso stato di tensione:

- tensione equivalente perpendicolare all'asse del cordone:
$ sigma_(w f) = sqrt(sigma_(perp f)^2 + tau_(perp f)^2) $
- tensione parallela all'asse del cordone:
$ tau_(w f) = tau_(parallel f) " [?]" $

Si introduce inoltre il coefficiente moltiplicativo delle tensioni $gamma_(F f) gt.eq 1$, che tiene conto delle incertezze sui carichi.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Due schemi tridimensionali del ribaltamento della sezione di gola di un cordone d'angolo: a sinistra la sezione di gola è ribaltata sul lato orizzontale del cordone (con $sigma_perp$ verticale e $tau_perp$, $tau_parallel$ nel piano orizzontale); a destra è ribaltata sul lato verticale (con $sigma_perp$ orizzontale e $tau_perp$, $tau_parallel$ nel piano verticale).]])

===== Curve $S N$ per particolari sollecitati a $Delta sigma$ e a $Delta tau$

#strong[Particolari sollecitati a $Delta sigma$:] a ogni categoria di dettaglio corrisponde una curva $Delta sigma_R - N$ (in scala bilogaritmica a partire da $N = 10^4$ cicli) governata nei tratti inclinati dall'equazione di Basquin $Delta sigma_R^m dot.op N = "costante"$. A differenza delle curve di Wöhler classiche (che presentano un solo tratto inclinato fino al ginocchio di $2 dot.op 10^6$ cicli seguito dal limite di fatica), data la criticità dei giunti saldati la normativa prevede #strong[tre regioni] (due di vita a tempo determinato e una di vita illimitata):

1. #strong[$10^4 lt.eq N lt.eq N_D = 5 dot.op 10^6$ cicli:] fascio di rette parallele con esponente #strong[$m = 3$] (forte dipendenza dal numero di cicli). Lungo la verticale $N_C = 2 dot.op 10^6$ si legge la categoria del giunto $Delta sigma_C$ (categorie da $36$ a $160 "MPa"$: $36, 40, 46, 50, 56, 63, 71, 80, 90, 100, 112, 125, 140, 160$). Il punto $D$ a $N_D = 5 dot.op 10^6$ costituisce il primo gomito.
2. #strong[$N_D = 5 dot.op 10^6 lt.eq N lt.eq N_L = 10^8$ cicli:] fascio di rette parallele con pendenza minore di esponente #strong[$m = 5$], che modella la residua diminuzione di resistenza a fatica ad alto numero di cicli fino al punto $L$.
3. #strong[$N gt.eq N_L = 10^8$ cicli:] fascio di rette orizzontali (asintoto del limite di fatica a vita illimitata).

Applicando la continuità tramite l'equazione di Basquin tra i punti notevoli $C$, $D$ ed $L$, si ricavano i valori di resistenza ai due gomiti:

$ Delta sigma_D = root(3, Delta sigma_C^3 frac(2 dot.op 10^6, 5 dot.op 10^6)) $

$ Delta sigma_L = root(5, Delta sigma_D^5 frac(5 dot.op 10^6, 10^8)) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per tenere conto dell'#strong[effetto dimensioni] (fattore di scala legato allo spessore del giunto), il valore di categoria viene ridotto tramite il coefficiente $k_s$ fornito nelle tabelle dei dettagli (ad esempio $k_s = (25 \/ t)^(0","2)$ per $t > 25 "mm"$):

$ Delta sigma_(C, r e d) = k_s dot.op Delta sigma_C $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma bilogaritmico delle linee SN per particolari sollecitati a $Delta sigma$ (asse verticale $Delta sigma$ in MPa da 10 a $10^3$, asse orizzontale N da $10^4$ a $10^8$). È rappresentato il fascio di curve per le categorie $Delta sigma_C = 160, 140, 125, 112, 100, 90, 80, 71, 63, 56, 50, 46, 40, 36 "MPa"$ con i tre tratti: rosso con esponente $m = 3$ fino al gomito D ($N = 5 dot.op 10^6$), verde con esponente $m = 5$ fino al gomito L ($N = 10^8$) e blu orizzontale oltre $10^8$. Sono evidenziate le verticali C ($2 dot.op 10^6$), D ($5 dot.op 10^6$) ed L ($10^8$), insieme alle formule di $Delta sigma_D$, $Delta sigma_L$ e $Delta sigma_(C, r e d)$.]])

#strong[Particolari sollecitati a $Delta tau$:] nei casi di sollecitazione prevalentemente tangenziale la normativa fornisce un diagramma dedicato composto da sole #strong[due curve] (definite a $N_C = 2 dot.op 10^6$ cicli):
- $Delta tau_C = 100 "MPa"$ per materiale base e giunti di testa a completa penetrazione;
- $Delta tau_C = 80 "MPa"$ per tutti gli altri giunti.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'equazione è $Delta tau_R^m dot.op N = "costante"$ ed è articolata in #strong[due sole regioni]:
1. #strong[$10^4 lt.eq N lt.eq 10^8$ cicli:] un'unica retta inclinata con esponente #strong[$m = 5$];
2. #strong[$N gt.eq N_L = 10^8$ cicli:] una retta orizzontale (limite di fatica).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma bilogaritmico delle linee SN per particolari sollecitati a $Delta tau$ (asse verticale $Delta tau$ in MPa da 10 a $10^3$, asse orizzontale N da $10^4$ a $10^8$). Sono tracciate le due curve di categoria $C = 100 "MPa"$ e $C = 80 "MPa"$ (lette alla verticale $2 dot.op 10^6$, con etichetta 231 sull'asse verticale a $10^4$), entrambe con unica pendenza $m = 5$ fino a $N = 10^8$ e tratto orizzontale L oltre $10^8$; a lato compaiono gli schemi di dettaglio di categoria 80 (flangia bullonata e piastra con perno/tubo saldati).]])

===== Effetto delle tensioni di compressione e tensioni nominali modificate

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel materiale base, oppure in giunti saldati sottoposti a trattamenti per eliminare le tensioni residue, la presenza di una componente di compressione che abbassa la tensione media del ciclo sotto lo zero viene tenuta in conto riducendo il peso della parte compressiva nel calcolo del $Delta sigma$ efficace:

$ Delta sigma = |sigma_(m a x)| + 0","6 |sigma_(m i n)| $

Quando in prossimità del dettaglio costruttivo sono presenti #strong[intagli] (brusche variazioni geometriche), le tensioni nominali devono essere moltiplicate per un fattore di concentrazione delle tensioni ricavato da manuali (come i diagrammi di Peterson) o tramite analisi agli elementi finiti. Occorre prestare particolare attenzione alla notazione normativa: tale coefficiente viene indicato con $k_f$ (minuscolo), ma corrisponde concettualmente al fattore di concentrazione geometrico delle tensioni $K_t$ e #strong[non] al fattore di intaglio a fatica $K_f$ (maiuscolo), per ottenere il quale occorrerebbe considerare anche la sensibilità all'intaglio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Grafico temporale di un ciclo sinusoidale di tensione con componente media negativa (asse verticale con segni + e -), in cui sono indicati il picco positivo $sigma_(m a x)$, il picco negativo $sigma_(m i n)$ e la formula dell'escursione efficace $Delta sigma = |sigma_(m a x)| + 0","6 |sigma_(m i n)|$.]])

===== Approcci di verifica (#emph[Damage tolerant] vs #emph[Safe life]) e verifica secondo la legge di Miner

Le curve $S N$ vengono corrette dividendo le resistenze per un coefficiente di sicurezza parziale $gamma_(M f)$ (per esempio $Delta sigma_C \/ gamma_(M f)$), il cui valore dipende dal metodo di verifica adottato e dalla gravità delle conseguenze di un eventuale cedimento:

#table(
  columns: 3,
  align: (left, center, center),
  [Metodo di verifica], [Conseguenze lievi ($gamma_(M f)$)], [Conseguenze gravi ($gamma_(M f)$)],
  [#emph[Damage tolerant]], [$1","00$], [$1","15$],
  [#emph[Safe life]], [$1","15$], [$1","25$],
)

I due approcci progettuali differiscono profondamente:
- #strong[Safe life:] presuppone che la struttura non si danneggi per l'intera durata di missione richiesta, senza necessità di ispezioni periodiche; per scongiurare cedimenti catastrofici improvvisi richiede coefficienti di sicurezza più elevati.
- #strong[Damage tolerant:] ammette che la struttura possa contenere fin dall'inizio difetti ritenuti tollerabili (per dimensione, posizione e tipologia), ma impone un piano rigoroso di ispezioni periodiche documentate durante l'esercizio per monitorare l'evoluzione del danneggiamento e intervenire con riparazioni (manutenzione predittiva). I coefficienti $gamma_(M f)$ risultano più bassi poiché la sicurezza è garantita verificando che, nell'intervallo tra due ispezioni consecutive (come avviene anche in ambito aeronautico per i velivoli), un eventuale danno non possa propagarsi fino al collasso catastrofico.

Nell'applicazione operativa della #strong[legge di Miner] (#emph[Cycles to failure], Annex A5), il margine di sicurezza risulta ripartito su due fronti: da un lato le escursioni di tensione applicate vengono amplificate tramite $gamma_(F f) gt.eq 1$, dall'altro le resistenze delle curve $S N$ vengono ridotte tramite $gamma_(M f)$:

$ overline(Delta sigma_i) = gamma_(F f) Delta sigma_i quad ("con " gamma_(F f) gt.eq 1) $

$ overline(Delta sigma_c) = frac(Delta sigma_c, gamma_(M f)), quad overline(Delta sigma_D) = frac(Delta sigma_D, gamma_(M f)), quad overline(Delta tau_c) = frac(Delta tau_c, gamma_(M f)) $

La condizione di verifica del danno cumulativo $D_d$ è espressa da:

$ D_d = sum frac(n_(E i), N_(R i)) = sum frac(alpha_i N_(t o t), N_(R i)) lt.eq 1 $

dove $n_(E i)$ è il numero di cicli di esercizio (esprimibile anche come frazione $alpha_i$ del numero totale di cicli $N_(t o t)$) sotto la sollecitazione amplificata $gamma_(F f) Delta sigma_i$ (o $gamma_(F f) Delta tau_i$ `[?]`), e $N_(R i)$ è il numero di cicli a rottura corrispondente a tale livello sulla curva $S N$ ridotta (ricavabile per proporzionalità sui tratti della curva):

- per sollecitazioni normali con $overline(Delta sigma_i) gt.eq overline(Delta sigma_D)$ (tratto con $m = 3$):
$ N_(R i) = frac(overline(Delta sigma_C)^3 dot.op 2 dot.op 10^6, overline(Delta sigma_i)^3) $
- per sollecitazioni normali con $overline(Delta sigma_i) < overline(Delta sigma_D)$ (tratto con $m = 5$):
$ N_(R i) = frac(overline(Delta sigma_D)^5 dot.op 5 dot.op 10^6, overline(Delta sigma_i)^5) $
- per sollecitazioni tangenziali $Delta tau$ (unica pendenza $m = 5$):
$ N_(R i) = frac(overline(Delta tau_C)^5 dot.op 2 dot.op 10^6, overline(Delta tau_i)^5) $

Infine, oltre alla verifica statica del giunto e alla verifica a fatica secondo Miner, occorre sempre verificare che le ampiezze delle escursioni tensionali rispettino i seguenti limiti rispetto alla tensione di snervamento $f_y$ del materiale (con il fattore $1 \/ sqrt(3)$ per rendere omogenea la componente tangenziale):

$ Delta sigma lt.eq 1","5 f_y, quad Delta tau lt.eq frac(1","5 f_y, sqrt(3)) $

=== Esercizi

Non sono presenti esercizi svolti in questa lezione.