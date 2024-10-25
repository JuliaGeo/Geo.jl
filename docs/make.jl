using JuliaGeo
using Documenter

DocMeta.setdocmeta!(JuliaGeo, :DocTestSetup, :(using JuliaGeo); recursive=true)

makedocs(;
    modules=[JuliaGeo],
    authors="JuliaGeo contributors",
    sitename="JuliaGeo.jl",
    format=Documenter.HTML(;
        canonical="https://JuliaGeo.github.io/JuliaGeo.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaGeo/JuliaGeo.jl",
    devbranch="main",
)
