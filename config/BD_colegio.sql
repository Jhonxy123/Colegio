------------------------------------------------DDL--------------------------------------------------------------
CREATE DATABASE colegio;

CREATE TABLE profesor(
    cedula bigint not null,
    nombre varchar(40) not null,
    email varchar(40) not null,
    fecha_nac date,
    contraseña varchar(50),
    PRIMARY KEY(cedula)
);

CREATE TABLE asignatura(
    codigo int not null,
    nombre varchar(40) not null,
    cedula_profe bigint,
    PRIMARY KEY(codigo),
    FOREIGN KEY(cedula_profe)
        REFERENCES profesor(cedula)
);

CREATE TABLE estudiante(
    id bigint not null,
    nombre varchar(50) not null,
    grado int,
    email varchar(50),
    fecha_nac date,
    contrasena varchar(50) not null,
    PRIMARY KEY(id)
);

CREATE TABLE nota(
    id int auto_increment not null,
    codigo_asig int,
    id_estudiante bigint,
    ano int,
    nota double,
    PRIMARY KEY(id,codigo_asig,id_estudiante),
    FOREIGN KEY(codigo_asig)
        REFERENCES asignatura(codigo),
    FOREIGN KEY(id_estudiante)
        REFERENCES estudiante(id)
);

----------------------------------DML-----------------------------------------------------------------------------------------
#profesor

INSERT profesor VALUE(100,'Jose Luis','jose1@gmail.com','1975-02-23','1');
INSERT profesor VALUE(101,'Maria Jimenez','maria1@gmail.com','1980-03-14','1');
INSERT profesor VALUE(102,'Andres Parra','andres1@gmail.com','1982-05-21','1');
INSERT profesor VALUE(103,'Nelly Palma','nelly1@gmail.com'),'1978-07-03','1';
INSERT profesor VALUE(104,'Oscar Prado','oscar1@gmail.com','1965-08-18','1');

#asignatura

INSERT asignatura VALUE(10,'Matemáticas',103);
INSERT asignatura VALUE(20,'Fisica',100);
INSERT asignatura VALUE(30,'Sociales',101);
INSERT asignatura VALUE(40,'Biologia',102);
INSERT asignatura VALUE(50,'Dibujo',104);

#estudiante

INSERT estudiante VALUE(1000,'Juan Andres',10,'juan2@gmail.com','2007-03-13','1');
INSERT estudiante VALUE(1001,'Karol Martinez',9,'karon2@gmail.com','2008-04-20'.'1');
INSERT estudiante VALUE(1002,'Stevan Cuervo',11,'stevan2@gmail.com','2006-08-12','1');
INSERT estudiante VALUE(1003,'Sergio Lopez',9,'sergio2@gmail.com','2008-12-01','1');
INSERT estudiante VALUE(1004,'Mariana Escobar',10,'maria2@gmail.com','2007-05-12','1');
INSERT estudiante VALUE(1005,'Carolina Gutierras',11,'carolina2@gmail.com','2006-08-18');

#nota

INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1000,2023,3.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1000,2023,3.2);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1000,2023,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1000,2023,3.8);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1000,2023,5.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1001,2022,3.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1001,2022,3.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1001,2022,4.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1001,2022,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1001,2022,5.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1002,2021,4.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1002,2021,3.8);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1002,2021,3.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1002,2021,3.1);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1002,2021,5.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1003,2023,3.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1003,2023,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1003,2023,3.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1003,2023,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1003,2023,5.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1004,2022,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1004,2022,3.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1004,2022,4.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1004,2022,4.2);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1004,2022,5.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(10,1005,2021,2.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(20,1005,2021,3.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(30,1005,2021,4.5);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(40,1005,2021,4.0);
INSERT nota (codigo_asig,id_estudiante,ano,nota)VALUE(50,1005,2021,5.0);