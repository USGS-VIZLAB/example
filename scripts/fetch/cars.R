fetchData.cars <- function(viz) {
  id <- viz[['id']]
  location <- viz[['location']]
  write.csv(x=cars, file=location, row.names=FALSE)
}
