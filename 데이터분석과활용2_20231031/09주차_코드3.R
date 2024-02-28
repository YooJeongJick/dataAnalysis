iris.2 <- iris[ , 3 : 4]
point <- as.numeric(iris$Species)
point
color <- c("red", "green", "blue")
plot(iris.2,
     main = "Iris Plot",
     pch = c(point),
     col = color[point])