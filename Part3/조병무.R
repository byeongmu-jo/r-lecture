install.packages('ggplot2')
library(ggplot2)
mpg
View(mpg)

data1 <- mpg
------------------------------------------------------

#1.자동차 배기량에 따라 고속도로 연비가 다른지 알아보려고 합니다. displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중 어떤 자동차의hwy(고속도로 연비)가 평균적으로 더 높은지 알아보세요.
data1
data_1 <- filter(data1, displ<=4)
data_2 <- filter(data1, displ>=5)
mean(data_1$cty); mean(data_2$cty)
----------------------------------------------------

#2. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 합니다. "audi"와 "toyota" 중 어느 manufacturer(자동차 제조 회사)의 cty(도시 연비)가 평균적으로 더 높은지 알아보세요

data3 <- filter(data1, manufacturer %in% c("audi","toyota"))
data3

data3 %>%
  group_by(manufacturer) %>%
  summarise(m_cty=mean(cty))

----------------------------------------------

#3."chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 합니다. 이 회사들의 자동차를 추출한 뒤 hwy 전체 평균을 구해보세요. data2

data4 <- filter(data1, manufacturer %in% c("chevrolet","ford","honda"))
  
data4 %>%
  group_by(manufacturer) %>%
  summarise(mean(hwy))

----------------------------------------------------

#4.mpg 데이터는 11개 변수로 구성되어 있습니다. 이 중 일부만 추출해서 분석에 활용하려고 합니다. mpg 데이터에서 class(자동차 종류), cty(도시 연비) 변수를 추출해 새로운 데이터를 만드세요. 새로 만든 데이터의 일부를 출력해서 두 변수로만 구성되어 있는지 확인하세요.
data5 <- select(data1,c('cty','class'))
data5
head(data5)

----------------------------------------------------

#5.자동차 종류에 따라 도시 연비가 다른지 알아보려고 합니다. 앞에서 추출한 데이터를 이용해서 class(자동차 종류)가 "suv"인 자동차와 "compact"인 자동차 중 어떤 자동차의 cty(도시 연비)가 더 높은지 알아보세요.

data6 <- filter(data1,class %in% c("suv","compact"))  
  
data6 %>%
  group_by(class) %>%
  summarise(mean(cty))

----------------------------------------------------


#6"audi"에서 생산한 자동차 중에 어떤 자동차 모델의 hwy(고속도로 연비)가 높은지 알아보려고 합니다. "audi"에서 생산한 자동차 중 hwy가 1~5위에 해당하는 자동차의 데이터를 출력하세요.
data7 <- filter(data1, manufacturer == "audi") 
data8 <- select(data7,c('manufacturer','hwy'))
data8

data8_1 <- arrange(data8,desc(hwy))
head(data8_1,5)
------------------------------------------

  
#7 mpg 데이터는 연비를 나타내는 변수가 hwy(고속도로 연비), cty(도시 연비) 두 종류로 분리되어 있습니다. 두 변수를 각각 활용하는 대신 하나의 통합 연비 변수를 만들어 분석하려고 합니다.
#(1)
data9 <- data1 %>%
  mutate( sum = cty + hwy )

#(2)
data10 <- data9 %>%
  mutate( sum나누기2 = (cty + hwy)/2 )

#(3)
data11 <- data10 %>%
  group_by(manufacturer) %>%
  summarise(mean2 = mean(sum나누기2))
data11  

#(4)
arrange(data11,desc(mean2))

------------------------------------------------------

#8.mpg 데이터의 class는 "suv", "compact" 등 자동차를 특징에 따라 일곱 종류로 분류한 변수입니다. 어떤 차종의 연비가 높은지 비교해보려고 합니다. class별 cty 평균을 구해보세요.
data12 <- select(data1, c('class','cty'))
  
data13 <- data12 %>%
  group_by(class) %>%
  summarise(cty = mean(cty))
data13
arrange(data13,desc(cty))
head(data13,5)  
-----------------------------------------
  
#9. 앞 문제의 출력 결과는 class 값 알파벳 순으로 정렬되어 있습니다. 어떤 차종의 도시 연비가 높은지 쉽게 알아볼 수 있도록 cty 평균이 높은 순으로 정렬해 출력하세요.

arrange(data13,desc(cty))

-------------------------------------------------

#10. 어떤 회사 자동차의 hwy(고속도로 연비)가 가장 높은지 알아보려고 합니다. hwy 평균이 가장 높은 회사 세 곳을 출력하세요.

data14 <- select(data1,c('manufacturer','hwy'))

data15 <- data14 %>%
  group_by(manufacturer) %>%
  summarise(m_hwy = mean(hwy))

arrange(data15)
head(data15,5)

-------------------------------------------------------
  
#11. 어떤 회사에서 "compact"(경차) 차종을 가장 많이 생산하는지 알아보려고 합니다. 각 회사별 "compact" 차종 수를 내림차순으로 정렬해 출력하세요.

data16 <- select(data1, c('manufacturer','class'))

data17 <- data16 %>%
  group_by(class) %>%
  
data1 %>%
  filter(class == 'compeact') %<%
  group_by(manufacturer) %<%
  summarise(n = count( n()))

