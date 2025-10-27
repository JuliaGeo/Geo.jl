module Geo

# Core tools with names you can access with e.g. Geo.func
using DimensionalData
using Extents
using GeoDataFrames
using GeoFormatTypes
using GeoInterface
using GeometryOps
using Proj
using Rasters
using GeoInterface.Wrappers

# These packages are used under the hood for geometry data
import GeoJSON
import GeoParquet
import Shapefile
import WellKnownGeometry

# These are for loading raster/gridded data
import NCDatasets
import ZarrDatasets

# ArchGDAL is used for everything
import ArchGDAL

# LibGeos is used for some additional methods GeometryOps doesn't have yet
import LibGEOS

# Clarifications: where multiple names are available
using GeoDataFrames: read
using GeoInterface: convert, extent # This extent knows how to calculate when not availablae

# public
# Mark all the names from `using Package` packages as public
# This means accessing the docs wont have a warning.
macro mark_public(modulename::Symbol)
    mod = getfield(Geo, modulename)
    namesvec = names(mod)
    return Expr(:public, esc.(namesvec)...) 
end

@mark_public DimensionalData
@mark_public Extents
@mark_public GeoDataFrames
@mark_public GeoFormatTypes
@mark_public GeoInterface
@mark_public GeometryOps
@mark_public Proj
@mark_public Rasters
@mark_public Wrappers # GeoInterface.Wrappers

end
