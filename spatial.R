lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterUpdated.csv", 
                      header = TRUE, sep = ",")
distance <- function(x1, y1, x2, y2){
  return(sqrt(((x1-x2)^2)+((y1-y2)^2)))
}
newdata <- NULL
for(i in (nrow(lidavdata)/3):(2*(nrow(lidavdata)/3))){
  pointlist = NULL
  for(j in (nrow(lidavdata)/3):(2*(nrow(lidavdata)/3))){
    if(i!=j){
      #Check that distance is less than 1.5
      if(distance(lidavdata[i,1], lidavdata[i,2], lidavdata[j,1], lidavdata[j,2]) < 1.5){
        pointlist <- rbind(pointlist, lidavdata[j,])
      }
    }
  }
  
  if(!is.null(pointlist)){
    
    if(nrow(pointlist) == 8){
      print(i)
      pointlist <- pointlist[order(pointlist[,1], pointlist[,2]),]
      newpoint <- lidavdata[i, ]
      toadd <- pointlist[4:26]
      for(k in 1:nrow(pointlist)){
          newpoint <- cbind(newpoint, c(toadd[k,]))
        
      }
      
      newdata <- rbind(newdata, newpoint)
    }
  }
}

write.table(newdata, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterSpatial2.csv", 
            sep = ",", row.names=FALSE, qmethod = "double")
