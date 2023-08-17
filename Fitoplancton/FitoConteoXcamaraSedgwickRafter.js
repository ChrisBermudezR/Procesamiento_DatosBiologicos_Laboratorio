// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function conteoxcamarasedgwickrafter() {
	// n�mero total de C�lulas contados por mililitro
	var nml = new Number();
	// n�mero de C�lulas contados en la c�mara
	var n = new Number();
	// n�mero de al�cuotas de 1 mL contadas en la c�mara
	var a = new Number();
	// N�mero de C�lulas por litro
	var cell = new Number();
	// Volumen concentrado de la muestra en mililitros
	var v1 = new Number();
	// Volumen total de la al�cuota en mililitros
	var v2 = new Number();
	// Volumen de agua filtrada por la red en litros
	var v3 = new Number();
	// Volumen del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros c�bicos (mm3)
	var vc = new Number();
	// Di�metro del campo de observaci�n en mil�metros
	var diamcampo = new Number();
	// N�mero de campos contados
	var c = new Number();
	// Volumen de la tira expresada en mil�metros c�bicos (mm3)
	var vt = new Number();
	// N�mero de tiras contadas
	var t = new Number();
	// Volumen sedimentado expresado en mililitros (ml)
	var v = new Number();
	// Di�metro de la c�mara de observaci�n en mil�metros 
	var diamcamara = new Number();
	var usuarioescoge = new Number();
	document.write("�Cu�l es el c�lculo que va a realizar?",'<BR/>');
	document.write("Escoja un n�mero:",'<BR/>');
	document.write("1. C�lculo de c�mara completa",'<BR/>');
	document.write("2. C�lculo por campos",'<BR/>');
	document.write("3. Conteo por tiras",'<BR/>');
	document.write("Digite su selecci�n: ",'<BR/>');
	usuarioescoge = Number(prompt());
	if (usuarioescoge<1 || usuarioescoge>3) {
		do {
			document.write("Escoja de nuevo un valor entre 1 y 3 y dig�telo:",'<BR/>');
			usuarioescoge = Number(prompt());
		} while (!(usuarioescoge>0 && usuarioescoge<4));
	}
	if (usuarioescoge==1) {
		document.write("�C�antas al�cuoatas cont�?",'<BR/>');
		v2 = Number(prompt());
		document.write("�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?",'<BR/>');
		n = Number(prompt());
		// N�mero promedio total de C�lulas contados por mililitro
		nml = n/v2;
		document.write("El n�mero promedio total de C�lulas de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("�Cu�l es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("�Cu�l es el volumen de agua filtrada por la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de C�lulas de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("�Cu�l es el n�mero total de C�lulas contados en todos los campos?",'<BR/>');
		n = Number(prompt());
		document.write("�Cu�l es el di�metro del campo de observaci�n en mm?",'<BR/>');
		diamcampo = Number(prompt());
		// Este es el volumen del campo en milimetros c�bicos, para convertirlo a mililitros se debe multiplicar por 1000
		vc = ((3.141618*Math.pow((diamcampo/2),2))*1)*1000;
		document.write("�Cu�l es el n�mero de campos que cont�?",'<BR/>');
		c = Number(prompt());
		// N�mero promedio total de C�lulas contados por mililitro
		nml = (n*1000)/(vc*c);
		document.write("El n�mero promedio total de C�lulas de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("�Cu�l es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("�Cu�l es el Volumen total de la al�cuota en mililitros?",'<BR/>');
		v2 = Number(prompt());
		document.write("�Cu�l es el volumen de agua filtrada en la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de C�lulas de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("�Cu�l es el n�mero total de C�lulas contados en todas las tiras?",'<BR/>');
		n = Number(prompt());
		document.write("�Cu�l es el n�mero de tiras contadas?",'<BR/>');
		t = Number(prompt());
		vt = 50;
		// N�mero promedio total de C�lulas contados por mililitro
		nml = (n*1000)/(vt*t);
		document.write("El n�mero promedio total de C�lulas de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("�Cu�l es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("�Cu�l es el Volumen total de la al�cuota en mililitros?",'<BR/>');
		v2 = Number(prompt());
		document.write("�Cu�l es el volumen de agua filtrada en la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de C�lulas por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de C�lulas de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
}

