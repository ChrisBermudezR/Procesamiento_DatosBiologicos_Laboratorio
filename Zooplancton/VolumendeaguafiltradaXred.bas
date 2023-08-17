' Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
' Es posible que el codigo generado no sea completamente correcto. Si encuentra
' errores por favor reportelos en el foro (http://pseint.sourceforge.net).


' Este algoritmo es para calcular el volumen de agua filtrada con el flujómetro General Oceanic
DIM d AS DOUBLE
DIM di AS DOUBLE
DIM ff AS LONG
DIM fi AS LONG
DIM v AS DOUBLE
' Distancia recorrida por la red expresada en m
' Lectura final del flujómetro
' Lectura inicial del flujómetro
' Volumen filtrado por la red  expresado en m3
' Diámetro de la red expresada en m 
PRINT "¿Cuál es la lectura inicial del flujómetro?"
INPUT fi
PRINT "¿Cuál es la lectura final del flujómetro?"
INPUT ff
' Cálculo de la distancia recorrida por la red expresada en metros
d = ((ff-fi)*26873)/999999
PRINT "El resultado de la distancia recorrida por la red es: ";d;" m"
PRINT "¿Cuál es el diámetro en metros de la red?"
INPUT di
v = (3.141618*(di^2)*d)/4
PRINT "El resultado dle volumen de agua filtrada por la red es: ";v;" m3"

