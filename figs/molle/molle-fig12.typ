// Figura estratta da molle.typ (riga 1376) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.7cm, {
import draw: *

// Mezza spira terminale inferiore (centro dx (2.00, 0.5573), taglio a (0, 0.3360))
line((-0.0484, 0.7733), (0.0484, -0.1013), (2.0484, 0.1200), (2.337, 0.274), (2.440, 0.557), (2.337, 0.840), (1.9516, 0.9946), close: true, fill: white, stroke: none)
line((-0.0484, 0.7733), (0.0484, -0.1013), (2.0484, 0.1200), (2.337, 0.274), (2.440, 0.557), (2.337, 0.840), (1.9516, 0.9946), close: true, fill: black.transparentize(86%), stroke: none)
line((-0.0110, 0.4350), (0.0484, -0.1013), (2.0484, 0.1200), (2.337, 0.274), (2.415, 0.703), close: true, fill: black.transparentize(80%), stroke: none)
line((-0.0484, 0.7733), (0.0484, -0.1013), (2.0484, 0.1200), stroke: 1.4pt)
arc((2.00, 0.5573), start: -83.685deg, stop: 96.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((1.9516, 0.9946), (-0.0484, 0.7733), stroke: 1.4pt)

// Spira 1 (y_1 = 1.0000)
line((-2.0484, 1.4373), (-2.337, 1.283), (-2.440, 1.000), (-2.337, 0.717), (-1.9516, 0.5627), (2.0484, 1.0054), (2.337, 1.160), (2.440, 1.443), (2.337, 1.726), (1.9516, 1.8800), close: true, fill: white, stroke: none)
line((-2.0484, 1.4373), (-2.337, 1.283), (-2.440, 1.000), (-2.337, 0.717), (-1.9516, 0.5627), (2.0484, 1.0054), (2.337, 1.160), (2.440, 1.443), (2.337, 1.726), (1.9516, 1.8800), close: true, fill: black.transparentize(86%), stroke: none)
line((-2.437, 1.052), (-2.337, 0.717), (-1.9516, 0.5627), (2.0484, 1.0054), (2.337, 1.160), (2.415, 1.589), close: true, fill: black.transparentize(80%), stroke: none)
arc((-2.00, 1.0000), start: 96.315deg, stop: 276.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((-1.9516, 0.5627), (2.0484, 1.0054), stroke: 1.4pt)
arc((2.00, 1.4427), start: -83.685deg, stop: 96.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((1.9516, 1.8800), (-2.0484, 1.4373), stroke: 1.4pt)

// Spira 2 (y_2 = 1.8853)
line((-2.0484, 2.3226), (-2.337, 2.168), (-2.440, 1.885), (-2.337, 1.602), (-1.9516, 1.4480), (2.0484, 1.8907), (2.337, 2.045), (2.440, 2.328), (2.337, 2.611), (1.9516, 2.7653), close: true, fill: white, stroke: none)
line((-2.0484, 2.3226), (-2.337, 2.168), (-2.440, 1.885), (-2.337, 1.602), (-1.9516, 1.4480), (2.0484, 1.8907), (2.337, 2.045), (2.440, 2.328), (2.337, 2.611), (1.9516, 2.7653), close: true, fill: black.transparentize(86%), stroke: none)
line((-2.437, 1.937), (-2.337, 1.602), (-1.9516, 1.4480), (2.0484, 1.8907), (2.337, 2.045), (2.415, 2.474), close: true, fill: black.transparentize(80%), stroke: none)
arc((-2.00, 1.8853), start: 96.315deg, stop: 276.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((-1.9516, 1.4480), (2.0484, 1.8907), stroke: 1.4pt)
arc((2.00, 2.3280), start: -83.685deg, stop: 96.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((1.9516, 2.7653), (-2.0484, 2.3226), stroke: 1.4pt)

// Spira 3 (y_3 = 2.7706)
line((-2.0484, 3.2079), (-2.337, 3.054), (-2.440, 2.771), (-2.337, 2.488), (-1.9516, 2.3333), (2.0484, 2.7760), (2.337, 2.930), (2.440, 3.213), (2.337, 3.496), (1.9516, 3.6506), close: true, fill: white, stroke: none)
line((-2.0484, 3.2079), (-2.337, 3.054), (-2.440, 2.771), (-2.337, 2.488), (-1.9516, 2.3333), (2.0484, 2.7760), (2.337, 2.930), (2.440, 3.213), (2.337, 3.496), (1.9516, 3.6506), close: true, fill: black.transparentize(86%), stroke: none)
line((-2.437, 2.823), (-2.337, 2.488), (-1.9516, 2.3333), (2.0484, 2.7760), (2.337, 2.930), (2.415, 3.359), close: true, fill: black.transparentize(80%), stroke: none)
arc((-2.00, 2.7706), start: 96.315deg, stop: 276.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((-1.9516, 2.3333), (2.0484, 2.7760), stroke: 1.4pt)
arc((2.00, 3.2133), start: -83.685deg, stop: 96.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((1.9516, 3.6506), (-2.0484, 3.2079), stroke: 1.4pt)

// Spira 4 (y_4 = 3.6559)
line((-2.0484, 4.0932), (-2.337, 3.939), (-2.440, 3.656), (-2.337, 3.373), (-1.9516, 3.2186), (2.0484, 3.6613), (2.337, 3.816), (2.440, 4.099), (2.337, 4.382), (1.9516, 4.5359), close: true, fill: white, stroke: none)
line((-2.0484, 4.0932), (-2.337, 3.939), (-2.440, 3.656), (-2.337, 3.373), (-1.9516, 3.2186), (2.0484, 3.6613), (2.337, 3.816), (2.440, 4.099), (2.337, 4.382), (1.9516, 4.5359), close: true, fill: black.transparentize(86%), stroke: none)
line((-2.437, 3.708), (-2.337, 3.373), (-1.9516, 3.2186), (2.0484, 3.6613), (2.337, 3.816), (2.415, 4.245), close: true, fill: black.transparentize(80%), stroke: none)
arc((-2.00, 3.6559), start: 96.315deg, stop: 276.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((-1.9516, 3.2186), (2.0484, 3.6613), stroke: 1.4pt)
arc((2.00, 4.0986), start: -83.685deg, stop: 96.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((1.9516, 4.5359), (-2.0484, 4.0932), stroke: 1.4pt)

// Mezza spira terminale superiore (centro sx (-2.00, 4.5412), taglio a (0, 4.7625))
line((-2.0484, 4.9785), (-2.337, 4.824), (-2.440, 4.541), (-2.337, 4.258), (-1.9516, 4.1039), (0.0484, 4.3252), (-0.0484, 5.1998), close: true, fill: white, stroke: none)
line((-2.0484, 4.9785), (-2.337, 4.824), (-2.440, 4.541), (-2.337, 4.258), (-1.9516, 4.1039), (0.0484, 4.3252), (-0.0484, 5.1998), close: true, fill: black.transparentize(86%), stroke: none)
line((-2.437, 4.593), (-2.337, 4.258), (-1.9516, 4.1039), (0.0484, 4.3252), (-0.0110, 4.8615), close: true, fill: black.transparentize(80%), stroke: none)
arc((-2.00, 4.5412), start: 96.315deg, stop: 276.315deg, radius: 0.44, anchor: "origin", stroke: 1.4pt)
line((-1.9516, 4.1039), (0.0484, 4.3252), (-0.0484, 5.1998), (-2.0484, 4.9785), stroke: 1.4pt)
})
