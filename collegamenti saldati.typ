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
- #strong[Deformazione imposta preventiva (compensazione)]: nei casi in cui l'entità della distorsione sia nota a priori (tipicamente nelle costruzioni navali), si predeforma l'elemento in direzione opposta a quella indotta dalle tensioni residue, in modo che a saldatura completata i due effetti si compensino portando il componente in piano.],[#canvas(length: 1cm, {
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