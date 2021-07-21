/* Insertar valores en una tabla*/

/*Para insertar valores en una tabla, utilizamos la sentencia INSERT INTO*/

/*La sintaxis de la sentencia INSERT INTO es la siguiente:*/
/*INSERT INTO tabla_nombre (columna1, columna2, columna3, columna4, columna5) VALUES (valor1, valor2, valor3, valor4, valor5);*/
/*Es importante destacar que el nombre de la tabla y los nombres de las columnas deben ser exactamente iguales, y que los valores deben estar en el mismo orden de la tabla.*/

INSERT INTO usuarios VALUES (NULL, 'Felipe', 'Maqueda Gonzalez', 'felipemaquedag@gmail.com', 'pass123', '2021-07-20');
INSERT INTO usuarios VALUES (NULL, 'Joaquín', 'Perez Hernandez', 'joaquin@perez.com', 'pass456', '2021-07-20');
INSERT INTO usuarios VALUES (NULL, 'Juan', 'Perez Pérez','juanp@perez.com', 'pass789', '2021-07-20');


/* Insertar datos en ciertas columnas*/

INSERT INTO usuarios(fecha, password, nombre, apellidos, email) VALUES ('2021-06-25', 'pass000', 'Roberto', 'Suarez', 'robert@suarez.com');