out.val <- boxplot.stats(st$Income)$out
st$Income[st$Income %in% out.val] <- NA
head(st)
newdata <- st[complete.cases(st), ]
head(newdata)