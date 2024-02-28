favorite.color <- c(2, 3, 2, 1, 1, 2, 2, 1, 3, 2, 1, 3, 2, 1, 2)
ds <- table(favorite.color)
ds
barplot(ds, main = 'favorite color')
colors <- c('green', 'red', 'blue')
names(ds) <- colors
ds
barplot(ds, main = 'favorite color', col = colors)
pie(ds, main = 'favorite color', col = colors)