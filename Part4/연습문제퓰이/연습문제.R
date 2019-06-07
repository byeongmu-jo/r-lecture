#아이리스
iris
data <- iris
data1 <- subset(iris, Species == "setosa")
data2 <- subset(iris, Species == "versicolor")
data3 <- subset(iris, Species == "virginica")

par(mfrow=c(2,2))
plot(data1$Sepal.Length, data1$Sepal.Width ,xlab = 'Sepal.Length', 
     ylab ='Sepal.Width', main ='setosa_Sepal')
plot(data1$Petal.Length, data1$Petal.Width ,xlab = 'Petal.Length', 
     ylab ='Petal.Width', main ='setosa_Petal')

plot(data2$Sepal.Length, data2$Sepal.Width ,xlab = 'Sepal.Length', 
       ylab ='Sepal.Width', main ='versicolor_Sepal')
plot(data2$Petal.Length, data2$Petal.Width ,xlab = 'Petal.Length', 
     ylab ='Petal.Width', main ='versicolor_Petal')

plot(data3$Sepal.Length, data3$Sepal.Width ,xlab = 'Sepal.Length', 
       ylab ='Sepal.Width', main ='virginica_Sepal')
plot(data3$Petal.Length, data3$Petal.Width ,xlab = 'Petal.Length', 
     ylab ='Petal.Width', main ='virginicar_Petal')

par(mfrow=c(1,1))

------------------------------------------------------

barplot(tapply(data$Sepal.Length, data$Species, mean), main = 'Sepal.Length')
barplot(tapply(data$Sepal.Width, data$Species, mean), main = 'Sepal.Width')
barplot(tapply(data$Petal.Length, data$Species, mean), main = 'Petal.Length')
barplot(tapply(data$Petal.Widt, data$Species, mean), main = 'Petal.Widt')

--------------
par(mfrow=c(3,4))
boxplot(data1$Sepal.Length, main="setosa_Sepal.Length" )
boxplot(data1$Sepal.Width, main="setosa_Sepal.Width" )
boxplot(data1$Petal.Length, main="setosa_Petal.Length" )
boxplot(data1$Petal.Width, main="setosa_Petal.Width")
        
boxplot(data2$Sepal.Length, main="versicolor_Sepal.Length")
boxplot(data2$Sepal.Width, main="versicolor_Sepal.Width" )
boxplot(data2$Petal.Length, main="versicolor_Petal.Length" )
boxplot(data2$Petal.Width, main="versicolor_Petal.Width" )

boxplot(data3$Sepal.Length, main="virginica_Sepal.Length" )
boxplot(data3$Sepal.Width, main="virginica_Sepal.Width" )
boxplot(data3$Petal.Length, main="virginica_Petal.Length" )
boxplot(data3$Petal.Width, main="virginica_Petal.Width" )

