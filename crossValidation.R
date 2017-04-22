library(data.table)
#cross-validation



lidavdata <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub3NoMissing1Date.csv", 
                      header = TRUE, sep = ",")
lidavdata1 <- data.table(lidavdata)
lidavdata1
for(i in 1:5){
  #split into train-test
  n <- nrow(lidavdata)
  testset <- lidavdata1[sample(.N, n/2)]
  trainset <- NULL
  for(j in 1:n){
    if(!nrow(merge(lidavdata1[j,],testset))>0){
      trainset <- rbind(trainset, lidavdata1[j,])
    }
  }
  testset <- as.data.frame.matrix(testset)
  trainset <- as.data.frame.matrix(trainset)
  print(testset)
  print(trainset)
  #train
  #test
  #store results
  #swap train test
  #train
  #test
  #store results
}

#t-test results