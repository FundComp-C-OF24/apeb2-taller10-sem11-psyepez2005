Algoritmo Problema01
	//Definir variables
	fil = 3
	col = 3
	pares = ""
	impares = ""

	Dimensionar matriz[fil,col]  
	llenarMatriz(matriz, fil, col)
	Para i=0 Hasta fil-1 Hacer
		Para j=0 Hasta col-1 Hacer
			Escribir (matriz[i,j]) , "   "Sin Saltar
		FinPara
		Escribir ""
	FinPara
	Escribir "Pares: ", separarPares(matriz, fil, col, pares)
	Escribir "Impares: ", separarImpares(matriz, fil, col, impares)
FinAlgoritmo



SubProceso llenarMatriz(matriz, fil, col)
	Para i=0 Hasta fil-1 Hacer
		Para j=0 Hasta col-1 Hacer
			matriz[i,j]=Aleatorio(1,10)
		FinPara
	FinPara
FinSubProceso



Funcion pares=separarPares(matriz, fil, col, pares)
	Para i=0 Hasta fil-1 Hacer
		Para j=0 Hasta col-1 Hacer
			Si (matriz[i,j] MOD 2)==(0)
				pares = concatenar(pares , ConvertirATexto((matriz[i,j]))) 
				pares = concatenar(pares," ")
			FinSi
		FinPara
	FinPara
FinFuncion


Funcion impares=separarImpares(matriz, fil, col, impares)
	Para i=0 Hasta fil-1 Hacer
		Para j=0 Hasta col-1 Hacer
			Si (matriz[i,j] MOD 2)<>(0)
				impares = concatenar(impares , ConvertirATexto((matriz[i,j]))) 
				impares = concatenar(impares," ")
			FinSi
		FinPara
	FinPara
FinFuncion