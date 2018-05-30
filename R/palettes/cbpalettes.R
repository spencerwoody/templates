
# Taken from: http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/
# See also: http://jfly.iam.u-tokyo.ac.jp/color/

library(ggplot2)
library(dplyr)

# The palette with grey:
cbPalette <- c("#999999", 
               "#E69F00", 
               "#56B4E9", 
               "#009E73", 
               "#F0E442", 
               "#0072B2", 
               "#D55E00", 
               "#CC79A7")

ggplot(data.frame(x = seq_along(cbPalette), y = 1)) + 
  geom_raster(aes(x, y, fill = factor(x))) + 
  scale_fill_manual(values = cbPalette) + 
  theme_void() + 
  theme(legend.position = "blank") + 
  labs(caption = "CB palette with grey")
ggsave("CBpallete-grey.png", device = "png")

# The palette with black:
cbbPalette <- c("#000000", 
                "#E69F00", 
                "#56B4E9", 
                "#009E73", 
                "#F0E442", 
                "#0072B2", 
                "#D55E00", 
                "#CC79A7")

ggplot(data.frame(x = seq_along(cbbPalette), y = 1)) + 
  geom_raster(aes(x, y, fill = factor(x))) + 
  scale_fill_manual(values = cbbPalette) + 
  theme_void() + 
  theme(legend.position = "blank") + 
  labs(title = "CB palette with black")
ggsave("CBpallete-black.png", device = "png")

# Using ggthemes ----------------------------------------------------------

library(ggthemes)

# Color
mpg %>% 
  ggplot(aes(displ, hwy)) + 
  geom_point(aes(col = class), position = "jitter") + 
  ggthemes::scale_color_colorblind()

# Fill
mpg %>% 
  ggplot(aes(class)) + 
  geom_bar(aes(fill = class), col = "grey50") + 
  ggthemes::scale_fill_colorblind() + 
  theme_bw(base_size = 20, base_family = "Lato") + 
  labs(title = "Plotting with a colorblind-friendly palette",
       subtitle = "Suitable for dichromacy",
       x = TeX("$\\alpha \\theta^2$"),
       caption = "Source: http://jfly.iam.u-tokyo.ac.jp/color/")
ggsave("~/Desktop/myfig.png", device = "png",
       width = 10, height = 7.5, units = "in")
ggsave("~/Desktop/myfig.pdf", device = "pdf",
       width = 10, height = 7.5, units = "in")





