#library(RandomFields)
source("https://bioconductor.org/biocLite.R")
biocLite("graph")
biocLite("RBGL")
biocLite('Rgraphviz')
library(RandomFieldsUtils)
library(pcalg)
library(CRF)
fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub1NoMissingDiscretized.csv", header = TRUE, sep = ",")

#fileVariable <- read.csv(file="C:/Users/shriy/Downloads/drive-download-20170420T000155Z-001/LIDARsub1-2.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#set.seed(50)
numberOfRows <- nrow(fileVariable)
labelName <- colnames(fileVariable)
#Normality
test <- apply(fileVariable, 2, shapiro.test)
#prints Normality
print(sapply(test, function(x) unlist(x[c("statistic", "p.value")])))
#converts the csv values to data frame
x <- as.data.frame(matrix(fileVariable ,ncol = length(labelName)))
suffStat <- list(C = cor(fileVariable), n = numberOfRows)

#pc.fit <- pc(suffStat, indepTest = gaussCItest, alpha = 0.01, labels = labelName, verbose = TRUE)

skel.fit <- skeleton(suffStat, indepTest = gaussCItest, p = ncol(fileVariable), labels = labelName, alpha = 0.01)
#Print Adjacency Matrix
adjmat <- as(skel.fit, "amat")
n.states = 5
mrf.new <- make.crf(adjmat, n.states)
mrf.new <- make.features(mrf.new)
mrf.new <- make.par(mrf.new, 26)

#mrf.new <- make.par(mrf.new, 4)
mrf.new$node.par[5,1,1] <- 1
for (i in 1:(mrf.new$n.edges-1)){
  mrf.new$edge.par[[i]][1,1,1] <- 2
  mrf.new$edge.par[[i]][1,2,1] <- 3
  mrf.new$edge.par[[i]][1,3,1] <- 4
  mrf.new$edge.par[[i]][1,4,1] <- 5
  mrf.new$edge.par[[i]][1,5,1] <- 6
  mrf.new$edge.par[[i]][2,1,1] <- 7
  mrf.new$edge.par[[i]][2,2,1] <- 8
  mrf.new$edge.par[[i]][2,3,1] <- 9
  mrf.new$edge.par[[i]][2,4,1] <- 10
  mrf.new$edge.par[[i]][2,5,1] <- 11
  mrf.new$edge.par[[i]][3,1,1] <- 12
  mrf.new$edge.par[[i]][3,2,1] <- 13
  mrf.new$edge.par[[i]][3,3,1] <- 14
  mrf.new$edge.par[[i]][3,4,1] <- 15
  mrf.new$edge.par[[i]][3,5,1] <- 16
  mrf.new$edge.par[[i]][4,1,1] <- 17
  mrf.new$edge.par[[i]][4,2,1] <- 18
  mrf.new$edge.par[[i]][4,3,1] <- 19
  mrf.new$edge.par[[i]][4,4,1] <- 20
  mrf.new$edge.par[[i]][4,5,1] <- 21
  mrf.new$edge.par[[i]][5,1,1] <- 22
  mrf.new$edge.par[[i]][5,2,1] <- 23
  mrf.new$edge.par[[i]][5,3,1] <- 24
  mrf.new$edge.par[[i]][5,4,1] <- 25
  mrf.new$edge.par[[i]][5,5,1] <- 26

}
#print(adjmat)
mrf.new <- train.mrf(mrf.new, as.matrix(fileVariable), nll = mrf.nll, infer.method = infer.trbp, trace = 0)
print(mrf.new$edge.pot)
print(mrf.new$par)

#if (require(Rgraphviz)) {
  #The method below is just to split plot in 1,1 or 1,2 to print
  par(mfrow=c(1,1))
  #plot(fileVariable$RBR.20131117, main = "True DAG")
  #prints graph with unidirectional edges
  plot(skel.fit, main = "Estimated CPDAG")
#}

