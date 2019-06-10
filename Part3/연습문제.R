library(ggplot2)
library(googleVis)
library(plyr)
library(dplyr)
mpg
data <- mpg

ggplot(data, aes(x = cty, y = hwy)) +
  geom_point()

asia <- midwest
asia1_1 <- asia %>%
  select(poptotal,popasian)

asia1_2 <- filter(asia1_1, poptotal<500000 & popasian<=10000)

ggplot(asia, aes(x = poptotal, y= popasian )) +
  geom_point(size = 1)


--------------------------------------------------
data1 <- select(data, cty, class, manufacturer) %>%
  filter(class == 'suv')

data1 %>%
  group_by(manufacturer) %>%
  summarise(averge = mean(cty,na.rm = TRUE)) %>%
  arrange(desc(averge))

data1_1 <- data1 %>%
  filter(manufacturer=='subaru' | manufacturer=='toyota' | 
           manufacturer=='nissan' | manufacturer=='jeep' |
           manufacturer=='mercury')

data1_2 <- data1_1 %>%
  group_by(manufacturer) %>%
  summarise(averge = mean(cty,na.rm = TRUE))

ggplot(data1_2, aes(x = reorder(manufacturer, -data1_2$averge), y= averge)) +
         geom_bar(stat='identity')

  
---------------------------------------------------------
data3 <- select(data, class) %>%
  mutate(T = 1) %>%
  group_by(class) %>%
  summarise(sum = sum(T))

ggplot(data3, aes(x=reorder(class, -data3$sum), y=sum)) +
  geom_bar(stat='identity')

---------------------------------------------------------

economics
data_e <- economics

data4 <-select(data_e, psavert, date)

ggplot(data_e, aes(x=date,y=psavert)) +
  geom_line()

----------------------------------------------------------

data5 <- select(data, cty, class, manufacturer) %>%
  filter(class == 'suv' | class == 'compact' | class == 'subcompact')
#filter(class %in% c( 'suv','compact','subcompact')
ggplot(data5, aes(x=class, y=cty)) +
  geom_boxplot()

----------------------------------------------------------

data6 <- diamonds

data7 <- select(data6, cut) %>%
  mutate(nt = 1) %>%
  group_by(cut) %>%
  summarise(sum = sum(nt))

ggplot(data7, aes(x=cut, y=sum)) +
  geom_bar(stat='identity')

data8 <- select(data6, cut, price) %>%
  group_by(cut) %>%
  summarise(price_mean1 = mean(price))

gg1 <- ggplot(data8, aes(x=cut,y=price_mean1,group=1)) +
  geom_bar(stat='identity')


data9 <- select(data6, color, price) %>%
  group_by(color) %>%
  summarise(price_mean2 = mean(price))

gg2 <- 
  ggplot(data9, aes(x=color,y=price_mean2,group=1)) +
  geom_bar(stat='identity')

grid.arrange(gg1, gg2, ncol=2)

----------------------------------------------------------

ggplot(data6 , aes(x=price)) +
  geom_histogram(bins=10) +
  fecet_wrap()
  
  
data10 <- select(data6, color, price, cut)

data11 <- data10 %>%
  mutate(sum=paste(data6$color,data6$cut,sep = "_"))

data12 <- data11 %>% 
  group_by(sum) %>%
  mutate(price_sum = mean(price))

ggplot(data12, aes(x=sum, y= price_sum)) +
  geom_bar(stat='identity') +
  











