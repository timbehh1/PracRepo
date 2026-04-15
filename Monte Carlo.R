##Monte Carlo Work

library(ggplot2)
library(patchwork)

set.seed(1)

  dchisq(x, df = 3)
}

mc_plot <- function(n){
  
  x <- runif(n, 0, 10)
  y <- runif(n, 0, 0.4)
  
  df <- data.frame(x, y)
  
  df$below <- df$y < f(df$x)
  
  est <- mean(df$below) * (10 * 0.4)
  
  ggplot(df, aes(x, y)) +
    geom_point(aes(color = below), size = 1, alpha = 0.5) +
    stat_function(fun = f) +
    labs(
      title = paste("n =", n, "estimate =", round(est, 3)),
      x = "x",
      y = "y"
    ) +
    theme_minimal() +
    theme(legend.position = "none")
}

p1 <- mc_plot(10)
p2 <- mc_plot(100)
p3 <- mc_plot(1000)
p4 <- mc_plot(10000)

(p1 + p2) / (p3 + p4)

