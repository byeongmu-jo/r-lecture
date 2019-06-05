install.packages("sqldf")
library(sqldf)
library(googleVis)
Fruits

sqldf('select * from Fruits')
sqldf("select * from Fruits where Fruit='Apples'")
sqldf('select * from Fruits where Fruit=\'Apples\'')
sqldf('select * from Fruits limit 3')
sqldf('select * from Fruits limit 3,5')

sqldf('select * from Fruits order by Year')
sqldf('select * from Fruits order by Year desc')

sqldf('select Fruit, sum(Sales) from Fruits group by Fruit')
sqldf('select Fruit, sum(Sales), sum(Expenses), sum(Profit) from Fruits group by Fruit')

sqldf('select Year, avg(Sales), avg(Expenses), avg(Profit) from Fruits group by Year')
sqldf('select Year, avg(Sales), avg(Expenses), avg(Profit) from Fruits group by Year order by avg(Profit) desc')
sqldf('select min(Sales), max(Sales) from Fruits')
sqldf('select * from Fruits where Sales=81')

sqldf('select * from Fruits where Sales=
      (select min(Sales) from Fruits)')

sqldf('select * from Fruits where Expenses=
      (select max(Expenses) from Fruits)')

sqldf('select * from Fruits where Sales in
      (select Sales from Fruits)')

song <- read.csv("song.csv",header = F, fileEncoding = 'UTF-8')
names(song) <- c("_id","title","lyrics","girl_group_id")
song
girl_group <- read.csv("girl_group.csv",header = F, fileEncoding = 'UTF-8')
girl_group
names(girl_group) <- c("_id","name","debut")

sqldf('select gg._id, gg.name, gg.debut, s.title
      from girl_group AS gg
      inner join song AS s
      on gg._id = s.girl_group_id')
#화면에 보이는 내용만 변경
sqldf('update Fruits set Profit=40 where Fruit=\'Apples\' and Year=2008')
sqldf('delete from Fruits where Fruit="Apples" and Year=2008')
