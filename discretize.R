library(binr)
#read csv
lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub3NoMissing1Date.csv", 
                      header = TRUE, sep = ",")
newdata = lidavdata[,3:29]
#discretize

binneddata = binneddata[!is.na(binneddata)]
binneddata = bins(x = newdata[,1], target.bins = 5, max.breaks=5)

tbl <- binneddata[6]
#newdata2 <- discretize(x=newdata1, method="frequency", categories=5, onlycuts=TRUE)
tbl

newdata2
#write to csv
write.table(df, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub1NoMissingDiscretized.csv", 
            sep = ",", row.names=FALSE, col.names = col.names(lidavdata), qmethod = "double")