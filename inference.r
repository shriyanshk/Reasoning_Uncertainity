#library(RandomFields)
source("https://bioconductor.org/biocLite.R")
biocLite("graph")
biocLite("RBGL")
biocLite('Rgraphviz')
library(RandomFieldsUtils)
library(pcalg)
#fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub1NoMissingDiscretized.csv", header = TRUE, sep = ",")
#fileVariable1 <- as.matrix(fileVariable)

#Model Name for loglikelihood
#model <- RMexp()
#pts <- 2601
#repeat <- 2601
#x <- runif(n=pts, min=0, max=1)
#y <- runif(n=pts, min=0, max=1)
#data <- as.matrix(RFsimulate(model,x,y,data = fileVariable$ARI1.20130626))
#data <- cbind(x, y, fileVariable[3:74])

#for(i in names(fileVariable[3:74])){
#  columnName <- fileVariable[i]
#  #print(columnName)
#  numberVariables <- length(fileVariable$ARI1.20130626)
#  print(numberVariables)
#  graphSparseness <- 0.4
#  g <- randDAG(numberVariables, graphSparseness)
#  backdoor(amat,x,y,type = "cpdag")
#  g01 <- 1*(as(g,"matrix")>0)
#  system.time(res <- dag2cpdag(g))
#  print.table(as(res, "matrix"), zero.=".")
  #testing <- RFlikelihood(model,x,y,data = columnName)
  #print(testing)
#}
#set.seed(10)
#n <- nrow(fileVariable)
#y <- colnames(fileVariable)
#x= as.data.frame(matrix(rnorm(fileVariable$RBR.20131117),ncol = length(y)))
#print(n)
#print(length(y))
#print(length(x))
#print(cor(x[sapply(x, is.double)]))
#suffStat = list(C = cor(x), n = n)
#pc.fit <- pc(suffStat, indepTest = gaussCItest, alpha = 0.01, labels = y, verbose = TRUE)

  
#par(mfrow=c(1,2))
#par(mar=c(1,1,1,1))
#plot(pc.fit, main = "Estimated CPDAG")
#plot(fileVariable, main = "True DAG")
#library(RandomFields)
#library(RandomFieldsUtils)
#library(pcalg)

fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub3NoMissing1Date.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#set.seed(50)
numberOfRows <- nrow(fileVariable[3:29])
labelName <- colnames(fileVariable[3:29])

#Normality
test <- apply(fileVariable[3:29], 2, shapiro.test)
print(sapply(test, function(x) unlist(x[c("statistic", "p.value")])))

  x <- as.data.frame(matrix(fileVariable[3:29] ,ncol = length(labelName)))
  suffStat <- list(C = cor(fileVariable[3:29]), n = numberOfRows)
  #pc.fit <- pc(suffStat, indepTest = gaussCItest, alpha = 0.01, labels = labelName, verbose = TRUE)
  skel.fit <- skeleton(suffStat, indepTest = gaussCItest, p = ncol(fileVariable[3:29]), labels = labelName, alpha = 0.01)
  #if (require(Rgraphviz)) {
  skel.fit
    par(mfrow=c(1,1))
    #plot(fileVariable$RBR.20131117, main = "True DAG")
    plot(skel.fit, main = "Estimated CPDAG")
    
 # }
