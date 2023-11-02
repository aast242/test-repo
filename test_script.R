##Ceci Martinez
## 11/02/2023


# Loading packages --------------------------------------------------------
library(tidyverse) # for all the tidythings


#Categorical

n_nests <- 30
rand_na = n_nests * 0.1

color_vals = c("nocolor", "green")

d1 <- data.frame(nest = 1:n_nests,
                 treatment = c(rep("water", n_nests),
                               rep("permethrin", n_nests)))

d1$parasites[d1$treatment == "water"] <- rpois(n_nests, 20)
d1$parasites[d1$treatment == "permethrin"] <- rpois(n_nests, 3)
d1
# write.csv(d1, "parasite_data.csv")


#Continuous
n_nests <- 30
d2 <- data.frame(nest = 1:n_nests,
                 cotton = runif(n_nests, min = 0, max = 8),
                 error = rnorm(n_nests, mean = 0, sd = 2))

d2 <- mutate(d2, parasites = 20 -(cotton * 2.1) + error)

plot(parasites ~ cotton, d2)

#  Just a comment to see if this works

