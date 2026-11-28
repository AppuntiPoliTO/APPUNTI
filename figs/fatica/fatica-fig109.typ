// Figura estratta da fatica.typ (riga 3889) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
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
