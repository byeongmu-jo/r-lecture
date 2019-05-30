print(5/2)
print(5%/%2)  #나눗셈의 몫
print(5%%2)   #나눗셈의 나머지
print(5^2)
print(5*5)

100000 + 100000
10000 + 10000
1/1000000
1/10000
1/1000
'1'+'2'
as.numeric('1')+as.numeric('2')

'first'
"second"
first <- 1
first

class(1)
class('1')

3 & 0
3 & 1
3 | 0
!0
!3
class(!0)

cat(1,NA,2)
cat(1,NULL,2)
sum(1,NA,2)
sum(1,NULL,2)
sum(1,NA,2,na.rm = T)

class(NA)
class(NULL)

setwd("D:/Workspace/R_Data_Analysis/Part3/data")
txt1 <- read.csv(factor_test.csv)
factor1 <- factor(txt1$blood)
factor1
gender1 <- factor(tet1$sex)
gender1
summary(factor1)
summary(sex1)

txt1 <- factor_test
factor1 <- factor(txt1$blood)
factor1
gender1 <- factor(txt1$sex)
gender1
summary(factor1)
summary(gender1)


Sys.Date()
Sys.time()
class(Sys.Date())
class("2019-05-30")
class(as.Date("2019-05-30"))
as.Date("2019/05/30")
as.Date("19-05-30")
as.Date("01-11-2014",format ="%d-%m-%Y")
as.Date("19-05-30",format="%y-%m-%d")
as.Date("190530",format="%y%m%d")
as.Date("2014년 11월 1일",format="%Y년 %m월 %d일")
as.Date("01112014",format="%d%m%Y")
as.Date(10, origin="2019-05-30")
as.Date(20, origin=date())  #문자열만 가능
as.Date(20, origin=Sys.Date())
as.Date(-10, origin="2019-05-30")
as.Date("2019-05-30") - as.Date("2019-05-27")
as.Date("2014-11-1") + 5
as.Date("2019-11-14")-Sys.Date()
as.Date("2014-11-1 20:00:00") - as.Date("2014-11-01 18:30") #POSIClt
as.POSIXct("2014-11-1 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
0.49167*60
0.50002*60

install.packages("lubridate")
install.packages("exel")
install.packages("readxl")

library(lubridate)
library(readxl)
now()
date <-now()
year(date)
month(date)
month(date, label = T)
day(date)
wday(date)
wday(date, label = T)
date <- date - day(2); date
month(date) <- 2; date
date+years(1)













