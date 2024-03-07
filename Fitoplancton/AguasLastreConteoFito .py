# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).

from math import pi

if __name__ == '__main__':
	# numero total de Cululas contados por mililitro
	nml = float()
	# numero de Cululas contados en la cumara
	n = float()
	# Numero de Cululas por litro
	cell = float()
	# Numero de Cululas por mililitro
	celml = float()
	# Volumen concentrado de la muestra en mililitros
	v1 = float()
	# Volumen total de la alucuota en mililitros
	v2 = float()
	# Volumen de agua filtrada por la red en litros
	v3 = float()
	# Volumen de agua filtrada por la red en litros
	volfiltradatotal = float()
	# Volumen de la red de muestro cm3
	volumenred = float()
	# Volumen de la red de muestro en litros
	volredlitros = float()
	# Radio de la red en 
	diametrored = float()
	# Largo total de la red
	
	print("¿Cúal es la altura de la red en cm?")
	alturared = float(input())
	print("¿Cúal es el diametro de la red en cm?")
	diametrored = float(input())
	volumenred = 1/3*pi*(diametrored/2)**2*alturared
	volredlitros = volumenred/1000
	print("¿Cúal es el volumen de agua filtrada por la red en litros?")
	v3 = float(input())
	volfiltradatotal = v3+volredlitros
	print("El volumen de la red es: ",volredlitros," litros")
	print("El volumen de agua filtrada es: ",volfiltradatotal," litros")
	print("¿Cuantas alícuotas contó?")
	v2 = float(input())
	print("¿Cúal es el numero total de Células contados en todas las alícuotas?")
	n = float(input())
	# Numero promedio total de Cululas contados por mililitro
	nml = n/v2
	print("El numero promedio total de Cululas de fitoplancton contados es: ",round(nml)," Cel/mL")
	print("¿Cúal es el volumen concentrado de la muestra en mililitros?")
	v1 = float(input())
	# Densidad de Cululas por litro
	cell = (nml*v1)/(v2*volfiltradatotal)
	# Densidad de Cululas por mililitro
	celml = cell/1000
	print("El resultado de la densidad de Cululas de fitoplancton es: ",round(cell)," Cel/L")
	print("El resultado de la densidad de Cululas de fitoplancton es: ",round(celml)," Cel/ml")

