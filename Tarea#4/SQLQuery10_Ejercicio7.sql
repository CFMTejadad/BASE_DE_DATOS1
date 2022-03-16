


CREATE DATABASE Ejercicio7;

USE Ejercicio7;

/*Autor*/
create table Autor(
codigo_autor int primary key not null identity (1,1),
nombre varchar(100)
);
insert into Autor values('Miguel Cervante');
insert into Autor values('Gabriel Garcia Marquez');
SELECT * FROM Autor;

/*Libro*/
create table Libro(
codigo_libro int primary key not null,
titulo varchar(100),
isbn int,
editorial varchar(100),
numero_paginas int
);

insert into Libro values(1234, 'don quijote de la mancha', 1858223, 'Librería de Garnier Hermanos',345);
insert into Libro values(1235, 'cien años de soledad', 188954, ' Sudamericana',471);

SELECT  * FROM Libro;

/*Ejemplar*/
create table Ejemplar(
codigo_ejemplar int primary key not null identity(1,1),
localizacion varchar(100)
);

insert into Ejemplar values('Tegucigal');
insert into Ejemplar values('San Pedro Sula');

SELECT * FROM Ejemplar;

/*Usuario*/
create table Usuario(
codigo_usuario int primary key not null,
nombre varchar(100),
dirrecion varchar (100),
telefono int
);

insert into Usuario values(3535,'Carlos','Villa Olimpica',32707836);
insert into Usuario values(3333,'Francisco','Cholama',32707878);

SELECT * FROM Usuario;


/*Autor_Libro*/
create table Autor_Libro(
id int primary key not null identity (1,1),
 codigo_autor int FOREIGN KEY REFERENCES Autor(codigo_autor),
 codigo_libro int FOREIGN KEY REFERENCES Libro(codigo_libro)
);

insert into Autor_Libro values(1,1234);
insert into Autor_Libro values(2,1235);

SELECT * FROM Autor_Libro;

/*Ejemplar_Usuario*/
create table EjeUsu(
id int primary key not null identity (1,1),
 codigo_ejemplar int FOREIGN KEY REFERENCES Ejemplar(codigo_ejemplar),
 codigo_usuario int FOREIGN KEY REFERENCES Usuario(codigo_usuario)
);


insert into EjeUsu values(1,3535);
insert into EjeUsu values(2,3333);


SELECT * FROM EjeUsu;












