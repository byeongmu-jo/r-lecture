setwd("D:/Workspace/R_Data_Analysis/Part4")


var1 <- 5:1
plot(var1)
var2<- c(2,2,2)
plot(var2)
x<-1:3
y<-3:1
plot(x,y)
plot(x,y,xlim = c(0,5),ylim = c(0,5))

plot(x,y,xlim = c(0,5),ylim = c(0,5),xlab = "x축",ylab ="y축",main="plot test")

v1 <- c(100,130,120,160,150)
plot(v1, type = "o",col = "red",ylim = c(0,200),axes = FALSE,ann = FALSE)
axis(1,at=1:5,lab=c("MON","TUE","WED","THU","TRI"))
axis(2,ylim=c(0,200))
title(main = "FRUIT",col.main="red",font.main=6)
title(xlab = "DAY",col.lab="black")
title(ylab = "PRICE",col.lab="blue")

v1 <- c(100,130,120,160,150)
par(mfrow=c(1,3))
plot(v1, type = "s")
plot(v1, type = "o")
plot(v1, type = "l")
barplot(v1)

par(mfrow=c(1,1))
a <- c(1,2,3)
plot(a,xlab = "aaa")
par(mgp=c(3,1,0))
    
v1 <- 1:5
v2 <- 5:1
v3 <- 3:7
plot(v1, type = "s", col="red", ylim = c(1,10))
par(new=T)
plot(v2, type = "o", col="blue", ylim = c(1,10))
par(new=T)
plot(v3, type = "l", col="green", ylim = c(1,10))

legend(4,10,c("v1","v2","v3"),
       cex=0.5, col=c("red","blue","green"),lty = 1)

x<- 1:5
barplot(x,horiz = T)
x <- matrix(c(5:2),nrow=2)
x
barplot(x, beside = T)

barplot(x, beside = T,names=c(5,3))
barplot(x, beside = T,names=c(5,3),col=c("green","yellow"),horiz =  T)
par(oma=c(1,0.5,1,0.5)) 
barplot(x, beside = T,names=c(5,3),
        col=c("green","yellow"),horiz =  T,xlim = c(0,10))

par(oma=c(0,0,0,0))
v1 <- c(100,120,140,160,180)
v2 <- c(120,130,150,140,170)
v3 <- c(140,170,120,110,160)
qty <- data.frame(banana=v1, cherry=v2, arange=v3)
qty
barplot(as.matrix(qty),main="Fruit's Sales QTY" ,
        beside=T,col=rainbow(nrow(qty)),ylim=c(0,400))

legend(14,400,c("mon","tue","wed","thu","fri"),cex=0.8,
       fill=rainbow(nrow(qty)))


barplot(t(qty), main = "Fruit's Sales QTY", ylim = c(0,900),
        col=rainbow(length(qty)), space=0.1, cex.axis = 0.8,
        las=1, names.arg = c("mon","tue","wed","thu","fri"),
        cex=0.8)

legend(0.2,900, names(qty),cex = 0.7, fill = rainbow(length(qty)))

peach <- c(180,200,250,198,170)
color <- c()
for (i in 1:length(peach)) {
  if (peach[i]>=200)
    color <- c(color,"red")
  else if (peach[i]>=180)
    color <- c(color,"yrllow")
  else
    color <- c(color, "green")
}

barplot(peach, main = "peach sales qty", 
        names.arg=c("월","화","수","목","금"), col=colors)

height <- c(182,175,167,172,163,178,181,166,159,155)
par(mfrow=c(1,3))
barplot(height, main = 'barplot')
hist(height)

par(mfrow=c(1,1))

p1 <-c(10,20,30,40)
pie(p1,radius = 1)
pie(p1, radius = 1, init.angle = 90)
pie(p1, radius = 1, init.angle = 90, col = rainbow(length(p1)))
pie(p1, radius = 1, init.angle = 90, col = rainbow(length(p1)),
    label=c("w1","w2","w3","w4"))
pct <- round(p1/sum(p1) * 100,1)
lab <- paste(pct," %")
pie(p1,radius=1,init.angle=90,col=rainbow(length(p1)),label=lab)
legend(0.85,1.1,c("w1","w2","w3","w4"),cex=0.5,fill=rainbow(length(p1)))

pct <- round(p1/sum(p1) * 100,1)
lab1 <- c("Week 1","Week 2","Week 3","Week 4")
lab2 <- paste(lab1,"\n",pct," %")
pie(p1,radius=1,init.angle=90,col=rainbow(length(p1)),label=lab2)

install.packages('plotrix')
library(plotrix)
p1 <- c(10,20,30,40,50)
f_day <- round(p1/sum(p1)*100,1)
f_label <- paste(f_day,"%")
pie3D(p1,main="3D Pie Chart",col=rainbow(length(p1)),
        cex=5,labels=f_label, explode=0.05)
legend(0.5,1,c("MON","TUE","WED","THU","FRI"),cex=0.6,
         fill=rainbow(length(p1)))




v1 <- c(10,12,15,11,20)
v2 <- c(5,7,15,8,9)
v3 <- c(11,20,15,18,13)
boxplot(v1,v2,v3)

boxplot(v1,v2,v3, col=c("blue","yellow","pink"), 
        names=c("Blue","Yellow","Pink"),
          horizontal=T)


install.packages("igraph")
library(igraph)
g1 <- graph(c(1,2, 2,3, 2,4, 1,4, 5,5, 3,6))
plot(g1)
str(g1)

name <- c('서진수 대표이사','일지매 부장','김유신 과장',
          '손흥민 대리','노정호 대리', '이순신 부장','유관순 과장',
          '신사임당 대리','강감찬 부장','광개토 과장','정몽주 대리')
pemp <- c('서진수 대표이사','서진수 대표이사','일지매 부장',
          '김유신 과장','김유신 과장','서진수 대표이사',
          '이순신 부장', '유관순 과장','서진수 대표이사',
          '강감찬 부장','광개토 과장')
emp <- data.frame(이름=name,상사이름=pemp)
emp  
str(emp)

g <- graph.data.frame(emp,directed=T)
plot(g,layout=layout.fruchterman.reingold,vertex.size=10,
     edge.arrow.size=0.5)

png("graph/network_2.png", width=600, height=600)
plot(g,layout=layout.fruchterman.reingold,vertex.size=10,
     edge.arrow.size=0.5)
dev.off()

g3 <- graph.data.frame(emp,directed=F)
plot(g3, layout=layout.fruchterman.reingold, vertex.size=8,
     edge.arrow.size=0.5,vertex.label=NA)

plot(g3, layout=layout.kamada.kawai, vertex.size=8,
     edge.arrow.size=0.5,vertex.label=NA)

install.packages("devtools")
library(devtools)
install.packages('d3Network')
library(d3Network)


name <- c('Angela Bassett','Jessica Lange','Winona Ryder','Michelle Pfeiffer',
            'Whoopi Goldberg','Emma Thompson','Julia Roberts','Sharon Stone','Meryl Streep',
            'Susan Sarandon','Nicole Kidman')

pemp <- c('Angela Bassett','Angela Bassett','Jessica Lange','Winona Ryder','Winona Ryder',
            'Angela Bassett','Emma Thompson', 'Julia Roberts','Angela Bassett',
            'Meryl Streep','Susan Sarandon')

emp <- data.frame(이름=name,상사이름=pemp)

d3SimpleNetwork(emp,width=600,height=600,file="graph/d3.html")

g <- read.csv("군집분석.csv",head=T)
graph <- data.frame(학생=g$학생,교수=g$교수)
g<-graph.data.frame(graph,directed=T)
plot(g,layout=layout.fruchterman.reingold,vertex.size=2,
     edge.arrow.size=0.5, vertex.color="green",vertex.label=NA)
plot(g,layout=layout.kamada.kawai,vertex.size=2,
     edge.arrow.size=0.5, vertex.color="green",vertex.label=NA)

V(g)$name
gubun1 <- V(g)$name
gubun1
library(stringr)
gubun <- str_sub(gubun1, start=1, end = 1)
gubun



plot(g,layout=layout.fruchterman.reingold,vertex.size=sizes,edge.arrow.size=0.5,
     ,vertex.color=colors)

colors <- c()
for ( i in 1:length(gubun)) {
  if (gubun[i] == 'S' ) {
    colors <- c(colors,"red") }
  else { 
  colors <- c(colors,"green") }
}

sizes <- c()
for ( i in 1:length(gubun)) {
  if (gubun[i] == 'S' ) {
    sizes <- c(sizes,2) }
  else { 
     sizes <- c(sizes,6) }
}

plot(g,layout=layout.fruchterman.reingold,vertex.size=sizes,edge.arrow.size=0.5,
    vertex.color=colors,vertex.label=NA)

plot(g,layout=layout.fruchterman.reingold,vertex.size=sizes,edge.arrow.size=0,
     vertex.color=colors,vertex.label=NA)

plot(g,layout=layout.kamada.kawai,vertex.size=sizes,edge.arrow.size=0,
     vertex.color=colors,vertex.label=NA)

shapes <- c()
  for ( i in 1:length(gubun)) {
    if (gubun[i] == 'S' ) {
      shapes <- c(shapes,"circle") }
    else { 
       shapes <- c(shapes,"square") }
  }

plot(g,layout=layout.kamada.kawai,vertex.size=sizes,edge.arrow.size=0,
     vertex.color=colors,vertex.label=NA,vertex.shape=shapes)

savePlot("군집_색상크기조절_5.png",type="png")

virus1 <- read.csv("메르스전염현황.csv",header=T)
d3SimpleNetwork(virus1,width=600,height=600,file="graph/mers.html")

