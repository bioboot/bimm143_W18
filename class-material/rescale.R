## Name:  rescale.R
## Description:  
##        Example function to rescale values between 0 and 1
##         Used purely to demo function writing process.
## Date:  2017-10-30   (11:25:14 PDT on Mon, Oct 30)
## Usage:  
##         source("http://tinyurl.com/rescale-R")
##         rescale( c(1:10) )
##         rescale( c(1:10), plot=TRUE, typ="b", lwd=2, col="blue" )
##         rescale2( c(1:10,"b") )
## Author: Barry
##

rescale <- function(x, na.rm=TRUE, plot=FALSE, ...) {
  # Our rescale function from the end of lecture 9

  if(na.rm) {
    rng <-range(x, na.rm=TRUE)
  } else {
    rng <-range(x)
  }

  answer <- (x - rng[1]) / (rng[2] - rng[1])
  if(plot) { 
    plot(answer, ...) 
  }

  return(answer)
}


rescale2 <- function(x, na.rm=TRUE, plot=FALSE, ...) {
  # Our rescale function from lecture 10

  if( !is.numeric(x) ) {
    stop("Input x should be numeric", call.=FALSE)
  }
  
  rng <-range(x, na.rm=TRUE)

  answer <- (x - rng[1]) / (rng[2] - rng[1])
  if(plot) { 
    plot(answer, ...) 
  }

  return(answer)
}

both_na <- function(x, y) {
  ## Check for NA elements in both input vectors 
  sum( is.na(x) & is.na(y) )
}

both_na2 <- function(x, y) {
  ## Check for NA elements in both input vectors and don't allow re-cycling 
  if(length(x) != length(y)) {
    stop("Input x and y should be vectors of the same length", call.=FALSE)
  }
  sum( is.na(x) & is.na(y) )
}

both_na3 <- function(x, y) {
  ## Print some info on where NA's are as well as the number of them 
  if(length(x) != length(y)) {
    stop("Input x and y should be vectors of the same length", call.=FALSE)
  }
  na.in.both <- ( is.na(x) & is.na(y) )
  na.number  <- sum(na.in.both)
  na.which   <- which(na.in.both)

  message("Found ", na.number, " NA's at position(s):", 
          paste(na.which, collapse=", ") ) 
  
  return( list(number=na.number, which=na.which) )
}


## Find common genes in two lists

df1 <- data.frame(IDs=c("gene1", "gene2", "gene3"),
                  exp=c(2,1,1),
                  stringsAsFactors=FALSE)

df2 <- data.frame(IDs=c("gene2", "gene4", "gene3", "gene5"),
                  exp=c(-2, NA, 1, 2),
                  stringsAsFactors=FALSE)

df3 <- data.frame(IDs=c("gene2", "gene2", "gene5", "gene5"),
                  exp=c(-2, NA, 1, 2),
                  stringsAsFactors=FALSE)

#?intersect
#x <- df1$IDs
#y <- df2$IDs

gene_intersect <- function(x, y) { 
   cbind( x[ x %in% y ], y[ y %in% x ] )
}

gene_intersect2 <- function(df1, df2) { 
   cbind( df1[ df1$IDs %in% df2$IDs, ], 
          df2[ df2$IDs %in% df1$IDs, "exp"] )
}

gene_intersect3 <- function(df1, df2, gene.colname="IDs") { 
   cbind( df1[ df1[,gene.colname] %in% df2[,gene.colname], ], 
          exp2=df2[ df2[,gene.colname] %in% df1[,gene.colname], "exp"] )
}


gene_intersect4 <- function(df1, df2, gene.colname="IDs") { 

  df1.name <- df1[,gene.colname]
  df2.name <- df2[,gene.colname]

  df1.inds <- df1.name %in% df2.name
  df2.inds <- df2.name %in% df1.name

   cbind( df1[ df1.inds, ], 
          exp2=df2[ df2.inds, "exp"] )
}

