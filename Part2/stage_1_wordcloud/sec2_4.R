library("wordcloud")
library("tm")
library(wordcloud2)
library(KoNLP)  
library(wordcloud)
library(stringr)
library(RColorBrewer)
data1 <- readLines("tm_test1.txt")
data1
class(data1)
data1 <- iconv(data1,"WINDOWS-1252","UTF-8")
corp1 <- Corpus(VectorSource(data1)) 
corp1                           

inspect(corp1)
tdm <- TermDocumentMatrix(corp1)
tdm
m <- as.matrix(tdm)
m 

corp2 <- tm_map(corp1,stripWhitespace) 
corp2 <- tm_map(corp2,tolower) 
corp2 <- tm_map(corp2,removeNumbers) 
corp2 <- tm_map(corp2,removePunctuation) 
corp2 <- tm_map(corp2,PlainTextDocument) 
sword2 <- c(stopwords('en'),"and","but",”not”) 
corp2 <- tm_map(corp2,removeWords,sword2) 

tdm2 <- TermDocumentMatrix(corp2)
tdm2
m2 <- as.matrix(tdm2)
m2 

colnames(m2) <- c(1:4)
m2 

freq1 <- sort(rowSums(m2),decreasing=T)
head(freq1,20)

class(m2)

freq2 <- sort(colSums(m2),decreasing=T)
head(freq2,20)

findFreqTerms(tdm2,2) 

library(RColorBrewer) 
palete <- brewer.pal(7,"Set3")
wordcloud(names(freq1),freq=freq1,scale=c(5,1),min.freq=1,colors=palete,
          random.order=F, random.color=T)


legend(0.3,1 ,"tm Package Test #1 ",cex=1,
          fill=NA,border=NA,bg="white",
          text.col="red",text.font=2,box.col="red")

barplot(freq1,main="tm package test #2",las=2,ylim=c(0,5))


data1 <- readLines("steve.txt")
data1

corp1 <- Corpus(VectorSource(data1)) # 말뭉치로 변환하기
corp1

corp2 <- tm_map(corp1,stripWhitespace) 
corp2 <- tm_map(corp2,tolower) 
corp2 <- tm_map(corp2,removeNumbers) 
corp2 <- tm_map(corp2,removePunctuation) 
corp2 <- tm_map(corp2,PlainTextDocument) 
stopword2 <- c(stopwords('en'),"and","but") 
corp2 <- tm_map(corp2,removeWords,stopword2)
class(corp2)
corp3 <- TermDocumentMatrix(corp2,control=list(wordLengths=c(1,Inf)))
corp3

findFreqTerms(corp3,10) 
findAssocs(corp3,"apple",0.5) 

corp4 <- as.matrix(corp3)
corp4

freq1 <- sort(rowSums(corp4),decreasing=T)
freq2 <- sort(colSums(corp4),decreasing=T)
head(freq2,20)

dim(corp4)

colnames(corp4) <- c(1:59)

freq2 <- sort(colSums(corp4),decreasing=T)

library(RColorBrewer) 
palete <- brewer.pal(7,"Set3")
wordcloud(names(freq1),freq=freq1,scale=c(5,1),min.freq=5,colors=palete,
             random.order=F, random.color=T)

legend(0.3,1 ,"스티브 잡스 연설문 분석",cex=1,fill=NA,
          border=NA,bg="white" , text.col="red",text.font=2,box.col="red")













