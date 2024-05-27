DROP DATABASE IF EXISTS repaso;
CREATE DATABASE repaso;
USE repaso;

CREATE TABLE Fabricantes(
codigo int,
nombre nvarchar(100),
CONSTRAINT pk_fabricantes PRIMARY KEY (codigo)
);

CREATE TABLE Articulos(
codigo int,
nombre nvarchar(100) NOT NULL,
precio int,
fabricante int,
CONSTRAINT pk_articulos PRIMARY KEY (codigo),
CONSTRAINT fk_articulos FOREIGN KEY (fabricante) REFERENCES Fabricantes(codigo)
);
USE repaso;