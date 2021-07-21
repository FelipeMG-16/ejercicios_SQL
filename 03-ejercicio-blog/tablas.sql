/*Creamos la DB*/

CREATE SCHEMA blog_ejercicio;


/*Creamos la tabla de usuarios*/

CREATE TABLE    blog_ejercicio.usuarios (
    id          int AUTO_INCREMENT NOT NULL,
    nombre      varchar(100) NOT NULL,
    apellidos   varchar(100) NOT NULL,
    email       varchar(100) NOT NULL, 
    password    varchar(100) NOT NULL,
    fecha       date NOT NULL,
    CONSTRAINT  pk_usuarios PRIMARY KEY (id),
    CONSTRAINT  uq_email UNIQUE (email)
);


/*Creamos la tabla de categorias*/

CREATE TABLE    blog_ejercicio.categorias (
    id         int AUTO_INCREMENT NOT NULL,
    nombre      varchar(100) NOT NULL,
    CONSTRAINT  pk_categorias PRIMARY KEY (id)
);


/*Creamos la tabla de entradas*/

CREATE TABLE    blog_ejercicio.entradas (
    id              int AUTO_INCREMENT NOT NULL,
    usuario_id      int NOT NULL,
    categoria_id    int NOT NULL,
    titulo          varchar(100) NOT NULL,
    descripcion     text,
    fecha           date NOT NULL,
    CONSTRAINT      pk_entradas PRIMARY KEY (id),
    CONSTRAINT      fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT      fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);


/*Si agregamos todas las tablas, debemos crear primero las bases que no tienen llaves foráneas, ya que de lo contrario no se crearán las relaciones entre tablas*/
/*Debemos agregar los entradas en la tabla que corresponde, para posteriormente enlazarlos con las fk correspondientes*/
/*La sintaxis que usamos es la siguiente: CONSTRAINT fk_entrada_descripción FOREING KEY ("la entrada que agregamos con id") REFERENCES "la tabla de donde obtenemos los datos" (id)*/

