install.packages("reshape2")
library(reshape2)

setwd("D:/Workspace/R_Data_Analysis/Part3/data")
fruits<-read.csv("fruits_10.csv")
melt(fruits,id='year')
melt(fruits,id=c('year','name'))
melt(fruits,id=c('year','name'),variable.name='var_name',value.name='val_name')


install.packages("stringr")
library(stringr)
fruits <- c('apple','Apple','banana','pineapple')
str_detect(fruits, 'A')
str_detect(fruits, 'a')
str_detect(fruits, '^a')
str_detect(fruits, 'e$')
str_detect(fruits, '^[aA]')
str_detect(fruits, '[aA]')

str_detect(fruits, regex('a', ignore_case = T))
str_count(fruits, 'a')
str_count(fruits, regex('a', ignore_case = T))
str_c("apple","banana")
str_c("Fruits: ",fruits)
str_c(fruits ," name is ",fruits)
str_c(fruits ,collapse = " ")
str_c(fruits ,collapse = ", ")

str_dup(fruits, 10000)
str_length('apple')
str_length(fruits)
str_length('과일')

str_locate('apple', 'a')

str_replace('apple','p','**')
str_replace_all('apple','p','**')
fruits <- str_c('apple','/','orange','/','banana')

str_sub(fruits,start=1,end=3)
str_sub(fruits,start=6,end=9)
str_sub(fruits,start=-5)
str_trim('\t  apple banana berry  \n')
d

