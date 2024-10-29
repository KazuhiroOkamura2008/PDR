library(tidyverse)
library(palmerpenguins)
p <- penguins %>% 
  ggplot(aes(x = species, y = body_mass_g)) +
  geom_boxplot() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Boxplot of body mass by species",
       x = "Species",
       y = "Body mass (g)")
