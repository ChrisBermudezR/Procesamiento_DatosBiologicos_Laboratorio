# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# Volumen de la c�mara expresado en mililitros (ml)
	v = input(float())
	# N�mero de c�lulas contados por mililitros
	nml = float()
	# �rea total de la c�mara en mm2
	at = float()
	# �rea del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros cuadrados (mm2)
	f = float()
	# N�mero de campor contados
	af = int()
	# Di�metro de la c�mara de observaci�n en mil�metros 
	diamcamara = float()
	# Di�metro del campo de observaci�n en mil�metros 
	diamcampo = float()
	# N�mero de c�lulas contados en la c�mara
	c = int()
	# Densidad de microzooplancton.
	cell = float()
	# Longitud de la tira, mm
	l = float()
	# Longitud total de tiras
	lt = float()
	# Amplitud de la tira, mm
	w = float()
	# N�mero de tiras contadas
	s = int()
	usuarioescoge = int()
	# Contador
	contador = int()
	lt = 0
	contador = 0
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
		v = 3
		print("�Cu�l es el n�mero de c�lulas contados en el total de la c�mara?")
		c = int(input())
		cell = c*1000/v
		print("La densidad del microzooplancton es de: ",cell," C�lulas por litro")
	if usuarioescoge==2:
		print("�Cu�l es el di�metro de la c�mara de observaci�n en mm?")
		diamcamara = float(input())
		print("�Cu�l es el �rea del campo de observaci�n en mm?")
		diamcampo = float(input())
		if diamcampo>diamcamara:
			while True:# no hay 'repetir' en python
				print("El valor del di�metro del campo debe ser menor que el di�metro de la c�mara, los valores que usted ingres� son:")
				print("Di�metro de c�mara: ",diamcamara)
				print(" Di�metro de campo: ",diamcampo)
				print("Por favor digite de nuevo los valores")
				print("�Cu�l es el di�metro de la c�mara de observaci�n en mm?")
				diamcamara = float(input())
				print("�Cu�l es el �rea del campo de observaci�n en mm?")
				diamcampo = float(input())
				if diamcampo<diamcamara: break
		at = 3.141618*(diamcamara/2)**2
		f = 3.141618*(diamcampo/2)**2
		print("�Cu�l es el n�mero de c�lulas contados?")
		c = int(input())
		print("�Cu�l es el n�mero de campos que cont�?")
		af = int(input())
		v = 3
		# C�lculo del n�mero de c�lulas por unidad de volumen
		nml = ((c*at)/(af*f*v))
		print("El n�mero de c�lulas en el total de la c�mara es: ",nml)
		cell = nml*1000
		print("La densidad del microzooplancton es de: ",cell," C�lulas por litro")
	if usuarioescoge==3:
		print("�Cu�ntas tiras cont�?")
		s = int(input())
		for contador in range(1,s+1):
			print("�Cu�l es la longitud de la tira ",contador," en mm?")
			l = float(input())
			lt = lt+l
		print(lt)
		print("�Cu�l es la amplitud de la tira en mm?")
		w = float(input())
		print("�Cu�l es el n�mero de c�lulas contados?")
		c = int(input())
		print("�Cu�l es el di�metro de la c�mara de observaci�n en mm?")
		diamcamara = float(input())
		at = 3.141618*(diamcamara/2)**2
		v = 3
		# C�lculo del n�mero de c�lulas por unidad de volumen
		nml = ((c*at)/(lt*w*s*v))
		print("El n�mero de c�lulas en el total de la c�mara es: ",nml)
		cell = nml*1000
		print("La densidad del microzooplancton es de: ",cell," C�lulas por litro")

