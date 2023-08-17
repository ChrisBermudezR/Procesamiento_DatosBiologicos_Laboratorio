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
		' número total de Células contados por mililitro
		' número de Células contados en la cámara
		' Número de Células por litro
		' Número de Células por mililitro
		' Volumen concentrado de la muestra en mililitros
		' Volumen total de la alícuota en mililitros
		' Volumen de agua filtrada por la red en litros
		' Volumen de agua filtrada por la red en litros
		' Volumen de la red de muestro cm3
		' Volumen de la red de muestro en litros
		' Radio de la red en 
		' Largo total de la red
		Console.WriteLine("¿Cúal es la altura de la red en cm?")
		alturared = Double.Parse(Console.ReadLine())
		Console.WriteLine("¿Cúal es el diametro de la red en cm?")
		diametrored = Double.Parse(Console.ReadLine())
		volumenred = 1/3*Math.Pi*(diametrored/2)^2*alturared
		volredlitros = volumenred/1000
		Console.WriteLine("¿Cuál es el volumen de agua filtrada por la red en litros?")
		v3 = Double.Parse(Console.ReadLine())
		volfiltradatotal = v3+volredlitros
		Console.WriteLine("El volumen de la red es: ",volredlitros," litros")
		Console.WriteLine("El volumen de agua filtrada es: ",volfiltradatotal," litros")
		Console.WriteLine("¿Cúantas alícuoatas contó?")
		v2 = Double.Parse(Console.ReadLine())
		Console.WriteLine("¿Cuál es el número total de Células contados en todas las alícuotas?")
		n = Double.Parse(Console.ReadLine())
		' Número promedio total de Células contados por mililitro
		nml = n/v2
		Console.WriteLine("El número promedio total de Células de fitoplancton contados es: ",Math.Round(nml)," Cel/mL")
		Console.WriteLine("¿Cuál es el volumen concentrado de la muestra en mililitros?")
		v1 = Double.Parse(Console.ReadLine())
		' Densidad de Células por litro
		cell = (nml*v1)/(v2*volfiltradatotal)
		' Densidad de Células por mililitro
		celml = cell/1000
		Console.WriteLine("El resultado de la densidad de Células de fitoplancton es: ",Math.Round(cell)," Cel/L")
		Console.WriteLine("El resultado de la densidad de Células de fitoplancton es: ",Math.Round(celml)," Cel/ml")
	End Sub

End Module
