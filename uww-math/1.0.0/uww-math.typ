#import "@preview/ctheorems:1.1.3": *

#let thm = thmbox(
  "theorem", "Theorem",
  fill: rgb("#dfbfff"),
  supplement: [Thm.]
)
#let cor = thmplain(
  "corollary", "Corollary",
  base: "theorem",
  titlefmt: strong,
  supplement: [Cor.]
)
#let defn = thmbox(
  "definition", "Definition",
  inset: (x: 1.2em, top: 1em),
  supplement: [Def.]
)
#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")


// Use: `#show: pset.with(...)` using the named arguments (all but `doc`)
#let pset(
  class_code: none,
  class_name: none,
  your_name: none,
  due: none,
  rest,
) = {
  set page(
    paper: "a4",
    header: [
      #class_code: #class_name
      #h(1fr)
      #due
      #h(1fr)
      #your_name
    ],
  )
  set text(size: 12pt)
  set enum(numbering: "1.a.i)", full: true)
  set math.equation(numbering: "(1)", supplement: [Eq.])

  set align(left)

  rest
}
