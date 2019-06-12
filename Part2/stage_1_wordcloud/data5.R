#hiphop.txt 파일을 가지고 다음 문제를 해결하여 파워포인트 파일로 제출하시오.
#1. 워드 클라우드 만들기
#2. Top 10 단어에 대해서 원 그래프 만들기 (ggplot 사용할 것)
#3. Top 10 단어에 대해서 막대 그래프 만들기 (ggplot 사용할 것)
#https://studymaps.tistory.com/8
library(tm)
library(KoNLP)  
library(wordcloud2)
library(stringr)
library(RColorBrewer)
library(rJava)
library(memoise)
library(dplyr)
library(ggplot2)
library(dplyr)
install.packages('extrafont')
library(extrafont)
useNIADic()
options(digits = 2)
data1_1 <- readLines("hiphop.txt")

data1_2 <- str_replace_all(data1_1,"\\W"," ")
data1_3 <- str_replace_all(data1_2,"\\d+"," ")

data1_4 <- extractNoun(data1_3)
data1_5 <- table(unlist(data1_4))

data1_6 <- as.data.frame(data1_5, stringsAsFactors = F)
data1_7 <- filter(data1_6, nchar(Var1) >= 2)

wordcloud2(data1_7)

data1_8 <- data1_7 %>%
  arrange(desc(Freq)) %>%
  head(500)

top10 <- data1_7 %>%
  arrange(desc(Freq)) %>%
  head(10)



top10_1 <- top10 %>%
  mutate(pct = Freq / sum(Freq)*100) %>%
  mutate(ylabel = paste(sprintf("%4.1f",pct),'%', sep = '')) %>%
  arrange(desc(Var1)) %>%
  mutate(ypos = cumsum(pct) - 0.5*pct)


ggplot(top10_1, aes(x='', y = Freq, fill = Var1)) +
  geom_bar(stat="identity") +
  coord_polar(theta = "y", start = 0) +
  geom_text(aes(y=ypos, label=ylabel))


p + geom_bar(stat="identity") +
  coord_polar(theta = "y") 

p + geom_bar(stat="identity")







