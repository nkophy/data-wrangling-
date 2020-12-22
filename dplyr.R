###############
#data wrangling 
################

#Using dplyr 
#install.packages('dplyr')
library("dplyr")

#using datasets related to flights
#install.packages("nycflights13")
library(nycflights13)
library(EDAWR)

#using the select() code
storms = storms  #dataset 

#selecting strom and pressure columns 
?select
sp = select(storms, "storm", "pressure")

#selecting certain rows with a condition 
?filter 
filter(storms, wind >= 50)

#mutating
?mutate 
storms_R= mutate(storms, ratio = pressure / wind)

#renaming columns 
?rename
#rename(data, new_column's name = old_column's name)
rename(storms_R, Storms.Ratio = ratio)

#arranging data order from a value of a column 
?arrange
arrange(storms, wind)
arrange(storms, desc(wind))   #arraanging in decending order

#using the pipe operator (%>%)
storms %>%                    #select storms dataframe
  filter(wind >= 50) %>%      #filter 
  select(storm, pressure)     #select cloumns storm and pressure form dataframe 


