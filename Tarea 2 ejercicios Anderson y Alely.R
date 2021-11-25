# Ejercicios

## Ejercicio 1

dinero_sobrante <- 10000 %% 3
dinero_sobrante  # es lo que sobra al repartir 10000 $ entre 3 personas



## Ejercicio 2

4560 %% 3  # si es divisible por 3 porque su residuo es 0

## Ejercicio 3

vec <- c(2:87)
vec [ vec %% 7 == 0 ]

  # nos sale  12 números divisibles por 7 ya que su residuo es 0.

## Ejercicio 4
### Construya dos vectores, el primero con los n ́umeros enteros desde 7 hasta 3, el segundo vector con los
### primeros cinco ́numeros positivos divisibles por 5.


vec1<- c(7:3)
vec2<-c(seq(from=5, to=25, by=5))
condiA <- ifelse(vec1%%2==0, "TRUE", "FALSE")
condiB <- ifelse(vec2>10, "TRUE", "FALSE")
data.frame(condiA,condiB)

#en la cuarta posicion se cumplen ambas condiciones

## Ejercicio 5

g <- (1:100)
sum(1:100)
 # otra forma
sum_g<- (100*101)/2
sum_g
    # la suma es 5050, usando sumatoria y la fórmula

## Ejercicio 6 

vec6 <- c(1,-4,4,9,-4)
min(vec6)
nivel <- c(1,-4,4,9,-4)
nivel[2]
nivel[5]
ifelse(vec6==min(vec6),"Val_Min","OTRO")

# las posiciones donde están el valor mínimo son 2 y 5.

## Ejercicio  7

factorial(8)
 # otra forma
prod(1:8)


## Ejercicio 8

s<- 3:7
sum(exp(s))
# Rpta:1723.159

## Ejercicio 9

p<-1:10
prod(log(sqrt(p)))
# Rpta:0

## Ejercicio 10

area_corona<-function(R,s,c,d){
  0.5*(R*s-c*d)
}

area_corona(9,7,6,3)


## Ejercicio 11

v<- c(5:10)
v
vinvert<- c(10:5)
vinvert
v<- c(5:10)
rev(v)        # resulta lo mismo que al invertirlo usar la función rev

## Ejercicio 12

k<- 10:100
sum(k^3+ 4*k^2)
     # Rpta:26852735

## Ejercicio 13

i<- 1:25
sum(2^i/i +3^i/i^2)

   # Rpta:2129170437

## Ejercicio 14

pobla_paises<-read.csv("https://raw.githubusercontent.com/fhernanb/datos/master/Paises.txt",sep="",dec=".")
pobla_paises
View(pobla_paises)

### Calcular el n ́umero de variables del dataset
length(pobla_paises)
     # el número de variables es 5

### ¿Cuantos paises hay en el dataset?
length(d_f[,1])
   # hay 107 países

### ¿Cual es el pais con mayor poblacion?
pobla_paises$Pais[match(max(pobla_paises$poblacion),pobla_paises$poblacion)]
 #el país con mayor población es China

### ¿Cual es el paıs con alfabetizacion mas baja?

pobla_paises$Pais[match(min(pobla_paises$alfabetizacion),pobla_paises$alfabetizacion)]

 #el país con menor alfabetización es Burkina_ Faso


## Ejercicio 15

help("mtcars")

mtcars

### Autos que tengan un rendimiento menor a 18 millas por gaĺon de combustible.

row.names(mtcars)[which(mtcars$mpg <18)]


### Autos que tengan 4 cilindros.

row.names(mtcars)[which(mtcars$cyl == 4)]

### Autos que pesen mas de 2500 libras y tengan transmision manual.

row.names(mtcars)[which(mtcars$wt >2.5 & mtcars$am =="1")]

## Ejercicio 16

x=c(0:365)

y=c(2*pi*(x-81)/365)

funcion_y=c(9.87*sin(2*y)-7.53*cos(y)-1.5*sin(y))

plot(funcion_y, type="l",lty="33",lwd="2", axes=TRUE, las=1, pch=20, yaxp=c(-12,18,5),xaxp = c(0, 365, 12),xaxt="n", xlab="", ylab="Minutos", col="red", font=2)


title(main="Ecuacion del tiempo
Mathematical Astronomy Morsels, Jean Meeus. 1997", adj=0, line=0.5, cex.main=1)
title(sub="Realizado por Alely Crespo y Anderson Vilca", adj=1, line = 2.5, cex.sub=0.8)

axis(1, at = seq(0, 365, by=30.4),
     labels = c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre","Enero"), cex.axis=0.47)