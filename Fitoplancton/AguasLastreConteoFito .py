# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).

from math import pi

if __name__ == '__main__':
	# n�mero total de C�lulas contados por mililitro
	nml = float()
	# n�mero de C�lulas contados en la c�mara
	n = float()
	# N�mero de C�lulas por litro
	cell = float()
	# N�mero de C�lulas por mililitro
	celml = float()
	# Volumen concentrado de la muestra en mililitros
	v1 = float()
	# Volumen total de la al�cuota en mililitros
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
	print("�C�al es la altura de la red en cm?")
	alturared = float(input())
	print("�C�al es el diametro de la red en cm?")
	diametrored = float(input())
	volumenred = 1/3*pi*(diametrored/2)**2*alturared
	volredlitros = volumenred/1000
	print("�Cu�l es el volumen de agua filtrada por la red en litros?")
	v3 = float(input())
	volfiltradatotal = v3+volredlitros
	print("El volumen de la red es: ",volredlitros," litros")
	print("El volumen de agua filtrada es: ",volfiltradatotal," litros")
	print("�C�antas al�cuoatas cont�?")
	v2 = float(input())
	print("�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?")
	n = float(input())
	# N�mero promedio total de C�lulas contados por mililitro
	nml = n/v2
	print("El n�mero promedio total de C�lulas de fitoplancton contados es: ",round(nml)," Cel/mL")
	print("�Cu�l es el volumen concentrado de la muestra en mililitros?")
	v1 = float(input())
	# Densidad de C�lulas por litro
	cell = (nml*v1)/(v2*volfiltradatotal)
	# Densidad de C�lulas por mililitro
	celml = cell/1000
	print("El resultado de la densidad de C�lulas de fitoplancton es: ",round(cell)," Cel/L")
	print("El resultado de la densidad de C�lulas de fitoplancton es: ",round(celml)," Cel/ml")

