visualize.cars <- function(viz) {
  data <- lapply(viz[['depends']], readData)
  png(filename = viz[['location']], width = 500, height = 500)
  plot(data[[2]], xlab = "Speed (mph)", ylab = "Stopping distance (ft)",
       las = 1)
  lines(data[[1]], col = "red")
  dev.off()
}

visualize.iris <- function(viz) {
  # need to name depends
  data <- lapply(viz[['depends']], readData)[[1]]
  png(filename = viz[['location']], width = 500, height = 500)
  library(gsplot)
  gs<- gsplot() %>% points(data$Sepal.Length, data$Petal.Length, col = as.factor(data$Species))
  print(gs)
  dev.off()
}

visualize.qTDS <- function(viz){
  CuyahogaShort=readData(viz[['depends']])
  svg(viz[['location']], height=4, width=4)
  plot(TDS ~ Q, CuyahogaShort)
  dev.off()
}
