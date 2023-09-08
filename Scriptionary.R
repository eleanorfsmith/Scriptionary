#look at David's reference spreadsheet

#list of libraries
library(tidyverse)
library(dplyr)
library(plyr)
library(lubridate)
library(readr)
library(plotly)
library(graphics)
library(vegan)
library(reshape2) #needto download reshape2 package- is error with melt function
library(tidyr)
library(pals) #colour palette for up to 26
library(paletteer) #colour palette for continuous and discrete
library(plotly)
library(forcats)
library(ggplot2)
library(leaflet) #bubble graph

#1#changing month numbers to character 
{df2$Month[df2$Month == "01"] <- "Jan"
#...etc
df2$Month[df2$Month == "12"] <- "Dec"}
#2#dictating month order for sampling year so it shows chronologically on plots
month_order <- c("Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan", "Feb", "Mar", "Apr", "May", "Jun")
#3#make date column date format
df$date <- as.POSIXct(df$date, format = "%d/%m/%Y")

#add column with a new formula
df2$pre_cal_error <- round((abs(df2$pre_cal_read - df2$approx_value_of_pre_cal_solution) / df2$approx_value_of_pre_cal_solution) * 100, 2)




