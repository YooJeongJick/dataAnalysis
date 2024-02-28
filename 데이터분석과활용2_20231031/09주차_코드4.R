beers = c(5, 2, 9, 8, 3, 7, 3, 5, 3, 5)
bal <- c(0.1, 0.03, 0.19, 0.12, 0.04, 0.095, 0.07, 0.06, 0.02, 0.05)
tbl <- data.frame(beers, bal)
tbl
plot(bal ~ beers, data = tbl)
res <- lm(bal ~ beers, data = tbl)
abline(res)
cor(beers, bal)