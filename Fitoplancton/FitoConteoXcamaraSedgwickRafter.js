// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function conteoxcamarasedgwickrafter() {
	// número total de Células contados por mililitro
	var nml = new Number();
	// número de Células contados en la cámara
	var n = new Number();
	// número de alícuotas de 1 mL contadas en la cámara
	var a = new Number();
	// Número de Células por litro
	var cell = new Number();
	// Volumen concentrado de la muestra en mililitros
	var v1 = new Number();
	// Volumen total de la alícuota en mililitros
	var v2 = new Number();
	// Volumen de agua filtrada por la red en litros
	var v3 = new Number();
	// Volumen del campo óptico o de la cuadrícula utilizada expresada en milímetros cúbicos (mm3)
	var vc = new Number();
	// Diámetro del campo de observación en milímetros
	var diamcampo = new Number();
	// Número de campos contados
	var c = new Number();
	// Volumen de la tira expresada en milímetros cúbicos (mm3)
	var vt = new Number();
	// Número de tiras contadas
	var t = new Number();
	// Volumen sedimentado expresado en mililitros (ml)
	var v = new Number();
	// Diámetro de la cámara de observación en milímetros 
	var diamcamara = new Number();
	var usuarioescoge = new Number();
	document.write("¿Cuál es el cálculo que va a realizar?",'<BR/>');
	document.write("Escoja un número:",'<BR/>');
	document.write("1. Cálculo de cámara completa",'<BR/>');
	document.write("2. Cálculo por campos",'<BR/>');
	document.write("3. Conteo por tiras",'<BR/>');
	document.write("Digite su selección: ",'<BR/>');
	usuarioescoge = Number(prompt());
	if (usuarioescoge<1 || usuarioescoge>3) {
		do {
			document.write("Escoja de nuevo un valor entre 1 y 3 y digítelo:",'<BR/>');
			usuarioescoge = Number(prompt());
		} while (!(usuarioescoge>0 && usuarioescoge<4));
	}
	if (usuarioescoge==1) {
		document.write("¿Cúantas alícuoatas contó?",'<BR/>');
		v2 = Number(prompt());
		document.write("¿Cuál es el número total de Células contados en todas las alícuotas?",'<BR/>');
		n = Number(prompt());
		// Número promedio total de Células contados por mililitro
		nml = n/v2;
		document.write("El número promedio total de Células de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("¿Cuál es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("¿Cuál es el volumen de agua filtrada por la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de Células por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de Células de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("¿Cuál es el número total de Células contados en todos los campos?",'<BR/>');
		n = Number(prompt());
		document.write("¿Cuál es el diámetro del campo de observación en mm?",'<BR/>');
		diamcampo = Number(prompt());
		// Este es el volumen del campo en milimetros cúbicos, para convertirlo a mililitros se debe multiplicar por 1000
		vc = ((3.141618*Math.pow((diamcampo/2),2))*1)*1000;
		document.write("¿Cuál es el número de campos que contó?",'<BR/>');
		c = Number(prompt());
		// Número promedio total de Células contados por mililitro
		nml = (n*1000)/(vc*c);
		document.write("El número promedio total de Células de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("¿Cuál es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("¿Cuál es el Volumen total de la alícuota en mililitros?",'<BR/>');
		v2 = Number(prompt());
		document.write("¿Cuál es el volumen de agua filtrada en la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de Células por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de Células de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("¿Cuál es el número total de Células contados en todas las tiras?",'<BR/>');
		n = Number(prompt());
		document.write("¿Cuál es el número de tiras contadas?",'<BR/>');
		t = Number(prompt());
		vt = 50;
		// Número promedio total de Células contados por mililitro
		nml = (n*1000)/(vt*t);
		document.write("El número promedio total de Células de fitoplancton contados es: ",Math.round(nml)," Cel/mL",'<BR/>');
		document.write("¿Cuál es el volumen concentrado de la muestra en mililitros?",'<BR/>');
		v1 = Number(prompt());
		document.write("¿Cuál es el Volumen total de la alícuota en mililitros?",'<BR/>');
		v2 = Number(prompt());
		document.write("¿Cuál es el volumen de agua filtrada en la red en litros?",'<BR/>');
		v3 = Number(prompt());
		// Densidad de Células por litro
		cell = (nml*v1)/(v2*v3);
		document.write("El resultado de la densidad de Células de fitoplancton es: ",Math.round(cell)," Cel/L",'<BR/>');
	}
}

