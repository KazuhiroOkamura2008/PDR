library(tidyverse)
library(palmerpenguins)
p1 <- penguins %>% 
  ggplot(aes(x = species, y = body_mass_g)) +
  geom_boxplot() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Boxplot of body mass by species",
       x = "Species",
       y = "Body mass (g)")

library(patchwork)

p2 <- penguins %>% 
  # ヒストグラムをつくりたい
  ggplot(aes(x = body_mass_g)) +
  geom_histogram() +
  theme_minimal() +
  labs(title = "Histogram of body mass",
       x = "Body mass (g)",
       y = "Count")

p1 + p2
