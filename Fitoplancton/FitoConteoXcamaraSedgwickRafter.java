
import java.io.*;
import java.math.*;

public class conteoxcamarasedgwickrafter {

	public static void main(String args[]) throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		double a;
		int c;
		double cell;
		double diamcamara;
		double diamcampo;
		double n;
		double nml;
		int t;
		int usuarioescoge;
		double v;
		double v1;
		double v2;
		double v3;
		double vc;
		double vt;
		// n�mero total de C�lulas contados por mililitro
		// n�mero de C�lulas contados en la c�mara
		// n�mero de al�cuotas de 1 mL contadas en la c�mara
		// N�mero de C�lulas por litro
		// Volumen concentrado de la muestra en mililitros
		// Volumen total de la al�cuota en mililitros
		// Volumen de agua filtrada por la red en litros
		// Volumen del campo �ptico o de la cuadr�cula utilizada expresada en mil�metros c�bicos (mm3)
		// Di�metro del campo de observaci�n en mil�metros
		// N�mero de campos contados
		// Volumen de la tira expresada en mil�metros c�bicos (mm3)
		// N�mero de tiras contadas
		// Volumen sedimentado expresado en mililitros (ml)
		// Di�metro de la c�mara de observaci�n en mil�metros 
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
			System.out.println("�C�antas al�cuoatas cont�?");
			v2 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el n�mero total de C�lulas contados en todas las al�cuotas?");
			n = Double.parseDouble(bufEntrada.readLine());
			// N�mero promedio total de C�lulas contados por mililitro
			nml = n/v2;
			System.out.println("El n�mero promedio total de C�lulas de fitoplancton contados es: "+Math.round(nml)+" Cel/mL");
			System.out.println("�Cu�l es el volumen concentrado de la muestra en mililitros?");
			v1 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el volumen de agua filtrada por la red en litros?");
			v3 = Double.parseDouble(bufEntrada.readLine());
			// Densidad de C�lulas por litro
			cell = (nml*v1)/(v2*v3);
			System.out.println("El resultado de la densidad de C�lulas de fitoplancton es: "+Math.round(cell)+" Cel/L");
		}
		if (usuarioescoge==2) {
			System.out.println("�Cu�l es el n�mero total de C�lulas contados en todos los campos?");
			n = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el di�metro del campo de observaci�n en mm?");
			diamcampo = Double.parseDouble(bufEntrada.readLine());
			// Este es el volumen del campo en milimetros c�bicos, para convertirlo a mililitros se debe multiplicar por 1000
			vc = ((3.141618*Math.pow((diamcampo/2),2))*1)*1000;
			System.out.println("�Cu�l es el n�mero de campos que cont�?");
			c = Integer.parseInt(bufEntrada.readLine());
			// N�mero promedio total de C�lulas contados por mililitro
			nml = (n*1000)/(vc*c);
			System.out.println("El n�mero promedio total de C�lulas de fitoplancton contados es: "+Math.round(nml)+" Cel/mL");
			System.out.println("�Cu�l es el volumen concentrado de la muestra en mililitros?");
			v1 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el Volumen total de la al�cuota en mililitros?");
			v2 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el volumen de agua filtrada en la red en litros?");
			v3 = Double.parseDouble(bufEntrada.readLine());
			// Densidad de C�lulas por litro
			cell = (nml*v1)/(v2*v3);
			System.out.println("El resultado de la densidad de C�lulas de fitoplancton es: "+Math.round(cell)+" Cel/L");
		}
		if (usuarioescoge==3) {
			System.out.println("�Cu�l es el n�mero total de C�lulas contados en todas las tiras?");
			n = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el n�mero de tiras contadas?");
			t = Integer.parseInt(bufEntrada.readLine());
			vt = 50;
			// N�mero promedio total de C�lulas contados por mililitro
			nml = (n*1000)/(vt*t);
			System.out.println("El n�mero promedio total de C�lulas de fitoplancton contados es: "+Math.round(nml)+" Cel/mL");
			System.out.println("�Cu�l es el volumen concentrado de la muestra en mililitros?");
			v1 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el Volumen total de la al�cuota en mililitros?");
			v2 = Double.parseDouble(bufEntrada.readLine());
			System.out.println("�Cu�l es el volumen de agua filtrada en la red en litros?");
			v3 = Double.parseDouble(bufEntrada.readLine());
			// Densidad de C�lulas por litro
			cell = (nml*v1)/(v2*v3);
			System.out.println("El resultado de la densidad de C�lulas de fitoplancton es: "+Math.round(cell)+" Cel/L");
		}
	}


}

