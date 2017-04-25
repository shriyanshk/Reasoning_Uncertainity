library(pcalg)
library(graph)
library(RBGL)
library(Rgraphviz)
library(CRF)
library(data.table)
library(caret)
library(gRbase)
library(igraph)
library(bnlearn)


all_content = readLines("C:/Users/shriy/Downloads/LIDARNoMissingAfterDiscretized.csv")
#skip_second = all_content[-1]
fileVariable <- read.csv(textConnection(all_content), header = TRUE, stringsAsFactors = FALSE)

numberOfRows <- nrow(fileVariable) 
labelName <- colnames(fileVariable) 
x <- as.data.frame(fileVariable)
#This learning.test works if inputed instead of x in gs algorithm
#print(learning.test)

bn.gs <- gs(x, cluster = NULL, whitelist = NULL, blacklist = NULL, test = NULL, alpha = 0.05, B = NULL, debug = FALSE, optimized = TRUE, strict = FALSE, undirected = FALSE)

#Hill Climbing
#bn.gs <- hc(fileVariable, start = NULL, whitelist = NULL, blacklist = NULL, score = NULL, debug = FALSE, restart = 0, perturb = 1, max.iter = Inf, maxp = Inf, optimized = TRUE)

adjmat <- amat(bn.gs)
g2 <- graph_from_adjacency_matrix(adjmat)
plot(g2)
bn.plot <- moralizeMAT(adjmat)
print(bn.plot)
g1 <- graph_from_adjacency_matrix(bn.plot)
plot(g1)
