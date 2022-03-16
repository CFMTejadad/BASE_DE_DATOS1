

CREATE DATABASE EJERCICIO1;

USE EJERCICIO1;


/*Alumno*/
create table Alumno(
      numero_cuenta float primary key not null,
	  nombre varchar(100),
	  fechaNacimineto varchar(100),
	  telefono int,
	  );
	  

INSERT into Alumno VALUES(20151030867,'Carlos',' 01 octubre 1997' , 32707863);
INSERT into Alumno VALUES(20151030888,'Francisco',' 11 octubre 1997' , 32709873);

SELECT * FROM Alumno;

/*Asignacion*/

create table Asignatura(
   codigo_as varchar(20) primary key not null,
   nombre varchar(100),
   uv int,
   id_profesor float
);

 
 ALTER TABLE Asignatura add constraint FK_Profesor_Asignatura FOREIGN KEY (id_profesor) REFERENCES Profesor(id_profesor);


INSERT into Asignatura VALUES('MM110','Carlos',3);
INSERT into Asignatura VALUES('MM111','Francisco',8);

SELECT * FROM Asignatura;

/*Alumno y Asignacion*/
create table Alu_Asig(
  id int primary key not null identity (1,1),
  codigo varchar(20) FOREIGN KEY REFERENCES Asignatura(codigo_as),
  cuenta float FOREIGN KEY REFERENCES Alumno(numero_cuenta),
);

INSERT into Alu_Asig values('MM110',20151030867);
INSERT into Alu_Asig values('MM111',20151030888);

SELECT * FROM Alu_Asig;
  
  /*Profesor*/
 create table Profesor(
  id_profesor float primary key not null,
  nombre varchar(100),
  telefono int
  );

INSERT into Profesor values(15191997003,'Alejandro',32854595);
INSERT into Profesor values(08011982457,'Antonio',87689441);

SELECT * FROM Profesor;