// Figura estratta da collegamenti saldati.typ (riga 365) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// --- Palette & gradienti 3D ---
let grad-base = gradient.linear(luma(215), luma(178), luma(195), angle: 90deg)
let grad-weld = gradient.linear(luma(128), luma(88), luma(108), angle: 90deg)
let grad-slag = gradient.linear(rgb("#6e35a3"), rgb("#451870"), rgb("#2d0e4a"), angle: 90deg)
let grad-molten-flux = gradient.linear(rgb("#8e2c7d"), rgb("#e85d04"), rgb("#faa307"), angle: 0deg)
let grad-flux = gradient.linear(rgb("#ebe6dc"), rgb("#d4ccbe"), rgb("#beb5a5"), angle: 90deg)
let grad-pool-outer = gradient.radial((rgb("#e63946"), 0%), (rgb("#b5171e"), 55%), (rgb("#6e0d12"), 100%))
let grad-pool-inner = gradient.radial((rgb("#fff3b0"), 0%), (rgb("#ff7b00"), 35%), (rgb("#ef233c"), 100%))
let grad-contact = gradient.linear(rgb("#784310"), rgb("#d98c36"), rgb("#f7cb77"), rgb("#b86b18"), rgb("#633409"), angle: 0deg)
let grad-wire = gradient.linear(rgb("#7d4018"), rgb("#f0a868"), rgb("#c46d30"), rgb("#6e3612"), angle: 0deg)
let grad-pipe-cu = gradient.linear(rgb("#7c4732"), rgb("#dca084"), rgb("#f0bfa6"), rgb("#b87356"), rgb("#693926"), angle: 0deg)
let grad-pipe-tip = gradient.linear(luma(70), luma(145), luma(175), luma(105), luma(60), angle: 0deg)
let grad-guide = gradient.linear(rgb("#ffffff").transparentize(40%), rgb("#e6c7c2").transparentize(55%), rgb("#bfa19c").transparentize(40%), angle: 0deg)

// --- Helper per tubo inclinato in sezione (pareti visibili + flusso granulare interno) ---
let flux-tube(cx, cy, angle-deg, len-total, len-tip, radius, arrow-up: true) = {
  scope({
    translate((cx, cy))
    rotate(angle-deg)

    let r-tip = radius * 1.03
    let r-in = radius * 0.76

    // Bordo posteriore dell'apertura superiore
    merge-path(close: true, fill: rgb("#8f533a"), stroke: 0.75pt + luma(40), {
      arc((radius, len-total), start: 0deg, stop: 180deg, radius: (radius, radius * 0.30))
      line((-radius, len-total), (-r-in, len-total))
      arc((-r-in, len-total), start: 180deg, stop: 0deg, radius: (r-in, radius * 0.22))
      line((r-in, len-total), (radius, len-total))
    })

    // Fondo continuo del flusso granulare interno (raccordato al cumulo alla bocca)
    merge-path(close: true, fill: grad-flux, stroke: none, {
      line((-r-in, -0.03), (r-in, -0.03), (r-in, len-total))
      arc((r-in, len-total), start: 0deg, stop: 180deg, radius: (r-in, radius * 0.22))
      line((-r-in, len-total), (-r-in, -0.03))
    })

    // Granuli nel tubo con lo stesso stile del flusso depositato
    for i in range(0, 120) {
      let u = calc.rem(calc.abs(calc.sin(i * 12.9898 + cx * 3.1) * 43758.5453), 1.0)
      let v = calc.rem(calc.abs(calc.sin(i * 78.233 + cy * 5.7) * 24634.6345), 1.0)
      let gx = -(r-in - 0.025) + u * 2 * (r-in - 0.025)
      let gy = -0.01 + v * (len-total - 0.01)
      let r = 0.018 + calc.rem(i * 7, 4) * 0.006
      let shade = luma(145 + calc.rem(i * 23, 85))
      circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
    }

    // Pareti superiori in rame/terracotta (sinistra e destra)
    rect((-radius, len-tip), (-r-in, len-total), fill: grad-pipe-cu, stroke: 0.75pt + luma(40))
    rect((r-in, len-tip), (radius, len-total), fill: grad-pipe-cu, stroke: 0.75pt + luma(40))

    // Pareti della punta inferiore in acciaio scuro (sinistra e destra)
    rect((-r-tip, 0), (-r-in, len-tip), fill: grad-pipe-tip, stroke: 0.75pt + luma(35))
    rect((r-in, 0), (r-tip, len-tip), fill: grad-pipe-tip, stroke: 0.75pt + luma(35))

    // Collare di giunzione sulle pareti
    line((-radius * 1.04, len-tip), (-r-in, len-tip), stroke: 1.1pt + luma(30))
    line((r-in, len-tip), (radius * 1.04, len-tip), stroke: 1.1pt + luma(30))

    // Freccia direzionale bianca sulla punta
    let s = if arrow-up { 1 } else { -1 }
    let y0 = len-tip * 0.50
    line(
      (-0.055, y0 - s * 0.24),
      (0.055, y0 - s * 0.24),
      (0.055, y0 + s * 0.06),
      (0.13, y0 + s * 0.06),
      (0, y0 + s * 0.28),
      (-0.13, y0 + s * 0.06),
      (-0.055, y0 + s * 0.06),
      close: true,
      fill: white,
      stroke: 0.55pt + luma(30),
    )
  })
}

// --- 1. Metallo saldato (sinistra) e Metallo base (destra) ---
line(
  (4.95, 0.45), (8.95, 0.45),
  (9.03, 0.75), (8.88, 1.05), (9.02, 1.38), (8.93, 1.72),
  (5.05, 1.72),
  close: true,
  fill: grad-base,
  stroke: 0.85pt + luma(40),
)

line(
  (1.05, 0.45), (5.00, 0.45),
  (5.00, 0.72), (4.62, 0.90), (4.22, 1.30), (3.92, 1.72),
  (3.75, 1.80), (1.05, 1.80),
  (0.97, 1.48), (1.12, 1.15), (0.98, 0.80),
  close: true,
  fill: grad-weld,
  stroke: 0.85pt + luma(35),
)

// Linee sottili di solidificazione nel metallo saldato
for xoff in (1.6, 2.2, 2.8, 3.4) {
  hobby((xoff, 1.78), (xoff + 0.25, 1.25), (xoff + 0.65, 0.75), stroke: 0.4pt + luma(145).transparentize(45%))
}

// --- 2. Bagno di fusione (ZTA + esterno + nucleo caldo) ---
merge-path(close: true, fill: luma(135).transparentize(35%), stroke: (paint: luma(80), thickness: 0.4pt, dash: "densely-dashed"), {
  line((3.72, 1.72), (6.30, 1.72))
  hobby((6.30, 1.72), (5.92, 1.18), (5.48, 0.76), (5.05, 0.65), (4.62, 0.74), (4.15, 1.18), (3.72, 1.72))
})

merge-path(close: true, fill: grad-pool-outer, stroke: 0.85pt + rgb("#4a070a"), {
  line((3.88, 1.72), (6.15, 1.72))
  hobby((6.15, 1.72), (5.82, 1.28), (5.42, 0.86), (5.05, 0.73), (4.65, 0.84), (4.22, 1.25), (3.88, 1.72))
})

merge-path(close: true, fill: grad-pool-inner, stroke: 0.5pt + rgb("#ff9e00"), {
  line((4.22, 1.72), (5.84, 1.72))
  hobby((5.84, 1.72), (5.60, 1.38), (5.32, 1.06), (5.05, 0.96), (4.80, 1.04), (4.48, 1.36), (4.22, 1.72))
})

// --- 3. Flusso fuso (strato liquido sopra il bagno) ---
merge-path(close: true, fill: grad-molten-flux, stroke: 0.6pt + rgb("#6e1423"), {
  hobby((3.82, 1.82), (4.15, 1.94), (4.70, 1.97), (5.40, 1.94), (5.85, 1.83), (6.05, 1.72))
  line((6.05, 1.72), (3.88, 1.72), (3.82, 1.82))
})

// --- 4. Scoria solidifica (strato viola a sinistra) ---
line(
  (1.05, 1.80), (3.80, 1.80), (4.06, 1.93), (3.82, 2.00), (1.05, 2.00),
  close: true,
  fill: grad-slag,
  stroke: 0.8pt + rgb("#24093d"),
)
line((1.12, 1.96), (3.78, 1.96), stroke: 0.7pt + rgb("#a875d9").transparentize(30%))

// --- 5. Strato continuo di flusso granulare (cumulo + flussi dai tubi) ---
// Unico percorso continuo che risale nella bocca del tubo di recupero (sx) e scende da quello di alimentazione (dx)
merge-path(close: true, fill: grad-flux, stroke: 0.75pt + luma(80), {
  hobby((2.05, 2.00), (2.22, 2.10), (2.27, 2.28))
  line((2.27, 2.28), (2.75, 2.40))
  hobby((2.75, 2.40), (2.82, 2.22), (3.30, 2.26), (4.25, 2.48), (5.00, 2.56), (5.75, 2.48), (6.75, 2.24), (7.14, 2.15), (7.18, 2.28))
  line((7.18, 2.28), (7.66, 2.16))
  hobby((7.66, 2.16), (7.72, 1.95), (7.92, 1.72))
  line((7.92, 1.72), (6.05, 1.72), (5.85, 1.83), (5.40, 1.94), (4.70, 1.97), (4.15, 1.94), (3.82, 2.00), (2.05, 2.00))
})

// Granuli nel cumulo principale
for i in range(0, 400) {
  let u = calc.rem(calc.abs(calc.sin(i * 12.9898 + 0.5) * 43758.5453), 1.0)
  let v = calc.rem(calc.abs(calc.sin(i * 78.233 + 1.7) * 24634.6345), 1.0)
  let gx = 2.15 + u * 5.65
  let dx = (gx - 5.0) / 2.85
  let y-top = 2.52 - 0.58 * dx * dx
  let y-bot = if gx < 3.85 { 2.03 } else if gx < 5.95 { 1.97 } else { 1.76 }
  if y-top > y-bot + 0.05 {
    let gy = y-bot + 0.025 + v * (y-top - y-bot - 0.06)
    let dist-arc = calc.sqrt(calc.pow(gx - 5.0, 2) + calc.pow(gy - 1.75, 2))
    if dist-arc > 0.46 {
      let r = 0.018 + calc.rem(i * 7, 4) * 0.006
      let shade = luma(145 + calc.rem(i * 23, 85))
      circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
    }
  }
}

// Granuli continui nelle bocche dei tubi (recupero a sx, alimentazione a dx)
for (cx, cy, ang) in ((2.51, 2.26, 14deg), (7.42, 2.14, -14deg)) {
  scope({
    translate((cx, cy))
    rotate(ang)
    for i in range(0, 28) {
      let u = calc.rem(calc.abs(calc.sin(i * 19.31 + cx) * 19283.41), 1.0)
      let v = calc.rem(calc.abs(calc.sin(i * 41.77 + cy) * 31827.19), 1.0)
      let gx = -0.20 + u * 0.40
      let gy = -0.14 + v * 0.20
      let r = 0.018 + calc.rem(i * 5, 4) * 0.005
      let shade = luma(145 + calc.rem(i * 19, 85))
      circle((gx, gy), radius: r, fill: shade, stroke: 0.2pt + luma(105))
    }
  })
}

// --- 6. Cavità dell'arco e Arco elettrico ---
merge-path(close: true, fill: gradient.radial((rgb("#fff9db"), 0%), (rgb("#ffd166").transparentize(20%), 65%), (rgb("#f77f00").transparentize(60%), 100%)), stroke: 0.5pt + rgb("#ff9f1c").transparentize(40%), {
  line((4.54, 1.72), (5.46, 1.72))
  hobby((5.46, 1.72), (5.38, 2.04), (5.00, 2.18), (4.62, 2.04), (4.54, 1.72))
})

hobby(
  (4.94, 2.00), (4.74, 1.62), (4.80, 1.32), (5.00, 1.24),
  (5.20, 1.32), (5.26, 1.62), (5.06, 2.00),
  close: true,
  fill: gradient.radial((rgb("#ffffff"), 0%), (rgb("#ffe066"), 45%), (rgb("#f77f00"), 100%)),
  stroke: 0.55pt + rgb("#e85d04"),
)

hobby(
  (4.97, 1.95), (4.86, 1.62), (4.90, 1.40), (5.00, 1.36),
  (5.10, 1.40), (5.14, 1.62), (5.03, 1.95),
  close: true,
  fill: rgb("#fffbe6"),
  stroke: none,
)

// Goccia di metallo fuso che si stacca dall'elettrodo
circle((5.0, 1.92), radius: (0.042, 0.058), fill: rgb("#ffd166"), stroke: 0.4pt + rgb("#e85d04"))

// --- 7. Tubi di flusso (sinistra: recupero, destra: alimentazione) ---
flux-tube(2.51, 2.30, 14deg, 2.37, 0.75, 0.25, arrow-up: true)
flux-tube(7.42, 2.18, -14deg, 2.46, 0.82, 0.25, arrow-up: false)

// --- 8. Elettrodo consumabile, guida inferiore traslucida e tubo di contatto ---
rect((4.94, 1.98), (5.06, 3.45), fill: grad-wire, stroke: 0.7pt + rgb("#4a250d"))

rect((4.76, 2.66), (5.24, 3.38), radius: 0.04, fill: grad-guide, stroke: 0.65pt + luma(90))
line((4.83, 2.72), (4.83, 3.32), stroke: 0.6pt + white.transparentize(35%))
line((5.18, 2.72), (5.18, 3.32), stroke: 0.5pt + luma(120).transparentize(50%))

line(
  (4.72, 3.38), (4.72, 4.92), (5.28, 4.92), (5.28, 3.30), (5.00, 3.38),
  close: true,
  fill: grad-contact,
  stroke: 0.8pt + rgb("#4a2508"),
)
circle((5.0, 4.92), radius: (0.28, 0.09), fill: rgb("#9c5a14"), stroke: 0.8pt + rgb("#4a2508"))
circle((5.0, 4.92), radius: (0.12, 0.04), fill: rgb("#3b1f05"), stroke: none)

// --- 9. Etichette e frecce di riferimento ---
let arrow-style = (mark: (end: "stealth", fill: black, size: 0.14), stroke: 0.7pt + luma(20))

content((0.75, 4.85), text(size: 7.5pt)[flusso di \ recupero], anchor: "center")
line((1.22, 4.55), (1.92, 4.10), ..arrow-style)

content((1.10, 3.35), text(size: 7.5pt)[scoria \ solidifica], anchor: "center")
line((1.32, 3.00), (1.82, 2.02), ..arrow-style)

content((0.95, 2.40), text(size: 7.5pt)[metallo \ saldato], anchor: "center")
line((1.22, 2.12), (1.80, 1.32), ..arrow-style)

content((3.55, 3.90), text(size: 7.5pt)[elettrodo \ consumabile], anchor: "center")
line((4.02, 3.55), (4.92, 2.48), ..arrow-style)

content((3.30, 2.88), text(size: 7.5pt)[flusso \ fuso], anchor: "center")
line((3.55, 2.60), (4.22, 1.88), ..arrow-style)

content((4.30, 2.32), text(size: 7.5pt)[arco], anchor: "center")
line((4.42, 2.18), (4.84, 1.62), ..arrow-style)

content((6.30, 4.30), text(size: 7.5pt)[tubo di \ contatto], anchor: "center")
line((5.78, 4.30), (5.30, 4.30), ..arrow-style)

content((6.35, 3.35), text(size: 7.5pt)[bagno di \ fusione], anchor: "center")
line((5.98, 3.05), (5.42, 1.45), ..arrow-style)

content((6.70, 2.65), text(size: 7.5pt)[flusso], anchor: "center")
line((6.70, 2.48), (6.70, 2.18), ..arrow-style)

content((9.00, 4.85), text(size: 7.5pt)[flusso di \ alimentazione], anchor: "center")
line((8.75, 4.50), (8.18, 4.10), ..arrow-style)

content((8.95, 2.45), text(size: 7.5pt)[metallo \ base], anchor: "center")
line((8.70, 2.15), (8.22, 1.32), ..arrow-style)
})
