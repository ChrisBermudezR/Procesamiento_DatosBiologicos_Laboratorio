# Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
# Es posible que el codigo generado no sea completamente correcto. Si encuentra
# errores por favor reportelos en el foro (http://pseint.sourceforge.net).


if __name__ == '__main__':
	# Densidad de morfotipos por �rea
	d_mft = float()
	# Numero de morfotipos
	mft = int()
	# Unidad de �rea monitoreada. Esta es en �rea que se enrea por la draga
	a = float()
	print("�Cu�l es el n�mero de mortipos contados en la muestra?")
	mft = int(input())
	print("�C�al es el valor en m2 del �rea monitoreada?")
	a = float(input())
	# C�lculo de densidad morfotipos por �rea
	d_mft = mft/a
	print("El resultado de la cantidad de morfotipos por �rea es:",d_mft)

