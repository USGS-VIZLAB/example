fetch.cars <- function(viz) {
  id <- viz[['id']]
  location <- viz[['location']]
  write.csv(x=cars, file=location, row.names=FALSE)
}

fetchTimestamp.cars <- vizlab:::fetchTimestamp.file
