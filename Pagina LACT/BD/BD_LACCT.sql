CREATE DATABASE empresa_lacct;

USE empresa_lacct;

--Creacion de las tablas de la base de datos LACCT
CREATE TABLE usuario (
	id int IDENTITY(1,1) NOT NULL,
	email varchar(40) NOT NULL,
	contrasena varchar(30) NOT NULL,
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
	fecha_contracion date);

CREATE TABLE vehiculo(
	id int IDENTITY(1,1) NOT NULL,
	marca varchar(15) NOT NULL,
	modelo varchar(20) NOT NULL,
	matricula varchar(10) NOT NULL,
	carga int NOT NULL,
	estado varchar NOT NULL);

CREATE TABLE ruta(
	id int IDENTITY(1,1) NOT NULL,
	destino varchar NOT NULL);

CREATE TABLE pedido(
	id int IDENTITY(1,1) NOT NULL,
	id_cliente int NOT NULL,
	id_conductor int NOT NULL,
	estado varchar(15),
	subtotal decimal(10,2));

CREATE TABLE manejo_pedido(
	id int IDENTITY(1,1) NOT NULL,
	id_pedido int NOT NULL,
	id_producto int NOT NULL,
	fecha_creacion date,
	cantidad int NOT NULL,
	fecha_entrega date,
	subtotal decimal(10,2));

CREATE TABLE producto(
	id int IDENTITY(1,1) NOT NULL,
	stock int NOT NULL,
	precio decimal (10,2),
	imagen image,
	cantidad smallint NOT NULL,
	descripcion varchar(40),
)

CREATE TABLE manejo_lote(
	id_producto int NOT NULL,
	id_lote int NOT NULL);

CREATE TABLE lote(
	id int IDENTITY(1,1) NOT NULL,
	fecha_prod date NOT NULL,
	fecha_caducidad date NOT NULL,
	estado varchar(15) NOT NULL);

--Decalracion de las llaves foraneas y primarias
ALTER TABLE usuario ADD CONSTRAINT PK_usuario PRIMARY KEY (id);

ALTER TABLE cliente ADD CONSTRAINT PK_cliente PRIMARY KEY (id);
ALTER TABLE cliente ADD CONSTRAINT FK_cliente FOREIGN KEY (id) REFERENCES usuario(id);

ALTER TABLE vehiculo ADD CONSTRAINT PK_vehiculo PRIMARY KEY (id);

ALTER TABLE ruta ADD CONSTRAINT PK_ruta PRIMARY KEY (id);

ALTER TABLE conductor ADD CONSTRAINT PK_conductor PRIMARY KEY (id);
ALTER TABLE conductor ADD CONSTRAINT FK_conductor FOREIGN KEY (id) REFERENCES usuario(id);
ALTER TABLE conductor ADD CONSTRAINT FK_ruta FOREIGN KEY (id_ruta) REFERENCES ruta(id);
ALTER TABLE conductor ADD CONSTRAINT FK_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id);

ALTER TABLE almacenista ADD CONSTRAINT PK_almacenista PRIMARY KEY (id);
ALTER TABLE almacenista  ADD CONSTRAINT FK_almacenista FOREIGN KEY (id) REFERENCES usuario(id);

ALTER TABLE pedido ADD CONSTRAINT PK_pedido PRIMARY KEY (id);
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_cl FOREIGN KEY (id_cliente) REFERENCES cliente(id);
ALTER TABLE pedido ADD CONSTRAINT FK_pedido_ FOREIGN KEY (id_cliente) REFERENCES cliente(id);

ALTER TABLE manejo_pedido ADD CONSTRAINT PK_pedido PRIMARY KEY (id);





