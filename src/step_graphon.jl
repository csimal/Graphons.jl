
"""
    StepGraphon{T<:AbstractMatrix} <: AbstractGraphon

A piecewise constant graphon.

The kernel function of such graphon is given by
```
W(x,y) = P[i,j]
```
with `q[i] ≤ x ≤ q[i+1]` and `q[j] ≤ y ≤ q[j+1]`.
"""
struct StepGraphon{T<:AbstractMatrix,U} <: AbstractGraphon
    P::T
    q::U
    function StepGraphon(P,q)
        any(length(q) .!= size(P)) || error("P and q must be the same size")
        new(P,sort(q))
    end
end

function (sg::StepGraphon)(x,y)
    i = searchsortedfirst(sg.q, x)
    j = searchsortedfirst(sg.q, y)
    sg.P[i,j]
end

function StepGraphon(gr::AbsractGraphon, n::Integer)
    P = Matrix(undef, n, n)
    q = sample_nodes(n, DeterministicNodes)
    for j in eachindex(q), i in eachindex(q)
        P[i,j] = gr(q[i], q[j])
    end
    return StepGraphon(P,q)
end