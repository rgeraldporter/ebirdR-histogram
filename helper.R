
shortUpper <- function(sx) {
  result <- toupper(substr(sx, 1, 2))
  return(result)
}

shortHeader <- function(sx) {
  result <- paste(shortUpper(sx), substrRight(sx, 1))
  return(result)
}

abbreviateHeaders <- function(vx) {
  result <- shortHeader(colnames(vx))
  return(result)
}

bird <- function(vx, sx) {
  result <- vx[vx$name == sx,][,-1]
  colnames(result) <- abbreviateHeaders(result)
  return(result)
}

birdBar <- function(bird, birdName="") {
  barplot(as.matrix(bird), main=birdName, sub="McMaster Forest, 2013-2016", xlab="Months", ylab="Occurence",col="blue")
}
