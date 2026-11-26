// Helper per figure sicure e flag automatici (installato in figs/_helpers.typ)
#import "_index.typ": fig-registry

#let fig-safe(body, max-h: 6cm, caption: none) = layout(size => {
  let m = measure(body)
  let kw = if m.width > 0pt { size.width / m.width } else { 1 }
  let kh = if m.height > 0pt { max-h / m.height } else { 1 }
  let k = calc.min(1, kw, kh)
  figure(scale(k * 100%, body, reflow: true), caption: caption)
})

#let img-flag(id, pagina: none, src: none, kind: none, desc: "", max-h: 6cm, caption: none) = {
  let cap = if caption != none { caption } else { none }
  if id in fig-registry {
    let entry = fig-registry.at(id)
    if entry.type == "typ" {
      fig-safe(include (entry.path), max-h: max-h, caption: cap)
    } else if entry.type == "png" {
      fig-safe(image(entry.path), max-h: max-h, caption: cap)
    }
  } else {
    block(
      width: 100%,
      inset: 8pt,
      radius: 3pt,
      fill: luma(248),
      stroke: (dash: "dashed", thickness: 0.7pt, paint: luma(140)),
    )[
      #text(size: 8.5pt, fill: luma(80))[
        *Figura da generare:* `#raw(id)`
        #if pagina != none [ (pag. #pagina)]
        #if desc != "" [ — #desc]
      ]
    ]
  }
}
