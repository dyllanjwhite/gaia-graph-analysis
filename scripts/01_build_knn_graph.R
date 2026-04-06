set.seed(42)

# # Synthetic RA/Dec prototype used to establish the k-NN analysis pipeline

stars <- data.frame(
  ra = runif(500, 0, 360),     # right ascension
  dec = runif(500, -90, 90)    # declination
)

library(FNN)
library(igraph)

coords <- as.matrix(stars)

k <- 5
knn <- get.knn(coords, k = k)

edges <- cbind(
  rep(1:nrow(coords), each = k),
  as.vector(knn$nn.index)
)

g <- graph_from_edgelist(edges, directed = FALSE)
g <- simplify(g)

cat("Nodes:", vcount(g), "\n")
cat("Edges:", ecount(g), "\n")
cat("Connected components:", components(g)$no, "\n")
cat("Average degree:", mean(degree(g)), "\n")
cat("Clustering coefficient:", transitivity(g), "\n")

plot(g, vertex.size = 3, vertex.label = NA,
     main = paste("k-NN Graph with k =", k))

png("figures/knn_graph_k5.png")
plot(g, vertex.size = 3, vertex.label = NA,
     main = paste("k-NN Graph with k =", k))
dev.off()

