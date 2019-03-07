module BlockDecomposition

using JuMP, DataStructures

export BlockModel

include("axis.jl")
include("annotations.jl")
include("tree.jl")
include("decomposition.jl")

function BlockModel(args...)
    m = JuMP.Model(args...)
    JuMP.set_optimize_hook(m, register_decomposition)

    return m
end


end # module
