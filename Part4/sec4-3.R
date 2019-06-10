install.packages('ggplot2')
library(ggplot2)
library(dplyr)
library(plyr)
install.packages("gridExtra")
library(gridExtra)

ko <- read.table("학생별국어성적_new.txt",header = T ,sep=",")
ko
ggplot(ko,aes(x=이름,y=점수)) +
      geom_point()

ggplot(data=ko, mapping = aes(x=이름,y=점수)) +
  geom_point()

gg<-ggplot(data=ko, mapping = aes(x=이름,y=점수),col='blue') +
   geom_bar(stat="identity",fill='red',colour='green')

gg+theme(axis.text.x = element_text(angle = 45,hjust=1,vjust=1,
         color='blue',size=8))

score_kem <- read.csv("학생별과목별성적_국영수_new.csv",header=T)
score_kem


sort_kem <- arrange(score_kem,이름,과목)
sort_kem

#sort_kem2 <- ddply(sort_kem,"이름",transform,누적합계=cumsum(점수))
sort_kem2 <- sort_kem  %>%
  group_by(이름)  %>%
  mutate(누적합계=cumsum(점수))

#sort_kem3 <- ddply(sort_kem2,"이름",transform,누적합계=cumsum(점수),label=cumsum(점수)-0.5*점수)

sort_kem3 <- sort_kem2  %>%
  group_by(이름)  %>%
  mutate(label=cumsum(점수)-0.5*점수)

sort_kem4 <- sort_kem %>%
  group_by(이름)  %>%
  mutate(누적합계=cumsum(점수)) %>%
  mutate(label=cumsum(점수)-0.5*점수)

ggplot(sort_kem3,aes(x=이름 , y= 점수, fill=과목)) + 
  geom_bar(stat = "identity") +
  geom_text(aes(y=label,label=paste(점수,'점')),colour='black',size=4) +
  theme(axis.text.x = element_text(angle = 45,hjust=1,vjust=1,
                                    color='blue',size=8))
        
score <- read.table("학생별전체성적_new.txt",header=T,sep=",")
score

score[,c("이름","영어")]

ggplot(score,aes(x=영어,y=reorder(이름,영어))) + 
  geom_point(size=3) +
  theme_bw( ) +
  theme(panel.grid.major.x=element_blank( ) ,
          panel.grid.minor.x=element_blank( ) ,
          panel.grid.major.y=element_line(color="red",linetype="dashed")) +
  geom_segment(aes(yend=이름),xend=0,color="blue") +
  theme(panel.grid.major.y=element_blank())


v_mt <- mtcars
v_mt

graph1 <- ggplot(v_mt,aes(x=hp , y=mpg))
graph1 + geom_point()	

ggplot(v_mt,aes(x=hp , y=mpg)) +
geom_point(colour="blue")

ggplot(v_mt,aes(x=hp , y=mpg)) +
geom_point(aes(color=factor(am)))

ggplot(v_mt,aes(x=hp , y=mpg)) +
geom_point(size = 7)

ggplot(v_mt,aes(x=hp , y=mpg)) +
geom_point(aes(size = wt))

ggplot(v_mt,aes(x=hp , y=mpg)) + 
geom_point(aes(shape=factor(am),size=wt))

ggplot(v_mt,aes(x=hp , y=mpg)) +
  geom_point(aes(shape=factor(am),color=factor(am),size=wt)) +
  scale_color_manual(values=c("red","green"))

ggplot(mtcars,aes(x=hp , y=mpg)) +
  geom_point(color='red') +
  geom_line(colour='blue')

par(omg(1,1,1,1))
ggplot(mtcars,aes(x=hp , y=mpg)) + 
  geom_point(aes(shape=factor(am),color=factor(am),size=wt)) +
  scale_color_manual(values=c("red","green")) +
  labs(x="마력", y="연비(mile/gallon")

three <- read.csv("학생별과목별성적_3기_3명.csv")
three

s_s <- arrange(three,이름,과목)
  ggplot(s_s,aes(x=과목, y=점수, color=이름, group=이름, fill=이름)) +
    geom_line() +
    geom_point(size=3,shape=21)

dis <- read.csv("1군전염병발병현황_년도별.csv",stringsAsFactors=F)
dis

ggplot(dis,aes(x=년도별, y=장티푸스,group=1))+
  geom_line()

ggplot(dis,aes(x=년도별, y=장티푸스,group=1))+
  geom_area(fill='cyan',alpha=0.5) + 
  geom_line()






































































































































































































































