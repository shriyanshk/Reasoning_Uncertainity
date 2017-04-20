library(arules)
#read csv
lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub3NoMissing.csv", 
                      header = TRUE, sep = ",")
#discretize
newdata <- discretize(lidavdata, "cluster", categories=5)

newdata
#write to csv
write.table(df, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub3NoMissing.csv", 
            sep = ",", row.names=FALSE, col.names = col.names(lidavdata), qmethod = "double")