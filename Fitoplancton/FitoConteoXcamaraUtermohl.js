// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function conteoxcamarautermohl() {
	// Volumen de la c�mara expresado en mililitros (ml)
	var v = new Number();
	// N�mero de c�lulas contados por mililitros
	var nml = new Number();
	// �rea total de la c�mara en mm2
	var at = new Number();
	// �rea del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros cuadrados (mm2)
	var f = new Number();
	// N�mero de campor contados
	var af = new Number();
	// Di�metro de la c�mara de observaci�n en mil�metros 
	var diamcamara = new Number();
	// Di�metro del campo de observaci�n en mil�metros 
	var diamcampo = new Number();
	// N�mero de c�lulas contados en la c�mara
	var c = new Number();
	// Densidad de microzooplancton.
	var cell = new Number();
	// Longitud de la tira, mm
	var l = new Number();
	// Longitud total de tiras
	var lt = new Number();
	// Amplitud de la tira, mm
	var w = new Number();
	// N�mero de tiras contadas
	var s = new Number();
	var usuarioescoge = new Number();
	// Contador
	var contador = new Number();
	lt = 0;
	contador = 0;
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
		v = 3;
		document.write("�Cu�l es el n�mero de c�lulas contados en el total de la c�mara?",'<BR/>');
		c = Number(prompt());
		cell = c*1000/v;
		document.write("La densidad del microzooplancton es de: ",cell," C�lulas por litro",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("�Cu�l es el di�metro de la c�mara de observaci�n en mm?",'<BR/>');
		diamcamara = Number(prompt());
		document.write("�Cu�l es el �rea del campo de observaci�n en mm?",'<BR/>');
		diamcampo = Number(prompt());
		if (diamcampo>diamcamara) {
			do {
				document.write("El valor del di�metro del campo debe ser menor que el di�metro de la c�mara, los valores que usted ingres� son:",'<BR/>');
				document.write("Di�metro de c�mara: ",diamcamara,'<BR/>');
				document.write(" Di�metro de campo: ",diamcampo,'<BR/>');
				document.write("Por favor digite de nuevo los valores",'<BR/>');
				document.write("�Cu�l es el di�metro de la c�mara de observaci�n en mm?",'<BR/>');
				diamcamara = Number(prompt());
				document.write("�Cu�l es el �rea del campo de observaci�n en mm?",'<BR/>');
				diamcampo = Number(prompt());
			} while (diamcampo>=diamcamara);
		}
		at = 3.141618*Math.pow((diamcamara/2),2);
		f = 3.141618*Math.pow((diamcampo/2),2);
		document.write("�Cu�l es el n�mero de c�lulas contados?",'<BR/>');
		c = Number(prompt());
		document.write("�Cu�l es el n�mero de campos que cont�?",'<BR/>');
		af = Number(prompt());
		v = 3;
		// C�lculo del n�mero de c�lulas por unidad de volumen
		nml = ((c*at)/(af*f*v));
		document.write("El n�mero de c�lulas en el total de la c�mara es: ",nml,'<BR/>');
		cell = nml*1000;
		document.write("La densidad del microzooplancton es de: ",cell," C�lulas por litro",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("�Cu�ntas tiras cont�?",'<BR/>');
		s = Number(prompt());
		for (contador=1;contador<=s;contador++) {
			document.write("�Cu�l es la longitud de la tira ",contador," en mm?",'<BR/>');
			l = Number(prompt());
			lt = lt+l;
		}
		document.write(lt,'<BR/>');
		document.write("�Cu�l es la amplitud de la tira en mm?",'<BR/>');
		w = Number(prompt());
		document.write("�Cu�l es el n�mero de c�lulas contados?",'<BR/>');
		c = Number(prompt());
		document.write("�Cu�l es el di�metro de la c�mara de observaci�n en mm?",'<BR/>');
		diamcamara = Number(prompt());
		at = 3.141618*Math.pow((diamcamara/2),2);
		v = 3;
		// C�lculo del n�mero de c�lulas por unidad de volumen
		nml = ((c*at)/(lt*w*s*v));
		document.write("El n�mero de c�lulas en el total de la c�mara es: ",nml,'<BR/>');
		cell = nml*1000;
		document.write("La densidad del microzooplancton es de: ",cell," C�lulas por litro",'<BR/>');
	}
}

