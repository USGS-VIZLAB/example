visualize.cars <- function(viz) {
  data <- readDepends(viz)

  sizes <- data[["plot-info"]]
  png(filename = viz[['location']], 
      width = sizes$width, 
      height = sizes$height)
  plot(data[[2]], xlab = "Speed (mph)", ylab = "Stopping distance (ft)",
       las = 1)
  lines(data[[1]], col = "red")
  dev.off()
}

visualize.iris <- function(viz) {
  # need to name depends
  data <- readDepends(viz)
  
  png(filename = viz[['location']], 
      width = 500, height = 500)
  library(gsplot)
  gs<- gsplot() %>% 
    points(data$Sepal.Length, data$Petal.Length, 
           col = as.factor(data$Species))
  print(gs)
  dev.off()
}

visualize.qTDS <- function(viz){
  depends=readData(viz)
  CuyahogaShort <- depends$data
  colors <- depends$colors
  svg(viz[['location']], height=4, width=4)
  plot(TDS ~ Q, CuyahogaShort, log = "xy", col=colors$lines)
  dev.off()
}
