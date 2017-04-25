#SVM
library(e1071)
library(data.table)

#cross-validation

fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterFreq.csv", 
                         header = TRUE, sep = ",")
#for(i in ncol(fileVariable)){
#  fileVariable[,i] <- as.factor(fileVariable[,i])
#}
fileVariable1 <- data.table(fileVariable)
testset = fileVariable[1:8346, ]
runsvm <- function(trainset, testset){
  #svm_model <- svm( RBR.20140603 ~ ., data=trainset)
  n1 = nrow(testset)
  print(n1)
  pred1<-round(rnorm(n=n1, mean=3, sd=0.75), digits=0)
  #pred1 <- predict(svm_model, testset)
  print(pred1)
  #for(i in 1:nrow())
  x <- factor(testset[,1], levels=min(1):max(5))
  y <- factor(pred1, levels=min(1):max(5))
  mat<- table(x,y)
  #points(testset[,3], pred1, col = "red", pch=4)
  #mat<- confusionMatrix(reallist[,j], inferlist[,j])
  print(mat)
  
  mat <- as.data.frame.matrix(mat)
  prec = 0
  rec = 0
  accur = 0
  for(k  in 1:nrow(mat)){
    print(mat[k,k])
    s1 <- sum(mat[,k])
    s2 <- sum(mat[k,])
    preci <- mat[k,k]/s1
    reci <- mat[k,k]/s2
    accur <- accur + mat[k,k]
    prec <- prec + preci
    rec <- rec + reci
  }
  
  #accuracy
  accur <- accur/length(pred1)
  #precision
  
  prec <- prec/nrow(mat)
  #recall
  rec <- rec/nrow(mat)
  #f1 score
  f1 <- (2*prec*rec)/(prec+rec)
  scores <- cbind(accur, prec, rec, f1)
  print(scores)
  return(scores)
  
}
performancelist <- NULL
for(i in 1:5){
  #split into train-test
  print(i)
  n <- nrow(fileVariable)
  testset <- fileVariable1[sample(.N)]
  trainset <- testset[1:n/2,]
  #for(j in 1:n){
  #  if(!nrow(merge(fileVariable1[j,],testset))>0){
   #   trainset <- rbind(trainset, fileVariable1[j,])
    #}
  #}
  testset <- as.data.frame.matrix(testset[n/2:n,])
  trainset <- as.data.frame.matrix(trainset)
  
  print("datasets generated")
  p1 <- runsvm(trainset, testset)
  p2 <- runsvm(testset, trainset)
  performancelist <- rbind(performancelist, p1)
  performancelist <- rbind(performancelist, p2)
  
}
#print(performancelist)
colnames(performancelist) <- c("Accuracy", "Precision", "Recall", "F1-score")
write.table(performancelist, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/results/NSAfterNorm2Freq.csv", 
            sep = ",", row.names=FALSE, qmethod = "double")
#t-test results

## 