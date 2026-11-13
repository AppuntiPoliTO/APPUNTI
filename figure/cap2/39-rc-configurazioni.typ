#import "../../lib.typ": *
#grid(
  columns: 2,
  column-gutter: 1em, row-gutter: 0.4em, align: center + bottom,
fig-scala({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"))
    
    isource("a", (0, 0), (0, 3), variant: "iec", label: (content: $A$, anchor: "north", distance: 6pt))
    line((0, 2.0), (0, 2.4), mark: (end: "stealth", fill: black))
    
    wire((0, 3), (5.4, 3))
    wire((0, 0), (5.4, 0))
    
    node("n1", (1.8, 3), label: (content: sans("B", weight: "bold"), anchor: "north", distance: 5pt))
    node("n2", (1.8, 0), label: (content: sans("C", weight: "bold"), anchor: "south", distance: 5pt))
    node("n3", (3.6, 3))
    node("n4", (3.6, 0))
    
    // Corto circuito
    wire((1.8, 3), (1.8, 0))
    line((1.6, 2.7), (1.6, 2.1), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((1.35, 2.4), $i$)
    bezier((2.0, 0.3), (2.0, 2.7), (2.3, 1.5), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((2.6, 2.3), $v = 0$)
    
    resistor("r", (3.6, 3), (3.6, 0), label: (content: $R$, anchor: "east", distance: 6pt))
    capacitor("c", (5.4, 3), (5.4, 0), label: (content: $C$, anchor: "east", distance: 6pt))
  }, s: 55%),
fig-scala({
    
    import zap.cetz.draw: *
    set-style(resistor: (variant: "ieee"))
    
    isource("a", (0, 0), (0, 3), variant: "iec", label: (content: $A$, anchor: "north", distance: 6pt))
    line((0, 2.0), (0, 2.4), mark: (end: "stealth", fill: black))
    
    wire((0, 3), (5.4, 3))
    wire((0, 0), (5.4, 0))
    
    node("n1", (1.8, 3), label: (content: sans("B", weight: "bold"), anchor: "north", distance: 5pt))
    node("n2", (1.8, 0), label: (content: sans("C", weight: "bold"), anchor: "south", distance: 5pt))
    node("n3", (3.6, 3))
    node("n4", (3.6, 0))
    
    // Circuito aperto
    wire((1.8, 3), (1.8, 1.9))
    wire((1.8, 1.1), (1.8, 0))
    
    resistor("r", (3.6, 3), (3.6, 0), label: (content: $R$, anchor: "east", distance: 6pt))
    line((3.8, 2.75), (3.8, 2.2), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((4.15, 2.45), $i_R$)
    
    capacitor("c", (5.4, 3), (5.4, 0), label: (content: $C$, anchor: "south", distance: 6pt))
    line((4.2, 3.25), (4.8, 3.25), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((4.5, 3.6), $i_C$)
    
    bezier((5.75, 0.3), (5.75, 2.7), (6.1, 1.5), mark: (end: "stealth", fill: black), stroke: 0.6pt)
    content((6.2, 1.5), $v$)
  }, s: 55%),
  [(a) $t < 0$: $S$ chiuso], [(b) $t > 0$: $S$ aperto],
)
