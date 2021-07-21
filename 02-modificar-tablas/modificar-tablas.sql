/*Renombrar una tabla*/
/*ALTER TABLE nos ayuda a modificar la tabla, la sintaxis es la siguiente: ALTER TABLE tabla_vieja RENAME TO tabla_nueva;*/
ALTER TABLE usuarios RENAME TO usuarios_renom;


/*Renombrar una columa*/
/*CHANGE nos ayuda a modificar la columna, la sintaxis es la siguiente: ALTER TABLE tabla_nueva CHANGE columna_vieja columna_nueva tipo_nuevo;*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(50) NULL;


/*Modificar una columna sin cambiar el nombre*/
/*MODIFY nos ayuda a modificar la columna sin cambiar el nombre,la sintaxis es la siguiente: ALTER TABLE tabla_nueva MODIFY COLUMN columna_nueva tipo_nuevo;*/
ALTER TABLE usuarios_renom MODIFY apellido CHAR(100) NOT NULL;


/*Añadir una columna*/
/*ADD nos ayuda a añadir una columna la sintaxis es la sigueinte: ALTER TABLE tabla_nueva ADD COLUMN columna_nueva tipo_nuevo;*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;


/*Añadir una restricción a una columna */
/*ADD CONSTRAINT nos ayuda a añadir una restricción a una columna, la sintaxis es la siguiente: ALTER TABLE tabla_nueva ADD CONSTRAINT nombre_restriccion tipo_restriccion columna_nueva;*/
/*La restricciónna a la columna email nos sirve para que no existan emails repetidos*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE (email);


/*Borrar una columna*/
/*DROP nos ayuda a borrar una columna, la sintaxis es la siguiente: ALTER TABLE tabla_nueva DROP COLUMN columna_nueva;*/
ALTER TABLE usuarios_renom DROP website;

