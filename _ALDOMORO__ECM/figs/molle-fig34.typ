// Figura estratta da molle.typ (riga 982) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

line((0.0, 0.85), (1.34, 0.85), (1.34, 0.40), (0.0, 0.40), stroke: 1pt)
bezier((0.0, 0.85), (0.0, 0.40), (-0.06, 0.70), (0.06, 0.55), stroke: 1pt)
line((3.2, 0.85), (1.86, 0.85), (1.86, 0.40), (3.2, 0.40), stroke: 1pt)
bezier((3.2, 0.85), (3.2, 0.40), (3.14, 0.70), (3.26, 0.55), stroke: 1pt)

line((0.0, 0.62), (0.22, 0.40), stroke: 0.6pt)
line((0.0, 0.84), (0.44, 0.40), stroke: 0.6pt)
line((0.21, 0.85), (0.66, 0.40), stroke: 0.6pt)
line((0.43, 0.85), (0.88, 0.40), stroke: 0.6pt)
line((0.65, 0.85), (1.10, 0.40), stroke: 0.6pt)
line((0.87, 0.85), (1.32, 0.40), stroke: 0.6pt)
line((1.09, 0.85), (1.34, 0.60), stroke: 0.6pt)

line((1.86, 0.62), (2.08, 0.40), stroke: 0.6pt)
line((1.86, 0.84), (2.30, 0.40), stroke: 0.6pt)
line((2.07, 0.85), (2.52, 0.40), stroke: 0.6pt)
line((2.29, 0.85), (2.74, 0.40), stroke: 0.6pt)
line((2.51, 0.85), (2.96, 0.40), stroke: 0.6pt)
line((2.73, 0.85), (3.18, 0.40), stroke: 0.6pt)
line((2.95, 0.85), (3.20, 0.60), stroke: 0.6pt)

line((1.38, 0.08), (1.38, 2.67), stroke: 1pt)
line((1.82, 0.08), (1.82, 2.67), stroke: 1pt)
bezier((1.38, 0.08), (1.60, 0.08), (1.45, 0.14), (1.53, 0.14), stroke: 1pt)
bezier((1.60, 0.08), (1.82, 0.08), (1.67, 0.02), (1.75, 0.02), stroke: 1pt)
bezier((1.60, 0.08), (1.82, 0.08), (1.67, 0.14), (1.75, 0.14), stroke: 1pt)
line((1.66, 0.05), (1.71, 0.11), stroke: 0.6pt)
line((1.72, 0.04), (1.77, 0.11), stroke: 0.6pt)

rect((1.05, 2.67), (2.15, 2.95), stroke: 1pt)
line((1.05, 2.95), (1.10, 3.01), (2.10, 3.01), (2.15, 2.95), stroke: 1pt)
line((1.60, 3.01), (1.60, 3.12), stroke: (dash: "dashed", thickness: 0.6pt))

line((0.30, 0.85), (1.36, 1.03), (1.36, 1.11), (0.30, 0.93), close: true, stroke: 1pt)
line((2.90, 0.85), (1.84, 1.03), (1.84, 1.11), (2.90, 0.93), close: true, stroke: 1pt)

line((1.36, 1.11), (0.30, 1.29), (0.30, 1.37), (1.36, 1.19), close: true, stroke: 1pt)
line((1.84, 1.11), (2.90, 1.29), (2.90, 1.37), (1.84, 1.19), close: true, stroke: 1pt)

line((0.30, 1.37), (1.36, 1.55), (1.36, 1.63), (0.30, 1.45), close: true, stroke: 1pt)
line((2.90, 1.37), (1.84, 1.55), (1.84, 1.63), (2.90, 1.45), close: true, stroke: 1pt)

line((1.36, 1.63), (0.30, 1.81), (0.30, 1.89), (1.36, 1.71), close: true, stroke: 1pt)
line((1.84, 1.63), (2.90, 1.81), (2.90, 1.89), (1.84, 1.71), close: true, stroke: 1pt)

line((0.30, 1.89), (1.36, 2.07), (1.36, 2.15), (0.30, 1.97), close: true, stroke: 1pt)
line((2.90, 1.89), (1.84, 2.07), (1.84, 2.15), (2.90, 1.97), close: true, stroke: 1pt)

line((1.36, 2.15), (0.30, 2.33), (0.30, 2.41), (1.36, 2.23), close: true, stroke: 1pt)
line((1.84, 2.15), (2.90, 2.33), (2.90, 2.41), (1.84, 2.23), close: true, stroke: 1pt)

line((0.30, 2.41), (1.36, 2.59), (1.36, 2.67), (0.30, 2.49), close: true, stroke: 1pt)
line((2.90, 2.41), (1.84, 2.59), (1.84, 2.67), (2.90, 2.49), close: true, stroke: 1pt)

line((1.38, 1.03), (1.82, 1.03), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 1.11), (1.82, 1.11), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 1.19), (1.82, 1.19), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 1.55), (1.82, 1.55), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 1.63), (1.82, 1.63), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 1.71), (1.82, 1.71), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 2.07), (1.82, 2.07), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 2.15), (1.82, 2.15), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 2.23), (1.82, 2.23), stroke: (dash: "dashed", thickness: 0.6pt))
line((1.38, 2.59), (1.82, 2.59), stroke: (dash: "dashed", thickness: 0.6pt))

line((4.6, 0.85), (5.94, 0.85), (5.94, 0.40), (4.6, 0.40), stroke: 1pt)
bezier((4.6, 0.85), (4.6, 0.40), (4.54, 0.70), (4.66, 0.55), stroke: 1pt)
line((7.8, 0.85), (6.46, 0.85), (6.46, 0.40), (7.8, 0.40), stroke: 1pt)
bezier((7.8, 0.85), (7.8, 0.40), (7.74, 0.70), (7.86, 0.55), stroke: 1pt)

line((4.60, 0.62), (4.82, 0.40), stroke: 0.6pt)
line((4.60, 0.84), (5.04, 0.40), stroke: 0.6pt)
line((4.81, 0.85), (5.26, 0.40), stroke: 0.6pt)
line((5.03, 0.85), (5.48, 0.40), stroke: 0.6pt)
line((5.25, 0.85), (5.70, 0.40), stroke: 0.6pt)
line((5.47, 0.85), (5.92, 0.40), stroke: 0.6pt)
line((5.69, 0.85), (5.94, 0.60), stroke: 0.6pt)

line((6.46, 0.62), (6.68, 0.40), stroke: 0.6pt)
line((6.46, 0.84), (6.90, 0.40), stroke: 0.6pt)
line((6.67, 0.85), (7.12, 0.40), stroke: 0.6pt)
line((6.89, 0.85), (7.34, 0.40), stroke: 0.6pt)
line((7.11, 0.85), (7.56, 0.40), stroke: 0.6pt)
line((7.33, 0.85), (7.78, 0.40), stroke: 0.6pt)
line((7.55, 0.85), (7.80, 0.60), stroke: 0.6pt)

line((5.98, 0.08), (5.98, 2.80), stroke: 1pt)
line((6.42, 0.08), (6.42, 2.80), stroke: 1pt)
bezier((5.98, 0.08), (6.20, 0.08), (6.05, 0.14), (6.13, 0.14), stroke: 1pt)
bezier((6.20, 0.08), (6.42, 0.08), (6.27, 0.02), (6.35, 0.02), stroke: 1pt)
bezier((6.20, 0.08), (6.42, 0.08), (6.27, 0.14), (6.35, 0.14), stroke: 1pt)
line((6.26, 0.05), (6.31, 0.11), stroke: 0.6pt)
line((6.32, 0.04), (6.37, 0.11), stroke: 0.6pt)

rect((5.65, 2.80), (6.75, 3.08), stroke: 1pt)
line((5.65, 3.08), (5.70, 3.14), (6.70, 3.14), (6.75, 3.08), stroke: 1pt)
line((6.20, 3.14), (6.20, 3.25), stroke: (dash: "dashed", thickness: 0.6pt))

line((4.90, 0.85), (5.96, 1.05), (5.96, 1.145), (4.90, 0.945), close: true, stroke: 1pt)
line((4.90, 0.945), (5.96, 1.145), (5.96, 1.24), (4.90, 1.04), close: true, stroke: 1pt)
line((7.50, 0.85), (6.44, 1.05), (6.44, 1.145), (7.50, 0.945), close: true, stroke: 1pt)
line((7.50, 0.945), (6.44, 1.145), (6.44, 1.24), (7.50, 1.04), close: true, stroke: 1pt)

line((5.96, 1.24), (4.90, 1.44), (4.90, 1.535), (5.96, 1.335), close: true, stroke: 1pt)
line((5.96, 1.335), (4.90, 1.535), (4.90, 1.63), (5.96, 1.43), close: true, stroke: 1pt)
line((6.44, 1.24), (7.50, 1.44), (7.50, 1.535), (6.44, 1.335), close: true, stroke: 1pt)
line((6.44, 1.335), (7.50, 1.535), (7.50, 1.63), (6.44, 1.43), close: true, stroke: 1pt)

line((4.90, 1.63), (5.96, 1.83), (5.96, 1.925), (4.90, 1.725), close: true, stroke: 1pt)
line((4.90, 1.725), (5.96, 1.925), (5.96, 2.02), (4.90, 1.82), close: true, stroke: 1pt)
line((7.50, 1.63), (6.44, 1.83), (6.44, 1.925), (7.50, 1.725), close: true, stroke: 1pt)
line((7.50, 1.725), (6.44, 1.925), (6.44, 2.02), (7.50, 1.82), close: true, stroke: 1pt)

line((5.96, 2.02), (4.90, 2.22), (4.90, 2.315), (5.96, 2.115), close: true, stroke: 1pt)
line((5.96, 2.115), (4.90, 2.315), (4.90, 2.41), (5.96, 2.21), close: true, stroke: 1pt)
line((6.44, 2.02), (7.50, 2.22), (7.50, 2.315), (6.44, 2.115), close: true, stroke: 1pt)
line((6.44, 2.115), (7.50, 2.315), (7.50, 2.41), (6.44, 2.21), close: true, stroke: 1pt)

line((4.90, 2.41), (5.96, 2.61), (5.96, 2.705), (4.90, 2.505), close: true, stroke: 1pt)
line((4.90, 2.505), (5.96, 2.705), (5.96, 2.80), (4.90, 2.60), close: true, stroke: 1pt)
line((7.50, 2.41), (6.44, 2.61), (6.44, 2.705), (7.50, 2.505), close: true, stroke: 1pt)
line((7.50, 2.505), (6.44, 2.705), (6.44, 2.80), (7.50, 2.60), close: true, stroke: 1pt)

line((5.98, 1.05), (6.42, 1.05), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.145), (6.42, 1.145), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.24), (6.42, 1.24), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.335), (6.42, 1.335), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.43), (6.42, 1.43), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.83), (6.42, 1.83), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 1.925), (6.42, 1.925), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 2.02), (6.42, 2.02), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 2.115), (6.42, 2.115), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 2.21), (6.42, 2.21), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 2.61), (6.42, 2.61), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.98, 2.705), (6.42, 2.705), stroke: (dash: "dashed", thickness: 0.6pt))
})
