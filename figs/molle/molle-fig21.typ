// Figura estratta da molle.typ (riga 2824) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.2cm, {
import draw: *

circle((-3.927, 0.800), radius: 0.155, fill: black, stroke: none)
circle((3.653, 0.827), radius: 0.155, fill: black, stroke: none)

arc((-0.175, 11.724), start: 251.04deg, stop: 289.36deg, radius: 11.715, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((-0.175, 11.724), start: 251.04deg, stop: 289.36deg, radius: 11.770, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))

arc((-3.927, 0.800), start: 20deg, stop: 251.04deg, radius: 0.165, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((-3.927, 0.800), start: 20deg, stop: 251.04deg, radius: 0.220, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((-3.772, 0.856), (-3.720, 0.875), stroke: (thickness: 0.7pt, paint: black))

arc((3.653, 0.827), start: 289.36deg, stop: 500deg, radius: 0.165, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((3.653, 0.827), start: 289.36deg, stop: 500deg, radius: 0.220, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((3.527, 0.933), (3.484, 0.968), stroke: (thickness: 0.7pt, paint: black))

line((-3.927, 0.895), (-3.845, 0.848), (-3.845, 0.752), (-3.927, 0.705), (-4.009, 0.752), (-4.009, 0.848), close: true, fill: luma(195), stroke: (thickness: 0.7pt, paint: black))

arc((-0.175, 11.724), start: 255.43deg, stop: 286.27deg, radius: 11.785, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((-0.175, 11.724), start: 255.43deg, stop: 286.27deg, radius: 11.835, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((-3.140, 0.318), (-3.153, 0.270), stroke: (thickness: 0.7pt, paint: black))
line((3.127, 0.412), (3.141, 0.364), stroke: (thickness: 0.7pt, paint: black))

arc((-0.175, 11.724), start: 259.41deg, stop: 281.85deg, radius: 11.850, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((-0.175, 11.724), start: 259.41deg, stop: 281.85deg, radius: 11.900, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((-2.353, 0.075), (-2.362, 0.026), stroke: (thickness: 0.7pt, paint: black))
line((2.259, 0.126), (2.269, 0.077), stroke: (thickness: 0.7pt, paint: black))

arc((-0.175, 11.724), start: 264.00deg, stop: 277.56deg, radius: 11.915, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((-0.175, 11.724), start: 264.00deg, stop: 277.56deg, radius: 11.965, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((-1.420, -0.125), (-1.425, -0.175), stroke: (thickness: 0.7pt, paint: black))
line((1.393, -0.087), (1.400, -0.137), stroke: (thickness: 0.7pt, paint: black))

arc((-0.175, 11.724), start: 255.7deg, stop: 257.8deg, radius: 11.778, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))
arc((-0.175, 11.724), start: 283.9deg, stop: 285.8deg, radius: 11.778, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))
arc((-0.175, 11.724), start: 259.6deg, stop: 261.5deg, radius: 11.843, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))
arc((-0.175, 11.724), start: 280.1deg, stop: 281.6deg, radius: 11.843, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))
arc((-0.175, 11.724), start: 264.2deg, stop: 266.1deg, radius: 11.908, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))
arc((-0.175, 11.724), start: 275.7deg, stop: 277.3deg, radius: 11.908, anchor: "origin", stroke: (thickness: 1.8pt, paint: black))

circle((3.653, 1.427), radius: 0.145, fill: white, stroke: none)
circle((3.653, 0.827), radius: 0.145, fill: white, stroke: none)
rect((3.538, 0.915), (3.768, 1.339), fill: white, stroke: none)
arc((3.653, 1.427), start: -37.5deg, stop: 217.5deg, radius: 0.145, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
arc((3.653, 0.827), start: 142.5deg, stop: 397.5deg, radius: 0.145, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((3.538, 0.915), (3.538, 1.339), stroke: (thickness: 0.7pt, paint: black))
line((3.768, 0.915), (3.768, 1.339), stroke: (thickness: 0.7pt, paint: black))
line((3.653, 1.522), (3.735, 1.475), (3.735, 1.379), (3.653, 1.332), (3.571, 1.379), (3.571, 1.475), close: true, fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
line((3.653, 0.922), (3.735, 0.875), (3.735, 0.779), (3.653, 0.732), (3.571, 0.779), (3.571, 0.875), close: true, fill: luma(195), stroke: (thickness: 0.7pt, paint: black))

rect((-1.877, -0.10), (-1.737, 0.17), fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
line((-1.877, 0.13), (-1.737, 0.13), stroke: (thickness: 0.5pt, paint: black))
rect((1.770, -0.04), (1.910, 0.23), fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
line((1.770, 0.19), (1.910, 0.19), stroke: (thickness: 0.5pt, paint: black))

rect((-0.445, 0.13), (-0.355, 0.21), fill: luma(195), stroke: none)
circle((-0.400, 0.21), radius: 0.045, fill: luma(195), stroke: none)
line((-0.445, 0.13), (-0.445, 0.21), stroke: (thickness: 0.7pt, paint: black))
arc((-0.400, 0.21), start: 0deg, stop: 180deg, radius: 0.045, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((-0.355, 0.21), (-0.355, 0.13), stroke: (thickness: 0.7pt, paint: black))

rect((0.355, 0.13), (0.445, 0.21), fill: luma(195), stroke: none)
circle((0.400, 0.21), radius: 0.045, fill: luma(195), stroke: none)
line((0.355, 0.13), (0.355, 0.21), stroke: (thickness: 0.7pt, paint: black))
arc((0.400, 0.21), start: 0deg, stop: 180deg, radius: 0.045, anchor: "origin", stroke: (thickness: 0.7pt, paint: black))
line((0.445, 0.21), (0.445, 0.13), stroke: (thickness: 0.7pt, paint: black))

rect((-0.095, 0.13), (0.095, 0.21), fill: luma(195), stroke: (thickness: 0.7pt, paint: black))

rect((-0.465, -0.44), (-0.335, -0.36), fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
rect((-0.435, -0.47), (-0.365, -0.44), fill: luma(165), stroke: (thickness: 0.5pt, paint: black))
rect((0.335, -0.44), (0.465, -0.36), fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
rect((0.365, -0.47), (0.435, -0.44), fill: luma(165), stroke: (thickness: 0.5pt, paint: black))
rect((-0.040, -0.47), (0.040, -0.36), fill: luma(175), stroke: (thickness: 0.6pt, paint: black))
line((-0.040, -0.40), (0.040, -0.40), stroke: (thickness: 0.5pt, paint: black))
line((-0.040, -0.44), (0.040, -0.44), stroke: (thickness: 0.5pt, paint: black))

line((-0.56, -0.085), (-0.56, 0.09), (-0.52, 0.13), (0.52, 0.13), (0.56, 0.09), (0.56, -0.085), (0.53, -0.115), (-0.53, -0.115), close: true, fill: luma(195), stroke: (thickness: 0.7pt, paint: black))
line((-0.53, -0.115), (0.53, -0.115), (0.56, -0.145), (0.56, -0.32), (0.52, -0.36), (-0.52, -0.36), (-0.56, -0.32), (-0.56, -0.145), close: true, fill: luma(195), stroke: (thickness: 0.7pt, paint: black))

line((-0.445, -0.36), (-0.445, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))
line((-0.355, -0.36), (-0.355, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))
line((0.355, -0.36), (0.355, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))
line((0.445, -0.36), (0.445, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))
line((-0.040, -0.36), (-0.040, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))
line((0.040, -0.36), (0.040, 0.13), stroke: (dash: "dashed", thickness: 0.6pt, paint: black))

line((-3.50, 1.36), (-3.88, 1.02), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((-2.55, 1.05), (-3.55, 0.85), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((-3.25, -0.40), (-2.88, 0.16), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((-1.15, -1.10), (-1.73, -0.18), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((-0.35, 0.68), (-0.08, 0.28), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((0.65, -1.50), (0.15, -0.43), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((1.85, -1.10), (1.05, -0.26), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((2.25, -1.10), (2.05, -0.05), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((1.95, 0.78), (3.05, 0.56), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((1.55, 1.78), (3.30, 0.90), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))
line((2.45, 2.28), (3.42, 1.18), mark: (end: ">"), stroke: (thickness: 0.7pt, paint: black))

content((-3.85, 1.48), [#text(size: 7.5pt)[Bushing]], anchor: "south")
content((-2.15, 1.32), [#text(size: 7.5pt)[Front Eye]], anchor: "center")
content((-3.15, -0.52), [#text(size: 7.5pt)[Silencer Cushion]], anchor: "north")
content((-1.10, -1.22), [#text(size: 7.5pt)[Rebound Clip]], anchor: "north")
content((-0.35, 0.78), [#text(size: 7.5pt)[Center Bolt]], anchor: "south")
content((0.75, -1.62), [#text(size: 7.5pt)[Central Clamp]], anchor: "north")
content((2.40, -1.22), [#text(size: 7.5pt)[Companion Leafs]], anchor: "north")
content((1.25, 0.90), [#text(size: 7.5pt)[Main Leaf Spring]], anchor: "center")
content((1.10, 1.88), [#text(size: 7.5pt)[Rear Eye]], anchor: "center")
content((2.35, 2.38), [#text(size: 7.5pt)[Shackle]], anchor: "south")
})
