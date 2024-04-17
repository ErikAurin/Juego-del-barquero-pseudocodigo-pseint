Funcion C_O_A <- cambiar_orilla_animal (elemento)//Creamos una funcion para que cada vez que tengamos que hacer un cambio de orilla de elementro nos lo realice desde esta.
	si elemento = 1
		Entonces
		C_O_A= 2
	SiNo
		C_O_A= 1
	FinSi
Fin Funcion

Funcion C_O_A <- cambiar_orilla_barca (barca)//Creamos una funcion para que cada vez que tengamos que hacer un cambio de orilla de la barca nos lo realice desde esta.
	si barca = 1
		Entonces
		C_O_A = 2
	SiNo
		C_O_A = 1
	FinSi
FinFuncion


Algoritmo main
	//iniciamos el algoritmo con 4 variables que fijaremos en 1, que serán en la orilla que se encuentra cada elemento y otra que la pondremos en falso que sera para identificar cuando el juego finaliza.
	fin_del_juego = Falso
	lobo = 1 
	cabra = 1
	lechuga = 1
	barca = 1
	
	Repetir
		//Creamos una estructura repetir donde dentro estableceremos unas acciones a repetir durante la variable fin_del_juego sea Falsa
		//Con caracteres creamos una interfaz de menu, donde a la izquierda hacemos una tabla del 1 al 5 con las opciones a elegir de movimiento y a la derecha te muestra la situación de cada elemento, en referencia a la orilla que se encuentra.
		Escribir"________________________________________			__________________________________"
		Escribir"|    J U E G O  D E L  B A R Q U E R O |		´´	| Orilla:  Sur:1 Norte:2       |"
		Escribir"|--------~-----------------------------|		´´	|------------------------------|"
		Escribir"|    1   |   M O V E R  L O B O        |		´´	|  L O B O       (" lobo ")           |"
		Escribir"|        |                             |		´´	|                              |"
		Escribir"|--------|-----------------------------|		´´	|------------------------------|"
		Escribir"|    2   |   M O V E R  C A B R A      |		´´	|  C A B R A     (" cabra ")           |"
		Escribir"|        |                             |		´´	|                              |"
		Escribir"|--------|-----------------------------|		´´	|------------------------------|"
		Escribir"|    3   |   M O V E R  L E C H U G A  |		´´	|  L E C H U G A (" lechuga ")           |"
		Escribir"|        |                             |		´´	|                              |"
		Escribir"|--------|-----------------------------|		´´	|------------------------------|"
		Escribir"|    4   |   M O V E R  B A R C A      |		´´	|  B A R C A     (" barca ")           |"
		Escribir"|        |                             |		´´	|                              |"
		Escribir"|________|_____________________________|		´´	|______________________________|"
		Escribir"|    5   |   + S A L I R +             |		´´	"
		Escribir"|        |                             |		´´	"
		Escribir"|________|_____________________________|		´´	"
		//cada vez que la barca este en un lado imprimimos un dibujo con la correspondiente "imagen" del lado en el que se encuentra, para eso mandamos escribir depediendo si la variable barca es 1 o 2 una de estas dos "imagenes" mediante el comando si.
		SI barca= 1
			Escribir"           .                                      /--/"
			Escribir"           |V_                                 /   /"
			Escribir"           |V_                               |    /"
			Escribir"           |V__                             |     |"
			Escribir"           |V___                             |     \"
			Escribir"           |V____                              \    \"
			Escribir"           |V______                               ----\  "
			Escribir"           |V________"
			Escribir"           |V__________"
			Escribir"           |V______________"
			Escribir"           |V__________________"
			Escribir"   ________||___________________________"
			Escribir"   \                             ______/"
			Escribir"    \___________________________/"
			Escribir",.-~*´¨¯¨`*-~-.¸,.-~*´¨¯¨`-*-~-.¸,.-~*´¨¯¨`*-~-.¸,.-~_*´¨¯¨`*_~-.¸,.-~*´¨¯¨`*-~-_.¸,.-~*´¨¯¨`*_~-.¸,.-~*´¨¯-_¨`*_~-.¸"
		FinSi
		
		SI barca= 2
			Escribir"...........................................................................                                    /--/"
			Escribir".........................................................................|V_                                 /   /"
			Escribir".........................................................................|V_                               |    /"
			Escribir".........................................................................|V__                             |     |"
			Escribir".........................................................................|V___                             |     \"
			Escribir".........................................................................|V____                              \    \"
			Escribir".........................................................................|V______                               ----\  "
			Escribir".........................................................................|V________"
			Escribir".........................................................................|V__________"
			Escribir".........................................................................|V______________"
			Escribir".........................................................................|V__________________"
			Escribir".................................................................________||___________________________"
			Escribir".................................................................\                             ______/"
			Escribir"..................................................................\___________________________/"
			Escribir",.-~*´¨¯¨`*-~-.¸,.-~*´¨¯¨`-*-~-.¸,.-~*´¨¯¨`*-~-.¸,.-~_*´¨¯¨`*_~-.¸,.-~*´¨¯¨`*-~-_.¸,.-~*´¨¯¨`*_~-.¸,.-~*´¨¯-_¨`*_~-.¸"
		FinSi
		Escribir "--------------------------------------------------------------------------------------------------------------------------"
		Escribir ""
		Escribir ""
		Escribir "--------------------------------------------------------------------------------------------------------------------------"
		

		//le pedimos al usuario que nos diga que hacer y lo guardamos en la variable eleccion
		Leer eleccion
		//de no ser un numero del 1 al 5 se lo pedimos de nuevo
		Mientras (eleccion <= 0) o (eleccion > 5)
			Escribir "Eleccion no correcta, escoja una opcion del 1 al 5"
			Leer eleccion
		FinMientras
		//si elige la opcion salir, imprime por la pantalla el siguiente mensaje y termina el juego poniendo la variable fin_del_juego en verdadero
		si eleccion = 5
			Entonces
			Escribir "Otro barquero irresponsable que se va..."
			fin_del_juego = Verdadero
		FinSi
		
		//Si la eleccion sea diferente a 5 hacemos un case con diferentes opciones
		si eleccion <> 5
			Segun eleccion Hacer
				1:
					si lobo = barca
						// si movemos el lobo y esta en la misma orilla que la barca usamos la función para cambiarlo de orilla y assignamos a una variable error 0, de que no hay error.
						Entonces
						lobo = cambiar_orilla_animal(lobo)
						error = 0
					SiNo
						//si no esta en la misma orilla que la barca no te deja mover el lobo y le damos valos a error de 1
						Escribir ("lobo no esta en la misma orilla que la barca")
						error = 1
					FinSi
				2:
					si cabra = barca
						Entonces
						cabra = cambiar_orilla_animal(cabra)
						error = 0
					SiNo
						//si no esta en la misma orilla que la barca no te deja mover el lobo y le damos valos a error de 1
						Escribir ("cabra no esta en la misma orilla que la barca")
						error = 1
					FinSi
				3:
					si lechuga = barca
						Entonces
						lechuga = cambiar_orilla_animal(lechuga)
						error = 0
					SiNo
						//si no esta en la misma orilla que la barca no te deja mover el lobo y le damos valos a error de 1
						Escribir ("lechuga no esta en la misma orilla que la barca")
						error = 1
					FinSi
				4://Sí elige la opcion 4 solo asignamos a error el valor 0 para que solo mueva la barca
					error = 0
					
				De Otro Modo:
					Escribir "Eleccion no correcta, escoja una opcion correcta"
			Fin Segun
		FinSi
		
		si error = 0
			//con este si, llamamos a la funcion para que se nos cambie de orilla la barca.
			Entonces
			barca = cambiar_orilla_barca(barca)
		FinSi
		
		
		
		// Si la barca esta en la orilla diferente a los 3 elementos tenemos que escribir el siguiente mensaje.
		Si (Barca = 2) y (lobo = 1) y (cabra = 1) y (lechuga = 1)
			Escribir "Te has ido y se han muerto"
			fin_del_juego <- Verdadero
		sino 	
			si (cabra = lechuga y barca <> cabra) //En este si lo que hacemos es comparar las diferentes variables y asignarles el mensaje indicado en la situacion
				Escribir "L A  C A B R A   S E   C O M I Ó   A   L A  L E C H U G A,  L O   L A M E N T O   H A S   P E R D I D O"
				
				Escribir"__________________________________________________"
				Escribir"__________________10000000000011__________________"
				Escribir"_______________10000000000000000001_______________"
				Escribir"_____________00000000000000000000000______________"
				Escribir"____________00000111000000001111100001____________"
				Escribir"__________10001_______10001_______10001___________"
				Escribir"_________1000__________11___________000___________"
				Escribir"_________0001_____$$$_______111______100__________"
				Escribir"_________000______888_______111______100__________"
				Escribir"________10001___________1___________10001_________"
				Escribir"________100001_________101_________100001_________"
				Escribir"________10000001_____1000001_____10000001_________"
				Escribir"_________0000000000000000000000000000000__________"
				Escribir"_________00000DRALPH0000000000000LORD100__________"
				Escribir"__________000000001____________100000001__________"
				Escribir"___________0000001______________1000001___________"
				Escribir"____________00000____10000001____00001____________"
				Escribir"_____________0000__100000000000_1001____111_______"
				Escribir"______1________0000000000000000001_____00000______"
				Escribir"_____00000________11000000000001____1000000011____"
				Escribir"_____00000001_____________________100000000000____"
				Escribir"____0000000000001______________100000000000001____"
				Escribir"____000000000000000011_____110000111______________"
				Escribir"_________________0100000000000011__1______________"
				Escribir"___________11_1100000001___1100000000000000001____"
				Escribir"____0000000000000001___________110000000000000____"
				Escribir"____00000000000011_________________110000000011___"
				Escribir"_____000000001_________________________1000001____"
				Escribir"_____100001_______________________________1001____"
				Escribir"_______11_________________________________________"
				//le asignamos a elecion el valor 5 para que asi no nos de un error de bucle y finalizamos el juego
				eleccion = 5
				fin_del_juego = Verdadero
				
			FinSi
			
			si (lobo = cabra y barca <> lobo) //En este si lo que hacemos es comparar las diferentes variables y asignarles el mensaje indicado en la situacion en la que el lobo se queda con la cabra y el barco esta en otra orilla.
				Escribir "L A  C A B R A   F U E  I N G E R I D A  P O R   E L  L O B O ,  L O   L A M E N T O   H A S   P E R D I D O"
				//en este dibujo asci y los demas, a parte de buscarlos hemos tenido que borrar todos los caracteres que daban error y a parte en cada linea escribir "ESCRIBIR" comillas, a parte de comprobar que se veia bien etc...
				Escribir"__________________________________________________"
				Escribir"__________________10000000000011__________________"
				Escribir"_______________10000000000000000001_______________"
				Escribir"_____________00000000000000000000000______________"
				Escribir"____________00000111000000001111100001____________"
				Escribir"__________10001_______10001_______10001___________"
				Escribir"_________1000__________11___________000___________"
				Escribir"_________0001_____$$$_______111______100__________"
				Escribir"_________000______888_______111______100__________"
				Escribir"________10001___________1___________10001_________"
				Escribir"________100001_________101_________100001_________"
				Escribir"________10000001_____1000001_____10000001_________"
				Escribir"_________0000000000000000000000000000000__________"
				Escribir"_________00000DRALPH0000000000000LORD100__________"
				Escribir"__________000000001____________100000001__________"
				Escribir"___________0000001______________1000001___________"
				Escribir"____________00000____10000001____00001____________"
				Escribir"_____________0000__100000000000_1001____111_______"
				Escribir"______1________0000000000000000001_____00000______"
				Escribir"_____00000________11000000000001____1000000011____"
				Escribir"_____00000001_____________________100000000000____"
				Escribir"____0000000000001______________100000000000001____"
				Escribir"____000000000000000011_____110000111______________"
				Escribir"_________________0100000000000011__1______________"
				Escribir"___________11_1100000001___1100000000000000001____"
				Escribir"____0000000000000001___________110000000000000____"
				Escribir"____00000000000011_________________110000000011___"
				Escribir"_____000000001_________________________1000001____"
				Escribir"_____100001_______________________________1001____"
				Escribir"_______11_________________________________________"
				//le asignamos a elecion el valor 5 para que asi no nos de un error de bucle y finalizamos el juego
				eleccion = 5
				fin_del_juego = Verdadero
			FinSi
		finsi
		
		
		
		si lobo = cabra y cabra = lechuga y lechuga = 2 //En este si lo que hacemos es comparar las diferentes variables y asignarles el mensaje indicado en la situacion , en este has conseguido ganar.
			Entonces
			Escribir "¡¡¡E N H O R A B U E N A ,  H A S   R E S U E L T O   E L   A C E R T I J O    D E L   B A R Q U E R O!!!"
			escribir"________$$$$$"
			escribir"_______$$_____$"
			escribir"_______$______$$"
			escribir"_______$______$$"
			escribir"_______$$______$$"
			escribir"________$_______$$"
			escribir"________$$______$$$"
			escribir"_________$$_____$$"
			escribir"_________$$______$$"
			escribir"__________$_______$$"
			escribir"____$LORD1$$__________$$"
			escribir"__$$$________________$$$$$$"
			escribir"_$$______$$$$____________$$"
			escribir"_$____$$$____$$$____________$$"
			escribir"_$$__________$$$____________$"
			escribir"__$$_____$$$$$$_____________$"
			escribir"__$DRALPH$$_____$$___________$"
			escribir"__$$________$$$$____________$"
			escribir"___$$$$$$$$$___$$__________$$"
			escribir"____$_________$$$$______$$$$"
			escribir"____$$_____$$$$$$_____$$$$$"
			escribir"_____$$$$$$_____$$____$$"
			escribir"_______$______$$$__$$$"
			escribir"________$$$$$$$$$$"
			//le asignamos a elecion el valor 5 para que asi no nos de un error de bucle y finalizamos el juego

			fin_del_juego = Verdadero
		FinSi
	Hasta Que fin_del_juego = Verdadero
	
	
	
		
	

FinAlgoritmo