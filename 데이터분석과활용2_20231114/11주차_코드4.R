head(mtcars)
mosaicplot(~gear+vs,
           data = mtcars,
           color = TRUE,
           main = "Gear and Vs")