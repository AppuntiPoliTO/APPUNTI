#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Workpiece fill (wavy top and bottom)
  line(
    (4.95, 4.75), (5.38, 4.78), (5.80, 4.75), (6.22, 4.72), (6.65, 4.75),
    (6.65, 2.05), (6.22, 2.02), (5.80, 2.05), (5.38, 2.08), (4.95, 2.05),
    close: true, fill: gray.transparentize(80%), stroke: none
  )

  // Workpiece outline
  line((4.95, 2.05), (4.95, 4.75), stroke: 0.85pt)
  line((6.65, 2.05), (6.65, 4.75), stroke: 0.85pt)
  bezier((4.95, 4.75), (6.65, 4.75), (5.52, 4.84), (6.08, 4.66), stroke: 0.85pt)
  bezier((4.95, 2.05), (6.65, 2.05), (5.52, 2.14), (6.08, 1.96), stroke: 0.85pt)

  // Defect inside workpiece (fill then outline)
  line(
    (5.65, 3.96), (5.73, 3.98), (5.82, 3.84), (5.92, 3.55), (5.88, 3.44),
    (5.77, 3.47), (5.70, 3.65), (5.63, 3.85),
    close: true, fill: white, stroke: none
  )
  bezier((5.65, 3.96), (5.88, 3.44), (5.78, 4.02), (5.96, 3.58), stroke: 0.75pt)
  bezier((5.88, 3.44), (5.65, 3.96), (5.74, 3.42), (5.61, 3.82), stroke: 0.75pt)

  // Ultrasonic rays (red)
  line((4.95, 3.60), (6.65, 3.325), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((6.65, 3.325), (5.75, 3.18), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((5.75, 3.18), (4.95, 3.05), stroke: (paint: red, thickness: 0.9pt))
  line((5.85, 3.455), (5.38, 3.24), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((5.38, 3.24), (4.95, 3.05), stroke: (paint: red, thickness: 0.9pt))

  // Upper transducer (emitter)
  rect((4.83, 3.44), (4.95, 3.76), fill: white, stroke: 0.8pt)
  rect((4.68, 3.49), (4.83, 3.71), fill: white, stroke: 0.8pt)
  rect((4.60, 3.54), (4.68, 3.66), fill: white, stroke: 0.8pt)

  // Lower transducer (receiver)
  rect((4.83, 2.89), (4.95, 3.21), fill: white, stroke: 0.8pt)
  rect((4.68, 2.94), (4.83, 3.16), fill: white, stroke: 0.8pt)
  rect((4.60, 2.99), (4.68, 3.11), fill: white, stroke: 0.8pt)

  // Emitter box and cable
  rect((2.30, 3.25), (3.50, 3.95), fill: white, stroke: 0.9pt)
  line((3.50, 3.63), (4.60, 3.63), stroke: 0.65pt)
  line((3.50, 3.57), (4.60, 3.57), stroke: 0.65pt)

  // Receiver box and cables
  rect((2.30, 0.45), (3.95, 1.55), fill: white, stroke: 0.9pt)
  line((3.62, 1.55), (3.62, 2.80), stroke: 0.65pt)
  arc((3.90, 2.80), start: 90deg, stop: 180deg, radius: 0.28, anchor: "origin", stroke: 0.65pt)
  line((3.90, 3.08), (4.60, 3.08), stroke: 0.65pt)
  line((3.68, 1.55), (3.68, 2.80), stroke: 0.65pt)
  arc((3.90, 2.80), start: 90deg, stop: 180deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  line((3.90, 3.02), (4.60, 3.02), stroke: 0.65pt)
  line((3.95, 1.00), (4.45, 1.00), stroke: 0.8pt)

  // Oscilloscope housing and screen
  rect((4.45, 0.25), (6.95, 1.75), radius: 0.15, fill: white, stroke: 0.9pt)
  rect((4.55, 0.35), (6.85, 1.65), radius: 0.10, fill: white, stroke: 0.7pt)

  // Oscilloscope horizontal grid lines
  line((4.55, 0.55), (6.85, 0.55), stroke: (paint: gray, thickness: 0.4pt))
  line((4.55, 0.77), (6.85, 0.77), stroke: (paint: gray, thickness: 0.4pt))
  line((4.55, 0.99), (6.85, 0.99), stroke: (paint: gray, thickness: 0.4pt))
  line((4.55, 1.21), (6.85, 1.21), stroke: (paint: gray, thickness: 0.4pt))
  line((4.55, 1.43), (6.85, 1.43), stroke: (paint: gray, thickness: 0.4pt))

  // Oscilloscope bottom ticks
  line((4.75, 0.35), (4.75, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((4.94, 0.35), (4.94, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((5.13, 0.35), (5.13, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((5.32, 0.35), (5.32, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((5.51, 0.35), (5.51, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((5.70, 0.35), (5.70, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((5.89, 0.35), (5.89, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((6.08, 0.35), (6.08, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((6.27, 0.35), (6.27, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((6.46, 0.35), (6.46, 0.44), stroke: (paint: gray, thickness: 0.5pt))
  line((6.65, 0.35), (6.65, 0.44), stroke: (paint: gray, thickness: 0.5pt))

  // Oscilloscope echo trace shading
  line((4.68, 0.50), (4.78, 0.85), (4.88, 1.50), (4.98, 0.85), (5.08, 0.50), close: true, fill: red.transparentize(85%), stroke: none)
  line((5.48, 0.50), (5.58, 0.80), (5.68, 1.30), (5.78, 0.80), (5.88, 0.50), close: true, fill: red.transparentize(85%), stroke: none)
  line((6.25, 0.50), (6.35, 0.75), (6.45, 1.15), (6.55, 0.75), (6.65, 0.50), close: true, fill: red.transparentize(85%), stroke: none)

  // Oscilloscope echo trace
  line((4.55, 0.50), (4.68, 0.50), stroke: (paint: red, thickness: 0.9pt))
  bezier((4.68, 0.50), (4.88, 1.50), (4.78, 0.50), (4.80, 1.50), stroke: (paint: red, thickness: 0.9pt))
  bezier((4.88, 1.50), (5.08, 0.50), (4.96, 1.50), (4.98, 0.50), stroke: (paint: red, thickness: 0.9pt))
  line((5.08, 0.50), (5.48, 0.50), stroke: (paint: red, thickness: 0.9pt))
  bezier((5.48, 0.50), (5.68, 1.30), (5.58, 0.50), (5.60, 1.30), stroke: (paint: red, thickness: 0.9pt))
  bezier((5.68, 1.30), (5.88, 0.50), (5.76, 1.30), (5.78, 0.50), stroke: (paint: red, thickness: 0.9pt))
  line((5.88, 0.50), (6.25, 0.50), stroke: (paint: red, thickness: 0.9pt))
  bezier((6.25, 0.50), (6.45, 1.15), (6.35, 0.50), (6.37, 1.15), stroke: (paint: red, thickness: 0.9pt))
  bezier((6.45, 1.15), (6.65, 0.50), (6.53, 1.15), (6.55, 0.50), stroke: (paint: red, thickness: 0.9pt))
  line((6.65, 0.50), (6.85, 0.50), stroke: (paint: red, thickness: 0.9pt))

  // Labels
  content((0.30, 4.65), text(size: 11pt)[*Saldatura*], anchor: "west")
  content((1.25, 2.72), text(size: 8.5pt)[Controllo con], anchor: "center")
  content((1.25, 2.38), text(size: 8.5pt)[ultrasuoni], anchor: "center")
})
