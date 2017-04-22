library(arules)
#read csv
lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingBefore.csv", 
                      header = TRUE, sep = ",")
newdata = lidavdata[,3:29]
#discretize
for(i in colnames(newdata)){
#find cutpoints
  binneddata = discretize(newdata[,i], method="cluster", categories=5, onlycuts=TRUE)

  binneddata

  cuts <- cut(x=newdata[,i], breaks=binneddata, labels=1:5, include.lowest=TRUE)


  newdata[,i] = cuts

}



#write to csv
write.table(newdata, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingBeforeDiscretized.csv", 
            sep = ",", row.names=FALSE, qmethod = "double")

