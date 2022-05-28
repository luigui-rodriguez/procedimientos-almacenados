Create database BD_CWS;
use BD_CWS;

create table Cliente (
Id_Cliente int not null primary key,
Nombre varchar (50) not null,
Correo varchar (50) not null,
Telefono bigint not null,
Direccion varchar (50) not null
);


create table Barbero (
Id_Barbero int auto_increment Primary key,
Nombre varchar (50) not null,
Correo varchar (50) not null,
Telefono int not null
);

create table Proveedores (
Id_Proveedores int not null Primary key,
Nombre varchar (50) not null,
Correo varchar (50) not null,
Direccion varchar (50) not null,
Telefono int not null
);

create table Cita (
Id_Cita int (10) Primary key,
Agenda int not null,
Servicio varchar (50) not null
);

create table Administrador (
Id_Administrador int (10) Primary key,
Nombre varchar (50) not null,
Correo varchar (50) not null,
Telefono bigint not null
);

create table Producto (
Id_Producto int (10) Primary key,
Nombre varchar (50) not null,
Precio decimal (5, 2)
);

create table Servicios (
Id_Servicios int (10) Primary key,
Nombre varchar (50) not null,
Precio decimal (5, 2)
);

create table Agenda (
Id_Agenda int (10) Primary key,
Id_Barbero int not null,
Fecha date,
Hora time
);

create table Facturas (
Id_Facturas int (10) Primary key,
Fecha date,
Id_Cliente int (10)
);

create table Venta (
Id_Ventas int (10) Primary key,
Id_cliente int (10) not null,
Fecha date,
Id_Producto varchar (50) not null,
Id_Servicio varchar (50) not null,
Total decimal (5, 2)
);

create table Compra(
Id_Compra int (10) Primary key,
Id_Proveedores varchar (50) not null,
Id_Producto varchar (50) not null,
Total decimal (5, 2)
);

create table Inventario(
Id_Inventario int (10) Primary key,
Id_Proveedores int (10) not null,
Id_Producto varchar (50) not null,
Cantidad int,
Fecha_Open date,
Fecha_Exit date,
Total decimal (5, 2)
);





drop database BD_CWS;