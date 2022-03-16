


CREATE DATABASE Ejercicio3;

USE Ejercicio3;

/*Clientes*/

create table Clientes(
  numero_cliente int primary key not null,
  apellido varchar(100),
  domicilio varchar(250),
  telefono int
);

insert into Clientes values(1234,'Perez','San Francisco de la Paz',32707836);
insert into Clientes values(1235,'Urbina','San Francisco de la Paz',32789456);

SELECT * FROM Clientes;

/*Eventos*/
create table Eventos(
codigo int primary key not null identity (1,1),
descripcion varchar (250),
precio int,
hora varchar(50),
codigo_presentador int,
codigo_animador int
)

ALTER TABLE Eventos add constraint FK_Presentador_Eventos FOREIGN KEY (codigo_presentador) REFERENCES Presentador(codigo_presentador);
ALTER TABLE Eventos add constraint FK_Animador_Eventos FOREIGN KEY (codigo_animador) REFERENCES Animador(codigo_animador);

insert into Eventos values('Fiesta de cumpleaños', 5000, '3:00 PM', 0011, 1);
insert into Eventos values('Reunion Familiar', 5100, '3:00 PM', 0012, 2);

SELECT * FROM Eventos;

/*Clientes_Eventos*/
create table Clientes_Eventos(
  numero_cliente int foreign key references Clientes(numero_cliente),
  codigo int foreign key references Eventos(codigo)
);

insert into Clientes_Eventos values(1234,1);
insert into Clientes_Eventos values(1235,2);

SELECT * FROM Clientes_Eventos;


/*Animador*/
create table Animador(
codigo_animador int primary key not null identity (1,1),
dni varchar  (50),
apellido varchar (100),
disfraz varchar (100),
codigo_disfraz int 
);

ALTER TABLE Animador add constraint FK_Disfraz_Animador FOREIGN KEY (codigo_disfraz) REFERENCES Disfraz(codigo_disfraz);

insert  into Animador values('0801-1982-02564','Mejia','Harry Potter',1);
insert  into Animador values('0801-1785-05494','Figueroa','Spider-Man',2);
SELECT * FROM Animador;

/*Disfraz*/
create table Disfraz(
codigo_disfraz  int primary key not null,
personaje varchar (100),
precio int
);

insert into Disfraz values('Harry Potter', 5000);
insert into Disfraz values('Spider-Man', 5100);

SELECT * FROM Disfraz;



/*Presentador*/
create table Presentador(
codigo_presentador int primary key not null,
dni varchar(100),
apellido varchar(100),
anho_espesificos int
);

insert into Presentador values(0011,'1519-1997-00307','Tejada',5);
insert into Presentador values(0012,'1519-1999-00208','Mejia',3);

SELECT * FROM Presentador;