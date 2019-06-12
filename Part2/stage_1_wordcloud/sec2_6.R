library(KoNLP)  
library(wordcloud)
library(stringr)
library(RColorBrewer)
library(ggplot2)
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

top10 <- head(sort(wordcount, decreasing=T),10)
pie(top10,main="제주도 추천 여행 코스 TOP 10")
palete <- brewer.pal(9,"Set1") 
pie(top10,col=palete,radius=1,main="제주도 추천 여행 코스 TOP 10")

pct <- round(top10/sum(top10) * 100 ,1)
names(top10)
lab <- paste(names(top10),"\n",pct,"%")
pie(top10,main="제주도 추천 여행 코스 TOP 10",col=rainbow(10), 
 cex=0.8,labels = lab)

df <- as.data.frame(top10)
ggplot(df, aes(x='', y=Freq, fill=rev)) +
  geom_bar(stat="identity") +
  coord_polar(theta = "y") +
  ggtitle("top10")


 library(dplyr)
options(digits = 2)

df <- df %>%
  mutate(pcr = Freq / sum(Freq) * 100) %>%
  mutate(ylabel = paste(sprintf("%4.1f",pct),'%', sep = '')) %>%
  arrange(desc(rev)) %>%
  mutate(ypos = cumsum(pct) - 0.5*pct)
df

ggplot(df, aes(x='', y=Freq, fill=rev)) +
  geom_bar(stat="identity") +
  coord_polar(theta = "y") +
  ggtitle("top10")

ggplot(df, aes(x='', y=Freq, fill=rev)) +
  geom_bar(stat="identity") +
  geom_text(aes(y=ypos, label=ylabel), color='black') +
  ggtitle("top10")


install.packages('extrafont')
library(extrafont)
windowsFonts()
windowsFonts(malgun = "맑은 고딕")
theme_update(text = element_text(family = "malgun"))

ggplot(df, aes(x='', y=Freq, fill=rev)) +
  geom_bar(stat="identity") +
  coord_polar(theta = "y", start = 0) +
  ggtitle("top10") +
  theme(plot.title = element_text(face ="bold", hjust = 0.5)
        size = 15, color= "darkblur") + 
  geom_text(aes(y=ypos, label=ylabel), color='black')


bchart <- head(sort(wordcount, decreasing=T),10)
bchart

bp <- barplot(bchart,  main = "제주도 추천 여행 코스 TOP 10 ", col = rainbow(10), 
                   cex.names=0.7, las = 2,ylim=c(0,25))

pct <- round(bchart/sum(bchart) * 100 ,1)
pct

text(x = bp, y = bchart*1.05, labels = paste("(",pct,"%",")"), col = "black", cex = 0.7)
text(x = bp, y = bchart*0.95, labels = paste(bchart,"건"), col = "black", cex = 0.7)

barplot(bchart,main="제주도 추천 여행 코스 Top 10",col=rainbow(10),
         xlim=c(0,25),cex.name=0.7,las=1,horiz=T)
text(y = bp, x = bchart*0.9, labels = paste(bchart,"건"), col = "black", cex = 0.7)
text(y = bp, x = bchart*1.15, labels = paste("(",pct,"%",")"), col = "black", cex = 0.7)







