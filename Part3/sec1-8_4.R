library(googleVis)
sort1 <- Fruits$Sales
sort1
sort(sort1)   #오름차순
sort(sort1,decreasing = T)    #내림차순

install.packages("plyr")
library(plyr)
Fruits <- read.csv("fruits_10.csv")
Fruits
ddply(Fruits, 'name', summarise, sum_qty=sum(qty), sum_price=sum(price))
ddply(Fruits, 'name', summarise, max_qty=max(qty), min_price=min(price))
ddply(Fruits, c('year', 'name'), summarise, max_qty=max(qty), min_price=min(price))

install.packages('dplyr')
library(dplyr)
setwd()

#1. filter - 조건을 주어서 필터링 합니다
#2. select - 여러 컬럼이 있는 데이터셋에서 특정 컬럼만 선택해서 사용합니다.
#3. arrange - 데이터를 오름차순이나 내림차순으로 정렬합니다
#4. mutate - 기존의 변수를 활용하여 새로운 변수를 생성합니다.
#5. summarise(with group_by) - 주어진 데이터를 집계합니다(min, max, mean, count )

data1 <- read.csv("baseball.csv")
data1
data2<- filter(data1,경기>120)
data2
data3 <- filter(data1, 경기>120 & 득점>80)
data3
data4 <- filter(data1, 포지션 %in% c('1루수','3루수'))
data4 <- filter(data1, 포지션=='1루수' | 포지션=='3루수' )

select(data1, 선수명, 포지션, 팀)
select(data1, 순위 : 타수)
select(data1, -홈런,-타점,-도루)

select(data1, 선수명,팀,타수) %>%
  filter(타수>400)

select(data1, 선수명,팀,타수) %>%
  filter(타수>400) %>%
  arrange(타수)

select(data1, 선수명,팀,타수) %>%
  filter(타수>400) %>%
  arrange(desc(타수))

select(data1, 선수명,팀,경기,타수) %>%
  filter(타수>400) %>%
  arrange(desc(경기), desc(타수))

select(data1, 선수명,팀,경기,타수) %>%
  mutate(경기x타수 = 경기*타수) %>%
  arrange(경기x타수)

data2 <- select(data1, 선수명,팀,출루율,장타율) %>%
  mutate(ops = 출루율+장타율) %>%
  arrange(desc(ops))
data2

data1 %>%
  group_by(팀) %>%
  summarise(averge = mean(경기,na.rm = TRUE))

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean),c('경기','타수','타율'))    #funs 이제 안씀
data1 %>%
  group_by(팀) %>%
  summarise_each(list(mean),c('경기','타수','타율'))    #list로 바꿈

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean, n()),c('경기','타수'))

library(googleVis)
attach(Fruits)
data1 <- Fruits

library(plyr)
data2 <- filter(data1, Expenses>80)
data2
filter(data1, Expenses>80 & Sales >90)
filter(data1, Expenses>90 & Sales >80)
filter(data1, Expenses %in% c(79,81))

select(data1,Fruit:Sales,-Location)

data1 %>%
  group_by(Fruit) %>%
  summarise(avarge = sum(Sales,na.rm = TRUE))
data1 %>%
  group_by(Fruit) %>%
  summarise(avarge = sum(Sales,Profit,na.rm = TRUE))











