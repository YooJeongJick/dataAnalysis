library(treemap)
st <- data.frame(state.x77)
st <- data.frame(st, stname = rownames(st))

treemap(st,
        index = c("stname"),
        vSize = "Population",
        vColor = "Murder",
        type = "value",
        title = "state.x77")

symbols(st$Population, st$Murder,
        circles = st$Illiteracy,
        inches = 0.3,
        fg = "white",
        bg = "lightgray",
        lwd = 1.5,
        xlab = "Population",
        ylab = "Murder",
        main = "state.x77")
text(st$Population, st$Murder,
     rownames(st),
     cex = 0.6,
     col = "brown")