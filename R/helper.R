
SubstrRight <- function(x, n) {
  substr(x, nchar(x)-n+1, nchar(x))
}

AbbreviateMonth <- function(sx) {
  # Shorten January_1 -> JA
  # Returns: String
  result <- toupper(substr(sx, 1, 2))
  return(result)
}

AbbreviateHeader <- function(sx) {
  # Shorten January_1 -> JA1
  # Returns: String
  result <- paste0(AbbreviateMonth(sx), SubstrRight(sx, 1))
  return(result)
}

AbbreviateAllHeaders <- function(vx) {
  # Shorten all months January_1 -> JA1 : December_4 -> DE4
  # Returns: String
  result <- AbbreviateHeader(colnames(vx))
  return(result)
}

DrawMeanLine <- function(bird) {
  # Draws a mean line.
  abline(h=mean(as.matrix(bird[1, ])))
}

CreateBird <- function(vx, sx) {
  # Returns: Vector
  result <- vx[vx$name == sx, ][ ,-1]
  return(result)
}

DrawBirdBarplot <- function(bird,
                            bird.name = "",
                            abbr.headers = F) {
  # Draws a barplot() for a given bird
  #
  # Args:
  #   bird: a vector of a bird
  #   bird.name: name to give on plot
  #   abbr.headers: true to shorten month names
  bird.data <- as.matrix(bird)

  if (abbr.headers)
    colnames(bird.data) <- AbbreviateAllHeaders(bird.data)

  barplot(bird.data,
          main      = bird.name,
          sub       = "McMaster Forest, 2013-2016. Data from eBird",
          xlab      = "Months",
          ylab      = "Occurence",
          col       = "blue",
          cex.names = 0.675,
          las       = 2)
}
