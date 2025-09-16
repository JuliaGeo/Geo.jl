# Geo.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaGeo.github.io/Geo.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaGeo.github.io/Geo.jl/dev/)

[![Build Status](https://github.com/JuliaGeo/Geo.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/JuliaGeo/Geo.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/JuliaGeo/Geo.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/JuliaGeo/Geo.jl)
[![Julia](https://img.shields.io/badge/Julia-1.10%2B-blue)](https://julialang.org/)

A comprehensive meta package for the JuliaGeo ecosystem that provides easy access to the complete suite of geospatial data processing tools in Julia.

## Overview

Geo.jl is a meta package that aggregates the entire JuliaGeo ecosystem, making it simple to install and use all the essential geospatial libraries in Julia with a single package installation. Instead of manually installing many individual packages, Geo.jl provides a curated collection of compatible, well-tested geospatial tools.

## What's Included

Geo.jl brings together 10+ specialized geospatial packages, organized by functionality:

### Core Geospatial Libraries
- **ArchGDAL** - GDAL bindings for reading/writing geospatial data formats
- **GeoInterface** - Common interface for geospatial data types
- **GeometryOps** - Geometric operations and algorithms
- **LibGEOS** - High-performance geometric operations engine
- **Proj** - Coordinate reference system transformations

### Data Structures & Processing
- **DimensionalData** - Multi-dimensional labeled arrays
- **Extents** - Spatial extents and bounding boxes
- **Rasters** - Raster data handling and analysis
- **GeoDataFrames** - Geospatial data frames (vector data)

### File Format Support
- **GeoJSON** - GeoJSON format support
- **GeoParquet** - Parquet format for geospatial data
- **Shapefile** - ESRI Shapefile support
- **NCDatasets** - NetCDF data support
- **ZarrDatasets** - Zarr format support
- **WellKnownGeometry** - WKT/WKB geometry support

### Additional Tools
- **GeoFormatTypes** - Type definitions for geospatial formats
- **CommonDataModel** - Common data model for scientific data

## Installation

```julia
using Pkg
# install packages into your current environment
Pkg.add("Geo")          # add Geo
Pkg.add("CairoMakie")   # add Plotting
```

## Quick Start
### Raster data
```julia
# load a module
using Geo
using CairoMakie

# url to example raster file
path2raster = "https://github.com/rasterio/rasterio/raw/9953b28225db3b01193c94b1442d34b828d374aa/tests/data/RGB2.byte.tif"

# Load a raster
ras  = Geo.Raster(path2raster)

┌ 791×718×3 Raster{UInt8, 3} ┐
├────────────────────────────┴────────────────────────────────────────────────────────────────────────────────────────────────────── dims ┐
  ↓ X Projected{Float64} 101985.0:300.0379266750948:339014.9620733249 ForwardOrdered Regular Intervals{Start},
  → Y Projected{Float64} 2.82661495821727e6:-300.04178272980505:2.611485e6 ReverseOrdered Regular Intervals{Start},
  ↗ Band Categorical{Int64} 1:3 ForwardOrdered
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── metadata ┤
  Metadata{Rasters.GDALsource} of Dict{String, Any} with 1 entry:
  "filepath" => "/vsicurl/https://github.com/rasterio/rasterio/raw/9953b28225db3b01193c94b1442d34b828d374aa/tests/data/RGB2.byte.tif"
├───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────── raster ┤
  extent: Extent(X = (101985.0, 339315.0), Y = (2.611485e6, 2.826915e6), Band = (1, 3))
  crs: PROJCS["UTM Zone 18, Northern Hemisphere",GEOGCS["Unknown datum based upon the WGS 84 ellipsoid",DATUM["Not_specified_based_on_...
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘
[:, :, 1]
 ⋮      ⋱  
```

Plot Raster
```julia
heatmap(ras)
```
![Geo raster heatmap](https://private-user-images.githubusercontent.com/32276930/490279441-abcafbe2-1a5e-45d4-b4a0-bb6b1389b7d8.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTgwNjI0MzQsIm5iZiI6MTc1ODA2MjEzNCwicGF0aCI6Ii8zMjI3NjkzMC80OTAyNzk0NDEtYWJjYWZiZTItMWE1ZS00NWQ0LWI0YTAtYmI2YjEzODliN2Q4LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA5MTYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwOTE2VDIyMzUzNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTA0ZmZkMjI2OTc3ZDlhN2RmY2MxMWIxOGMwYmYzZWY4NTZhOWEwZWQ2NTEyNWE2ZDI5MzZmOWEwOWQ4YjdhMDEmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.48M-_lFEpQ53QabEl1KPeiaf_Jrg3HZEDGcSnB0vUGs)

### Vector data
```julia
path2vector = "https://github.com/martynafford/natural-earth-geojson/raw/refs/heads/master/10m/physical/ne_10m_coastline.json"
gdf = Geo.GeoDataFrames.read(path2vector)

  Row │ geometry                 featurecla  scalerank  min_zoom 
      │ IGeometr…                String      Int32      Float64  
──────┼──────────────────────────────────────────────────────────
    1 │ Geometry: wkbLineString  Coastline           0       0.0
    2 │ Geometry: wkbLineString  Coastline           0       0.0
    3 │ Geometry: wkbLineString  Coastline           6       5.0
  ⋮   │            ⋮                 ⋮           ⋮         ⋮
 4132 │ Geometry: wkbLineString  Coastline           6       0.5
 4133 │ Geometry: wkbLineString  Coastline           6       4.0
                                                4128 rows omitted
```

Plot geometry
```julia
plot(gdf.geometry)
```
![Geo vector plot](https://private-user-images.githubusercontent.com/32276930/490280772-bf3ba00f-5eeb-491c-a187-f43282d0986c.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTgwNjI4MzQsIm5iZiI6MTc1ODA2MjUzNCwicGF0aCI6Ii8zMjI3NjkzMC80OTAyODA3NzItYmYzYmEwMGYtNWVlYi00OTFjLWExODctZjQzMjgyZDA5ODZjLnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNTA5MTYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjUwOTE2VDIyNDIxNFomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTdkMTMxMGFhYWJmMDU4OTdmYzUwZTFmM2QzMDU3YjU1MzQwYmU3YjZkMTQwYjgzZDdhNWI3ZmI4MWY4YTkyZjImWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.Tkkvcx8zzxoCMjjlal2RrYubrPgdEmVakeimxuDrlfI)
```

## Key Benefits

- **One-Command Setup**: Install all geospatial tools with a single `Pkg.add("Geo")`
- **Compatibility Guaranteed**: All packages are tested for compatibility
- **Version Management**: Carefully curated version constraints prevent conflicts
- **Complete Ecosystem**: Access to the full JuliaGeo toolkit
- **Easy Updates**: Update all geospatial packages together