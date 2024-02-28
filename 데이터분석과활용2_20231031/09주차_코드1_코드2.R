wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg,
     main = "중량-연비 그래프",
     xlab = "중량",
     ylab = "연비(MPG)",
     col = "red",
     pch = 19)

vars <- c("mpg", "disp", "drat", "wt")
target <- mtcars[ , vars]
head(target)
pairs(target, main = "Multi Plots")