
source("plotRandomFunction.R")

## line 2 says to open and run ALL code in the file
##  plotRandomFunction.R

plotRandom(n=20)
plotRandom(n=1000)
plotRandom(n=53)

## the function expects the following inputs
##    n - sample size, (def: n=1)
##    mu- mean of norm dist (default: mu = 0)
##    sigma - sd of norm dist (def: sigma = 1)
##    hist_breaks - number of breaks in histogram (def: hist_breaks = 6)
plotRandom(n=60, mu=70, sigma=2.3)
plotRandom(n=600000, mu=70, sigma=2.3)

plotRandom(n=60000, mu=70, sigma=2.3, hist_breaks = 30)

set.seed(20220318)
plotRandom(n=20)

## Playing arounds with bin sizes to understand how hist()
## works
set.seed(1)
x <- rnorm(n=200)

hist(x)
hist(x, breaks = 1)
hist(x, breaks = 0)
hist(x, breaks=3)
hist(x, breaks=12)
hist(x, breaks = 50)

plotRandom()



##############################################
##############################################

## Today, March 28th, we will update our function
##  to prevent a user from being stupid
plotRandom(n=-20)
plotRandom(n=43.5234)
plotRandom(n="thirty")
## Line 46 works, but what is it doing?
##    n should be a positive integer

## To figure out what n is doing...
x <- rnorm(n=43.5234)
length(x)
## so it appears to be truncating (rounding down)
## Let's do two things in our program
##    1. Prevent the user from specifying a negative number
##    2. If the user specifies a positive "real" number
##       we should tell them what value is actually being used

plotRandom(n=-43.5234)










