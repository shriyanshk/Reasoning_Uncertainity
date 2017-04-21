#library(RandomFields)
source("https://bioconductor.org/biocLite.R")
biocLite("graph")
biocLite("RBGL")
biocLite('Rgraphviz')
library(RandomFieldsUtils)
library(pcalg)
#fileVariable <- read.csv(file="C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/LIDARsub1NoMissingDiscretized.csv", header = TRUE, sep = ",")
fileVariable <- read.csv(file="C:/Users/shriy/Downloads/drive-download-20170420T000155Z-001/LIDARsub1-2.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
#set.seed(50)
numberOfRows <- nrow(fileVariable[3:50])
labelName <- colnames(fileVariable[3:50])
#Normality
test <- apply(fileVariable[3:50], 2, shapiro.test)
#prints Normality
print(sapply(test, function(x) unlist(x[c("statistic", "p.value")])))
#converts the csv values to data frame
x <- as.data.frame(matrix(fileVariable[3:50] ,ncol = length(labelName)))
suffStat <- list(C = cor(fileVariable[3:50]), n = numberOfRows)

#pc.fit <- pc(suffStat, indepTest = gaussCItest, alpha = 0.01, labels = labelName, verbose = TRUE)

skel.fit <- skeleton(suffStat, indepTest = gaussCItest, p = ncol(fileVariable[3:50]), labels = labelName, alpha = 0.01)
#Print Adjacency Matrix
print(as(skel.fit, "amat"))
#if (require(Rgraphviz)) {
  #The method below is just to split plot in 1,1 or 1,2 to print
  par(mfrow=c(1,1))
  #plot(fileVariable$RBR.20131117, main = "True DAG")
  #prints graph with unidirectional edges
  plot(skel.fit, main = "Estimated CPDAG")
#}
