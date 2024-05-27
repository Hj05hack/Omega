DROP DATABASE IF EXISTS instituto;
CREATE DATABASE instituto CHARSET="UTF8" COLLATE utf8_bin;
USE instituto;
CREATE TABLE alunmnos9(
nif varchar(10),
nombre varchar(50),
apellidos varchar (50) NOT NULL,
movil VARCHAR(12),
provincia VARCHAR(100) DEFAULT 'Zaragoza',
fecha_nacimiento date,
CONSTRAINT pk_alumnos PRIMARY KEY(nif,nombre),
CONSTRAINT uk_alumnos UNIQUE KEY(movil)
);
