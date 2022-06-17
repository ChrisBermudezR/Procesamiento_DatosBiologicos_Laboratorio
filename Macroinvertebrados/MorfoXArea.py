# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# Densidad de morfotipos por área
	d_mft = float()
	# Numero de morfotipos
	mft = int()
	# Unidad de Área monitoreada. Esta es en área que se enrea por la draga
	a = float()
	print("¿Cuál es el número de mortipos contados en la muestra?")
	mft = int(input())
	print("¿Cúal es el valor en m2 del área monitoreada?")
	a = float(input())
	# Cálculo de densidad morfotipos por área
	d_mft = mft/a
	print("El resultado de la cantidad de morfotipos por área es:",d_mft)

