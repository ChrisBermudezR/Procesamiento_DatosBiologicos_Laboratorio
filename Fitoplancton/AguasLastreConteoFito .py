# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).

from math import pi

if __name__ == '__main__':
	# número total de Células contados por mililitro
	nml = float()
	# número de Células contados en la cámara
	n = float()
	# Número de Células por litro
	cell = float()
	# Número de Células por mililitro
	celml = float()
	# Volumen concentrado de la muestra en mililitros
	v1 = float()
	# Volumen total de la alícuota en mililitros
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
	alturared = float()
	print("¿Cúal es la altura de la red en cm?")
	alturared = float(input())
	print("¿Cúal es el diametro de la red en cm?")
	diametrored = float(input())
	volumenred = 1/3*pi*(diametrored/2)**2*alturared
	volredlitros = volumenred/1000
	print("¿Cuál es el volumen de agua filtrada por la red en litros?")
	v3 = float(input())
	volfiltradatotal = v3+volredlitros
	print("El volumen de la red es: ",volredlitros," litros")
	print("El volumen de agua filtrada es: ",volfiltradatotal," litros")
	print("¿Cúantas alícuoatas contó?")
	v2 = float(input())
	print("¿Cuál es el número total de Células contados en todas las alícuotas?")
	n = float(input())
	# Número promedio total de Células contados por mililitro
	nml = n/v2
	print("El número promedio total de Células de fitoplancton contados es: ",round(nml)," Cel/mL")
	print("¿Cuál es el volumen concentrado de la muestra en mililitros?")
	v1 = float(input())
	# Densidad de Células por litro
	cell = (nml*v1)/(v2*volfiltradatotal)
	# Densidad de Células por mililitro
	celml = cell/1000
	print("El resultado de la densidad de Células de fitoplancton es: ",round(cell)," Cel/L")
	print("El resultado de la densidad de Células de fitoplancton es: ",round(celml)," Cel/ml")

