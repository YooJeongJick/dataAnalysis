z1 <- c(1, 2, 3, NA, 5, NA, 8)
z2 <- c(5, 8, 1, NA, 3, NA, 7)
z1[is.na(z1)] <- 0
z1
z3 <- as.vector(na.omit(z2))
z3