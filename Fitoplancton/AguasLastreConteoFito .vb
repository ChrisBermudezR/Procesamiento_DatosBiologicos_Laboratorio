' Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
' Es posible que el codigo generado no sea completamente correcto. Si encuentra
' errores por favor reportelos en el foro (http://pseint.sourceforge.net).

Module CONTEOXCAMARASEDGWICKRAFTER

	Sub Main()
		Dim alturared As Double
		Dim cell As Double
		Dim celml As Double
		Dim diametrored As Double
		Dim n As Double
		Dim nml As Double
		Dim pi As Double
		Dim v1 As Double
		Dim v2 As Double
		Dim v3 As Double
		Dim volfiltradatotal As Double
		Dim volredlitros As Double
		Dim volumenred As Double
		' n�mero total de C�lulas contados por mililitro
		' n�mero de C�lulas contados en la c�mara
		' N�mero de C�lulas por litro
		' N�mero de C�lulas por mililitro
		' Volumen concentrado de la muestra en mililitros
		' Volumen total de la al�cuota en mililitros
		' Volumen de agua filtrada por la red en litros
		' Volumen de agua filtrada por la red en litros
		' Volumen de la red de muestro cm3
		' Volumen de la red de muestro en litros
		' Radio de la red en 
		' Largo total de la red
		Console.WriteLine("�C�al es la altura de la red en cm?")
		alturared = Double.Parse(Console.ReadLine())
		Console.WriteLine("�C�al es el diametro de la red en cm?")
		diametrored = Double.Parse(Console.ReadLine())
		volumenred = 1/3*Math.Pi*(diametrored/2)^2*alturared
		volredlitros = volumenred/1000
		Console.WriteLine("�Cu�l es el volumen de agua filtrada por la red en litros?")
		v3 = Double.Parse(Console.ReadLine())
		volfiltradatotal = v3+volredlitros
		Console.WriteLine("El volumen de la red es: ",volredlitros," litros")
		Console.WriteLine("El volumen de agua filtrada es: ",volfiltradatotal," litros")
		Console.WriteLine("�C�antas al�cuoatas cont�?")
		v2 = Double.Parse(Console.ReadLine())
		Console.WriteLine("�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?")
		n = Double.Parse(Console.ReadLine())
		' N�mero promedio total de C�lulas contados por mililitro
		nml = n/v2
		Console.WriteLine("El n�mero promedio total de C�lulas de fitoplancton contados es: ",Math.Round(nml)," Cel/mL")
		Console.WriteLine("�Cu�l es el volumen concentrado de la muestra en mililitros?")
		v1 = Double.Parse(Console.ReadLine())
		' Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*volfiltradatotal)
		' Densidad de C�lulas por mililitro
		celml = cell/1000
		Console.WriteLine("El resultado de la densidad de C�lulas de fitoplancton es: ",Math.Round(cell)," Cel/L")
		Console.WriteLine("El resultado de la densidad de C�lulas de fitoplancton es: ",Math.Round(celml)," Cel/ml")
	End Sub

End Module
