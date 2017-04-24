#library(RandomFields)
source("https://bioconductor.org/biocLite.R")
biocLite("graph")
biocLite("RBGL")
biocLite('Rgraphviz')
#library(RandomFieldsUtils)
library(pcalg)
library(CRF)
library(data.table)
library(caret)
fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARNoMissingAfterDiscretized.csv", header = TRUE, sep = ",")
#for(i in 1:ncol(fileVariable)){
 # hist(x=fileVariable[,i], breaks=6, freq=TRUE, labels=TRUE, main=colnames(fileVariable[i]))
#}
#fileVariable <- read.csv(file="C:/Users/shriy/Downloads/drive-download-20170420T000155Z-001/LIDARsub1-2.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#set.seed(50)
inferrunner <- function(trainset, testset, runnum){
  numberOfRows = nrow(trainset)
  suffStat <- list(C = cor(trainset), n = numberOfRows)
  
  #pc.fit <- pc(suffStat, indepTest = gaussCItest, alpha = 0.01, labels = labelName, verbose = TRUE)
  
  skel.fit <- skeleton(suffStat, indepTest = gaussCItest, p = ncol(trainset), alpha = 0.01)
  #Print Adjacency Matrix
  adjmat <- as(skel.fit, "amat")
  
  n.states = 5
  mrf.new <- make.crf(adjmat, n.states)
  mrf.new <- make.features(mrf.new)
  mrf.new <- make.par(mrf.new, 121)
  
  #mrf.new <- make.par(mrf.new, 4)
  
  for (i in 1:(mrf.new$n.edges)){
    mrf.new$edge.par[[i]][1,1,1] <- 1
    mrf.new$edge.par[[i]][1,2,1] <- 2
    mrf.new$edge.par[[i]][1,3,1] <- 3
    mrf.new$edge.par[[i]][1,4,1] <- 4
    mrf.new$edge.par[[i]][1,5,1] <- 5
    mrf.new$edge.par[[i]][2,1,1] <- 6
    mrf.new$edge.par[[i]][2,2,1] <- 7
    mrf.new$edge.par[[i]][2,3,1] <- 8
    mrf.new$edge.par[[i]][2,4,1] <- 9
    mrf.new$edge.par[[i]][2,5,1] <- 10
    mrf.new$edge.par[[i]][3,1,1] <- 11
    mrf.new$edge.par[[i]][3,2,1] <- 12
    mrf.new$edge.par[[i]][3,3,1] <- 13
    mrf.new$edge.par[[i]][3,4,1] <- 14
    mrf.new$edge.par[[i]][3,5,1] <- 15
    mrf.new$edge.par[[i]][4,1,1] <- 16
    mrf.new$edge.par[[i]][4,2,1] <- 17
    mrf.new$edge.par[[i]][4,3,1] <- 18
    mrf.new$edge.par[[i]][4,4,1] <- 19
    mrf.new$edge.par[[i]][4,5,1] <- 20
    mrf.new$edge.par[[i]][5,1,1] <- 21
    mrf.new$edge.par[[i]][5,2,1] <- 22
    mrf.new$edge.par[[i]][5,3,1] <- 23
    mrf.new$edge.par[[i]][5,4,1] <- 24
    mrf.new$edge.par[[i]][5,5,1] <- 25
  }
  count = 26
  for(i in 1:mrf.new$n.nodes){
    for(j in 1:4){
      mrf.new$node.par[i,j,1] <- count
      count = count + 1
    }
  }
  mrf.new <- train.mrf(mrf.new, as.matrix(trainset), nll = mrf.nll, infer.method = infer.tree, trace = 0)
  mrf.new$node.pot <- mrf.new$node.pot / rowSums(mrf.new$node.pot)
  for(i in 1:(mrf.new$n.edges)){
    
    mrf.new$edge.pot[[i]] <- mrf.new$edge.pot[[i]] / rowSums(mrf.new$edge.pot[[i]])
    
  }
  inferlist <- NULL
  reallist <- NULL
  #i = 1
  for(i in 1:nrow(testset)){
    res = NULL
    testrow <- testset[i,]
    #print(testrow[1,])
    realres = NULL
    
      testrow[1,j] = 0
      realres = cbind(realres, testset[i,j])
    
    reallist <- rbind(reallist, realres)
    res <- clamp.crf(mrf.new, c(testrow))
    inf <- infer.tree(res)
    ind = NULL
    for(j in 1:nrow(inf$node.bel)){
      ind = cbind(ind, which.max(inf$node.bel[j,]))
    }
    
    inferlist <- rbind(inferlist, ind)
    
  }
  performancelist <- NULL
  #print(inferlist)
  #Compute performance metrics
  colvar <- c()
  for(j in 1:ncol(inferlist)){
    mat<- table(factor(inferlist[,j], levels=min(reallist):max(reallist)),factor(reallist[,j], levels=min(reallist):max(reallist)))
    #mat<- confusionMatrix(reallist[,j], inferlist[,j])
    mat <- as.data.frame.matrix(mat)
    prec = 0
    rec = 0
    acc = 0
    for(k  in nrow(mat)){
      s1 <- sum(mat[,k])
      s2 <- sum(mat[k,])
      preci <- mat[k,k]/s1
      reci <- mat[k,k]/s2
      acc =acc+ mat[k,k]
      prec = prec + preci
      rec = rec + reci
    }
    #accuracy
    acc = acc/nrow(inferlist)
    #precision
    prec = prec/nrow(mat)
    #recall
    rec = rec/nrow(mat)
    #f1 score
    f1 = (2*prec*rec)/(prec+rec)
    
    scores <- cbind(j, runnum, acc, prec, rec, f1)
    
    performancelist = rbind(performancelist, scores)
  }
  
  colnames(performancelist) <- c("Variable", "Run Number", "Accuracy", "Precision", "Recall", "F1-score")
  #rownames(performancelist) <- c(rownames(performancelist), paste0("RBR1-", runnum),paste0("RdNBR1-", runnum),paste0("RBR2-", runnum),paste0("RdNBR2-", runnum))
  
  #The method below is just to split plot in 1,1 or 1,2 to print
  par(mfrow=c(1,1))
  #prints graph with unidirectional edges
  plot(skel.fit, main = "Estimated CPDAG")
  return(performancelist)
}  

fileVariable1 <- data.table(fileVariable)
n <- nrow(fileVariable1)
results <- NULL
runcount = 0
for(i in 1:5){
  runcount = runcount + 1
  testset1 <- fileVariable1[sample(.N, n/2)]
  
  trainset1 <- NULL
  for(j in 1:n){
    if(!nrow(merge(fileVariable1[j,],testset1))>0){
      trainset1 <- rbind(trainset1, fileVariable1[j,])
    }
  }
  testset1 <- as.data.frame.matrix(testset1)
  trainset1 <- as.data.frame.matrix(trainset1)
  res1 <- inferrunner(trainset=trainset1, testset=testset1, runnum=runcount)
  runcount = runcount + 1
  res2 <- inferrunner(trainset=testset1, testset=trainset1, runnum=runcount)
  
  results<- rbind(results, res1)
  results<-rbind(results, res2)
}

write.table(results, file = "C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/results/NSAfterTreeFreq.csv", 
            sep = ",", row.names=FALSE, qmethod = "double")
