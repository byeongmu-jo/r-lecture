#조건문
myAbs <- function(x) {
  if(x >=0) {
    return(x)
  } else {
    return(-x)
  }
}
myAbs(-3.2)
myAbs(4.5)
----------------------------------
myAbs2 <- function(x) {
  if(x >=0) {
      return(x)
  }
    return(-x)
}
myAbs2(-3.2)
myAbs2(4.5)
----------------------------------
myF1 <- function(x) {
  if (x >= 0) {
    return(x^2)
  } else {
    return(0)
  }
}
myF1(4.6)
myF1(-2.4)
----------------------------------
myF2 <- function(x) {
  if (x > 0) {
    return(x*2)
  } else if (x==0) {
    return(0)
  } else {
    return(-2*x)
  }
}
myF2(4.6)
myF2(0)
myF2(-2.4)
----------------------------------
no <- scan()
result <- ifelse(no%%2 == 0, '짝수','홀수')
result
----------------------------------
m1 <- function(x) {
  if (x>5) {
    return(1)
  } else {
    return(0)
  }
}
#return(ifelse(x>5,1,0))
----------------------------------
m2 <- function(x) {
  if (x>=0) {
    return(1)
  } else {
    return(0)
  }
}
----------------------------------
m3 <- function(x,y) {
  if (x>y) {
    return(x-y)
  } else {
  return(y-x)
  }
}
m3(1,3)
----------------------------------
m4 <- function(x) {
  if (x<0) {
    return(0)
  } else if (x>=1 & x<=5) {
    return(1)
  } else {
  return(10)
  }
}
----------------------------------
m5 <- function(x) {
  if (x == 'Y' || x== 'y') {
    return('Yes')
  } else {
    return('Not Yes')
  }
}
m5('y')
----------------------------------
  b^2-4ac
m6 <- function(a,b,c) {
  D = b^2-(4*a*c)
  if (abs(D) < 1e-5) {
    return(1)
  } else if (D > 0) {
    return(2)
  } else {
    return(0)
  }
}
a <- 40
b <- -2.0000000000001
c <- 1.0000000000002
m6(a,b,c)




