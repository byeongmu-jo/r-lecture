mat1 <- matrix(c(1:6), nrow = 2, byrow = T)
mat1
a <- rep(1,3)
sweep(mat1,2,a)
b<-matrix(c(2,2))
b
sweep(mat1,1,b)

a <- c(1:5)
length(mat1)
library(googleVis)
length(Fruits)
log(10)
sin(pi)
abs(-1)
v2 <- c(1,-2,3,-4)
abs(v2)
ceiling(2.3)
floor(2.3)
ceiling(-2.3)
floor(-2.3)
round(2.5)
round(2.51)
choose(5,3)

myfunc<-function() {
  return(10)
}
myfunc()

myfunc2 <- function(x) {
  y = x * x;
  return(y)
}
myfunc2(-3)

fc <- function(x,z) {
  y = x - z;
  return(y)
}
fc(3,1)
fc(2,3)

fca <- function(x,z) {
  y = x - z;
  return(abs(y))
}
fca(3,1)
fca(2,3)


