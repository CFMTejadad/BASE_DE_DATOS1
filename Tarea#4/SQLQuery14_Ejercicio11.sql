


CREATE DATABASE Ejercicio11;

USE Ejercicio11;


/*Clientes*/
create table Client(
dni float primary key not null,
nombre varchar(100)  not null,
email varchar (250) not null,
telefono int
);

insert into Client values(1519199700307,'Carlos','Carlos_tejada2008@hotmail.com',32707836);
insert into Client values(1519198810307,'Alejandra','ale_mejia@gmail.com',89166325);

SELECT * FROM Client;

/*Cliente_Cupo*/
create table CC(
id int primary key not null identity (1,1),
dni float foreign key references Client(dni),
numero_cupon int foreign key references Cupon(numero_cupon)
);



/*Cupon*/
create table Cupon(
numero_cupon int primary key not null,
hora varchar(100),
importe varchar(100),
fecha varchar(100),
superCupon int foreign key references Cupon(numero_cupon)
);

SELECT * FROM Cupon;
insert into Cupon values(1519,'7:00pm','1000','Lunes 5 de marzo 2021',null);
insert into Cupon values(1520,'7:00pm','1500','Lunes 5 de marzo 2021',1519);

UPDATE Cupon SET superCupon = null where numero_cupon = 1;


SELECT * FROM Cupon;



/*Producto*/
create table Producto(
codigo_producto int primary key not null,
precio_venta int,
dimecio varchar(100)
);

insert into Producto values(1519,1000,'Hogar');
insert into Producto values(1520,100,'Limpieza');

SELECT * FROM Producto;


/*Proveedor*/
create table Proveedor(
cuit int primary key not null,
rason_social varchar(100),
telefono int
);

insert into Proveedor values(123456,'Delicateses',22352136);
insert into Proveedor values(654123,'Sula',22352552);


SELECT  * FROM Proveedor;
