#PARTE 1

#Ejercicio 1

# a)

x <-(0.3*0.15)/((0.3*0.15)+(0.2*0.8)+(0.5*0.12))

x            #Al correr x sale el valor

# b)

y <- 5^6/(factorial(6))*exp(-5)

y

# c) 

#En este problema se puede observar que hay una conbinacion, por lo cual procedemos a resolver asi...

(choose(20,7))*((0.4)^7)*((0.6)^13)

#Ejercicio 2

# a) 

sum(1:1000)

# b)

sum(2^(0:10))

#Ejercicio 3

load("C:/Users/PC/Downloads/ei1012-1516-la-s1-datos.RData")

grupo

# a)

length(grupo)

# b)

which(grupo == "A")

#Ejercicio 4

nota

# a)

sum(nota)

# b)

mean(nota)

# c)

which(nota> 7.0)

# d)

sort(nota, decreasing = T)

# e)

which(nota == max(nota))

#Ejercicio 5 

grupo

nota

# a)

sum(nota[1:10])

# b)

length(grupo[grupo == "C"])

# c)

length(nota[nota>=5])

# d)

length(nota[grupo == "B" & nota >= 5])

# e)

(length(nota[grupo == "C" & nota >= 5])/length(nota[grupo == "C"]))*100

# f)

grupo[nota == max(nota)]
grupo[nota == min(nota)]

# g)

install.packages("dplyr")

library(dplyr)
notasEst <- dplyr::tibble(grupoAyB = grupo, notaAyB = nota)
notasEst %>%
  dplyr::filter((grupoAyB == "A" & notaAyB >=5) | (grupoAyB == "B" & notaAyB >= 5)) %>%
  dplyr::summarise(mean(notaAyB))

#Ejercicio 6 

#cuantil 66 de todos
quantile(nota, probs = 0.66)

#cuantil 66 del grupo "C" 
quantile(nota[grupo == "C"], probs = 0.66)

#Ejercicio 7

#Porcentaje del total de alumnos que tienen una nota menor o igual que 4.9 
((length(nota[nota <= 4.9 ]))/(length(nota)))*100

#porcentaje mayor o igual que 4.9
((length(nota[nota >= 4.9]))/(length(nota)))*100

#Ejercicio 8

install.packages("ggplot2")

library(ggplot2)
notasEst <- dplyr::tibble(grupo, nota)
notasEst %>% ggplot(mapping = aes(x = grupo, y = nota)) +
  geom_boxplot()

#Ejercicio 9

conc

# a) 
max(conc)

#b)

length(conc[conc > 40.0])

# c)

mean(conc)

# d) 

sort(conc)[1:10]

# e)

fecha <- seq(
  as.POSIXct("2021-01-01 00:00"),
  length.out = length(conc),
  by = "5 min"
)

#concentracion de plomo y las fechas
concYfech <- data.frame(conc, fecha)
#maximo de concentracion con fecha
concYfech[conc == max(conc),]

#PARTE 2

#Ejercicio 1

x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(1,4,9,16,25,36,49,61,81,100)

plot(x,y)

#otra forma

z<-matrix(c(1:10,(1:10)^2), nrow = 10)
DF2 = as.data.frame((z), row.names= c("eje_x", "eje_y"))
View(DF2)
ggplot(data = DF2) +
  geom_point(mapping = aes(x =V1 , y =V2), color = "blue")

#Ejercicio 2

matrix(c(1,2,3,2,4,6,3,6,9,4,8,12), nrow = 4, byrow = T)

m<-c(1,2,3,4,2,4,6,8,3,6,9,12)
P<-matrix(i,ncol = 3,nrow = 4)
P

#Ejercicio 3

3*diag(3)

#Ejercicio 4

matrizY<-function(f,c){
  P<-matrix(0,nrow = f,ncol = c)
  return(P)
}
matrizN(5,4)

#Ejercicio 5

B<-diag(4)
B[1,1]<-0
B[2,2]<-2
B[3,3]<-3
B[4,4]<-4
B

#Ejercicio 6

t(P)

#Ejericio 7

#Las dimensiones son incompatibles.
P+B 

#Las dimensiones son incompatibles.
P-B 

# La matriz de la pregunta 5 por tres
3*B

#Filas y columnas diferentes
P%*%B 

#Ejercicio 8

m<-function(e){
  d<-c(1,-2,1,2,4,0,3,-2,1)
  m<-matrix(d,ncol = 3)
  r<-m^e
  return(r)
}
m(6)

#Ejercicio 9

ecuaciones <- rbind(c(3, -1, 1), 
                    c(9, -2, 1), 
                    c(3, 1, -2))
equivalencias <- c(-1, -9, -9)
solve(ecuaciones, equivalencias)

#Ejercicio 10

?eigen()
?det()

#Ejercicio 11

B <- matrix(c(1:10, seq(2, 20, by = 2), seq(3, 30, by = 3), seq(4, 40, by = 4), 
              seq(5, 50, by = 5)), nrow = 10)
A <- matrix(c(rep(c(0,1),7), rep(c(0,0,1),2),1,0,1,1,0), nrow = 5, byrow = T)
(B)%*%(A)-(A)%*%t(B)

#Ejercicio 12

x2 <- matrix(c(rep(1,5), 1, -1, 0:2), nrow = 5, byrow = F)
y2 <- matrix(c(0,0,1,1,3), nrow = 5, byrow = F)

solve(t(x2)%*%x2)%*%t(x2)%*%y2

#Ejercicio 13

data(co2)
means = aggregate(co2, FUN=mean)
year = as.vector(time(means))
co2 = as.vector(means)


df_co2 <- data.frame(year = year, co2 = co2) %>%
  mutate(co2_2 = lag(co2), dif_co2 = co2 - co2_2)
vect_diferencia <- df_co2$dif_co2[2:39]
vect_diferencia

plot(x = df_co2$year[2:39], y = vect_diferencia, xlab = "Año", ylab = "Variación de CO2",
     main = "Diferencia de CO2 & tiempo", type = "o", pch = 16, col="green")

plot(x = df_co2$year[2:39], y = vect_diferencia, xlab = "Años", ylab = "Variación de CO2",
     main = "Diferencia de CO2 & tiempo", type = "o", pch = 16, xlim = c(1960,2020),
     ylim = c(0,3))
points(2020, 2.64, pch = 4, col = "red")

#Ejercicio 14

# a)
rainfalldf <- read.csv("C:/Users/PC/Downloads/rainfall.csv")

# b)
rainfalldf[(rainfalldf$sep > 180),]
rain180 <- rainfalldf[(rainfalldf$sep > 180) | (rainfalldf$oct > 180) | (rainfalldf$nov > 180) | (rainfalldf$dec > 180) | (rainfalldf$jan > 180) | (rainfalldf$feb > 180) | (rainfalldf$mar > 180) | (rainfalldf$apr > 180) | (rainfalldf$may > 180),]
rain180$name