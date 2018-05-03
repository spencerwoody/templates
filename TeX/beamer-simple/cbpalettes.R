
# Taken from: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
# See also: http://jfly.iam.u-tokyo.ac.jp/color/

library(ggplot2)
library(dplyr)
library(ggthemes)


# Fill
g <- mpg %>% 
  ggplot(aes(class)) + 
  geom_bar(aes(fill = class), col = "grey50") + 
  ggthemes::scale_fill_colorblind() + 
  labs(title = "Plotting with a colorblind-friendly palette",
       subtitle = "Suitable for dichromacy",
       x = "",
       caption = "Source: http://jfly.iam.u-tokyo.ac.jp/color/")

g + theme_bw(base_size = 20)
ggsave(here::here("fig/barchart-defaultfont.png"), device = "png",
       width = 10, height = 7.5, units = "in")

g + theme_bw(base_family = "Comic Sans MS", base_size = 20)
ggsave(here::here("fig/barchart-comicsansms.png"), device = "png",
       width = 10, height = 7.5, units = "in")

g + theme_bw(base_family = "Lato Sans", base_size = 20)
ggsave(here::here("fig/barchart-latosans.png"), device = "png",
       width = 10, height = 7.5, units = "in")

g + theme_bw(base_family = "Palatino", base_size = 20)
ggsave(here::here("fig/barchart-palatino.png"), device = "png",
       width = 10, height = 7.5, units = "in")




