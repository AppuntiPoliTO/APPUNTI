// Figura estratta da collegamenti filettati.typ (riga 463) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Helper per testa esagonale / dado esagonale (vista standard UNI/ISO a 3 facce)
  let hex-part(x0, x1, R, chamfer-left: true, chamfer-right: true, fill-col: luma(242)) = {
    let h = R / 2.0      // semialtezza faccia centrale (e/4)
    let y-c = 0.866 * R  // semialtezza faccia piana terminale (s/2)
    let c = 0.13         // profondità smusso
    let xl = if chamfer-left { x0 + c } else { x0 }
    let xr = if chamfer-right { x1 - c } else { x1 }

    // Riempimento opaco dell'intera sagoma (copre la filettatura sotto il dado)
    if chamfer-left and chamfer-right {
      line(
        (xl, R), (xr, R), (x1, y-c), (x1, -y-c), (xr, -R),
        (xl, -R), (x0, -y-c), (x0, y-c),
        close: true, fill: fill-col, stroke: none
      )
    } else if chamfer-left {
      line(
        (xl, R), (x1, R), (x1, -R),
        (xl, -R), (x0, -y-c), (x0, y-c),
        close: true, fill: fill-col, stroke: none
      )
    } else if chamfer-right {
      line(
        (x0, R), (xr, R), (x1, y-c), (x1, -y-c), (xr, -R), (x0, -R),
        close: true, fill: fill-col, stroke: none
      )
    } else {
      rect((x0, -R), (x1, R), fill: fill-col, stroke: none)
    }

    // Contorni esterni superiori e inferiori
    line((xl, R), (xr, R), stroke: 1.1pt)
    line((xl, -R), (xr, -R), stroke: 1.1pt)

    // Lato sinistro (smussi esterni + 3 archi di smusso sulle facce)
    if chamfer-left {
      line((xl, R), (x0, y-c), (x0, -y-c), (xl, -R), stroke: 1.1pt)
      arc((xl, 0.75 * R), start: 90deg, stop: 270deg, radius: (c, 0.25 * R), anchor: "origin", stroke: 0.9pt)
      arc((xl, 0), start: 90deg, stop: 270deg, radius: (c, h), anchor: "origin", stroke: 0.9pt)
      arc((xl, -0.75 * R), start: 90deg, stop: 270deg, radius: (c, 0.25 * R), anchor: "origin", stroke: 0.9pt)
    } else {
      line((x0, -R), (x0, R), stroke: 1.1pt)
    }

    // Lato destro
    if chamfer-right {
      line((xr, R), (x1, y-c), (x1, -y-c), (xr, -R), stroke: 1.1pt)
      arc((xr, 0.75 * R), start: -90deg, stop: 90deg, radius: (c, 0.25 * R), anchor: "origin", stroke: 0.9pt)
      arc((xr, 0), start: -90deg, stop: 90deg, radius: (c, h), anchor: "origin", stroke: 0.9pt)
      arc((xr, -0.75 * R), start: -90deg, stop: 90deg, radius: (c, 0.25 * R), anchor: "origin", stroke: 0.9pt)
    } else {
      line((x1, -R), (x1, R), stroke: 1.1pt)
    }

    // Spigoli interni tra le 3 facce
    line((xl, h), (xr, h), stroke: 1.0pt)
    line((xl, -h), (xr, -h), stroke: 1.0pt)
  }

  // 1. Gambo e filettatura (disegnati prima, così testa e dado li coprono)
  // Tratto cilindrico sottotesta (d = 1.00)
  line((0.72, 0.50), (1.25, 0.50), stroke: 1.1pt)
  line((0.72, -0.50), (1.25, -0.50), stroke: 1.1pt)

  // Raccordi e gambo ridotto (d_g = 0.64)
  line((1.45, 0.32), (4.65, 0.32), stroke: 1.1pt)
  line((1.45, -0.32), (4.65, -0.32), stroke: 1.1pt)
  arc((1.45, 0.50), start: 180deg, stop: 270deg, radius: (0.20, 0.18), anchor: "origin", stroke: 1.1pt)
  arc((1.45, -0.50), start: 90deg, stop: 180deg, radius: (0.20, 0.18), anchor: "origin", stroke: 1.1pt)
  arc((4.65, 0.50), start: 270deg, stop: 360deg, radius: (0.20, 0.18), anchor: "origin", stroke: 1.1pt)
  arc((4.65, -0.50), start: 0deg, stop: 90deg, radius: (0.20, 0.18), anchor: "origin", stroke: 1.1pt)

  // Tratto filettato (x = 4.85 .. 8.07)
  line((4.85, -0.50), (4.85, 0.50), stroke: 1.1pt) // fine filettatura
  line((4.85, 0.50), (7.95, 0.50), stroke: 1.1pt)
  line((4.85, -0.50), (7.95, -0.50), stroke: 1.1pt)
  line((4.85, 0.42), (7.95, 0.42), stroke: 0.6pt)  // fondo filetto
  line((4.85, -0.42), (7.95, -0.42), stroke: 0.6pt)
  // Smusso terminale vite
  line((7.95, -0.50), (7.95, 0.50), stroke: 0.7pt)
  line((7.95, 0.50), (8.07, 0.38), stroke: 1.1pt)
  line((7.95, -0.50), (8.07, -0.38), stroke: 1.1pt)
  line((8.07, -0.38), (8.07, 0.38), stroke: 1.1pt)

  // 2. Testa esagonale (sinistra) e Dado esagonale (destra)
  hex-part(0.00, 0.72, 0.90, chamfer-left: true, chamfer-right: false)
  hex-part(6.35, 7.15, 0.90, chamfer-left: true, chamfer-right: true)

  // 3. Asse di simmetria
  line((-0.35, 0), (8.40, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(90)))

  // 4. Quote dimensionali (d_g e d)
  line((2.50, 0.80), (2.50, 0.32), mark: (end: "stealth", fill: black, scale: 0.55), stroke: 0.65pt)
  line((2.50, -0.80), (2.50, -0.32), mark: (end: "stealth", fill: black, scale: 0.55), stroke: 0.65pt)
  content((2.63, -0.68), text(size: 8.5pt)[$d_g$], anchor: "west")

  line((5.60, 0.50), (5.60, -0.50), mark: (start: "stealth", end: "stealth", fill: black, scale: 0.55), stroke: 0.65pt)
  content((5.72, 0.22), text(size: 8.5pt)[$d$], anchor: "west")

  // 5. Etichette esplicative
  let callout(pt, label-pt, txt, anchor: "south") = {
    line(pt, label-pt, stroke: (thickness: 0.5pt, paint: luma(90)))
    circle(pt, radius: 0.035, fill: luma(60), stroke: none)
    content(label-pt, pad(bottom: 2pt, top: 2pt, text(size: 8pt, txt)), anchor: anchor)
  }

  callout((0.36, 0.90), (0.36, 1.35), [Testa esagonale], anchor: "south")
  callout((3.05, 0.32), (3.05, 1.35), [Gambo ridotto ($d_g < d_1$)], anchor: "south")
  callout((5.60, 0.50), (5.60, 1.35), [Tratto filettato], anchor: "south")
  callout((6.75, -0.90), (6.75, -1.35), [Dado esagonale], anchor: "north")
})
