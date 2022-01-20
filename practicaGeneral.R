#Script de la práctica

#Instalacion y carga de paquetes
#install.packages("palmerpenguins")
library(palmerpenguins)
library(dplyr)

#Carga de los datos
data(package = "palmerpenguins", penguins)

#Número de individuos totales, masculinos y femeninos por especie
penguins_sex <- penguins %>% 
  select(species, sex) %>% 
  count(sex) %>% 
  glimpse()

#La media, desviación estándar, valor mínimo y máximo de la longitud y profundidad del pico, 
#la longitud de la aleta y el tamaño

bill_stats <- penguins %>%
  select(bill_length_mm, bill_depth_mm)%>% 
  summarise(mean_length = mean(bill_length_mm, na.rm = TRUE),
            sd_length = sd(bill_length_mm, na.rm = TRUE),
            min_length = min(bill_length_mm, na.rm = TRUE),
            max_length = max(bill_length_mm, na.rm = TRUE),
            mean_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_depth = sd(bill_depth_mm, na.rm = TRUE),
            min_depth = min(bill_depth_mm, na.rm = TRUE),
            max_depth = max(bill_depth_mm, na.rm = TRUE)) %>%
  glimpse()