// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function macroinvertebrados() {
	// Numero de morfotipos
	var mft = new Number();
	// Unidad de �rea monitoreada. Esta es en �rea que se genera por la draga
	var a = new Number();
	// Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	var v = new Number();
	// Numero de individuos
	var ind = new Number();
	// Densidad de morfotipos por �rea
	var d_mfta = new Number();
	// Densidad de morfotipos por volumen
	var d_mftv = new Number();
	// Densidad de individuos por �rea
	var d_inda = new Number();
	// Densidad de individuos por volumen
	var d_indv = new Number();
	var usuarioescoge = new Number();
	document.write("�C�al es el c�lculo que va a realizar?",'<BR/>');
	document.write("Escoja un n�mero:",'<BR/>');
	document.write("1. Densidad de morfotipos por �rea",'<BR/>');
	document.write("2. Densidad de morfotipos por volumen",'<BR/>');
	document.write("3. Densidad de individuos por �rea",'<BR/>');
	document.write("4. Densidad de individuos por volumen",'<BR/>');
	document.write("Digite su selecci�n: ",'<BR/>');
	usuarioescoge = Number(prompt());
	if (usuarioescoge<0 || usuarioescoge>4) {
		do {
			document.write("Escoja de nuevo un valor entre 1 y 4 y dig�telo:",'<BR/>');
			usuarioescoge = Number(prompt());
		} while (!(usuarioescoge>0 && usuarioescoge<5));
	}
	if (usuarioescoge==1) {
		document.write("�Cu�l es el n�mero de mortipos contados en la muestra?",'<BR/>');
		mft = Number(prompt());
		document.write("�C�al es el valor en m2 del �rea monitoreada?",'<BR/>');
		a = Number(prompt());
		// C�lculo de densidad morfotipos por �rea
		d_mfta = mft/a;
		document.write("El resultado de la cantidad de morfotipos por �rea es: ",d_mfta," morfotipos / m2",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("�Cu�l es el n�mero de mortipos contados en la muestra?",'<BR/>');
		mft = Number(prompt());
		document.write("�C�al es el valor en cm3 del volumen obtenido?",'<BR/>');
		v = Number(prompt());
		// C�lculo de densidad morfotipos por voluemn
		d_mftv = mft/v;
		document.write("El resultado de la cantidad de morfotipos por volumen es: ",d_mftv," morfotipos / cm3",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("�Cu�l es el n�mero de individuos contados en la muestra?",'<BR/>');
		ind = Number(prompt());
		document.write("�C�al es el valor en m2 del �rea monitoreada?",'<BR/>');
		a = Number(prompt());
		// C�lculo de densidad individuos por �rea
		d_inda = ind/a;
		document.write("El resultado de la cantidad de individuos por �rea es: ",d_inda," individuos / m2",'<BR/>');
	}
	if (usuarioescoge==4) {
		document.write("�Cu�l es el n�mero de individuos contados en la muestra?",'<BR/>');
		ind = Number(prompt());
		document.write("�C�al es el valor en cm3 del volumen obtenido?",'<BR/>');
		v = Number(prompt());
		// C�lculo de densidad individuos por voluemn
		d_indv = ind/v;
		document.write("El resultado de la cantidad de individuos por volumen es: ",d_indv," individuos / cm3",'<BR/>');
	}
}

