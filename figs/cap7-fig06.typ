// Figura estratta da capitoli/cap7.typ (riga 605) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1.2cm, {
import draw: *

line((0.5, 2.88), (4.25, 2.88), (4.6, 3.02), (4.75, 3.3), (4.55, 3.59), (4.05, 3.72), (2.85, 3.72), (2.85, 4.1), (3.9, 4.1), (4.79, 3.87), (5.07, 3.36), (4.88, 2.82), (4.3, 2.5), (4.88, 2.18), (5.07, 1.64), (4.79, 1.13), (3.9, 0.9), (2.85, 0.9), (2.85, 1.28), (4.05, 1.28), (4.55, 1.41), (4.75, 1.7), (4.6, 1.98), (4.25, 2.12), (0.5, 2.12), close: true, fill: c-vel.transparentize(88%), stroke: none)

line((4.3, 2.5), (4.88, 2.82), (5.07, 3.36), (4.79, 3.87), (3.9, 4.1), (5.1, 3.89), (5.98, 3.3), (6.3, 2.5), (5.98, 1.7), (5.1, 1.11), (3.9, 0.9), (4.79, 1.13), (5.07, 1.64), (4.88, 2.18), close: true, fill: c-aux.transparentize(93%), stroke: none)

line((4.98, 3.63), (5.35, 3.78), stroke: 0.55pt)
line((5.07, 3.29), (5.71, 3.54), stroke: 0.55pt)
line((4.93, 2.85), (5.99, 3.28), stroke: 0.55pt)
line((4.67, 2.37), (6.19, 2.98), stroke: 0.55pt)
line((4.96, 2.1), (6.29, 2.64), stroke: 0.55pt)
line((5.07, 1.77), (6.27, 2.25), stroke: 0.55pt)
line((4.96, 1.34), (6.04, 1.78), stroke: 0.55pt)

bezier((4.3, 2.5), (3.9, 4.1), (5.35, 2.65), (5.45, 4.1), stroke: 1.15pt)
bezier((4.3, 2.5), (3.9, 0.9), (5.35, 2.35), (5.45, 0.9), stroke: 1.15pt)
arc((3.9, 2.5), start: -90deg, stop: 90deg, radius: (2.4, 1.6), anchor: "origin", stroke: 1.15pt)

circle((1.75, 2.5), radius: (0.07, 0.38), fill: c-vel.transparentize(78%), stroke: none)
arc((1.75, 2.5), start: 90deg, stop: 270deg, radius: (0.07, 0.38), anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))
arc((1.75, 2.5), start: 270deg, stop: 450deg, radius: (0.07, 0.38), anchor: "origin", stroke: 0.75pt + c-norm)

circle((3.15, 3.91), radius: (0.06, 0.19), fill: c-vel.transparentize(78%), stroke: none)
arc((3.15, 3.91), start: 90deg, stop: 270deg, radius: (0.06, 0.19), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
arc((3.15, 3.91), start: 270deg, stop: 450deg, radius: (0.06, 0.19), anchor: "origin", stroke: 0.75pt + c-norm)

circle((3.15, 1.09), radius: (0.06, 0.19), fill: c-vel.transparentize(78%), stroke: none)
arc((3.15, 1.09), start: 90deg, stop: 270deg, radius: (0.06, 0.19), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
arc((3.15, 1.09), start: 270deg, stop: 450deg, radius: (0.06, 0.19), anchor: "origin", stroke: 0.75pt + c-norm)

line((0.5, 2.88), (4.25, 2.88), stroke: 0.9pt + c-vel)
bezier((4.25, 2.88), (4.75, 3.3), (4.55, 2.88), (4.75, 3.06), stroke: 0.9pt + c-vel)
bezier((4.75, 3.3), (4.05, 3.72), (4.75, 3.54), (4.45, 3.72), stroke: 0.9pt + c-vel)
line((4.05, 3.72), (2.85, 3.72), stroke: 0.9pt + c-vel)
line((3.9, 4.1), (2.85, 4.1), stroke: 0.9pt + c-vel)

line((0.5, 2.12), (4.25, 2.12), stroke: 0.9pt + c-vel)
bezier((4.25, 2.12), (4.75, 1.7), (4.55, 2.12), (4.75, 1.94), stroke: 0.9pt + c-vel)
bezier((4.75, 1.7), (4.05, 1.28), (4.75, 1.46), (4.45, 1.28), stroke: 0.9pt + c-vel)
line((4.05, 1.28), (2.85, 1.28), stroke: 0.9pt + c-vel)
line((3.9, 0.9), (2.85, 0.9), stroke: 0.9pt + c-vel)

line((1.75, 2.5), (2.55, 2.5), mark: (end: ">"), stroke: 1.05pt + c-vel)
content((2.2, 2.66), text(size: 8pt, fill: c-vel)[$arrow(u)_1$], anchor: "south")
line((1.75, 2.5), (1.15, 2.5), mark: (end: ">"), stroke: 0.95pt + c-norm)
content((1.42, 2.66), text(size: 8pt, fill: c-norm)[$arrow(n)_1$], anchor: "south")
content((0.78, 2.5), text(size: 8.5pt, fill: c-vel)[$Q$], anchor: "center")
content((1.75, 1.96), text(size: 8pt)[$S_1$], anchor: "north")

content((3.15, 4.22), text(size: 9pt)[$S_2$], anchor: "south")
line((3.15, 3.84), (2.25, 3.84), mark: (end: ">"), stroke: 1pt + c-vel)
line((3.15, 3.98), (2.55, 3.98), mark: (end: ">"), stroke: 0.9pt + c-norm)
content((2.55, 4.14), text(size: 8pt, fill: c-norm)[$arrow(n)_2$], anchor: "south")
content((2.12, 3.84), text(size: 10pt, fill: c-vel)[$Q/2, arrow(u)_2$], anchor: "east")

content((3.15, 0.78), text(size: 9pt)[$S_2$], anchor: "north")
line((3.15, 1.16), (2.25, 1.16), mark: (end: ">"), stroke: 1pt + c-vel)
line((3.15, 1.02), (2.55, 1.02), mark: (end: ">"), stroke: 0.9pt + c-norm)
content((2.55, 0.86), text(size: 8pt, fill: c-norm)[$arrow(n)_2$], anchor: "north")
content((2.12, 1.16), text(size: 10pt, fill: c-vel)[$Q/2, arrow(u)_2$], anchor: "east")

line((0.55, 0.45), (1.45, 0.45), mark: (end: ">"), stroke: 0.75pt)
content((1.55, 0.45), text(size: 8pt)[$x$], anchor: "west")
})
