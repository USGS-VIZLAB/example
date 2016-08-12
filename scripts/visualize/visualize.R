visualizeData.cars <- function(viz) {
  data <- lapply(viz[['depends']], readData)
  png(filename = viz[['location']], width = 500, height = 500)
  plot(data[[2]], xlab = "Speed (mph)", ylab = "Stopping distance (ft)",
       las = 1)
  lines(data[[1]], col = "red")
  dev.off()
}

visualizeData.iris <- function(viz) {
  # need to name depends
  data <- lapply(viz[['depends']], readData)[[1]]
  png(filename = viz[['location']], width = 500, height = 500)
  plot(data$Sepal.Length, data$Petal.Length, col = as.factor(data$Species))
  dev.off()
}
