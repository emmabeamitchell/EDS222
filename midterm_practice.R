library(tidyverse)

set.seed(945)

x1 <- rnorm(1e4)
x2 <- rnorm(1e4)
ggplot(tibble(x1,x2), aes (x1,x2)) +
  geom_point(alpha = .1)
cor(x1,x2)


y <- rnorm(1e4, mean = 1 +3 * x1 +2 * x2, sd = .1)

ggplot(tibble(x1,y), aes(x1, y)) +
  geom_point(alpha = .1)

summary(lm(y~x1))

summary(lm(y~x1 +x2))
