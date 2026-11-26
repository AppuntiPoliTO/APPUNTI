// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.98cm, {
  import draw: *

  // Proiezione 3D ortografica-obliqua fedele a De Paulis-Manfredi (ECM12-4.pdf)
  // +x = lungo asse 2 (verso destra-alto leggero)
  // +y = perpendicolare ad asse 2 nel piano orizzontale (verso alto-sinistra)
  // +z = verticale verso l'alto
  let ang_b = 27deg
  let cb = calc.cos(ang_b)
  let sb = calc.sin(ang_b)

  let px_x = 0.98
  let px_y = 0.14
  let py_x = -0.46
  let py_y = 0.56
  let pz_x = 0.0
  let pz_y = 1.00

  let P3(x, y, z) = (
    x * px_x + y * py_x + z * pz_x,
    x * px_y + y * py_y + z * pz_y,
  )

  let e1 = (cb, sb, 0.0)
  let n1 = (-sb, cb, 0.0)
  let e2 = (1.0, 0.0, 0.0)
  let n2 = (0.0, 1.0, 0.0)

  let vadd(a, b) = (a.at(0) + b.at(0), a.at(1) + b.at(1), a.at(2) + b.at(2))
  let vscale(a, s) = (a.at(0) * s, a.at(1) * s, a.at(2) * s)
  let P(v) = P3(v.at(0), v.at(1), v.at(2))

  // Pill bianco leggero per garantire zero sovrapposizioni tra etichette e linee d'asse
  let lbl(body) = box(fill: white, inset: (x: 1.5pt, y: 1pt), radius: 1pt, body)

  // Semiluce crociera e forcelle: distanza tra i centri dei vincoli = h = 2 * R
  let R = 1.05

  let draw-cyl(c0, c1, u, v, r, cap1: true) = {
    let pts0 = ()
    let pts1 = ()
    for i in range(0, 17) {
      let a = i * 22.5deg
      let off = vadd(vscale(u, r * calc.cos(a)), vscale(v, r * calc.sin(a)))
      pts0.push(P(vadd(c0, off)))
      pts1.push(P(vadd(c1, off)))
    }
    let p0 = P(c0)
    let p1 = P(c1)
    let dx = p1.at(0) - p0.at(0)
    let dy = p1.at(1) - p0.at(1)
    let len = calc.sqrt(dx * dx + dy * dy)
    let nx = -dy / len
    let ny = dx / len
    let imax = 0
    let imin = 0
    let vmax = -999.0
    let vmin = 999.0
    for i in range(0, 16) {
      let d = (pts0.at(i).at(0) - p0.at(0)) * nx + (pts0.at(i).at(1) - p0.at(1)) * ny
      if d > vmax { vmax = d; imax = i }
      if d < vmin { vmin = d; imin = i }
    }
    line(..pts0, close: true, fill: white, stroke: 0.85pt)
    line(pts0.at(imax), pts1.at(imax), pts1.at(imin), pts0.at(imin), close: true, fill: white, stroke: none)
    line(pts0.at(imax), pts1.at(imax), stroke: 0.85pt)
    line(pts0.at(imin), pts1.at(imin), stroke: 0.85pt)
    if cap1 {
      line(..pts1, close: true, fill: white, stroke: 0.85pt)
    }
  }

  let fmark = (end: ">", fill: black, scale: 0.62)
  let rmark = (end: ">", fill: rgb("#c81e1e"), scale: 0.62)
  let dim_mark = (start: ">", end: ">", fill: rgb("#1d4ed8"), scale: 0.52)

  // =========================================================================
  // 1. ASSI GEOMETRICI PRINCIPALI E ANGOLO BETA
  // =========================================================================
  // Asse 1 (tratteggiato, da albero 1 fino a poco oltre il centro crociera)
  line(P(vscale(e1, -5.85)), P(vscale(e1, 1.05)), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(80)))
  // Asse 2 (tratteggiato, da sinistra della crociera fino oltre l'albero 2)
  line(P(vscale(e2, -3.15)), P(vscale(e2, 5.75)), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(80)))

  // Arco angolo beta tra Asse 1 e Asse 2 (ampio e pulito in zona libera)
  let arc_beta_pts = ()
  for i in range(0, 13) {
    let a = i * (ang_b / 12)
    let v = (-1.90 * calc.cos(a), -1.90 * calc.sin(a), 0.0)
    arc_beta_pts.push(P(v))
  }
  line(..arc_beta_pts, stroke: (paint: rgb("#c81e1e"), thickness: 0.85pt), mark: (start: ">", end: ">", fill: rgb("#c81e1e"), scale: 0.45))
  let beta_mid = P((-2.35 * calc.cos(ang_b / 2), -2.35 * calc.sin(ang_b / 2), 0.0))
  content(beta_mid, lbl(text(size: 9pt, fill: rgb("#c81e1e"))[$bold(beta)$]))

  // =========================================================================
  // 2. FORCELLA 1 (orizzontale, centrata a s1 = -3.70 lungo e1)
  // =========================================================================
  let s1 = -3.70
  let c_f1 = vscale(e1, s1)
  let z_th = 0.22
  let r_in = R - 0.11
  let r_out = R + 0.13
  let arm_len = 0.72

  let f1_outer_top = ()
  let f1_outer_bot = ()
  let f1_inner_top = ()
  let f1_inner_bot = ()
  f1_outer_top.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, r_out), (0, 0, z_th / 2))))))
  f1_outer_bot.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, r_out), (0, 0, -z_th / 2))))))
  f1_inner_top.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, r_in), (0, 0, z_th / 2))))))
  f1_inner_bot.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, r_in), (0, 0, -z_th / 2))))))

  for i in range(0, 19) {
    let a = i * 10deg
    let dir = vadd(vscale(n1, calc.cos(a)), vscale(e1, -calc.sin(a)))
    f1_outer_top.push(P(vadd(c_f1, vadd(vscale(dir, r_out), (0, 0, z_th / 2)))))
    f1_outer_bot.push(P(vadd(c_f1, vadd(vscale(dir, r_out), (0, 0, -z_th / 2)))))
    f1_inner_top.push(P(vadd(c_f1, vadd(vscale(dir, r_in), (0, 0, z_th / 2)))))
    f1_inner_bot.push(P(vadd(c_f1, vadd(vscale(dir, r_in), (0, 0, -z_th / 2)))))
  }
  f1_outer_top.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, -r_out), (0, 0, z_th / 2))))))
  f1_outer_bot.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, -r_out), (0, 0, -z_th / 2))))))
  f1_inner_top.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, -r_in), (0, 0, z_th / 2))))))
  f1_inner_bot.push(P(vadd(c_f1, vadd(vscale(e1, arm_len), vadd(vscale(n1, -r_in), (0, 0, -z_th / 2))))))

  line(..f1_outer_top, ..f1_outer_bot.rev(), close: true, fill: white, stroke: 0.85pt)
  line(..f1_outer_top, ..f1_inner_top.rev(), close: true, fill: white, stroke: 0.85pt)
  line(f1_inner_top.last(), f1_outer_top.last(), f1_outer_bot.last(), f1_inner_bot.last(), close: true, fill: white, stroke: 0.85pt)

  let hole1_L = vadd(c_f1, vadd(vscale(e1, arm_len - 0.18), vscale(n1, R)))
  let hole1_R = vadd(c_f1, vadd(vscale(e1, arm_len - 0.18), vscale(n1, -R)))
  let hL_pts = ()
  let hR_pts = ()
  for i in range(0, 13) {
    let a = i * 30deg
    let off = vadd(vscale(e1, 0.08 * calc.cos(a)), (0, 0, 0.08 * calc.sin(a)))
    hL_pts.push(P(vadd(vadd(hole1_L, vscale(n1, -0.05)), off)))
    hR_pts.push(P(vadd(vadd(hole1_R, vscale(n1, -0.11)), off)))
  }
  line(..hL_pts, close: true, fill: white, stroke: 0.7pt)
  line(..hR_pts, close: true, fill: white, stroke: 0.7pt)

  // Linea rossa tratteggiata tra i fori di forcella 1 (parallela a P!)
  line(
    P(vadd(hole1_L, vscale(n1, 0.22))),
    P(vadd(hole1_R, vscale(n1, -0.22))),
    stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt)
  )

  // Albero 1
  let sh1_start = vadd(c_f1, vscale(e1, -r_out + 0.04))
  let sh1_end = vadd(c_f1, vscale(e1, -r_out - 1.20))
  draw-cyl(sh1_start, sh1_end, n1, (0, 0, 1), 0.145, cap1: true)
  content(P(vadd(sh1_end, (0, 0, 0.38))), text(size: 8.5pt)[*1*])

  // Coppia M_1
  let m1_c = vadd(c_f1, vscale(e1, -r_out - 0.56))
  let m1_pts = ()
  for i in range(0, 15) {
    let a = -125deg + i * 16deg
    let off = vadd(vscale(n1, 0.27 * calc.cos(a)), (0, 0, 0.27 * calc.sin(a)))
    m1_pts.push(P(vadd(m1_c, off)))
  }
  line(..m1_pts, stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content(P(vadd(m1_c, (0, 0, -0.48))), text(size: 8.5pt)[$M_1$])

  // Forze F_1 su forcella 1
  let p_f1L = P(vadd(hole1_L, (0, 0, 0.12)))
  let p_f1L_tip = P(vadd(hole1_L, (0, 0, 0.90)))
  line(p_f1L, p_f1L_tip, stroke: 0.95pt, mark: fmark)
  content((p_f1L_tip.at(0) - 0.14, p_f1L_tip.at(1) - 0.04), text(size: 8.5pt)[$F_1$], anchor: "east")

  let p_f1R = P(vadd(hole1_R, (0, 0, -0.12)))
  let p_f1R_tip = P(vadd(hole1_R, (0, 0, -0.90)))
  line(p_f1R, p_f1R_tip, stroke: 0.95pt, mark: fmark)
  content((p_f1R_tip.at(0) + 0.14, p_f1R_tip.at(1) + 0.04), text(size: 8.5pt)[$F_1$], anchor: "west")

  // Quota h sulla forcella 1 (spostata leggermente verso la crociera, con etichetta fuori dall'asse 1!)
  let qf1_L = P(vadd(hole1_L, vscale(e1, 0.30)))
  let qf1_R = P(vadd(hole1_R, vscale(e1, 0.30)))
  line(P(hole1_L), qf1_L, stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line(P(hole1_R), qf1_R, stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line(qf1_L, qf1_R, stroke: (paint: rgb("#1d4ed8"), thickness: 0.72pt), mark: dim_mark)
  // Etichetta h posizionata a 72% verso il braccio destro (ben lontana da asse 1 e da beta!)
  let qf1_lbl = (qf1_L.at(0) * 0.28 + qf1_R.at(0) * 0.72, qf1_L.at(1) * 0.28 + qf1_R.at(1) * 0.72)
  content((qf1_lbl.at(0) + 0.06, qf1_lbl.at(1) + 0.22), lbl(text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$]))

  // =========================================================================
  // 3. CROCIERA CENTRALE (origine (0, 0, 0))
  // =========================================================================
  let r_pin = 0.095
  let b = 0.17
  let pin_L = vscale(n1, R)
  let pin_R = vscale(n1, -R)
  let pin_T = (0.0, 0.0, R)
  let pin_B = (0.0, 0.0, -R)

  draw-cyl((0, 0, 0), pin_L, e1, (0, 0, 1), r_pin, cap1: true)
  draw-cyl((0, 0, 0), pin_B, e1, n1, r_pin, cap1: false)
  let bot_cap = ()
  for i in range(0, 17) {
    let a = i * 22.5deg
    bot_cap.push(P(vadd(pin_B, vadd(vscale(e1, r_pin * calc.cos(a)), vscale(n1, r_pin * calc.sin(a))))))
  }
  line(..bot_cap, close: true, fill: white, stroke: 0.8pt)

  let c_pts(sx, sy, sz) = P(vadd(vscale(e1, sx * b), vadd(vscale(n1, sy * b), (0, 0, sz * b))))
  line(c_pts(-1, -1, 1), c_pts(1, -1, 1), c_pts(1, 1, 1), c_pts(-1, 1, 1), close: true, fill: white, stroke: 0.85pt)
  line(c_pts(-1, -1, -1), c_pts(-1, 1, -1), c_pts(-1, 1, 1), c_pts(-1, -1, 1), close: true, fill: white, stroke: 0.85pt)
  line(c_pts(-1, -1, -1), c_pts(1, -1, -1), c_pts(1, -1, 1), c_pts(-1, -1, 1), close: true, fill: white, stroke: 0.85pt)

  draw-cyl((0, 0, b), pin_T, e1, n1, r_pin, cap1: true)
  draw-cyl(vscale(n1, -b), pin_R, e1, (0, 0, 1), r_pin, cap1: true)

  // Reazioni F_1 sui perni orizzontali della crociera (etichette in spazio completamente libero!)
  let cpL = P(pin_L)
  let cpL_tip = P(vadd(pin_L, (0, 0, -0.82)))
  line(cpL, cpL_tip, stroke: 0.95pt, mark: fmark)
  content((cpL_tip.at(0) - 0.14, cpL_tip.at(1) - 0.02), lbl(text(size: 8.5pt)[$F_1$]), anchor: "east")

  let cpR = P(pin_R)
  let cpR_tip = P(vadd(pin_R, (0, 0, 0.82)))
  line(cpR, cpR_tip, stroke: 0.95pt, mark: fmark)
  content((cpR_tip.at(0) + 0.12, cpR_tip.at(1) + 0.06), lbl(text(size: 8.5pt)[$F_1$]), anchor: "west")

  // Quota verticale h sulla crociera (spostata a qh_x = 1.62 in pieno spazio bianco tra crociera e forcella 2!)
  let qh_x = 1.62
  let qh_T = P(vadd(pin_T, vscale(e2, qh_x)))
  let qh_B = P(vadd(pin_B, vscale(e2, qh_x)))
  line(P(pin_T), qh_T, stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line(P(pin_B), qh_B, stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line(qh_B, qh_T, stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt), mark: dim_mark)
  // Etichetta h ben sopra asse 2 (a 70% dell'altezza, zero sovrapposizioni!)
  let qh_lbl = (qh_B.at(0) * 0.28 + qh_T.at(0) * 0.72, qh_B.at(1) * 0.28 + qh_T.at(1) * 0.72)
  content((qh_lbl.at(0) + 0.14, qh_lbl.at(1)), lbl(text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$]), anchor: "west")

  // === SCOMPOSIZIONE DI P SUL PERNO SUPERIORE (ampia e pulita, zero collisioni!) ===
  let magP = 1.48
  let vP_top = vscale(n1, magP)
  let vF2_top = vscale(n2, magP * cb)
  let vQ_top = vscale(e2, -magP * sb)

  // Linea rossa tratteggiata di P (parallela alla linea rossa sulla forcella 1)
  line(
    P(vadd(pin_T, vscale(n1, -0.32))),
    P(vadd(pin_T, vscale(n1, magP + 0.35))),
    stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt)
  )
  line(P(vadd(pin_T, vF2_top)), P(vadd(pin_T, vP_top)), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(80)))
  line(P(vadd(pin_T, vQ_top)), P(vadd(pin_T, vP_top)), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(80)))
  line(P(pin_T), P(vadd(pin_T, vP_top)), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: rmark)
  line(P(pin_T), P(vadd(pin_T, vF2_top)), stroke: 0.9pt, mark: fmark)
  line(P(pin_T), P(vadd(pin_T, vQ_top)), stroke: 0.9pt, mark: fmark)

  // Arco beta tra F_2 (+n2) e P (+n1) — etichetta ben esterna all'arco tra le punte di P e F_2!
  let arc_top_pts = ()
  for i in range(0, 10) {
    let a = i * (ang_b / 9)
    let r_a = 0.76
    let v = (-r_a * calc.sin(a), r_a * calc.cos(a), 0.0)
    arc_top_pts.push(P(vadd(pin_T, v)))
  }
  line(..arc_top_pts, stroke: (paint: rgb("#c81e1e"), thickness: 0.75pt))
  content(
    P(vadd(pin_T, (-1.16 * calc.sin(ang_b * 0.52), 1.16 * calc.cos(ang_b * 0.52), 0.08))),
    lbl(text(size: 8.2pt, fill: rgb("#c81e1e"))[$bold(beta)$])
  )

  content(P(vadd(pin_T, vadd(vP_top, (-0.20, 0.05, 0.04)))), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "east")
  content(P(vadd(pin_T, vadd(vF2_top, (0.08, 0.14, 0.06)))), text(size: 8.5pt)[$F_2$], anchor: "south-west")
  content(P(vadd(pin_T, vadd(vQ_top, (-0.18, 0.0, -0.02)))), lbl(text(size: 8.5pt)[$Q$]), anchor: "east")

  // === SCOMPOSIZIONE DI P SUL PERNO INFERIORE ===
  let vP_bot = vscale(n1, -magP)
  let vF2_bot = vscale(n2, -magP * cb)
  let vQ_bot = vscale(e2, magP * sb)

  line(P(vadd(pin_B, vF2_bot)), P(vadd(pin_B, vP_bot)), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(80)))
  line(P(vadd(pin_B, vQ_bot)), P(vadd(pin_B, vP_bot)), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(80)))
  line(P(pin_B), P(vadd(pin_B, vP_bot)), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: rmark)
  line(P(pin_B), P(vadd(pin_B, vF2_bot)), stroke: 0.9pt, mark: fmark)
  line(P(pin_B), P(vadd(pin_B, vQ_bot)), stroke: 0.9pt, mark: fmark)

  content(P(vadd(pin_B, vadd(vP_bot, (0.16, -0.06, -0.04)))), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "west")
  content(P(vadd(pin_B, vadd(vF2_bot, (-0.12, -0.10, -0.08)))), text(size: 8.5pt)[$F_2$], anchor: "north-east")
  content(P(vadd(pin_B, vadd(vQ_bot, (0.22, -0.04, 0.04)))), lbl(text(size: 8.5pt)[$Q$]), anchor: "west")

  // =========================================================================
  // 4. FORCELLA 2 (verticale, centrata a s2 = +3.75 lungo e2)
  // =========================================================================
  let s2 = 3.75
  let c_f2 = vscale(e2, s2)
  let y_th = 0.22
  let arm2 = 0.72

  let sh2_start = vadd(c_f2, vscale(e2, r_out - 0.04))
  let sh2_end = vadd(c_f2, vscale(e2, r_out + 1.25))
  draw-cyl(sh2_start, sh2_end, n2, (0, 0, 1), 0.145, cap1: true)
  content(P(vadd(sh2_end, (0, 0, 0.38))), text(size: 8.5pt)[*2*])

  let m2_c = vadd(c_f2, vscale(e2, r_out + 0.58))
  let m2_pts = ()
  for i in range(0, 15) {
    let a = 125deg - i * 16deg
    let off = vadd(vscale(n2, 0.27 * calc.cos(a)), (0, 0, 0.27 * calc.sin(a)))
    m2_pts.push(P(vadd(m2_c, off)))
  }
  line(..m2_pts, stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content(P(vadd(m2_c, (0, 0, -0.48))), text(size: 8.5pt)[$M_2$])

  let f2_out_F = ()
  let f2_out_B = ()
  let f2_in_F = ()
  let f2_in_B = ()
  f2_out_F.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, -y_th / 2), (0, 0, r_out))))))
  f2_out_B.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, y_th / 2), (0, 0, r_out))))))
  f2_in_F.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, -y_th / 2), (0, 0, r_in))))))
  f2_in_B.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, y_th / 2), (0, 0, r_in))))))

  for i in range(0, 19) {
    let a = i * 10deg
    let dir = (calc.sin(a), 0.0, calc.cos(a))
    f2_out_F.push(P(vadd(c_f2, vadd(vscale(dir, r_out), vscale(n2, -y_th / 2)))))
    f2_out_B.push(P(vadd(c_f2, vadd(vscale(dir, r_out), vscale(n2, y_th / 2)))))
    f2_in_F.push(P(vadd(c_f2, vadd(vscale(dir, r_in), vscale(n2, -y_th / 2)))))
    f2_in_B.push(P(vadd(c_f2, vadd(vscale(dir, r_in), vscale(n2, y_th / 2)))))
  }
  f2_out_F.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, -y_th / 2), (0, 0, -r_out))))))
  f2_out_B.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, y_th / 2), (0, 0, -r_out))))))
  f2_in_F.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, -y_th / 2), (0, 0, -r_in))))))
  f2_in_B.push(P(vadd(c_f2, vadd(vscale(e2, -arm2), vadd(vscale(n2, y_th / 2), (0, 0, -r_in))))))

  line(..f2_out_F, ..f2_out_B.rev(), close: true, fill: white, stroke: 0.85pt)
  line(..f2_in_F, ..f2_in_B.rev(), close: true, fill: white, stroke: 0.85pt)
  line(..f2_out_F, ..f2_in_F.rev(), close: true, fill: white, stroke: 0.85pt)
  line(f2_out_F.first(), f2_out_B.first(), f2_in_B.first(), f2_in_F.first(), close: true, fill: white, stroke: 0.85pt)
  line(f2_out_F.last(), f2_out_B.last(), f2_in_B.last(), f2_in_F.last(), close: true, fill: white, stroke: 0.85pt)

  let hole2_T = vadd(c_f2, vadd(vscale(e2, -arm2 + 0.22), (0, 0, R)))
  let hole2_B = vadd(c_f2, vadd(vscale(e2, -arm2 + 0.22), (0, 0, -R)))
  let h2T_pts = ()
  let h2B_pts = ()
  for i in range(0, 13) {
    let a = i * 30deg
    let off = vadd(vscale(e2, 0.08 * calc.cos(a)), vscale(n2, 0.08 * calc.sin(a)))
    h2T_pts.push(P(vadd(vadd(hole2_T, (0, 0, 0.13)), off)))
    h2B_pts.push(P(vadd(vadd(hole2_B, (0, 0, 0.11)), off)))
  }
  line(..h2T_pts, close: true, fill: white, stroke: 0.7pt)
  line(..h2B_pts, close: true, fill: white, stroke: 0.7pt)

  // Forze F_2 e Q su forcella 2
  let f2_T_start = P(vadd(hole2_T, (0, 0, 0.13)))
  let f2_T_tip = P(vadd(hole2_T, vadd(vscale(n2, 0.95), (0, 0, 0.13))))
  line(f2_T_start, f2_T_tip, stroke: 0.95pt, mark: fmark)
  content((f2_T_tip.at(0) - 0.10, f2_T_tip.at(1) + 0.04), text(size: 8.5pt)[$F_2$], anchor: "east")

  let q_T_start = P(vadd(hole2_T, vscale(e2, -0.22)))
  let q_T_tip = P(vadd(hole2_T, vscale(e2, -0.95)))
  line(q_T_start, q_T_tip, stroke: 0.95pt, mark: fmark)
  content((q_T_tip.at(0) - 0.10, q_T_tip.at(1)), text(size: 8.5pt)[$Q$], anchor: "east")

  let f2_B_start = P(vadd(hole2_B, (0, 0, -0.13)))
  let f2_B_tip = P(vadd(hole2_B, vadd(vscale(n2, -0.95), (0, 0, -0.13))))
  line(f2_B_start, f2_B_tip, stroke: 0.95pt, mark: fmark)
  content((f2_B_tip.at(0) + 0.10, f2_B_tip.at(1) - 0.04), text(size: 8.5pt)[$F_2$], anchor: "west")

  // Q sul braccio inferiore: punta verso destra, etichetta dentro la cavita' libera sopra la freccia!
  let q_B_start = P(vadd(hole2_B, vscale(e2, -0.22)))
  let q_B_tip = P(vadd(hole2_B, vscale(e2, 0.62)))
  line(q_B_start, q_B_tip, stroke: 0.95pt, mark: fmark)
  content((q_B_tip.at(0) + 0.04, q_B_tip.at(1) + 0.34), lbl(text(size: 8.5pt)[$Q$]), anchor: "south")

  // Posizione di riferimento (centrata bene sotto la crociera, zero collisioni!)
  content((0.55, -2.55), text(size: 8.5pt)[$theta_1 = 0$])
})
