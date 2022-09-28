install.packages("tidyverse")
library(tidyverse)
install.packages("here")
library(here)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(skimr)

install.packages("palmerpenguins")
library(palmerpenguins)

penguins %>% arrange(bill_length_mm)

penguins %>% rename_with(penguins,tolower)

penguins %>%  drop_na() %>%  group_by(species) %>%
  summarize(max(flipper_length_mm))

library(ToothGrowth)

getwd()
hotel_bookings <- read.csv("hotel_bookings.csv")
colnames(hotel_bookings)
library(tidyverse)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

glimpse(hotel_bookings)
unique(hotel_bookings$children)

onlineta_city_hotels <- hotel_bookings %>% filter(hotel=='City Hotel' & market_segment=='Online TA') 

ggplot(data=onlineta_city_hotels)+geom_point(mapping=aes(x=lead_time,y=children))


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) + facet_wrap(~cut)


flavors_df <- read_csv("flavors_of_cacao.csv")
colnames(flavors_df)
best<- flavors_df %>% filter(Rating > 3.5 & `Cocoa\nPercent`>70) 

ggplot(data=best)+geom_bar(mapping=aes(x=`Company \nLocation`))

flavors_df %>% rename(Type=Bean\nType)
