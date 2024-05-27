DROP DATABASE IF EXISTS ejecutivos;
CREATE DATABASE ejecutivos;
USE ejecutivos;
CREATE TABLE Despachos(
numero int,
capacidad int,
CONSTRAINT pk_despachos PRIMARY KEY (numero)
);

CREATE TABLE Directores(
DNI varchar(8),
nomapels nvarchar(255),
DNIJefe varchar(8),
despacho int,
CONSTRAINT pk_directores PRIMARY KEY (DNI),
CONSTRAINT fk_directores_directores FOREIGN KEY (DNIJefe) REFERENCES Directores(DNI),
CONSTRAINT fk_directores_despachos FOREIGN KEY (despacho) REFERENCES Despachos(numero)
);
