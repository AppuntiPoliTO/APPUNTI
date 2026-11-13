#import "../../lib.typ": *
#fig-scala({
    import zap: *
    import zap.cetz.draw: *

    set-style(resistor: (variant: "ieee"))

    // Coordinate griglia spaziosa
    let x1 = 0.0   // Ramo 1: Generatore A
    let x2 = 2.8   // Ramo 2: Interruttore S
    let x3 = 5.6   // Ramo 3: Resistore R
    let x4 = 8.2   // Ramo 4: Condensatore C
    let yB = 0.0   // Quota inferiore
    let yA = 3.4   // Quota superiore

    // --- Collegamenti orizzontali ---
    wire((x1, yA), (x4, yA))
    wire((x1, yB), (x4, yB))

    // --- Nodi di giunzione ---
    node("n1", (x2, yA))
    content((x2, yA + 0.25), anchor: "south", sans("B", weight: "bold"))

    node("n2", (x2, yB))
    content((x2, yB - 0.25), anchor: "north", sans("C", weight: "bold"))

    node("n3", (x3, yA))
    node("n4", (x3, yB))

    // --- Ramo 1: Generatore di corrente A ---
    isource("a", (x1, yB), (x1, yA), variant: "iec")
    content((rel: (-0.65, 0), to: "a.center"), anchor: "east", $A$)
    // Freccia verso della corrente impressa sul ramo del generatore
    line((x1, 2.55), (x1, 3.05), mark: (end: "stealth", fill: black, scale: 1.1))

    // --- Ramo 2: Interruttore S che si apre a t = 0 ---
    wire((x2, yA), (x2, 2.2))
    // Contatto superiore e leva dell'interruttore
    line((x2 - 0.08, 2.2), (x2 + 0.42, 2.2), stroke: 0.8pt)
    line((x2, 1.15), (x2 + 0.35, 2.35), stroke: 0.8pt)
    wire((x2, 1.15), (x2, yB))

    // Freccia curva di apertura dell'interruttore a t = 0
    bezier(
      (x2 + 0.18, 1.95),
      (x2 + 0.62, 1.45),
      (x2 + 0.48, 1.82),
      mark: (end: "stealth", fill: black),
      stroke: 0.6pt
    )
    content((x2 - 0.3, 1.7), anchor: "east", $S$)
    content((x2 + 0.65, 1.25), anchor: "west", $t = 0$)

    // Corrente i_S
    line((x2 + 0.22, 3.05), (x2 + 0.22, 2.45), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((x2 + 0.38, 2.75), anchor: "west", $i_S$)

    // --- Ramo 3: Resistore R ---
    resistor("r", (x3, yA), (x3, yB), variant: "ieee")
    content((rel: (-0.45, 0), to: "r.center"), anchor: "east", $R$)

    // Corrente i_R
    line((x3 + 0.22, 3.05), (x3 + 0.22, 2.45), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((x3 + 0.38, 2.75), anchor: "west", $i_R$)

    // --- Ramo 4: Condensatore C ---
    capacitor("c", (x4, yA), (x4, yB))
    // Etichetta C a sinistra per lasciare libero il lato destro per la tensione v
    content((rel: (-0.5, 0), to: "c.center"), anchor: "east", $C$)

    // Corrente i_C sul ramo orizzontale superiore
    line((6.5, yA + 0.22), (7.3, yA + 0.22), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((6.9, yA + 0.38), anchor: "south", $i_C$)

    // --- Freccia tensione v (a destra del condensatore) ---
    bezier(
      (x4 + 0.45, yB + 0.3),
      (x4 + 0.45, yA - 0.3),
      (x4 + 0.9, 1.7),
      mark: (end: "stealth", fill: black),
      stroke: 0.6pt
    )
    content((x4 + 0.85, 1.7), anchor: "west", $v$)
  }, s: 55%)