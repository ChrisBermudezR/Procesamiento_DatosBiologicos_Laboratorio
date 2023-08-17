/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo deber�a llamarse "CONTEOXCAMARAUTERMOHL.java."

import java.io.*;
import java.math.*;

public class conteoxcamarautermohl {

	public static void main(String args[]) throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		int af;
		double at;
		int c;
		double cell;
		int contador;
		double diamcamara;
		double diamcampo;
		double f;
		double l;
		double lt;
		double nml;
		int s;
		int usuarioescoge;
		double v;
		double w;
		// Volumen de la c�mara expresado en mililitros (ml)
		// N�mero de c�lulas contados por mililitros
		// �rea total de la c�mara en mm2
		// �rea del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros cuadrados (mm2)
		// N�mero de campor contados
		// Di�metro de la c�mara de observaci�n en mil�metros 
		// Di�metro del campo de observaci�n en mil�metros 
		// N�mero de c�lulas contados en la c�mara
		// Densidad de microzooplancton.
		// Longitud de la tira, mm
		// Longitud total de tiras
		// Amplitud de la tira, mm
		// N�mero de tiras contadas
		// Contador
		lt = 0;
		contador = 0;
		System.out.println("�Cu�l es el c�lculo que va a realizar?");
		System.out.println("Escoja un n�mero:");
		System.out.println("1. C�lculo de c�mara completa");
		System.out.println("2. C�lculo por campos");
		System.out.println("3. Conteo por tiras");
		System.out.println("Digite su selecci�n: ");
		usuarioescoge = Integer.parseInt(bufEntrada.readLine());
		if (usuarioescoge<1 || usuarioescoge>3) {
			do {
				System.out.println("Escoja de nuevo un valor entre 1 y 3 y dig�telo:");
				usuarioescoge = Integer.parseInt(bufEntrada.readLine());
			} while (!(usuarioescoge>0 && usuarioescoge<4));
		}
		if (usuarioescoge==1) {
			v = 3;
			System.out.println("�Cu�l es el n�mero de c�lulas contados en el total de la c�mara?");
			c = Integer.parseInt(bufEntrada.readLine());
			cell = c*1000/v;
			System.out.println("La densidad del microzooplancton es de: "+cell+" C�lulas por litro");
		}
		if (usuarioescoge==2) {
			System.out.println("�Cu�l es el di�metro de la c�mara de observaci�n en mm?");
			diamcamara = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el �rea del campo de observaci�n en mm?");
			diamcampo = Double.parseDouble(bufEntrada.readLine());
			if (diamcampo>diamcamara) {
				do {
					System.out.println("El valor del di�metro del campo debe ser menor que el di�metro de la c�mara, los valores que usted ingres� son:");
					System.out.println("Di�metro de c�mara: "+diamcamara);
					System.out.println(" Di�metro de campo: "+diamcampo);
					System.out.println("Por favor digite de nuevo los valores");
					System.out.println("�Cu�l es el di�metro de la c�mara de observaci�n en mm?");
					diamcamara = Double.parseDouble(bufEntrada.readLine());
					System.out.println("�Cu�l es el �rea del campo de observaci�n en mm?");
					diamcampo = Double.parseDouble(bufEntrada.readLine());
				} while (diamcampo>=diamcamara);
			}
			at = 3.141618*Math.pow((diamcamara/2),2);
			f = 3.141618*Math.pow((diamcampo/2),2);
			System.out.println("�Cu�l es el n�mero de c�lulas contados?");
			c = Integer.parseInt(bufEntrada.readLine());
			System.out.println("�Cu�l es el n�mero de campos que cont�?");
			af = Integer.parseInt(bufEntrada.readLine());
			v = 3;
			// C�lculo del n�mero de c�lulas por unidad de volumen
			nml = ((c*at)/(af*f*v));
			System.out.println("El n�mero de c�lulas en el total de la c�mara es: "+nml);
			cell = nml*1000;
			System.out.println("La densidad del microzooplancton es de: "+cell+" C�lulas por litro");
		}
		if (usuarioescoge==3) {
			System.out.println("�Cu�ntas tiras cont�?");
			s = Integer.parseInt(bufEntrada.readLine());
			for (contador=1;contador<=s;contador++) {
				System.out.println("�Cu�l es la longitud de la tira "+contador+" en mm?");
				l = Double.parseDouble(bufEntrada.readLine());
				lt = lt+l;
			}
			System.out.println(lt);
			System.out.println("�Cu�l es la amplitud de la tira en mm?");
			w = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el n�mero de c�lulas contados?");
			c = Integer.parseInt(bufEntrada.readLine());
			System.out.println("�Cu�l es el di�metro de la c�mara de observaci�n en mm?");
			diamcamara = Double.parseDouble(bufEntrada.readLine());
			at = 3.141618*Math.pow((diamcamara/2),2);
			v = 3;
			// C�lculo del n�mero de c�lulas por unidad de volumen
			nml = ((c*at)/(lt*w*s*v));
			System.out.println("El n�mero de c�lulas en el total de la c�mara es: "+nml);
			cell = nml*1000;
			System.out.println("La densidad del microzooplancton es de: "+cell+" C�lulas por litro");
		}
	}


}

