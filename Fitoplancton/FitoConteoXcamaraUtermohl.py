# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# Volumen de la cámara expresado en mililitros (ml)
	v = float()
	# Número de células contados por mililitros
	nml = float()
	# Área total de la cámara en mm2
	at = float()
	# Área del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
	f = float()
	# Número de campor contados
	af = int()
	# Diámetro de la cámara de observación en milímetros 
	diamcamara = float()
	# Diámetro del campo de observación en milímetros 
	diamcampo = float()
	# Número de células contados en la cámara
	c = int()
	# Densidad de microzooplancton.
	cell = float()
	# Longitud de la tira, mm
	l = float()
	# Longitud total de tiras
	lt = float()
	# Amplitud de la tira, mm
	w = float()
	# Número de tiras contadas
	s = int()
	usuarioescoge = int()
	# Contador
	contador = int()
	lt = 0
	contador = 0
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
		v = 3
		print("¿Cuál es el número de células contados en el total de la cámara?")
		c = int(input())
		cell = c*1000/v
		print("La densidad del microzooplancton es de: ",cell," Células por litro")
	if usuarioescoge==2:
		print("¿Cuál es el diámetro de la cámara de observación en mm?")
		diamcamara = float(input())
		print("¿Cuál es el área del campo de observación en mm?")
		diamcampo = float(input())
		if diamcampo>diamcamara:
			while True:# no hay 'repetir' en python
				print("El valor del diámetro del campo debe ser menor que el diámetro de la cámara, los valores que usted ingresó son:")
				print("Diámetro de cámara: ",diamcamara)
				print(" Diámetro de campo: ",diamcampo)
				print("Por favor digite de nuevo los valores")
				print("¿Cuál es el diámetro de la cámara de observación en mm?")
				diamcamara = float(input())
				print("¿Cuál es el área del campo de observación en mm?")
				diamcampo = float(input())
				if diamcampo<diamcamara: break
		at = 3.141618*(diamcamara/2)**2
		f = 3.141618*(diamcampo/2)**2
		print("¿Cuál es el número de células contados?")
		c = int(input())
		print("¿Cuál es el número de campos que contó?")
		af = int(input())
		v = 3
		# Cálculo del número de células por unidad de volumen
		nml = ((c*at)/(af*f*v))
		print("El número de células en el total de la cámara es: ",nml)
		cell = nml*1000
		print("La densidad del microzooplancton es de: ",cell," Células por litro")
	if usuarioescoge==3:
		print("¿Cuántas tiras contó?")
		s = int(input())
		for contador in range(1,s+1):
			print("¿Cuál es la longitud de la tira ",contador," en mm?")
			l = float(input())
			lt = lt+l
		print(lt)
		print("¿Cuál es la amplitud de la tira en mm?")
		w = float(input())
		print("¿Cuál es el número de células contados?")
		c = int(input())
		print("¿Cuál es el diámetro de la cámara de observación en mm?")
		diamcamara = float(input())
		at = 3.141618*(diamcamara/2)**2
		v = 3
		# Cálculo del número de células por unidad de volumen
		nml = ((c*at)/(lt*w*s*v))
		print("El número de células en el total de la cámara es: ",nml)
		cell = nml*1000
		print("La densidad del microzooplancton es de: ",cell," Células por litro")

