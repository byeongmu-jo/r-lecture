setwd("D:/Workspace/R_Data_Analysis/Part2/stage_1_wordcloud")
library(KoNLP)
library(wordcloud) 
library(RColorBrewer) 

useSejongDic() 

install.packages('KoNLP')
data1 <- readLines('remake.txt')
data2 <- sapply(data1,extra)
data3 <- gsub("쌍수","쌍꺼풀",data3)ctNoun,USE.NAMES=F))
data3 <- unlist(data2) #명사만 추출
data3 <- Filter(function(x) {nchar(x) <= 10} ,data3) #글자 수 10 이하만 가져오기
head(unlist(data3), 30)
data3 <- gsub("\\d+","", data3)
data3 <- gsub("쌍커풀","쌍꺼풀",data3)
data3 <- gsub("메부리코","매부리코",data3)
data3 <- gsub("\\.","",data3)
data3 <- gsub(" ","",data3)
data3 <- gsub("\\'","",data3)
data3 <- gsub("수","",data3)
data3 <- gsub("ㅠㅠㅠㅠ","",data3)
data3 <- gsub("기","",data3)

txt <- readLines('성형gsub.txt')
for(i in 1:length(txt)) {
  data3 <- gsub((txt[i])," ", data3)
}
data3

write(unlist(data3),"remake_2.txt") 
write(unlist(data3),"remake_2.txt") 
data4 <- read.table("remake_2.txt")
data4
nrow(data4) 
wordcount <- table(data4) 

palete <- brewer.pal(9,"Set3") 
wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=2,
          random.order=F,random.color=T,colors=palete)

legend(0.3,1 ,"성형gsub",
      cex=0.8,fill=NA,border=NA,bg="white" ,
      text.col="red",text.font=2,box.col="red")







































