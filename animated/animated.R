install.packages('gganimate')
theme_bw()

devtools::install_github('thomasp85/gganimate')
library(ggplot2)
library(gganimate)
theme_set(theme_bw())

library(gapminder)
head(gapminder)




p <- ggplot(
  gapminder, 
  aes(x = gdpPercap, y=lifeExp, size = pop, colour = country)
) +
  geom_point(show.legend = FALSE, alpha = 0.7) +
  scale_color_viridis_d() +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  labs(x = "GDP per capita", y = "Life expectancy")
p

n <- (p + transition_time(year) + labs(title = "Year: {frame_time}"))


p + transition_time(year) +
  labs(title = "Year: {frame_time}") +
  view_follow(fixed_y = TRUE)

transition

file.remove()

p + transition_time(year) +
  labs(title = "Year: {frame_time}") +
  shadow_wake(wake_length = 0.1, alpha = FALSE)

gifski()
ifski (library(gifski))
install.packages("gifski")
