library(ggplot2)
library(viridis)
library(tidytuesdayR)

tuesdata <- tidytuesdayR::tt_load(2021, week = 39)

nominees <- tuesdata$nominees

ggplot(data = nominees) + 
  geom_bar(
    mapping = aes(x = year,
                  fill = type),
    position = 'fill'
  ) + 
  scale_color_viridis(discrete = TRUE) +
  scale_fill_viridis(discrete = TRUE, option = 'E') +
  labs(x = 'Year',
       y = 'Proportion of Winners',
       title = 'How Nominees and Winners Stack Up Through The Years',
       fill = 'Type') +
  theme_minimal()

ggsave("TT_9.23.21.png", path = "~/Desktop")
