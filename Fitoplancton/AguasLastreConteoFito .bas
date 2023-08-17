' Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
' Es posible que el codigo generado no sea completamente correcto. Si encuentra
' errores por favor reportelos en el foro (http://pseint.sourceforge.net).


CONST PI = 3.141593
DIM alturared AS DOUBLE
DIM cell AS DOUBLE
DIM celml AS DOUBLE
DIM diametrored AS DOUBLE
DIM n AS DOUBLE
DIM nml AS DOUBLE
DIM pi AS DOUBLE
DIM v1 AS DOUBLE
DIM v2 AS DOUBLE
DIM v3 AS DOUBLE
DIM volfiltradatotal AS DOUBLE
DIM volredlitros AS DOUBLE
DIM volumenred AS DOUBLE
' número total de Células contados por mililitro
' número de Células contados en la cámara
' Número de Células por litro
' Número de Células por mililitro
' Volumen concentrado de la muestra en mililitros
' Volumen total de la alícuota en mililitros
' Volumen de agua filtrada por la red en litros
' Volumen de agua filtrada por la red en litros
' Volumen de la red de muestro cm3
' Volumen de la red de muestro en litros
' Radio de la red en 
' Largo total de la red
PRINT "¿Cúal es la altura de la red en cm?"
INPUT alturared
PRINT "¿Cúal es el diametro de la red en cm?"
INPUT diametrored
volumenred = 1/3*PI*(diametrored/2)^2*alturared
volredlitros = volumenred/1000
PRINT "¿Cuál es el volumen de agua filtrada por la red en litros?"
INPUT v3
volfiltradatotal = v3+volredlitros
PRINT "El volumen de la red es: ";volredlitros;" litros"
PRINT "El volumen de agua filtrada es: ";volfiltradatotal;" litros"
PRINT "¿Cúantas alícuoatas contó?"
INPUT v2
PRINT "¿Cuál es el número total de Células contados en todas las alícuotas?"
INPUT n
' Número promedio total de Células contados por mililitro
nml = n/v2
PRINT "El número promedio total de Células de fitoplancton contados es: ";CINT(nml);" Cel/mL"
PRINT "¿Cuál es el volumen concentrado de la muestra en mililitros?"
INPUT v1
' Densidad de Células por litro
cell = (nml*v1)/(v2*volfiltradatotal)
' Densidad de Células por mililitro
celml = cell/1000
PRINT "El resultado de la densidad de Células de fitoplancton es: ";CINT(cell);" Cel/L"
PRINT "El resultado de la densidad de Células de fitoplancton es: ";CINT(celml);" Cel/ml"

