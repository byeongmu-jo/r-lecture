?subset()
?aggregate()
vec1 <- c(1:5)
vec2 <- c('a','b','c','d','e')  
max(vec1)
max(vec2)
mean(vec1)
mean(vec2)
min(vec1)
sd(vec1)
sum(vec1)
var(vec1)

install.packages("googleVis")
library(googleVis)
Fruits
aggregate(Sales~Year, Fruits, sum)
aggregate(Sales~Year, Fruits, max)
aggregate(Sales~Year, Fruits, mean)
aggregate(Sales~Fruit, Fruits, mean)
aggregate(Sales~Fruit+Year, Fruits, max)

mat1 <- matrix(c(1:6),nrow = 2,byrow = TRUE)
mat1
apply(mat1,1,sum)
apply(mat1,2,sum)
apply(mat1[,c(2,3)],1,sum)

list1 <- list(Fruits$Sales)
list2 <- list(Fruits$Profit)
lapply(c(list1,list2),max)
lapply
sapply(c(list1,list2),max)
attach(Fruits)
tapply(Sales,Fruit,sum)
tapply(Sales,Year,sum)

vec1 <- c(1:5)
vec2 <- seq(10,50,10)
vec3 <- seq(100,500,100)
mapply(sum,vec1,vec2,vec3)

------------------------------------------------------------------
data1 <- read.csv('averge.csv')
data2 <- data1[,-1]

apply(data2,2,sum)

data3 <- read.csv('subway.csv')

attach(data4)
tapply(승차,노선번호,sum)
class(data3[1,])

aggregate(승차~노선번호,data3,sum)
aggregate(하차~노선번호,data3,sum)
aggregate(승차~노선번호,data3,sum)

data5 <- cbind(data3,data.frame("승차하차"=(data3[,3]+data3[,4])))
data5
attach(data5)
tapply(승차하차,노선번호,sum)
tapply(승차,노선번호,sum)
tapply(하차,노선번호,sum)
aggregate(승차~노선번호,data5,sum)
aggregate(하차~노선번호,data5,sum)

