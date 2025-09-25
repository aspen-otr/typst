#import "@preview/theorion:0.4.0": *
#import "@local/mathext:1.0.1": *

#let spacing-fixes(rest) = {
    show sym.colon: $class("fence", colon)$
    show sym.tilde: $class("fence", ~)$
    rest
}

#let pset(
    class_name: [*No `class_name` Given*],
    class_code: [*No `class_code` Given*],
    class_cat: [*No `class_cat` Given*],
    name: [*No `name` Given*],
    due: [*No `due` Given*],
    rest
) = {
    show: show-theorion
    show: spacing-fixes
    show: pretty-frac

    set document(
        title: [#class_name Problem Set],
        author: name,
        description: [UWW Math Department Problem Set],
        date: due
    )

    set page(
        paper: "a4",
        header: [
            #smallcaps([#class_cat #class_code: #class_name])
            #h(1fr)
            #due.display("[month repr:long] [day]")
            #h(1fr)
            #name
        ],
        numbering: "1",
        number-align: right
    )

    set align(left)
    set text(size: 12pt)

    set enum(numbering: "1.a.i)", full: true)
    set heading(numbering: "1.1.a.")
    set math.equation(numbering: "1", supplement: [Eq.])

    rest
}

#let notes(
    class_name: [*No `class_name` Given*],
    class_code: [*No `class_code` Given*],
    class_cat: [*No `class_cat` Given*],
    name: [*No `name` Given*],
    semester: [*No `semester` Given*],
    rest
) = {
    show: show-theorion
    show: spacing-fixes
    show: pretty-frac

    set page(paper: "a4", numbering: "(1)")

    set align(center)
    set text(20pt)

    [
        #class_name\
        #set text(16pt)
        #class_cat #class_code: #semester\
        #set text(13pt)
        #name
    ]

    set align(left)
    set text(12pt)

    set enum(numbering: "1.a.i)", full: true)
    set heading(numbering: "1.1.a.")
    set math.equation(numbering: "(1)", supplement: [Eq.])

    rest
}
