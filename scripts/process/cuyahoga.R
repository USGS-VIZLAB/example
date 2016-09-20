#' My mayfly fetcher function
#' 
#' Intentionally switching up the arg order just to show that it can be done
#' (though it's not necessarily a great idea)
process.cuyahoga <- function(viz) {
  Cuyahoga=readData(viz[['depends']])
  cuyahoga <- Cuyahoga[30:50,]
  write.table(cuyahoga, viz[['location']], row.names=FALSE, sep='\t')
}