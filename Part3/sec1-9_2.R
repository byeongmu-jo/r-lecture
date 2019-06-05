#반복식
number <- 0
while(number < 5) {
  print(number)
  if (number == 4) {
    break
  }
  number <- number + 1
}
----------------------------------
number <- -1
while(number <= 10) {
  number <- number + 1
  if (number %% 2 == 1) {
    next
  }
  print(number)
}
----------------------------------
for (i in 1:10) {
  print(i)
}
----------------------------------
sum <- 0
for (i in 1:100) {
  sum <- sum + i
}
print(sum)
----------------------------------
sum <- 0
for (i in 3:100:3) {
  sum <- sum + i
}
print(sum)
----------------------------------
sum <- 0
for (i in 1:100) {
  if (i %% 3 == 0)
  sum <- sum + i
}
print(sum)
----------------------------------
mt<- function(limit, number) {
  sum <- 0
  for (i in 1:limit) {
    if (i %% number == 0)
      sum <- sum + i
  }
  return(sum)
}
mt(100,1)
----------------------------------
vegetable <- c("감자","고구마","버섯","당근","배추")
vegetable

write.table(c("감자","고구마","버섯","당근","배추"), "d:/workspace/R_Data_Analysis/Part3/data/vegetable.txt")

var1 <- read.table('vegetable.txt')
----------------------------------
ve <-var1
while (ve < 5) {
  print(ve)
}

----------------------------------
library(stringr)

for (i in 5:1) {
  line <- ''
  for(k in 1:i) {
    line <- str_c(line, '#')
  }
  print(line)
}
----------------------------------
for (i in 1:5) {
  line <- ''
  if (i != 1) {
    for (k in 1:(i-1))
      line <- str_c(line,'')
  }
  for (k in i:5) {
    line <- str_c(line, '#')
  }
  print(line)
}
----------------------------------
x <- 1
while(x<10) {
  for (i in 1:9) {
    i2 = x * i
    print(i2)
  }
  if(i == 9) break
}
----------------------------------
gugu <-function(x) {
  for (i in 1:9) {
    i2 = x * i
    print(i2)
  }
}
gugu(7)
-----------------------------------
i<-1
me <- function(x) {
  for (i in i:x) {
    ga = if (x%%i==0) {
      i 
    } else {
      next
    }
    print(ga)
  }
}
me(60)
-----------------------------------
  for (i in 1:5) {
    line <- ''
    if (i != 1) {
      for (k in 1:(i-1))
        line <- str_c(line,'')
    }
    for (k in i:5) {
      line <- str_c(line, '#')
    }
    print(line)
  }



