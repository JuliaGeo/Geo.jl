module Geo

    using DimensionalData 
    using GeoDataFrames
    using GeoFormatTypes
    using GeoInterface
    using GeometryOps
    using Extents
    using Proj
    using Rasters

    import ArchGDAL
    import GeoJSON
    import GeoParquet
    import NCDatasets
    import LibGEOS
    import Shapefile
    import ZarrDatasets
    import WellKnownGeometry

    import DimensionalData as DD
    import GeoDataFrames as GDF
    import GeoFormatTypes as GFT
    import GeoInterface as GI
    import GeometryOps as GO

    export DD, GDF, GFT, GO, GI, Extents, Proj, Rasters


end
