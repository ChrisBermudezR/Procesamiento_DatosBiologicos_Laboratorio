Algoritmo VolumendeaguafiltradaXred // Este algoritmo es para calcular el volumen de agua filtrada con el flujómetro General Oceanic
	
	Definir D Como Real // Distancia recorrida por la red expresada en m
	Definir Ff Como Entero // Lectura final del flujómetro
	Definir Fi Como Entero // Lectura inicial del flujómetro
	Definir V Como Real // Volumen filtrado por la red  expresado en m3
	Definir di Como Real // Diámetro de la red expresada en m 
	Escribir "¿Cuál es la lectura inicial del flujómetro?"
	Leer Fi
	Escribir "¿Cuál es la lectura final del flujómetro?"
	Leer Ff
	D= ((Ff-Fi)*26873)/999999  // Cálculo de la distancia recorrida por la red expresada en metros
	Escribir "El resultado de la distancia recorrida por la red es: ", D, " m"
	Escribir "¿Cuál es el diámetro en metros de la red?"
	Leer di
	V=(3.141618*(di^2)*D)/4
	Escribir "El resultado dle volumen de agua filtrada por la red es: ", V, " m3"
	
FinAlgoritmo