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
== Viti e Bulloni (Collegamenti filettati) – Serraggio
=== Introduzione ai collegamenti filettati
Tra gli elementi di base della costruzione delle macchine rivestono un ruolo fondamentale i collegamenti filettati, rappresentati principalmente da viti, bulloni e prigionieri. La loro utilità progettuale risiede nel fatto che realizzano un collegamento smontabile, ossia una giunzione che può essere aperta e chiusa ripetutamente. Ciò garantisce un facile accesso alle parti interne della macchina, risultando indispensabile per operazioni di diagnosi, verifica delle condizioni di usura o di affaticamento dei componenti e, più in generale, per gli interventi di manutenzione.

Rispetto ad altri metodi di giunzione come i collegamenti saldati, i collegamenti filettati permettono di unire le parti in tempi notevolmente rapidi e senza dover ricorrere a processi tecnologici complessi; inoltre, svitando la vite o il bullone è possibile disgiungere i componenti senza dover distruggere alcun elemento fisso (come accadrebbe dovendo rompere un cordone di saldatura).


=== Tipologie di viti e normative delle filettature
Nella letteratura tecnica si distinguono due grandi categorie di viti:
- #strong[Viti di manovra:] sfruttano il principio dell'elica per trasmettere il moto, trasformando la rotazione della vite in uno spostamento traslazionale lungo una guida. Pur condividendo la geometria locale del filetto con le viti di collegamento, il loro dimensionamento è più affine a quello dei cuscinetti, poiché il funzionamento e il danneggiamento sono governati principalmente dallo scorrimento o dal rotolamento (come nelle viti a ricircolo di sfere, in cui l'elica funge da pista per le sfere), coinvolgendo trattamenti superficiali e materiali specifici per queste condizioni d'esercizio.
- #strong[Viti di collegamento (smontabile):] impiegate per mantenere serrate due o più parti meccaniche insieme.



Le principali tipologie di filettature normalizzate per i collegamenti (con riferimento alle normative storiche e ai relativi aggiornamenti successivi) sono:
- #strong[Filettature metriche ISO:]
  - #emph[Profilo triangolare:] UNI 4536 (1964) e segg.
  - #emph[Profilo trapezio:] UNI ISO 2901÷2904 (1978) e segg.
- #strong[Filettature Whitworth:] UNI 2709 (1945) e segg., definite in pollici con angolo di profilo pari a $55degree$.
- #strong[Filettature "gas":] utilizzate quando è richiesta un'impermeabilizzazione del condotto per evitare fughe di gas o liquidi attraverso la giunzione; si distinguono in filettature a tenuta stagna sul filetto (UNI ISO 7-1, 1984 e segg.) e a tenuta non stagna (UNI ISO 228, 1983 e segg.).
- #strong[Filettature a "dente di sega":] UNI 127-128 (1928) e segg.

Nel funzionamento generale di un bullone di collegamento, l'applicazione del momento di serraggio genera una forza di interazione tra le parti serrate, inducendo uno stato di trazione nel fusto della vite e di compressione nei pezzi. In esercizio, su questa configurazione precaricata agiscono le forze esterne di lavoro sulla macchina, e il flusso delle tensioni si trasferisce dal fusto della vite ai filetti del dado o della madrevite. Tale distribuzione del carico sui filetti non è uniforme: il flusso di forza si concentra maggiormente nei primi filetti in presa (tipicamente tra il secondo, il terzo e il quarto filetto della serie), rendendo questa zona la più critica ai fini della resistenza.

=== Geometria della filettatura metrica ISO a profilo triangolare
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    La caratterizzazione geometrica di una filettatura metrica ISO a profilo triangolare si basa sul diametro nominale (esterno) della vite $d$, misurabile direttamente con il calibro in corrispondenza della cresta esterna della filettatura. Nella designazione normalizzata si indica la lettera $"M"$ seguita dal valore del diametro nominale in millimetri: ad esempio, $"M"10$ indica un diametro $d = 10 "mm"$ con passo grosso tabellato $p = 1,5 "mm"$, mentre $"M"10 times 1,25$ specifica un diametro $d = 10 "mm"$ abbinato a un passo fine indicato esplicitamente pari a $p = 1,25 "mm"$.
  ],
  [#canvas(length: 0.9cm, {
  import draw: *

  let hatch(pts, slope: 1, step: 0.28, line-stroke: 0.35pt + luma(110)) = {
    let c-min = calc.min(..pts.map(p => p.at(1) - slope * p.at(0)))
    let c-max = calc.max(..pts.map(p => p.at(1) - slope * p.at(0)))
    let n = calc.ceil((c-max - c-min) / step)
    for k in range(1, n) {
      let c = c-min + k * step
      let hits = ()
      for i in range(pts.len()) {
        let p1 = pts.at(i)
        let p2 = pts.at(calc.rem(i + 1, pts.len()))
        let d1 = p1.at(1) - (slope * p1.at(0) + c)
        let d2 = p2.at(1) - (slope * p2.at(0) + c)
        if (d1 >= 0 and d2 < 0) or (d1 < 0 and d2 >= 0) {
          let t = d1 / (d1 - d2)
          hits.push((
            p1.at(0) + t * (p2.at(0) - p1.at(0)),
            p1.at(1) + t * (p2.at(1) - p1.at(1)),
          ))
        }
      }
      hits = hits.sorted(key: p => p.at(0))
      let i = 0
      while i + 1 < hits.len() {
        let a = hits.at(i)
        let b = hits.at(i + 1)
        if calc.abs(a.at(0) - b.at(0)) > 1e-4 {
          line(a, b, stroke: line-stroke)
        }
        i += 2
      }
    }
  }

  let vite-pts = (
    (-2.70, -1.55), (-2.70, 0.5196), (-2.00, -0.6928),
    (-1.8309, -0.8619), (-1.60, -0.9238), (-1.3691, -0.8619), (-1.20, -0.6928),
    (-0.20, 1.0392), (0, 1.0392), (0.20, 1.0392),
    (1.20, -0.6928), (1.3691, -0.8619), (1.60, -0.9238), (1.8309, -0.8619), (2.00, -0.6928),
    (2.70, 0.5196), (2.70, -1.55),
  )

  let madrevite-pts = (
    (-2.70, 1.55), (-2.70, 0.5196), (-2.00, -0.6928), (-1.20, -0.6928),
    (0, 1.3856), (1.20, -0.6928), (2.00, -0.6928), (2.70, 0.5196), (2.70, 1.55),
  )

  // Tratteggio a +45° per la vite e -45° per la madrevite
  hatch(vite-pts, slope: 1, step: 0.28, line-stroke: 0.35pt + luma(110))
  hatch(madrevite-pts, slope: -1, step: 0.28, line-stroke: 0.35pt + luma(110))

  line((-2.70, 0.5196), (-2.00, -0.6928), stroke: 1pt)
  arc((-1.60, -0.4619), start: 210deg, stop: 330deg, radius: 0.4619, anchor: "origin", stroke: 1pt)
  line((-1.20, -0.6928), (-0.20, 1.0392), (0.20, 1.0392), (1.20, -0.6928), stroke: 1pt)
  arc((1.60, -0.4619), start: 210deg, stop: 330deg, radius: 0.4619, anchor: "origin", stroke: 1pt)
  line((2.00, -0.6928), (2.70, 0.5196), stroke: 1pt)

  line((-2.00, -0.6928), (-1.20, -0.6928), stroke: 0.8pt)
  line((-0.20, 1.0392), (0, 1.3856), (0.20, 1.0392), stroke: 0.55pt)
  line((1.20, -0.6928), (2.00, -0.6928), stroke: 0.8pt)
  line((-2.00, -0.6928), (-1.60, -1.3856), (-1.20, -0.6928), stroke: 0.55pt)
  line((1.20, -0.6928), (1.60, -1.3856), (2.00, -0.6928), stroke: 0.55pt)

  line((-3.60, 0), (5.55, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((0, 0.45), (0, 1.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-1.60, -0.25), (-1.60, -1.90), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.60, -0.25), (1.60, -1.90), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((-3.95, 1.0392), (-0.20, 1.0392), stroke: 0.55pt)
  line((-3.25, -0.6928), (-2.00, -0.6928), stroke: 0.55pt)

  line((0, 1.3856), (4.40, 1.3856), stroke: 0.55pt)
  line((0.20, 1.0392), (5.90, 1.0392), stroke: 0.55pt)
  line((2.00, -0.6928), (5.20, -0.6928), stroke: 0.55pt)
  line((1.60, -0.9238), (3.20, -0.9238), stroke: 0.55pt)
  line((1.60, -1.3856), (4.40, -1.3856), stroke: 0.55pt)

  line((-3.80, -2.15), (-3.80, 1.0392), mark: (end: ">"), stroke: 0.65pt)
  line((-3.45, -2.15), (-3.45, 0), mark: (end: ">"), stroke: 0.65pt)
  line((-3.10, -2.15), (-3.10, -0.6928), mark: (end: ">"), stroke: 0.65pt)

  line((5.05, -2.15), (5.05, -0.6928), mark: (end: ">"), stroke: 0.65pt)
  line((5.40, -2.15), (5.40, 0), mark: (end: ">"), stroke: 0.65pt)
  line((5.75, -2.15), (5.75, 1.0392), mark: (end: ">"), stroke: 0.65pt)

  line((3.05, -0.9238), (3.05, 1.0392), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((3.45, 1.65), (3.45, 1.3856), mark: (end: ">"), stroke: 0.65pt)
  line((3.45, 0.78), (3.45, 1.0392), mark: (end: ">"), stroke: 0.65pt)
  line((3.45, -0.42), (3.45, -0.6928), mark: (end: ">"), stroke: 0.65pt)
  line((3.45, -1.65), (3.45, -1.3856), mark: (end: ">"), stroke: 0.65pt)
  line((3.85, 0), (3.85, 1.3856), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((3.85, -1.3856), (3.85, 0), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((4.25, -1.3856), (4.25, 1.3856), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((4.65, -0.6928), (4.65, 1.0392), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((-1.60, -1.78), (1.60, -1.78), mark: (start: ">", end: ">"), stroke: 0.65pt)

  arc((0, 1.3856), start: 240deg, stop: 300deg, radius: 1.85, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  arc((1.60, -1.3856), start: 60deg, stop: 120deg, radius: 1.75, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((1.34, -0.20), (1.60, -0.4619), stroke: 0.6pt)
  line((1.60, -0.4619), (1.8310, -0.8619), mark: (end: ">"), stroke: 0.6pt)

  content((-1.35, 0.68), box(fill: white, inset: 1.5pt, text(size: 8pt)[Madrevite]), anchor: "east")
  content((0, -0.98), box(fill: white, inset: 1.5pt, text(size: 8pt)[Vite]), anchor: "center")
  content((0, -0.26), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$60 degree$]), anchor: "center")
  content((1.60, 0.54), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$60 degree$]), anchor: "center")
  content((1.28, -0.15), box(fill: white, inset: 1.5pt, text(size: 7.5pt)[$r$]), anchor: "east")

  content((0, -1.68), text(size: 8pt)[$P$], anchor: "south")
  content((0, -2.18), text(size: 7.5pt)[$H = 0,86603 P$], anchor: "center")

  content((-3.80, -2.25), text(size: 7.5pt)[$D$], anchor: "north")
  content((-3.45, -2.25), text(size: 7.5pt)[$D_2$], anchor: "north")
  content((-3.10, -2.25), text(size: 7.5pt)[$D_1$], anchor: "north")

  content((5.05, -2.25), text(size: 7.5pt)[$d_1$], anchor: "north")
  content((5.40, -2.25), text(size: 7.5pt)[$d_2$], anchor: "north")
  content((5.75, -2.25), text(size: 7.5pt)[$d$], anchor: "north")

  content((2.98, 0.42), text(size: 7pt)[$h_3$], anchor: "east")
  content((3.45, 1.72), text(size: 7pt)[$H / 8$], anchor: "south")
  content((3.45, -1.04), text(size: 7pt)[$H / 4$], anchor: "center")
  content((3.78, 0.56), text(size: 7pt)[$H / 2$], anchor: "east")
  content((3.78, -0.34), text(size: 7pt)[$H / 2$], anchor: "east")
  content((4.32, 0.56), text(size: 7pt)[$H$], anchor: "west")
  content((4.72, 0.56), text(size: 7pt)[$H_1$], anchor: "west")
})]
)


L'angolo di apertura del profilo triangolare è $2 alpha = 60degree$. In funzione del passo $P$ (indicato anche come $p$) e del diametro nominale $d$, si definiscono le grandezze geometriche del profilo di riferimento, tra cui l'altezza del triangolo generatore $H$, il diametro medio $d_2 = D_2$ (posto a metà tra la superficie di testa e la superficie interna utilizzabile del filetto) e i diametri di fondo gola/nocciolo $d_1 = D_1$ e $d_3$:

$ H = 0,866 03 P quad quad H_1 = frac(5, 8) H = 0,541 27 P quad quad h_3 = frac(17, 24) H = 0,613 43 P $

$ d_1 = D_1 = d - 2 H_1 = d - 1,082 53 P quad quad d_2 = D_2 = d - frac(3, 4) H = d - 0,649 52 P $

$ d_3 = d - 2 h_3 = d - 1,226 87 P quad quad r = frac(H, 6) = 0,144 34 P $

Ai fini del calcolo strutturale della sezione resistente della vite, si fa riferimento o al diametro di nocciolo (corrispondente alla gola più profonda con raccordo) oppure a un diametro resistente che, secondo le indicazioni delle normative tedesche, tiene conto anche di una porzione del filetto, poiché il filetto stesso è lateralmente vuoto e non oppone la medesima resistenza di un fusto pieno.

=== Nomenclatura dei collegamenti filettati
La distinzione terminologica tra le diverse configurazioni costruttive riveste un'importanza fondamentale sia in ambito professionale sia in sede d'esame:
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Bullone (vite + dado):] è costituito da una vite che attraversa completamente i pezzi da collegare all'interno di un foro passante libero (il fusto della vite non deve toccare le pareti del foro) e si impegna in un dado, all'interno del quale è ricavata la madrevite. Il contatto si esercita esclusivamente tra il sottotesta della vite e la superficie esterna del primo blocco e tra la superficie interna del dado e la superficie esterna del blocco opposto.
  ],
  [#canvas(length: 1cm, {
  import draw: *
  line((0, 0), (7.5, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  rect((1.5, 0.65), (3.1, 1.9), stroke: 1pt)
  rect((1.5, -1.9), (3.1, -0.65), stroke: 1pt)
  rect((3.1, 0.65), (5.1, 1.9), stroke: 1pt)
  rect((3.1, -1.9), (5.1, -0.65), stroke: 1pt)
  line((1.5, 0.85), (1.7, 0.65), stroke: 0.6pt)
  line((1.5, 1.05), (1.9, 0.65), stroke: 0.6pt)
  line((1.5, 1.25), (2.1, 0.65), stroke: 0.6pt)
  line((1.5, 1.45), (2.3, 0.65), stroke: 0.6pt)
  line((1.5, 1.65), (2.5, 0.65), stroke: 0.6pt)
  line((1.5, 1.85), (2.7, 0.65), stroke: 0.6pt)
  line((1.65, 1.9), (2.9, 0.65), stroke: 0.6pt)
  line((1.85, 1.9), (3.1, 0.65), stroke: 0.6pt)
  line((2.05, 1.9), (3.1, 0.85), stroke: 0.6pt)
  line((2.25, 1.9), (3.1, 1.05), stroke: 0.6pt)
  line((2.45, 1.9), (3.1, 1.25), stroke: 0.6pt)
  line((2.65, 1.9), (3.1, 1.45), stroke: 0.6pt)
  line((2.85, 1.9), (3.1, 1.65), stroke: 0.6pt)
  line((1.5, -1.7), (1.7, -1.9), stroke: 0.6pt)
  line((1.5, -1.5), (1.9, -1.9), stroke: 0.6pt)
  line((1.5, -1.3), (2.1, -1.9), stroke: 0.6pt)
  line((1.5, -1.1), (2.3, -1.9), stroke: 0.6pt)
  line((1.5, -0.9), (2.5, -1.9), stroke: 0.6pt)
  line((1.5, -0.7), (2.7, -1.9), stroke: 0.6pt)
  line((1.65, -0.65), (2.9, -1.9), stroke: 0.6pt)
  line((1.85, -0.65), (3.1, -1.9), stroke: 0.6pt)
  line((2.05, -0.65), (3.1, -1.7), stroke: 0.6pt)
  line((2.25, -0.65), (3.1, -1.5), stroke: 0.6pt)
  line((2.45, -0.65), (3.1, -1.3), stroke: 0.6pt)
  line((2.65, -0.65), (3.1, -1.1), stroke: 0.6pt)
  line((2.85, -0.65), (3.1, -0.9), stroke: 0.6pt)
  line((4.9, 0.65), (5.1, 0.85), stroke: 0.6pt)
  line((4.7, 0.65), (5.1, 1.05), stroke: 0.6pt)
  line((4.5, 0.65), (5.1, 1.25), stroke: 0.6pt)
  line((4.3, 0.65), (5.1, 1.45), stroke: 0.6pt)
  line((4.1, 0.65), (5.1, 1.65), stroke: 0.6pt)
  line((3.9, 0.65), (5.1, 1.85), stroke: 0.6pt)
  line((3.7, 0.65), (4.95, 1.9), stroke: 0.6pt)
  line((3.5, 0.65), (4.75, 1.9), stroke: 0.6pt)
  line((3.3, 0.65), (4.55, 1.9), stroke: 0.6pt)
  line((3.1, 0.65), (4.35, 1.9), stroke: 0.6pt)
  line((3.1, 0.85), (4.15, 1.9), stroke: 0.6pt)
  line((3.1, 1.05), (3.95, 1.9), stroke: 0.6pt)
  line((3.1, 1.25), (3.75, 1.9), stroke: 0.6pt)
  line((3.1, 1.45), (3.55, 1.9), stroke: 0.6pt)
  line((3.1, 1.65), (3.35, 1.9), stroke: 0.6pt)
  line((4.9, -1.9), (5.1, -1.7), stroke: 0.6pt)
  line((4.7, -1.9), (5.1, -1.5), stroke: 0.6pt)
  line((4.5, -1.9), (5.1, -1.3), stroke: 0.6pt)
  line((4.3, -1.9), (5.1, -1.1), stroke: 0.6pt)
  line((4.1, -1.9), (5.1, -0.9), stroke: 0.6pt)
  line((3.9, -1.9), (5.1, -0.7), stroke: 0.6pt)
  line((3.7, -1.9), (4.95, -0.65), stroke: 0.6pt)
  line((3.5, -1.9), (4.75, -0.65), stroke: 0.6pt)
  line((3.3, -1.9), (4.55, -0.65), stroke: 0.6pt)
  line((3.1, -1.9), (4.35, -0.65), stroke: 0.6pt)
  line((3.1, -1.7), (4.15, -0.65), stroke: 0.6pt)
  line((3.1, -1.5), (3.95, -0.65), stroke: 0.6pt)
  line((3.1, -1.3), (3.75, -0.65), stroke: 0.6pt)
  line((3.1, -1.1), (3.55, -0.65), stroke: 0.6pt)
  line((3.1, -0.9), (3.35, -0.65), stroke: 0.6pt)
  line((1.5, 0.55), (5.1, 0.55), stroke: 1pt)
  line((1.5, -0.55), (5.1, -0.55), stroke: 1pt)
  line((3.8, -0.55), (3.8, 0.55), stroke: 1pt)
  line((3.5, 0.55), (3.8, 0.45), stroke: 0.6pt)
  line((3.5, -0.55), (3.8, -0.45), stroke: 0.6pt)
  line((3.8, 0.45), (5.1, 0.45), stroke: 0.6pt)
  line((3.8, -0.45), (5.1, -0.45), stroke: 0.6pt)
  line((6.0, 0.55), (7.0, 0.55), (7.15, 0.45), (7.15, -0.45), (7.0, -0.55), (6.0, -0.55), stroke: 1pt)
  line((7.0, -0.55), (7.0, 0.55), stroke: 1pt)
  line((6.0, 0.45), (7.0, 0.45), stroke: 0.6pt)
  line((6.0, -0.45), (7.0, -0.45), stroke: 0.6pt)
  arc((1.8084, 0), start: 154.25deg, stop: 205.75deg, radius: 1.2084, anchor: "origin", stroke: 1pt)
  arc((0.9471, 0.7875), start: 130.86deg, stop: 229.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  arc((0.9471, -0.7875), start: 130.86deg, stop: 229.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  line((0.72, 1.05), (1.5, 1.05), stroke: 1pt)
  line((0.72, 0.525), (1.5, 0.525), stroke: 1pt)
  line((0.72, -0.525), (1.5, -0.525), stroke: 1pt)
  line((0.72, -1.05), (1.5, -1.05), stroke: 1pt)
  line((1.5, -0.65), (1.5, 0.65), stroke: 1pt)
  arc((6.3084, 0), start: 154.25deg, stop: 205.75deg, radius: 1.2084, anchor: "origin", stroke: 1pt)
  arc((5.4471, 0.7875), start: 130.86deg, stop: 229.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  arc((5.4471, -0.7875), start: 130.86deg, stop: 229.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  arc((4.7916, 0), start: -25.75deg, stop: 25.75deg, radius: 1.2084, anchor: "origin", stroke: 1pt)
  arc((5.6529, 0.7875), start: -49.14deg, stop: 49.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  arc((5.6529, -0.7875), start: -49.14deg, stop: 49.14deg, radius: 0.3471, anchor: "origin", stroke: 1pt)
  line((5.22, 1.05), (5.88, 1.05), stroke: 1pt)
  line((5.22, 0.525), (5.88, 0.525), stroke: 1pt)
  line((5.22, -0.525), (5.88, -0.525), stroke: 1pt)
  line((5.22, -1.05), (5.88, -1.05), stroke: 1pt)
})]
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Vite (mordente):] si impiega senza dado; la vite attraversa liberamente il primo pezzo (premendone la superficie esterna tramite il proprio sottotesta) e si avvita direttamente nella madrevite ricavata all'interno del secondo blocco, generalmente fisso, che svolge simultaneamente sia la funzione di elemento collegato sia quella del dado.
  ],
  [#canvas(length: 1cm, {
  import draw: *

  line((1.1, 2.65), (1.33, 2.42), stroke: 0.5pt)
  line((1.1, 2.9), (1.58, 2.42), stroke: 0.5pt)
  line((1.1, 3.15), (1.83, 2.42), stroke: 0.5pt)
  line((1.1, 3.4), (2.08, 2.42), stroke: 0.5pt)
  line((1.1, 3.65), (2.33, 2.42), stroke: 0.5pt)
  line((1.2, 3.8), (2.58, 2.42), stroke: 0.5pt)
  line((1.45, 3.8), (2.83, 2.42), stroke: 0.5pt)
  line((1.7, 3.8), (3.08, 2.42), stroke: 0.5pt)
  line((1.95, 3.8), (3.33, 2.42), stroke: 0.5pt)
  line((2.2, 3.8), (3.5, 2.5), stroke: 0.5pt)
  line((2.45, 3.8), (3.5, 2.75), stroke: 0.5pt)
  line((2.7, 3.8), (3.5, 3.0), stroke: 0.5pt)
  line((2.95, 3.8), (3.5, 3.25), stroke: 0.5pt)
  line((3.2, 3.8), (3.5, 3.5), stroke: 0.5pt)
  line((3.45, 3.8), (3.5, 3.75), stroke: 0.5pt)

  line((1.1, 0.15), (1.25, 0.0), stroke: 0.5pt)
  line((1.1, 0.4), (1.5, 0.0), stroke: 0.5pt)
  line((1.1, 0.65), (1.75, 0.0), stroke: 0.5pt)
  line((1.1, 0.9), (2.0, 0.0), stroke: 0.5pt)
  line((1.1, 1.15), (2.25, 0.0), stroke: 0.5pt)
  line((1.12, 1.38), (2.5, 0.0), stroke: 0.5pt)
  line((1.37, 1.38), (2.75, 0.0), stroke: 0.5pt)
  line((1.62, 1.38), (3.0, 0.0), stroke: 0.5pt)
  line((1.87, 1.38), (3.25, 0.0), stroke: 0.5pt)
  line((2.12, 1.38), (3.5, 0.0), stroke: 0.5pt)
  line((2.37, 1.38), (3.5, 0.25), stroke: 0.5pt)
  line((2.62, 1.38), (3.5, 0.5), stroke: 0.5pt)
  line((2.87, 1.38), (3.5, 0.75), stroke: 0.5pt)
  line((3.12, 1.38), (3.5, 1.0), stroke: 0.5pt)
  line((3.37, 1.38), (3.5, 1.25), stroke: 0.5pt)

  line((6.25, 0.0), (6.3, 0.05), stroke: 0.5pt)
  line((6.0, 0.0), (6.3, 0.3), stroke: 0.5pt)
  line((5.75, 0.0), (6.3, 0.55), stroke: 0.5pt)
  line((5.5, 0.0), (6.3, 0.8), stroke: 0.5pt)
  line((5.25, 0.0), (6.3, 1.05), stroke: 0.5pt)
  line((5.0, 0.0), (6.3, 1.3), stroke: 0.5pt)
  line((4.75, 0.0), (6.3, 1.55), stroke: 0.5pt)
  line((4.5, 0.0), (6.3, 1.8), stroke: 0.5pt)
  line((4.25, 0.0), (6.3, 2.05), stroke: 0.5pt)
  line((4.0, 0.0), (6.3, 2.3), stroke: 0.5pt)
  line((3.75, 0.0), (5.28, 1.53), stroke: 0.5pt)
  line((5.39, 1.64), (6.3, 2.55), stroke: 0.5pt)
  line((3.5, 0.0), (5.03, 1.53), stroke: 0.5pt)
  line((5.51, 2.01), (6.3, 2.8), stroke: 0.5pt)
  line((3.5, 0.25), (4.78, 1.53), stroke: 0.5pt)
  line((5.4, 2.15), (6.3, 3.05), stroke: 0.5pt)
  line((3.5, 0.5), (4.53, 1.53), stroke: 0.5pt)
  line((5.27, 2.27), (6.3, 3.3), stroke: 0.5pt)
  line((3.5, 0.75), (4.2, 1.45), stroke: 0.5pt)
  line((5.02, 2.27), (6.3, 3.55), stroke: 0.5pt)
  line((3.5, 1.0), (3.95, 1.45), stroke: 0.5pt)
  line((4.77, 2.27), (6.3, 3.8), stroke: 0.5pt)
  line((3.5, 1.25), (3.7, 1.45), stroke: 0.5pt)
  line((4.52, 2.27), (6.05, 3.8), stroke: 0.5pt)
  line((4.35, 2.35), (5.8, 3.8), stroke: 0.5pt)
  line((4.1, 2.35), (5.55, 3.8), stroke: 0.5pt)
  line((3.85, 2.35), (5.3, 3.8), stroke: 0.5pt)
  line((3.6, 2.35), (5.05, 3.8), stroke: 0.5pt)
  line((3.5, 2.5), (4.8, 3.8), stroke: 0.5pt)
  line((3.5, 2.75), (4.55, 3.8), stroke: 0.5pt)
  line((3.5, 3.0), (4.3, 3.8), stroke: 0.5pt)
  line((3.5, 3.25), (4.05, 3.8), stroke: 0.5pt)
  line((3.5, 3.5), (3.8, 3.8), stroke: 0.5pt)
  line((3.5, 3.75), (3.55, 3.8), stroke: 0.5pt)

  line((1.1, 0.0), (6.3, 0.0), (6.3, 3.8), (1.1, 3.8), close: true, stroke: 1pt)
  line((3.5, 0.0), (3.5, 1.38), stroke: 1pt)
  line((3.5, 2.42), (3.5, 3.8), stroke: 1pt)
  line((1.1, 2.42), (3.5, 2.42), stroke: 1pt)
  line((1.1, 1.38), (3.5, 1.38), stroke: 1pt)

  line((1.1, 1.05), (1.1, 2.75), stroke: 1pt)
  line((1.1, 2.75), (0.68, 2.75), stroke: 1pt)
  arc((0.68, 2.65), start: 90deg, stop: 180deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((0.58, 2.65), (0.58, 2.42), stroke: 1pt)
  arc((0.68, 2.42), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((0.68, 2.32), (1.1, 2.32), stroke: 1pt)

  arc((0.68, 2.15), start: 90deg, stop: 180deg, radius: (0.10, 0.17), anchor: "origin", stroke: 1pt)
  line((0.58, 2.15), (0.58, 1.65), stroke: 1pt)
  arc((0.68, 1.65), start: 180deg, stop: 270deg, radius: (0.10, 0.17), anchor: "origin", stroke: 1pt)
  line((0.68, 1.48), (1.1, 1.48), stroke: 1pt)

  arc((0.68, 1.38), start: 90deg, stop: 180deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((0.58, 1.38), (0.58, 1.15), stroke: 1pt)
  arc((0.68, 1.15), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((0.68, 1.05), (1.1, 1.05), stroke: 1pt)

  line((1.1, 2.35), (4.4, 2.35), (4.5, 2.27), (4.5, 1.53), (4.4, 1.45), (1.1, 1.45), stroke: 1pt)
  line((2.4, 1.45), (2.4, 2.35), stroke: 1pt)
  line((4.4, 1.45), (4.4, 2.35), stroke: 1pt)

  line((2.25, 2.35), (2.4, 2.27), (4.4, 2.27), stroke: 0.6pt)
  line((2.25, 1.45), (2.4, 1.53), (4.4, 1.53), stroke: 0.6pt)

  line((4.4, 2.35), (5.05, 2.35), (5.13, 2.27), stroke: 0.6pt)
  line((4.4, 1.45), (5.05, 1.45), (5.13, 1.53), stroke: 0.6pt)
  line((5.05, 1.45), (5.05, 2.35), stroke: 1pt)

  line((4.5, 2.27), (5.3, 2.27), (5.6, 1.9), (5.3, 1.53), (4.5, 1.53), stroke: 1pt)
  line((5.3, 1.53), (5.3, 2.27), stroke: 1pt)

  line((0.15, 1.9), (5.9, 1.9), stroke: (dash: "dash-dotted", thickness: 0.6pt))
})]
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - #strong[Prigioniero:] è costituito da un gambo privo di testa e filettato alle due estremità. Un'estremità si avvita nella madrevite ricavata in uno dei pezzi (talvolta fino alla fine della filettatura, richiedendo attenzione a possibili problemi dovuti all'aria intrappolata sul fondo del foro cieco), mentre l'altra estremità fuoriesce per accogliere i pezzi da impilare e viene chiusa mediante un dado. Il prigioniero svolge anche una comoda funzione iniziale di perno di centramento per allineare le parti da accostare.
  ],
  [#canvas(length: 0.7cm, {
  import draw: *
  group({
    rotate(90deg)
    line((-2.00, 0.25), (-1.75, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 0.50), (-1.50, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 0.75), (-1.25, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 1.00), (-1.00, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 1.25), (-0.75, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 1.50), (-0.50, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 1.75), (-0.25, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 2.00), (0.00, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 2.25), (-0.60, 0.85), stroke: (thickness: 0.6pt, paint: gray))
    line((-0.10, 0.35), (0.25, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-2.00, 2.50), (-0.60, 1.10), stroke: (thickness: 0.6pt, paint: gray))
    line((0.13, 0.37), (0.50, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-1.80, 2.55), (-0.60, 1.35), stroke: (thickness: 0.6pt, paint: gray))
    line((0.30, 0.45), (0.75, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-1.55, 2.55), (-0.60, 1.60), stroke: (thickness: 0.6pt, paint: gray))
    line((0.44, 0.56), (1.00, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-1.30, 2.55), (-0.60, 1.85), stroke: (thickness: 0.6pt, paint: gray))
    line((0.54, 0.71), (1.25, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-1.05, 2.55), (-0.60, 2.10), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 0.90), (1.50, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((-0.80, 2.55), (-0.60, 2.35), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 1.15), (1.75, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 1.40), (2.00, 0.00), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 1.65), (2.00, 0.25), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 1.90), (2.00, 0.50), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 2.15), (2.00, 0.75), stroke: (thickness: 0.6pt, paint: gray))
    line((0.60, 2.40), (2.00, 1.00), stroke: (thickness: 0.6pt, paint: gray))
    line((0.70, 2.55), (2.00, 1.25), stroke: (thickness: 0.6pt, paint: gray))
    line((0.95, 2.55), (2.00, 1.50), stroke: (thickness: 0.6pt, paint: gray))
    line((1.20, 2.55), (2.00, 1.75), stroke: (thickness: 0.6pt, paint: gray))
    line((1.45, 2.55), (2.00, 2.00), stroke: (thickness: 0.6pt, paint: gray))
    line((1.70, 2.55), (2.00, 2.25), stroke: (thickness: 0.6pt, paint: gray))
    rect((-2.00, 0.00), (2.00, 2.55), stroke: 1.2pt)
    line((-0.60, 8.40), (-0.60, 1.33), stroke: 1.2pt)
    line((0.60, 8.40), (0.60, 1.33), stroke: 1.2pt)
    line((-0.60, 8.40), (0.60, 8.40), stroke: 1.2pt)
    arc((0, 7.65), start: 51.34deg, stop: 128.66deg, radius: 0.96, anchor: "origin", stroke: 1.2pt)
    line((-0.60, 5.40), (0.60, 5.40), stroke: 1.2pt)
    line((-0.60, 1.33), (0.60, 1.33), stroke: 1.2pt)
    line((-0.60, 1.33), (-0.40, 1.10), (-0.40, 0.50), (0.00, 0.30), (0.40, 0.50), (0.40, 1.10), (0.60, 1.33), stroke: 1.2pt)
    line((-0.40, 1.10), (0.40, 1.10), stroke: 1.2pt)
    line((-0.40, 0.50), (0.40, 0.50), stroke: 1.2pt)
    line((-0.40, 8.40), (-0.40, 5.40), (-0.60, 5.10), stroke: 0.6pt)
    line((0.40, 8.40), (0.40, 5.40), (0.60, 5.10), stroke: 0.6pt)
    line((-0.60, 2.85), (-0.40, 2.55), (-0.40, 1.10), stroke: 0.6pt)
    line((0.60, 2.85), (0.40, 2.55), (0.40, 1.10), stroke: 0.6pt)
    line((-0.60, 1.33), (-0.60, 0.80), (-0.40, 0.50), stroke: 0.6pt)
    line((0.60, 1.33), (0.60, 0.80), (0.40, 0.50), stroke: 0.6pt)
    line((-0.60, 0.80), (0.60, 0.80), stroke: 0.6pt)
    line((0.00, 0.20), (0.00, 9.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  })
})]
)




=== Analisi del collegamento e diagramma di interferenza
#grid(
  columns: 2,
  gutter: 1em,
  [Il collegamento filettato applica una forza assiale di chiusura che comprime i pezzi l'uno contro l'altro. Questa compressione deve generare all'interfaccia tra le parti una forza d'attrito sufficiente a contrastare eventuali azioni trasversali esterne, impedendo lo scorrimento relativo dei blocchi: salvo configurazioni particolari, le viti #strong[non devono lavorare a taglio], bensì esclusivamente a trazione.

A differenza del collegamento albero-mozzo, in cui l'interferenza è di natura geometrica (ottenuta tramite tolleranze dimensionali), nel collegamento filettato l'interferenza $i$ tra bullone e pezzo viene realizzata tramite il precarico prodotto dall'avvitamento. Applicando una coppia di serraggio (ad esempio mantenendo fermo il dado e ruotando la testa della vite), l'avanzamento relativo della vite rispetto alla madrevite genera un'interferenza assiale correlata al numero di giri compiuti dopo il primo contatto $n_("giri")$ e al passo $p$ della filettatura:],
  [#canvas(length: 1cm, {
  import draw: *

  line((3.5, 3.0), (3.5, 5.75), stroke: 0.55pt)
  line((5.65, 3.95), (5.65, 5.75), stroke: 0.55pt)
  line((6.5, 3.0), (6.5, 5.75), stroke: 0.55pt)

  line((3.5, 2.2), (3.7, 2.0), stroke: 0.45pt)
  line((3.5, 2.4), (3.9, 2.0), stroke: 0.45pt)
  line((3.5, 2.6), (4.1, 2.0), stroke: 0.45pt)
  line((3.5, 2.8), (4.3, 2.0), stroke: 0.45pt)
  line((3.5, 3.0), (4.5, 2.0), stroke: 0.45pt)
  line((3.7, 3.0), (4.7, 2.0), stroke: 0.45pt)
  line((3.9, 3.0), (4.9, 2.0), stroke: 0.45pt)
  line((4.1, 3.0), (5.0, 2.1), stroke: 0.45pt)
  line((4.3, 3.0), (5.0, 2.3), stroke: 0.45pt)
  line((4.5, 3.0), (5.0, 2.5), stroke: 0.45pt)
  line((4.7, 3.0), (5.0, 2.7), stroke: 0.45pt)
  line((4.9, 3.0), (5.0, 2.9), stroke: 0.45pt)

  line((3.5, 0.4), (3.7, 0.2), stroke: 0.45pt)
  line((3.5, 0.6), (3.9, 0.2), stroke: 0.45pt)
  line((3.5, 0.8), (4.1, 0.2), stroke: 0.45pt)
  line((3.5, 1.0), (4.3, 0.2), stroke: 0.45pt)
  line((3.5, 1.2), (4.5, 0.2), stroke: 0.45pt)
  line((3.7, 1.2), (4.7, 0.2), stroke: 0.45pt)
  line((3.9, 1.2), (4.9, 0.2), stroke: 0.45pt)
  line((4.1, 1.2), (5.0, 0.3), stroke: 0.45pt)
  line((4.3, 1.2), (5.0, 0.5), stroke: 0.45pt)
  line((4.5, 1.2), (5.0, 0.7), stroke: 0.45pt)
  line((4.7, 1.2), (5.0, 0.9), stroke: 0.45pt)
  line((4.9, 1.2), (5.0, 1.1), stroke: 0.45pt)

  line((6.5, 2.2), (6.3, 2.0), stroke: 0.45pt)
  line((6.5, 2.4), (6.1, 2.0), stroke: 0.45pt)
  line((6.5, 2.6), (5.9, 2.0), stroke: 0.45pt)
  line((6.5, 2.8), (5.7, 2.0), stroke: 0.45pt)
  line((6.5, 3.0), (5.5, 2.0), stroke: 0.45pt)
  line((6.3, 3.0), (5.3, 2.0), stroke: 0.45pt)
  line((6.1, 3.0), (5.1, 2.0), stroke: 0.45pt)
  line((5.9, 3.0), (5.0, 2.1), stroke: 0.45pt)
  line((5.7, 3.0), (5.0, 2.3), stroke: 0.45pt)
  line((5.5, 3.0), (5.0, 2.5), stroke: 0.45pt)
  line((5.3, 3.0), (5.0, 2.7), stroke: 0.45pt)
  line((5.1, 3.0), (5.0, 2.9), stroke: 0.45pt)

  line((6.5, 0.4), (6.3, 0.2), stroke: 0.45pt)
  line((6.5, 0.6), (6.1, 0.2), stroke: 0.45pt)
  line((6.5, 0.8), (5.9, 0.2), stroke: 0.45pt)
  line((6.5, 1.0), (5.7, 0.2), stroke: 0.45pt)
  line((6.5, 1.2), (5.5, 0.2), stroke: 0.45pt)
  line((6.3, 1.2), (5.3, 0.2), stroke: 0.45pt)
  line((6.1, 1.2), (5.1, 0.2), stroke: 0.45pt)
  line((5.9, 1.2), (5.0, 0.3), stroke: 0.45pt)
  line((5.7, 1.2), (5.0, 0.5), stroke: 0.45pt)
  line((5.5, 1.2), (5.0, 0.7), stroke: 0.45pt)
  line((5.3, 1.2), (5.0, 0.9), stroke: 0.45pt)
  line((5.1, 1.2), (5.0, 1.1), stroke: 0.45pt)

  rect((3.5, 0.2), (5.0, 3.0), stroke: 1pt)
  rect((5.0, 0.2), (6.5, 3.0), stroke: 1pt)
  line((3.5, 1.2), (6.5, 1.2), stroke: 0.9pt)
  line((3.5, 2.0), (6.5, 2.0), stroke: 0.9pt)

  line((2.7, 1.52), (3.28, 1.52), (3.28, 1.44), (3.5, 1.6), (3.28, 1.76), (3.28, 1.68), (2.7, 1.68), close: true, fill: rgb("#00c896"), stroke: 0.7pt)
  line((7.3, 1.52), (6.72, 1.52), (6.72, 1.44), (6.5, 1.6), (6.72, 1.76), (6.72, 1.68), (7.3, 1.68), close: true, fill: rgb("#00c896"), stroke: 0.7pt)

  line((3.5, 4.36), (6.72, 4.36), (6.82, 4.44), (6.82, 4.76), (6.72, 4.84), (3.5, 4.84), close: true, fill: white, stroke: 1pt)
  line((6.72, 4.36), (6.72, 4.84), stroke: 0.8pt)
  line((4.75, 4.36), (4.75, 4.84), stroke: 0.55pt)
  line((4.75, 4.41), (6.78, 4.41), stroke: 0.5pt)
  line((4.75, 4.79), (6.78, 4.79), stroke: 0.5pt)

  line((3.5, 4.05), (3.03, 4.05), (2.95, 4.13), (2.95, 5.07), (3.03, 5.15), (3.5, 5.15), close: true, fill: white, stroke: 1pt)
  line((2.95, 4.325), (3.5, 4.325), stroke: 0.8pt)
  line((2.95, 4.875), (3.5, 4.875), stroke: 0.8pt)

  line((5.72, 4.05), (6.11, 4.05), (6.18, 4.12), (6.18, 5.08), (6.11, 5.15), (5.72, 5.15), (5.65, 5.08), (5.65, 4.12), close: true, fill: white, stroke: 1pt)
  line((5.65, 4.325), (6.18, 4.325), stroke: 0.8pt)
  line((5.65, 4.875), (6.18, 4.875), stroke: 0.8pt)

  line((2.55, 4.6), (7.1, 4.6), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  line((3.5, 4.55), (2.92, 4.55), (2.92, 4.49), (2.7, 4.6), (2.92, 4.71), (2.92, 4.65), (3.5, 4.65), close: true, fill: rgb("#00c896"), stroke: 0.7pt)
  line((5.65, 4.55), (6.23, 4.55), (6.23, 4.49), (6.45, 4.6), (6.23, 4.71), (6.23, 4.65), (5.65, 4.65), close: true, fill: rgb("#00c896"), stroke: 0.7pt)

  line((4.45, 5.38), (3.25, 4.64), mark: (end: ">"), stroke: 0.6pt)
  line((4.85, 5.38), (5.95, 4.64), mark: (end: ">"), stroke: 0.6pt)

  line((5.65, 5.58), (6.5, 5.58), mark: (start: ">", end: ">"), stroke: 0.65pt)

  content((0.9, 5.35), text(size: 9pt)[_Riferimento_], anchor: "west")
  content((4.65, 5.48), text(size: 8.5pt)[$F_v$], anchor: "south")
  content((6.075, 5.68), text(size: 8.5pt)[$i$], anchor: "south")
  content((0.1, 1.6), text(size: 8.5pt)[Pezzi prima \ del serraggio], anchor: "west")
  content((2.95, 1.05), text(size: 8.5pt)[$F_p$], anchor: "north")
  content((7.05, 1.05), text(size: 8.5pt)[$F_p$], anchor: "north")
})],
)

$ i = p dot.op n_("giri") $




#align(center)[
  #canvas(length: 1.1cm, {
    import draw: *

    line((1.8, 0.0), (4.0, 0.0), mark: (end: ">"), stroke: 0.75pt)
    line((1.8, 0.0), (1.8, 2.2), mark: (end: ">"), stroke: 0.75pt)
    line((1.8, 0.0), (3.15, 1.61), stroke: 1.1pt)
    arc((1.8, 0.0), start: 0deg, stop: 50deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)
    arc((1.8, 0.0), start: 50deg, stop: 90deg, radius: 0.78, anchor: "origin", stroke: 0.6pt)
    arc((1.8, 0.0), start: 50deg, stop: 90deg, radius: 0.88, anchor: "origin", stroke: 0.6pt)

    content((1.68, 2.15), text(size: 8.5pt)[$F_v$], anchor: "east")
    content((3.9, -0.15), text(size: 8.5pt)[$u_v$], anchor: "north")
    content((3.28, 1.65), text(size: 8.5pt)[vite], anchor: "west")
    content((3.35, 0.55), text(size: 8.5pt)[$K_v = F_v / u_v$], anchor: "center")
    content((1.55, 1.15), text(size: 8.5pt)[$delta_v = 1 / K_v = u_v / F_v$], anchor: "east")

    line((4.8, 1.0), (8.1, 1.0), mark: (end: ">"), stroke: 0.75pt)
    line((6.8, -0.3), (6.8, 2.4), mark: (end: ">"), stroke: 0.75pt)
    line((6.8, 1.0), (5.07, 0.00), stroke: 1.1pt)
    arc((6.8, 1.0), start: 180deg, stop: 210deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)
    arc((6.8, 1.0), start: 210deg, stop: 270deg, radius: 0.78, anchor: "origin", stroke: 0.6pt)
    arc((6.8, 1.0), start: 210deg, stop: 270deg, radius: 0.88, anchor: "origin", stroke: 0.6pt)

    content((6.68, 2.35), text(size: 8.5pt)[$F_p$], anchor: "east")
    content((8.05, 0.85), text(size: 8.5pt)[$u_p$], anchor: "north")
    content((5.75, 1.55), text(size: 8.5pt)[$K_p = F_p / u_p$], anchor: "center")
    content((5.75, -0.10), text(size: 8.5pt)[pezzi], anchor: "north")
    content((7.05, 0.15), text(size: 8.5pt)[$delta_p = 1 / K_p = u_p / F_p$], anchor: "west")

    line((11.5, 0.0), (15.8, 0.0), mark: (end: ">"), stroke: 0.75pt)
    line((13.6, 0.0), (13.6, 1.7), mark: (end: ">"), stroke: 0.75pt)
    line((13.6, 0.0), (11.87, 1.00), stroke: 1.1pt)
    line((13.6, 0.0), (14.89, 1.53), stroke: 1.1pt)

    content((11.35, 0.95), text(size: 8.5pt)[vite+pezzi], anchor: "east")
    content((13.48, 1.52), text(size: 8.5pt)[$|F_p|$], anchor: "east")
    content((13.48, 1.15), text(size: 8.5pt)[$|F_v|$], anchor: "east")
    content((15.65, -0.15), text(size: 8.5pt)[$u_p, u_v$], anchor: "north")

    content((7.6, -0.95), text(size: 8.5pt)[$K_i = "rigidezza" quad delta_v = "deformabilità" quad u_i = "spostamento"$], anchor: "center")
  })
]
Sotto l'azione del serraggio, la vite risulta soggetta a trazione da parte del pezzo (allungandosi di uno spostamento positivo $u_v$ sotto la forza $F_v$), mentre i pezzi collegati risultano compressi dal bullone (accorciandosi di uno spostamento negativo $u_p$ sotto la forza $F_p$). In campo elastico lineare, ciascun componente è caratterizzato dalla propria rigidezza $K_i$ e dal suo reciproco, la deformabilità $delta_i$:

$ K_v = frac(F_v, u_v), quad quad delta_v = frac(1, K_v) = frac(u_v, F_v) $

$ K_p = frac(F_p, u_p), quad quad delta_p = frac(1, K_p) = frac(u_p, F_p) $

Sul piano forza-spostamento, la caratteristica della vite giace nel primo quadrante (forza e spostamento positivi), mentre quella dei pezzi giace originariamente nel terzo quadrante (forza di compressione e spostamento negativi). \ Per rendere pratica la costruzione grafica del diagramma di interferenza (o di forzamento), si riportano in ordinata i valori assoluti delle forze $|F_p|$ e $|F_v|$ in modo che entrambe le caratteristiche lavorino nel semipiano superiore; le pendenze rispetto all'asse delle ordinate corrispondono alle deformabilità $delta_v$ e $delta_p$.Se entrambe le rette partissero dall'origine, non vi sarebbe interferenza (pezzi semplicemente accostati senza pressione). Per rappresentare il serraggio di interferenza $i$, si lascia la caratteristica della vite nell'origine e si trasla verso destra la caratteristica del pezzo di una quantità pari a $i$ lungo l'asse delle ascisse $u$.



#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'intersezione tra le due rette identifica il punto di funzionamento del collegamento al montaggio:
- L'ordinata del punto di intersezione fornisce la forza assiale di precarico in equilibrio nella vite e nei pezzi (direttamente correlata al momento di serraggio applicato).
- La somma dei due spostamenti elastici rispetto alla posizione di equilibrio uguaglia l'interferenza imposta ($u_v + u_p = i$).], [#canvas(length: 1.1cm, {
  import draw: *
  line((0, 0), (0, -1.7), stroke: 0.55pt)
  line((1.35, -0.85), (1.35, 2.15), stroke: 0.55pt)
  line((4.2, -1.7), (4.2, 1.65), stroke: 0.55pt)

  line((0, 0), (0, 3.6), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (5.8, 0), mark: (end: ">"), stroke: 0.8pt)

  line((0, 0), (2.05, 2.46), stroke: 1.05pt)
  line((0.25, 2.25), (4.2, 0), stroke: 1.05pt)

  arc((0, 0), start: 50.19deg, stop: 90deg, radius: 0.95, anchor: "origin", stroke: 0.6pt)
  arc((0, 0), start: 50.19deg, stop: 90deg, radius: 1.07, anchor: "origin", stroke: 0.6pt)
  arc((4.2, 0), start: 90deg, stop: 150.39deg, radius: 0.95, anchor: "origin", stroke: 0.6pt)
  arc((4.2, 0), start: 90deg, stop: 150.39deg, radius: 1.07, anchor: "origin", stroke: 0.6pt)

  line((0, -0.6), (1.35, -0.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((1.35, -0.6), (4.2, -0.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((0, -1.4), (4.2, -1.4), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((4.5, 2.3), (1.38, 1.63), mark: (end: ">"), stroke: 0.7pt)

  content((-0.18, 3.25), text(size: 8.5pt)[$|F_P|$], anchor: "east")
  content((-0.18, 2.75), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((5.35, -0.25), text(size: 8.5pt)[$u$], anchor: "north")

  content((0.65, 2.3), text(size: 8.5pt)[pezzo], anchor: "south")
  content((2.12, 2.5), text(size: 8.5pt)[vite], anchor: "south-west")

  content((0.43, 1.32), text(size: 8pt)[$delta_v$], anchor: "center")
  content((3.57, 1.19), text(size: 8pt)[$delta_p$], anchor: "center")

  content((0.675, -0.3), text(size: 8pt)[$u_v$], anchor: "center")
  content((2.775, -0.3), text(size: 8pt)[$u_p$], anchor: "center")
  content((2.1, -1.1), text(size: 8pt)[$i$], anchor: "center")

  content((4.65, 2.35), text(size: 8.5pt)[Punto di funzionamento\ del collegamento al\ montaggio], anchor: "west")
})])

=== Forza assiale, momento di serraggio e momento di svitamento


#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[All'inizio dell'accostamento, i filetti della vite e della madrevite presentano un leggero gioco iniziale; non appena la vite viene messa in tiro dalla coppia torcente applicata con la chiave intorno al proprio asse principale, i fianchi dei filetti vanno a contatto sviluppando una pressione locale che genera trazione nella vite e compressione nei pezzi e nella madrevite.

Il momento torcente resistente che occorre vincere durante il serraggio è dovuto a due contributi:
1. L'attrito che si sviluppa tra i filetti della vite e quelli della madrevite in scorrimento relativo.
2. L'attrito che si sviluppa tra la superficie del sottotesta della vite (o del dado, a seconda di quale elemento viene messo in rotazione) e la superficie del pezzo (o di un'eventuale rondella antisvitamento interposta).], [#canvas(length: 0.8cm, {
  import draw: *

  // ==========================================
  // --- PANEL 1: VITE (TOP) ---
  // ==========================================
  content((4.20, 10.35), text(size: 9.5pt, weight: "bold")[Vite (filettatura esterna)], anchor: "center")

  // Screw body fill (follows exact thread teeth so valleys remain white = spazio vuoto)
  line(
    (1.80, 6.78),
    (3.50, 6.78), (3.66, 7.00), (3.82, 6.78), (3.98, 7.00), (4.14, 6.78), (4.30, 7.00),
    (4.46, 6.78), (4.62, 7.00), (4.78, 6.78), (4.94, 7.00), (5.10, 6.78), (5.26, 7.00),
    (5.42, 6.78), (5.58, 7.00), (5.74, 6.78), (5.90, 7.00), (6.06, 6.78), (6.22, 7.00),
    (6.44, 7.00), (6.44, 8.00), (6.22, 8.22),
    (6.06, 8.00), (5.90, 8.22), (5.74, 8.00), (5.58, 8.22), (5.42, 8.00), (5.26, 8.22),
    (5.10, 8.00), (4.94, 8.22), (4.78, 8.00), (4.62, 8.22), (4.46, 8.00), (4.30, 8.22),
    (4.14, 8.00), (3.98, 8.22), (3.82, 8.00), (3.66, 8.22), (3.50, 8.00), (3.50, 8.22),
    (1.80, 8.22),
    close: true, fill: luma(228), stroke: none
  )

  bezier((1.80, 7.50), (1.80, 8.22), (1.58, 7.68), (1.58, 8.04), fill: luma(228), stroke: 0.9pt)
  bezier((1.80, 6.78), (1.80, 7.50), (1.58, 6.96), (1.58, 7.32), fill: luma(228), stroke: 0.9pt)
  bezier((1.80, 7.50), (1.80, 8.22), (1.98, 7.68), (1.98, 8.04), fill: luma(195), stroke: 0.8pt)

  // Shaft outline
  line((1.80, 8.22), (3.50, 8.22), stroke: 0.95pt)
  line((1.80, 6.78), (3.50, 6.78), stroke: 0.95pt)
  line((3.50, 6.78), (3.50, 8.22), stroke: 0.7pt)

  // Thread top profile
  line((3.50, 8.00), (3.66, 8.22), (3.82, 8.00), (3.98, 8.22), (4.14, 8.00), (4.30, 8.22), (4.46, 8.00), (4.62, 8.22), (4.78, 8.00), (4.94, 8.22), (5.10, 8.00), (5.26, 8.22), (5.42, 8.00), (5.58, 8.22), (5.74, 8.00), (5.90, 8.22), (6.06, 8.00), (6.22, 8.22), stroke: 0.95pt)
  // Thread bottom profile
  line((3.50, 6.78), (3.66, 7.00), (3.82, 6.78), (3.98, 7.00), (4.14, 6.78), (4.30, 7.00), (4.46, 6.78), (4.62, 7.00), (4.78, 6.78), (4.94, 7.00), (5.10, 6.78), (5.26, 7.00), (5.42, 6.78), (5.58, 7.00), (5.74, 6.78), (5.90, 7.00), (6.06, 6.78), (6.22, 7.00), (6.44, 7.00), stroke: 0.95pt)
  // Chamfer and right end face
  line((6.22, 8.22), (6.44, 8.00), (6.44, 7.00), stroke: 0.95pt)

  // Helical crest lines
  line((3.66, 8.22), (3.82, 6.78), stroke: 0.8pt)
  line((3.98, 8.22), (4.14, 6.78), stroke: 0.8pt)
  line((4.30, 8.22), (4.46, 6.78), stroke: 0.8pt)
  line((4.62, 8.22), (4.78, 6.78), stroke: 0.8pt)
  line((4.94, 8.22), (5.10, 6.78), stroke: 0.8pt)
  line((5.26, 8.22), (5.42, 6.78), stroke: 0.8pt)
  line((5.58, 8.22), (5.74, 6.78), stroke: 0.8pt)
  line((5.90, 8.22), (6.06, 6.78), stroke: 0.8pt)
  line((6.22, 8.22), (6.36, 7.00), stroke: 0.8pt)

  // Helical root lines
  line((3.50, 8.00), (3.66, 7.00), stroke: 0.5pt)
  line((3.82, 8.00), (3.98, 7.00), stroke: 0.5pt)
  line((4.14, 8.00), (4.30, 7.00), stroke: 0.5pt)
  line((4.46, 8.00), (4.62, 7.00), stroke: 0.5pt)
  line((4.78, 8.00), (4.94, 7.00), stroke: 0.5pt)
  line((5.10, 8.00), (5.26, 7.00), stroke: 0.5pt)
  line((5.42, 8.00), (5.58, 7.00), stroke: 0.5pt)
  line((5.74, 8.00), (5.90, 7.00), stroke: 0.5pt)
  line((6.06, 8.00), (6.22, 7.00), stroke: 0.5pt)

  // Centerline axis
  line((1.40, 7.50), (6.65, 7.50), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Green rotation arrow
  bezier((0.25, 6.85), (1.00, 7.12), (0.25, 8.45), (1.00, 8.45), stroke: (paint: rgb(0, 120, 80), thickness: 6pt))
  line((0.83, 7.15), (1.17, 7.15), (1.00, 6.80), close: true, fill: rgb(0, 175, 115), stroke: (paint: rgb(0, 110, 75), thickness: 0.7pt))
  bezier((0.25, 6.85), (1.00, 7.12), (0.25, 8.45), (1.00, 8.45), stroke: (paint: rgb(0, 175, 115), thickness: 4.4pt))

  // Diameter reference lines & arrows (staggered well above Passo p)
  line((2.15, 8.22), (3.50, 8.22), stroke: 0.55pt)
  line((2.15, 6.78), (3.50, 6.78), stroke: 0.55pt)
  line((2.50, 8.11), (6.38, 8.11), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.50, 6.89), (6.38, 6.89), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.85, 8.00), (3.50, 8.00), stroke: 0.55pt)
  line((2.85, 7.00), (3.66, 7.00), stroke: 0.55pt)

  line((2.25, 6.78), (2.25, 8.22), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.25, 8.22), (2.25, 9.80), (2.75, 9.80), stroke: 0.6pt)
  content((2.83, 9.80), text(size: 7.5pt)[Diametro maggiore], anchor: "west")

  line((2.60, 6.89), (2.60, 8.11), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.60, 8.11), (2.60, 9.42), (2.95, 9.42), stroke: 0.6pt)
  content((3.03, 9.42), text(size: 7.5pt)[Diametro medio], anchor: "west")

  line((2.95, 7.00), (2.95, 8.00), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.95, 8.00), (2.95, 9.04), (3.15, 9.04), stroke: 0.6pt)
  content((3.23, 9.04), text(size: 7.5pt)[Diametro minore], anchor: "west")

  // Passo p (placed lower so it never touches Diametro minore)
  line((4.94, 8.28), (4.94, 8.74), stroke: 0.55pt)
  line((5.26, 8.28), (5.26, 8.74), stroke: 0.55pt)
  line((4.54, 8.58), (4.94, 8.58), mark: (end: ">"), stroke: 0.65pt)
  line((5.66, 8.58), (5.26, 8.58), mark: (end: ">"), stroke: 0.65pt)
  content((5.72, 8.58), text(size: 7.5pt)[Passo $p$], anchor: "west")

  // 45° Smusso
  line((6.28, 8.22), (7.15, 8.22), stroke: 0.55pt)
  line((6.44, 8.00), (6.98, 7.46), stroke: 0.55pt)
  arc((6.22, 8.22), start: 315deg, stop: 360deg, radius: 0.68, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((7.00, 7.90), text(size: 7.5pt)[45° Smusso], anchor: "west")

  // Spazio vuoto in Panel 1 (pointing into empty valley between threads)
  line((6.95, 6.88), (6.22, 6.88), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.65pt))
  content((7.00, 6.88), text(size: 7.5pt, fill: rgb(180, 60, 40))[Spazio vuoto], anchor: "west")

  // Gola & Cresta
  line((3.40, 6.32), (3.66, 6.32), (3.66, 7.00), mark: (end: ">"), stroke: 0.65pt)
  content((3.35, 6.32), text(size: 7.5pt)[Gola], anchor: "east")

  line((4.20, 5.95), (4.46, 5.95), (4.46, 6.78), mark: (end: ">"), stroke: 0.65pt)
  content((4.15, 5.95), text(size: 7.5pt)[Cresta], anchor: "east")

  // Angolo del filetto 2alpha
  line((5.74, 6.78), (5.42, 6.34), stroke: 0.55pt)
  line((5.74, 6.78), (6.06, 6.34), stroke: 0.55pt)
  arc((5.74, 6.78), start: 233.97deg, stop: 306.03deg, radius: 0.42, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((5.74, 6.36), (5.74, 6.02), (6.10, 6.02), stroke: 0.6pt)
  content((6.16, 6.02), text(size: 7.5pt)[Angolo del filetto $2 alpha$], anchor: "west")

  // ==========================================
  // --- PANEL 2: VITE E MADREVITE (BOTTOM) ---
  // ==========================================
  content((4.20, 5.28), text(size: 9.5pt, weight: "bold")[Accoppiamento Vite – Madrevite (sezione)], anchor: "center")

  // Vite fill
  line((2.40, 0.55), (3.70, 0.575), (4.30, 0.90), (3.70, 1.225), (4.30, 1.55), (3.70, 1.875), (4.30, 2.20), (3.70, 2.525), (4.30, 2.85), (3.70, 3.175), (4.30, 3.50), (3.70, 3.825), (4.30, 4.15), (3.70, 4.475), (4.30, 4.80), (2.40, 4.80), close: true, fill: luma(228), stroke: none)

  // Vite thread lines
  line((2.40, 4.725), (3.70, 4.475), stroke: 0.55pt)
  line((2.40, 4.075), (3.70, 3.825), stroke: 0.55pt)
  line((2.40, 3.425), (3.70, 3.175), stroke: 0.55pt)
  line((2.40, 2.775), (3.70, 2.525), stroke: 0.55pt)
  line((2.40, 2.125), (3.70, 1.875), stroke: 0.55pt)
  line((2.40, 1.475), (3.70, 1.225), stroke: 0.55pt)
  line((2.40, 0.825), (3.70, 0.575), stroke: 0.55pt)

  // Vite outlines
  line((2.40, 0.55), (2.40, 4.80), stroke: 0.9pt)
  line((2.40, 4.80), (4.30, 4.80), (3.70, 4.475), (4.30, 4.15), (3.70, 3.825), (4.30, 3.50), (3.70, 3.175), (4.30, 2.85), (3.70, 2.525), (4.30, 2.20), (3.70, 1.875), (4.30, 1.55), (3.70, 1.225), (4.30, 0.90), (3.70, 0.575), (2.40, 0.55), stroke: 0.9pt)

  // Vite vertical centerline
  line((2.70, 0.50), (2.70, 4.85), stroke: (paint: rgb(50, 130, 200), dash: "dash-dotted", thickness: 0.7pt))

  // Upper right block (clamped element) + hatching
  line((4.55, 2.85), (7.10, 2.85), (7.10, 4.80), (4.55, 4.80), close: true, fill: white, stroke: none)
  line((4.55, 4.55), (4.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.30), (5.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.05), (5.30, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.80), (5.55, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.55), (5.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.30), (6.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 3.05), (6.30, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.60, 2.85), (6.55, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.85, 2.85), (6.80, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.10, 2.85), (7.05, 4.80), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.35, 2.85), (7.10, 4.60), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.60, 2.85), (7.10, 4.35), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.85, 2.85), (7.10, 4.10), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.10, 2.85), (7.10, 3.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.35, 2.85), (7.10, 3.60), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.60, 2.85), (7.10, 3.35), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.85, 2.85), (7.10, 3.10), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.55, 4.80), (4.55, 2.85), (7.10, 2.85), stroke: 0.9pt)
  line((4.55, 4.80), (7.10, 4.80), stroke: 0.6pt)

  // Madrevite with visible radial/axial clearance (spazio vuoto) on non-contact flanks and crests/roots
  line(
    (4.50, 2.85), (3.80, 2.47), (4.40, 2.145), (3.80, 1.82), (4.40, 1.495), (3.80, 1.17), (4.40, 0.845), (3.80, 0.55),
    (7.10, 0.55), (7.10, 2.85),
    close: true, fill: white, stroke: none
  )

  // Madrevite hatching
  line((4.05, 0.55), (3.94, 0.66), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.35, 0.55), (4.16, 0.74), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.65, 0.55), (4.24, 0.96), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((4.95, 0.55), (4.14, 1.36), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.25, 0.55), (4.16, 1.64), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.55, 0.55), (4.12, 1.98), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((5.85, 0.55), (4.12, 2.28), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.15, 0.55), (4.12, 2.58), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.45, 0.55), (4.22, 2.78), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((6.75, 0.55), (4.45, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.05, 0.55), (4.75, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 0.80), (5.05, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.10), (5.35, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.40), (5.65, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 1.70), (5.95, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.00), (6.25, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.30), (6.55, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))
  line((7.10, 2.60), (6.85, 2.85), stroke: (paint: rgb(135, 170, 200), thickness: 0.55pt))

  // Madrevite outline
  line((4.50, 2.85), (3.80, 2.47), (4.40, 2.145), (3.80, 1.82), (4.40, 1.495), (3.80, 1.17), (4.40, 0.845), (3.80, 0.55), stroke: 0.9pt)
  line((4.50, 2.85), (7.10, 2.85), stroke: 0.9pt)
  line((3.80, 0.55), (7.10, 0.55), stroke: 0.6pt)

  // Thick blue upward arrow in Vite
  line((3.10, 3.05), (3.22, 3.05), (3.22, 3.40), (3.30, 3.40), (3.16, 3.65), (3.02, 3.40), (3.10, 3.40), close: true, fill: rgb(0, 145, 235), stroke: none)

  // Thick dark downward arrow in upper block
  line((5.79, 3.55), (5.91, 3.55), (5.91, 3.22), (5.99, 3.22), (5.85, 2.97), (5.71, 3.22), (5.79, 3.22), close: true, fill: luma(45), stroke: none)

  // Engagement force arrows on contact flanks
  line((3.86, 2.10), (3.99, 2.34), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 2.62), (4.01, 2.38), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  line((3.86, 1.45), (3.99, 1.69), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 1.97), (4.01, 1.73), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  line((3.86, 0.80), (3.99, 1.04), mark: (end: ">"), stroke: (paint: rgb(0, 145, 235), thickness: 1.1pt))
  line((4.14, 1.32), (4.01, 1.08), mark: (end: ">"), stroke: (paint: luma(40), thickness: 1.1pt))

  // Labels in Panel 2
  content((1.45, 3.10), text(size: 9.5pt, weight: "bold")[Vite], anchor: "east")
  content((1.45, 2.78), text(size: 7pt, fill: luma(80))[(filetto esterno)], anchor: "east")
  line((1.55, 2.88), (2.90, 2.18), mark: (end: ">"), stroke: 0.75pt)

  // Madrevite label
  rect((4.85, 0.90), (6.90, 1.62), fill: white, stroke: none)
  content((5.875, 1.38), text(size: 9.5pt, weight: "bold")[Madrevite], anchor: "center")
  content((5.875, 1.08), text(size: 7pt, fill: luma(80))[(filetto interno)], anchor: "center")

  // Spazio vuoto label in Panel 2 pointing to both the thread clearance and upper gap
  rect((4.78, 2.00), (6.98, 2.44), fill: white, stroke: none)
  content((5.875, 2.22), text(size: 7.5pt, fill: rgb(180, 60, 40))[Spazio vuoto (gioco)], anchor: "center")
  line((4.78, 2.16), (4.32, 1.98), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.7pt))
  line((5.15, 2.44), (4.42, 3.35), mark: (end: ">"), stroke: (paint: rgb(180, 60, 40), thickness: 0.7pt))
})])
#pagebreak()
==== Modello del piano inclinato (sola inclinazione dell'elica)
Per ricavare la relazione analitica tra il momento di serraggio $M_T$ e la forza assiale $F_V$ agente sul fusto della vite, si schematizza in prima battuta il contatto tra i filetti come il moto relativo di un blocco su un piano inclinato di angolo $alpha_m$ (angolo medio dell'elica del filetto), trascurando momentaneamente l'inclinazione laterale del profilo triangolare.



#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Avvitamento e serraggio:]
Durante il serraggio, il filetto della vite (il blocco) tende a risalire lungo il piano inclinato della madrevite. Sulla superficie di contatto si sviluppano:
- Una componente di reazione normale alla superficie di contatto, $F_N$.
- Una forza di attrito $F_("attrito") = f dot.op F_N$, parallela al piano inclinato e opposta al verso del moto relativo.

La somma vettoriale di $F_N$ e $F_("attrito")$ fornisce la forza resistente all'avvitamento $F_(R E S)$, inclinata rispetto alla normale $F_N$ dell'angolo di attrito $phi.alt$, definito dalla relazione:

$ tan phi.alt = f $

dove $f$ è il coefficiente di attrito tra i materiali della vite e della madrevite.

Per riportare l'equilibrio nel sistema di riferimento globale del bullone (direzione assiale $V$ e direzione tangenziale/circonferenziale $U$), la forza applicata dall'esterno che equilibra $F_(R E S)$ (uguale in modulo e opposta in verso) viene scomposta in una componente assiale $F_V$ e in una componente circonferenziale $F_U$. Poiché l'angolo complessivo formato tra $F_(R E S)$ e la direzione verticale $V$ è pari a $(alpha_m + phi.alt)$, dalla trigonometria si ottiene:

$ F_U = F_V tan(alpha_m + phi.alt) $

], [#canvas(length: 1cm, {
  import draw: *

  line((2.396, 8.372), (3.618, 8.816), (3.430, 9.333), (2.208, 8.889), close: true, fill: red.transparentize(78%), stroke: none)
  line((0.0, 7.5), (5.8, 7.5), stroke: (paint: rgb("#2b5c8f"), thickness: 0.9pt))
  line((0.0, 7.5), (5.45, 9.48), stroke: (paint: rgb("#2b5c8f"), thickness: 0.9pt))
  arc((0.0, 7.5), start: 0deg, stop: 20deg, radius: 1.4, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  content((1.65, 7.72), text(size: 8pt)[$alpha_m$], anchor: "west")

  line((0.94, 8.14), (2.15, 8.58), mark: (end: ">"), stroke: (paint: rgb("#3b73b9"), thickness: 2pt))
  content((1.15, 8.62), text(size: 8pt)[Moto relativo], angle: 20deg)

  arc((3.01, 8.59), start: 90deg, stop: 110deg, radius: 1.5, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  arc((3.01, 8.59), start: 110deg, stop: 135deg, radius: 1.8, anchor: "origin", stroke: (paint: rgb("#2b5c8f"), thickness: 0.7pt))
  content((2.72, 10.42), text(size: 8pt)[$alpha_m$])
  content((1.82, 10.42), text(size: 8pt)[$phi$])

  line((3.01, 11.59), (3.01, 8.59), mark: (end: ">"), stroke: (paint: rgb("#801818"), thickness: 1.1pt, dash: "dashed"))
  line((0.01, 11.59), (3.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#009933"), thickness: 1.1pt, dash: "dashed"))
  line((3.01, 8.59), (1.69, 12.21), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
  line((1.69, 12.21), (0.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#1f4e79"), thickness: 1.2pt))
  line((3.01, 8.59), (0.01, 11.59), mark: (end: ">"), stroke: (paint: rgb("#5b3a70"), thickness: 1.2pt))

  content((0.75, 12.18), text(size: 8.5pt, fill: rgb("#1f4e79"))[*$F_("attrito")$*])
  content((1.75, 12.50), text(size: 8.5pt, fill: red)[*$F_N$*])
  content((2.65, 11.88), text(size: 8.5pt, fill: rgb("#009933"))[*$F_U$*])
  content((3.22, 10.30), text(size: 8.5pt, fill: rgb("#801818"))[*$F_V$*], anchor: "west")
  content((1.22, 9.95), text(size: 8.5pt, fill: rgb("#5b3a70"))[*$F_("RES")$*], anchor: "east")

  line((0.70, 3.50), (0.62, 3.75), (0.76, 4.00), (0.64, 4.25), (0.72, 4.50), (2.25, 4.50), (2.25, 3.50), close: true, fill: luma(215), stroke: 0.8pt)
  line((3.75, 3.50), (3.75, 4.50), (5.28, 4.50), (5.36, 4.25), (5.22, 4.00), (5.34, 3.75), (5.26, 3.50), close: true, fill: luma(215), stroke: 0.8pt)

  line((0.35, 2.00), (0.26, 2.38), (0.42, 2.75), (0.28, 3.12), (0.36, 3.50), (2.25, 3.50), (2.25, 2.00), close: true, fill: luma(150), stroke: 0.8pt)
  rect((3.75, 2.00), (5.50, 3.50), fill: luma(150), stroke: 0.8pt)

  rect((2.05, 4.50), (3.95, 4.70), fill: luma(90), stroke: 0.7pt)
  rect((2.05, 1.80), (3.95, 2.00), fill: luma(90), stroke: 0.7pt)

  arc((3.00, 5.42), start: 0deg, stop: 135deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 5.42), start: 0deg, stop: 135deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))

  rect((2.45, 2.00), (3.55, 4.70), fill: luma(228), stroke: 0.9pt)
  rect((2.45, 0.80), (3.55, 1.15), fill: luma(228), stroke: 0.9pt)

  line((2.45, 2.00), (3.55, 2.14), stroke: 0.75pt)
  line((2.45, 2.20), (3.55, 2.34), stroke: 0.75pt)
  line((2.45, 2.40), (3.55, 2.54), stroke: 0.75pt)
  line((2.45, 2.60), (3.55, 2.74), stroke: 0.75pt)
  line((2.45, 2.80), (3.55, 2.94), stroke: 0.75pt)
  line((2.45, 3.00), (3.55, 3.14), stroke: 0.75pt)
  line((2.45, 3.20), (3.55, 3.34), stroke: 0.75pt)
  line((2.45, 0.84), (3.55, 0.96), stroke: 0.75pt)
  line((2.45, 1.00), (3.55, 1.12), stroke: 0.75pt)

  rect((2.05, 4.70), (3.95, 5.35), fill: luma(225), stroke: 0.9pt)
  line((2.52, 4.70), (2.52, 5.35), stroke: 0.7pt)
  line((3.48, 4.70), (3.48, 5.35), stroke: 0.7pt)

  rect((2.05, 1.15), (3.95, 1.80), fill: luma(225), stroke: 0.9pt)
  line((2.52, 1.15), (2.52, 1.80), stroke: 0.7pt)
  line((3.48, 1.15), (3.48, 1.80), stroke: 0.7pt)

  line((3.00, 0.25), (3.00, 6.10), stroke: (paint: luma(80), thickness: 0.5pt, dash: "dashed"))

  line((3.00, 4.35), (2.80, 4.05), (2.90, 4.05), (2.90, 2.85), (2.80, 2.85), (3.00, 2.55), (3.20, 2.85), (3.10, 2.85), (3.10, 4.05), (3.20, 4.05), close: true, fill: red, stroke: (paint: yellow, thickness: 1.1pt))

  line((2.72, 1.40), (3.12, 1.50), (3.09, 1.58), (3.32, 1.54), (3.15, 1.38), (3.13, 1.45), (2.74, 1.35), close: true, fill: rgb("#2b6cb0"), stroke: (paint: yellow, thickness: 0.9pt))

  line((3.80, 1.05), (3.80, 1.98), mark: (end: ">"), stroke: (paint: rgb("#e66100"), thickness: 2.2pt))

  arc((3.00, 5.42), start: 245deg, stop: 360deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 5.42), start: 245deg, stop: 360deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))
  line((2.13, 5.21), (2.49, 5.35), (2.45, 4.99), close: true, fill: rgb("#4a7ebb"), stroke: (paint: rgb("#1e3a5f"), thickness: 0.8pt))

  arc((3.00, 0.55), start: 140deg, stop: 310deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#1e3a5f"), thickness: 6pt))
  arc((3.00, 0.55), start: 140deg, stop: 310deg, radius: (1.25, 0.28), anchor: "origin", stroke: (paint: rgb("#4a7ebb"), thickness: 4.5pt))
  line((4.13, 0.40), (3.77, 0.52), (3.83, 0.16), close: true, fill: rgb("#4a7ebb"), stroke: (paint: rgb("#1e3a5f"), thickness: 0.8pt))

  line((1.30, 4.50), (1.30, 5.45), mark: (end: ">"), stroke: 1.2pt)
  line((4.70, 4.50), (4.70, 5.45), mark: (end: ">"), stroke: 1.2pt)
  line((1.30, 2.00), (1.30, 1.05), mark: (end: ">"), stroke: 1.2pt)
  line((4.70, 2.00), (4.70, 1.05), mark: (end: ">"), stroke: 1.2pt)

  content((1.12, 5.25), text(size: 8pt)[$P$], anchor: "east")
  content((4.88, 5.25), text(size: 8pt)[$P$], anchor: "west")
  content((1.12, 1.25), text(size: 8pt)[$P$], anchor: "east")
  content((4.88, 1.25), text(size: 8pt)[$P$], anchor: "west")

  line((4.05, 4.70), (5.55, 4.70), stroke: 0.5pt)
  line((4.05, 1.80), (5.55, 1.80), stroke: 0.5pt)
})])
Poiché la forza tangenziale $F_U$ agisce mediamente a una distanza dall'asse della vite pari al raggio medio $frac(d_m, 2)$ (dove $d_m$ è il diametro medio della filettatura, corrispondente a $d_2$), il momento torcente di serraggio necessario a vincere la resistenza sui filetti vale:

$ M_T = F_U frac(d_m, 2) = frac(F_V, 2) [ d_m dot.op tan(alpha_m + phi.alt) ] $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Svitamento e condizione di svitamento spontaneo:]
In fase di svitamento, il moto relativo lungo il piano inclinato si inverte (il filetto scende) e di conseguenza la forza di attrito $F_("attrito")$ si ribalta di $180degree$ per opporsi alla discesa. Nel caso generale in cui l'angolo d'attrito è maggiore dell'angolo d'inclinazione dell'elica ($phi.alt > alpha_m$), la risultante $F_(R E S)$ cade dalla parte opposta rispetto alla verticale, formando con $F_V$ l'angolo $(phi.alt - alpha_m)$ e invertendo il verso di $F_U$. Il momento necessario allo svitamento risulta opposto a quello di serraggio:

$ M_("svit") = -F_U frac(d_m, 2) = -frac(F_V, 2) [d_m dot.op tan(phi.alt - alpha_m)] = frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt)] $
 Pertanto, se $phi.alt > alpha_m$, si ha $M_("svit") < 0$: il collegamento non si svita da solo ma richiede l'applicazione di un momento di segno opposto per effettuare lo svitamento comandato.],[#canvas(length: 1cm, {
  import draw: *

  // --- BOTTOM PANEL: BOLTED JOINT ---
  line((0.5, 4.4), (4.8, 4.4), (4.8, 3.6), (0.5, 3.6), (0.62, 3.8), (0.45, 4.0), (0.60, 4.2), close: true, fill: black.transparentize(84%), stroke: 0.75pt)
  line((0.2, 3.6), (4.8, 3.6), (4.8, 2.4), (0.2, 2.4), (0.35, 2.7), (0.15, 3.0), (0.32, 3.3), close: true, fill: black.transparentize(60%), stroke: 0.75pt)

  rect((2.35, 2.4), (3.25, 4.4), fill: white, stroke: none)
  line((2.35, 2.4), (2.35, 4.4), stroke: 0.7pt)
  line((3.25, 2.4), (3.25, 4.4), stroke: 0.7pt)

  rect((2.25, 4.4), (3.35, 4.52), fill: black.transparentize(40%), stroke: 0.7pt)
  rect((2.25, 2.28), (3.35, 2.4), fill: black.transparentize(40%), stroke: 0.7pt)

  rect((2.45, 1.25), (3.15, 4.4), fill: black.transparentize(88%), stroke: 0.85pt)
  line((2.45, 3.2), (3.15, 3.2), stroke: 0.65pt)
  line((2.45, 3.02), (3.15, 3.12), stroke: 0.65pt)
  line((2.45, 2.84), (3.15, 2.94), stroke: 0.65pt)
  line((2.45, 2.66), (3.15, 2.76), stroke: 0.65pt)
  line((2.45, 2.48), (3.15, 2.58), stroke: 0.65pt)
  line((2.45, 1.48), (3.15, 1.58), stroke: 0.65pt)
  line((2.45, 1.32), (3.15, 1.42), stroke: 0.65pt)

  rect((2.15, 4.52), (3.45, 5.10), fill: black.transparentize(85%), stroke: 0.9pt)
  line((2.45, 4.52), (2.45, 5.10), stroke: 0.65pt)
  line((3.15, 4.52), (3.15, 5.10), stroke: 0.65pt)

  rect((2.15, 1.65), (3.45, 2.28), fill: black.transparentize(85%), stroke: 0.9pt)
  line((2.45, 1.65), (2.45, 2.28), stroke: 0.65pt)
  line((3.15, 1.65), (3.15, 2.28), stroke: 0.65pt)

  line((2.8, 0.75), (2.8, 5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((1.1, 4.4), (1.1, 5.35), mark: (end: ">"), stroke: 1.1pt)
  content((0.95, 4.92), text(size: 8pt)[$P$], anchor: "east")
  line((4.3, 4.4), (4.3, 5.35), mark: (end: ">"), stroke: 1.1pt)
  content((4.45, 4.92), text(size: 8pt)[$P$], anchor: "west")

  line((1.1, 2.4), (1.1, 1.45), mark: (end: ">"), stroke: 1.1pt)
  content((0.95, 1.88), text(size: 8pt)[$P$], anchor: "east")
  line((4.3, 2.4), (4.3, 1.45), mark: (end: ">"), stroke: 1.1pt)
  content((4.45, 1.88), text(size: 8pt)[$P$], anchor: "west")

  bezier((1.85, 5.20), (3.30, 5.28), (1.85, 5.58), (3.30, 5.58), stroke: (paint: blue.darken(25%), thickness: 4.5pt))
  bezier((1.85, 5.20), (3.30, 5.08), (1.85, 4.92), (2.70, 5.05), mark: (end: ">"), stroke: (paint: blue.darken(10%), thickness: 3.5pt))

  bezier((3.75, 1.15), (2.30, 1.07), (3.75, 0.77), (2.30, 0.77), stroke: (paint: blue.darken(25%), thickness: 4.5pt))
  bezier((3.75, 1.15), (2.30, 1.00), (3.75, 1.38), (2.90, 1.08), mark: (end: ">"), stroke: (paint: blue.darken(10%), thickness: 3.5pt))

  line((3.02, 2.00), (2.52, 1.90), mark: (end: ">"), stroke: (paint: yellow, thickness: 3.2pt))
  line((3.02, 2.00), (2.52, 1.90), mark: (end: ">"), stroke: (paint: red, thickness: 2.0pt))
  line((3.28, 2.22), (3.28, 1.50), mark: (end: ">"), stroke: (paint: orange, thickness: 2.4pt))

  line((3.35, 4.46), (5.2, 4.46), stroke: 0.6pt)

  // --- INSET BOX ---
  rect((5.2, 2.8), (8.3, 5.8), stroke: (paint: red, thickness: 1.5pt))

  rect((5.25, 4.05), (8.25, 4.62), fill: black.transparentize(60%), stroke: 0.7pt)
  rect((5.25, 2.85), (8.25, 4.05), fill: black.transparentize(84%), stroke: 0.7pt)

  rect((6.35, 3.00), (7.15, 4.62), fill: white, stroke: none)
  line((6.35, 4.05), (6.35, 4.62), stroke: 0.7pt)
  line((7.15, 4.05), (7.15, 4.62), stroke: 0.7pt)

  rect((6.05, 4.62), (7.45, 4.75), fill: black.transparentize(40%), stroke: 0.7pt)
  rect((6.15, 4.75), (7.35, 5.30), fill: black.transparentize(85%), stroke: 0.9pt)
  line((6.45, 4.75), (6.45, 5.30), stroke: 0.65pt)
  line((7.05, 4.75), (7.05, 5.30), stroke: 0.65pt)

  rect((6.42, 3.00), (7.08, 4.62), fill: black.transparentize(88%), stroke: 0.8pt)
  line((6.35, 3.95), (7.15, 3.95), stroke: 0.65pt)
  line((6.42, 3.83), (7.08, 3.83), stroke: 0.65pt)
  line((6.35, 3.71), (7.15, 3.71), stroke: 0.65pt)
  line((6.42, 3.59), (7.08, 3.59), stroke: 0.65pt)
  line((6.35, 3.47), (7.15, 3.47), stroke: 0.65pt)
  line((6.42, 3.35), (7.08, 3.35), stroke: 0.65pt)
  line((6.35, 3.23), (7.15, 3.23), stroke: 0.65pt)
  line((6.42, 3.11), (7.08, 3.11), stroke: 0.65pt)
  line((6.35, 3.00), (7.15, 3.00), stroke: 0.7pt)
  line((6.35, 3.00), (6.35, 4.05), stroke: 0.7pt)
  line((7.15, 3.00), (7.15, 4.05), stroke: 0.7pt)

  line((6.75, 2.90), (6.75, 5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((5.65, 4.05), (6.35, 4.05), stroke: 0.5pt)
  line((5.65, 3.00), (6.35, 3.00), stroke: 0.5pt)
  line((5.75, 3.00), (5.75, 4.05), mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((5.62, 3.52), text(size: 7.5pt)[$l_f$], anchor: "east")

  // --- TOP PANEL: INCLINED PLANE ANALOGY ---
  line((1.8, 6.9), (7.5, 6.9), stroke: (paint: blue.darken(15%), thickness: 0.9pt))
  line((1.8, 6.9), (7.316, 8.692), stroke: (paint: blue.darken(15%), thickness: 0.9pt))

  arc((1.8, 6.9), start: 0deg, stop: 18deg, radius: 1.8, anchor: "origin", stroke: (paint: blue.darken(15%), thickness: 0.65pt))
  content((3.82, 7.22), text(size: 8.5pt)[$alpha_m$], anchor: "west")

  line((4.225, 7.688), (5.271, 8.028), (5.132, 8.456), (4.086, 8.116), close: true, fill: red.transparentize(80%), stroke: none)

  line((3.967, 7.835), (2.635, 7.403), mark: (end: ">"), stroke: (paint: orange, thickness: 2.2pt))
  content((2.95, 8.18), text(size: 8.5pt)[Moto relativo], anchor: "south")

  line((4.748, 7.858), (3.821, 10.711), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
  content((4.05, 9.85), text(size: 8.5pt, fill: red)[$F_N$], anchor: "east")

  line((3.821, 10.711), (5.674, 11.313), mark: (end: ">"), stroke: (paint: orange, thickness: 1.2pt))
  content((4.65, 11.15), text(size: 8.5pt, fill: orange)[$F_("attrito")$], anchor: "south")

  line((4.748, 7.858), (5.674, 11.313), mark: (end: ">"), stroke: (paint: purple.darken(30%), thickness: 1.2pt))
  content((5.42, 9.55), text(size: 8.5pt, fill: purple.darken(30%))[$F_("RES")$], anchor: "west")

  line((4.748, 11.313), (4.748, 7.858), mark: (end: ">"), stroke: (paint: red.darken(45%), dash: "dashed", thickness: 1.0pt))
  content((4.86, 10.55), text(size: 8.5pt, fill: red.darken(45%))[$F_V$], anchor: "west")

  line((5.674, 11.313), (4.748, 11.313), mark: (end: ">"), stroke: (paint: green.darken(25%), dash: "dashed", thickness: 1.0pt))

  arc((4.748, 7.858), start: 90deg, stop: 108deg, radius: 1.65, anchor: "origin", stroke: 0.6pt)
  content((4.48, 9.68), text(size: 8pt)[$alpha_m$], anchor: "south")

  arc((4.748, 7.858), start: 75deg, stop: 108deg, radius: 2.25, anchor: "origin", stroke: 0.6pt)
  content((4.38, 10.28), text(size: 8.5pt)[$phi$], anchor: "south")
})])

Nel caso particolare in cui l'angolo di attrito sia invece inferiore all'angolo dell'elica ($phi.alt < alpha_m$), la risultante $F_(R E S)$ rimane dallo stesso lato della verticale rispetto all'avvitamento e la componente $F_U$ mantiene lo stesso verso del serraggio:

$ M = F_U frac(d_m, 2) = frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt)] > 0 quad "se " phi.alt < alpha_m $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In tale condizione, il collegamento tende allo #strong[svitamento spontaneo] (autosvitamento, specialmente in presenza di piccoli disturbi o vibrazioni), e un eventuale momento positivo applicato nel verso di serraggio agirebbe in realtà per frenare lo svitamento spontaneo.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: approfondimento grafico sulla condizione di svitamento con confronto tra "Caso generale" ($phi.alt > alpha_m$, con $F_U$ diretta verso sinistra) e "Caso particolare" ($phi.alt < alpha_m$, con $F_U$ diretta verso destra nello stesso verso del serraggio)]])

==== Attrito al sottotesta
Per tenere conto anche dell'attrito sviluppato sulla superficie di contatto anulare del sottotesta (o del dado) in rotazione rispetto al pezzo o alla rondella, si aggiunge il contributo di un momento resistente di attrito agente su un diametro efficace del sottotesta $d_t$, caratterizzato da un coefficiente di attrito specifico $f_s = tan phi.alt_s$ (generalmente distinto da $f = tan phi.alt$, poiché i materiali di vite e dado/madrevite possono essere uguali tra loro mentre i materiali tra sottotesta e pezzo o rondella sono spesso diversi):

$ M_T = frac(F_V, 2) [d_m dot.op tan(alpha_m + phi.alt) + d_t dot.op tan phi.alt_s] $

$ M_("svit") = frac(F_V, 2) [d_m dot.op tan(alpha_m - phi.alt) - d_t dot.op tan phi.alt_s] $

==== Effetto della forma triangolare o trapezoidale del filetto
Nei filetti a profilo triangolare e trapezoidale esiste un secondo piano inclinato dovuto all'inclinazione $alpha$ del fianco del filetto rispetto alla direzione radiale (per le filettature metriche, $2 alpha = 60degree arrow.r.double alpha = 30degree$). La forza normale effettiva agente perpendicolarmente al fianco del filetto non è $F_N$, bensì la sua proiezione $frac(F_N, cos alpha)$. Di conseguenza, la forza d'attrito reale vale:

$ F_("attrito") = tan phi.alt dot.op frac(F_N, cos alpha) $

da cui si ricava:

$ tan phi.alt = frac(F_("attrito") dot.op cos alpha, F_N) quad arrow.l.r.double quad frac(tan phi.alt, cos alpha) = frac(F_("attrito"), F_N) $

Per mantenere la medesima struttura formale dell'equazione di serraggio, si definisce un #strong[coefficiente d'attrito apparente] (o equivalente) $tan phi.alt'$ (talvolta indicato come $tan phi.alt^*$):

$ tan phi.alt' = frac(tan phi.alt, cos alpha) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[], [#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema dell'inclinazione trasversale del fianco del filetto con angolo di apertura $2 alpha$ e semi-angolo $alpha$, mostrante la scomposizione della forza assiale $F$ nella componente normale al fianco del filetto pari a $F / cos alpha$]])

==== Formulazione generale e approssimazione lineare
Sostituendo $phi.alt$ con $phi.alt'$, le equazioni complete per il momento di serraggio e di svitamento diventano:

$ M_T = frac(F_v, 2) [d_m dot.op tan(alpha_m + phi.alt') + d_t dot.op tan phi.alt_s] $

$ M_("svit") = frac(F_v, 2) [d_m dot.op tan(alpha_m - phi.alt') - d_t dot.op tan phi.alt_s] $

dove:
- $F_v$ = forza assiale agente sulla vite;
- $M_T$ = momento di serraggio;
- $M_("svit")$ = momento necessario per lo svitamento;
- $d_m$ = diametro medio del filetto;
- $d_t$ = diametro efficace su cui agisce la forza tra testa e sottotesta (o dado e pezzo/rondella);
- $tan phi.alt_s = f_s$ = coefficiente di attrito (sottotesta–pezzi);
- $tan phi.alt = f$ = coefficiente di attrito (vite–madrevite);
- $tan phi.alt' = frac(tan phi.alt, cos alpha)$ = coefficiente di attrito apparente ($alpha = 30degree$ per filettature metriche);
- $alpha_m$ = angolo dell'elica, legato al passo $p$ e al diametro medio $d_m$ dalla relazione $tan alpha_m = frac(p, pi dot.op d_m)$.

Infine, assumendo in prima approssimazione per piccoli angoli che $tan(alpha_m + phi.alt') tilde.eq tan alpha_m + tan phi.alt'$ e sostituendo l'espressione di $tan alpha_m$ e $tan phi.alt'$, il momento di serraggio viene espresso nella forma a tre addendi comunemente adottata nella letteratura tecnica e nelle normative (che separa il contributo geometrico del passo, quello dell'attrito sui filetti inclinati e quello dell'attrito al sottotesta):

$ M_T = frac(F_v, 2) (d_m dot.op tan alpha_m + d_m dot.op tan phi.alt' + d_t dot.op tan phi.alt_s) = frac(F_v, 2) (frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt_s) $

// NOTA: \div convertito con div (modulo sym)
== Lezione 10 (Parte 2): Viti e bulloni (collegamenti filettati) – Resistenza

=== Teoria

=== Sollecitazioni e resistenza del fusto della vite

Nell'analisi delle sollecitazioni agenti sul fusto della vite durante il serraggio (nel tratto compreso fra il sottotesta e la madrevite), occorre considerare la sola quota parte del momento di serraggio che fotografa l'interazione tra i filetti della vite e quelli della madrevite. Scompare pertanto il contributo opposto dall'attrito tra il sottotesta e la superficie del pezzo serrato, in quanto tale dissipazione non si scarica sul fusto della vite. La vite sopporta quindi simultaneamente un carico assiale $F_v$ e un momento torcente $M_T^"*"$ dovuto all'attrito sui filetti, espresso dai primi due addendi della formulazione del momento di serraggio:

$ M_T^"*" = frac(F_v, 2) (d_m dot.op tan alpha_m + d_m dot.op tan phi.alt') = frac(F_v, 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) $

Il primo termine rappresenta l'azione legata all'inclinazione dell'elica (angolo $alpha_m$, passo $p$), mentre il secondo tiene conto dell'attrito mediante l'angolo $phi.alt'$, che incorpora il fatto che le superfici di contatto sono doppiamente inclinate sia nella direzione dell'elica sia per l'inclinazione $alpha$ del fianco del filetto rispetto alla sezione trasversale del fusto.

Dal punto di vista del calcolo delle sollecitazioni, occorre stabilire quale sia la sezione resistente della vite. Nella letteratura tecnica più conservativa si assume che il filetto non concorra minimamente alla resistenza e non offra alcun effetto di rinforzo: si considera quindi utile la sola sezione minima interna alla filettatura, ossia il cilindro di nocciolo di diametro $d_n$ (ricavabile dalle tabelle). L'area di nocciolo $A_n$ e il modulo di resistenza a torsione $W_t$ valgono dunque:

$ A_n = frac(pi d_n^2, 4), quad quad W_t = frac(pi d_n^3, 16) $

Altre normative (ad esempio la normativa tedesca) ritengono invece che una piccola porzione alla radice del filetto partecipi alla resistenza della sezione trasversale, definendo un diametro leggermente superiore al diametro di nocciolo, indicato come diametro della sezione resistente ($d_(r e s)$). In ogni applicazione progettuale ci si attiene alla sezione resistente prescritta dalla normativa tecnica adottata.

Durante la fase di serraggio, analogamente a quanto avviene in un albero di trasmissione soggetto a una coppia motrice contrastata da una coppia resistente, la coppia di serraggio viene contrastata dalle resistenze d'attrito e torce elasticamente il fusto della vite. Sul fusto agiscono dunque simultaneamente una tensione normale assiale $sigma_a$ (dove il pedice $a$ indica esclusivamente la direzione assiale della vite, anche in condizioni statiche, e non una tensione alternata) e una tensione tangenziale torsionale $tau$ (calcolabile con la teoria della trave per sezione circolare utilizzando $M_t^"*"$, equivalente a $M_T^"*"$):

$ sigma_a = frac(4 dot.op F_v, pi dot.op d_n^2), quad quad tau = frac(16 dot.op M_t^"*", pi dot.op d_n^3) $

Applicando il criterio di resistenza di Von Mises, la tensione ideale equivalente $sigma_(i d)$ si scrive come:

$ sigma_(i d) = sqrt(sigma_a^2 + 3 dot.op tau^2) = sigma_a dot.op sqrt(1 + 3 dot.op (frac(tau, sigma_a))^2) $

Esplicitando il rapporto $tau / sigma_a$ tramite l'espressione di $M_T^"*"$, si ottiene:

$ frac(tau, sigma_a) = frac(16 dot.op M_T^"*", pi dot.op d_n^3) dot.op frac(pi dot.op d_n^2, 4 dot.op F_v) = frac(4, d_n dot.op F_v) dot.op frac(F_v, 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) = frac(2, d_n) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) $

Definendo il fattore adimensionale $k$, che dipende esclusivamente dai parametri geometrici della filettatura e dal coefficiente d'attrito:

$ k = [ frac(2, d_n) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) ) ] $

la tensione ideale equivalente assume la forma compatta:

$ sigma_(i d) = sigma_a dot.op sqrt(1 + 3 dot.op k^2) arrow.r.double sigma_a = frac(sigma_(i d), sqrt(1 + 3 dot.op k^2)) tilde.eq frac(sigma_(i d), 1.3) $

Per i valori geometrici e d'attrito tipici della bulloneria, infatti, il termine $sqrt(1 + 3 dot.op k^2)$ si attesta intorno a $1.3$; nella manualistica industriale si utilizza spesso questo fattore correttivo del $30\%$ per correlare rapidamente la tensione assiale sul fusto alla tensione equivalente comprensiva della torsione.

=== Forza assiale limite, momento di serraggio e coefficienti d'attrito

Il collegamento filettato deve lavorare in campo lineare elastico, poiché un eventuale snervamento (plasticizzazione) impedirebbe di garantire nel tempo l'interferenza, la pressione di contatto e l'attrito attesi tra le parti. La tensione limite di riferimento è pertanto il limite elastico allo $0.2\%$, $R_(p 0.2)$, ridotto tramite un fattore di scala $X$:

$ sigma_(i d, l i m) = X dot.op R_(p 0.2) arrow.r.double sigma_(a, l i m) = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) $

Il fattore $X$ serve a sfruttare il più possibile il materiale in fase di precarico mantenendo al contempo un margine per assorbire l'incremento di forza che insorgerà durante l'esercizio. Tipicamente si assume $X = 0.9$ (pari al $90\%$ di $R_(p 0.2)$), sebbene in specifiche applicazioni o normative possa scendere a $0.80 div 0.85$.

Moltiplicando $sigma_(a, l i m)$ per l'area resistente $A_n$ si ottiene la forza assiale limite $F_(v, l i m)$ applicabile alla vite al montaggio, che rappresenta anche il punto di equilibrio nominale nel diagramma di interferenza, e il corrispondente momento di serraggio totale $M_T$ da prescrivere (comprensivo dell'attrito sotto testa):

$ F_(v, l i m) = sigma_(a, l i m) dot.op A_n = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) dot.op frac(pi dot.op d_n^2, 4) $

$ M_T = frac(F_(v, l i m), 2) ( frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt_s ) $

Per i calcoli sulla bulloneria normale si assume un diametro medio di strisciamento sotto testa pari a $d_t tilde.eq 1.3 dot.op d$ (dove $d$ è il diametro nominale della vite), mentre in altri casi $d_t$ va valutato dal disegno costruttivo della vite.

Per quanto riguarda il coefficiente d'attrito $f = tan phi.alt$ nell'accoppiamento acciaio-acciaio, si riscontrano i seguenti intervalli sperimentali in funzione del trattamento superficiale e della lubrificazione:
- Viti brunite o fosfatate lubrificate con olio: $0.12 div 0.18$.
- Viti brunite o fosfatate lubrificate con $"MoS"_2$: $0.10 div 0.12$.
- Viti con zincatura galvanica: $0.12 div 0.18$.
- Viti con cadmiatura galvanica: $0.08 div 0.12$.

Nella valutazione della resistenza del fusto conviene assumere il coefficiente d'attrito minimo dell'intervallo sperimentale: a parità di momento di serraggio applicato, infatti, un attrito inferiore massimizza la forza assiale $F_v$ trasmessa al fusto e quindi la sollecitazione sul materiale. Al contrario, quando si valutano le condizioni funzionali o il rischio di svitamento autonomo in esercizio, occorre riferirsi al valore realistico dell'accoppiamento.

=== Materiali per bulloneria (classi di resistenza)

Nella normativa delle viti e dei bulloni i materiali sono identificati mediante classi di resistenza espresse da due numeri separati da un punto, nella forma $x.y$, dove:

$ x = frac(R_m, 100), quad quad y = 10 dot.op frac(R_(p 0.2), R_m) $

Moltiplicando $x$ per $100$ si ottiene il carico unitario di rottura $R_m$ in $"MPa"$, mentre moltiplicando $R_m$ per $0.y$ (ovvero $y/10$) si ricava il limite di snervamento $R_(p 0.2)$ in $"MPa"$. Ad esempio, la classe $8.8$ indica $R_m = 800 "MPa"$ e $R_(p 0.2) = 0.8 dot.op 800 = 640 "MPa"$.

Le classi normalizzate previste sono: $3.6 - 4.6 - 4.8 - 5.6 - 5.8 - 6.6 - 8.8 - 10.9 - 12.9$, con un incremento progressivo sia della resistenza a rottura (da circa $300 "MPa"$ fino a $1200 "MPa"$) sia del rapporto tra snervamento e rottura. Per lavori di carpenteria nelle costruzioni sono prescritti una classe minima $8.8$ e un diametro minimo $"M 12"$.

=== Resistenza dei filetti e distribuzione del carico sulle spire

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Le filettature unificate sono dimensionate in modo tale che la resistenza del filetto risulti superiore a quella del fusto; inoltre, all'interno dell'accoppiamento vite-madrevite, il filetto si trova sottoposto a un forte stato di compressione che tende a irrigidirlo. La sezione critica in cui si origina il cedimento è invece la sezione trasversale del fusto della vite, sia perché la sezione resistente è ridotta a quella del nocciolo, sia perché la gola del filetto agisce da intaglio producendo un'intensificazione locale delle tensioni. Per questi motivi, di regola i filetti non devono essere verificati.

Il carico assiale applicato al collegamento non si ripartisce uniformemente su tutte le spire in presa, ma decresce rapidamente a partire dai primi filetti: i primi $5 div 6$ filetti (spire) sostengono circa il $90\%$ del carico complessivo. Non ha quindi utilità aumentare eccessivamente l'altezza della madrevite per incrementare la capacità portante, poiché il trasferimento del carico si esaurisce nei primi $5 div 6$ filetti.

In un dado convenzionale, il primo filetto in presa sopporta circa il $35\%$ del carico, il secondo intorno al $20 div 25\%$, per poi scendere progressivamente fino a circa il $6\%$ sull'ultimo filetto; la zona di massima concentrazione tensionale alla base del dado costituisce quindi il punto critico dell'interazione. Un allungamento del dado comporta solo una modesta riduzione del picco iniziale. È invece molto efficace modificare geometricamente il dado per renderlo più deformabile nella zona iniziale di presa, ricavando una porzione alleggerita troncoconica (con parte piena superiore) alla base del dado stesso: invertendo o riducendo fortemente la compressione locale in tale zona cedevole (che si deforma a trazione/flessione locale sottraendosi al sovraccarico), il carico si ridistribuisce in modo molto più uniforme, abbattendo il picco sul primo filetto a circa il $15\%$ e portando le spire centrali e terminali a contribuire in misura significativa (oltre il $10\%$ sugli ultimi filetti per effetto di bordo).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema costruttivo e confronto grafico della distribuzione percentuale del carico sulle spire della filettatura (da 1 a 7, con indicazione in tedesco "Lastanteil der kraftübertragenden Gewindegänge", "bolzen = stahl", "mutter = stahl"). Sulla destra è raffigurato un dado convenzionale soggetto a compressione con flussi di tensione concentrati alla base e curva di carico che scende dal 35% sul primo filetto al 6% sull'ultimo, con evidenziata la zona critica di rottura. Al centro e a sinistra è raffigurato un dado modificato con scarico troncoconico alla base che rende più deformabile la zona iniziale di presa (mostrando il flusso di tensione nell'elemento collegato, nel dado e nella vite) e appiattisce la curva di distribuzione del carico intorno al 15% sul primo filetto fino a oltre il 10% sull'ultimo]])

=== Effetto dei carichi assiali esterni e diagramma di forzamento

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In assenza di carichi assiali esterni, la forza di trazione nella vite $F_v$ e la forza di compressione esercitata sulle parti serrate $F_p$ si trovano in equilibrio:

$ |F_v| = |F_p| $

Se in esercizio si applica un carico assiale esterno $C$ (ad esempio nel sottotesta del dado o sugli elementi collegati) che tende a divaricare le parti serrate e ad allungare ulteriormente la vite, il sistema raggiunge una nuova condizione di equilibrio mantenendo immutata l'interferenza geometrica complessiva $i = u_v + u_p$:

$ |F'_p| + C = |F'_v| $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di un collegamento bullonato che serra due piastre tratteggiate in verso opposto, prima e dopo l'applicazione del carico esterno. A sinistra (solo precarico) agiscono le forze uguali e opposte $F_v$ sulla testa della vite e $F_p$ sulle parti. A destra (in esercizio) agiscono le forze $F'_v$ incrementata, $F'_p$ ridotta e il carico esterno $C$ applicato al sottotesta del dado verso destra]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel diagramma di forzamento (o di interferenza), che riporta sulle ordinate le forze $|F_p|, |F_v|$ e sulle ascisse gli spostamenti $u$ (allungamento $u_v$ della vite e accorciamento $u_p$ delle parti), il punto di equilibrio al serraggio corrisponde all'intersezione tra la caratteristica elastica della vite (retta passante per l'origine) e quella delle parti serrate (retta con pendenza negativa che interseca l'asse $u$ in $u = i$). Applicando il carico $C$, rappresentato da un segmento verticale inserito tra le due caratteristiche elastiche a destra del punto di equilibrio iniziale (corrispondente a un incremento di spostamento $Delta u$), la forza sulla vite aumenta di una quota parte $Delta C_v$ fino a $F'_v$, mentre la forza di compressione sulle parti si riduce di una quota parte $Delta C_p$ fino a $F'_p$:

$ F'_v = |F_v| + Delta C_v, quad quad F'_p = |F_p| - Delta C_p, quad quad C = Delta C_v + Delta C_p $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di forzamento con assi $|F_p|, |F_v|$ in ordinata e $u$ in ascissa. Sono tracciate la retta crescente della vite ($u_v$) e la retta decrescente del pezzo ($u_p$) la cui somma alla base definisce l'interferenza $i$, con intersezione iniziale a $|F_p| = |F_v|$. A destra dell'intersezione, in corrispondenza dello spostamento $Delta u$, è inserito il segmento verticale di lunghezza $C = Delta C_v + Delta C_p$ tra il punto $F'_v$ sulla caratteristica della vite (quadrato rosso) e il punto $F'_p$ sulla caratteristica del pezzo (triangolo blu)]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Esprimendo gli spostamenti in funzione delle forze tramite le deformabilità (cedevolezze) $delta_v$ della vite e $delta_p$ delle parti serrate, si ricavano i fattori di ripartizione del carico esterno:

$ C = Delta C_p + Delta C_v = frac(Delta u, delta_p) + frac(Delta u, delta_v) = Delta u frac(delta_v + delta_p, delta_p dot.op delta_v) $

$ frac(Delta C_v, C) = frac(Delta u, delta_v) dot.op frac(delta_p dot.op delta_v, Delta u dot.op (delta_v + delta_p)) = frac(delta_p, delta_v + delta_p) $

Da cui seguono le formule di ripartizione (analoghe a una regola della leva):

$ Delta C_v = C frac(delta_p, delta_v + delta_p), quad quad Delta C_p = C frac(delta_v, delta_v + delta_p) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: dettaglio del diagramma di forzamento (assi $|F_p|, |F_v|$ e $u$) che evidenzia lo spostamento $Delta u$, l'incremento di forza sulla vite $Delta C_v$ (quadrato rosso) e la pendenza della caratteristica della vite associata alla deformabilità $delta_v$]])

=== Stima della deformabilità della vite e dei pezzi serrati

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per determinare analiticamente i fattori di ripartizione occorre calcolare le deformabilità $delta_v$ e $delta_p$. Applicando la teoria della trave caricata a sforzo normale $F_v$, la tensione assiale $sigma = F_v / A$ genera per la legge di Hooke una deformazione $epsilon.alt = sigma / E = F_v / (E A)$. Integrando la relazione $epsilon.alt = d u / d x$ lungo la lunghezza $L$ a sezione costante si ottiene lo spostamento $u = F_v L / (E A)$, da cui la deformabilità (reciproco della rigidezza per unità di lunghezza):

$ delta = frac(u, F) = frac(L, E dot.op A) $

Poiché il fusto della vite presenta generalmente tratti a sezione diversa all'interno della lunghezza serrata $L_p$ (tratto non filettato $l_1, A_1$, eventuale tratto centrale alleggerito $l_2, A_2$, tratto filettato $l_3, A_3$ fino alla madrevite), la deformabilità complessiva $delta_v$ della vite (di diametro nominale $d$ e modulo elastico $E_v$) si calcola come somma dei contributi in serie:

$ delta_v = frac(u_v, F_v) = frac(L_v, E_v dot.op A_v) = sum frac(l_(i, e f f i c a c e), E_v dot.op A_i) = frac(1, E_v) ( frac(l_1 + 0.4 dot.op d, A_1) + frac(l_2, A_2) + frac(l_3 + 0.4 dot.op d, A_3) ) $

I termini aggiuntivi $0.4 dot.op d$ tengono conto della cedevolezza elastica localizzata nella testa della vite e nella zona impegnata del dado (poiché la deformazione non termina bruscamente in corrispondenza dei piani di sottotesta e sottodado): si estende pertanto idealmente la lunghezza efficace del primo e dell'ultimo tratto di una quantità pari al $40\%$ del diametro, mantenendo le rispettive aree $A_1$ e $A_3$. L'area $A_3$ del tratto filettato è valutata utilizzando il diametro medio $d_m$ ("area media"). La formula va adattata alla specifica geometria della vite impiegata.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema longitudinale di una vite con dado che serra il pacco di lunghezza $L_p$, con indicazione dei tre tratti assiali: tratto non filettato sottotesta di lunghezza $l_1$ e area $A_1$, tratto centrale alleggerito di lunghezza $l_2$ e area $A_2$, e tratto filettato fino all'appoggio del dado di lunghezza $l_3$ e area $A_3$]])

Per quanto riguarda i pezzi serrati, il calcolo esatto richiederebbe la conoscenza della distribuzione reale delle tensioni e deformazioni da schiacciamento. In prima approssimazione ci si riconduce a un cilindro cavo equivalente di area $A_p$ tale da produrre la stessa contrazione assiale del caso reale a parità di carico:

$ delta_p = frac(u_p, F_p) = frac(L_p, E_p A_p) quad "(materiali dei pezzi serrati uguali)" $

$ delta_p = frac(1, A_p) sum frac(L_(p i), E_(p i)) quad "(materiali dei pezzi serrati diversi)" $

Per la stima dell'area equivalente $A_p$, indicando con $D_p$ il diametro esterno del pezzo serrato, $d_f$ il diametro del foro, $d_(e t)$ (o $D_(e t)$) il diametro esterno della testa della vite e $D$ il diametro della vite, si distinguono tre casi in base al rapporto $D_p / d_(e t)$:

1. #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso a) $D_p / d_(e t) lt.eq 1$:] l'elemento serrato è contenuto all'interno della proiezione della testa ed è quindi compresso uniformemente sull'intera corona circolare:

$ A_p = frac(pi, 4) (D_p^2 - d_f^2) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schemi relativi al Caso a) $D_p / d_(e t) lt.eq 1$ con dettaglio della testa esagonale ($D_(e t)$ = diametro esterno testa): a sinistra collegamento con bullone e dado su elemento cilindrico di diametro esterno $D_p$, foro $d_f$, spessore $L_p$ e vite di diametro $D$; a destra collegamento con vite mordente su blocco inferiore che serra un cilindro superiore di diametro $D_p$, foro $d_f$ e spessore $L_p$]])

2. #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso b) $D_p / d_(e t) = 1 div 3$:] la zona interessata dalla compressione si allarga a tronco di cono (cono di pressione), ma le dimensioni trasversali del pezzo non sono sufficienti a contenerlo interamente e il cono risulta troncato dal bordo esterno $D_p$. Definita la lunghezza efficace $L_p^"*" = min(L_p; 8D)$:

$ A_p = frac(pi, 4)(d_(e t)^2 - d_f^2) + frac(pi, 8)(frac(D_p, d_(e t)) - 1)(0.2 dot.op d_(e t) dot.op L_p^"*" + frac(L_p^("*2"), 100)) $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema relativo al Caso b) $D_p / d_(e t) = 1 div 3$ raffigurante una vite di diametro $D$ con dado che serra due piastre di diametro esterno $D_p$, spessore totale $L_p$ e foro $d_f$, con dettaglio della testa esagonale di diametro esterno $d_(e t)$]])

3. #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Caso c) $D_p / d_(e t) gt.eq 3$:] i pezzi serrati sono molto estesi trasversalmente, per cui il cono di pressione è completamente contenuto all'interno del volume del solido senza raggiungere i bordi laterali. Con $L_p^"*" = min(L_p; 8D)$:

$ A_p = frac(pi, 4)[(d_(e t) + 0.1 dot.op L_p^"*")^2 - d_f^2] $],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema relativo al Caso c) $D_p / d_(e t) gt.eq 3$ raffigurante una vite di diametro $D$ con dado che serra due piastre molto estese trasversalmente di spessore totale $L_p$ e foro $d_f$, con dettaglio della testa esagonale di diametro esterno $d_(e t)$]])

=== Accorgimenti costruttivi per diminuire il carico sulle viti

Dall'espressione $Delta C_v = C frac(delta_p, delta_v + delta_p)$ risulta che, a parità di carico esterno $C$, la quota parte di carico che grava sulla vite diminuisce all'aumentare della deformabilità $delta_v$ della vite stessa (mentre $Delta C_p$ aumenta). Ciò è particolarmente vantaggioso poiché la vite ha sezione minore ed è sollecitata a trazione, risultando più critica (specie a fatica) rispetto alle parti serrate in compressione. Poiché $delta_v = L / (E A)$, per incrementare $delta_v$ si può agire aumentando la lunghezza $L$ a numeratore oppure riducendo la sezione $A$ a denominatore:

1. #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Aumento della lunghezza della vite:] si interpone ad esempio un distanziale cilindrico impiegando una vite con gambo completamente filettato. Sebbene l'allungamento incrementi anche la deformabilità $delta_p$ delle parti serrate, dimensionando opportunamente il distanziale è possibile far crescere $delta_v$ in misura maggiore rispetto a $delta_p$. Nel diagramma di forzamento, $F_(v, l i m)$ rimane invariata (dipendendo dal diametro di nocciolo $d_n$), mentre la retta della vite risulta più inclinata verso l'asse delle ascisse; di conseguenza, a parità di $C$, $Delta C_v$ diminuisce e $Delta C_p$ aumenta.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di collegamento con vite completamente filettata, dado e distanziale cilindrico interposto tra testa della vite e piastre serrate]])

  #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: confronto tra due diagrammi di forzamento ($|F_p|, |F_v|$ vs $u$) a parità di $F_(v, l i m)$ e di carico esterno $C$: a sinistra la configurazione standard, a destra la configurazione con "Vite 'allungata'" caratterizzata da una retta della vite con pendenza minore (deformabilità $delta_v$ maggiore), dove $Delta C_v$ (quadrato rosso) risulta ridotto e $Delta C_p$ (triangolo blu) risulta aumentato]])

2. #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[#strong[Impiego di viti con fusto alleggerito:] si riduce il diametro del gambo non filettato a un valore $d_g < d_n$ (area $A_g = pi d_g^2 / 4$). In questo caso la sezione critica non è più quella di nocciolo, bensì la sezione calibrata alleggerita $A_g$, in base alla quale devono essere ricalcolati $k$, la forza assiale limite $F_(v, l i m)$ e il momento di serraggio $M_T$:

$ k = [frac(2, d_g)(frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha))] $

$ F_(v, l i m) = sigma_(a, l i m) dot.op A_g = frac(X dot.op R_(p 0.2), sqrt(1 + 3 dot.op k^2)) dot.op frac(pi dot.op d_g^2, 4) $

$ M_T = frac(F_(v, l i m), 2)(frac(p, pi) + d_m dot.op frac(tan phi.alt, cos alpha) + d_t dot.op tan phi.alt) $

Nel diagramma di forzamento, a parità di deformabilità del pezzo $delta_p$, la retta della vite si inclina maggiormente verso l'asse $u$ e il punto di intersezione iniziale scende a un valore inferiore $F_(v, l i m) " (alleggerita)"$: la modifica agisce dunque sia abbassando la forza assiale limite di serraggio sia riducendo la quota parte $Delta C_v$ che si scarica sulla vite in esercizio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di una vite con dado caratterizzata da fusto centrale alleggerito di diametro $d_g$]])

  #grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: confronto tra due diagrammi di forzamento ($|F_p|, |F_v|$ vs $u$) a parità di carico $C$ e di deformabilità del pezzo: a sinistra la vite standard con forza iniziale $F_(v, l i m)$; a destra la vite alleggerita con forza iniziale inferiore $F_(v, l i m)$ (alleggerita) e pendenza minore della retta della vite, con conseguente riduzione di $Delta C_v$ e aumento di $Delta C_p$]])

=== Incertezze di montaggio e allentamenti in esercizio

Il carico iniziale di trazione sulla vite e di compressione sui pezzi serrati è imposto tramite il momento di serraggio $M_T$ riferito alla condizione nominale di equilibrio $F_v = F_p$. In esercizio, tuttavia, il carico residuo di compressione sui pezzi $F_p$ può ridursi significativamente per tre cause:
- incertezze sulla forza $F_v$ al montaggio e sul momento applicato;
- allentamento del collegamento dovuto ad assestamenti superficiali indotti da vibrazioni o carichi ciclici;
- azione del carico esterno ($Delta C_p$).

==== 1. Incertezze sulla forza al montaggio

Le incertezze al serraggio derivano da due fattori principali:
- #strong[Incertezza sul coefficiente d'attrito:] soprattutto in presenza di lubrificazione o rivestimenti, il valore reale dell'attrito non è noto con precisione; all'aumentare del coefficiente d'attrito, a parità di momento applicato, diminuisce la forza assiale effettiva sulla vite.
- #strong[Incertezza sulla misura del momento applicato:] l'attrezzatura utilizzata dall'operatore può introdurre errori di misura o di lettura, oppure presentare una deriva di taratura; le attrezzature di officina sono tarate in modo che eventuali scostamenti portino a un momento applicato inferiore a quello impostato.

Si definisce l'indice di incertezza al serraggio $I$ come il rapporto tra la forza massima nominale (desiderata) e la forza minima effettivamente trasmissibile sullo strumento:

$ I = frac(F_(v, m a x), F_(v, m i n)) = frac(F_(v, l i m), F_(v, m i n)) $

I valori tipici di $I$ dipendono dalla tecnica e dallo strumento di serraggio adottati:
- Serraggio con chiave dinamometrica: $I = 1.6$.
- Serraggio con avvitatore con taratura periodica: $I = 2.5$.
- Serraggio manuale o senza taratura periodica: $I = 4$.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Dal punto di vista strumentale, l'avvitatore (o chiave a scatto) con taratura periodica dispone di una frizione o meccanismo interno che slitta o scatta producendo un segnale tattile e sonoro ("clic") al raggiungimento della coppia preimpostata tramite ghiera/pomello, andando in folle per non trasmettere coppia ulteriore; la sua affidabilità dipende tuttavia dalla corretta calibrazione periodica, soggetta a derive per temperatura, vibrazioni o manomissioni. La chiave dinamometrica vera e propria esegue invece una misura istantanea e diretta della coppia applicata durante il serraggio: nei modelli meccanici a lettura su scala graduata esiste comunque il rischio di errore di lettura da parte dell'operatore, rischio ridotto (sebbene non azzerato) nelle moderne chiavi dinamometriche elettroniche dotate di display digitale. Nell'impiego pratico (come nel serraggio delle viti di piastre di sterzo motociclistiche alla coppia prescritta, ad esempio $17 "Nm"$), il corretto utilizzo di tali utensili risponde alla doppia esigenza di non eccedere la resistenza della vite evitandone la rottura e, al tempo stesso, di non scendere al di sotto del carico minimo necessario a mantenere serrate le parti senza perdita delle viti o slittamenti.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: rassegna fotografica degli utensili di serraggio: in alto a sinistra chiave a cricchetto su componente meccanico e a destra avvitatore pneumatico con taratura periodica (con didascalia "frizione interna che slitta quando si è raggiunto il valore di coppia richiesto"); al centro due chiavi dinamometriche meccaniche con indice a scala graduata; in basso una chiave dinamometrica elettronica con display digitale]])

==== 2. Allentamento del collegamento per assestamento

Nel tempo, sotto l'azione di forze esterne e vibrazioni (assiali o trasversali/tangenziali), le micro-asperità delle superfici a contatto si schiacciano e si assestano modificando la rugosità. Ciò comporta una perdita di interferenza $Delta i$ (espressa in $mu "m"$) e una conseguente perdita di forza sulla vite $Delta F_v$. I valori di $Delta i$ dipendono dal numero di superfici di interfaccia ($"N° superfici"$), dalla direzione delle forze esterne e dalla rugosità media $R_a$:

#table(
  columns: 5,
  align: center,
  [N° superfici], [Forze assiali ($R_a = 1.6 mu "m"$)], [Forze assiali ($R_a = 0.8 mu "m"$)], [Forze tangenziali ($R_a = 1.6 mu "m"$)], [Forze tangenziali ($R_a = 0.8 mu "m"$)],
  [2], [$13 mu "m"$], [$10 mu "m"$], [$20 mu "m"$], [$13 mu "m"$],
  [3], [$16 mu "m"$], [$12 mu "m"$], [$28 mu "m"$], [$16 mu "m"$],
  [4], [$20 mu "m"$], [$14 mu "m"$], [$35 mu "m"$], [$20 mu "m"$],
  [5], [$25 mu "m"$], [$16 mu "m"$], [$42 mu "m"$], [$25 mu "m"$],
  [6], [$30 mu "m"$], [$18 mu "m"$], [$50 mu "m"$], [$30 mu "m"$],
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Occorre prestare particolare attenzione al conteggio del numero di superfici ($"N° sup"$), che corrisponde al numero di interfacce di contatto lungo il serraggio e non al numero di corpi serrati: per un singolo corpo bloccato fra sottotesta e dado si hanno $"N° sup" = 2$ (sottotesta e sottodado), mentre per due corpi impilati si hanno $"N° sup" = 3$ (sottotesta, interfaccia tra i due corpi e sottodado); in generale, il numero di superfici supera di un'unità il numero dei corpi serrati. Inoltre, lavorando abitualmente in millimetri, è indispensabile convertire $Delta i$ da micrometri ($mu "m"$) a millimetri ($"mm"$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schemi tratteggiati per l'identificazione del numero di superfici di interfaccia: a sinistra un solo blocco serrato con "N° sup = 2"; a destra due blocchi impilati con tratteggi opposti con "N° sup = 3"]])

==== Effetto globale di incertezze e allentamento sul diagramma

Combinando l'incertezza al montaggio e la perdita di interferenza per assestamento, sul diagramma di forzamento compaiono tre triangoli di interferenza concentrici:
1. Il triangolo esterno (nominale), con vertice a $F_(v, l i m) = |F_p| = |F_v|$ e interferenza nominale $i$.
2. Il triangolo intermedio, con vertice abbassato a $F_(v, m i n) = frac(F_(v, l i m), I)$ per effetto dell'incertezza di serraggio.
3. Il triangolo interno, ottenuto traslando verso sinistra di $Delta i$ la caratteristica del pezzo parallelamente a se stessa, il cui vertice corrisponde a una perdita aggiuntiva di forza $Delta F_v$:

$ frac(Delta F_v, Delta i) = frac(F_v, i) = frac(F_v, F_v (delta_v + delta_p)) arrow.r.double Delta F_v = frac(Delta i, delta_v + delta_p) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il precarico minimo residuo prima dell'applicazione del carico esterno diventa pertanto $frac(F_(v, l i m), I) - Delta F_v$. Il triangolo esterno più grande viene impiegato per la verifica di resistenza statica della vite (condizione più gravosa per il materiale), mentre il triangolo interno più piccolo viene impiegato per la verifica di funzionalità / carico minimo di serraggio (condizione più sfavorevole per la tenuta e l'aderenza tra le parti).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di forzamento completo ($|F_p|, |F_v|$ vs $u$) mostrante l'effetto globale di incertezze e allentamento attraverso tre triangoli nidificati: il triangolo esterno con interferenza $i$ e vertice a $F_(v, l i m) = |F_p| = |F_v|$; il triangolo intermedio con vertice a $F_(v, m i n) = F_(v, l i m)/I$; il triangolo interno traslato orizzontalmente di $Delta i$ verso sinistra con vertice abbassato di $Delta F_v$ al livello $F_(v, l i m)/I - Delta F_v$]])

=== Procedura iterativa di progetto dei collegamenti filettati

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nel calcolo progettuale di un collegamento filettato (che può comprendere più viti o bulloni, per cui il carico agente sul singolo elemento è $C = F_(t o t) / ("n° viti")$), si segue una procedura iterativa articolata nelle seguenti fasi:
1. #strong[Scelte iniziali:] definizione del numero di viti, della classe e tipologia del materiale e della dimensione della vite. In prima approssimazione, per dimensionare l'area resistente minima in modo da evitare troppe iterazioni successive anche in vista della verifica a fatica, si utilizza la stima:

$ A_(m i n) = (3 div 4) frac(C_(m a x), R_(p 0.2)) $

2. #strong[Calcolo dei parametri caratteristici:] determinazione di $k$, $F_(v, l i m)$, $M_T$, $delta_v$, $delta_p$, $Delta F_v$, $Delta C_v$ e $Delta C_p$.
3. #strong[Verifiche:] esecuzione della verifica statica della vite, della verifica del carico minimo di serraggio e della verifica a fatica della vite.
4. #strong[Iterazione:] qualora anche una sola delle verifiche non risulti soddisfatta, si apportano modifiche costruttive o dimensionali (sulle deformabilità, sul numero di viti, sul diametro o sulla classe del materiale) e si ripete il calcolo fino al soddisfacimento di tutte le condizioni.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di flusso della procedura di calcolo dei collegamenti filettati: blocco "Scelte iniziali" (numero viti $C = F_(t o t)/("n° viti")$, classe/tipo materiale, dimensione con formula di prima approssimazione $A_(m i n) = (3 div 4) C_(m a x) / R_(p 0.2)$), seguito dal blocco di "Calcolo di $k - F_(v, l i m) - M_T - delta_v - delta_p - Delta F_v - Delta C_v - Delta C_p$", quindi dal blocco delle tre verifiche (Verifica statica, Verifica del carico minimo di serraggio, Verifica a fatica della vite) e dal rombo decisionale che porta a "Fine" se "Sì" oppure retroaziona tramite il blocco "Cambiamenti..." alle scelte iniziali se "No"]])

=== Verifica statica della vite

La verifica statica viene condotta nelle condizioni peggiori per la sollecitazione del fusto, ovvero:
- supponendo applicata la forza limite $F_(v, l i m)$ calcolata al montaggio;
- senza considerare allentamenti né incertezze di montaggio (che ridurrebbero la forza agente);
- con il carico esterno massimo applicato $C_(m a x)$.

In teoria occorre verificare che la tensione equivalente di Von Mises non superi il limite di snervamento $R_(p 0.2)$:

$ sigma_(i d) = sqrt(sigma_v^2 + 3 dot.op tau_v^2) lt.eq R_(p 0.2) $

dove la tensione normale totale somma il contributo di precarico al serraggio $sigma_(a, l i m)$ e l'incremento di tensione assiale dovuto alla quota parte di carico esterno $Delta C_(m a x, v)$, mentre la tensione tangenziale resta quella immagazzinata al serraggio tramite $M_t^"*"$:

$ sigma_v = sigma_(a, l i m) + Delta sigma_(m a x, v) = frac(4 dot.op F_(v, l i m), pi dot.op d_n^2) + frac(4 dot.op Delta C_(m a x, v), pi dot.op d_n^2), quad quad tau_v = frac(16 dot.op M_t^"*", pi dot.op d_n^3) $

In pratica, tenendo conto del fatto che $sigma_(i d, l i m) = X dot.op R_(p 0.2)$ è stata scelta appositamente al montaggio, nella manualistica si ritiene sufficiente verificare la disuguaglianza semplificata:

$ sigma_(i d, l i m) + Delta sigma_(m a x, v) lt.eq R_(p 0.2) quad "cioè" quad X dot.op R_(p 0.2) + Delta sigma_(m a x, v) lt.eq R_(p 0.2) $

Da cui derivano le espressioni immediate di controllo in termini di tensione o di carico:

$ Delta sigma_(m a x, v) lt.eq (1 - X) R_(p 0.2), quad quad Delta C_(m a x, v) lt.eq (1 - X) F_(p 0.2) $

dove $F_(p 0.2) = R_(p 0.2) dot.op A_n$ indica il carico assiale corrispondente al raggiungimento della tensione di snervamento $R_(p 0.2)$. Ad esempio, con un precarico al $90\%$ dello snervamento ($X = 0.9$), l'incremento di carico in esercizio sulla vite deve restare entro il residuo $10\%$.

Qualora la verifica statica non sia soddisfatta, i possibili interventi correttivi sono:
- cambiare la classe del materiale aumentandone la resistenza;
- aumentare il numero di viti (diminuendo così il carico $C$ per singola vite);
- diminuire la percentuale di utilizzo $X$ del materiale al montaggio (es. scendendo all'$80\%$);
- utilizzare viti più lunghe, quindi più deformabili, per ridurre $Delta C_v$.

Si osserva inoltre che aumentare il diametro della vite non è sempre efficace: sebbene aumenti l'area resistente diminuendo le tensioni a parità di forza, aumenta contemporaneamente la rigidezza della vite con la stessa legge quadratica (riducendo $delta_v$), facendo crescere la quota parte di carico $Delta C_v$ assorbita dalla vite, col rischio che le tensioni risultanti restino elevate o addirittura aumentino.

==== Caso delle viti alleggerite

L'impiego di viti alleggerite diminuisce la quota parte di carico assorbita dalla vite, ma riduce la sezione resistente di riferimento a quella alleggerita ($d_g$, $A_g$), dove le tensioni restano comunque elevate. Nelle sezioni alleggerite la verifica statica va quindi eseguita calcolando la tensione ideale rispetto al diametro $d_g$:

$ sigma_(i d) = sqrt(sigma_g^2 + 3 dot.op tau_g^2) lt.eq R_(p 0.2) $

$ sigma_g = frac(4 dot.op (F_(v, l i m) + Delta C_(m a x, v)), pi dot.op d_g^2), quad quad tau_g = frac(16 dot.op M_t^"*", pi dot.op d_g^3) $

In pratica, le viti alleggerite non presentano una resistenza statica molto diversa da quella delle viti non alleggerite.

==== Sollecitazioni di flessione per errori di planarità

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un fattore potenzialmente molto pericoloso per l'integrità della vite è la presenza di errori di montaggio o imperfezioni geometriche tali per cui le superfici di appoggio del sottotesta e dei pezzi non risultino perfettamente parallele. In tal caso, oltre a trazione e torsione, la vite si incurva subendo sollecitazioni di flessione significative.

Dall'equazione della linea elastica per una trave di lunghezza $L$ e diametro $D$ le cui sezioni terminali subiscono una rotazione relativa $alpha$, la curvatura è $frac(1, R) = frac(M, E J) = frac(alpha, L)$, da cui la tensione massima di flessione vale:

$ sigma_(m a x) = frac(M, J) dot.op frac(D, 2) = E dot.op frac(alpha, L) dot.op frac(D, 2) $

Considerando ad esempio una vite in acciaio con $E = 2 dot.op 10^5 "MPa"$, un errore di parallelismo di appena $alpha = 0.5 degree = frac(1, 114.6) "rad"$ e un rapporto $frac(D, L) = frac(1, 10)$, si sviluppa una tensione di flessione parassita pari a $sigma tilde.eq 87 "MPa"$, che si somma alle tensioni dovute al serraggio e ai carichi di esercizio. Per contenere questo effetto conviene impiegare viti snelle (rapporto $D/L$ ridotto) e prescrivere tolleranze di planarità sulle superfici di appoggio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: schema di un tratto di fusto di lunghezza $L$ vincolato tra due superfici di appoggio non parallele inclinate di un angolo $alpha$, che induce l'incurvamento a flessione dell'asse della vite]])

=== Verifica del carico minimo di serraggio

La verifica di funzionalità assicura che, anche nelle condizioni più sfavorevoli, la forza residua di compressione tra le parti serrate $F_(p, m i n)$ non scenda mai al di sotto di un valore minimo prescritto $F_(p, l i m)$, necessario ad esempio per garantire la tenuta delle guarnizioni o per assicurare per attrito l'assenza di scorrimenti relativi tra i componenti.

Per tale verifica si opera sul triangolo più interno (il più piccolo) del diagramma di forzamento, che cumula sia la peggiore incertezza di serraggio (forza iniziale ridotta a $F_(v, l i m)/I$) sia la perdita completa per assestamento ($Delta F_v$). Applicando il carico esterno $C$ su tale triangolo, il punto di lavoro della parte serrata scende di $Delta C_p$ fino a $F_(p, m i n)$, che deve soddisfare la condizione:

$ F_(p, l i m) lt.eq F_(p, m i n) = frac(F_(v, l i m), I) - Delta F_v - Delta C_p $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Se si giunge a $F_(p, m i n) = 0$, si verifica il distacco completo fra le parti serrate: in tale situazione viene meno la tenuta del collegamento e l'intero carico esterno $C$ viene sopportato esclusivamente dalla vite, condizione da evitare assolutamente sia per la funzionalità sia per l'integrità strutturale della vite stessa. Condizioni comprese tra $F_(p, l i m)$ e $0$ mantengono ancora il contatto fisico tra le superfici, ma con una pressione insufficiente a garantire la tenuta o l'aderenza richieste.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: diagramma di forzamento ($|F_p|, |F_v|$ vs $u$) per la verifica del carico minimo di serraggio. Sono rappresentati i tre triangoli nidificati con interferenza teorica $i "teorica"$, spostamento orizzontale $Delta i$ e vertici rispettivamente a $F_(v, l i m)$, $F_(v, l i m)/I$ e $F_(v, l i m)/I - Delta F_v$. Sul triangolo più interno è applicato il carico esterno $C$, evidenziando il punto superiore sulla vite (quadrato rosso) e il punto inferiore sul pezzo (triangolo blu) ribassato di $Delta C_p$ al valore $F_(p, m i n)$, posizionato al di sopra della retta orizzontale di soglia $F_(p, l i m)$]])

Se la verifica del carico minimo di serraggio non è soddisfatta, i possibili interventi correttivi consistono nel:
- diminuire le incertezze di montaggio utilizzando chiavi dinamometriche;
- lavorare più accuratamente le superfici dei pezzi serrati (riducendo la rugosità $R_a$ e quindi $Delta i$ e $Delta F_v$);
- cambiare la classe del materiale passando a una classe superiore (innalzando $F_(v, l i m)$);
- utilizzare viti meno deformabili (con cautela, poiché ciò aumenta $Delta C_v$ avvicinando il punto di lavoro alla verifica di resistenza);
- aumentare il numero di viti (diminuendo $C$);
- aumentare la deformabilità del pezzo (con attenzione, cercando un compromesso tra le esigenze di resistenza della vite e di funzionalità del giunto, valutabile graficamente sul diagramma di interferenza).

#set page(paper: "a4", margin: 2cm)
#set text(font: "New Computer Modern", size: 10.5pt, lang: "it")
#set heading(numbering: "1.")
#set par(justify: true)

#align(center)[
  #text(size: 16pt, weight: "bold")[Appunti: Viti e Bulloni – Fatica e Casi Particolari] \
  #v(0.3em)
  #text(size: 10pt, fill: luma(80))[
    *Corso:* Elementi di Costruzione di Macchine (Prof. E. Brusa) \
    *Argomento:* Lezione 10 – Collegamenti filettati: verifica a fatica, antisvitamento e casi di carico particolari
  ]
]

#line(length: 100%, stroke: 0.5pt + luma(150))

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