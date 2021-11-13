c(1,2,3,4,5,...)
1:10
secuencia1 <- seq(1,10,2)
secuencia2 <- seq(50,0,-5)

vector_numerico <- c(5,6,7,8,9,10,11,12,13,53,22)
vector_numerico[1]
seq(100,10,-20)
length(vector_numerico) # longitud de un objeto
vector_numerico[11]
vector_numerico[6:11]  
vector_numerico[c(1,4,11)]
sum(vector_numerico)
max(vector_numerico)

#matrix (2 dimensiones)
c(1,2,3,4,5,6)
matrix(c(1,2,3,4,5,6), 2 , 3)

v_num <- 1:9
matrix(data= v_num, nrow=3 , ncol = 3 , byrow = TRUE)

# crear una secuencia de 27 elementos a 0 a 100 y crear una matriz de 9 x3

vc27 <- seq(0,100,length=27)
length(vc27)
matrixander <- matrix( vc27 ,nrow= 9 , ncol=3)

## snake case
seq_0_100

notas_alumnos

## Camelcase
NotasAlumnos

dim(matrixander) <- c(3,9)
class(matrixander)

matrixander[3,7]
matrixander[1, c(1,7)]
# array (2 > dimensiones)

#Dataframes
## vector c()
## matriz matrix ()
data <- data.frame(Nombre= c("Anderson" , "Alely", "Valeria"),Notas = c(11 , 10 ,11), Aprobado = c(
  TRUE, FALSE , TRUE))
data
View(data)


read.csv("C:/Users/PC/Downloads/gaa.csv" , sep= ";")

excel <- read.csv("C:/Users/PC/Documents/CICLO 2021-II/GEOMETRÍA DESCRIPTIVA/EACComponenteambientalSuelo_2819401635296862527.csv")
View(excel)
class(excel)
head(excel ,10)
tail(excel)

data$Aprobado
class(data["Nombre"]) == class(data$Nombre)
data$Nota
data
data["Aprobado"]

# operadores logicos
5 > 3
3 < 5
3 >= 4
4 >= c(1,2,3,4,5)
5 %in% c(1,2,3,4,5)

(5>3) & (3>5)
xor((5 > 3), (3 > 5))
!(5 > 5)

data[data$Notas >= 11,]

save.image
temblor <- read.csv("C:/Users/PC/Downloads/earthquakes.csv")
View(temblor)
length(temblor[temblor$Magnitude > 8 , ])
nrow(temblor[temblor$Magnitude>8,])
temblor
temblor[temblor$Magnitude > 8,]
install.packages("raster")
library(raster)
install.packages("sp")
library(sp)
plot(raster(m))

vector_num <- c(1:100)
vector_num
m <- matrix(vector_num, ncol =9, byrow = TRUE)
matrix(m)

vector_num <- seq(9,81,9)
length(vector_num)

install.packages("raster")
library(raster)
plot(raster(m))

