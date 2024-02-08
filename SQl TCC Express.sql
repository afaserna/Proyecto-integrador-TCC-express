create database tcc_express
use tcc_express

create table Info_cliente(
cc bigint primary key,
Nombre_cliente varchar(60),
Dir_cliente varchar(70),
Tel_cleinte bigint,
email_cliente varchar(50))

create table Info_factura(
Num_factura varchar(60) primary key,
fecha_factura datetime,
valor_factura bigint,
metodo_pago varchar(50))

create table Factura_cliente(
cc1 bigint,
Num_factura1 varchar(60),
constraint apodo1 foreign key (cc1) references Info_cliente (cc),
constraint apodo2 foreign key (Num_factura1) references Info_factura (Num_factura))

create table Datos_envio(
Id_envio varchar (50) primary key,
Fecha_envio datetime,
Estado_envio varchar(max),
Valor_envio bigint,
Guia varchar (60),
Num_factura2 varchar(60),
constraint apodo3 foreign key (Num_factura2) references Info_factura (Num_factura))

create table Info_origen(
Cod_origen varchar (50) primary key,
Dir_origen varchar(60),
Ciudad_origen varchar (50),
Municipio varchar (40),
Barrio varchar (50))

create table Info_paquete(
Id_paquete varchar (50) primary key,
Descripcion varchar (max),
Peso varchar (20),
Dimensiones varchar (30),
Id_envio1 varchar (50),
Cod_origen1 varchar (50),
constraint apodo4 foreign key (Id_envio1) references Datos_envio (Id_envio),
constraint apodo5 foreign key (Cod_origen1)references Info_origen (Cod_origen))

create table Info_destino(
Cod_destino varchar (50) primary key,
Dir_destino varchar (60),
Ciudad_destino varchar (60),
Municipio_destino varchar (60),
Barrio_destino varchar (60))

create table Destino_cliente(
cc2 bigint,
Cod_destino1 varchar (50),
constraint apodo6 foreign key (cc2) references Info_cliente (cc),
constraint apodo7 foreign key (Cod_destino1) references Info_destino (Cod_destino))

create table Info_empleado(
Id_empleado varchar(50) primary key,
Nombre_empleado varchar (60),
Cargo_empleado varchar (max))

create table Empleado_cliente(
cc3 bigint,
Id_empleado1 varchar (50),
constraint apodo8 foreign key (cc3) references Info_cliente (cc),
constraint apodo9 foreign key (Id_empleado1) references Info_empleado (Id_empleado))

