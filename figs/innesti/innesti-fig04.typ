// Figura estratta da _parts/innesti/p1.typ (riga 839) con LocalTypst
#import "../comuni/_helpers.typ": fig-safe, img-flag
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ========================
  // PANNELLO SINISTRO: SEZIONE B-B
  // Centro: (-3.6, 0.0)
  // ========================

  // Corona esterna del tamburo sezionata (tra R = 1.98 e R = 2.35)
  circle((-3.6, 0.0), radius: 2.35, fill: luma(220), stroke: none)
  circle((-3.6, 0.0), radius: 1.98, fill: white, stroke: none)

  // Flangia esterna e circonferenza asse bulloni
  circle((-3.6, 0.0), radius: 2.80, stroke: 1.1pt)
  circle((-3.6, 0.0), radius: 2.35, stroke: 1.1pt)
  circle((-3.6, 0.0), radius: 2.57, stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // 8 fori bulloni sulla flangia esterna (R = 2.57, ogni 45°)
  // 0°: (-1.03, 0.0)
  circle((-1.03, 0.0), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.03, 0.0), radius: 0.11, stroke: 0.7pt)
  // 45°: (-1.78, 1.82)
  circle((-1.78, 1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.78, 1.82), radius: 0.11, stroke: 0.7pt)
  // 90°: (-3.60, 2.57)
  circle((-3.60, 2.57), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-3.60, 2.57), radius: 0.11, stroke: 0.7pt)
  // 135°: (-5.42, 1.82)
  circle((-5.42, 1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-5.42, 1.82), radius: 0.11, stroke: 0.7pt)
  // 180°: (-6.17, 0.0)
  circle((-6.17, 0.0), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-6.17, 0.0), radius: 0.11, stroke: 0.7pt)
  // 225°: (-5.42, -1.82)
  circle((-5.42, -1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-5.42, -1.82), radius: 0.11, stroke: 0.7pt)
  // 270°: (-3.60, -2.57)
  circle((-3.60, -2.57), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-3.60, -2.57), radius: 0.11, stroke: 0.7pt)
  // 315°: (-1.78, -1.82)
  circle((-1.78, -1.82), radius: 0.17, fill: white, stroke: 0.85pt)
  circle((-1.78, -1.82), radius: 0.11, stroke: 0.7pt)

  // Assi radiali a 45° sui fori bulloni
  line((-2.12, 1.48), (-1.42, 2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-5.08, 1.48), (-5.78, 2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-5.08, -1.48), (-5.78, -2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-2.12, -1.48), (-1.42, -2.18), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Tratteggio a 45° sulla corona esterna sezionata (R da 1.98 a 2.35)
  line((-5.82, 0.58), (-4.98, 1.42), stroke: 0.45pt)
  line((-5.92, 0.18), (-5.56, 0.54), stroke: 0.45pt)
  line((-4.86, 1.54), (-4.24, 2.16), stroke: 0.45pt)
  line((-5.94, -0.20), (-5.58, 0.16), stroke: 0.45pt)
  line((-4.34, 1.76), (-3.80, 2.30), stroke: 0.45pt)
  line((-5.86, -0.58), (-5.50, -0.22), stroke: 0.45pt)
  line((-3.40, 1.98), (-3.06, 2.32), stroke: 0.45pt)
  line((-5.72, -0.96), (-5.38, -0.62), stroke: 0.45pt)
  line((-3.00, 1.90), (-2.68, 2.22), stroke: 0.45pt)
  line((-5.50, -1.36), (-5.12, -0.98), stroke: 0.45pt)
  line((-2.62, 1.72), (-2.32, 2.02), stroke: 0.45pt)
  line((-5.20, -1.72), (-4.75, -1.27), stroke: 0.45pt)
  line((-2.28, 1.45), (-1.98, 1.75), stroke: 0.45pt)
  line((-4.80, -2.02), (-4.25, -1.47), stroke: 0.45pt)
  line((-1.98, 1.10), (-1.68, 1.40), stroke: 0.45pt)
  line((-4.30, -2.22), (-3.82, -1.74), stroke: 0.45pt)
  line((-1.75, 0.65), (-1.42, 0.98), stroke: 0.45pt)
  line((-3.40, -2.32), (-2.95, -1.87), stroke: 0.45pt)
  line((-1.64, 0.15), (-1.28, 0.51), stroke: 0.45pt)
  line((-2.85, -2.18), (-1.45, -0.78), stroke: 0.45pt)
  line((-2.25, -1.88), (-1.30, -0.93), stroke: 0.45pt)

  // Circonferenze del vano dischi (R = 1.98 esterna, R = 1.91 profilo dischi, R = 1.52 interna)
  circle((-3.6, 0.0), radius: 1.98, stroke: 1pt)
  circle((-3.6, 0.0), radius: 1.91, stroke: 0.8pt)
  circle((-3.6, 0.0), radius: 1.52, stroke: 0.9pt)

  // 6 cave rettangolari nel tamburo con denti dei dischi esterni (radiali, centrati a 90°, 270°, 30°, 150°, 210°, 330°)
  // 90° (alto, da R=1.91 a R=2.15, mezza larghezza w=0.19)
  line((-3.79, 1.91), (-3.79, 2.15), (-3.41, 2.15), (-3.41, 1.91), close: true, fill: white, stroke: 0.95pt)
  line((-3.79, 2.08), (-3.41, 2.08), stroke: 0.75pt)
  // 270° (basso)
  line((-3.79, -1.91), (-3.79, -2.15), (-3.41, -2.15), (-3.41, -1.91), close: true, fill: white, stroke: 0.95pt)
  line((-3.79, -2.08), (-3.41, -2.08), stroke: 0.75pt)
  // 30° (alto-destra: u=(0.866, 0.5), v=(-0.5, 0.866))
  line((-1.85, 1.12), (-1.64, 1.24), (-1.83, 0.91), (-2.04, 0.79), close: true, fill: white, stroke: 0.95pt)
  line((-1.70, 1.21), (-1.89, 0.88), stroke: 0.75pt)
  // 150° (alto-sinistra: u=(-0.866, 0.5), v=(-0.5, -0.866))
  line((-5.35, 1.12), (-5.56, 1.24), (-5.37, 0.91), (-5.16, 0.79), close: true, fill: white, stroke: 0.95pt)
  line((-5.50, 1.21), (-5.31, 0.88), stroke: 0.75pt)
  // 210° (basso-sinistra: u=(-0.866, -0.5))
  line((-5.35, -1.12), (-5.56, -1.24), (-5.37, -0.91), (-5.16, -0.79), close: true, fill: white, stroke: 0.95pt)
  line((-5.50, -1.21), (-5.31, -0.88), stroke: 0.75pt)
  // 330° (basso-destra: u=(0.866, -0.5))
  line((-1.85, -1.12), (-1.64, -1.24), (-1.83, -0.91), (-2.04, -0.79), close: true, fill: white, stroke: 0.95pt)
  line((-1.70, -1.21), (-1.89, -0.88), stroke: 0.75pt)

  // Doppie linee perfettamente parallele ai raggi (0°, 60°, 120°, 180°, 240°, 300°, tra R=1.52 e R=1.91, offset ±0.035)
  // 0°: u=(1, 0), v=(0, 1)
  line((-2.080, 0.035), (-1.690, 0.035), stroke: 0.8pt)
  line((-2.080, -0.035), (-1.690, -0.035), stroke: 0.8pt)
  // 180°: u=(-1, 0), v=(0, -1)
  line((-5.120, 0.035), (-5.510, 0.035), stroke: 0.8pt)
  line((-5.120, -0.035), (-5.510, -0.035), stroke: 0.8pt)
  // 60°: u=(0.5, 0.866), v=(-0.866, 0.5)
  line((-2.870, 1.334), (-2.675, 1.672), stroke: 0.8pt)
  line((-2.810, 1.299), (-2.615, 1.637), stroke: 0.8pt)
  // 120°: u=(-0.5, 0.866), v=(-0.866, -0.5)
  line((-4.330, 1.334), (-4.525, 1.672), stroke: 0.8pt)
  line((-4.390, 1.299), (-4.585, 1.637), stroke: 0.8pt)
  // 240°: u=(-0.5, -0.866), v=(0.866, -0.5)
  line((-4.330, -1.334), (-4.525, -1.672), stroke: 0.8pt)
  line((-4.390, -1.299), (-4.585, -1.637), stroke: 0.8pt)
  // 300°: u=(0.5, -0.866), v=(0.866, 0.5)
  line((-2.870, -1.334), (-2.675, -1.672), stroke: 0.8pt)
  line((-2.810, -1.299), (-2.615, -1.637), stroke: 0.8pt)

  // Mozzo interno scanalato: 15 denti con fianchi rettilinei rigorosamente paralleli al raggio medio di ciascun dente (larghezza costante 2w=0.22, da R=1.38 a R=1.52)
  line(
    // Dente 10°: u=(0.9848, 0.1736), v=(-0.1736, 0.9848)
    (-2.222, 0.131), (-2.084, 0.156), (-2.122, 0.372), (-2.260, 0.348),
    // Dente 30°: u=(0.8660, 0.5000), v=(-0.5000, 0.8660)
    (-2.350, 0.595), (-2.229, 0.665), (-2.339, 0.855), (-2.460, 0.785),
    // Dente 50°: u=(0.6428, 0.7660), v=(-0.7660, 0.6428)
    (-2.629, 0.986), (-2.539, 1.094), (-2.707, 1.235), (-2.797, 1.128),
    // Dente 70°: u=(0.3420, 0.9397), v=(-0.9397, 0.3420)
    (-3.025, 1.259), (-2.977, 1.391), (-3.183, 1.466), (-3.231, 1.334),
    // Passaggio cava superiore 90° (a R=1.38)
    (-3.470, 1.380), (-3.730, 1.380),
    // Dente 110°: u=(-0.3420, 0.9397), v=(-0.9397, -0.3420)
    (-3.969, 1.334), (-4.017, 1.466), (-4.223, 1.391), (-4.175, 1.259),
    // Dente 130°: u=(-0.6428, 0.7660), v=(-0.7660, -0.6428)
    (-4.403, 1.128), (-4.493, 1.235), (-4.661, 1.094), (-4.571, 0.986),
    // Dente 150°: u=(-0.8660, 0.5000), v=(-0.5000, -0.8660)
    (-4.740, 0.785), (-4.861, 0.855), (-4.971, 0.665), (-4.850, 0.595),
    // Dente 170°: u=(-0.9848, 0.1736), v=(-0.1736, -0.9848)
    (-4.940, 0.348), (-5.078, 0.372), (-5.116, 0.156), (-4.978, 0.131),
    // Dente 190°: u=(-0.9848, -0.1736), v=(0.1736, -0.9848)
    (-4.978, -0.131), (-5.116, -0.156), (-5.078, -0.372), (-4.940, -0.348),
    // Passaggio cava 210° (a R=1.38)
    (-4.860, -0.578), (-4.730, -0.803),
    // Dente 230°: u=(-0.6428, -0.7660), v=(0.7660, -0.6428)
    (-4.571, -0.986), (-4.661, -1.094), (-4.493, -1.235), (-4.403, -1.128),
    // Dente 250°: u=(-0.3420, -0.9397), v=(0.9397, -0.3420)
    (-4.175, -1.259), (-4.223, -1.391), (-4.017, -1.466), (-3.969, -1.334),
    // Dente 270°: u=(0.0, -1.0), v=(1.0, 0.0)
    (-3.710, -1.380), (-3.710, -1.520), (-3.490, -1.520), (-3.490, -1.380),
    // Dente 290°: u=(0.3420, -0.9397), v=(0.9397, 0.3420)
    (-3.231, -1.334), (-3.183, -1.466), (-2.977, -1.391), (-3.025, -1.259),
    // Dente 310°: u=(0.6428, -0.7660), v=(0.7660, 0.6428)
    (-2.797, -1.128), (-2.707, -1.235), (-2.539, -1.094), (-2.629, -0.986),
    // Passaggio cava 330° (a R=1.38)
    (-2.470, -0.803), (-2.340, -0.578),
    // Dente 350°: u=(0.9848, -0.1736), v=(0.1736, 0.9848)
    (-2.260, -0.348), (-2.122, -0.372), (-2.084, -0.156), (-2.222, -0.131),
    close: true, fill: luma(220), stroke: 0.95pt
  )

  // Tratteggio sul mozzo interno sezionato
  line((-4.85, 0.25), (-4.05, 1.05), stroke: 0.45pt)
  line((-4.92, -0.15), (-4.32, 0.45), stroke: 0.45pt)
  line((-4.25, 0.52), (-3.75, 1.02), stroke: 0.45pt)
  line((-4.42, -0.85), (-3.92, -0.35), stroke: 0.45pt)
  line((-3.45, 0.65), (-3.02, 1.08), stroke: 0.45pt)
  line((-4.15, -1.15), (-3.35, -0.35), stroke: 0.45pt)
  line((-3.80, -1.28), (-2.85, -0.33), stroke: 0.45pt)
  line((-2.88, 0.05), (-2.38, 0.55), stroke: 0.45pt)
  line((-3.35, -1.32), (-2.75, -0.72), stroke: 0.45pt)
  line((-2.88, -0.35), (-2.28, 0.25), stroke: 0.45pt)

  // 3 sedi radiali profonde per le chiavette/leve (a 90°, 210°, 330°, fianchi perfettamente paralleli ai rispettivi raggi da R=0.95 a R=1.38, mezza larghezza w=0.13, tassello grigio nella parte esterna da R=1.16 a R=1.38)
  // 90°: u=(0, 1), v=(-1, 0)
  line((-3.730, 0.950), (-3.730, 1.380), (-3.470, 1.380), (-3.470, 0.950), close: true, fill: white, stroke: 0.95pt)
  line((-3.730, 1.160), (-3.730, 1.380), (-3.470, 1.380), (-3.470, 1.160), close: true, fill: luma(165), stroke: 0.95pt)
  // 210°: u=(-0.8660, -0.5000), v=(0.5000, -0.8660)
  line((-4.358, -0.588), (-4.730, -0.803), (-4.860, -0.577), (-4.488, -0.362), close: true, fill: white, stroke: 0.95pt)
  line((-4.540, -0.693), (-4.730, -0.803), (-4.860, -0.577), (-4.670, -0.467), close: true, fill: luma(165), stroke: 0.95pt)
  // 330°: u=(0.8660, -0.5000), v=(0.5000, 0.8660)
  line((-2.712, -0.362), (-2.340, -0.577), (-2.470, -0.803), (-2.842, -0.588), close: true, fill: white, stroke: 0.95pt)
  line((-2.530, -0.467), (-2.340, -0.577), (-2.470, -0.803), (-2.660, -0.693), close: true, fill: luma(165), stroke: 0.95pt)

  // Foro centrale dell'albero (R = 0.72) con sede per linguetta a 30°:
  // Fianchi rigorosamente paralleli al raggio di 30° u=(0.8660, 0.5000), v=(-0.5000, 0.8660), mezza larghezza w=0.13
  // Intersezione col cerchio R=0.72 (a r_base = sqrt(0.72^2 - 0.13^2) = 0.7082, angoli 30° ± 10.4° = 19.6° e 40.4°):
  // P1(19.6°) = (-2.922, 0.242), P4(40.4°) = (-3.052, 0.467)
  // Fondo cava ortogonale al raggio 30° a r_fondo = 0.86:
  // P2 = (-2.790, 0.317), P3 = (-2.920, 0.543)
  circle((-3.6, 0.0), radius: 0.72, fill: white, stroke: none)
  line((-2.922, 0.242), (-2.790, 0.317), (-2.920, 0.543), (-3.052, 0.467), close: true, fill: white, stroke: none)
  arc((-3.6, 0.0), start: 40.4deg, stop: 379.6deg, radius: 0.72, anchor: "origin", stroke: 1.1pt)
  line((-3.052, 0.467), (-2.920, 0.543), (-2.790, 0.317), (-2.922, 0.242), stroke: 1.1pt)

  // Assi di simmetria e linea di sezione A-A
  line((-6.75, 0.0), (-0.45, 0.0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-3.6, -3.65), (-3.6, 3.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Frecce di sezione A-A (in alto e in basso sul pannello sinistro)
  line((-3.6, 3.35), (-3.6, 3.72), stroke: 0.9pt)
  line((-3.6, 3.65), (-3.10, 3.65), mark: (end: ">"), stroke: 0.85pt)
  content((-3.72, 3.65), text(size: 9pt)[$A$], anchor: "east")

  line((-3.6, -3.35), (-3.6, -3.72), stroke: 0.9pt)
  line((-3.6, -3.65), (-3.10, -3.65), mark: (end: ">"), stroke: 0.85pt)
  content((-3.72, -3.65), text(size: 9pt)[$A$], anchor: "east")

  // Titolo B-B
  content((-5.75, 2.95), text(size: 9.5pt)[$B - B$], anchor: "south")


  // ========================
  // PANNELLO DESTRO: SEZIONE A-A
  // Asse orizzontale y = 0.0, da x = 0.8 a x = 5.8
  // ========================

  // --- META SUPERIORE (y > 0) ---

  // Mozzo interno sezionato superiore (con spalla sinistra porta-perno x = 1.40..1.54)
  line((1.40, 0.72), (5.55, 0.72), (5.55, 1.12), (4.65, 1.12), (4.50, 0.95), (1.54, 0.95), (1.54, 1.42), (1.40, 1.42), close: true, fill: luma(220), stroke: 1pt)

  // Tratteggio sezione mozzo superiore
  line((1.50, 0.72), (1.73, 0.95), stroke: 0.45pt)
  line((1.80, 0.72), (2.03, 0.95), stroke: 0.45pt)
  line((2.10, 0.72), (2.33, 0.95), stroke: 0.45pt)
  line((2.40, 0.72), (2.63, 0.95), stroke: 0.45pt)
  line((2.70, 0.72), (2.93, 0.95), stroke: 0.45pt)
  line((3.00, 0.72), (3.23, 0.95), stroke: 0.45pt)
  line((3.30, 0.72), (3.53, 0.95), stroke: 0.45pt)
  line((3.60, 0.72), (3.83, 0.95), stroke: 0.45pt)
  line((3.90, 0.72), (4.13, 0.95), stroke: 0.45pt)
  line((4.20, 0.72), (4.43, 0.95), stroke: 0.45pt)
  line((4.50, 0.72), (4.90, 1.12), stroke: 0.45pt)
  line((4.80, 0.72), (5.20, 1.12), stroke: 0.45pt)
  line((5.10, 0.72), (5.50, 1.12), stroke: 0.45pt)

  // Linee di fondo della cava leva e scanalatura superiore (x da 1.54 a 3.62)
  line((1.54, 1.38), (3.62, 1.38), stroke: 0.85pt)
  line((1.54, 1.52), (1.88, 1.52), stroke: 0.85pt)
  line((3.52, 1.38), (3.62, 1.38), (3.62, 1.18), stroke: 0.9pt)

  // Carcassa / flangia esterna superiore (da x = 1.50 a x = 3.25)
  line((1.50, 2.80), (1.68, 2.80), (1.68, 2.35), (3.25, 2.35), (3.25, 2.15), (2.12, 2.15), (2.12, 1.98), (1.80, 1.98), (1.80, 1.86), (1.50, 1.86), close: true, fill: luma(220), stroke: 1pt)
  // Foro bullone flangia sinistra in alto
  line((1.50, 2.46), (1.68, 2.46), (1.68, 2.68), (1.50, 2.68), close: true, fill: white, stroke: 0.9pt)
  line((1.15, 2.57), (1.92, 2.57), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Tratteggio carcassa superiore
  line((1.52, 1.92), (1.78, 2.18), stroke: 0.45pt)
  line((1.62, 2.22), (1.75, 2.35), stroke: 0.45pt)
  line((1.88, 1.98), (2.25, 2.35), stroke: 0.45pt)
  line((2.28, 2.15), (2.48, 2.35), stroke: 0.45pt)
  line((2.55, 2.15), (2.75, 2.35), stroke: 0.45pt)
  line((2.82, 2.15), (3.02, 2.35), stroke: 0.45pt)

  // Pacco dischi frizione superiore (x da 2.12 a 2.98, corpo tra y = 1.52 e y = 1.98, denti fino a 1.38 e 2.15)
  line((2.12, 1.38), (2.98, 1.38), (2.98, 2.15), (2.12, 2.15), close: true, fill: luma(195), stroke: 0.95pt)
  line((2.12, 1.98), (2.98, 1.98), stroke: 0.75pt)
  line((2.12, 1.52), (2.98, 1.52), stroke: 0.75pt)
  // Lamelle verticali dei dischi frizione
  line((2.20, 1.38), (2.20, 2.15), stroke: 0.6pt)
  line((2.28, 1.38), (2.28, 2.15), stroke: 0.6pt)
  line((2.36, 1.38), (2.36, 2.15), stroke: 0.6pt)
  line((2.44, 1.38), (2.44, 2.15), stroke: 0.6pt)
  line((2.52, 1.38), (2.52, 2.15), stroke: 0.6pt)
  line((2.60, 1.38), (2.60, 2.15), stroke: 0.6pt)
  line((2.68, 1.38), (2.68, 2.15), stroke: 0.6pt)
  line((2.76, 1.38), (2.76, 2.15), stroke: 0.6pt)
  line((2.84, 1.38), (2.84, 2.15), stroke: 0.6pt)
  line((2.92, 1.38), (2.92, 2.15), stroke: 0.6pt)

  // Anello spingidisco sinistro (x da 1.88 a 2.12, y da 1.38 a 1.98)
  line((1.88, 1.38), (2.12, 1.38), (2.12, 1.98), (1.88, 1.98), close: true, fill: luma(225), stroke: 0.95pt)
  line((1.88, 1.48), (2.12, 1.72), stroke: 0.45pt)
  line((1.88, 1.72), (2.12, 1.96), stroke: 0.45pt)

  // Piattello/ghiera di chiusura destra del pacco dischi con bulloni (x da 2.98 a 3.52)
  line((2.98, 1.38), (3.52, 1.38), (3.52, 1.85), (3.25, 1.85), (3.25, 2.15), (2.98, 2.15), close: true, fill: luma(225), stroke: 0.95pt)
  // Bullone superiore esterno (y = 2.24)
  line((2.80, 2.19), (3.35, 2.19), (3.35, 2.29), (2.80, 2.29), close: true, fill: white, stroke: 0.75pt)
  line((3.25, 2.15), (3.36, 2.15), (3.36, 2.33), (3.25, 2.33), close: true, fill: white, stroke: 0.8pt)
  // Bullone intermedio di registro (y = 1.65)
  line((3.02, 1.58), (3.68, 1.58), (3.68, 1.72), (3.02, 1.72), close: true, fill: white, stroke: 0.8pt)
  line((3.52, 1.52), (3.68, 1.52), (3.68, 1.78), (3.52, 1.78), close: true, fill: white, stroke: 0.85pt)
  line((2.92, 1.65), (3.78, 1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Leva di comando (bilanciere) alloggiata nella cava superiore
  line(
    (1.56, 1.02), (1.58, 1.25), (1.74, 1.82), (1.86, 1.78), (1.88, 1.66),
    (1.78, 1.32), (1.84, 1.22), (2.85, 1.18), (4.35, 1.18), (4.65, 1.12),
    (4.45, 0.98), (4.15, 0.95), (1.66, 0.95),
    close: true, fill: white, stroke: 1.05pt
  )
  // Perno di fulcro della leva
  circle((1.67, 1.08), radius: 0.08, fill: white, stroke: 0.9pt)
  // Nervatura longitudinale della leva
  line((1.78, 1.04), (4.18, 1.04), (4.52, 1.12), stroke: 0.75pt)

  // Manicotto scorrevole d'innesto superiore (con rampa conica interna a sinistra, x da 3.78 a 4.98)
  line(
    (3.78, 1.36), (3.78, 1.60), (4.05, 1.60), (4.05, 1.36),
    (4.70, 1.36), (4.70, 1.60), (4.98, 1.60), (4.98, 1.12),
    (4.12, 1.12), (3.92, 1.22),
    close: true, fill: luma(220), stroke: 1pt
  )
  // Tratteggio del manicotto scorrevole superiore
  line((3.80, 1.32), (4.05, 1.57), stroke: 0.45pt)
  line((3.96, 1.20), (4.12, 1.36), stroke: 0.45pt)
  line((4.14, 1.12), (4.38, 1.36), stroke: 0.45pt)
  line((4.40, 1.12), (4.64, 1.36), stroke: 0.45pt)
  line((4.66, 1.12), (4.98, 1.44), stroke: 0.45pt)
  line((4.70, 1.42), (4.88, 1.60), stroke: 0.45pt)


  // --- META INFERIORE (y < 0) ---

  // Mozzo interno inferiore sezionato (a 270° non c'è cava leva, quindi pieno fino a y = -1.38 / -1.52)
  line((1.40, -0.72), (5.55, -0.72), (5.55, -1.12), (3.62, -1.12), (3.62, -1.38), (1.40, -1.38), close: true, fill: luma(220), stroke: 1pt)
  // Dente scanalato inferiore visibile da x = 1.54 a x = 3.52 (tra y = -1.38 e y = -1.52)
  line((1.54, -1.38), (1.54, -1.52), (1.88, -1.52), stroke: 0.85pt)
  // Tratteggio sezione mozzo inferiore
  line((1.45, -1.38), (2.11, -0.72), stroke: 0.45pt)
  line((1.75, -1.38), (2.41, -0.72), stroke: 0.45pt)
  line((2.05, -1.38), (2.71, -0.72), stroke: 0.45pt)
  line((2.35, -1.38), (3.01, -0.72), stroke: 0.45pt)
  line((2.65, -1.38), (3.31, -0.72), stroke: 0.45pt)
  line((2.95, -1.38), (3.61, -0.72), stroke: 0.45pt)
  line((3.25, -1.38), (3.91, -0.72), stroke: 0.45pt)
  line((3.81, -1.12), (4.21, -0.72), stroke: 0.45pt)
  line((4.11, -1.12), (4.51, -0.72), stroke: 0.45pt)
  line((4.41, -1.12), (4.81, -0.72), stroke: 0.45pt)
  line((4.71, -1.12), (5.11, -0.72), stroke: 0.45pt)
  line((5.01, -1.12), (5.41, -0.72), stroke: 0.45pt)

  // Carcassa / flangia esterna inferiore
  line((1.50, -2.80), (1.68, -2.80), (1.68, -2.35), (3.25, -2.35), (3.25, -2.15), (2.12, -2.15), (2.12, -1.98), (1.80, -1.98), (1.80, -1.86), (1.50, -1.86), close: true, fill: luma(220), stroke: 1pt)
  // Foro bullone flangia sinistra in basso
  line((1.50, -2.46), (1.68, -2.46), (1.68, -2.68), (1.50, -2.68), close: true, fill: white, stroke: 0.9pt)
  line((1.15, -2.57), (1.92, -2.57), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  // Tratteggio carcassa inferiore
  line((1.52, -2.18), (1.78, -1.92), stroke: 0.45pt)
  line((1.62, -2.35), (1.75, -2.22), stroke: 0.45pt)
  line((1.88, -2.35), (2.25, -1.98), stroke: 0.45pt)
  line((2.28, -2.35), (2.48, -2.15), stroke: 0.45pt)
  line((2.55, -2.35), (2.75, -2.15), stroke: 0.45pt)
  line((2.82, -2.35), (3.02, -2.15), stroke: 0.45pt)

  // Pacco dischi frizione inferiore (x da 2.12 a 2.98, y da -1.38 a -2.15)
  line((2.12, -1.38), (2.98, -1.38), (2.98, -2.15), (2.12, -2.15), close: true, fill: luma(195), stroke: 0.95pt)
  line((2.12, -1.98), (2.98, -1.98), stroke: 0.75pt)
  line((2.12, -1.52), (2.98, -1.52), stroke: 0.75pt)
  line((2.20, -1.38), (2.20, -2.15), stroke: 0.6pt)
  line((2.28, -1.38), (2.28, -2.15), stroke: 0.6pt)
  line((2.36, -1.38), (2.36, -2.15), stroke: 0.6pt)
  line((2.44, -1.38), (2.44, -2.15), stroke: 0.6pt)
  line((2.52, -1.38), (2.52, -2.15), stroke: 0.6pt)
  line((2.60, -1.38), (2.60, -2.15), stroke: 0.6pt)
  line((2.68, -1.38), (2.68, -2.15), stroke: 0.6pt)
  line((2.76, -1.38), (2.76, -2.15), stroke: 0.6pt)
  line((2.84, -1.38), (2.84, -2.15), stroke: 0.6pt)
  line((2.92, -1.38), (2.92, -2.15), stroke: 0.6pt)

  // Anello spingidisco inferiore sinistro
  line((1.88, -1.38), (2.12, -1.38), (2.12, -1.98), (1.88, -1.98), close: true, fill: luma(225), stroke: 0.95pt)
  line((1.88, -1.72), (2.12, -1.48), stroke: 0.45pt)
  line((1.88, -1.96), (2.12, -1.72), stroke: 0.45pt)

  // Piattello/ghiera di chiusura inferiore destra con bulloni
  line((2.98, -1.38), (3.52, -1.38), (3.52, -1.85), (3.25, -1.85), (3.25, -2.15), (2.98, -2.15), close: true, fill: luma(225), stroke: 0.95pt)
  // Bullone inferiore esterno
  line((2.80, -2.19), (3.35, -2.19), (3.35, -2.29), (2.80, -2.29), close: true, fill: white, stroke: 0.75pt)
  line((3.25, -2.15), (3.36, -2.15), (3.36, -2.33), (3.25, -2.33), close: true, fill: white, stroke: 0.8pt)
  // Bullone inferiore intermedio
  line((3.02, -1.58), (3.68, -1.58), (3.68, -1.72), (3.02, -1.72), close: true, fill: white, stroke: 0.8pt)
  line((3.52, -1.52), (3.68, -1.52), (3.68, -1.78), (3.52, -1.78), close: true, fill: white, stroke: 0.85pt)
  line((2.92, -1.65), (3.78, -1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Manicotto scorrevole d'innesto inferiore (con invito conico a sinistra)
  line(
    (3.78, -1.36), (3.78, -1.60), (4.05, -1.60), (4.05, -1.36),
    (4.70, -1.36), (4.70, -1.60), (4.98, -1.60), (4.98, -1.12),
    (4.12, -1.12), (3.92, -1.22),
    close: true, fill: luma(220), stroke: 1pt
  )
  line((3.80, -1.57), (4.05, -1.32), stroke: 0.45pt)
  line((3.96, -1.36), (4.12, -1.20), stroke: 0.45pt)
  line((4.14, -1.36), (4.38, -1.12), stroke: 0.45pt)
  line((4.40, -1.36), (4.64, -1.12), stroke: 0.45pt)
  line((4.66, -1.44), (4.98, -1.12), stroke: 0.45pt)
  line((4.70, -1.60), (4.88, -1.42), stroke: 0.45pt)

  // Posizione traslata del manicotto (in tratteggio fantasma a destra, sopra e sotto)
  line((4.98, 1.60), (5.18, 1.60), (5.18, 1.12), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.05, 1.60), (4.26, 1.60), (4.26, 1.36), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.98, -1.60), (5.18, -1.60), (5.18, -1.12), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((4.05, -1.60), (4.26, -1.60), (4.26, -1.36), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Contorno del foro centrale e cava per linguetta vista in sezione longitudinale (quote y allineate a P3.y=0.543 e P1.y=0.242)
  line((1.40, 0.72), (1.40, -0.72), stroke: 1pt)
  line((5.55, 0.72), (5.55, -0.72), stroke: 1pt)
  line((1.40, 0.543), (5.55, 0.543), stroke: 0.85pt)
  line((1.40, 0.242), (5.55, 0.242), stroke: 0.75pt)
  line((1.40, 1.86), (1.40, 1.42), stroke: 0.9pt)
  line((1.40, -1.86), (1.40, -1.38), stroke: 0.9pt)

  // Profilo fantasma del coperchio/accoppiamento sinistro a tratto-punto
  line((1.05, 2.80), (1.50, 2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.35, 2.80), (1.35, -2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((1.05, -2.80), (1.50, -2.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Asse principale orizzontale della sezione A-A
  line((0.95, 0.0), (5.85, 0.0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Linea di sezione verticale B-B (x = 2.52)
  line((2.52, -3.65), (2.52, 3.65), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Frecce di sezione B-B (verso sinistra)
  line((2.52, 3.35), (2.52, 3.72), stroke: 0.9pt)
  line((2.52, 3.65), (2.02, 3.65), mark: (end: ">"), stroke: 0.85pt)
  content((2.64, 3.65), text(size: 9pt)[$B$], anchor: "west")

  line((2.52, -3.35), (2.52, -3.72), stroke: 0.9pt)
  line((2.52, -3.65), (2.02, -3.65), mark: (end: ">"), stroke: 0.85pt)
  content((2.64, -3.65), text(size: 9pt)[$B$], anchor: "west")

  // Titolo A-A
  content((3.55, 2.95), text(size: 9.5pt)[$A - A$], anchor: "south")

  // Indicatore di movimento bidirezionale con ellisse rossa tratteggiata (sopra il manicotto scorrevole)
  line((4.10, 1.92), (4.92, 1.92), mark: (start: ">", end: ">"), stroke: 0.85pt)
  circle((4.51, 1.92), radius: 0.05, fill: black, stroke: none)
  circle((4.51, 1.92), radius: (0.62, 0.28), stroke: (paint: red, thickness: 1.3pt, dash: "dashed"))
})
