install.packages("KoNLP") 
install.packages("wordcloud") 
install.packages('stringr')
library(KoNLP)  
library(wordcloud)
library(stringr)
library(RColorBrewer)
useSejongDic() 


mergeUserDic(data.frame(readLines("제주도여행지.txt"), "ncn"))

txt <- readLines("jeju.txt")
txt
place <- sapply(txt,extractNoun,USE.NAMES=F)
place   
head(unlist(place), 30)
cdata <- unlist(place) 
place <- str_replace_all(cdata,"[^[:alpha:]]","")  #한글영어를 제외한 것 모두
place <- gsub(" ","", place)

txt <- readLines("제주도여행코스gsub.txt")

cnt_txt <- length(txt)
cnt_txt

i <- 1
for( i in 1:cnt_txt) {
      place <-gsub((txt[i]),"",place)     
      }
place

place <- Filter(function(x) {nchar(x) >= 2} ,place)


write(unlist(place),"jeju_2.txt") 
rev <- read.table("jeju_2.txt")
nrow(rev)   
wordcount <- table(rev) 
head(sort(wordcount, decreasing=T),30)

 palete <- brewer.pal(9,"Set1") 
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per=0.25, min.freq=2, random.order=F, random.color=T, colors=palete)
legend(0.3,1 ,"제주도 추천 여행 코스 분석",cex=0.8,fill=NA,border=NA,bg="white" ,text.col="red",text.font=2,box.col="red")


install.packages("plotrix")
library(plotrix)
th_pct <- round(bchart/sum(bchart) * 100,1)
th_names <- names(bchart)
th_labels <- paste(th_names,"\n","(",th_pct,")")

pie3D(bchart,main="제주도 추천 여행 코스 Top 10",col=rainbow(10),
         cex=0.3,labels=th_labels,explode=0.05)










