# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# número total de Células contados por mililitro
	nml = float()
	# número de Células contados en la cámara
	n = float()
	# número de alícuotas de 1 mL contadas en la cámara
	a = float()
	# Número de Células por litro
	cell = float()
	# Volumen concentrado de la muestra en mililitros
	v1 = float()
	# Volumen total de la alícuota en mililitros
	v2 = float()
	# Volumen de agua filtrada por la red en litros
	v3 = float()
	# Volumen del campo óptico o de la cuadrícula utilizada expresada en milímetros cúbicos (mm3)
	vc = float()
	# Diámetro del campo de observación en milímetros
	diamcampo = float()
	# Número de campos contados
	c = int()
	# Volumen de la tira expresada en milímetros cúbicos (mm3)
	vt = float()
	# Número de tiras contadas
	t = int()
	# Volumen sedimentado expresado en mililitros (ml)
	v = float()
	# Diámetro de la cámara de observación en milímetros 
	diamcamara = float()
	usuarioescoge = int()
	print("¿Cuál es el cálculo que va a realizar?")
	print("Escoja un número:")
	print("1. Cálculo de cámara completa")
	print("2. Cálculo por campos")
	print("3. Conteo por tiras")
	print("Digite su selección: ")
	usuarioescoge = int(input())
	if usuarioescoge<1 or usuarioescoge>3:
		while True:# no hay 'repetir' en python
			print("Escoja de nuevo un valor entre 1 y 3 y digítelo:")
			usuarioescoge = int(input())
			if usuarioescoge>0 and usuarioescoge<4: break
	if usuarioescoge==1:
		print("¿Cúantas alícuoatas contó?")
		v2 = float(input())
		print("¿Cuál es el número total de Células contados en todas las alícuotas?")
		n = float(input())
		# Número promedio total de Células contados por mililitro
		nml = n/v2
		print("El número promedio total de Células de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("¿Cuál es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("¿Cuál es el volumen de agua filtrada por la red en litros?")
		v3 = float(input())
		# Densidad de Células por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de Células de fitoplancton es: ",round(cell)," Cel/L")
	if usuarioescoge==2:
		print("¿Cuál es el número total de Células contados en todos los campos?")
		n = float(input())
		print("¿Cuál es el diámetro del campo de observación en mm?")
		diamcampo = float(input())
		# Este es el volumen del campo en milimetros cúbicos, para convertirlo a mililitros se debe multiplicar por 1000
		vc = ((3.141618*(diamcampo/2)**2)*1)*1000
		print("¿Cuál es el número de campos que contó?")
		c = int(input())
		# Número promedio total de Células contados por mililitro
		nml = (n*1000)/(vc*c)
		print("El número promedio total de Células de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("¿Cuál es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("¿Cuál es el Volumen total de la alícuota en mililitros?")
		v2 = float(input())
		print("¿Cuál es el volumen de agua filtrada en la red en litros?")
		v3 = float(input())
		# Densidad de Células por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de Células de fitoplancton es: ",round(cell)," Cel/L")
	if usuarioescoge==3:
		print("¿Cuál es el número total de Células contados en todas las tiras?")
		n = float(input())
		print("¿Cuál es el número de tiras contadas?")
		t = int(input())
		vt = 50
		# Número promedio total de Células contados por mililitro
		nml = (n*1000)/(vt*t)
		print("El número promedio total de Células de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("¿Cuál es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("¿Cuál es el Volumen total de la alícuota en mililitros?")
		v2 = float(input())
		print("¿Cuál es el volumen de agua filtrada en la red en litros?")
		v3 = float(input())
		# Densidad de Células por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de Células de fitoplancton es: ",round(cell)," Cel/L")

