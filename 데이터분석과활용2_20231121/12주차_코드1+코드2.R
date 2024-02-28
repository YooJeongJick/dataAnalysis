head(cars)
plot(dist ~ speed, data = cars)

model <- lm(dist ~ speed, cars)
model

abline(model)
coef(model)[1]
coef(model)[2]

b <- coef(model)[1]
W <- coef(model)[2]

speed <- 30
dist <- W * speed + b
dist

speed <- 35
dist <- W * speed + b
dist

speed <- 40
dist <- W * speed + b
dist







