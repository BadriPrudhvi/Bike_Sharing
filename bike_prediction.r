library(dplyr)
library(xgboost)
library(dummies)
library(caret)
library(lubridate)

train_file <- read.csv("~/Documents/Analytics_Vidhya/Bike_Sharing/train.csv", na.strings=c("","NA"))
test_file <- read.csv("~/Documents/Analytics_Vidhya/Bike_Sharing/test.csv", na.strings=c("","NA"))

test_file$registered=0
test_file$casual=0
test_file$count=0
data=rbind(train_file,test_file)
