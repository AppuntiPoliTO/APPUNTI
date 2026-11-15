// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 283) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.75cm, {
  import draw: *

  // Serbatoio: 0..2.7 (x), 0..2.4 (y). Pelo libero a y=1.65
  // Tubo a U: bordo interno x=3.6, bordo esterno x=4.0, altezza fino a y=2.6
  // Livelli tratteggiati: y=2.2 (P>0), y=0.6 (P<0)

  // Serbatoio con uscita in basso a destra
  line((2.7, 0.6), (2.7, 2.4), (0, 2.4), (0, 0), (2.7, 0))

  // Tubo a U
  line((2.7, 0.6), (3.6, 0.6), (3.6, 2.6))
  line((2.7, 0), (4.0, 0), (4.0, 2.6))

  // Scritta GAS
  content((1.35, 2.05), text(size: 9pt, style: "italic")[GAS])

  // Pelo libero (blu) con simbolo del livello
  line((0, 1.65), (2.7, 1.65), stroke: 1pt + c-norm)
  line((0.7, 1.9), (0.9, 1.9), (0.8, 1.65), close: true, stroke: 0.8pt + c-norm)

  // Livelli tratteggiati
  line((3.6, 2.2), (5, 2.2), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt,))
  line((3, 0.6), (5, 0.6), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))

  // Didascalie
  content((5.2, 2.2), [se $P_"GAS" > 0$], anchor: "west")
  content((5.2, 0.6), [se $P_"GAS" < 0$], anchor: "west")
})
