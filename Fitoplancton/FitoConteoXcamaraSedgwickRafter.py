# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# n�mero total de C�lulas contados por mililitro
	nml = float()
	# n�mero de C�lulas contados en la c�mara
	n = float()
	# n�mero de al�cuotas de 1 mL contadas en la c�mara
	a = float()
	# N�mero de C�lulas por litro
	cell = float()
	# Volumen concentrado de la muestra en mililitros
	v1 = float()
	# Volumen total de la al�cuota en mililitros
	v2 = float()
	# Volumen de agua filtrada por la red en litros
	v3 = float()
	# Volumen del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros c�bicos (mm3)
	vc = float()
	# Di�metro del campo de observaci�n en mil�metros
	diamcampo = float()
	# N�mero de campos contados
	c = int()
	# Volumen de la tira expresada en mil�metros c�bicos (mm3)
	vt = float()
	# N�mero de tiras contadas
	t = int()
	# Volumen sedimentado expresado en mililitros (ml)
	v = float()
	# Di�metro de la c�mara de observaci�n en mil�metros 
	diamcamara = float()
	usuarioescoge = int()
	print("�Cu�l es el c�lculo que va a realizar?")
	print("Escoja un n�mero:")
	print("1. C�lculo de c�mara completa")
	print("2. C�lculo por campos")
	print("3. Conteo por tiras")
	print("Digite su selecci�n: ")
	usuarioescoge = int(input())
	if usuarioescoge<1 or usuarioescoge>3:
		while True:# no hay 'repetir' en python
			print("Escoja de nuevo un valor entre 1 y 3 y dig�telo:")
			usuarioescoge = int(input())
			if usuarioescoge>0 and usuarioescoge<4: break
	if usuarioescoge==1:
		print("�C�antas al�cuoatas cont�?")
		v2 = float(input())
		print("�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?")
		n = float(input())
		# N�mero promedio total de C�lulas contados por mililitro
		nml = n/v2
		print("El n�mero promedio total de C�lulas de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("�Cu�l es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("�Cu�l es el volumen de agua filtrada por la red en litros?")
		v3 = float(input())
		# Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de C�lulas de fitoplancton es: ",round(cell)," Cel/L")
	if usuarioescoge==2:
		print("�Cu�l es el n�mero total de C�lulas contados en todos los campos?")
		n = float(input())
		print("�Cu�l es el di�metro del campo de observaci�n en mm?")
		diamcampo = float(input())
		# Este es el volumen del campo en milimetros c�bicos, para convertirlo a mililitros se debe multiplicar por 1000
		vc = ((3.141618*(diamcampo/2)**2)*1)*1000
		print("�Cu�l es el n�mero de campos que cont�?")
		c = int(input())
		# N�mero promedio total de C�lulas contados por mililitro
		nml = (n*1000)/(vc*c)
		print("El n�mero promedio total de C�lulas de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("�Cu�l es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("�Cu�l es el Volumen total de la al�cuota en mililitros?")
		v2 = float(input())
		print("�Cu�l es el volumen de agua filtrada en la red en litros?")
		v3 = float(input())
		# Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de C�lulas de fitoplancton es: ",round(cell)," Cel/L")
	if usuarioescoge==3:
		print("�Cu�l es el n�mero total de C�lulas contados en todas las tiras?")
		n = float(input())
		print("�Cu�l es el n�mero de tiras contadas?")
		t = int(input())
		vt = 50
		# N�mero promedio total de C�lulas contados por mililitro
		nml = (n*1000)/(vt*t)
		print("El n�mero promedio total de C�lulas de fitoplancton contados es: ",round(nml)," Cel/mL")
		print("�Cu�l es el volumen concentrado de la muestra en mililitros?")
		v1 = float(input())
		print("�Cu�l es el Volumen total de la al�cuota en mililitros?")
		v2 = float(input())
		print("�Cu�l es el volumen de agua filtrada en la red en litros?")
		v3 = float(input())
		# Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3)
		print("El resultado de la densidad de C�lulas de fitoplancton es: ",round(cell)," Cel/L")

