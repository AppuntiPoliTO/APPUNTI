#import "../../lib.typ": *
#fig-scala({
    
    import zap.cetz.draw: *

    set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"), isource: (variant: "iec"))

    // Conduttori orizzontali principali (Nodo A in alto, Nodo B in basso)
    wire((0, 4.8), (9.2, 4.8))
    wire((0, 0), (9.2, 0))

    // Ramo 1: Generatore di tensione E1 e resistore R1
    vsource("e1", (0, 0), (0, 2.2), label: (content: $E_1$, anchor: "east", distance: 11pt))
    content((-0.35, 1.85), sans("+", size: 12pt, weight: "bold"))
    resistor("r1", (0, 2.2), (0, 4.2), label: (content: $R_1$, anchor: "east", distance: 6pt))
    wire((0, 4.2), (0, 4.8))
    // Freccia corrente I1
    line((-0.2, 4.0), (-0.2, 4.7), mark: (end: "stealth", fill: black, scale: 0.8))
    content((-0.55, 4.35), $I_1$)
    // Arco tensione su R1
    bezier((0.35, 3.8), (0.35, 2.5), (0.7, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Ramo 2: Generatore di tensione E2 e resistore R2
    node("nB2", (2.5, 0))
    node("nA2", (2.5, 4.8))
    vsource("e2", (2.5, 0), (2.5, 2.2), label: (content: $E_2$, anchor: "east", distance: 11pt))
    content((2.15, 0.25), sans("+", size: 12pt, weight: "bold"))
    resistor("r2", (2.5, 2.2), (2.5, 4.2), label: (content: $R_2$, anchor: "east", distance: 6pt))
    wire((2.5, 4.2), (2.5, 4.8))
    // Freccia corrente I2
    line((2.3, 4.7), (2.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
    content((1.95, 4.35), $I_2$)
    // Arco tensione su R2
    bezier((2.85, 2.5), (2.85, 3.8), (3.2, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Ramo 3: Generatore di corrente A3 e resistore R3
    node("nB3", (5.0, 0))
    node("nA3", (5.0, 4.8))
    isource("a3", (5.0, 0), (5.0, 2.2), label: (content: $A_3$, anchor: "east", distance: 11pt))
    line((5.0, 1.8), (5.0, 2.15), mark: (end: "stealth", fill: black, scale: 0.9))
    resistor("r3", (5.0, 2.2), (5.0, 4.2), label: (content: $R_3$, anchor: "east", distance: 6pt))
    wire((5.0, 4.2), (5.0, 4.8))

    // Ramo 4: Resistore R4
    node("nB4", (7.5, 0))
    node("nA4", (7.5, 4.8))
    wire((7.5, 0), (7.5, 1.2))
    resistor("r4", (7.5, 1.2), (7.5, 3.6), label: (content: $R_4$, anchor: "south", distance: 5pt))
    wire((7.5, 3.6), (7.5, 4.8))
    // Freccia corrente I4
    line((7.3, 4.7), (7.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
    content((6.95, 4.35), $I_4$)
    // Arco tensione su R4
    bezier((7.1, 1.7), (7.1, 3.0), (6.75, 2.35), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

    // Morsetti A e B e tensione V_AB
    node("A", (9.2, 4.8), label: (content: sans("A", size: 13pt), anchor: "south", distance: 5pt))
    node("B", (9.2, 0), label: (content: sans("B", size: 13pt), anchor: "south", distance: 5pt))
    bezier((9.5, 0.3), (9.5, 4.5), (10.1, 2.4), stroke: 0.7pt, mark: (end: "stealth", fill: black, scale: 0.9))
    content((10.5, 3.6), $V_(A B)$)
  }, s: 70%)