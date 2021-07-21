/*Uso de WHERE en una consulta*/

/*Utilizamos WHERE para filtrar los datos que queremos*/

/*Podemos filtrar los datos por nombre, apellido, edad, o por cualquier otro campo*/
SELECT nombre, email FROM usuarios WHERE id =4;

SELECT * FROM usuarios WHERE email = "felipemaquedag@gmail.com";


/*Si utilizamos el operador de comparación = indicamos que buscamos todos los valores que coincidan con el valor declarado*/
SELECT * FROM usuarios WHERE nombre = "Felipe";

/*Si utilizamos el operador de comparación != indicamos que buscamos todos los valores que no coincidan con el valor declarado*/
SELECT * FROM usuarios WHERE nombre != 'Felipe';


/* Operadores de comparación*/


/*Los operadores de comparación nos sirven para filtrar los datos que cumplan con una condición*/

/*
Igualdad:           =
Distintion:         <>
Menor que:          <
Menor o igual que:  <=
Mayor que:          >
Mayor o igual que:  >=
Entre:              BETWEEN A and B
No entre:           NOT BETWEEN A and B
En:                 IN
No en:              NOT IN
Es nulo:            IS NULL
No es nulo:         IS NOT NULL
Como:               LIKE
No es Como:         NOT LIKE
*/

/*Si queremos consultar a los usuarios de un año específico, utilizamos YEAR(fecha)*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021';

/*Si agregamos el operador de compración OR, nos dará el resultado de todos los valores que cumplan con la condición*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021' OR  YEAR(fecha) = '2021';

/*Con el operador de comparación >=, indicamos que buscamos todos los valores que sean mayor o igual que el valor declarado*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';

/*Si queremos especificar que un valor es nulo, utilizamos IS NULL*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2019' OR ISNULL (fecha);

/*EJEMPLO DE LOGIN*/

/*En el caso del login, agregamos los datos como nombre, apellido y contraseña, y utilizamos el operador de comparación =*/
SELECT nombre, apellidos FROM usuarios WHERE email = 'carlos@eduardo.com' AND password = '1234';


/*Usamos LIKE para filtrar los datos que cumplan con una condición*/
SELECT nombre, apellidos FROM usuarios WHERE nombre LIKE '%a%';

/*Ejemplos de consultas con LIKE/*

/*Sintaxis: SELECT * FROM usuarios WHERE nombre LIKE '%a%';*/

/*Utilizamos o% para indicar que el texto debe comenzar con el valor declarado*/
/*Utilizamos %o% para indicar que el elemento debe estar en cualquier lugar del texto*/
/*Utilizamos %o para indicar que el texto debe terminar con el valor declarado*/

SELECT * FROM usuarios WHERE nombre LIKE '%o'