library(KoNLP)  
library(wordcloud)
alert <- readLines("oracle_alert_testdb.log") 
error_1 <- gsub(" ","_",alert)
head(unlist(error_1), 20)

error_2 <- unlist(error_1)
error_2<- Filter(function(x) {nchar(x) >= 5} ,error_2)

error_3 <- grep("^ORA-+",error_2,value=T)
head(unlist(error_3), 20)
write(unlist(error_3),"alert_testdb2.log") 
rev <- read.table("alert_testdb2.log")
nrow(rev) 
errorcount <- table(rev)  # 반복되는 에러별로 집계를 해서 errorcount 에 저장합니다.
head(sort(errorcount, decreasing=T),20)

library(RColorBrewer) 
palete <- brewer.pal(9,"Set1") 
wordcloud(names(errorcount),freq=errorcount,scale=c(5,0.5),rot.per=0.25,min.freq=3,
            random.order=F,random.color=T,colors=palete)




data1 <- readLines("yeca_1.txt")

data1_1 <- sapply(data1, extractNoun, USE.NAMES=F)
data1_2 <- unlist(data1_1)
data1_3 <- Filter(function(x) {nchar(x) >= 2} ,data1_2)
data1_4 <- Filter(function(x) {nchar(x) <= 10} ,data1_3)

data1_4 <- gsub('[~!@#$%&*()_+=?<>]','',data1_3)
data1_4 <- gsub("\\d+","", data1_4)
data1_4 <- gsub(" ","", data1_4)
data1_4 <- gsub("-","",data1_4)

write(unlist(data1_4),"data1_5.txt")
data1_6 <- readLines("data1_5.txt")
nrow(data1_6)
data1_7 <- table(data1_6)

wordcloud2(data1_7)



----------------------------------------------











































































