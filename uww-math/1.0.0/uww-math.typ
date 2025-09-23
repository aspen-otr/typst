#import "@preview/ctheorems:1.1.3": *

#let thm = thmbox(
  "theorem", "Theorem",
  fill: rgb("#dfbfff"),
  supplement: [Thm.]
)
#let lemma = thmbox(
  "lemma", "Lemma",
  fill: rgb("#dfbfff"),
  supplement: [Lem.]
)
#let prop = thmbox(
  "proposition", "Proposition",
  fill: rgb("#88cfd0"),
  supplement: [Prop.]
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

// Use: `#show: pset.with(...)` using the named arguments
#let pset(
  class_code: strong[_No Class Code_],
  class_name: strong[_No Class Name_],
  your_name: strong[_No Name_],
  due: strong[_No Due Date_],
  rest,
) = {
  set page(
    paper: "a4",
    header: [
      #smallcaps([#class_code: #class_name])
      #h(1fr)
      #due
      #h(1fr)
      #your_name
    ],
  )
  set text(size: 12pt)
  set enum(numbering: "1.a.i)", full: true)
  set heading(numbering: "1.1.a")
  set math.equation(numbering: "(1)", supplement: [Eq.])
  show sym.colon: $class("fence", colon)$ // Fixes colon spacing for $f: X -> Y$ and the like but preserves binop with $x : y$.

  set align(left)

  rest
}

#let notes(
  class_code: strong[_No Class Code_],
  class_name: strong[_No Class Name_],
  your_name: strong[_No Name_],
  semester: strong[_No Semester Marking_],
  rest,
) = {

  set align(center)

  [
    #set text(20pt)
    #class_name \
    #set text(15pt)
    Notes for #semester \
    #set text(12pt)
    #your_name
  ]

  set heading(numbering: "1.1)", supplement: [Sec.])
  set page(
    paper: "a4",
    header: [
      #smallcaps([#class_code: #semester])
      #h(1fr)
      #your_name
    ]
  )

  set text(size: 12pt)
  set enum(numbering: "1.a.i.")
  set math.equation(numbering: "(1)", supplement: [Eq.])
  show sym.colon: $class("fence", colon)$ // Fixes colon spacing for $f: X -> Y$ and the like but preserves binop with $x : y$.

  set align(left)

  rest
}
