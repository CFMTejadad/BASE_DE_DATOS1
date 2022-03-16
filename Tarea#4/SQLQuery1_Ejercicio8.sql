



CREATE DATABASE Ejercicio8;

USE Ejercicio8;


/*Equipo*/
create table Equipo(
nombre_seleccion varchar(100) primary key not null,
nombre_dt varchar(100),
lugar_entranamineto varchar(100),
mimbro_equioTecnico varchar(100)
);

insert into Equipo values('Honduras','Bolio Gomez','Estadio Nacional',null);
insert into Equipo values('Costa Rica','Carlos Gomez','Estadio Nacional',null);

SELECT * FROM Equipo;

/*Jugador*/
create table Jugador(
numero_camiseta int primary key not null,
posicion varchar (100),
nyap varchar(100),
apodo varchar(100)
);

insert into Jugador values(10,'Delantero', null,'El Aquitecto');
insert into Jugador values(7,'Delantero', null,'La Pantera');


SELECT * FROM Jugador;


/*Partido*/
create table Partido(
id_partido int primary key not null identity (1,1),
instancia varchar (100),
duracion int,
fecha varchar(100)
);

insert into Partido values('Estadio Olimpico',90,'15/05/2021');
insert into Partido values('Estadio Juticalpa',90,'15/05/2021');

SELECT * FROM Partido;

/*Equipo_Partido*/
create table Equipo_Partido(
id int primary key not null identity (1,1),
nombre_seleccion varchar(100) foreign key references Equipo(nombre_seleccion),
id_partido int foreign key references Partido(id_partido)
); 

insert into Equipo_Partido values('Honduras',1);
insert into Equipo_Partido values('Costa Rica',2);

SELECT * FROM Equipo_Partido;


/*Arbitro*/
create table Arbitro(
id_arbitro int primary key not null,
anho_inicio_activi int,
pasaporte int,
nacionalidad varchar (100),
replazo int foreign key references Arbitro(id_arbitro)
);

SELECT * FROM Arbitro;

insert into Arbitro values(1234,1990,15191987628,'Hondureño',null);
insert into Arbitro values(1235,1998,15191982518,'Salvadoreño',1234);


UPDATE Arbitro SET replazo = null where id_arbitro  = 1;

SELECT * FROM Arbitro;


/*Estadio*/
create table Estadio(
nombre_estadio varchar(100) primary key not null,
ciudad varchar(100),
capacidad_maxima int
);

insert into Estadio values('Estadio Olimpico','San Pedro Sula',30000);
insert into Estadio values('Estadio Nacional','Tegucigalpa',30000);

SELECT * FROM Estadio;


/*Aficionados*/
create table Aficionados(
numero_ticket int primary key not null identity (1,1),
vestimenta varchar(100),
numero_asiento int,
ubicacion varchar(100)
);

insert into Aficionados values('Azul y blanco', 1234, 'sombra');
insert into Aficionados values('Rojo y blanco', 1235, 'sombra');

SELECT * FROM Aficionados;

/*Estadio_Aficionado*/
create table Estadio_Aficionado(
id int primary key not null identity (1,1),
nombre_estadio varchar(100) foreign key references Estadio(nombre_estadio),
numero_ticket int foreign key references Aficionados(numero_ticket)
);

insert into Estadio_Aficionado values('Estadio Olimpico',1);
insert into Estadio_Aficionado values('Estadio Nacional',2);


SELECT * FROM Estadio_Aficionado;










