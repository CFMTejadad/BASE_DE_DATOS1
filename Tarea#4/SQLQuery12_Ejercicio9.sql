
CREATE DATABASE Ejercicio9;

USE Ejercicio9;


/*Autor*/
create table Autores(
nombre_autors varchar(100) primary key not null,
nacionalidad varchar(100),
anho_nacimiento varchar(100)
);



insert into Autores values('Miguel Cervante','Español','1547');
insert into Autores values('Ramon Amaya','Honduras','1916');

SELECT * FROM Autores;

/*Libro*/
create table Libro(
titulo varchar(100) primary key not null,
genero varchar(100) not null,
reseña varchar(255) not null,
ferencia varchar(255)
);


insert into Libro values('Don Quijote de la mancha', 'Ficcion', 'Este libro trata de un tal Alonso Quijano','Brujos');
insert into Libro values('Los brujos de ilamatepeque', 'Ficcion', 'Resumen El relato se centra en el municipio de Ilamatepeque.', 'El Quijote es la obra más conocida de Miguel de Cervantes Saavedra');

SELECT * FROM Libro;

/*Autor_Libro*/
create table Autor_Libro(
id int primary key not null identity(1,1),
nombre_autors varchar(100) foreign key references Autores(nombre_autors),
titulo varchar(100) foreign key references Libro(titulo )
);
 

insert into Autor_Libro values('Miguel Cervantes','Don Quijote de la mancha');
insert into Autor_Libro values('Ramon Amaya','Los brujos de ilamatepeque');

SELECT * FROM Autor_Libro;


/*Edicion*/
create table Edicion(
isbn int primary key not null,
anho int,
idioma varchar(100)
);

insert into Edicion values(1519156,1999,'Español');
insert into Edicion values(1829156,1900,'Español');

SELECT * FROM Edicion;


/*Copia*/
create table Copia(
numero int primary key not null identity(1,2),
nombre varchar(100)
);


insert into Copia values('Don Quijote de la mancha');
insert into Copia values('Los brujos de ilamatepeque');


SELECT * FROM Copia;


/*Usuario*/
create table Usuario(
dni float primary key not null,
email varchar(100) not null,
nombre varchar(100) not null,
apellido varchar(100)
);


insert into Usuario values(1519199615552, 'carlos_tejada2008@hotmail.com','Carlos','Tejada');
insert into Usuario values(1519199700307, 'cm08139','Francisco','Mejia');

SELECT * FROM Usuario;