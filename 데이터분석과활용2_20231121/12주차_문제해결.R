plot(drat ~ wt, data = mtcars)

model <- lm(drat ~ wt, mtcars)

abline(model)

b <- coef(model)[1]
W <- coef(model)[2]

wt <- 3.4
drat <-  W * wt + b
drat

mod.mtcars <- glm(vs ~ mpg + disp + hp + drat + wt + qsec, 
                  data = mtcars)

unknown <- c(19.0, 180, 100, 3.1, 2.5, 18.0)
unknown <- rbind(unknown)
unknown <- data.frame(unknown)
names(unknown) <- names(mtcars)[c(1, 3, 4, 5, 6, 7)]

pred <- predict(mod.mtcars, unknown)
round(pred, 0)