use BD_CWS;

-- creacion de procedimiento almacenado  cliente
DROP PROCEDURE addCompra
DELIMITER //
CREATE PROCEDURE AddCliente(
in in_Id_Cliente int,
in in_Nombre VARCHAR (50),
in in_Correo VARCHAR (50),
in in_Telefono bigint,
in in_Direccion VARCHAR (50)
)
BEGIN
INSERT INTO Cliente(
Id_Cliente,
Nombre,
Correo,
Telefono,
Direccion
) 

values (
in_Id_Cliente,
in_Nombre,
in_Correo,
in_Telefono,
in_Direccion
);

END//

DELIMITER ;

CALL AddCliente('10','camilo lopez', 'camilopez4@gmail.com','3018505','calle 25 # 80 a 25');

-- creacion de procedimiento almacenado barbero

DELIMITER //
CREATE PROCEDURE AddBarbero(
in in_Nombre VARCHAR (50),
in in_Correo VARCHAR (50),
in in_Telefono bigint
)
BEGIN
INSERT INTO Barbero(

Nombre,
Correo,
Telefono
) 

values (
in_Nombre,
in_Correo,
in_Telefono
);

END//

DELIMITER ;

CALL AddBarbero('Luigui Rodriguez', 'Dimatelulu8@gmail.com','301850');

-- creacion de procedimiento almacenado de citas
DELIMITER //
Create procedure T_Cita(in in_Cita int(10), 
in in_Agenda int,
in in_Servicio varchar(50))
begin
	insert into Cita(Id_Cita,Agenda,Servicio)
    values (in_Cita,in_Agenda,in_Servicio);
end //
DELIMITER ;

call T_Cita(9, 1002, 'S114');
call T_Cita(10, 1002, 'S115');
call T_Cita(11, 1002, 'S116');
call T_Cita(12, 1002, 'S117');

call T_Cita(13, 1003, 'S113');



-- creacion de procedimiento almacenado de inventario

DELIMITER //
create procedure addInventario(
in Id_Inventario VARCHAR (50),
in Id_Proveedores VARCHAR (50),
in Id_Producto VARCHAR (50),
in Cantidad VARCHAR (50),
in Fecha_Open VARCHAR (50),
in Fecha_Exit VARCHAR (50),
in Total VARCHAR (50)
)
BEGIN
INSERT INTO Inventario (
Id_Inventario,
Id_Proveedores,
Id_Producto,
Cantidad,
Fecha_Open,
Fecha_Exit,
Total
)
values (
In_Id_Inventario,
In_Id_Proveedores,
In_Id_Producto,
In_Cantidad,
In_Fecha_Open,
In_Fecha_Exit,
In_Total
);

END//
DELIMITER //

CALL addInventario ('3','1150','cera','20','2022-25-03','null','25');


-- creacion de procedimiento almacenado de provedores
DELIMITER //
Create procedure T_Proveedores(in in_Proveedores int, 
in in_Nombre varchar(50),
in in_Correo varchar(50),
in in_Direccion varchar(50),
in in_Telefono bigint)
begin
	insert into Proveedores(Id_Proveedores,Nombre,Correo,Direccion,Telefono)
    values (in_Proveedores,in_Nombre,in_Correo,in_Direccion,in_Telefono);
end //
DELIMITER ;

call T_Proveedores(1036615686, 'Atenea', 'Atenea@gmail.com', 'Carrera 30 No. 32-45', 3144630);
call T_Proveedores(1036616675, 'Vogue', 'Vogue@gmail.com', 'Carrera 40 No. 48-45', 3144631);
call T_Proveedores(1036616686, 'Skala', 'Skala@gmail.com', 'Carrera 50 No. 28-45', 3144632);
call T_Proveedores(1036616687, 'Cosméticos Samy', 'Cosméticos0Samy@gmail.com', 'Carrera 60 No. 83-45', 3144629);
call T_Proveedores(1036616676, 'Loreal', 'Loreal@gmail.com', 'Carrera 70 No. 57-45', 3144633);


-- creacion de procedimiento almacenado de administrador
DELIMITER //
Create procedure T_Administrador(in in_Administrador int,
in in_Nombre varchar(50), 
in in_Correo varchar(50),
in in_Telefono int)
begin
	insert into Administrador(Id_Administrador,Nombre,Correo,Telefono)
    values (in_Administrador,in_Nombre,in_Correo,in_Telefono);
end //
DELIMITER ;

call T_Administrador(1000863953, 'Ingrid Rocio Guerrero', 'Ingrid@gmail.com', 3109171);
call T_Administrador(1000863954, 'Maria José García', 'Maria@gmail.com', 3109182);
call T_Administrador(1000863955, 'Luisa Fernanda García', 'Luisa@gmail.com', 3109172);
call T_Administrador(1000863956, 'Leonardo Andrés Dueñas', 'Leonardo@gmail.com', 3109183);
call T_Administrador(1000863957, 'Gabriel Mauricio Nieto', 'Gabriel@gmail.com', 3109173);


-- creacion de procedimiento almacenado de producto
DELIMITER //
Create procedure T_Producto(in in_Producto int (10),
in in_Nombre varchar (50),
in in_Precio decimal (5, 2))
begin
	insert into Producto(Id_Producto,Nombre,Precio)
    values (in_Producto,in_Nombre,in_Precio);
end //
DELIMITER ;

call T_Producto(30, 'Aftershaves', 20.000);
call T_Producto(31, 'Balm Contiditioner -Bálsamo/Acondicionador', 31.500);
call T_Producto(32, 'Acondicionador Reuzel 350ml', 25.000);
call T_Producto(33, 'Balsamo Capilar The Barbershop X 250ml', 28.200);
call T_Producto(34, 'Jabón de afeitar', 15.500);


-- creacion de procedimiento almacenado de servicios

DELIMITER //
Create procedure T_Servicios(in in_Nombre varchar(50))
begin
	select * 
	from servicios
	where Nombre = in_Nombre;
end //
DELIMITER ;

call T_Servicios('Corte caballero');
call T_Servicios('Shampoo+Peinado');
call T_Servicios('Mascarilla negra removedora de puntos');
call T_Servicios('Teusaquillo');
call T_Servicios('Pedicure');


-- creacion de procedimiento almacenado de agenda
DELIMITER //
Create procedure T_Agenda(in in_Agenda int (10),
in in_Barbero int,
in in_Fecha date, 
in in_Hora time)
begin
	insert into Agenda(Id_Agenda,Id_Barbero,Fecha,Hora)
    values (in_Agenda,in_Barbero,in_Fecha,in_Hora);
end //
DELIMITER ;

call T_Agenda(43, 106, '2022-05-22', '08:00:00.00');
call T_Agenda(44, 106, '2022-05-22', '09:30:00.00');
call T_Agenda(45, 106, '2022-05-22', '10:00:00.00');
call T_Agenda(46, 106, '2022-05-22', '12:00:00.00');
call T_Agenda(47, 106, '2022-05-22', '11:00:00.00');


-- creacion de procedimiento almacenado de facturas

DELIMITER //
Create procedure T_Facturas(in in_Facturas int (10),
in in_Fecha date,
in in_Cliente int (10))
begin
	insert into Facturas(Id_Facturas,Fecha,Id_Cliente)
    values (in_Facturas,in_Fecha,in_Cliente);
end //
DELIMITER ;

call T_Facturas(31, '2022-05-22', 1017196482);
call T_Facturas(32, '2022-05-22', 1017196493);
call T_Facturas(33, '2022-05-22', 1017196483);
call T_Facturas(34, '2022-05-22', 1017196494);
call T_Facturas(35, '2022-05-22', 1017196484);


-- creacion de procedimiento almacenado de venta

DELIMITER //
Create procedure T_Venta(in in_Ventas int (10),
in in_cliente int (10),
in in_Fecha date,
in in_Producto varchar (50),
in in_Servicio varchar (50),
in in_Total decimal (5, 2))
begin
	insert into Venta(Id_Ventas,Id_cliente,Fecha,Id_Producto,Id_Servicio,Total)
    values (in_Ventas,in_cliente,in_Fecha,in_Producto,in_Servicio,in_Total);
end //
DELIMITER ;

call T_Venta(31, 1017196482, '2022-05-22', 'P129', 'S118', 68.000);
call T_Venta(32, 1017196493, '2022-05-22', 'P130', 'S119', 79.500);
call T_Venta(33, 1017196483, '2022-05-22', 'P131', 'S120', 53.000);
call T_Venta(34, 1017196494, '2022-05-22', 'P132', 'S121', 42.200);
call T_Venta(35, 1017196484, '2022-05-22', 'P133', 'S122', 32.500);


-- creacion de procedimiento almacenado de compra
DELIMITER //
Create procedure Compra(
in id_Compra int (10),
in id_Proveedores char(50),
in id_Producto varchar(50),
in Total decimal (5, 2))
begin
	insert into Compra(id_Compra,id_Proveedores,id_Producto,Total)
    values (Id_Compra,Id_Proveedores,Id_Producto,Total);
end //
DELIMITER ;

call Compra("502", "barto", "cera barto", "25.00");


