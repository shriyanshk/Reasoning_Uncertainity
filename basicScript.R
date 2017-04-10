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
#This program will plot the image on RStudio and where ever you click it will give the pixel value.
library(raster)
stringName <- "C:/Users/shriy/Downloads/Project Reasoning Data/RimFire_AVIRIS_20130626_L3v1-ARI2.tif"
importRaster = raster(stringName)
print(importRaster)
plot(importRaster)
#click(importRaster)
pxy <-locator(1)
extract(importRaster, cbind(pxy$x, pxy$y))
