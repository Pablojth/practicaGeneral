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
  count(sex)