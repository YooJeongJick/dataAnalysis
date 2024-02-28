mydata <- iris[ , c(1, 3)]

fit <- kmeans(x = mydata, centers = 3)
fit
fit$cluster
fit$centers 

library(cluster)
clusplot(mydata, fit$cluster, color = TRUE, shade = TRUE,
         labels = 2, lines = 0)

library(class)

tr.idx <- c(1 : 25, 51 : 75)
ts.idx <- c(26 : 50, 76 : 100)
ds.tr <- iris[tr.idx, c(1, 3)]
ds.ts <- iris[ts.idx, c(1, 3)]
cl.tr <- factor(iris[tr.idx, 5])
cl.ts <- factor(iris[ts.idx, 5])

pred <- knn(ds.tr, ds.ts, cl.tr, k = 3, prob = TRUE)

acc <- mean(pred == cl.ts)
acc


