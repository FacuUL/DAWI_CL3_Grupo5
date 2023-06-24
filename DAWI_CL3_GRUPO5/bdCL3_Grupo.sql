create database bd_cl3_grupo5_login;
use bd_cl3_grupo5_login;

CREATE TABLE usuario (
	idusuario INT auto_increment NOT NULL,
	nomusuario varchar(50) NULL,
	email varchar(150) NULL,
	password varchar(300) NULL,
	nombres varchar(50) NULL,
	apellidos varchar(50) NULL,
	activo BOOL NULL,
	CONSTRAINT users_pk PRIMARY KEY (idusuario)
);


CREATE TABLE rol (
	idrol INT auto_increment NOT NULL,
	nomrol varchar(20) NULL,
	CONSTRAINT roles_pk PRIMARY KEY (idrol)
);


CREATE TABLE usuario_rol (
	idusuario INT NOT NULL,
	idrol INT NOT NULL,
	CONSTRAINT user_role_pk PRIMARY KEY (idusuario, idrol),
	CONSTRAINT user_role_FK FOREIGN KEY (idusuario) REFERENCES bd_cl3_grupo5_login.usuario(idusuario),
	CONSTRAINT user_role_FK_1 FOREIGN KEY (idrol) REFERENCES bd_cl3_grupo5_login.rol(idrol)
);


insert into rol values(1,"ADMIN");