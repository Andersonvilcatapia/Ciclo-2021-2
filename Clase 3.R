#clase 3


#Insfractuctura de datos espaciales ()

#Web mapping

vector <- 1:125
m <- matrix(vector, ncol=5)
dim(m)
m



vector01 <- 1:9

matrix01 <- matrix(vector01, nrow = 3, byrow= T)

#rbind(): Agregar filas (rows)
#cbind(): Agregar columnas (cols)
vector02 <- c("Aby" , "Adela", "Adrian")
vector03 <- c(10, 20, 30)

rbind(matrix01, vector03)
cbind(matrix01, vector03)

# Data Frame
v1 <- c(1,2,3)
v2 <- c("a","b","c")
v3 <- c(T,F,T)

df <- data.frame(v1, v2, v3)
class(df)

cbind(df, vector03)


iris
data()
class(iris)

head(iris)
tail(iris)

iris$Species

mean(iris$Sepal.Length)

iris$Sepal.Length

iris_setosa <- iris[iris$Species == "setosa",]
iris_virgin <- iris[iris$Species == "virginica",]
mean(iris_setosa$Petal.Length)

mean(iris_virgin$Petal.Length)

# Identificar cual es mayor ¿La longitud de pétalo promedio de las setosas o
# de las virginicas?

iris_consulta <- iris[(iris$Species == "setosa") & (iris$Sepal.Length > 5),]
nrow(iris_consulta)

#Tidyverse


#ASCII
#Unicode (UTF-8; 16, 32)


install.packages("readxl", dependencies = TRUE)

library(readxl)
