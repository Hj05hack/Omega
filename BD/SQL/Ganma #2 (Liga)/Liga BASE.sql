DROP DATABASE IF EXISTS liga;
CREATE DATABASE liga;
USE liga;

CREATE TABLE equipos (
	id_equipo int NOT NULL,
	nombre varchar(45) UNIQUE,
	ciudad varchar(45) NOT NULL,
	web varchar(250) DEFAULT 'sin web oficial',
	puntos int DEFAULT NULL,
	CONSTRAINT pk_equipos PRIMARY KEY (id_equipo)
) ;

CREATE TABLE jugadores (
	id_jugador int NOT NULL,
	nombre varchar(45) DEFAULT NULL,
	apellido varchar(45) DEFAULT NULL,
	puesto varchar(45) DEFAULT NULL,
	id_capitan int DEFAULT NULL,
	fecha_alta datetime DEFAULT NULL,
	salario int DEFAULT NULL,
	equipo int DEFAULT NULL,
	altura decimal(4,2) DEFAULT NULL,
	CONSTRAINT pk_jugadores PRIMARY KEY (id_jugador),
	CONSTRAINT fk_jugadores_equipo FOREIGN KEY (equipo) REFERENCES equipos (id_equipo) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE partidos (
	id_partido int NOT NULL AUTO_INCREMENT,
	elocal int NOT NULL,
	evisitante int NOT NULL,
	resultado varchar(45) DEFAULT NULL,
	fecha date DEFAULT NULL,
	arbitro varchar(45) DEFAULT NULL,
	CONSTRAINT pk_partidos PRIMARY KEY (id_partido),
	CONSTRAINT fk_partidos_equipos_local FOREIGN KEY (elocal) REFERENCES equipos (id_equipo) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_partidos_equipos_visitante FOREIGN KEY (evisitante) REFERENCES equipos (id_equipo) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO equipos VALUES (1,'Regal Barcelona','Barcelona','http://www.fcbarcelona.com/web/index_idiomes.html',10),(2,'Real Madrid','Madrid','http://www.realmadrid.com/cs/Satellite/es/1193040472450/SubhomeEquipo/Baloncesto.htm',9),(3,'P.E. Valencia','Valencia','http://www.valenciabasket.com/',11),(4,'Caja Laboral','Vitoria','http://www.baskonia.com/prehomes/prehomes.asp?id_prehome=69',22),(5,'Gran Canaria','Las Palmas','http://www.acb.com/club.php?id=CLA',14),(6,'CAI Zaragoza','Zaragoza','http://basketzaragoza.net/',23);
INSERT INTO jugadores VALUES (1,'Juan Carlos','Navarro','escolta',1,'2010-01-10 00:00:00',130000,1,'1.96'),(2,'Felipe','Reyes','Pivot',2,'2009-02-20 00:00:00',132000,2,'2.04'),(3,'Victor','Claver','Alero',3,'2009-03-08 00:00:00',99000,3,'2.08'),(4,'Rafa ','Martinez','ala-pivot',4,'2010-11-11 00:00:00',51000,3,'1.91'),(5,'Fernando','San Emeterio','Alero',6,'2008-09-22 00:00:00',60000,4,'1.99'),(6,'Mirza','Teletovic','Pivot',6,'2010-05-13 00:00:00',77000,4,'2.06'),(7,'Sergio ','Llull','Escolta',2,'2011-10-29 00:00:00',100000,2,'1.90'),(8,'Victor ','Sada','Base',1,'2012-01-01 00:00:00',80000,1,'1.92'),(9,'Carlos','Suarez','Alero',2,'2011-02-19 00:00:00',66000,2,'2.03'),(10,'Xavi ','Rey','Pivot',14,'2008-10-12 00:00:00',104500,5,'2.09'),(11,'Carlos ','Cabezas','Base',13,'2012-01-21 00:00:00',105000,6,'1.86'),(12,'Pablo ','Aguilar','Alero',13,'2011-06-14 00:00:00',51700,6,'2.03'),(13,'Rafa','Hettsheimeir','Pivot',13,'2008-04-15 00:00:00',58300,6,'2.08'),(14,'Sitapha','Savané','Pivot',14,'2011-07-27 00:00:00',66000,5,'2.01'),(15,'anonimo','anonimo','Ala-pivot',2,'2012-01-01 00:00:00',4000,3,'2.00'),(22,'j1',NULL,NULL,NULL,NULL,NULL,2,'2.00'),(23,'j2',NULL,NULL,NULL,NULL,NULL,2,NULL);
INSERT INTO partidos VALUES (1,1,2,'100-100','2011-10-10','4'),(2,2,3,'90-91','2011-11-17','5'),(3,3,4,'88-77','2011-11-23','6'),(4,1,6,'66-78','2011-11-30','6'),(5,2,4,'90-90','2012-01-12','7'),(6,4,5,'79-83','2012-01-19','3'),(7,3,6,'91-88','2012-02-22','3'),(8,5,4,'90-66','2012-04-27','2'),(9,6,5,'110-70','2012-05-30','1'),(10,3,5,'88-77','2011-09-01','2');