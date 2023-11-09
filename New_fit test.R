### Illustrate transformations for continuous variables

# clear the workspace

rm(list=ls())
options(digits = 4)

# Strength of common transformations, from weakest to strongest:
#  square-root, cube-root, log, 1/y

# Create a sample of n = 100 from a log(normal) with mu = 100, sd = 75

set.seed(123)

mu       <- 100
sigma    <- 75
n        <- 100
location <- log(mu^2 / sqrt(sigma^2 + mu^2))
shape    <- sqrt(log(1 + (sigma^2 / mu^2)))

lnorm.data <- rlnorm(n, location, shape)

# plot sample data

hist(lnorm.data)
boxplot(lnorm.data)
qqnorm(lnorm.data)
qqline(lnorm.data)

# square-root transformation

lnorm.sr <- sqrt(lnorm.data)   # or lnorm.data^(1/2)
hist(lnorm.sr)
boxplot(lnorm.sr)
qqnorm(lnorm.sr)
qqline(lnorm.sr)

# cube-root transformation

lnorm.cr <- lnorm.data^(1/3)
hist(lnorm.cr)
boxplot(lnorm.cr)
qqnorm(lnorm.cr)
qqline(lnorm.cr)

# natural-log transformation

lnorm.log <- log(lnorm.data)
hist(lnorm.log)
boxplot(lnorm.log)
qqnorm(lnorm.log)
qqline(lnorm.log)

