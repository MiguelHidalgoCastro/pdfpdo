CREATE DATABASE IF NOT EXISTS retosEVG DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE retosEVG;

create table profesor(
    id smallint unsigned AUTO_INCREMENT,
    correo varchar(100) not null UNIQUE,
	CONSTRAINT PK_profesor PRIMARY KEY (id)
);
create table clase(
	id tinyint unsigned AUTO_INCREMENT,
	nombre char(6) not null UNIQUE,
	CONSTRAINT PK_clase PRIMARY KEY(id)
);
create table reto(
	id smallint unsigned AUTO_INCREMENT,
	nombre varchar(100) not null,
	CONSTRAINT PK_reto PRIMARY KEY(id)
);
create table grupo(
    idGrupo smallint unsigned AUTO_INCREMENT,
	idReto smallint unsigned not null,
	nombre varchar(50) not null UNIQUE,
	descripcion varchar(255) null,
	puntuacion tinyint unsigned null default null,
	idClase tinyint unsigned not null,
	idProfesor smallint unsigned not null,
	CONSTRAINT PK_grupos PRIMARY KEY (idGrupo),
	CONSTRAINT FK_reto_idReto FOREIGN KEY (idReto) REFERENCES reto(id),
	CONSTRAINT FK_clase_idClase FOREIGN KEY(idClase) REFERENCES clase(id),
	CONSTRAINT FK_profesor_idProfesor FOREIGN KEY(idProfesor) REFERENCES profesor(id)
	
);
create table alumno(
	idAlumno int unsigned AUTO_INCREMENT,
	idGrupo smallint unsigned not null,
	nombre varchar(60) not null,
	CONSTRAINT PK_alumno PRIMARY KEY(idAlumno),
	CONSTRAINT FK_grupo_idGrupo FOREIGN KEY(idGrupo) REFERENCES grupo(idGrupo)
);	

INSERT INTO profesor (correo)
VALUES ('imunoz@evg.es'),
	   ('egonzalez@evg.es'),
	   ('mjaque@evg.es');
	   
INSERT INTO clase (nombre)
VALUES ('1DAW'),
	   ('2DAW'),
	   ('1SMR');	   
	   
INSERT INTO reto (nombre)
VALUES ('Aprende Inglés'),
       ('Viajes Educativos'),
	   ('Programa y Juega');