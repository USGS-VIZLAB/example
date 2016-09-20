readData.myCsvReader <- function(viz) {
  setNames(read.csv(viz[['location']], header=TRUE), c('ID','Above','Below'))
}