

CREATE DATABASE Ejericicio4;


USE Ejercicio4;

/*Camion*/

create table Camion(
matricula int primary key not null,
modelo varchar(100),
tipo varchar(1009),
potencia int
);

insert into Camion values(154254,'KIA','4x4',50000);
insert into Camion values(154148,'Isuzu','4x4',50000);

SELECT * FROM Camion;


/*Camionero*/
create table Camionero(
dni float primary key not null,
nombre varchar(100) not null,
direccion varchar(100) not null,
salario int,
codigo_paquete int
);

ALTER TABLE Camionero add constraint FK_Paquete_Camionero FOREIGN KEY (codigo_paquete) REFERENCES Paquete(codigo_paquete);

insert into Camionero values(1519199600307,'Carlos','Tegucigalpa',50000, 1);
insert into Camionero values(1519199659927,'Francisco','Tegucigalpa',50000, 2);

SELECT * FROM Camionero;

/*Camion_Camionero*/
create table Camion_Camionero(
id int primary key not null identity (1,1),
  matricula int FOREIGN KEY REFERENCES Camion(matricula),
  dni float FOREIGN KEY REFERENCES Camionero(dni),
);

insert into Camion_Camionero values(154254,1519199600307);
insert into Camion_Camionero values(154148,1519199659927);


SELECT * FROM Camion_Camionero;

/*Pquete*/
create table Paquete(
codigo_paquete int primary key not null identity (1,1),
descripcion varchar(100),
destino  varchar(100),
direccion_destino varchar(100)
);

insert into Paquete values('Paquete mediano','Olancho','San Francisco de la Paz');
insert into Paquete values('Paquete grande','Francisco Morazan','Tegucigalpa');


SELECT * FROM Paquete;


/*Departamento*/
create table Departamento(
codigo_departamento int primary key not null,
nombre varchar(100)
);

insert into Departamento values(15,'Olancho');
insert into Departamento values(08,'Francisco Morazan');

SELECT * FROM Departamento;
