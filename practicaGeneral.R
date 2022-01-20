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

penguins_stats <- penguins %>%
  select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g)%>% 
  summarise(mean_length = mean(bill_length_mm, na.rm = TRUE),
            sd_bill_length = sd(bill_length_mm, na.rm = TRUE),
            min_bill_length = min(bill_length_mm, na.rm = TRUE),
            max_bill_length = max(bill_length_mm, na.rm = TRUE),
            mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
            sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE),
            min_bill_depth = min(bill_depth_mm, na.rm = TRUE),
            max_bill_depth = max(bill_depth_mm, na.rm = TRUE),
            mean_flipper_length = mean(flipper_length_mm, na.rm = TRUE),
            sd_flipper_length = sd(flipper_length_mm, na.rm = TRUE),
            min_flipper_length = min(flipper_length_mm, na.rm = TRUE),
            max_flipper_length = max(flipper_length_mm, na.rm = TRUE),
            mean_body_mass = mean(body_mass_g, na.rm = TRUE),
            sd_body_mass = sd(body_mass_g, na.rm = TRUE),
            min_body_mass = min(body_mass_g, na.rm = TRUE),
            max_body_mass = max(body_mass_g, na.rm = TRUE),) %>%
  glimpse()