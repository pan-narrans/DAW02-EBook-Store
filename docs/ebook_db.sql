-- CREATE USER
DROP USER IF EXISTS "ebook-admin"@localhost;
CREATE USER "ebook-admin" @localhost IDENTIFIED BY "ebook";
GRANT ALL PRIVILEGES ON * . * TO "ebook-admin" @localhost;

-- CREATE DATABASE
DROP DATABASE IF EXISTS ebook;
CREATE DATABASE         ebook;
USE                     ebook;

-- CREATE TABLES
CREATE TABLE tipos(
  codigo INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50)
);

CREATE TABLE usuarios(
  id      INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(50),
  correo  VARCHAR(100) UNIQUE,
  tipo    INT,
  foto    VARCHAR(255)
);

CREATE TABLE passwords(
	id_usuario  INT PRIMARY KEY,
  password    VARCHAR(100)
);

CREATE TABLE datos(
  id_usuario        INT PRIMARY KEY,
  nombre            VARCHAR(30),
  apellidos         VARCHAR(30),
  genero            VARCHAR(100),
  fecha_nacimiento  DATE,
  direccion         VARCHAR(255),
  pais              VARCHAR(100),
  tarjeta           VARCHAR(20)
);

-- ADD FOREIGN KEYS
ALTER TABLE usuarios
	ADD CONSTRAINT UsuarioTiposId FOREIGN KEY (tipo) REFERENCES tipos (codigo)
  ON DELETE SET NULL;
    
ALTER TABLE passwords
	ADD CONSTRAINT PasswordUsuarioId FOREIGN KEY (id_usuario) REFERENCES usuarios (id)
  ON DELETE CASCADE;
    
ALTER TABLE datos
	ADD CONSTRAINT DatosUsuarioId FOREIGN KEY (id_usuario) REFERENCES usuarios (id)
  ON DELETE CASCADE;

-- INSERT MOCK DATA
INSERT INTO tipos (nombre) VALUES 
("Invitado"     ),
("Cliente"      ),
("Vendedor"     ),
("Administrador");

INSERT INTO usuarios (usuario, correo, tipo, foto) VALUES 
("Teresa",        "tere@ebook.es",  4, null),
("Kassito",       "pablo@gmail.es", 2, null),
("Pans_narrans",  "alex@gmail.es",  3, null),
("Izan",          "izan@gmail.es",  2, null);

INSERT INTO datos (id_usuario, nombre, apellidos, genero, fecha_nacimiento, direccion, pais, tarjeta) VALUES 
(1, "Teresa", "Vázquez",  "mujer",  "1990-07-22", "Calle escofina, 12",   "España", null),
(2, "Pablo",  "Casanova", "hombre", "1989-02-12", "Calle marfil, 45",     "España", null),
(3, "Alex",   "Pérez",    "hombre", "1995-11-23", "Calle manzana, 09",    "España", null),
(4, "Izan",   "Arraez",   "hombre", "2000-01-30", "Calle carpinteros, 81","España", null);

INSERT INTO passwords (id_usuario, password) VALUES 
(1, "cantimplora" ),
(2, "islander"    ),
(3, "tres"        ),
(4, "barbie2"     );