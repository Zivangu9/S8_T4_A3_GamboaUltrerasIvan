%							Introducción
listar(L):- Cabeza = [1,1.1], Cola =[2,3,[3.1,3.2,3.3],4,5], L = [0,Cabeza|Cola].
/*
Ejemplo:
?- listar(L).
	L = [0, [1, 1.1], 2, 3, [3.1, 3.2, 3.3], 4, 5].
*/
dameCabeza([C|L],C).
/*
Ejemplos:
?- dameCabeza([1,2,3,4,5],Cabeza).
	Cabeza = 1.
?- dameCabeza([0,1,2,3,4,5],Cabeza).
	Cabeza = 0.
*/
dameCola([C|L],L).
/*
Ejemplos:
?- dameCola([1,2,3,4,5],Cola).
	Cola = [2, 3, 4, 5].
?- dameCola([0,1,2,3,4,5],Cola).
	Cola = [1,2, 3, 4, 5].
*/

%							Ejercicios

%Contar los elementos de una lista
cuenta_elementos([],0).
cuenta_elementos([_|Y],N):- cuenta_elementos(Y,M), N is M+1.
/*
Ejemplo:
?- cuenta_elementos([0,9,8,7,6,5,4,3,2,1],Elementos).
	Elementos = 10.
*/
%Sumar los elementos de una lista
sumar_elementos([],0).
sumar_elementos([E|Y],N):- sumar_elementos(Y,M), N is M+E.
/*
Ejemplo:
?- sumar_elementos([1,2,3,4,5,6,7,8,9],Suma).
	Suma = 45.
*/
%Los siguientes dos ejercicios no son resueltos en el video, pero voy a dar mi propia solucion
%Copiar uns lista
copia([],[]).
copia([C|L1],[C|L2]):-copia(L1,L2).
/*
Ejemplo:
?- copia([1,2,3,4,5,6,7,8,9],Copia).
	Copia = [1, 2, 3, 4, 5, 6, 7, 8, 9].
*/
%Concatenar 2 listas
concatena([],L,L).
concatena([C|L1],L,[C|L2]):-concatena(L1,L,L2).
/*
Ejemplo:
?- concatena([1,2,3,4,5],[7,8,9,10],L).
	L = [1, 2, 3, 4, 5, 7, 8, 9, 10].
*/