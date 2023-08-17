/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo debería llamarse "CONTEOXCAMARAUTERMOHL.java."

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
		// Volumen de la cámara expresado en mililitros (ml)
		// Número de células contados por mililitros
		// Área total de la cámara en mm2
		// Área del campo óptico o de la cuadrícula utilizada expresada en milímetros cuadrados (mm2)
		// Número de campor contados
		// Diámetro de la cámara de observación en milímetros 
		// Diámetro del campo de observación en milímetros 
		// Número de células contados en la cámara
		// Densidad de microzooplancton.
		// Longitud de la tira, mm
		// Longitud total de tiras
		// Amplitud de la tira, mm
		// Número de tiras contadas
		// Contador
		lt = 0;
		contador = 0;
		System.out.println("¿Cuál es el cálculo que va a realizar?");
		System.out.println("Escoja un número:");
		System.out.println("1. Cálculo de cámara completa");
		System.out.println("2. Cálculo por campos");
		System.out.println("3. Conteo por tiras");
		System.out.println("Digite su selección: ");
		usuarioescoge = Integer.parseInt(bufEntrada.readLine());
		if (usuarioescoge<1 || usuarioescoge>3) {
			do {
				System.out.println("Escoja de nuevo un valor entre 1 y 3 y digítelo:");
				usuarioescoge = Integer.parseInt(bufEntrada.readLine());
			} while (!(usuarioescoge>0 && usuarioescoge<4));
		}
		if (usuarioescoge==1) {
			v = 3;
			System.out.println("¿Cuál es el número de células contados en el total de la cámara?");
			c = Integer.parseInt(bufEntrada.readLine());
			cell = c*1000/v;
			System.out.println("La densidad del microzooplancton es de: "+cell+" Células por litro");
		}
		if (usuarioescoge==2) {
			System.out.println("¿Cuál es el diámetro de la cámara de observación en mm?");
			diamcamara = Double.parseDouble(bufEntrada.readLine());
			System.out.println("¿Cuál es el área del campo de observación en mm?");
			diamcampo = Double.parseDouble(bufEntrada.readLine());
			if (diamcampo>diamcamara) {
				do {
					System.out.println("El valor del diámetro del campo debe ser menor que el diámetro de la cámara, los valores que usted ingresó son:");
					System.out.println("Diámetro de cámara: "+diamcamara);
					System.out.println(" Diámetro de campo: "+diamcampo);
					System.out.println("Por favor digite de nuevo los valores");
					System.out.println("¿Cuál es el diámetro de la cámara de observación en mm?");
					diamcamara = Double.parseDouble(bufEntrada.readLine());
					System.out.println("¿Cuál es el área del campo de observación en mm?");
					diamcampo = Double.parseDouble(bufEntrada.readLine());
				} while (diamcampo>=diamcamara);
			}
			at = 3.141618*Math.pow((diamcamara/2),2);
			f = 3.141618*Math.pow((diamcampo/2),2);
			System.out.println("¿Cuál es el número de células contados?");
			c = Integer.parseInt(bufEntrada.readLine());
			System.out.println("¿Cuál es el número de campos que contó?");
			af = Integer.parseInt(bufEntrada.readLine());
			v = 3;
			// Cálculo del número de células por unidad de volumen
			nml = ((c*at)/(af*f*v));
			System.out.println("El número de células en el total de la cámara es: "+nml);
			cell = nml*1000;
			System.out.println("La densidad del microzooplancton es de: "+cell+" Células por litro");
		}
		if (usuarioescoge==3) {
			System.out.println("¿Cuántas tiras contó?");
			s = Integer.parseInt(bufEntrada.readLine());
			for (contador=1;contador<=s;contador++) {
				System.out.println("¿Cuál es la longitud de la tira "+contador+" en mm?");
				l = Double.parseDouble(bufEntrada.readLine());
				lt = lt+l;
			}
			System.out.println(lt);
			System.out.println("¿Cuál es la amplitud de la tira en mm?");
			w = Double.parseDouble(bufEntrada.readLine());
			System.out.println("¿Cuál es el número de células contados?");
			c = Integer.parseInt(bufEntrada.readLine());
			System.out.println("¿Cuál es el diámetro de la cámara de observación en mm?");
			diamcamara = Double.parseDouble(bufEntrada.readLine());
			at = 3.141618*Math.pow((diamcamara/2),2);
			v = 3;
			// Cálculo del número de células por unidad de volumen
			nml = ((c*at)/(lt*w*s*v));
			System.out.println("El número de células en el total de la cámara es: "+nml);
			cell = nml*1000;
			System.out.println("La densidad del microzooplancton es de: "+cell+" Células por litro");
		}
	}


}

