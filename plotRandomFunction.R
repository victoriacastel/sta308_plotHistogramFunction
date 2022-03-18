####################################################

## plotRandomFunction.R

## Victoria Castel
## March 18, 2022

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

plotRandom <- function(n=1) {
  hist(rnorm(n=n, mean=0, sd=1) )
}

plotRandom <- function(n=1, mu=0, sigma=1) {
  hist(rnorm(n=n, mean=mu, sd=sigma) )
}

plotRandom <- function(n=1, mu=0, sigma=1, hist_breaks=6) {
  hist(rnorm(n=n, mean=mu, sd=sigma),
       breaks = hist_breaks)
}

