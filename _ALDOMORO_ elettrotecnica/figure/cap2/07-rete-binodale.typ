#import "../../lib.typ": *
#fig-scala({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

    // Nodi principali A e B
    node("A", (3.2, 4.4), label: (content: sans("A", size: 12pt), anchor: "north", distance: 5pt))
    node("B", (3.2, 0), label: (content: sans("B", size: 12pt), anchor: "south", distance: 5pt))

    // Fili orizzontali superiori e inferiori
    wire((0, 4.4), (6.4, 4.4))
    wire((0, 0), (6.4, 0))

    // Lato 1 (sinistra)
    vsource("e1", (0, 0), (0, 2.2))
    resistor("r1", (0, 2.2), (0, 4.4), label: (content: $R_1$, anchor: "south", distance: 6pt))
    content((-0.6, 1.75), $E_1$)
    content((-0.25, 1.8), sans("+", size: 11pt, weight: "bold"))
    line((0.2, 1.7), (0.2, 2.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((0.55, 2.0), $I_1$)

    // Lato 3 (centrale)
    wire((3.2, 0), (3.2, 2.2))
    resistor("r3", (3.2, 2.2), (3.2, 4.4), label: (content: $R_3$, anchor: "south", distance: 6pt))
    line((3.0, 2.55), (3.0, 1.9), mark: (end: "stealth", fill: black, scale: 0.8))
    content((2.65, 2.25), $I_3$)

    // Lato 2 (destra)
    vsource("e2", (6.4, 0), (6.4, 2.2))
    resistor("r2", (6.4, 2.2), (6.4, 4.4), label: (content: $R_2$, anchor: "south", distance: 6pt))
    content((7.15, 1.3), $E_2$)
    content((6.05, 1.8), sans("+", size: 11pt, weight: "bold"))
    line((6.6, 1.7), (6.6, 2.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((6.95, 2.0), $I_2$)

    // Maglia 1 e Maglia 2 (percorsi tratteggiati)
    rect((0.85, 0.35), (2.35, 2.9), radius: 0.45, stroke: (dash: "dashed", thickness: 0.6pt))
    line((1.75, 0.35), (1.35, 0.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((1.6, 1.5), sans("MAGLIA 1", size: 9.5pt))

    rect((4.0, 0.35), (5.65, 2.9), radius: 0.45, stroke: (dash: "dashed", thickness: 0.6pt))
    line((4.95, 0.35), (4.55, 0.35), mark: (end: "stealth", fill: black, scale: 0.8))
    content((4.82, 1.5), sans("MAGLIA 2", size: 9.5pt))

    // Frecce di tensione V1, V3, V2
    bezier((-0.9, 0.1), (-0.9, 4.3), (-1.35, 2.2), mark: (end: "stealth", fill: black))
    content((-1.5, 2.2), $V_1$)

    bezier((2.5, 0.1), (2.5, 4.3), (2.05, 2.2), mark: (end: "stealth", fill: black))
    content((1.95, 3.6), $V_3$)

    bezier((7.55, 0.1), (7.55, 4.3), (8.0, 2.2), mark: (end: "stealth", fill: black))
    content((8.2, 2.2), $V_2$)
  }, s: 70%)