install.packages("wordcloud2")
install.packages("lchiffon/wordcloud2")
install.packages('tm')
install.packages("rJava")
install.packages("RColorBrewer")
library(tm)
library(KoNLP)  
library(wordcloud)
library(stringr)
library(RColorBrewer)
library(wordcloud2)
library(rJava)
useSejongDic()
useNIADic()

data1 <- readLines('응답소_2015_01.txt')
data2 <- readLines('응답소_2015_02.txt')
data3 <- readLines('응답소_2015_03.txt')
data4 <- readLines('응답소_2015_04.txt')
data5 <- readLines('응답소_2015_05.txt')
data6 <- readLines('응답소_2015_06.txt')
data7 <- readLines('응답소_2015_07.txt')
data8 <- readLines('응답소_2015_08.txt')
data9 <- readLines('응답소_2015_09.txt')
data10 <- readLines('응답소_2015_10.txt')
data11 <- readLines('응답소_2015_11.txt')
data12 <- readLines('응답소_2015_12.txt')

# 사용자 정의 함수 문자변환 -> 명사단어 추출 -> 공백으로 합침
#####응답소_2015_01

data1_1 <- sapply(data1, extractNoun, USE.NAMES=F)
data1_2 <- unlist(data1_1) #명사만 추출
data1_3 <- Filter(function(x) {nchar(x) >= 2} ,data1_2)#2개 이상단어
data1_4 <- Filter(function(x) {nchar(x) <= 10} ,data1_3) #글자 수 10 이하만 가져오

data1_4 <- gsub('[~!@#$%&*()_+=?<>]','',data1_4)
data1_4 <- gsub("\\d+","", data1_4)
data1_4 <- gsub(" ","", data1_4)
data1_4 <- gsub("-","",data1_4)
data1_4 <- gsub("제목","",data1_4)

data1_5 <-head(sort(data1_4, decreasing = T),500)
data1_5

write(unlist(data1_5),"data1_6.txt")
data1_7 <- readLines("data1_6.txt")
nrow(data1_7)
data1_8 <- table(data1_7)
wordcloud2(data1_8)

#####응답소_2015_02
data2_1 <- sapply(data2, extractNoun, USE.NAMES=F)
data2_2 <- unlist(data2_1) #명사만 추출
data2_3 <- Filter(function(x) {nchar(x) >= 2} ,data2_2)#2개 이상단어
data2_4 <- Filter(function(x) {nchar(x) <= 10} ,data2_3) #글자 수 10 이하만 가져오

data2_4 <- gsub('[~!@#$%&*()_+=?<>]','',data2_4)
data2_4 <- gsub("\\d+","", data2_4)
data2_4 <- gsub(" ","", data2_4)
data2_4 <- gsub("-","",data2_4)
data2_4 <- gsub("제목","",data2_4)

data2_5 <-head(sort(data2_4, decreasing = T),500)
data2_5

write(unlist(data2_5),"data2_6.txt")
data2_7 <- readLines("data2_6.txt")
nrow(data2_7)
data2_8 <- table(data2_7)
wordcloud2(data2_8)

#####응답소_2015_03

data3_1 <- sapply(data3, extractNoun, USE.NAMES=F)
data3_2 <- unlist(data3_1) #명사만 추출
data3_3 <- Filter(function(x) {nchar(x) >= 2} ,data3_2)#2개 이상단어
data3_4 <- Filter(function(x) {nchar(x) <= 10} ,data3_3) #글자 수 10 이하만 가져오

data3_4 <- gsub('[~!@#$%&*()_+=?<>]','',data3_4)
data3_4 <- gsub("\\d+","", data3_4)
data3_4 <- gsub(" ","", data3_4)
data3_4 <- gsub("-","",data3_4)
data3_4 <- gsub("제목","",data3_4)

data3_5 <-head(sort(data3_4, decreasing = T),500)
data3_5

write(unlist(data3_5),"data3_6.txt")
data3_7 <- readLines("data3_6.txt")
nrow(data3_7)
data3_8 <- table(data3_7)
wordcloud2(data3_8)

#####응답소_2015_04
data4_1 <- sapply(data4, extractNoun, USE.NAMES=F)
data4_2 <- unlist(data4_1) #명사만 추출
data4_3 <- Filter(function(x) {nchar(x) >= 2} ,data4_2)#2개 이상단어
data4_4 <- Filter(function(x) {nchar(x) <= 10} ,data4_3) #글자 수 10 이하만 가져오

data4_4 <- gsub('[~!@#$%&*()_+=?<>]','',data4_4)
data4_4 <- gsub("\\d+","", data4_4)
data4_4 <- gsub(" ","", data4_4)
data4_4 <- gsub("-","",data4_4)
data4_4 <- gsub("제목","",data4_4)

data4_5 <-head(sort(data4_4, decreasing = T),500)
data4_5

write(unlist(data4_5),"data4_6.txt")
data4_7 <- readLines("data4_6.txt")
nrow(data4_7)
data4_8 <- table(data4_7)
wordcloud2(data4_8)

#####응답소_2015_05
data5_1 <- sapply(data5, extractNoun, USE.NAMES=F)
data5_2 <- unlist(data5_1) #명사만 추출
data5_3 <- Filter(function(x) {nchar(x) >= 2} ,data5_2)#2개 이상단어
data5_4 <- Filter(function(x) {nchar(x) <= 10} ,data5_3) #글자 수 10 이하만 가져오

data5_4 <- gsub('[~!@#$%&*()_+=?<>]','',data5_4)
data5_4 <- gsub("\\d+","", data5_4)
data5_4 <- gsub(" ","", data5_4)
data5_4 <- gsub("-","",data5_4)
data5_4 <- gsub("제목","",data5_4)

data5_5 <-head(sort(data5_4, decreasing = T),500)
data5_5

write(unlist(data5_5),"data5_6.txt")
data5_7 <- readLines("data5_6.txt")
nrow(data5_7)
data5_8 <- table(data5_7)
wordcloud2(data5_8)

#####응답소_2015_06
data6_1 <- sapply(data6, extractNoun, USE.NAMES=F)
data6_2 <- unlist(data6_1) #명사만 추출
data6_3 <- Filter(function(x) {nchar(x) >= 2} ,data6_2)#2개 이상단어
data6_4 <- Filter(function(x) {nchar(x) <= 10} ,data6_3) #글자 수 10 이하만 가져오

data6_4 <- gsub('[~!@#$%&*()_+=?<>]','',data6_4)
data6_4 <- gsub("\\d+","", data6_4)
data6_4 <- gsub(" ","", data6_4)
data6_4 <- gsub("-","",data6_4)
data6_4 <- gsub("제목","",data6_4)

data6_5 <-head(sort(data6_4, decreasing = T),500)
data6_5

write(unlist(data6_5),"data6_6.txt")
data6_7 <- readLines("data6_6.txt")
nrow(data6_7)
data6_8 <- table(data6_7)
wordcloud2(data6_8)

#####응답소_2015_07
data7_1 <- sapply(data7, extractNoun, USE.NAMES=F)
data7_2 <- unlist(data7_1) #명사만 추출
data7_3 <- Filter(function(x) {nchar(x) >= 2} ,data7_2)#2개 이상단어
data7_4 <- Filter(function(x) {nchar(x) <= 10} ,data7_3) #글자 수 10 이하만 가져오

data7_4 <- gsub('[~!@#$%&*()_+=?<>]','',data7_4)
data7_4 <- gsub("\\d+","", data7_4)
data7_4 <- gsub(" ","", data7_4)
data7_4 <- gsub("-","",data7_4)
data7_4 <- gsub("제목","",data7_4)

data7_5 <-head(sort(data7_4, decreasing = T),500)
data7_5

write(unlist(data7_5),"data7_6.txt")
data7_7 <- readLines("data7_6.txt")
nrow(data7_7)
data7_8 <- table(data7_7)
wordcloud2(data7_8)
#####응답소_2015_08
data8_1 <- sapply(data8, extractNoun, USE.NAMES=F)
data8_2 <- unlist(data8_1) #명사만 추출
data8_3 <- Filter(function(x) {nchar(x) >= 2} ,data8_2)#2개 이상단어
data8_4 <- Filter(function(x) {nchar(x) <= 10} ,data8_3) #글자 수 10 이하만 가져오

data8_4 <- gsub('[~!@#$%&*()_+=?<>]','',data8_4)
data8_4 <- gsub("\\d+","", data8_4)
data8_4 <- gsub(" ","", data8_4)
data8_4 <- gsub("-","",data8_4)
data8_4 <- gsub("제목","",data8_4)

data8_5 <-head(sort(data8_4, decreasing = T),500)
data8_5

write(unlist(data8_5),"data8_6.txt")
data8_7 <- readLines("data8_6.txt")
nrow(data8_7)
data8_8 <- table(data8_7)
wordcloud2(data8_8)

#####응답소_2015_09
data9_1 <- sapply(data9, extractNoun, USE.NAMES=F)
data9_2 <- unlist(data9_1) #명사만 추출
data9_3 <- Filter(function(x) {nchar(x) >= 2} ,data9_2)#2개 이상단어
data9_4 <- Filter(function(x) {nchar(x) <= 10} ,data9_3) #글자 수 10 이하만 가져오

data9_4 <- gsub('[~!@#$%&*()_+=?<>]','',data9_4)
data9_4 <- gsub("\\d+","", data9_4)
data9_4 <- gsub(" ","", data9_4)
data9_4 <- gsub("-","",data9_4)
data9_4 <- gsub("제목","",data9_4)

data9_5 <-head(sort(data9_4, decreasing = T),500)
data9_5

write(unlist(data9_5),"data9_6.txt")
data9_7 <- readLines("data9_6.txt")
nrow(data9_7)
data9_8 <- table(data9_7)
wordcloud2(data9_8)

#####응답소_2015_10
data10_1 <- sapply(data10, extractNoun, USE.NAMES=F)
data10_2 <- unlist(data10_1) #명사만 추출
data10_3 <- Filter(function(x) {nchar(x) >= 2} ,data10_2)#2개 이상단어
data10_4 <- Filter(function(x) {nchar(x) <= 10} ,data10_3) #글자 수 10 이하만 가져오

data10_4 <- gsub('[~!@#$%&*()_+=?<>]','',data10_4)
data10_4 <- gsub("\\d+","", data10_4)
data10_4 <- gsub(" ","", data10_4)
data10_4 <- gsub("-","",data10_4)
data10_4 <- gsub("제목","",data10_4)

data10_5 <-head(sort(data10_4, decreasing = T),500)
data10_5

write(unlist(data10_5),"data10_6.txt")
data10_7 <- readLines("data10_6.txt")
nrow(data10_7)
data10_8 <- table(data10_7)
wordcloud2(data10_8)

#####응답소_2015_11
data11_1 <- sapply(data11, extractNoun, USE.NAMES=F)
data11_2 <- unlist(data11_1) #명사만 추출
data11_3 <- Filter(function(x) {nchar(x) >= 2} ,data11_2)#2개 이상단어
data11_4 <- Filter(function(x) {nchar(x) <= 10} ,data11_3) #글자 수 10 이하만 가져오

data11_4 <- gsub('[~!@#$%&*()_+=?<>]','',data11_4)
data11_4 <- gsub("\\d+","", data11_4)
data11_4 <- gsub(" ","", data11_4)
data11_4 <- gsub("-","",data11_4)
data11_4 <- gsub("제목","",data11_4)

data11_5 <-head(sort(data11_4, decreasing = T),500)
data11_5

write(unlist(data11_5),"data11_6.txt")
data11_7 <- readLines("data11_6.txt")
nrow(data11_7)
data11_8 <- table(data11_7)
wordcloud2(data11_8)

#####응답소_2015_12
data12_1 <- sapply(data12, extractNoun, USE.NAMES=F)
data12_2 <- unlist(data12_1) #명사만 추출
data12_3 <- Filter(function(x) {nchar(x) >= 2} ,data12_2)#2개 이상단어
data12_4 <- Filter(function(x) {nchar(x) <= 10} ,data12_3) #글자 수 10 이하만 가져오

data12_4 <- gsub('[~!@#$%&*()_+=?<>]','',data12_4)
data12_4 <- gsub("\\d+","", data12_4)
data12_4 <- gsub(" ","", data12_4)
data12_4 <- gsub("-","",data12_4)
data12_4 <- gsub("제목","",data12_4)

data12_5 <-head(sort(data12_4, decreasing = T),500)
data12_5

write(unlist(data12_5),"data12_6.txt")
data12_7 <- readLines("data12_6.txt")
nrow(data12_7)
data12_8 <- table(data12_7)
wordcloud2(data12_8)

#=============================================실패


install.packages('tidyverse')
library('tidyverse')
data1

data1_1 <- SimplePos09(data1)

install.packages('reshape2')
library(reshape2)

data1_1 %>% class()
data1_2 <- data1_1 %>% melt %>% head 
data1_2


data1_1 <- SimplePos09(data1)

words <- function(doc) {
  doc <- as.character(doc)
  extractNoun(doc)
}

doc <- data1
data1_1 <- paste(SimplePos22(doc))
data1_2 <- str_match(data1_1, "[가-힣]+/NC")
data1_3 <- data1_2[,2]
doc4[!is.na(doc4)]

words <- function(doc){
  doc <- as.character(doc)
  doc2 <- paste(SimplePos22(doc))
  doc3 <- str_match(doc2, "([가-힣]+)/NC")
  doc4 <- doc3[,2]
  doc4[!is.na(doc4)]
}
data1_3 <- words(data1)

data1_3 <- rowSums(doc)

data1_3 <- doc[order(doc, decreasing=T)]

as.data.frame(as.data.frame(doc[1:20])[1:20])


```{r}
install.packages("wordcloud2")
install.packages("lchiffon/wordcloud2")
install.packages('tm')
install.packages("rJava")
install.packages("RColorBrewer")
library(tm)
library(KoNLP)  
library(wordcloud)
library(stringr)
library(RColorBrewer)
library(wordcloud2)
library(rJava)
useSejongDic()
useNIADic()

data1 <- readLines('응답소_2015_01.txt')
data2 <- readLines('응답소_2015_02.txt')
data3 <- readLines('응답소_2015_03.txt')
data4 <- readLines('응답소_2015_04.txt')
data5 <- readLines('응답소_2015_05.txt')
data6 <- readLines('응답소_2015_06.txt')
data7 <- readLines('응답소_2015_07.txt')
data8 <- readLines('응답소_2015_08.txt')
data9 <- readLines('응답소_2015_09.txt')
data10 <- readLines('응답소_2015_10.txt')
data11 <- readLines('응답소_2015_11.txt')
data12 <- readLines('응답소_2015_12.txt')
```





