// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Disegno creato con Studio di LocalTypst
#canvas(length: 1cm, {
  import draw: *

  // --- Base plate (disk) ---
  merge-path({
    arc((2.13, -0.76), start: 0deg, stop: -180deg, radius: (2.17, 0.88))
    line((-2.21, -0.76), (-2.21, -0.40), (2.13, -0.40), (2.13, -0.76))
  }, close: true, fill: gradient.linear((rgb("#989586"), 0%), (rgb("#B7B4A1"), 16%), (rgb("#C4C0AC"), 48%), (rgb("#B2AE9C"), 80%), (rgb("#918E7F"), 100%), angle: 0deg), stroke: none)
  merge-path({
    line((2.13, -0.40), (2.13, -0.76))
    arc((2.13, -0.76), start: 0deg, stop: -180deg, radius: (2.17, 0.88))
    line((-2.21, -0.76), (-2.21, -0.40))
  }, stroke: (paint: rgb("#96907A"), thickness: 0.35pt, cap: "round", join: "round"))
  circle((-0.04, -0.40), radius: (2.17, 0.88), fill: rgb("#EFEAD2"), stroke: (paint: rgb("#ABA48C"), thickness: 0.32pt))
  arc((-2.21, -0.40), start: 180deg, stop: 148deg, radius: (2.17, 0.88), stroke: (paint: rgb("#C4BEA4"), thickness: 0.45pt))
  arc((-2.16, -0.40), start: 180deg, stop: 152deg, radius: (2.12, 0.855), stroke: (paint: rgb("#A6A088"), thickness: 0.25pt))

  // --- Rear curved slot (visible through blue yoke opening) ---
  merge-path({
    catmull((-0.90, 0.31), (-0.62, 0.38), (-0.32, 0.43), (-0.06, 0.45))
    line((-0.06, 0.45), (-0.06, 0.36))
    catmull((-0.06, 0.36), (-0.32, 0.34), (-0.62, 0.29), (-0.90, 0.23))
    line((-0.90, 0.23), (-0.90, 0.31))
  }, close: true, fill: gradient.linear((rgb("#959079"), 0%), (rgb("#ABA58C"), 50%), (rgb("#9F9981"), 100%), angle: 0deg), stroke: none)
  catmull((-0.90, 0.31), (-0.62, 0.38), (-0.32, 0.43), (-0.06, 0.45), stroke: (paint: rgb("#86816C"), thickness: 0.28pt, cap: "round"))
  catmull((-0.90, 0.23), (-0.62, 0.29), (-0.32, 0.34), (-0.06, 0.36), stroke: (paint: rgb("#7E7964"), thickness: 0.26pt, cap: "round"))

  // --- Front curved slot ---
  merge-path({
    catmull((-1.21, -0.78), (-0.68, -0.96), (-0.05, -1.03), (0.67, -0.95), (1.17, -0.75), (1.31, -0.58))
    bezier((1.31, -0.58), (1.12, -0.54), (1.32, -0.53), (1.14, -0.50))
    catmull((1.12, -0.54), (0.63, -0.84), (-0.05, -0.93), (-0.65, -0.86), (-1.03, -0.72))
    bezier((-1.03, -0.72), (-1.21, -0.78), (-1.14, -0.68), (-1.25, -0.73))
  }, close: true, fill: rgb("#C6C1AA"), stroke: none)
  merge-path({
    catmull((-1.03, -0.72), (-0.65, -0.86), (-0.05, -0.93), (0.63, -0.84), (1.12, -0.54))
    line((1.12, -0.54), (1.12, -0.62))
    catmull((1.12, -0.62), (0.63, -0.90), (-0.05, -0.98), (-0.65, -0.91), (-1.03, -0.78))
    line((-1.03, -0.78), (-1.03, -0.72))
  }, close: true, fill: gradient.linear((rgb("#8D8873"), 0%), (rgb("#A8A38B"), 40%), (rgb("#B1AC94"), 75%), (rgb("#97927B"), 100%), angle: 0deg), stroke: none)
  merge-path({
    bezier((-1.03, -0.72), (-1.21, -0.78), (-1.14, -0.68), (-1.25, -0.73))
    line((-1.21, -0.78), (-1.18, -0.81))
    bezier((-1.18, -0.81), (-1.03, -0.78), (-1.16, -0.74), (-1.09, -0.75))
    line((-1.03, -0.78), (-1.03, -0.72))
  }, close: true, fill: gradient.linear((rgb("#9C9781"), 0%), (rgb("#B7B29A"), 60%), (rgb("#A39E86"), 100%), angle: 0deg), stroke: none)
  merge-path({
    catmull((-1.18, -0.81), (-1.03, -0.78), (-0.65, -0.91), (-0.05, -0.98), (0.63, -0.90), (1.12, -0.62))
    line((1.12, -0.62), (1.31, -0.58))
    catmull((1.31, -0.58), (1.17, -0.75), (0.67, -0.95), (-0.05, -1.03), (-0.68, -0.96), (-1.21, -0.78))
    line((-1.21, -0.78), (-1.18, -0.81))
  }, close: true, fill: gradient.linear((rgb("#948F79"), 0%), (rgb("#A5A089"), 35%), (rgb("#9C9781"), 68%), (rgb("#B9B49B"), 90%), (rgb("#C9C4AC"), 100%), angle: 0deg), stroke: none)
  line((-1.03, -0.72), (-1.03, -0.78), stroke: (paint: rgb("#7E7964"), thickness: 0.24pt, cap: "round"))
  catmull((-1.03, -0.78), (-0.65, -0.91), (-0.05, -0.98), (0.63, -0.90), (1.12, -0.62), stroke: (paint: rgb("#827D68"), thickness: 0.22pt, cap: "round"))
  merge-path({
    catmull((-1.21, -0.78), (-0.68, -0.96), (-0.05, -1.03), (0.67, -0.95), (1.17, -0.75), (1.31, -0.58))
    bezier((1.31, -0.58), (1.12, -0.54), (1.32, -0.53), (1.14, -0.50))
    catmull((1.12, -0.54), (0.63, -0.84), (-0.05, -0.93), (-0.65, -0.86), (-1.03, -0.72))
    bezier((-1.03, -0.72), (-1.21, -0.78), (-1.14, -0.68), (-1.25, -0.73))
  }, close: true, stroke: (paint: rgb("#86816C"), thickness: 0.34pt, cap: "round", join: "round"))

  // --- Left splined shaft ---
  merge-path({
    bezier((-2.41, 0.00), (-2.43, 0.63), (-2.50, 0.20), (-2.50, 0.45))
    line((-2.43, 0.63), (-2.23, 0.63))
    bezier((-2.23, 0.63), (-2.21, 0.00), (-2.31, 0.45), (-2.31, 0.20))
  }, close: true, fill: gradient.linear((rgb("#596978"), 0%), (rgb("#5A6A79"), 8%), (rgb("#6B7E90"), 20%), (rgb("#869DB4"), 35%), (rgb("#A2BDD8"), 48%), (rgb("#CBE8FF"), 64%), (rgb("#BEDCF9"), 78%), (rgb("#A7C3E0"), 90%), (rgb("#97B0CA"), 100%), angle: -90deg), stroke: none)
  line((-2.43, 0.63), (-2.23, 0.63), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  line((-2.41, 0.00), (-2.21, 0.00), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  merge-path({
    bezier((-2.23, -0.09), (-2.25, 0.72), (-2.34, 0.16), (-2.34, 0.50))
    line((-2.25, 0.72), (-2.12, 0.72))
    bezier((-2.12, 0.72), (-2.11, -0.09), (-2.21, 0.50), (-2.21, 0.16))
  }, close: true, fill: gradient.linear((rgb("#596978"), 0%), (rgb("#5A6A79"), 8%), (rgb("#6B7E90"), 20%), (rgb("#869DB4"), 35%), (rgb("#A2BDD8"), 48%), (rgb("#CBE8FF"), 64%), (rgb("#BEDCF9"), 78%), (rgb("#A7C3E0"), 90%), (rgb("#97B0CA"), 100%), angle: -90deg), stroke: none)
  line((-2.25, 0.72), (-2.12, 0.72), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  line((-2.23, -0.09), (-2.11, -0.09), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  bezier((-2.25, 0.72), (-2.25, -0.08), (-2.33, 0.50), (-2.33, 0.16), stroke: (paint: rgb("#3D4B5A"), thickness: 0.30pt, cap: "round"))

  merge-path({
    bezier((-3.38, 0.00), (-3.40, 0.63), (-3.62, 0.06), (-3.62, 0.58))
    line((-3.40, 0.63), (-2.43, 0.63))
    bezier((-2.43, 0.63), (-2.41, 0.00), (-2.50, 0.45), (-2.50, 0.20))
  }, close: true, fill: gradient.linear((rgb("#596978"), 0%), (rgb("#5A6A79"), 8%), (rgb("#6B7E90"), 20%), (rgb("#869DB4"), 35%), (rgb("#A2BDD8"), 48%), (rgb("#CBE8FF"), 64%), (rgb("#BCDAF7"), 78%), (rgb("#A7C3E0"), 90%), (rgb("#97B0CA"), 100%), angle: -90deg), stroke: none)
  merge-path({
    bezier((-3.38, 0.00), (-3.40, 0.63), (-3.62, 0.06), (-3.62, 0.58))
    line((-3.40, 0.63), (-3.37, 0.62))
    bezier((-3.37, 0.62), (-3.38, 0.00), (-3.50, 0.45), (-3.50, 0.18))
  }, close: true, fill: gradient.linear((rgb("#65788A"), 0%), (rgb("#65788A").transparentize(100%), 100%), angle: 0deg), stroke: none)
  bezier((-3.38, 0.00), (-3.40, 0.63), (-3.62, 0.06), (-3.62, 0.58), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  bezier((-3.48, 0.09), (-3.48, 0.54), (-3.57, 0.17), (-3.57, 0.46), stroke: (paint: rgb("#4C5D6E"), thickness: 0.24pt, cap: "round"))
  bezier((-2.43, 0.63), (-2.41, 0.00), (-2.50, 0.45), (-2.50, 0.20), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))

  line((-2.48, -0.06), (-3.37, -0.06), (-3.35, -0.07), (-2.46, -0.07), close: true, fill: rgb("#617182"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.43, 0.01), (-2.48, -0.06), (-2.46, -0.07), (-2.42, -0.00), close: true, fill: rgb("#576675"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.43, 0.01), (-3.41, 0.01), (-3.37, -0.06), (-2.48, -0.06), close: true, fill: rgb("#9FB9D2"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.48, 0.70), (-3.37, 0.70), (-3.40, 0.66), (-2.50, 0.66), close: true, fill: rgb("#A0BBD7"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.43, 0.63), (-2.48, 0.70), (-2.50, 0.66), (-2.45, 0.60), close: true, fill: rgb("#798EA3"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-3.37, 0.70), (-3.41, 0.63), (-3.43, 0.60), (-3.40, 0.66), close: true, fill: rgb("#8298AF"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.45, 0.60), (-3.43, 0.60), (-3.40, 0.66), (-2.50, 0.66), close: true, fill: rgb("#718498"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.46, 0.09), (-3.45, 0.09), (-3.42, 0.04), (-2.51, 0.04), close: true, fill: rgb("#95AFC8"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.51, 0.04), (-3.42, 0.04), (-3.40, -0.02), (-2.50, -0.02), close: true, fill: rgb("#6B7E90"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.46, 0.09), (-2.51, 0.04), (-2.50, -0.02), (-2.45, 0.04), close: true, fill: rgb("#5B6B7B"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-3.42, 0.04), (-3.45, 0.09), (-3.43, 0.04), (-3.40, -0.02), close: true, fill: rgb("#617282"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.47, 0.48), (-3.46, 0.48), (-3.44, 0.52), (-2.52, 0.52), close: true, fill: rgb("#4D5A67"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.51, 0.60), (-3.42, 0.60), (-3.44, 0.52), (-2.52, 0.52), close: true, fill: rgb("#BCDAF8"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.46, 0.55), (-2.51, 0.60), (-2.52, 0.52), (-2.47, 0.48), close: true, fill: rgb("#849AB1"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-3.42, 0.60), (-3.45, 0.55), (-3.46, 0.48), (-3.44, 0.52), close: true, fill: rgb("#8BA3BB"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.48, 0.24), (-3.47, 0.24), (-3.45, 0.22), (-2.53, 0.22), close: true, fill: rgb("#8197AD"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.53, 0.22), (-3.45, 0.22), (-3.44, 0.12), (-2.52, 0.12), close: true, fill: rgb("#92ABC4"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.48, 0.24), (-2.53, 0.22), (-2.52, 0.12), (-2.47, 0.15), close: true, fill: rgb("#6F8295"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-3.45, 0.22), (-3.47, 0.24), (-3.46, 0.15), (-3.44, 0.12), close: true, fill: rgb("#778CA0"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.48, 0.32), (-3.47, 0.32), (-3.45, 0.33), (-2.54, 0.33), close: true, fill: rgb("#4A5764"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.53, 0.43), (-3.45, 0.43), (-3.45, 0.33), (-2.54, 0.33), close: true, fill: rgb("#CBE8FF"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-2.48, 0.41), (-2.53, 0.43), (-2.54, 0.33), (-2.48, 0.32), close: true, fill: rgb("#8096AC"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))
  line((-3.45, 0.43), (-3.47, 0.41), (-3.47, 0.32), (-3.45, 0.33), close: true, fill: rgb("#889FB6"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, join: "round"))

  // --- Left beige bracket ---
  merge-path({
    line((-2.12, -0.59), (-1.42, -0.59), (-1.45, 0.08))
    catmull((-1.45, 0.08), (-1.45, 0.31), (-1.44, 0.65), (-1.42, 0.89), (-1.38, 0.96))
    line((-1.38, 0.96), (-2.06, 0.96))
    catmull((-2.06, 0.96), (-2.12, 0.89), (-2.15, 0.65), (-2.17, 0.31), (-2.16, 0.08))
    line((-2.16, 0.08), (-2.12, -0.59))
  }, close: true, fill: gradient.linear((rgb("#B5B19D"), 0%), (rgb("#B5B19D"), 42%), (rgb("#D4CFB8"), 47%), (rgb("#E2DCC4"), 54%), (rgb("#EFE9CF"), 63%), (rgb("#FBF5DB"), 75%), (rgb("#EBE6CC"), 90%), (rgb("#CAC5AF"), 100%), angle: -90deg), stroke: none)
  merge-path({
    line((-1.42, -0.59), (-1.31, -0.21))
    catmull((-1.31, -0.21), (-1.32, 0.53), (-1.34, 0.80), (-1.38, 0.96))
    catmull((-1.38, 0.96), (-1.42, 0.89), (-1.44, 0.65), (-1.45, 0.31), (-1.45, 0.08))
    line((-1.45, 0.08), (-1.42, -0.59))
  }, close: true, fill: rgb("#7B786B"), stroke: none)
  line((-2.16, 0.08), (-1.45, 0.08), stroke: (paint: rgb("#948E78"), thickness: 0.28pt, cap: "round"))
  line((-2.12, -0.59), (-1.42, -0.59), (-1.45, 0.08), stroke: (paint: rgb("#86816C"), thickness: 0.34pt, cap: "round", join: "round"))
  line((-2.12, -0.59), (-2.16, 0.08), stroke: (paint: rgb("#928C76"), thickness: 0.30pt, cap: "round", join: "round"))
  line((-1.42, -0.59), (-1.31, -0.21), stroke: (paint: rgb("#706C5E"), thickness: 0.30pt, cap: "round"))
  catmull((-1.31, -0.21), (-1.32, 0.53), (-1.34, 0.80), (-1.38, 0.96), stroke: (paint: rgb("#86816C"), thickness: 0.28pt, cap: "round"))
  catmull((-1.38, 0.96), (-1.42, 0.89), (-1.44, 0.65), (-1.45, 0.31), (-1.45, 0.08), stroke: (paint: rgb("#928C76"), thickness: 0.30pt, cap: "round", join: "round"))
  line((-2.06, 0.96), (-1.38, 0.96), stroke: (paint: rgb("#ABA48C"), thickness: 0.24pt, cap: "round"))
  catmull((-2.06, 0.96), (-2.12, 0.89), (-2.15, 0.65), (-2.17, 0.31), (-2.16, 0.08), stroke: (paint: rgb("#ABA48C"), thickness: 0.30pt, cap: "round", join: "round"))

  // --- Blue yoke (left fork) ---
  merge-path({
    catmull((-1.44, -0.17), (-1.48, 0.02), (-1.49, 0.31), (-1.48, 0.61), (-1.44, 0.81))
    line((-1.44, 0.81), (-0.93, 0.81))
    catmull((-0.93, 0.81), (-0.95, 0.61), (-0.96, 0.31), (-0.94, -0.09), (-0.92, -0.17))
  }, close: true, fill: gradient.linear((rgb("#5B6B7A"), 0%), (rgb("#5D6D7C"), 10%), (rgb("#6E8194"), 22%), (rgb("#859CB3"), 36%), (rgb("#9CB7D1"), 50%), (rgb("#C2DEFB"), 65%), (rgb("#C8E5FF"), 74%), (rgb("#ADCAE7"), 86%), (rgb("#8FA7C0"), 100%), angle: -90deg), stroke: none)
  line((-1.44, 0.81), (-0.93, 0.81), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  line((-1.44, -0.17), (-0.92, -0.17), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))
  merge-path({
    line((-0.95, 0.56), (-0.74, 0.56), (-0.74, 0.14), (-0.95, 0.14))
    catmull((-0.95, 0.14), (-0.96, 0.31), (-0.95, 0.56))
  }, close: true, fill: gradient.linear((rgb("#7E97B2"), 0%), (rgb("#99B5D2"), 55%), (rgb("#748CA4"), 100%), angle: -90deg), stroke: none)
  line((-0.95, 0.56), (-0.74, 0.56), (-0.74, 0.14), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, cap: "round", join: "round"))
  catmull((-0.95, 0.56), (-0.96, 0.31), (-0.95, 0.14), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round"))

  // Lower blue arm: clean floor + front sloped bevel + underside
  merge-path({
    line((-0.95, 0.14), (-0.74, 0.14), (-0.63, 0.01), (0.04, 0.01))
    bezier((0.04, 0.01), (0.04, -0.02), (0.12, 0.01), (0.12, -0.02))
    line((0.04, -0.02), (-0.78, -0.02), (-0.95, 0.14))
  }, close: true, fill: rgb("#B8DAFA"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, cap: "round", join: "round"))
  merge-path({
    line((-0.95, 0.14), (-0.78, -0.02), (0.14, -0.01))
    bezier((0.14, -0.01), (0.13, -0.10), (0.18, -0.03), (0.18, -0.08))
    line((0.13, -0.10), (-0.78, -0.10), (-0.95, 0.14))
  }, close: true, fill: rgb("#93B2D1"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt, cap: "round", join: "round"))
  merge-path({
    line((-0.92, -0.17), (0.06, -0.17))
    bezier((0.06, -0.17), (0.13, -0.10), (0.14, -0.17), (0.15, -0.13))
    line((0.13, -0.10), (-0.78, -0.10), (-0.95, 0.14))
    catmull((-0.95, 0.14), (-0.94, -0.05), (-0.92, -0.17))
  }, close: true, fill: gradient.linear((rgb("#6A7D91"), 0%), (rgb("#74889D"), 78%), (rgb("#627386"), 100%), angle: 0deg), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round", join: "round"))

  // --- Green yoke (rear arm, behind spider) ---
  merge-path({
    bezier((0.08, 0.60), (0.24, 0.79), (0.08, 0.71), (0.15, 0.79))
    line((0.24, 0.79), (0.64, 0.80), (0.64, 0.73), (0.24, 0.72))
    bezier((0.24, 0.72), (0.08, 0.56), (0.17, 0.72), (0.10, 0.65))
  }, close: true, fill: gradient.linear((rgb("#7E9E7C"), 0%), (rgb("#A3CCA0"), 45%), (rgb("#B2DBAF"), 100%), angle: 0deg), stroke: (paint: rgb("#455844"), thickness: 0.28pt, cap: "round", join: "round"))
  merge-path({
    bezier((0.08, 0.56), (0.24, 0.72), (0.10, 0.65), (0.17, 0.72))
    line((0.24, 0.72), (0.64, 0.73), (0.64, 0.34), (0.20, 0.34))
    bezier((0.20, 0.34), (0.08, 0.56), (0.12, 0.42), (0.08, 0.49))
  }, close: true, fill: gradient.linear((rgb("#6C8A6A"), 0%), (rgb("#83A680"), 55%), (rgb("#607A5E"), 100%), angle: 0deg), stroke: (paint: rgb("#455844"), thickness: 0.26pt, cap: "round", join: "round"))
  line((0.15, 0.47), (0.64, 0.47), stroke: (paint: rgb("#556E53"), thickness: 0.22pt, cap: "round"))

  // --- Pink spider (central 3D cross journal) ---
  // Bottom vertical journal pin (into lower blue yoke arm)
  merge-path({
    line((-0.09, 0.00), (-0.09, 0.20), (0.07, 0.20), (0.07, 0.00))
  }, close: true, fill: gradient.linear((rgb("#8A4967"), 0%), (rgb("#D97BA5"), 45%), (rgb("#8C4A68"), 100%), angle: 0deg), stroke: (paint: rgb("#6B2E4C"), thickness: 0.26pt, join: "round"))

  // Top vertical journal pin (into upper blue yoke arm)
  merge-path({
    line((-0.09, 0.56), (-0.09, 0.70), (0.07, 0.70), (0.07, 0.56))
  }, close: true, fill: gradient.linear((rgb("#8A4967"), 0%), (rgb("#D97BA5"), 45%), (rgb("#8C4A68"), 100%), angle: 0deg), stroke: (paint: rgb("#6B2E4C"), thickness: 0.26pt, join: "round"))

  // Central cross-block: left shaded facet
  merge-path({
    line((-0.24, 0.22), (-0.24, 0.44), (-0.15, 0.49), (-0.15, 0.18))
  }, close: true, fill: gradient.linear((rgb("#8B3E63"), 0%), (rgb("#AB527C"), 100%), angle: -90deg), stroke: (paint: rgb("#6B2E4C"), thickness: 0.26pt, join: "round"))

  // Central cross-block: front-right main facet
  merge-path({
    line((-0.15, 0.18), (-0.15, 0.49), (0.14, 0.49), (0.18, 0.44), (0.18, 0.19))
  }, close: true, fill: gradient.linear((rgb("#B55582"), 0%), (rgb("#DF82AC"), 38%), (rgb("#F0A8C7"), 55%), (rgb("#C96592"), 80%), (rgb("#9A476D"), 100%), angle: 0deg), stroke: (paint: rgb("#6B2E4C"), thickness: 0.26pt, join: "round"))

  // Upper cylindrical boss of spider (tucked cleanly under upper blue arm)
  merge-path({
    line((-0.15, 0.48), (-0.15, 0.60))
    bezier((-0.15, 0.60), (-0.09, 0.625), (-0.15, 0.615), (-0.12, 0.625))
    line((-0.09, 0.625), (0.08, 0.625))
    bezier((0.08, 0.625), (0.14, 0.60), (0.11, 0.625), (0.14, 0.615))
    line((0.14, 0.60), (0.14, 0.48))
    bezier((0.14, 0.48), (-0.15, 0.48), (0.07, 0.435), (-0.08, 0.435))
  }, close: true, fill: gradient.linear((rgb("#984A6F"), 0%), (rgb("#DC7BA6"), 28%), (rgb("#F4B2CF"), 46%), (rgb("#CF6C98"), 70%), (rgb("#8F4567"), 100%), angle: 0deg), stroke: (paint: rgb("#6B2E4C"), thickness: 0.26pt, cap: "round", join: "round"))

  // --- Upper blue yoke arm ---
  merge-path({
    line((-0.95, 0.56), (-0.01, 0.60))
    bezier((-0.01, 0.60), (0.14, 0.69), (0.08, 0.60), (0.14, 0.64))
    line((0.14, 0.69), (0.14, 0.76))
    bezier((0.14, 0.76), (-0.01, 0.68), (0.14, 0.72), (0.08, 0.68))
    line((-0.01, 0.68), (-0.95, 0.65))
  }, close: true, fill: gradient.linear((rgb("#6E8296"), 0%), (rgb("#74899E"), 75%), (rgb("#607284"), 100%), angle: 0deg), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round", join: "round"))
  merge-path({
    line((-0.95, 0.65), (-0.01, 0.68))
    bezier((-0.01, 0.68), (-0.01, 0.825), (0.19, 0.68), (0.19, 0.825))
    line((-0.01, 0.825), (-0.93, 0.81))
    catmull((-0.93, 0.81), (-0.95, 0.73), (-0.95, 0.65))
  }, close: true, fill: gradient.linear((rgb("#A9C6E2"), 0%), (rgb("#BDD9F6"), 55%), (rgb("#CBE8FF"), 100%), angle: -90deg), stroke: (paint: rgb("#3D4B5A"), thickness: 0.28pt, cap: "round", join: "round"))
  merge-path({
    line((-0.95, 0.65), (-0.01, 0.68), (-0.01, 0.74), (-0.94, 0.72))
  }, close: true, fill: gradient.linear((rgb("#C8E6FF"), 0%), (rgb("#B2D0EE").transparentize(100%), 100%), angle: 0deg), stroke: none)
  line((-0.95, 0.65), (-0.01, 0.68), stroke: (paint: rgb("#4C5F73"), thickness: 0.26pt, cap: "round"))
  circle((-0.01, 0.76), radius: (0.135, 0.052), fill: rgb("#9AB7D4"), stroke: (paint: rgb("#3D4B5A"), thickness: 0.26pt))
  circle((-0.01, 0.76), radius: (0.095, 0.036), fill: rgb("#CD6D99"), stroke: (paint: rgb("#6B2E4C"), thickness: 0.28pt))

  // --- Green yoke (right fork) ---
  merge-path({
    catmull((0.63, -0.21), (0.63, 0.00), (0.64, 0.31), (0.64, 0.61), (0.63, 0.83))
    line((0.63, 0.83), (1.03, 0.83))
    catmull((1.03, 0.83), (1.05, 0.61), (1.05, 0.31), (1.04, 0.00), (1.02, -0.21))
  }, close: true, fill: gradient.linear((rgb("#5A7359"), 0%), (rgb("#5B745A"), 10%), (rgb("#6D8A6C"), 22%), (rgb("#84A882"), 36%), (rgb("#9BC49A"), 50%), (rgb("#C3EFC1"), 65%), (rgb("#C8F6C6"), 74%), (rgb("#ACD9AA"), 86%), (rgb("#8DB48C"), 100%), angle: -90deg), stroke: none)
  line((0.63, 0.83), (1.03, 0.83), stroke: (paint: rgb("#455844"), thickness: 0.28pt, cap: "round"))
  line((0.63, -0.21), (1.02, -0.21), stroke: (paint: rgb("#455844"), thickness: 0.28pt, cap: "round"))
  catmull((0.63, 0.83), (0.64, 0.61), (0.64, 0.32), stroke: (paint: rgb("#455844"), thickness: 0.28pt, cap: "round"))

  merge-path({
    bezier((-0.26, 0.14), (-0.01, 0.36), (-0.26, 0.27), (-0.15, 0.36))
    line((-0.01, 0.36), (0.64, 0.36), (0.64, 0.29), (-0.01, 0.29))
    bezier((-0.01, 0.29), (-0.25, 0.08), (-0.14, 0.29), (-0.25, 0.20))
  }, close: true, fill: gradient.linear((rgb("#7E9E7C"), 0%), (rgb("#A3CCA0"), 40%), (rgb("#AFD8AC"), 100%), angle: 0deg), stroke: (paint: rgb("#455844"), thickness: 0.26pt, cap: "round", join: "round"))
  merge-path({
    catmull((0.63, -0.21), (0.30, -0.21), (-0.01, -0.17))
    bezier((-0.01, -0.17), (-0.01, 0.29), (-0.34, -0.16), (-0.34, 0.28))
    line((-0.01, 0.29), (0.64, 0.29))
    catmull((0.64, 0.29), (0.64, 0.04), (0.63, -0.21))
  }, close: true, fill: gradient.linear((rgb("#5A7359"), 0%), (rgb("#6D8A6C"), 25%), (rgb("#84A882"), 50%), (rgb("#9BC49A"), 78%), (rgb("#A4CEA2"), 100%), angle: -90deg), stroke: none)
  merge-path({
    catmull((0.63, -0.21), (0.30, -0.21), (-0.01, -0.17))
    bezier((-0.01, -0.17), (-0.01, 0.29), (-0.34, -0.16), (-0.34, 0.28))
    line((-0.01, 0.29), (0.64, 0.29))
  }, stroke: (paint: rgb("#455844"), thickness: 0.30pt, cap: "round", join: "round"))
  circle((-0.01, 0.09), radius: (0.14, 0.125), fill: rgb("#769774"), stroke: (paint: rgb("#455844"), thickness: 0.26pt))
  circle((-0.01, 0.09), radius: (0.105, 0.095), fill: rgb("#CD6D99"), stroke: (paint: rgb("#6B2E4C"), thickness: 0.30pt))

  // --- Right grey bracket ---
  line((1.01, -0.74), (1.03, -0.74), (1.03, 0.93), (1.01, 0.93), close: true, fill: rgb("#898C92"), stroke: (paint: rgb("#5A5E64"), thickness: 0.25pt, join: "round"))
  merge-path({
    line((1.03, -0.01), (1.98, -0.01), (1.98, -0.59), (1.46, -0.59))
    bezier((1.46, -0.59), (1.16, -0.73), (1.36, -0.60), (1.26, -0.71))
    line((1.16, -0.73), (1.03, -0.73), (1.03, -0.01))
  }, close: true, fill: rgb("#94969A"), stroke: (paint: rgb("#5A5E64"), thickness: 0.32pt, cap: "round", join: "round"))
  merge-path({
    catmull((1.03, -0.01), (1.04, 0.29), (1.04, 0.63), (1.04, 0.87), (1.03, 0.93))
    line((1.03, 0.93), (1.96, 0.93))
    catmull((1.96, 0.93), (1.98, 0.85), (1.99, 0.51), (1.98, 0.15), (1.98, -0.01))
  }, close: true, fill: gradient.linear((rgb("#B2B4B8"), 0%), (rgb("#CCCDD1"), 8%), (rgb("#E0E2E6"), 20%), (rgb("#F3F5F8"), 34%), (rgb("#FFFFFF"), 52%), (rgb("#F2F4F7"), 68%), (rgb("#E2E4E8"), 82%), (rgb("#CED0D4"), 93%), (rgb("#BDC0C4"), 100%), angle: -90deg), stroke: none)
  line((1.03, -0.01), (1.98, -0.01), stroke: (paint: rgb("#6E7278"), thickness: 0.28pt, cap: "round"))
  catmull((1.03, 0.93), (1.04, 0.87), (1.04, 0.63), (1.04, 0.29), (1.03, -0.01), stroke: (paint: rgb("#6A6E75"), thickness: 0.30pt, cap: "round"))
  catmull((1.96, 0.93), (1.98, 0.85), (1.99, 0.51), (1.98, 0.15), (1.98, -0.01), stroke: (paint: rgb("#6A6E75"), thickness: 0.30pt, cap: "round"))

  // --- Right splined shaft ---
  merge-path({
    bezier((1.98, -0.14), (1.98, 0.72), (2.01, 0.12), (2.01, 0.46))
    line((1.98, 0.72), (2.07, 0.72))
    bezier((2.07, 0.72), (2.06, -0.14), (2.11, 0.46), (2.11, 0.12))
  }, close: true, fill: gradient.linear((rgb("#587057"), 0%), (rgb("#597158"), 8%), (rgb("#6A8769"), 20%), (rgb("#85A984"), 35%), (rgb("#A2CCA0"), 48%), (rgb("#CCFACB"), 64%), (rgb("#BDECBC"), 78%), (rgb("#A5D2A3"), 90%), (rgb("#95BD93"), 100%), angle: -90deg), stroke: none)
  line((1.98, 0.72), (2.07, 0.72), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))
  line((1.98, -0.14), (2.06, -0.14), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))
  bezier((2.07, 0.72), (2.06, -0.14), (2.11, 0.46), (2.11, 0.12), stroke: (paint: rgb("#3E523D"), thickness: 0.30pt, cap: "round"))

  merge-path({
    bezier((2.06, -0.04), (2.07, 0.60), (2.11, 0.16), (2.11, 0.42))
    line((2.07, 0.60), (2.29, 0.59))
    bezier((2.29, 0.59), (2.26, -0.04), (2.34, 0.42), (2.34, 0.16))
  }, close: true, fill: gradient.linear((rgb("#587057"), 0%), (rgb("#597158"), 8%), (rgb("#6A8769"), 20%), (rgb("#85A984"), 35%), (rgb("#A2CCA0"), 48%), (rgb("#CCFACB"), 64%), (rgb("#BDECBC"), 78%), (rgb("#A5D2A3"), 90%), (rgb("#95BD93"), 100%), angle: -90deg), stroke: none)
  line((2.07, 0.60), (2.29, 0.59), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))
  line((2.06, -0.04), (2.26, -0.04), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))

  merge-path({
    bezier((2.26, -0.04), (2.29, 0.59), (2.34, 0.16), (2.34, 0.42))
    line((2.29, 0.59), (3.28, 0.58))
    bezier((3.28, 0.58), (3.25, -0.06), (3.48, 0.52), (3.48, 0.00))
  }, close: true, fill: gradient.linear((rgb("#587057"), 0%), (rgb("#597158"), 8%), (rgb("#6A8769"), 20%), (rgb("#85A984"), 35%), (rgb("#A2CCA0"), 48%), (rgb("#CCFACB"), 64%), (rgb("#BBE9B9"), 78%), (rgb("#A5D2A3"), 90%), (rgb("#95BD93"), 100%), angle: -90deg), stroke: none)
  merge-path({
    bezier((3.25, -0.06), (3.28, 0.58), (3.37, 0.12), (3.37, 0.42))
    bezier((3.28, 0.58), (3.25, -0.06), (3.48, 0.52), (3.48, 0.00))
  }, close: true, fill: gradient.linear((rgb("#658064").transparentize(100%), 0%), (rgb("#658064"), 100%), angle: 0deg), stroke: none)
  bezier((3.28, 0.58), (3.25, -0.06), (3.48, 0.52), (3.48, 0.00), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))
  bezier((3.34, 0.50), (3.33, 0.02), (3.42, 0.40), (3.42, 0.12), stroke: (paint: rgb("#4C634B"), thickness: 0.24pt, cap: "round"))
  bezier((2.29, 0.59), (2.26, -0.04), (2.34, 0.42), (2.34, 0.16), stroke: (paint: rgb("#3E523D"), thickness: 0.28pt, cap: "round"))

  line((2.28, -0.04), (2.32, -0.11), (2.31, -0.12), (2.27, -0.05), close: true, fill: rgb("#516750"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.32, -0.11), (3.23, -0.13), (3.21, -0.14), (2.31, -0.12), close: true, fill: rgb("#607A5F"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.28, -0.04), (3.27, -0.06), (3.23, -0.13), (2.32, -0.11), close: true, fill: rgb("#9FC69D"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.29, 0.59), (2.34, 0.66), (2.35, 0.62), (2.30, 0.55), close: true, fill: rgb("#7FA27E"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.34, 0.66), (3.25, 0.64), (3.27, 0.61), (2.35, 0.62), close: true, fill: rgb("#9EC99C"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.30, 0.55), (3.30, 0.54), (3.27, 0.61), (2.35, 0.62), close: true, fill: rgb("#708E6F"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((3.25, 0.64), (3.28, 0.57), (3.30, 0.54), (3.27, 0.61), close: true, fill: rgb("#799A78"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.30, 0.05), (2.35, -0.01), (2.33, -0.07), (2.29, -0.01), close: true, fill: rgb("#5F795E"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.30, 0.05), (3.30, 0.03), (3.27, -0.03), (2.35, -0.01), close: true, fill: rgb("#94BC92"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.35, -0.01), (3.27, -0.03), (3.25, -0.09), (2.33, -0.07), close: true, fill: rgb("#6A8769"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((3.27, -0.03), (3.30, 0.03), (3.29, -0.03), (3.25, -0.09), close: true, fill: rgb("#5A7359"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.31, 0.44), (3.32, 0.42), (3.29, 0.46), (2.36, 0.48), close: true, fill: rgb("#4B604B"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.31, 0.51), (2.36, 0.56), (2.36, 0.48), (2.31, 0.44), close: true, fill: rgb("#88AD86"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.36, 0.56), (3.28, 0.54), (3.29, 0.46), (2.36, 0.48), close: true, fill: rgb("#BAEAB8"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((3.28, 0.54), (3.31, 0.49), (3.32, 0.42), (3.29, 0.46), close: true, fill: rgb("#84A883"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.31, 0.20), (3.32, 0.18), (3.30, 0.15), (2.36, 0.17), close: true, fill: rgb("#7FA27E"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.31, 0.20), (2.36, 0.17), (2.36, 0.08), (2.31, 0.11), close: true, fill: rgb("#759574"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.36, 0.17), (3.30, 0.15), (3.29, 0.06), (2.36, 0.08), close: true, fill: rgb("#90B88F"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((3.30, 0.15), (3.32, 0.18), (3.31, 0.09), (3.29, 0.06), close: true, fill: rgb("#708E6F"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.32, 0.27), (3.33, 0.25), (3.30, 0.26), (2.37, 0.28), close: true, fill: rgb("#4A5E49"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.32, 0.37), (2.37, 0.38), (2.37, 0.28), (2.32, 0.27), close: true, fill: rgb("#84A883"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((2.37, 0.38), (3.30, 0.36), (3.30, 0.26), (2.37, 0.28), close: true, fill: rgb("#CCFACA"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
  line((3.30, 0.36), (3.33, 0.35), (3.33, 0.25), (3.30, 0.26), close: true, fill: rgb("#81A47F"), stroke: (paint: rgb("#3E523D"), thickness: 0.26pt, join: "round"))
})
