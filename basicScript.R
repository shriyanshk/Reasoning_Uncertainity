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