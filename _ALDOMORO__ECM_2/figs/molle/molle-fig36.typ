// Figura estratta da molle.typ (riga 1152) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
import draw: *

circle((0, 0), radius: 2.6, stroke: 1pt)

arc((0, 0), start: 5.28deg, stop: 24.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 35.28deg, stop: 54.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 65.28deg, stop: 84.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 95.28deg, stop: 114.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 125.28deg, stop: 144.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 155.28deg, stop: 174.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 185.28deg, stop: 204.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 215.28deg, stop: 234.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 245.28deg, stop: 264.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 275.28deg, stop: 294.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 305.28deg, stop: 324.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)
arc((0, 0), start: 335.28deg, stop: 354.72deg, radius: 1.25, anchor: "origin", stroke: 1pt)

line((1.245, 0.115), (1.920, 0.115), stroke: 1pt)
line((1.245, -0.115), (1.920, -0.115), stroke: 1pt)
arc((1.920, 0), start: -90deg, stop: 90deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((1.020, 0.723), (1.605, 1.060), stroke: 1pt)
line((1.136, 0.523), (1.721, 0.860), stroke: 1pt)
arc((1.663, 0.960), start: -60deg, stop: 120deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((0.523, 1.136), (0.860, 1.721), stroke: 1pt)
line((0.723, 1.020), (1.060, 1.605), stroke: 1pt)
arc((0.960, 1.663), start: -30deg, stop: 150deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-0.115, 1.245), (-0.115, 1.920), stroke: 1pt)
line((0.115, 1.245), (0.115, 1.920), stroke: 1pt)
arc((0, 1.920), start: 0deg, stop: 180deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-0.523, 1.136), (-0.860, 1.721), stroke: 1pt)
line((-0.723, 1.020), (-1.060, 1.605), stroke: 1pt)
arc((-0.960, 1.663), start: 30deg, stop: 210deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-1.020, 0.723), (-1.605, 1.060), stroke: 1pt)
line((-1.136, 0.523), (-1.721, 0.860), stroke: 1pt)
arc((-1.663, 0.960), start: 60deg, stop: 240deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-1.245, 0.115), (-1.920, 0.115), stroke: 1pt)
line((-1.245, -0.115), (-1.920, -0.115), stroke: 1pt)
arc((-1.920, 0), start: 90deg, stop: 270deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-1.020, -0.723), (-1.605, -1.060), stroke: 1pt)
line((-1.136, -0.523), (-1.721, -0.860), stroke: 1pt)
arc((-1.663, -0.960), start: 120deg, stop: 300deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-0.523, -1.136), (-0.860, -1.721), stroke: 1pt)
line((-0.723, -1.020), (-1.060, -1.605), stroke: 1pt)
arc((-0.960, -1.663), start: 150deg, stop: 330deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-0.115, -1.245), (-0.115, -1.920), stroke: 1pt)
line((0.115, -1.245), (0.115, -1.920), stroke: 1pt)
arc((0, -1.920), start: 180deg, stop: 360deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((0.523, -1.136), (0.860, -1.721), stroke: 1pt)
line((0.723, -1.020), (1.060, -1.605), stroke: 1pt)
arc((0.960, -1.663), start: 210deg, stop: 390deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((1.020, -0.723), (1.605, -1.060), stroke: 1pt)
line((1.136, -0.523), (1.721, -0.860), stroke: 1pt)
arc((1.663, -0.960), start: 240deg, stop: 420deg, radius: 0.115, anchor: "origin", stroke: 1pt)

line((-2.60, 3.85), (2.60, 3.85), stroke: 1pt)
line((-2.60, 3.85), (-2.60, 3.90), (-1.25, 4.40), stroke: 1pt)
line((2.60, 3.85), (2.60, 3.90), (1.25, 4.40), stroke: 1pt)
line((-2.56, 3.85), (-1.25, 4.35), stroke: 0.6pt)
line((2.56, 3.85), (1.25, 4.35), stroke: 0.6pt)

line((-1.25, 4.40), (-1.136, 4.40), stroke: 1pt)
line((-1.020, 4.40), (-0.723, 4.40), stroke: 1pt)
line((-0.523, 4.40), (-0.115, 4.40), stroke: 1pt)
line((0.115, 4.40), (0.523, 4.40), stroke: 1pt)
line((0.723, 4.40), (1.020, 4.40), stroke: 1pt)
line((1.136, 4.40), (1.25, 4.40), stroke: 1pt)

line((-1.25, 4.35), (-1.136, 4.35), stroke: 0.6pt)
line((-1.020, 4.35), (-0.723, 4.35), stroke: 0.6pt)
line((-0.523, 4.35), (-0.115, 4.35), stroke: 0.6pt)
line((0.115, 4.35), (0.523, 4.35), stroke: 0.6pt)
line((0.723, 4.35), (1.020, 4.35), stroke: 0.6pt)
line((1.136, 4.35), (1.25, 4.35), stroke: 0.6pt)

line((-0.115, 4.40), (-0.115, 4.127), stroke: 1pt)
line((0.115, 4.40), (0.115, 4.127), stroke: 1pt)
arc((0, 4.127), start: 180deg, stop: 360deg, radius: (0.115, 0.047), anchor: "origin", stroke: 1pt)
arc((0, 4.165), start: 195deg, stop: 345deg, radius: (0.115, 0.045), anchor: "origin", stroke: 0.6pt)

line((-0.723, 4.40), (-1.060, 4.127), stroke: 1pt)
line((-0.523, 4.40), (-0.860, 4.127), stroke: 1pt)
bezier((-1.060, 4.127), (-0.860, 4.127), (-1.140, 4.077), (-0.940, 4.077), stroke: 1pt)
line((-0.523, 4.35), (-0.895, 4.095), stroke: 0.6pt)

line((0.723, 4.40), (1.060, 4.127), stroke: 1pt)
line((0.523, 4.40), (0.860, 4.127), stroke: 1pt)
bezier((1.060, 4.127), (0.860, 4.127), (1.140, 4.077), (0.940, 4.077), stroke: 1pt)
line((0.523, 4.35), (0.895, 4.095), stroke: 0.6pt)

line((-1.136, 4.40), (-1.721, 4.127), stroke: 1pt)
line((-1.020, 4.40), (-1.605, 4.127), stroke: 1pt)
bezier((-1.721, 4.127), (-1.605, 4.127), (-1.803, 4.089), (-1.687, 4.089), stroke: 1pt)
line((-1.020, 4.35), (-1.640, 4.095), stroke: 0.6pt)

line((1.136, 4.40), (1.721, 4.127), stroke: 1pt)
line((1.020, 4.40), (1.605, 4.127), stroke: 1pt)
bezier((1.721, 4.127), (1.605, 4.127), (1.803, 4.089), (1.687, 4.089), stroke: 1pt)
line((1.020, 4.35), (1.640, 4.095), stroke: 0.6pt)

line((-3.0, 0), (3.0, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
line((0, -3.0), (0, 4.8), stroke: (dash: "dash-dotted", thickness: 0.6pt))
})
