DROP DATABASE IF EXISTS AGENCIA;
CREATE DATABASE AGENCIA CHARSET=utf8mb4 COLLATE utf8mb4_bin;
USE AGENCIA;

CREATE TABLE Turistas(
	id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    CONSTRAINT pk_hotel PRIMARY KEY(id)
    );

CREATE TABLE Hoteles(
	id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad VARCHAR(25) NOT NULL,
    plazas INT  NOT NULL,
    telefono VARCHAR(9) NOT NULL,
    CONSTRAINT pk_hotel PRIMARY KEY(id)
    );
    
CREATE TABLE Reservas(
	id_turista INT,
    id_hotel INT,
    fecha_entrada DATETIME NOT NULL,
    fecha_salida DATETIME NOT NULL,
    regimen ENUM("MP","PC") NOT NULL,
    CONSTRAINT pk_reserva PRIMARY KEY(id_turista,id_hotel),
    CONSTRAINT fk_reserva1 FOREIGN KEY(id_turista) REFERENCES Turistas(id),
    CONSTRAINT fk_reserva2 FOREIGN KEY(id_hotel) REFERENCES Hoteles(id)
    );