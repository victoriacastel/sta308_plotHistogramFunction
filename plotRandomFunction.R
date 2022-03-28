####################################################

## plotRandomFunction.R

## Victoria Castel
## March 18, 2022
##  Amended on March 28, 2022 
##    to do some error checking

## A function that generates
##  a sequence of random normal variables
#   and make a histogram.
# 
# This function is based on code from
# (Friday March 11, 2022)

# plotRandom <- function(n=1) {
#   hist(rnorm(n=n, mean=0, sd=1) )
# }

## Today we will add to it

# plotRandom <- function(n=1) {
#   hist(rnorm(n=n, mean=0, sd=1) )
# }

# plotRandom <- function(n=1, mu=0, sigma=1) {
#   hist(rnorm(n=n, mean=mu, sd=sigma) )
# }

# plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
#   hist(rnorm(n=n, mean=mu, sd=sigma),
#        breaks = hist_breaks)
# }

## March 28 amended code

## From the help documentation on is.integer()
##  Checks if a number is an integer or not
is.wholenumber <-
  function(x, tol = .Machine$double.eps^0.5)  {
    abs(x - round(x)) < tol
  }
is.wholenumber(4.2) # false
is.wholenumber(3) # true

plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  if( n < 0 ) {
    stop("Sample size n should be a positive integer")
  } 
  if( !is.wholenumber(n) ) {
    warning(paste("Sample size n should be a whole number\n     R is using n=floor(n)=",
                  floor(n) ) )
  }
}

