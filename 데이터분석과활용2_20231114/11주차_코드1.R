library(treemap)
data(GNI2014)
head(GNI2014)
treemap(GNI2014,
        index = c("continent", "iso3"),
        vSize = "population",
        vColor = "GNI",
        type = "value",
        title = "World's GNI")
