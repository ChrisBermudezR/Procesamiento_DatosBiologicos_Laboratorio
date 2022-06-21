// Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
// Es posible que el codigo generado no sea completamente correcto. Si encuentra
// errores por favor reportelos en el foro (http://pseint.sourceforge.net).

function macroinvertebrados() {
	// Numero de morfotipos
	var mft = new Number();
	// Unidad de Área monitoreada. Esta es en área que se genera por la draga
	var a = new Number();
	// Unidad de Volumen monitoreada. Este es el volumen total de sedimento que se obtiene con la muestra
	var v = new Number();
	// Numero de individuos
	var ind = new Number();
	// Densidad de morfotipos por área
	var d_mfta = new Number();
	// Densidad de morfotipos por volumen
	var d_mftv = new Number();
	// Densidad de individuos por área
	var d_inda = new Number();
	// Densidad de individuos por volumen
	var d_indv = new Number();
	var usuarioescoge = new Number();
	document.write("¿Cúal es el cálculo que va a realizar?",'<BR/>');
	document.write("Escoja un número:",'<BR/>');
	document.write("1. Densidad de morfotipos por área",'<BR/>');
	document.write("2. Densidad de morfotipos por volumen",'<BR/>');
	document.write("3. Densidad de individuos por área",'<BR/>');
	document.write("4. Densidad de individuos por volumen",'<BR/>');
	document.write("Digite su selección: ",'<BR/>');
	usuarioescoge = Number(prompt());
	if (usuarioescoge<0 || usuarioescoge>4) {
		do {
			document.write("Escoja de nuevo un valor entre 1 y 4 y digítelo:",'<BR/>');
			usuarioescoge = Number(prompt());
		} while (!(usuarioescoge>0 && usuarioescoge<5));
	}
	if (usuarioescoge==1) {
		document.write("¿Cuál es el número de mortipos contados en la muestra?",'<BR/>');
		mft = Number(prompt());
		document.write("¿Cúal es el valor en m2 del área monitoreada?",'<BR/>');
		a = Number(prompt());
		// Cálculo de densidad morfotipos por área
		d_mfta = mft/a;
		document.write("El resultado de la cantidad de morfotipos por área es: ",d_mfta," morfotipos / m2",'<BR/>');
	}
	if (usuarioescoge==2) {
		document.write("¿Cuál es el número de mortipos contados en la muestra?",'<BR/>');
		mft = Number(prompt());
		document.write("¿Cúal es el valor en cm3 del volumen obtenido?",'<BR/>');
		v = Number(prompt());
		// Cálculo de densidad morfotipos por voluemn
		d_mftv = mft/v;
		document.write("El resultado de la cantidad de morfotipos por volumen es: ",d_mftv," morfotipos / cm3",'<BR/>');
	}
	if (usuarioescoge==3) {
		document.write("¿Cuál es el número de individuos contados en la muestra?",'<BR/>');
		ind = Number(prompt());
		document.write("¿Cúal es el valor en m2 del área monitoreada?",'<BR/>');
		a = Number(prompt());
		// Cálculo de densidad individuos por área
		d_inda = ind/a;
		document.write("El resultado de la cantidad de individuos por área es: ",d_inda," individuos / m2",'<BR/>');
	}
	if (usuarioescoge==4) {
		document.write("¿Cuál es el número de individuos contados en la muestra?",'<BR/>');
		ind = Number(prompt());
		document.write("¿Cúal es el valor en cm3 del volumen obtenido?",'<BR/>');
		v = Number(prompt());
		// Cálculo de densidad individuos por voluemn
		d_indv = ind/v;
		document.write("El resultado de la cantidad de individuos por volumen es: ",d_indv," individuos / cm3",'<BR/>');
	}
}

