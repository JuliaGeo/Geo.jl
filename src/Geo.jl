module Geo

# Core tools with names you can access with e.g. Geo.func
using Extents
using Proj
using GeoFormatTypes
using GeoInterface
using GeoInterface.Wrappers: Wrappers, Point, LineString, LinearRing, Polygon, MultiPoint, MultiLineString, MultiPolygon

# These packages are used under the hood for geometry data
import GeometryOps
import GeoDataFrames
import GeoJSON
import GeoParquet
import Shapefile
import WellKnownGeometry

# These are for loading raster/gridded data
import Rasters
import DimensionalData
import NCDatasets
import ZarrDatasets

# ArchGDAL is used for everything
import ArchGDAL

# LibGeos is used for some additional methods GeometryOps doesn't have yet
import LibGEOS

# Clarifications: where multiple names are available
using GeoDataFrames: read, write
using GeoInterface: convert, extent # This extent knows how to calculate when not available


# public declarations for julia 1.11 +
# Mark all the names from `using Package` packages as public
# This means accessing the docs wont have a warning.
macro mark_public(modulename::Symbol, skip=Symbol[])
    mod = getfield(Geo, modulename)
    namesvec = setdiff(names(mod), skip)
    return Expr(:public, esc.(namesvec)...) 
end

@static if VERSION >= v"1.11"

@mark_public Extents
@mark_public GeoFormatTypes
@mark_public GeoInterface
@mark_public GeometryOps
@mark_public Proj
@mark_public Rasters [:points, :dimwise]
@mark_public Wrappers # GeoInterface.Wrappers

# There seems to be a bug in the parser on at least 1.11
# so that plain `public read, write` errors inside this if block
# The solution is to just eval the expression

# GeoDataFrames: mostly to avoid having createline/createpolygon etc here
# Are the other methods we need?
@eval Expr(:public, :read, :write)
# DD just has too many things, and mostly we get them from Rasters
@eval Expr(:public, :DimPoints, :DimSelectors, :DimIndices, DimTable)

end


end
