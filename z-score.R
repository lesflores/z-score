# Quieres que tus variables sean comparables?

# Normalización z-score: 
# Convierte los datos a una media de 0 y una desviación estándar de 1.

# "datos" es el nombre de la base de datos 
# "variable" es el nombre de tu variable en cada columna

datos$variable_estandarizada1 <- scale(datos$variable1)
datos$variable_estandarizada2 <- scale(datos$variable2)

# Ejemplo:

# llamamos base de datos de prueba que puedes descargar aquí __

library(readxl)
datos <- read_excel("datos.xlsx") 

head(datos) # Al ejecutar, verás los primeros datos y nombres de las columnas

# Ejemplo de datos iniciales:
# indiceFelicidad   satisfaccionDemocracia
# <dbl>             <dbl>
# 1                 60                7
# 2                 80                6
# 3                 70                8

# Aplicamos la normalización z-score
datos$indiceFelicidad_estandarizada <- scale(datos$indiceFelicidad)
datos$satisfaccionDemocracia_estandarizada <- scale(datos$satisfaccionDemocracia)

head(datos) # Al volver a ejecutar, veremos los datos con las variables estandarizadas

# Ejemplo de salida:
# indiceFelicidad   satisfaccionDemocracia   indiceFelicidad_estandarizada   satisfaccionDemocracia_estandarizada
# <dbl>             <dbl>                   <dbl>                           <dbl>
# 1                 60                      7                              -0.523                            0.152
# 2                 80                      6                               0.972                           -0.608
# 3                 70                      8                               0.224                            0.911

