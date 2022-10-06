--create database TorneosFIFA 

use TorneosFIFA

create table Pais (
	id_pais int not null primary key,
	nombre_pais VARCHAR(50) NOT NULL

	)	 


	 
create table Torneos (
	id_torneo INT PRIMARY KEY,
	id_pais	INT NOT NULL
	FOREIGN KEY (id_pais) REFERENCES Pais(id_pais),
	nombre_torneo VARCHAR(50) NOT NULL,
	sede VARCHAR(50) NOT NULL,
	fecha_inicio date,
	fecha_final date  
	)

	select * from Torneos

create table Equipo (
	id_equipo int not null primary key ,
	id_pais	INT NOT NULL
	FOREIGN KEY (id_pais) REFERENCES Pais(id_pais),
	id_torneo	INT NOT NULL
	FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
	)


create table Partidos( 
	id_partido int primary key not null,
	equipo_local int not null
	FOREIGN KEY (equipo_local) REFERENCES Equipo(id_equipo),
	equipo_visitante int not null
	FOREIGN KEY (equipo_visitante) REFERENCES Equipo(id_equipo),
	fecha date not null,
	hora time,
	gol_local int not null,
	gol_visitante int not null,
	sede varchar(50) not null,
	id_pais	INT NOT NULL
	FOREIGN KEY (id_pais) REFERENCES Pais(id_pais),
	id_torneo	INT NOT NULL
	FOREIGN KEY (id_torneo) REFERENCES Torneos(id_torneo),
	neutral bit not null

	)


DROP TABLE IF EXISTS TorneosFIFA.Partidos_Penales
create table Partidos_penales(
	id_partido	INT NOT NULL
	FOREIGN KEY (id_partido) REFERENCES Partidos(id_partido),
	penales_local int not null,
	penales_visitante int not null
	)

 


	