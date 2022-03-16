


CREATE DATABASE Ejercicio12;

USE Ejercicio12;


/*Cliente*/
create table Cliente1(
codigo_cliente int primary key not null identity (1,1),
nombre varchar(100) not null,
apellido varchar (100),
nif int,
telefono int not null,
email varchar(200)not null,
fecha_alta varchar(100),
numero_tarjeta float
);

insert into Cliente1 values('Carlos','Mejia',1234,32707836,'carlos_tejada2008@hotmail.com','12 de marzo 2022',85426214459822545);
insert into Cliente1 values('Alejandra','Tejada',1789,327115836,'alejandra_tejada2008@hotmail.com','12 de marzo 2022',854262144591252545);

SELECT * FROM Cliente1;

/*Pedido*/
create table Pedido(
numero_locali float primary key not null,
importe_total int
);

insert into Pedido values(1519,1000);
insert into Pedido values(1509,2500);

SELECT * FROM Pedido;

/*Linea Pedidos*/
create table lineaPedidos(
numero int primary key not null identity (1,1),
importe_linea int 
);

insert into lineaPedidos values(1234);
insert into lineaPedidos values(1235);

SELECT * FROM lineaPedidos;

/*Articulo*/
create  table Articulo(
numero_referencia int primary key not null,
nombre varchar(100),
descripcion varchar(250),
pvp int 
);

insert into Articulo values(1555,'Ropa','Camisa blanca',1500);
insert into Articulo values(1554,'Ropa','Pantalon azul',1500);

SELECT * FROM Articulo;


/*Almacen*/
create table Almacen(
codigo_almacen int primary key not null,
nombre varchar(100),
fecha_apertura varchar(100),
direccion varchar(250),
telefono int,
gerente varchar(100),
suministro int foreign key references Almacen(codigo_almacen)
);

SELECT * FROM Almacen;

insert into Almacen values(1519,'Carlos','1 de octubre 1996', 'Tegucigalpa, col.Villa olimpica',32707836,'Carlos',null);
insert into Almacen values(1520,'Francisco','1 de octubre 1996', 'San pedro sula, col.Villa olimpica',32707836,'Carlos',1519);

UPDATE Almacen SET suministro = null where codigo_almacen = 1

SELECT * FROM Almacen;

/*Articulo Almacen*/
create table ArtiAlma(
id int primary key not null identity (1,1),
numero_referencia int foreign key references Articulo(numero_referencia),
codigo_almacen int foreign key references Almacen(codigo_almacen)
);

insert into ArtiAlma values(1555,1519);
insert into ArtiAlma values(1554,1520);

SELECT * FROM ArtiAlma;


/*Provincia*/
create table Provincia(
codigo_provincia int primary key not null identity(1,1),
nombre varchar(100),
extencion int,
numero_habitantes  float 
);

insert into Provincia values('Tegucigalpa',0801,500000);
insert into Provincia values('San Pedro Sula',0507,500000);

SELECT * FROM Provincia;




















