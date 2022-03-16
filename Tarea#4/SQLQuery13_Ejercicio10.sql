


CREATE DATABASE Ejercicio10;

USE Ejercicio10;



/*Agencia*/
create table Agencia(
codigo int primary key not null identity (1,1),
fecha_inicio varchar(100),
ciudad varchar(100)
);

insert into Agencia values('11 de enero 2010','Caracol');
insert into Agencia values('21 de febrero 2010','Caracol');

SELECT * FROM Agencia;


/*Paquete_Turistico*/
create table Paquete(
codigo_paquete int primary key not null,
pais varchar(100),
precio int,
relacionado int foreign key references Paquete(codigo_paquete)
);

SELECT * FROM Paquete;

insert into Paquete values(1234,'Hondureño',5000,null);
insert into Paquete values(1235,'Salvadoreño',5550,1234);

UPDATE Paquete SET relacionado = null where codigo_paquete = 1;

SELECT * FROM Paquete;

/*Cliente*/
create table Cliente(
dni float primary key not null,
domicilio varchar(250),
myap varchar(250)
);

insert into Cliente values(1519199612512,'Col. Villa Olimpica',null);
insert into Cliente values(1519192541152,'Col. Centro Americana',null);

SELECT * FROM Cliente;

/*Paquete_Cliente*/
create table PaCli(
id int primary key not null identity(1,1),
codigo_paquete int foreign key references Paquete(codigo_paquete),
dni float foreign key references Cliente(dni)
);

insert into PaCli values(1234,1519199612512);
insert into PaCli values(1235,1519192541152);

SELECT * FROM PaCli;

/*Forma_Pago*/
create table ForPa(
tipo varchar(100) primary key not null,
modo varchar(100)not null
);

insert into ForPa values('Efectivo','Contado');
insert into ForPa values('Tarjeta Credito','Credito');

SELECT * FROM ForPa;

/*Banco*/
create table Banco(
nombre_banco varchar(100) primary key not null,
sucursal varchar(100) not null
);

insert into Banco values('Ficohsa','Principal');
insert into Banco values('Atlantida','Agencia Multiplaza');

SELECT * FROM Banco;