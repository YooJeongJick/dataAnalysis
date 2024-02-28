install.packages("cars")

library(car)
head(Prestige)
newdata <-  Prestige[ , c(1 : 4)]

plot(newdata, pch = 16, col = "blue",
     main = "Matrix Scatterplot")

mod1 <- lm(income ~ education + prestige + women, data = newdata)
summary(mod1)
