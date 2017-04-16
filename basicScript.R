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
r <- ('Image Path')
#Input the coordinates in the parenthesis
test.dat <- structure(list(latitude = c(), longitude = c()), .Names = c("latitude", "longitude"), class="data.frame")
points <- cbind(test.data$longitude, test.dat$latitude) 
pts2 <- SpatialPoints(points,proj4string=CRS("+init=epsg:4326"))
pts3 <- spTransform(pts2, projection(r))
coordinates(pts3)

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

#To read about bands
library(raster)
RasterObject <- raster("C:/Users/shriy/Downloads/Project Reasoning Data/RimFire_AVIRIS_20130626_L3v1-mCRIG.tif")
RasterObject

#class       : RasterLayer 
#dimensions  : 2926, 2282, 6677132  (nrow, ncol, ncell)
#resolution  : 14.8, 14.8  (x, y)
#extent      : 762694.4, 796468, 4177520, 4220825  (xmin, xmax, ymin, ymax)
#coord. ref. : +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
#data source : C:\Users\shriy\Downloads\Project Reasoning Data\RimFire_AVIRIS_20130626_L3v1-mCRIG.tif 
#names       : RimFire_AVIRIS_20130626_L3v1.mCRIG 

plot(RasterObject, main="Tiff Image")
crs(RasterObject)
#CRS arguments:
#  +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
myCRS <- crs(RasterObject)
myCRS
#CRS arguments:
#  +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
minValue(RasterObject)
#[1] NA
#Warning message:
#  In .local(x, ...) : min value not known, use setMinMax
RasterObject <- setMinMax(RasterObject)
minValue(RasterObject)
#[1] -154701.8
maxValue(RasterObject)
#[1] Inf
hist(RasterObject)
#Warning message:
#  In .hist1(x, maxpixels = maxpixels, main = main, plot = plot, ...) :
#  1% of the raster cells were used. 100000 values used.
ncell(RasterObject)
#[1] 6677132
hist(RasterObject, maxpixels=ncell(RasterObject))
nlayers(RasterObject)
#[1] 1
GDALinfo("C:/Users/shriy/Downloads/Project Reasoning Data/RimFire_AVIRIS_20130626_L3v1-mCRIG.tif")
#rows        2926 
#columns     2282 
#bands       1 
#lower left origin.x        762694.4 
#lower left origin.y        4177520 
#res.x       14.8 
#res.y       14.8 
#ysign       -1 
#oblique.x   0 
#oblique.y   0 
#driver      GTiff 
#projection  +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
#file        C:/Users/shriy/Downloads/Project Reasoning Data/RimFire_AVIRIS_20130626_L3v1-mCRIG.tif 
#apparent band summary:
#  GDType hasNoDataValue NoDataValue blockSize1 blockSize2
#1 Float32          FALSE           0        128        128
#apparent band statistics:
#  Bmin       Bmax Bmean Bsd
#1 -4294967295 4294967295    NA  NA
#Metadata:
#  AREA_OR_POINT=Area 
#Warning message:
#  statistics not supported by this driver 
RGB_band1 <- raster("C:/Users/shriy/Downloads/Project Reasoning Data/RimFire_AVIRIS_20130626_L3v1-mCRIG.tif")
grayscale_colors <- gray.colors(100, start = 0.0, end = 1.0, gamma = 2.2, alpha = NULL)
plot(RGB_band1, col=grayscale_colors, axes=FALSE)
grayscale_colors <- gray.colors(100, start = 0.3, end = 0.5, gamma = 2.2, alpha = NULL)
plot(RGB_band1, col=grayscale_colors, axes=FALSE)
RGB_band1
#class       : RasterLayer 
#dimensions  : 2926, 2282, 6677132  (nrow, ncol, ncell)
#resolution  : 14.8, 14.8  (x, y)
#extent      : 762694.4, 796468, 4177520, 4220825  (xmin, xmax, ymin, ymax)
#coord. ref. : +proj=utm +zone=10 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs 
#data source : C:\Users\shriy\Downloads\Project Reasoning Data\RimFire_AVIRIS_20130626_L3v1-mCRIG.tif 
#names       : RimFire_AVIRIS_20130626_L3v1.mCRIG 

nbands(RGB_band1)
