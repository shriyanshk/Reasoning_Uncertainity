library(arules)
library(plyr)
#read csv
lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterUpdated.csv", 
                      header = TRUE, sep = ",")
ncol(lidavdata)
newdata = lidavdata[,3:26]
print(ncol(newdata))
hist(x=newdata[,1], breaks=1, freq=TRUE, labels=TRUE)
#discretize
newdata1 = NULL
for(i in 1:ncol(newdata)){
#find cutpoints
  binneddata = discretize(newdata[,i], method="frequency", categories=2, labels=1:2, onlycuts=TRUE)

  print(length(binneddata))
  #if(length(binneddata) == 3){
    cuts <- cut(x=newdata[,i], breaks=binneddata, include.lowest=TRUE)


    newdata1 = cbind(newdata1, cuts)
    #newdata1[,i] = as.factor(newdata1[,i])
    #newdata1[,i]<- mapvalues(newdata1[,i], from = c(1,2), c("Low","High"))
    
  #}

}

colnames(newdata1) = colnames(newdata)

#write to csv
write.table(newdata1, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterFreq3.csv", 
            sep = ",", row.names=FALSE, qmethod = "double")

