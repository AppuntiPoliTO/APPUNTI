#import "../../lib.typ": *
#fig-scala({
    
    import zap.cetz.draw: *

    // Blocco Rete Lineare a sinistra
    rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
    content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

    wire((2.6, 2.0), (4.0, 2.0))
    wire((2.6, 0.4), (4.0, 0.4))
    node("A1", (3.3, 2.0), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
    node("B1", (3.3, 0.4), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

    // Carico
    wire((4.0, 2.0), (4.0, 1.6))
    wire((4.0, 0.4), (4.0, 0.8))
    rect((3.82, 0.8), (4.18, 1.6), fill: luma(238), stroke: 0.8pt + black)

    // Freccia rossa di equivalenza
    line((5.0, 1.2), (6.1, 1.2), stroke: 5pt + red, mark: (end: "triangle", fill: red, scale: 0.7))

    // Circuito Equivalente di Thevenin a destra
    vsource("eth", (7.4, 0.2), (7.4, 1.6), variant: "iec")
    content((7.1, 1.55), sans("+", size: 10pt, weight: "bold"))
    content((6.55, 0.9), $E_"eq"$)
    content((6.55, 1.65), text(fill: red.darken(10%), weight: "bold")[$E_"TH"$])

    wire((7.4, 1.6), (7.4, 2.0))
    wire((7.4, 0.2), (10.8, 0.2))
    resistor("rth", (7.4, 2.0), (9.6, 2.0), variant: "ieee")
    content((8.5, 2.45), $R_"eq"$)
    content((8.5, 3.0), text(fill: red.darken(10%), weight: "bold")[$R_"TH"$])

    wire((9.6, 2.0), (10.8, 2.0))
    node("A2", (10.1, 2.0), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
    node("B2", (10.1, 0.2), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

    // Carico a destra
    wire((10.8, 2.0), (10.8, 1.5))
    wire((10.8, 0.2), (10.8, 0.7))
    rect((10.62, 0.7), (10.98, 1.5), fill: luma(238), stroke: 0.8pt + black)
  }, s: 75%)