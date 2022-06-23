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

CREATE TABLE almacenista(
	id int NOT NULL,
	nombre varchar(20) NOT NULL,
	apellido_p varchar(20) NOT NULL,
	apellido_m varchar(20) NOT NULL,
	telefono varchar(10),
	direccion varchar(50) NOT NULL,
	id_ruta int,
	id_vehiculo int,
	salario decimal(5,2),
	fecha_contracion date;
)

CREATE TABLE vehiculo(
	id int NOT NULL,
	marca varchar(15) NOT NULL,
	modelo varchar(20) NOT NULL,
	matricula varchar(10) NOT NULL,
	carga int NOT NULL,
	estado varchar NOT NULL);

CREATE TABLE ruta(
	id int NOT NULL,
	destino varchar NOT NULL);

CREATE TABLE pedido(
	id int NOT NULL,
	id_cliente int NOT NULL,
	id_conductor int NOT NULL,
	estado varchar(15),
	subtotal decimal(10,2));

CREATE TABLE manejo_pedido(
	id int NOT NULL,
	id_pedido int NOT NULL,
	id_producto int NOT NULL,
	fecha_creacion date,
	cantidad int NOT NULL,
	fecha_entrega date,
	subtotal decimal(10,2));

CREATE TABLE producto(
	id int NOT NULL,
	stock int NOT NULL,
	precio decimal (10,2),
	imagen image,
	cantidad smallint NOT NULL,
	descripcion varchar(40),
)