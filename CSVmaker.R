library(gdalUtils)
library(raster)
stringName <- "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/Lidar.tif"
importRaster <- raster(stringName)
#src_dataset <- system.file(stringName, package="gdalUtils")
# Raw output of a single coordinate:
gdallocationinfo(srcfile=stringName,x=10,y=10)
plot(importRaster)

importRaster
#716, 2207
df = NULL
for(i in 1698:1748){
  for(j in 1296:1346){
    print(i)
    print(j)
    df <- rbind(df,c(i,j,gdallocationinfo(srcfile=stringName, x=j,y=i,valonly=TRUE)))
  }
}
#print(df)
cnamlidar <- cbind("x", "y", "RBR-20131117", "RdNBR-20131117", "RBR-20140603", "RdNBR-20140603", 
                   "CanopyHeight1meter-20100721", "CountAll30meter-20100721", "CountFirst30meter-20100721",
                   "CoverFirst2m30m-20100721", "CoverAll2m30m-20100721", "CoverAll8m30m-20100721", 
                   "CoverAll16m30m-20100721", "CoverAll32m30m-20100721", "CoverAllAbove32m30m-20100721", 
                   "HeightMeanAll2m30m-20100721", "HeightP25All2m30m-20100721", "HeightP50All2m30m-20100721", 
                   "HeightP75All2m30m-20100721", "HeightP95All2m30m-20100721", "HeightStDevAll2m30m-20100721", 
                   "Intensity1m-20100721", "Intensity95Percent30m-20100721", "IntensityMean30m-20100721", 
                   "Rumple30m-20100721", "TopographyAspect30m-20100721", "TopographyElevation30m-20100721", 
                   "TopographySlope30m-20100721", "TopographySri30m-20100721", 
                   "CanopyHeight1meter-20131115", "CountAll30meter-20131115", "CountFirst30meter-20131115",
                   "CoverFirst2m30m-20131115", "CoverAll2m30m-20131115", "CoverAll8m30m-20131115", 
                   "CoverAll16m30m-20131115", "CoverAll32m30m-20131115", "CoverAllAbove32m30m-20131115", 
                   "HeightMeanAll2m30m-20131115", "HeightP25All2m30m-20131115", "HeightP50All2m30m-20131115", 
                   "HeightP75All2m30m-20131115", "HeightP95All2m30m-20131115", "HeightStDevAll2m30m-20131115", 
                   "Intensity1m-20131115", "Intensity95Percent30m-20131115", "IntensityMean30m-20131115", 
                   "Rumple30m-20131115", "TopographyAspect30m-20131115", "TopographyElevation30m-20131115", 
                   "TopographySlope30m-20131115", "TopographySri30m-20131115")
#cnam <- cbind("x", "y", 
#              "ARI1-20130626","ARI2-20130626", "ARVI-20130626", "CRI1-20130626", "CRI2-20130626", "EVI-20130626", 
#              "mCARI-20130626", "mCRIEE-20130626", "mCRIG-20130626", "mNDVI705-20130626", "mSAVI-20130626", "mSR705-20130626",
#              "NDLI-20130626", "NDNI-20130626", "NDVI-20130626", "NDVI705-20130626", "PRI-20130626", "PSRI-20130626",
#              "REPI-20130626", "RGRI-20130626", "SIPI-20130626", "SR-20130626", "VOG1-20130626", "WBI-20130626",
#              "ARI1-20131117","ARI2-20131117", "ARVI-20131117", "CRI1-20131117", "CRI2-20131117", "EVI-20131117", 
#              "mCARI-20131117", "mCRIEE-20131117", "mCRIG-20131117", "mNDVI705-20131117", "mSAVI-20131117", "mSR705-20131117",
#              "NDLI-20131117", "NDNI-20131117", "NDVI-20131117", "NDVI705-20131117", "PRI-20131117", "PSRI-20131117",
#              "REPI-20131117", "RGRI-20131117", "SIPI-20131117", "SR-20131117", "VOG1-20131117", "WBI-20131117",
#              "ARI1-20140603","ARI2-20140603", "ARVI-20140603", "CRI1-20140603", "CRI2-20140603", "EVI-20140603", 
#              "mCARI-20140603", "mCRIEE-20140603", "mCRIG-20140603", "mNDVI705-20140603", "mSAVI-20140603", "mSR705-20140603",
#              "NDLI-20140603", "NDNI-20140603", "NDVI-20140603", "NDVI705-20140603", "PRI-20140603", "PSRI-20140603",
#              "REPI-20140603", "RGRI-20140603", "SIPI-20140603", "SR-20140603", "VOG1-20140603", "WBI-20140603",
#              "RBR-20131117", "RdNBR-20131117", "RBR-20140603", "RdNBR-20140603")
#write.table(df, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/AvirisData/AVIRISsub2-6.csv", sep = ",", row.names=FALSE,
#            col.names = cnam, qmethod = "double")
write.table(df, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub15.csv", sep = ",", row.names=FALSE,
            col.names = cnamlidar, qmethod = "double")
