library('rgdal')
DEM
DEM <- raster("Path of Image")
DEM
DEM <- setMinMax(DEM)
DEM
DEM@crs

area <- readOGR("Shape File")
area
print(coords(area))

#http://stackoverflow.com/questions/5480005/how-can-i-simply-load-a-greyscale-tiff-in-libtiff-and-get-an-array-of-pixel-inte
#https://www.rforge.net/doc/packages/tiff/readTIFF.html

#Another Approach
library(raster)
library(sp)
library(rgdal)
points = SpatialPoints(points,proj4string=CRS("+init=epsg:4326"))
points3 = pts3 = spTransform(pts2, projection(r))
print(points3) #get coordinates

#to extract pixels
#http://gis.stackexchange.com/questions/131554/how-to-locate-pixels-and-bands-of-image-in-r
