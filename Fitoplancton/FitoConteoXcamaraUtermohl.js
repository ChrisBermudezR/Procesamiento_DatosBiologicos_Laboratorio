// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function conteoxcamarautermohl() {
	// Volumen de la cámara expresado en mililitros (ml)
	var v = new Number();
	// Número de células contados por mililitros
	var nml = new Number();
	// Área total de la cámara en mm2
	var at = new Number();
	// Área del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
	var f = new Number();
	// Número de campor contados
	var af = new Number();
	// Diámetro de la cámara de observación en milímetros 
	var diamcamara = new Number();
	// Diámetro del campo de observación en milímetros 
	var diamcampo = new Number();
	// Número de células contados en la cámara
	var c = new Number();
	// Densidad de microzooplancton.
	var cell = new Number();
	// Longitud de la tira, mm
	var l = new Number();
	// Longitud total de tiras
	var lt = new Number();
	// Amplitud de la tira, mm
	var w = new Number();
	// Número de tiras contadas
	var s = new Number();
	var usuarioescoge = new Number();
	// Contador
	var contador = new Number();
	lt = 0;
	contador = 0;
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
		v = 3;
		document.write("¿Cuál es el número de células contados en el total de la cámara?",'<BR/>');
		c = Number(prompt());
		cell = c*1000/v;
		document.write("La densidad del microzooplancton es de: ",cell," Células por litro",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("¿Cuál es el diámetro de la cámara de observación en mm?",'<BR/>');
		diamcamara = Number(prompt());
		document.write("¿Cuál es el área del campo de observación en mm?",'<BR/>');
		diamcampo = Number(prompt());
		if (diamcampo>diamcamara) {
			do {
				document.write("El valor del diámetro del campo debe ser menor que el diámetro de la cámara, los valores que usted ingresó son:",'<BR/>');
				document.write("Diámetro de cámara: ",diamcamara,'<BR/>');
				document.write(" Diámetro de campo: ",diamcampo,'<BR/>');
				document.write("Por favor digite de nuevo los valores",'<BR/>');
				document.write("¿Cuál es el diámetro de la cámara de observación en mm?",'<BR/>');
				diamcamara = Number(prompt());
				document.write("¿Cuál es el área del campo de observación en mm?",'<BR/>');
				diamcampo = Number(prompt());
			} while (diamcampo>=diamcamara);
		}
		at = 3.141618*Math.pow((diamcamara/2),2);
		f = 3.141618*Math.pow((diamcampo/2),2);
		document.write("¿Cuál es el número de células contados?",'<BR/>');
		c = Number(prompt());
		document.write("¿Cuál es el número de campos que contó?",'<BR/>');
		af = Number(prompt());
		v = 3;
		// Cálculo del número de células por unidad de volumen
		nml = ((c*at)/(af*f*v));
		document.write("El número de células en el total de la cámara es: ",nml,'<BR/>');
		cell = nml*1000;
		document.write("La densidad del microzooplancton es de: ",cell," Células por litro",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("¿Cuántas tiras contó?",'<BR/>');
		s = Number(prompt());
		for (contador=1;contador<=s;contador++) {
			document.write("¿Cuál es la longitud de la tira ",contador," en mm?",'<BR/>');
			l = Number(prompt());
			lt = lt+l;
		}
		document.write(lt,'<BR/>');
		document.write("¿Cuál es la amplitud de la tira en mm?",'<BR/>');
		w = Number(prompt());
		document.write("¿Cuál es el número de células contados?",'<BR/>');
		c = Number(prompt());
		document.write("¿Cuál es el diámetro de la cámara de observación en mm?",'<BR/>');
		diamcamara = Number(prompt());
		at = 3.141618*Math.pow((diamcamara/2),2);
		v = 3;
		// Cálculo del número de células por unidad de volumen
		nml = ((c*at)/(lt*w*s*v));
		document.write("El número de células en el total de la cámara es: ",nml,'<BR/>');
		cell = nml*1000;
		document.write("La densidad del microzooplancton es de: ",cell," Células por litro",'<BR/>');
	}
}

