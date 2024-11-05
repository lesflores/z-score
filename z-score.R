#---------- Quieres que tus variables sean comparables?
#---------- Normalización z-score: 
#---------- Convierte los datos a una media de 0 y una desviación estándar de 1.

# "datos" es el nombre de la base de datos 
# "variable" es el nombre de tu variable en cada columna

datos$variable_estandarizada1 <- scale(datos$variable1)
datos$variable_estandarizada2 <- scale(datos$variable2)

# Ejemplo:

#---------- llamamos base de datos de prueba que puedes descargar aquí https://github.com/lesflores/z-score/blob/main/datos.xlsx

library(readxl)
datos <- read_excel("datos.xlsx") 

#---------- Al ejecutar "head", verás los primeros datos y nombres de las columnas
head(datos) 

# indiceFelicidad   satisfaccionDemocracia
# <dbl>             <dbl>
# 1                 60                7
# 2                 80                6
# 3                 70                8

#---------- Aplicamos la normalización z-score

datos$indiceFelicidad_estandarizada <- scale(datos$indiceFelicidad)
datos$satisfaccionDemocracia_estandarizada <- scale(datos$satisfaccionDemocracia)

#---------- # Al volver a ejecutar "head", verás los datos con las variables estandarizadas
head(datos)

# indiceFelicidad   satisfaccionDemocracia   indiceFelicidad_estandarizada   satisfaccionDemocracia_estandarizada
# <dbl>             <dbl>                   <dbl>                           <dbl>
# 1                 60                      7                              -0.523                            0.152
# 2                 80                      6                               0.972                           -0.608
# 3                 70                      8                               0.224                            0.911

