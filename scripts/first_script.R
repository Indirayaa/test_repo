# my first github synced script
library(renv)
#restore the versions of the packages used to develop this project
renv::restore()
# remember to use pull in Git tab to get changes from github

#load libraries
library(tidyverse)
x<- c(1,2,3,4,5)
y<- c(1,4,3,6,9)
data <- data.frame(x,y)
# now we use |> instead of %>%
fig01 <- data |> ggplot(aes(x=x, y=y)) +
  geom_point() +
  geom_smooth(method = "lm")
#save in project/map figures/called fig01 as png, resolution as max for screen
ggsave("./figures/fig01.png", plot = fig01, width = 1920, height = 1068, units = "px")
