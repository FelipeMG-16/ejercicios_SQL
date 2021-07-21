/* Borrar registros */

/*Utilizamos DELETE FROM para eliminar registros de nuestra tabla*/
/*Para eliminar registros de una tabla, debemos especificar la tabla y los campos que queremos eliminar*/

/*En el sigueinte ejemplo, eliminamos el registro de la tabla clientes con el id=7*/
DELETE FROM usuarios WHERE id = 7;

/*Es importante que se agregue el WHERE para que el comando sea ejecutado, ya que de no hacerlo así, se ejecutaría el comando para todos los registros de la tabla*/

/*En el sigueinte ejemplo, se eliminan todos los registros de la tabla que contienen el nombre "Juan"*/
DELETE FROM usuarios WHERE nombre = 'Juan';