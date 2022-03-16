


CREATE DATABASE Ejercicio6;


USE Ejercicio6;

/*Ciudad*/

create table Ciudad(
codigo_postal int primary key not null,
nombre varchar(100)
);
insert into Ciudad values(5042,'San Francisco de la paz');
insert into Ciudad values(5052,'Tegucigalpa');
SELECT * FROM Ciudad;

/*Farmaceutico*/
create table Farmaceutico(
id_fra float primary key  not null,
nombre varchar (100) not null,
fecha_ingre varchar(100),
enfermedades varchar (100)
);

insert into Farmaceutico values(1519199815222,'Carlos','10/05/2010','ninguna');
insert into Farmaceutico values(0801157228524,'Jose','11/09/2020','ninguna');

SELECT * FROM Farmaceutico;

/*Farmacia*/
create table Farmacia(
id_farmacia int primary key not null identity (1,1),
dirrecion varchar(100),
dia_guardia varchar(100)
);

insert into Farmacia values('Tegucigalpa','Jueves,Viernes');
insert into Farmacia values('San Pedro Sula','Jueves,Viernes');

SELECT * FROM Farmacia;


/*Empleado*/
create table Empleado( 
id_emple float primary key not null,
nombre varchar(100),
fecha_ingre varchar(100),
enfermedad varchar(100)
);

insert into Empleado values(1519199815222,'Carlos','10/05/2010','ninguna');
insert into Empleado values(0801157228524,'Jose','11/09/2020','ninguna');

SELECT * FROM Empleado;


/*Medicamento*/
create table Medicamento(
nombre_medicamento varchar(100) primary key not null,
presentacion varchar(100),
precio int
);

insert into Medicamento values('Panadol','Pastillas',10);
insert into Medicamento values('tapsin','capsula',15);

SELECT * FROM Medicamento;

/*Farmacia_Medicamento*/
 create table Farmacia_Medicamento(
 id int primary key not null identity (1,1),
 nombre_medicamento varchar(100) FOREIGN KEY REFERENCES Medicamento(nombre_medicamento),
 id_farmacia int FOREIGN KEY REFERENCES Farmacia(id_farmacia)
 );

 insert into Farmacia_Medicamento values('Panadol',1);
insert into Farmacia_Medicamento values('tapsin',2);

SELECT * FROM Farmacia_Medicamento;

/*Laboratorio*/
create table Laboratorio(
nombre_laboratorio varchar(100) primary key not null,
domicilio varchar(100),
nombre_duenho varchar(100),
apellido_duenho varchar(100)
);


insert into Laboratorio values('MT','Tegucigalpa','Carlos','Mejia');
insert into Laboratorio values('CFMT','Olancho','Francisco','Tejada');


SELECT * FROM Laboratorio;

/*Accio Terapeutica*/
create table Accion(
nombre varchar(100) primary key not null,
efecto varchar(100) 
);

insert into Accion values('antibiótico','permiten que el organismo repare el daño');
insert into Accion values('insulina','reemplazar las hormonas naturales');

SELECT * FROM Accion;

/*Componentes*/
create table Componentes(
nombre_cientifico varchar(100) primary key not null,
nombre_comercial varchar(100),
cantidad_medicamento int
);

insert into Componentes values('paracetamol','acetaminofén',1000);
insert into Componentes values('(RS)-2-(4-(2-methylpropyl)phenyl)propanoic acid','Ibuprofeno',100);


SELECT * FROM Componentes;












