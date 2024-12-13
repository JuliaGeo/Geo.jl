using Geo
using Documenter

DocMeta.setdocmeta!(Geo, :DocTestSetup, :(using Geo); recursive=true)

makedocs(;
    modules=[Geo],
    authors="Geo contributors",
    sitename="Geo.jl",
    format=Documenter.HTML(;
        canonical="https://JuliaGeo.github.io/Geo.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaGeo/Geo.jl",
    devbranch="main",
)
