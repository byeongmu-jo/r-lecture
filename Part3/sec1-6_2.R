mat1 <- matrix(c(1,2,3,4))
mat1
mat2 <- matrix(c(1,2,3,4),nrow = 2)
mat2
mat3 <- matrix(c(1,2,3,4),nrow = 2,byrow = T)
mat3

mat3[2,2]
mat3[1,]
mat3[,1]

mat4 <- matrix(seq(1:9),nrow = 3,byrow = T)
mat4

mat4 <- rbind(mat4,c(10,11,12))
mat4 <- cbind(mat4,c(13,14,15,16))
mat4
mat5 <- matrix(c('a','b','c','d'),nrow = 2,byrow = T)
mat5 <- cbind(mat5,c('e','f'))  
colnames(mat5) <- c('first','second','third')
mat5

seasons <- matrix(c('봄','여름','가을','겨울'),nrow=2)
seasons
seasons <- matrix(c('봄','여름','가을','겨울'),nrow=2,byrow=T)
seasons[,2]
seasons_2 <- rbind(seasons,c('초봄','초가을'))
seasons_2
seasons_3 <- cbind(seasons_2,c('초여름','초겨울','한겨울'))
seasons_3

# Array

array1 <- array(c(1:12), dim = c(4,3))    #byrow  사용못함
array2 <- array(c(1:12),dim = c(2,2,3))
array2

array2[1,1,3]
array2[1,,]

#list

list1 <- list(name='홍길동',address='전국',tel='010-2635-4434',age='27')
list1

list1['name']
list1$name
list1[c(1,4)]
list1$brith <- '1993-07-23'
list1$name <- c('jobyeongmu','jo-bm')
list1$brith <- NULL    #데이터 삭제
list1
