
CREATE DATABASE Ejercicio2;


USE Ejercicio2;

/*Ciudadano*/

create table Ciudadano(
  id int primary key not null identity (1,1),
  nombre varchar(100) not null,
  telefono int,
  salario float  
);
insert into Ciudadano values('Carlos',32707836,2555.22);
insert into Ciudadano values('Alejandra',89166325,2555.22);

SELECT * FROM Ciudadano;
 /*Localidad*/
 create table Localidad(
   codigo_localidad int primary key not null  identity (1,1),
   nombre varchar(100) not null,
   telefono int 
 );

insert into Localidad values('Carlos',32707836);
insert into Localidad values('Alejandra',89166325);

 SELECT * FROM Localidad;

 /*Municipio*/
 create table Municipio(
   codigo_municipio int primary key not null identity (1,1),
   nombre varchar(100)
 );
insert into Municipio values('San Pedro Sula');
insert into Municipio values('Tegucigalpa');

 SELECT * FROM Municipio;

 /*Departamento*/
 create table Departamento(
  codigo_departamento int primary key not null identity (1,1),
  nombre varchar(100)
  );

insert into Departamento values('Cortes');
insert into Departamento values('Francisco Morazan');

  SELECT * FROM Departamento;



