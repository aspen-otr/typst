#let span = math.op("Span")
#let hom = math.op("Hom")
#let mor = math.op("Mor")
#let aut = math.op("Aut")
#let gl = math.op("GL")
#let sl = math.op("SL")
#let pgl = math.op("PGL")

#let diam = math.op("diam")

#let int = math.integral
#let oint = int.cont
#let iint = int.double
#let oiint = int.surf
#let iiint = int.triple
#let oiiint = int.vol
#let iiiint = int.quad

#let implies = math.arrow.r.double
#let impliedby = math.arrow.l.double

#let Int = math.op("Int")
#let Ext = math.op("Ext")
#let Cl = math.op("Cl")
#let Bd = math.op("Bd")

#let cl = math.overline
#let iso = math.tilde.equiv
#let sim = math.tilde.eq
#let cong = math.eq.triple

#let Sum = math.limits(math.sum)
#let prod = math.product
#let Prod = math.limits(prod)

#let eps = math.epsilon
#let del = math.partial

#let transpose(arg, ..rest) = { // Sketch asf...
  if rest.named().at("parens", default: false) or rest.named().at("p", default: false) {
    $(#arg)^T$
  } else {
    $#arg^T$
  }
}

#let cmp(arg, ..rest) = { // Sketch asf...
  if rest.named().at("parens", default: false) or rest.named().at("p", default: false) {
    $(#arg)^complement$
  } else {
    $#arg^complement$
  }
}

#let vfrac(..args) = [#math.frac(..args)<explicit-frac>]
#let pretty-frac(body) = {
    show math.frac: it => {
        if it.has("label") and it.label == <explicit-frac> {
            it
        } else {
            it.num + sym.slash + it.denom
        }
    }
    body
}

#let inv(ident) = $#ident^(-1)$

// List of what it would be in TeX in case I forget...
// Instead of `\not\symbol` it's usually `symbol.not`
// \mid: divides
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
