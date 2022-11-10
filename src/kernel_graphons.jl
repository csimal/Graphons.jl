
"""
    KernelGraphon{F} <: AbstractGraphon

A graphon characterized by its kernel function `W(x,y)`.
"""
struct KernelGraphon{F} <: AbstractGraphon
    kernel::F
end

(kg::KernelGraphon)(x,y) = kg.kernel(x,y)