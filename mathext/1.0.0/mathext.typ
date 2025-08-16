#let span = math.op("Span")
#let hom = math.op("Hom")
#let mor = math.op("Mor")
#let aut = math.op("Aut")
#let gl = math.op("GL")
#let sl = math.op("SL")
#let pgl = math.op("PGL")

#let eps = [epsilon] // Or no [ ... ] around it?
#let transpose(arg, ..rest) = { // Sketch asf...
  if rest.named().parens {
    [#arg^T]
  } else {
    [(#arg)^T]
  }
}

// List of what it would be in TeX in case I forget...
// Instead of `\not\symbol` it's usually `symbol.not`
// \mid divides
// \cup: union -->> union.big
// \cap: inter -->> inter.big
// \setminus: without
// \leadsto: ~>
// \iff: <=>
// \implies: =>
// \impliedby: <=
// \ne: !=
// \sim: ~
// \simeq: tilde.eq
// \cong: tilde.equiv
// \ocirc: compose
// \varepsilon: epsilon
// \propto: prop
// \prod: product
// \coprod: product.co
// \su{b,p}seteq: su{b,p}set.eq
// \partial: diff
