score <- c(79, 91, NA, 48, 58, 95, NA, 88, 81, 68)
score
score[is.na(score)] <- 0
score

head(mtcars)
agg <- aggregate(
  mtcars,
  by = list(
    gear = mtcars$gear,
    vs = mtcars$vs
  ), FUN = max)
agg