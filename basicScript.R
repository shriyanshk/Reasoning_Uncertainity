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
