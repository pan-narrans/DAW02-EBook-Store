DROP USER IF EXISTS "ebookadmin"@localhost;
CREATE USER "ebookadmin" @localhost IDENTIFIED BY "ebook";
GRANT ALL PRIVILEGES ON * . * TO "ebookadmin" @localhost;

DROP DATABASE IF EXISTS ebook;
CREATE DATABASE ebook;
USE ebook;

CREATE TABLE tipos(
    codigo INT PRIMARY KEY,
    nombre VARCHAR(50)
);
CREATE TABLE usuarios(
    id INT PRIMARY KEY,
    usuario VARCHAR(20),
    correo VARCHAR(100),
    tipo INT,
    foto VARCHAR(255)
);
CREATE TABLE password(
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

ALTER TABLE usuarios
	ADD CONSTRAINT USUARIOTIPOSid FOREIGN KEY (tipo) REFERENCES tipos (codigo);
    
ALTER TABLE password
	ADD CONSTRAINT PASSWORDTIPOSid FOREIGN KEY (id_usuario) REFERENCES usuarios (id);
    
ALTER TABLE datos
	ADD CONSTRAINT DATOSTIPOSid FOREIGN KEY (id_usuario) REFERENCES usuarios (id);