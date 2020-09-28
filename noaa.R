library(rnoaa)
library(leaflet)
library(tidyverse)
prcp_data<-cpc_prcp(date = "2015-06-05", drop_undefined = TRUE)
prcp_data1<-prcp_data %>% filter(lon<80.0 & lat>0)%>%filter(!precip==0)
leaflet(data = prcp_data1) %>% addTiles() %>%
  addCircleMarkers(~lon, ~lat, popup = ~as.character(lat), label = ~as.character(lat))
