using Graphons
using Documenter

DocMeta.setdocmeta!(Graphons, :DocTestSetup, :(using Graphons); recursive=true)

makedocs(;
    modules=[Graphons],
    authors="Cédric Simal, University of Namur",
    repo="https://github.com/csimal/Graphons.jl/blob/{commit}{path}#{line}",
    sitename="Graphons.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://csimal.github.io/Graphons.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/csimal/Graphons.jl",
    devbranch="main",
)
