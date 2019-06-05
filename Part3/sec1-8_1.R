list.files()
scan1 <- scan('scan_1.txt')
scan2 <- scan('scan_2.txt')   #1.00 2.00 3.00 4.00
scan2 <- scan('scan_2.txt',what="")
scan3 <- scan('scan_3.txt',what="")
scan4 <- scan('scan_4.txt',what="")
input <- scan()
input
input <- scan(what = "")
input
input3 <- readline()
input3
input4 <- readline("Are you OK?:")
input4
input5 <- readLines('scan_4.txt')
input5

fruits <- read.table("fruits.txt")
fruits
fruits <- read.table("fruits.txt",header = T)
fruits
fruits2 <- read.table("fruits_2.txt")
fruits2
fruits2 <- read.table("fruits_2.txt",skip = 2)
fruits2 <- read.table("fruits_2.txt",nrows = 2)
f2top <- read.table("fruits_2.txt",nrows = 2)
f2bottom <- read.table("fruits_2.txt",skip = 3)

fruits3 <- read.csv('fruits_3.csv')
fruits3
fruits4 <- read.csv('fruits_4.csv')
fruits4
fruits4 <- read.csv('fruits_4.csv',header = F)

label <- c('NO','NAME','PRICE','QTY')
fruits4 <- read.csv('fruits_4.csv',header = F, col.names = label)
fruits4

install.packages("googleVis")
library(googleVis)
Fruits
install.packages("sqldf")
library(sqldf)

write.csv(Fruits, "Fruits_sql.csv",quote=F, row.names = F)
fruits_2 <-read.csv.sql("Fruits_sql.csv",sql="SELECT * FROM file WHERE Year = 2008")
fruits_2

install.packages("XLConnect")
library(XLConnect)
data1=loadWorkbook("fruits_6.xls",create = T)
data1
data2 <- readWorksheet(data1,sheet = "sheet1",startRow = 1,endRow = 8, startCol = 1,endCol = 5)
data2
fruits6 <- read.delim("clipboard",header = T)
fruits6

install.packages("readxl")
library(readxl)
fruits7 <- read_excel('D:/Workspace/R_Data_Analysis/Part3/data/fruits_6.xls',sheet = 'Sheet1',range = 'A2:D6',col_names = T,col_types = 'guess', na = 'NA')
fruits7
