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
Pkg.add("Geo")
```

## Quick Start

```julia
using Geo

# Now you have access to all JuliaGeo packages
using ArchGDAL, GeoDataFrames, Rasters, GeoJSON

# Load a raster
raster = Rasters.Raster("elevation.tif")

# Read a shapefile
gdf = GeoDataFrames.read("data.shp")

# Parse GeoJSON
geojson = GeoJSON.read("features.geojson")
```

## Key Benefits

- **One-Command Setup**: Install all geospatial tools with a single `Pkg.add("Geo")`
- **Compatibility Guaranteed**: All packages are tested for compatibility
- **Version Management**: Carefully curated version constraints prevent conflicts
- **Complete Ecosystem**: Access to the full JuliaGeo toolkit
- **Easy Updates**: Update all geospatial packages together


## Documentation

- [**Stable Documentation**](https://JuliaGeo.github.io/Geo.jl/stable/) - Latest stable release
- [**Development Documentation**](https://JuliaGeo.github.io/Geo.jl/dev/) - Current development version

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

- **Documentation**: [JuliaGeo.github.io/Geo.jl](https://JuliaGeo.github.io/Geo.jl/)
- **Issues**: [GitHub Issues](https://github.com/JuliaGeo/Geo.jl/issues)
- **Discussions**: [GitHub Discussions](https://github.com/JuliaGeo/Geo.jl/discussions)
- **Julia Discourse**: [JuliaGeo category](https://discourse.julialang.org/c/domain/geo)
