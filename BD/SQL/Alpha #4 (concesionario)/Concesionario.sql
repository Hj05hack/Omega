DROP DATABASE IF EXISTS CONCESIONARIO;
CREATE DATABASE CONCESIONARIO CHARSET utf8mb4;
USE CONCESIONARIO;

CREATE TABLE Cursos(
cod_curso varchar(10),
descripcion varchar(150) NOT NULL,
CONSTRAINT pk_cursos PRIMARY KEY (cod_curso)
);
    
CREATE TABLE Requisitos(
	curso varchar(10),
    requisito varchar(100),
    CONSTRAINT pk_requisitos PRIMARY KEY(curso,requisito) ,
    CONSTRAINT fk_requisitos_curso FOREIGN KEY(curso) REFERENCES Cursos (cod_curso)
    ON UPDATE CASCADE ON DELETE NO ACTION,
    CONSTRAINT fk_requisitos_requisito FOREIGN KEY(requisito) REFERENCES Cursos(cod_curso)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );
    
CREATE TABLE Estudios(
	cod_estudio int,
    curso varchar(10),
    empleado varchar(100) NOT NULL,
    calificacion int,
    CONSTRAINT pk_estudios PRIMARY KEY (cod_estudio),
    CONSTRAINT fk_estudios FOREIGN KEY (curso) REFERENCES Cursos(cod_curso)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );

CREATE TABLE Empleados(
	cod_empleado int,
    nombre varchar(100) NOT NULL,
    salario int NOT NULL,
    tipo varchar(50) NOT NULL,
    CONSTRAINT pk_empleados PRIMARY KEY(cod_empleado)
    );

CREATE TABLE Administrativos(
	cod_empleado int,
    n_pulsaciones int NOT NULL,
    CONSTRAINT pk_adminstrativos PRIMARY KEY (cod_empleado),
    CONSTRAINT fk_adminstrativos FOREIGN KEY (cod_empleado) REFERENCES Empleados(cod_empleado)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );

CREATE TABLE Comerciales(
	cod_empleado int,
    centro_estudios varchar(50) NULL DEFAULT NULL,
    vehículo varchar(100) NULL DEFAULT NULL,
    CONSTRAINT pk_comerciales PRIMARY KEY (cod_empleado),
    CONSTRAINT fk_comerciales FOREIGN KEY (cod_empleado) REFERENCES Empleados(cod_empleado)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );

CREATE TABLE Marcas(
	cod_marca varchar(100),
    nombre varchar(50) NOT NULL,
    CONSTRAINT pk_marcas PRIMARY KEY (cod_marca)
    );

CREATE TABLE Modelos(
	cod_modelo varchar(10),
    nombre varchar(50) NOT NULL,
    marca varchar(70) NOT NULL,
    CONSTRAINT pk_modelos PRIMARY KEY (cod_modelo),
    CONSTRAINT fk_modelos FOREIGN KEY(marca) REFERENCES Marcas(cod_marca)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );
    
CREATE TABLE Vehiculos(
	matricula varchar(7),
    modelo varchar(50) NOT NULL,
    kms int NOT NULL DEFAULT 0,
    CONSTRAINT pk_vehiculos PRIMARY KEY (matricula),
    CONSTRAINT fk_vehiculos FOREIGN KEY (modelo) REFERENCES Modelos(cod_modelo)
    ON UPDATE CASCADE ON DELETE NO ACTION
    );





    