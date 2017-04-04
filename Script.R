> library('rgdal')
rgdal: version: 1.2-5, (SVN revision 648)
 Geospatial Data Abstraction Library extensions to R successfully loaded
 Loaded GDAL runtime: GDAL 2.0.1, released 2015/09/15
 Path to GDAL shared files: C:/Users/shriy/Documents/R/win-library/3.3/rgdal/gdal
 Loaded PROJ.4 runtime: Rel. 4.9.2, 08 September 2015, [PJ_VERSION: 492]
 Path to PROJ.4 shared files: C:/Users/shriy/Documents/R/win-library/3.3/rgdal/proj
 Linking to sp version: 1.2-4 
> DEM
Error: object 'DEM' not found
> DEM <- raster("D:/Shriyansh_PostGraduation/Semester 2/Reasoning Uncertainity/Project/Data/RimFireData1/RimFire_AVIRIS_20130626_L3v1-ARI2.tif")
> DEM
class       : RasterLayer 
dimensions  : 2926, 2282, 6677132  (nrow, ncol, ncell)
resolution  : 14.8, 14.8  (x, y)
extent      : 762694.4, 796468, 4177520, 4220825  (xmin, xmax, ymin, ymax)
coord. ref. : +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
data source : D:\Shriyansh_PostGraduation\Semester 2\Reasoning Uncertainity\Project\Data\RimFireData1\RimFire_AVIRIS_20130626_L3v1-ARI2.tif 
names       : RimFire_AVIRIS_20130626_L3v1.ARI2 

> DEM <- setMinMax(DEM)
> DEM
class       : RasterLayer 
dimensions  : 2926, 2282, 6677132  (nrow, ncol, ncell)
resolution  : 14.8, 14.8  (x, y)
extent      : 762694.4, 796468, 4177520, 4220825  (xmin, xmax, ymin, ymax)
coord. ref. : +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
data source : D:\Shriyansh_PostGraduation\Semester 2\Reasoning Uncertainity\Project\Data\RimFireData1\RimFire_AVIRIS_20130626_L3v1-ARI2.tif 
names       : RimFire_AVIRIS_20130626_L3v1.ARI2 
values      : -9999, 96.3965  (min, max)

> DEM@crs
CRS arguments:
 +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
> DEM@extent
class       : Extent 
xmin        : 762694.4 
xmax        : 796468 
ymin        : 4177520 
ymax        : 4220825 
> hist(DEM, main="Distribution of Values", col="purple", maxpixels=220000000)
> plot(DEM, main="Digital Elevation Model, SJER")
> image(DEM)