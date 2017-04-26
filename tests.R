# learning rate
setwd("C:/Users/Jani/Documents/Reasoning/ProjectSources/data/LidarData/results")

clus <- rbind(read.csv("NSBeforeTRBPCluster.csv", header = TRUE, sep = ","), read.csv("NSBeforeTREECluster.csv", header = TRUE, sep = ","))
freq <- rbind(read.csv("NSBeforeTRBPFreq.csv", header = TRUE, sep = ","), read.csv("NSBeforeTreeFreq.csv", header = TRUE, sep = ","))
int <- rbind(read.csv("NSBeforeTRBPInterval.csv", header = TRUE, sep = ","), read.csv("NSBeforeTreeInterval.csv", header = TRUE, sep = ","))

lbp <- rbind(read.csv("NSAfterLBPFreq.csv", header = TRUE, sep = ","), read.csv("NSBeforeLBPFreq.csv", header = TRUE, sep = ","))
trbp <- rbind(read.csv("NSAfterTRBPFreq.csv", header = TRUE, sep = ","), read.csv("NSBeforeTRBPFreq.csv", header = TRUE, sep = ","))
tree <- rbind(read.csv("NSAfterTreeFreq.csv", header = TRUE, sep = ","), read.csv("NSBeforeTreeFreq.csv", header = TRUE, sep = ","))

after <- rbind(read.csv("NSAfterLBPFreq.csv", header = TRUE, sep = ","), read.csv("NSAfterTRBPFreq.csv", header = TRUE, sep = ","), 
           read.csv("NSAfterTreeFreq.csv", header = TRUE, sep = ","))
before <- rbind(read.csv("NSBeforeLBPFreq.csv", header = TRUE, sep = ","), read.csv("NSBeforeTRBPFreq.csv", header = TRUE, sep = ","), 
            read.csv("NSBeforeTreeFreq.csv", header = TRUE, sep = ","))

spatial <- rbind(read.csv("NSAfterTRBPSpatial.csv", header = TRUE, sep = ","))
nonspatial <- rbind(read.csv("NSAfterTRBPFreq.csv", header = TRUE, sep = ","))

normal <- rbind(read.csv("NSAfterNormFreq.csv", header=TRUE, sep=","))
random <- rbind(read.csv("NSAfterUniformFreq.csv", header=TRUE, sep=","))
network <- rbind(read.csv("NsAfterTRBPFreq.csv", header=TRUE, sep=","))
network = network[,3:6]

clus = clus[,3:6]
summary(clus[,1])
summary(clus[,2])
summary(clus[,3])
summary(clus[,4])

freq = freq[,3:6]
summary(freq[,1])
summary(freq[,2])
summary(freq[,3])
summary(freq[,4])

int = int[,3:6]
summary(int[,1])
summary(int[,2])
summary(int[,3])
summary(int[,4])

lbp = lbp[,3:6]
summary(lbp[,1])
summary(lbp[,2])
summary(lbp[,3])
summary(lbp[,4])

trbp = trbp[,3:6]
summary(trbp[,1])
summary(trbp[,2])
summary(trbp[,3])
summary(trbp[,4])

tree = tree[,3:6]
summary(tree[,1])
summary(tree[,2])
summary(tree[,3])
summary(tree[,4])

after = after[,3:6]
summary(after[,1])
summary(after[,2])
summary(after[,3])
summary(after[,4])

before = before[,3:6]
summary(before[,1])
summary(before[,2])
summary(before[,3])
summary(before[,4])

spatial = spatial[,3:6]
summary(spatial[,1])
summary(spatial[,2])
summary(spatial[,3])
summary(spatial[,4])

nonspatial = nonspatial[,3:6]
summary(nonspatial[,1])
summary(nonspatial[,2])
summary(nonspatial[,3])
summary(nonspatial[,4])

# significance tests
#discretization
t.test(clus[,1], freq[,1], var.equal=FALSE)
t.test(clus[,1], int[,1], var.equal=FALSE)
t.test(int[,1], freq[,1], var.equal=FALSE)

t.test(clus[,2], freq[,2], var.equal=FALSE)
t.test(clus[,2], int[,2], var.equal=FALSE)
t.test(int[,2], freq[,2], var.equal=FALSE)

t.test(clus[,3], freq[,3], var.equal=FALSE)
t.test(clus[,3], int[,3], var.equal=FALSE)
t.test(int[,3], freq[,3], var.equal=FALSE)

t.test(clus[,4], freq[,4], var.equal=FALSE)
t.test(clus[,4], int[,4], var.equal=FALSE)
t.test(int[,4], freq[,4], var.equal=FALSE)

#inference
t.test(lbp[,1], trbp[,1], var.equal=FALSE)
t.test(lbp[,1], tree[,1], var.equal=FALSE)
t.test(trbp[,1], tree[,1], var.equal=FALSE)

t.test(lbp[,2], trbp[,2], var.equal=FALSE)
t.test(lbp[,2], tree[,2], var.equal=FALSE)
t.test(trbp[,2], tree[,2], var.equal=FALSE)

t.test(lbp[,3], trbp[,3], var.equal=FALSE)
t.test(lbp[,3], tree[,3], var.equal=FALSE)
t.test(trbp[,3], tree[,3], var.equal=FALSE)

t.test(lbp[,4], trbp[,4], var.equal=FALSE)
t.test(lbp[,4], tree[,4], var.equal=FALSE)
t.test(trbp[,4], tree[,4], var.equal=FALSE)

#rtime
t.test(after[,1], before[,1], var.equal = FALSE)
t.test(after[,2], before[,2], var.equal = FALSE)
t.test(after[,3], before[,3], var.equal = FALSE)
t.test(after[,4], before[,4], var.equal = FALSE)

#spatial
t.test(spatial[,1], nonspatial[,1], var.equal = FALSE)
t.test(spatial[,2], nonspatial[,2], var.equal = FALSE)
t.test(spatial[,3], nonspatial[,3], var.equal = FALSE)
t.test(spatial[,4], nonspatial[,4], var.equal = FALSE)

summary(network[,1])
summary(network[,2])
summary(network[,3])
summary(network[,4])

summary(normal[,1])
summary(normal[,2])
summary(normal[,3])
summary(normal[,4])

summary(random[,1])
summary(random[,2])
summary(random[,3])
summary(random[,4])

t.test(network[,1], normal[,1], var.equal=FALSE)
t.test(network[,1], random[,1], var.equal=FALSE)
t.test(normal[,1], random[,1], var.equal=FALSE)

t.test(network[,2], normal[,2], var.equal=FALSE)
t.test(network[,2], random[,2], var.equal=FALSE)
t.test(normal[,2], random[,2], var.equal=FALSE)

t.test(network[,3], normal[,3], var.equal=FALSE)
t.test(network[,3], random[,3], var.equal=FALSE)
t.test(normal[,3], random[,3], var.equal=FALSE)

t.test(network[,4], normal[,4], var.equal=FALSE)
t.test(network[,4], random[,4], var.equal=FALSE)
t.test(normal[,4], random[,4], var.equal=FALSE)
