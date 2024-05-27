DROP DATABASE IF EXISTS cine;
CREATE DATABASE cine;
USE cine;

CREATE TABLE Peliculas(
codigo int,
nombre_pelicula nvarchar(100),
calificacionedad int,
CONSTRAINT pk_peliculas PRIMARY KEY (codigo)
);
CREATE TABLE Salas(
codigo int,
nombre_sala nvarchar(100),
pelicula int,
CONSTRAINT pk_salas PRIMARY KEY (codigo),
CONSTRAINT fk_salas FOREIGN KEY (pelicula) REFERENCES Peliculas(codigo)
);