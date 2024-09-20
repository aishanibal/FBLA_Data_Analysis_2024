library(tidyverse)

#eliminating extra rows
CaliJan2021 <- Cali2021 %>%
  select(-Date, -Make, -`Model Year`)
view(CaliJan2021)  

#creating new data set for light cars in Los Angeles 
losAngelesLight21 <- CaliJan2021 %>%
  filter(`Zip Code`<= 91609, 
         Duty == "Light")
losAngelesLight21 <- losAngelesLight21 %>%
  arrange(`Zip Code`)
View(losAngelesLight21)

#creating new data set for heavy cars in Los Angeles
losAngelesHeavy21 <- CaliJan2021 %>%
  filter(`Zip Code`<= 91609,
         Duty == "Heavy")
losAngelesHeavy21 <- losAngelesHeavy21 %>%
  arrange(`Zip Code`)
View(losAngelesHeavy21)
  

#Finding the total number of light vehicles for each fuel type in Los Angeles
losAngelesLight21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#Finding the total number of heavy vehicles for each fuel type in Los Angeles
losAngelesHeavy21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))


#creating new data set for light cars in San Diego
sanDiegoLight21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 92014,
         `Zip Code`<= 92199,
         Duty == "Light")
sanDiegoLight21 <- sanDiegoLight21 %>%
  arrange(`Zip Code`)
view(sanDiegoLight21)

#creating new data set for heavy cars in San Diego
sanDiegoHeavy21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 92014,
         `Zip Code`<= 92199,
         Duty == "Heavy")
sanDiegoHeavy21 <- sanDiegoHeavy21 %>%
  arrange(`Zip Code`)
view(sanDiegoHeavy21)

#Finding the total number of light vehicles for each fuel type in San Diego
sanDiegoLight21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#Finding the total number of heavy vehicles for each fuel type in San Diego
sanDiegoHeavy21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))


#creating new data set for light cars in Orange
orangeLight21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 92856,
         `Zip Code`<=92869,
         Duty == "Light")
orangeLight21 <- orangeLight21 %>%
  arrange(`Zip Code`)
View(orangeLight21)

#creating new data set for heavy cars in Orange
orangeHeavy21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 92856,
         `Zip Code`<=92869,
         Duty == "Heavy")
orangeHeavy21 <- orangeHeavy21 %>%
  arrange(`Zip Code`)
View(orangeHeavy21)

#Finding the total number of light vehicles for each fuel type in Orange
orangeLight21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#Finding the total number of heavy vehicles for each fuel type in Orange
orangeHeavy21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#creating new data set for light cars in Alameda
alamedaLight21 <- CaliJan2021 %>%
  filter(`Zip Code` >= 94501,
         `Zip Code` <= 94502,
         Duty == "Light")
alam <- CaliJan2021 %>%
  filter(`Zip Code` == 94606,
         Duty == "Light")
alamedaLight21 <- rbind(alamedaLight21, alam)
alamedaLight21 <- alamedaLight21 %>%
  arrange(`Zip Code`)
View(alamedaLight21)

#creating new data set for heavy cars in Alameda
alamedaHeavy21 <- CaliJan2021 %>%
  filter(`Zip Code` >= 94501,
         `Zip Code` <= 94502,
         Duty == "Heavy")
alam <- CaliJan2021 %>%
  filter(`Zip Code` == 94606,
         Duty == "Heavy")
alamedaHeavy21 <- rbind(alamedaHeavy21, alam)
alamedaHeavy21 <- alamedaHeavy21 %>%
  arrange(`Zip Code`)
View(alamedaHeavy21)

#Finding the total number of light vehicles for each fuel type in Alameda
alamedaLight21 %>%
  group_by(Fuel)%>%
  summarise(sum(Vehicles))

#Finding the total number of heavy vehicles for each fuel type in Alameda
alamedaHeavy21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#creating new data set for light cars in Sacramento
sacLight21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 94203,
         `Zip Code`<= 94299,
         Duty == "Light")
sac <- CaliJan2021 %>%
  filter(`Zip Code` >= 95811,
         `Zip Code`<= 95864,
         Duty == "Light")
sacLight21 <- rbind(sacLight21, sac)
sacLight21 <- sacLight21 %>%
  arrange(`Zip Code`)
View(sacLight21)

#creating new data set for heavy cars in Sacramento
sacHeavy21 <- CaliJan2021 %>%
  filter(`Zip Code`>= 94203,
         `Zip Code`<= 94299,
         Duty == "Heavy")
sac <- CaliJan2021 %>%
  filter(`Zip Code` >= 95811,
         `Zip Code`<= 95864,
         Duty == "Heavy")
sacHeavy21 <- rbind(sacHeavy21, sac)
sacHeavy21 <- sacHeavy21 %>%
  arrange(`Zip Code`)
View(sacHeavy21)

#Finding the total number of light vehicles for each fuel type in Sacramento
sacLight21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))

#Finding the total number of heavy vehicles for each fuel type in Sacramento
sacHeavy21 %>%
  group_by(Fuel) %>%
  summarise(sum(Vehicles))
