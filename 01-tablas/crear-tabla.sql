
/* Para crear una tabla, utilizamos la sentencia CREATE TABLE */

/*Las sentencias se escriben en mayúsculas*/
/*Varchar son variables de texto. Se utilizan para almacenar textos largos*/
/*El valor dentro del parentesis de varchar indica la cantidad máxima de caracteres*/
/*Not Null indica que el valor no puede ser nulo*/

CREATE TABLE usuarios (
    id          int AUTO_INCREMENT NOT NULL, /*Cada que se crea una tabla, se le asigna un id autoincrementable*/
    nombre      varchar(50) NOT NULL, /*Nombre del usuario*/
    apellidos   varchar(50) NOT NULL, /*Apellidos del usuario*/
    email       varchar(50) NOT NULL, /*Correo electrónico del usuario*/
    password    varchar(50) NOT NULL, /*Contraseña del usuario*/
    CONSTRAINT  pk_usuarios PRIMARY KEY (id) /*Constraint que indica que la llave primaria es id. Se usa p_k para indicar que es una llave primaria*/
);
