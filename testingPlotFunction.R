
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
