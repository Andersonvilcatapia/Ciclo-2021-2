#Haciendo una comparacion simple
5 == 5
"a" == "A"

x <- 20  # grados celcius
if(x < 25){
  print("Clima muy calido")
}else if(x < 5){
  print("Clima frigido")
}else{
  print("Clima templado")
}
  

# Piso altitudinal
temp_crit <- 10

if(temp_crit < 1.5){
  print("Nival")
}else if(temp_crit >= 1.5 & temp_crit < 3){
  print("Alpino")
}else if(temp_crit >= 3 & temp_crit < 6){
  print("Subalpino")
}else if(temp_crit >= 6 & temp_crit < 12){
  print("Montano")
}else{
  print("Montano bajo")
}
  
  
# Determinar el clima segundo holoridge
###...

ifelse(class(x) == "numeric", 
       print("Se cumple"), 
       print("No se cumple"))

## Bucles o iteradores
# for
lista_alumnos <- c("Arthur" , "Henry","Valeria","Jaime")
for(x in lista_alumnos){
  if(x == "Henry"){
    print("")
  }else{
    print(x)
  }
}

lista_temperaturas <- c(-5, 2, 3, 5, 10, 20, 30)
for(temp_crit in lista_temperaturas){
  if(temp_crit < 1.5){
    print("Nival")
  }else if(temp_crit >= 1.5 & temp_crit < 3){
    print("Alpino")
  }else if(temp_crit >= 6 & temp_crit < 12){
    print("Montano")
  }else{
    print("Montano bajo")
  }
}

#Utilizando un control de flujo
lista_alumnos <- c("Arthur", "Henry","Valeria","Jaime")
for (x in lista_alumnos) {
  if (x == "Valeria"){
    next
  }else{
  print(x)
 }    
} 

#Ambiente de trabajo
# get work directory
getwd()

# Set work directory
setwd()

dir.create("Borrar")

# Utilizando iteradores, crear una carpeta por cada curso del ciclo
cursos <- c("progra","climatologia", "ecologia","topografia","calculo","descriptiva")
for(x in cursos){
  dir.create(x)
}



#utilizando dataset iris, crear una carpeta para cada especie de flor y dentro guardar un csv con sus elementos filtrados
read.csv()
write.csv(variable, "ruta")

levels(iris$Species)
unique(iris$Species)

for(especie in levels(iris$Species)){
  dir.create(especie)
  dataset <- iris[iris$Species == especie,]
  write.csv(dataset, paste0(especie, "/data.csv"))
}