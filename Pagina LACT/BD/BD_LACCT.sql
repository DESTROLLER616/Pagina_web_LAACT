CREATE DATABASE empresa_lacct;

GO
USE empresa_lacct;
GO

CREATE TABLE usuario (
	id int IDENTITY(1,1) NOT NULL,
	email varchar(40) NOT NULL,
	contrasena varchar(30) NOT NULL
	foto_perfil image,
	creacion_cuenta date NOT NULL,
	tipo varchar(15));
	
CREATE TABLE cliente(
	id int NOT NULL,
	nombre varchar(20) NOT NULL,
	apellido_p varchar(20) NOT NULL,
	apellido_m varchar(20) NOT NULL,
	telefono varchar(10),
	direccion varchar(50) NOT NULL);
	
CREATE TABLE conductor(
	id int NOT NULL,
	nombre varchar(20) NOT NULL,
	apellido_p varchar(20) NOT NULL,
	apellido_m varchar(20) NOT NULL,
	telefono varchar(10),
	direccion varchar(50) NOT NULL,
	id_ruta int,
	id_vehiculo int,
	salario decimal(5,2),
	fecha_contracion date);