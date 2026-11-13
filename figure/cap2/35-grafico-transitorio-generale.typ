#import "../../lib.typ": *
#align(center, scale(90%, reflow: true, canvas({
  import draw: *
  
  // Griglia di sfondo leggera
  for y in (0.6, 1.2, 1.8, 2.4) {
    line((0, y), (6.5, y), stroke: (paint: luma(220), thickness: 0.5pt))
  }
  
  // Assi cartesiani
  line((0, 0), (6.8, 0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((7.1, 0), $t$)
  line((0, 0), (0, 3.1), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((0, 3.4), $x$)
  
  // Linee tratteggiate per x_0 e x_inf
  line((0, 0.6), (1.2, 0.6), stroke: (dash: "dashed", thickness: 0.7pt))
  content((-0.4, 0.6), $x_0$)
  
  line((0, 2.4), (6.5, 2.4), stroke: (dash: "dashed", thickness: 0.7pt))
  content((-0.45, 2.4), $x_infinity$)
  
  // Etichette asse tempi (1 unità = 1 tau)
  content((1.2, -0.3), $tau$)
  content((2.4, -0.3), $2 tau$)
  content((3.6, -0.3), $3 tau$)
  content((4.8, -0.3), $4 tau$)
  content((6.0, -0.3), $5 tau$)
  
  // Tratteggi verticali a 4 tau e 5 tau
  line((4.8, 0), (4.8, 2.367), stroke: (dash: "dashed", thickness: 0.7pt))
  content((4.4, 1.2), sans("98%", size: 9pt))
  
  line((6.0, 0), (6.0, 2.388), stroke: (dash: "dashed", thickness: 0.7pt))
  content((6.45, 1.2), sans("99%", size: 9pt))
  
  // Curva esponenziale x(t) = x_0 + (x_inf - x_0)*(1 - e^(-t/tau))
  let pts = ()
  for i in range(0, 66) {
    let t_val = i * 0.1
    let tau_scale = 1.2
    let y_val = 0.6 + (2.4 - 0.6) * (1.0 - calc.exp(-t_val / tau_scale))
    pts.push((t_val, y_val))
  }
  line(..pts, stroke: (paint: red, thickness: 1.5pt))
  
  // Pallini sui punti a 4 tau e 5 tau
  circle((4.8, 2.367), radius: 1.5pt, fill: black)
  circle((6.0, 2.388), radius: 1.5pt, fill: black)
})))