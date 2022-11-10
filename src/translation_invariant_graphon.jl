
"""
    TranslationInvariantGraphon{F} <: AbstractGraphon

A graphon whose kernel function satisfies `W(x,y) = f(x-y)`.

Such graphons have the nice property that their eigenbasis is the Fourier basis.
"""
struct TranslationInvariantGraphon{F} <: AbstractGraphon
    f::F
end

(tig::TranslationInvariantGraphon)(x,y) = tig.f(x-y)