processData.cars <- function(viz) {
  data <- readData(viz[['depends']])
  # make loess line (weird example)
  lowess <- lowess(data$speed, data$dist, f = 2/3, iter = 3)
  saveRDS(object = lowess, file = viz[['location']])
}
