Funcion mayor5num
	//1.	Mayor de cinco números: Solicita tres números y determina cuál es el mayor de ellos.
	Definir num1, num2, num3 Como real
	num1=0; num2=0; num3=0;
	Escribir "Ingrese un primer numero"
	leer num1
	Escribir "Ingrese un segundo numero"
	leer num2
	Escribir "Ingrese un tercer numero"
	leer num3
	Si num1 >= num2 y num1 >= num3 Entonces
		Escribir num1, " es el mayor de los 3 numeros ingresados"
	SiNo
		Si num2 >= num1 y num2 >= num3 Entonces
			Escribir num2, " es el mayor de los 3 numeros ingresados"
		SiNo
			Escribir num3, " es el mayor de los 3 numeros ingresados"
		Fin Si
	Fin Si
FinFuncion

//2.	Edad mínima para votar: Pregunta la edad del usuario y verifica si es elegible para votar (18 años o más).
Funcion edadmin
	Definir edad Como Entero
	edad=0;
	Escribir "Ingrese su edad"
	leer edad
	Si edad >= 18 Entonces
		Escribir "Usted tiene la edad para votar"
	SiNo
		Escribir "Usted no tiene la edad para votar"
	Fin Si
FinFuncion

//3.	Dado dos números verificar si el primero es múltiplo del segundo
Funcion multi
	Definir n1, n2 Como Entero
	n1=0; n2=0;
	Escribir "Ingrese el numero a verificar"
	Leer n1
	Escribir "Ingrese el multiplo que desea evaluar"
	Leer n2
	Si n1 MOD n2 = 0 Entonces
		Escribir "El primer numero es multiplo del segundo"
	SiNo
		Escribir "El primer numero no es multiplo del segundo"
	Fin Si
FinFuncion

//4.	Número positivo, negativo o cero: Pide al usuario que ingrese un número y muestra si es positivo, negativo o cero.
Funcion posneg_cero
	Definir num Como Real
	num = 0;
	Escribir "Ingrese un numero"
	Leer num
	Si num < 0 Entonces
		Escribir num, " es negativo"
	SiNo
		Si num = 0 Entonces
			Escribir "El numero es cero"
		SiNo
			Escribir num, " es positivo"
		Fin Si
	Fin Si
FinFuncion

//5.	Año bisiesto: Solicita al usuario un año y determina si es un año bisiesto o no. Un año bisiesto es divisible por 4, pero no por 100, a menos que también sea divisible por 400.
Funcion año_bi
	Definir año Como Entero
	año = 0;
	Escribir "Ingrese un año"
	Leer año
	Si año MOD 4 = 0 Y año MOD 100 <> 0 O año MOD 400 = 0 Entonces
		Escribir año, " es un año bisiesto"
	SiNo
		Escribir año, " no es un año bisiesto"
	Fin Si
FinFuncion

//6.	Pide al usuario que ingrese su mes y día de nacimiento, luego determina su signo zodiacal. Puedes usar una serie de declaraciones if para comparar las fechas ingresadas con las fechas límite de cada signo zodiacal.
Funcion zodiacal
	Definir mes, signo_zod Como Caracter
	Definir dia Como Entero
	mes=' '; signo_zod=' '; dia=0;
    Escribir "Ingrese su dia de nacimiento"
	leer dia
	Escribir "Ingrese su mes de nacimiento"
	leer mes
	mes<-Minusculas(mes)
	Si mes = 'marzo' Y dia >= 21 Y dia <= 31 O mes = 'abril' Y dia <= 19 Y dia >= 1 Entonces
		signo_zod = 'Aries'
	SiNo
		Si mes = 'abril' Y dia >= 20 Y dia <= 31 O mes = 'mayo' Y dia <= 20 Y dia >= 1 Entonces
			signo_zod = 'Tauro'
		SiNo
			Si mes = 'mayo' Y dia >= 21 Y dia <= 31 O mes = 'junio' Y dia <= 20 Y dia >= 1 Entonces
				signo_zod = 'Geminis'
			SiNo
				Si mes = 'junio' Y dia >= 21 Y dia <= 31 O mes = 'julio' Y dia <= 22 Y dia >= 1 Entonces
					signo_zod = 'Cancer'
				SiNo
					Si mes = 'julio' Y dia >= 23 Y dia <= 31 O mes = 'agosto' Y dia <= 22 Y dia >= 1 Entonces
						signo_zod = 'Leo'
					SiNo
						Si mes = 'agosto' Y dia >= 23 Y dia <= 31 O mes = 'septiembre' Y dia <= 22 Y dia >= 1 Entonces
							signo_zod = 'Virgo'
						SiNo
							Si mes = 'septiembre' Y dia >= 23 Y dia <= 31 O mes = 'octubre' Y dia <= 22 Y dia >= 1 Entonces
								signo_zod = 'Libra'
							SiNo
								Si mes = 'octubre' Y dia >= 23 Y dia <= 31 O mes = 'noviembre' Y dia <= 21 Y dia >= 1 Entonces
									signo_zod = 'Escorpio'
								SiNo
									Si mes = 'noviembre' Y dia >= 22 Y dia <= 31 O mes = 'diciembre' Y dia <= 21 Y dia >= 1 Entonces
										signo_zod = 'Sagitario'
									SiNo
										Si mes = 'diciembre' Y dia >= 22 Y dia <= 31 O mes = 'enero' Y dia <= 19 Y dia >= 1 Entonces
											signo_zod = 'Capricornio'
										SiNo
											Si mes = 'enero' Y dia >= 20 Y dia <= 31 O mes = 'febrero' Y dia <= 18 Y dia >= 1 Entonces
												signo_zod = 'Acuario'
											SiNo
												Si mes = 'febrero' Y dia >= 19 Y dia <= 29 O mes = 'marzo' Y dia <= 20 Y dia >= 1 Entonces
													signo_zod = 'Piscis'
												SiNo
													Escribir "El caracter ingresado no es valido"
												Fin Si
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	Escribir "Su signo es ", signo_zod
FinFuncion

//7.	Solicita al usuario que ingrese un número de día del mes (por ejemplo, del 1 al 31) y verifica si ese día pertenece a la primera quincena (días 1-15) o a la segunda quincena (días 16-31). 
Funcion quincenas
	Definir n_d_m Como Entero
	n_d_m = 0;
	Escribir "Ingrese un numero de dia del mes (1-31)"
	leer n_d_m
	Si n_d_m >= 1 Y n_d_m <= 15 Entonces
		Escribir n_d_m, " pertenece a la primera quincena"
	SiNo
		Si n_d_m >= 16 Y n_d_m <= 31 Entonces
			Escribir n_d_m, " pertenece a la segunda quincena"
		SiNo
			Escribir "El numero ingresado no es valido"
		Fin Si
	Fin Si
FinFuncion

//8.	Día de la semana: Pide al usuario que ingrese un número del 1 al 7, donde 1 representa el domingo, 2 el lunes, 3 el martes, y así sucesivamente. mostrar el nombre del día de la semana correspondiente al número ingresado.
Funcion dia_semana
	Definir num Como Entero
	Escribir "Ingrese un numero del 1 al 7"
	Leer num
	Si num = 1 Entonces
		Escribir "Domingo"
	SiNo
		Si num = 2 Entonces
			Escribir "Lunes"
		SiNo
			Si num = 3 Entonces
				Escribir "Martes"
			SiNo
				Si num = 4 Entonces
					Escribir "Miercoles"
				SiNo
					Si num = 5 Entonces
						Escribir "Jueves"
					SiNo
						Si num = 6 Entonces
							Escribir "Viernes"
						SiNo
							Si num = 7 Entonces
								Escribir "Sabado"
							SiNo
								Escribir "El numero ingresado no es valido"
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion

//9.	Calculadora de precio con descuento: Crea un programa que permita a un usuario ingresar el precio de un artículo y un porcentaje de descuento. El programa debe calcular y mostrar el precio final después del descuento aplicando el 15% del IVA
Funcion prec_des
	Definir prec_ar, porcen, des, prec_f Como Real
	Escribir "Ingrese el precio del articulo"
	leer prec_ar
	Escribir "Ingrese un porcentaje de descuento"
	leer porcen
	des = prec_ar -(porcen/100)
	Escribir "Su descuento es del ", des
	prec_f = des + (des * 0.15)
    Escribir "El precio final a pagar es: ", prec_f
FinFuncion

//10.	Calculadora de sueldo con aumento: Pide al usuario que ingrese su salario actual y el porcentaje de aumento que recibirá. Calcula y muestra el nuevo salario después del aumento.
Funcion aumento
	Definir nuev_sal, s_a, aumen, porcen Como Real
	nuev_sal=0; s_a=0; aumen=0; porcen=0;
	Escribir "Ingrese su salario actual"
	leer s_a
	Escribir "Ingrese el porcentaje de aumento que va a recibir"
	leer porcen
	aumen = s_a * (porcen/100)
	nuev_sal = s_a + aumen
	Escribir "Su nuevo salario es de: ", nuev_sal
FinFuncion

//11.	Calculadora de compra con múltiples artículos: Permite al usuario ingresar el precio y la cantidad de varios artículos que está comprando. Calcula el total de la compra y aplica un descuento del 10% si el total es mayor a $100.
Funcion compra
	Definir prec, tot_c, tot, des Como Real
	Definir c_ar Como Entero
	Definir continuar Como Caracter
	prec=0; tot=0; des=0; c_ar=0; tot_c=0; continuar=' ';
	Repetir
		Escribir "Ingrese el precio del articulo"
		leer prec
		Escribir "Ingrese la cantidad de los articulos"
		leer c_ar
		tot_c = tot_c + (prec * c_ar)
		Escribir "¿Desea ingresar otro articulo? (si/no)"
		leer continuar
	Hasta Que continuar = "no"
	Si tot_c > 100 Entonces
		Escribir "Se aplica un descuento del 10%"
		des = tot_c * 0.10
		tot = tot_c - des
		Escribir "su total de compra es: ", tot
	SiNo
		Escribir "No se aplica ningun descuento"
		Escribir "Su total de compra es: ", tot_c
	Fin Si
FinFuncion

//12.	Calculadora de impuestos sobre el salario: Solicita al usuario que ingrese su salario anual y calcula el impuesto sobre la renta según las siguientes tasas: Hasta $10,000: 5% De $10,001 a $20,000: 10%;  más de $20,000: 15%
Funcion impu_sal
	Definir sal_anual, impu Como Real
	sal_anual=0; impu=0;
	Escribir "Ingrese su salario anual"
	leer sal_anual
	Si sal_anual <= 10000  Entonces
		Escribir "El impuesto sobre la renta es de 5%"
		impu = sal_anual * 0.05
	SiNo
		Si sal_anual <= 20000  Entonces
			Escribir "El impuesto sobre la renta es de 10%"
			impu = 10000 * 0.05 + (sal_anual - 10000) * 0.10
		SiNo
			impu = 10000 * 0.05 + 10000 * 0.10 + (sal_anual - 20000) * 0.15
		Fin Si
	Fin Si
	Escribir "El impuesto es: ", impu
FinFuncion

//13.	Pregunta al usuario cuántos años ha estado trabajando en una empresa y calcula su bono de antigüedad. Si ha trabajado más de 5 años, otorga un bono del 5% sobre su salario.
funcion Anti
	definir tt Como Entero
	definir bn, sal Como Real
	tt=0; bn=0; sal=0; 
	Escribir "Ingrese sus años de trabajo"
	leer tt
	Escribir "Ingrese su salario actual"
	leer sal
	Si tt > 5 Entonces
		Escribir "Se le otorga un bono del 5%"
		bn = sal * 0.05
		Escribir "Su bono de antiguedad es: ", bn
	SiNo
		Escribir "No se le otorga ningun bono"
	Fin Si
FinFuncion

//14.	Crea un programa que permita al usuario ingresar la distancia de envío y calcule el costo del envío. Si la distancia es inferior a 50 km, el costo es de $10. Si la distancia es de 50 km o más, el costo es de $20.
funcion distancia 
	definir dist_e, cost_e, dist_i Como Real
	dist_e = 0 ; cost_e = 0; dist_i = 0 ;
	Escribir "Ingrese la distancia de envio"
	leer dist_e
	Si dist_e >= 50 Entonces
		cost_e = 20 
		Escribir "El costo es de 20 "
	SiNo
		Escribir "El costo es de 10 "
		cost_e =10 
	Fin Si
FinFuncion

//15.	Pide al usuario que ingrese el total de sus compras mensuales durante un año. Si el total es superior a $500, aplica un descuento del 20%. Al final se debe aplicar el IVA del 15%.
Funcion compras
	definir total_m,descu,IVA,total_a, tl , t_des Como Real
	total_m = 0 ; descu = 0 ; IVA = 0 ; total_a = 0 ; tl = 0 ; t_des=0;
	Escribir " Ingrese el total mensual "
	leer total_m
	total_a = total_m * 12
	Si total_a > 500 Entonces
		Escribir  "Se le aplica un descuento del 20 % "
		descu = total_a * 0.20
		t_des = total_a - descu
	SiNo
		Escribir " No se le aplica ningun descuento "
	FinSi
	Escribir "Se aplica el IVA del 15%"
	IVA = t_des * 0.15
	tl = t_des + IVA
	Escribir "El total de su compra es ", tl
FinFuncion

//16.	Permite al usuario ingresar la cantidad de unidades de un producto que va a comprar y el precio unitario. Aplica descuentos por volumen de compra según las siguientes reglas:
//20-40 unidades: 15% de descuento
//41-90 unidades: 20% de descuento
//Más de 90 unidades: 25% de descuento
//	Al costo total debe aplicar el 15% de impuestos

funcion producto 
	Definir cant_prod, pre_uni, total_compra, valor_final, descuento, sub_total,IVA como real
	cant_prod=0; pre_uni=0; total_compra=0; valor_final=0; sub_total=0; descuento=0; IVA=0;
	Escribir "Ingrese la cantidad del producto: "
	leer cant_prod
	Escribir "Ingrese el precio del producto: "
	leer pre_uni
	total_compra = cant_prod * pre_uni
	Escribir "Su total de compra es: ", total_compra
	Si cant_prod > 20 Y cant_prod < 40 Entonces
		descuento<-total_compra *0.15
		Escribir "Su descuento del 15% es: ", descuento
	SiNo
		Si cant_prod > 41 Y cant_prod < 90 Entonces
			descuento<-total_compra*0.20
			Escribir "Su descuento del 20% es: ", descuento
		SiNo
			Si cant_prod > 90 Entonces
				descuento<-total_compra*0.25
				Escribir "Su descuento del 25% es: ", descuento
			SiNo
			FinSi
		Fin Si
	Fin Si
	sub_total = (pre_uni * cant_prod) - descuento
	Escribir "Su subtotal es: ", sub_total
	IVA = sub_total * 0.15
	Escribir "El valor del IVA es: ", IVA
	valor_final = sub_total + IVA
	Escribir "El valor final a pagar es: ", valor_final
FinFuncion

//17.	Pregunta al usuario cuántas horas de servicio necesita y calcula el costo total. Si las horas son más de 10, aplica un descuento del 20%.
Funcion Horas
	definir horas_ser Como Entero
	Definir cost_t,desc Como Real
	horas_ser = 0 ; cost_t = 0 ; desc = 0 ;
	Escribir " Ingrese horas de servicios "
	leer horas_ser
	Si horas_ser > 10 Entonces
		cost_t = horas_ser * 0.20
		Escribir " Se le aplica un descuento del 20 % "
		Escribir " El costo total es " , cost_t
	SiNo
		Escribir " No se le aplica descuento "
	Fin Si
FinFuncion

//18.	"XYZ" es una empresa dedicada a ofrecer  banquetes; sus tarifas son las siguientes: El costo de platillo por persona es de $95.00,  pero si el número de personas es mayor a 200  pero menor o igual a 300, el costo es de $85.00.  Para más de 300 personas el costo por platillo es  de $75.00.
//			Se requiere un algoritmo que ayude a determinar  el presupuesto que se debe presentar a los  clientes que deseen realizar un evento aplicando un descuento del 205% con un IVA final del 15%
Funcion XYZ
	Definir c_p, des, IVA, sub, tot Como Real
	Definir n_p Como Entero
	c_p =0; des =0; IVA =0; sub =0; tot =0; n_p=0;
	Escribir "Ingrese el numero de personas que ingresaran al banquete"
	leer n_p
	Si n_p > 200 Y n_p <= 300  Entonces
		Escribir "El costo por platillo es de $85.00"
		c_p = 85
	SiNo
		Si n_p > 300 Entonces
			Escribir "El costo por platillo es de $75.00"
			c_p = 75
		SiNo
			Escribir "El costo de platillo por persona es de $95.00"
			c_p = 95
		Fin Si
	Fin Si
	sub = n_p * c_p
	des = sub * 0.205
	IVA = (sub - des) * 0.15
	tot = sub - des + IVA
	Escribir "Su presupuesto es: ", tot
FinFuncion

//19.	La asociación de vinicultores tiene como política fijar un  precio inicial al kilo de uva, la cual se clasifica en tipos A y B,  y además en tamaños 1 y 2. Cuando se realiza la venta del  producto, ésta es de un solo tipo y tamaño, se requiere  determinar cuánto recibirá un productor por la uva que  entrega en un embarque, considerando lo siguiente:
//	Si es de tipo A, se le cargan $20 al precio inicial cuando es  de tamaño 1; y $30 si es de tamaño 2.
//	Si es de tipo B, se rebajan $30 cuando es de tamaño 1, y  50 cuando es de tamaño 2.
//	Realice un algoritmo para determinar la ganancia obtenida considerando un iva del 15%
Funcion Kilo
	definir prec_i, Iva , prec_f, ganancia Como real 
	Definir tipos Como Caracter
	definir cant_produc, tamaño como entero 
	prec_i = 0 ; cant_produc = 0 ; Iva = 0 ; prec_f = 0 ; ganancia = 0 ;tipos = " A " ; tipos = " B " ; tamaño1 = 0 ; tamaño2 = 0 ;
	Escribir " Ingrese el precio Inicial "
	leer prec_i
	Escribir  " Ingrese la cantidad del producto "
	Leer cant_produc
	Escribir " Ingrese el tipo A o B "
	leer tipos
	Escribir " Ingrese tamaño 1 o 2 "
	leer tamaño 
	Si tipo = " A " Entonces
		Si tamaño = 1 Entonces
			prec_f = prec_i + 20 
		SiNo
			prec_f = prec_i + 30
		Fin Si
	SiNo
		Si tamaño = 1 Entonces
			prec_f = prec_i - 30
		SiNo
		    prec_f = prec_i - 50
			Escribir  "El caracter ingresado no es valido " 
		Fin Si
	Fin Si
	ganancia = cant_p * prec_f
	Iva = ganancia * 0.15
	ganancia = prec_f + Iva 
	Escribir " Esta es la ganancia obtenida con el Iva del 15 % es " , ganancia
FinFuncion

//20.	El director de una escuela está organizando un viaje de estudios, y requiere determinar cuánto debe cobrar a cada alumno y cuánto debe pagar a la compañía de viajes por el servicio. La forma de cobrar es la siguiente: si son 200 alumnos o más, el costo por cada alumno es de $20.00; de 100 a 199 alumnos, el costo es de $30.00, de 50 a 99, de $40.00, y si son menos de 50, el costo de la renta del autobús es de $50 y si son menos de 20 el costo es $2000, sin importar el número de alumnos.
//				Realice un algoritmo que permita determinar el pago a  la compañía de autobuses y lo que debe pagar cada  alumno por el viaje considerando un descuento del 10% adicional
Funcion viaje_estu
	Definir n_a Como Entero
	Definir cos_a, pago, viaje Como Real
	n_a=0; cos_a=0; pago=0; viaje=0;
	Escribir "Ingrese la cantidad de alumnos que viajaran"
	leer n_a
	Si n_a >= 200 Entonces
		Escribir "El costo por cada alumno es de $20.00"
		cos_a=20
	SiNo
		Si n_a >= 100 Y n_a <= 199  Entonces
			Escribir "El costo por cada alumno es de $30.00"
			cos_a=30
		SiNo
			Si n_a >= 50 Y n_a <= 99 Entonces
				Escribir "El costo por cada alumno es de $40.00"
				cos_a=40
			SiNo
				Si n_a >= 20 Y n_a < 50  Entonces
					Escribir "El costo por cada alumno es de $50.00"
					cos_a=50
				SiNo
					Escribir "El costo por cada alumno es de $20.00 sin importar el numero de alumnos"
					cos_a=20
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	viaje=n_a * cos_a
	des= viaje * 0.10
	pago= viaje - des
	Escribir "El pago a la compañia es de: ", pago
FinFuncion

//21.	Una compañía de viajes cuenta con tres tipos de autobuses (A, B y C), cada uno tiene un precio por kilómetro recorrido por persona, los costos respectivos son $2.0, $2.5 y $3.0.
//Se requiere determinar el costo total y por persona del viaje considerando que cuando éste se presupuesta debe haber un mínimo de 20 personas, de lo contrario el cobro se realiza con base en este número límite. Al final aplica el IVA del 15%.
Funcion buses
	Definir tipo_autobus Como Caracter
    Definir km_recorridos, costo_km, personas, costo_total, costo_por_persona, costo_final Como Real
    IVA = 0.15
    MIN_PERSONAS = 20
	
    Escribir "Ingrese el tipo de autobús (A, B o C): "
    Leer tipo_autobus
    Escribir "Ingrese la cantidad de kilómetros recorridos: "
    Leer km_recorridos
    Escribir "Ingrese la cantidad de personas: "
    Leer personas
	Segun tipo_autobus Hacer
		caso "A":
			costo_km = 2.0
		Caso "B":
			costo_km = 2.5
		Caso "C":
			costo_km = 3.0
		De Otro Modo:
			Escribir "Tipo de autobus no valido"
	FinSegun
	
	Si personas < MIN_PERSONAS Entonces
		personas = MIN_PERSONAS
	FinSi
	
	costo_total = km_recorridos * costo_km * personas
	costo_por_persona = costo_total / personas
	
	costo_final = costo_total + (costo_total * IVA)
	
	Escribir "Costo total antes del IVA: $", costo_total
	Escribir "Costo total con IVA: $", costo_final
	Escribir "Costo por persona: $", costo_por_persona

FinFuncion

//22.	Dado un carácter indicar si es una letra del alfabeto
Funcion ca_ter
	Definir car Como Caracter
	car=' ';
	Escribir "Ingrese un caracter a - z"
	leer car
	Si  (car >= "A" Y car <= "Z") O (car >= "a" Y car <= "z")
		Entonces
		Escribir car," es una letra del alfabeto"
	SiNo
		Escribir "El caracter ingresado no es valido"
	Fin Si
FinFuncion

//23.	Dado un carácter muestre si es una vocal o es un digito o es un símbolo de puntuación (".", ",",";",":") o un espacio (" ")
Funcion carac_ter
	Definir carac Como Caracter
	carac=' ';
	Escribir "Ingrese un caracter"
	leer carac
	Si carac='a' O carac='e' O carac='i' O carac='o' O carac='u' O carac='A' O carac='E' O carac='I' O carac='O' O carac='U' 
		Entonces
		Escribir carac," es una vocal"
	SiNo
		Si carac=' ' Entonces
			Escribir carac, " es un espacio"
		SiNo
			Si carac='1' O carac='2' O carac='3' O carac='4' O carac='5' O carac='6' O carac='7' O carac='8' O carac='9' O carac='0' Entonces
				Escribir carac," es un digito"
			SiNo
				Si carac='.' O carac=',' O carac=';' O carac=':' Entonces
					Escribir carac, " es un simbolo de puntuacion"
				SiNo
					Escribir "El caracter ingresado no es valido"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion

//24.	Dada dos caracteres indicar si son iguales, o si el primer carácter es menor o mayor que el segundo
Funcion carac_teres
	Definir c1, c2 Como Caracter
	c1=' '; c2=' ';
	Escribir "Ingrese un caracter"
	leer c1
	Escribir "Ingrese otro caracter"
	leer c2
	Si c1=c2 Entonces
		Escribir c1, " y ", c2, " son iguales"
	SiNo
		Si c1>c2 Entonces
			Escribir "El primer caracter es mayor que el segundo"
		SiNo
			Escribir "El primer caracter es menor que el segundo"
		Fin Si
	Fin Si
FinFuncion

//25.	Dada dos frases indicar si son iguales, o si la primera es menor o mayor que la segunda
Funcion frases
	Definir f1, f2 Como Caracter
	f1=' '; f2=' ';
	Escribir "Ingrese una frase"
	leer f1
	Escribir "Ingrese otro nombre"
	leer f2
	Si f1=f2 Entonces
		Escribir f1, " y ", f2, " son frases iguales"
	SiNo
		Si f1>f2 Entonces
			Escribir "La primera frase es mayor que la segunda"
		SiNo
			Escribir "La primera frase es menor que la segunda"
		Fin Si
	Fin Si
FinFuncion


Algoritmo Ejercicios25
	Definir op Como Caracter
	op=" "
	Escribir "Menu"
	Escribir "1.Ejercicio1"
	Escribir "2. Ejercicio2"
	Escribir "3. Ejercicio3"
	Escribir "4.Ejercicio4"
	Escribir "5.Ejercicio5"
	Escribir "6.Ejercicio6"
	Escribir "7.Ejercicio7"
	Escribir "8.Ejercicio8"
	Escribir "9.Ejercicio9"
	Escribir "10.Ejercicio10"
	Escribir "11.Ejercicio11"
	Escribir "12.Ejercicio12"
	Escribir "13.Ejercicio13"
	Escribir "14.Ejercicio14"
	Escribir "15.Ejercicio15"
	Escribir "16.Ejercicio16"
	Escribir "17.Ejercicio17"
	Escribir "18.Ejercicio18"
	Escribir "19.Ejercicio19"
	Escribir "20.Ejercicio20"
	Escribir "21.Ejercicio21"
	Escribir "22.Ejercicio22"
	Escribir "23.Ejercicio23"
	Escribir "24.Ejercicio24"
	Escribir "25.Ejercicio25"
	Escribir "26. Salida"
	Escribir "Ingrese la opcion: "; Leer op
	Si op="1" Entonces
		mayor5num
	SiNo
		Si op="2" Entonces
			edadmin
		SiNo
			Si op="3" Entonces
				multi
			SiNo
				Si op="4" Entonces
					posneg_cero
				SiNo
					Si op="5" Entonces
						año_bi
					SiNo
						Si op="6" Entonces
							zodiacal
						SiNo
							Si op="7" Entonces
								quincenas
							SiNo
								Si op="8" Entonces
									dia_semana
								SiNo
									Si op="9" Entonces
										prec_des
									SiNo
										Si op="10" Entonces
											aumento
										SiNo
											Si op="11" Entonces
												compra
											SiNo
												Si op="12" Entonces
													impu_sal
												SiNo
													Si op="13" Entonces
														Anti
													SiNo
														Si op="14" Entonces
															distancia
														SiNo
															Si op="15" Entonces
																compras
															SiNo
																Si op="16" Entonces
																	producto
																SiNo
																	Si op="17" Entonces
																		Horas
																	SiNo
																		Si op="18" Entonces
																			XYZ
																		SiNo
																			Si op="19" Entonces
																				Kilo
																			SiNo
																				Si op="20" Entonces
																					viaje_estu
																				SiNo
																					Si op="21" Entonces
																						buses
																					SiNo
																						Si op="22" Entonces
																							ca_ter
																						SiNo
																							Si op="23" Entonces
																								carac_ter
																							SiNo
																								Si op="24" Entonces
																									carac_teres
																								SiNo
																									Si op="25" Entonces
																										frases
																									SiNo
																										Escribir "La opcion que ingreso es invalida :3"
																									Fin Si
																								Fin Si
																							Fin Si
																						Fin Si
																					Fin Si
																				Fin Si
																			Fin Si
																		Fin Si
																	Fin Si
																Fin Si
															Fin Si
														Fin Si
													Fin Si
												Fin Si
											Fin Si
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo