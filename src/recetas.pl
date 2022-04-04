

tipo_platillo().

tiempo_preparacion(nombrereceta1,30).
tiempo_preparacion(nombrereceta2,30).
tiempo_preparacion(nombrereceta3,30).
tiempo_preparacion(nombrereceta4,30).


horario(matutino,8,11,am).
horario(vespertino,12,8,pm).
horario(nocturno,8,11,pm).


gusto(salado,nombrereceta1).
gusto(dulce,nombrereceta2).
gusto(combinado,nombrereceta3).

tipo_dieta().

antojo().

receta(nombrereceta,[paso1,paso2],[ingredinte1,ingrediente2]).
receta(nombrereceta,[paso1,paso2],[ingredinte1,ingrediente2]).
receta(nombrereceta,[paso1,paso2],[ingredinte1,ingrediente2]).
receta(nombrereceta,[paso1,paso2],[ingredinte1,ingrediente2]).
receta(nombrereceta,[paso1,paso2],[ingredinte1,ingrediente2]).

//Reglas
evaluar_gusto(horario,tipodieta,antojo,gusto,tipoplatillo,tiempo,receta()).


/*Horario -> Matutino, vespertino, Nocturno

Dietas vegetarianas
Dietas para adelgazar

Pollo, carne de res, ensalada, 


Salado,Dulce, mezclado


Tipo de platillo: Entrante, Principal, Desayuno


Indica el tiempo que tienes disponible para su preparación*/