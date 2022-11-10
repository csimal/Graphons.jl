module Graphons

using Graphs
using ApproxFun
using Quadrature
using KernelFunctions
using RecipesBase

include("AbstractGraphon.jl")
export AbstractGraphon
export ExchangeableNodes, DeterministicNodes
export sample

include("kernel_graphons.jl")
export KernelGraphon

include("step_graphon.jl")
export StepGraphon

include("translation_invariant_graphon.jl")
export TranslationInvariantGraphon

end
