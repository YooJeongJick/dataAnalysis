st <- data.frame(state.x77)
symbols(st$Illiteracy, st$Murder,
        circles = st$Population,
        inches = 0.3,
        fg = "white",
        bg = "lightgray",
        lwd = 1.5,
        xlab = "rate of Illiteracy",
        ylab = "crime(murder) rate",
        main = "Illiteracy and Crime")
text(st$Illiteracy, st$Murder,
     rownames(st),
     cex = 0.6,
     col = "brown")