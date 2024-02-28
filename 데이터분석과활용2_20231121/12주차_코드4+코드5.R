iris.new <- iris
iris.new$Species <- as.integer(iris.new$Species)
head(iris.new)

mod.iris　<- glm(Species ~ ., data = iris.new)
summary(mod.iris)

unknown <- data.frame(rbind(c(5.1, 3.5, 1.4, 0.2)))
names(unknown) <- names(iris)[1 : 4]
unknown

pred <- predict(mod.iris, unknown)
pred
round(pred, 0)

pred <- round(pred, 0)
pred
levels(iris$Species)
levels(iris$Species)[pred]





