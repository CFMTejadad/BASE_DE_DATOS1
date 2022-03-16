


CREATE DATABASE Ejercicio5;

USE Ejercicio5;

/*Cliente*/
create table Cliente(
id_cliente float primary key not null,
nombre varchar(100),
apellido varchar(100),
direccion varchar(100),
fecha_naci varchar(100)
);

insert into Cliente values(1519199700307, 'Carlos', 'Mejia', 'San Francisco de la Paz','01/10/1997');
insert into Cliente values(1519199700703, 'Francisco', 'Tejada', 'San Francisco de la Paz','01/10/1997');

SELECT * FROM Cliente;

/*Producto*/
create table Producto(
codigo_producto int primary key not null identity (1,1),
nombre varchar(100),
precio varchar(100)
);

insert into Producto values('Carlos','35066.55');
insert into Producto values('Pedro','8909.458');

SELECT * FROM Producto;

/*Proveedor*/
 create table Proveedor(
 RTN int primary key not null,
 nombre varchar(100),
 direccion varchar(100)
 );

 insert into Proveedor values (1521188, 'Carlos', 'San Francisco de la paz');
  insert into Proveedor values (1521500, 'Francisco', 'Tegucigalpa');
 SELECT * FROM Proveedor;

 /*Cliente_Producto*/
 create table Cliente_Producto(
 id int primary key not null identity (1,1),
 id_cliente float FOREIGN KEY REFERENCES Cliente(id_cliente),
 codigo_producto int FOREIGN KEY REFERENCES Producto(codigo_producto)
 );

 insert into Cliente_Producto values(1519199700307,1);
 insert into Cliente_Producto values(1519199700703,2);

 SELECT * FROM Cliente_Producto;