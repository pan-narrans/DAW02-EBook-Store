-- CREATE USER
DROP USER IF EXISTS "ebookadmin"@localhost;
CREATE USER "ebookadmin" @localhost IDENTIFIED BY "ebook";
GRANT ALL PRIVILEGES ON * . * TO "ebookadmin" @localhost;

-- CREATE DATABASE
DROP DATABASE IF EXISTS ebook;
CREATE DATABASE ebook;
USE ebook;

-- CREATE TABLES
CREATE TABLE tipos(
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(20),
    correo VARCHAR(100),
    tipo INT,
    foto VARCHAR(255)
);

CREATE TABLE passwords(
	id_usuario INT PRIMARY KEY,
    password VARCHAR(100)
);

CREATE TABLE datos(
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(30),
    apellido VARCHAR(30),
    genero VARCHAR(100),
    fecha_nacimiento DATE,
    direccion VARCHAR(255),
    pais VARCHAR(100),
    tarjeta VARCHAR(20)
);

-- ADD FOREIGN KEYS
ALTER TABLE usuarios
	ADD CONSTRAINT USUARIOTIPOSid FOREIGN KEY (tipo) REFERENCES tipos (codigo);
    
ALTER TABLE passwords
	ADD CONSTRAINT PASSWORDUSUARIOid FOREIGN KEY (id_usuario) REFERENCES usuarios (id);
    
ALTER TABLE datos
	ADD CONSTRAINT DATOSUSUARIOid FOREIGN KEY (id_usuario) REFERENCES usuarios (id);

-- INSERT MOCK DATA
INSERT INTO tipos(nombre) VALUES ("Invitado");
INSERT INTO tipos(nombre) VALUES ("Cliente");
INSERT INTO tipos(nombre) VALUES ("Vendedor");
INSERT INTO tipos(nombre) VALUES ("Administrador");

INSERT INTO usuarios(usuario, correo, tipo, foto) VALUES ("Teresa","tere@ebook.es",4,null);
INSERT INTO usuarios(usuario, correo, tipo, foto) VALUES ("Kassito","pablo@gmail.es",2,null);
INSERT INTO usuarios(usuario, correo, tipo, foto) VALUES ("Pans_narrans","alex@gmail.es",3,null);
INSERT INTO usuarios(usuario, correo, tipo, foto) VALUES ("Izan","izan@gmail.es",2,null);

INSERT INTO datos(id_usuario, nombre, apellido, genero, fecha_nacimiento, direccion, pais, tarjeta) VALUES (1,"Teresa","Vázquez","mujer","1990-07-22","Calle escofina, 12","España",null);
INSERT INTO datos(id_usuario, nombre, apellido, genero, fecha_nacimiento, direccion, pais, tarjeta) VALUES (2,"Pablo","Casanova","hombre","1989-02-12","Calle marfil, 45","España",null);
INSERT INTO datos(id_usuario, nombre, apellido, genero, fecha_nacimiento, direccion, pais, tarjeta) VALUES (3,"Alex","Pérez","hombre","1995-11-23","Calle manzana, 09","España",null);
INSERT INTO datos(id_usuario, nombre, apellido, genero, fecha_nacimiento, direccion, pais, tarjeta) VALUES (4,"Izan","Arraez","hombre","2000-01-30","Calle carpinteros, 81","España",null);

INSERT INTO passwords(id_usuario, password) VALUES (1,"cantimplora");
INSERT INTO passwords(id_usuario, password) VALUES (2,"islander");
INSERT INTO passwords(id_usuario, password) VALUES (3,"tres");
INSERT INTO passwords(id_usuario, password) VALUES (4,"barbie2");