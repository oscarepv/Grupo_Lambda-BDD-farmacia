create database farmacia

use farmacia

create table ventas(

idventa varchar(4) primary key,
idetalleventa varchar(4)not null,
idclientes varchar(4)not null,
idempleados varchar(4)not null,
precioventa numeric(6,0) not null,
descripcion varchar(25)not null,
total numeric(5,0) not null

)

create table detalle_venta(

idDetalle varchar(4) primary key,
fechaventa date not null,
precioUnitario numeric(10,0) not null,
cantidad numeric(5,0) not null,
iva  numeric(5,0) not null

)

create table producto(

idprod varchar(4) primary key,
idprovedor varchar(4) not null,
idtipoprodu varchar(4) not null,
idventa varchar(4)not null,
idpromocion varchar(4) not null,
nombreprod varchar(25)not null,
marcaprod varchar(20) not null,
stock numeric(10,0) not null

)

create table tipo_producto(

idtipopro varchar(4) primary key,
tipo varchar(25)not null
)

create table promocion(

idpromo varchar(4) primary key,
descripromo  varchar(25)not null,
tipopromocion varchar(25)not null,
fechainicio date,
fechafin date

)

create table cliente (

idClliente  nvarchar(4) primary key,
nombCliente  nvarchar(25)not null,
apellidoCliente nvarchar(25)not null,
cedulaCliente nvarchar (10)not null,
telefonoClient nvarchar (15) not null,
dierccionClienta nvarchar (50) not null

)

create table empleados(

idEmpleado varchar(4) primary key,
nombEmpleado  varchar(25)not null,
apellidoEmpleado nvarchar(25)not null,
cedulaEmpleado varchar(25)not null,
direccionEmpleado nvarchar (50) not null

)

create table sucural (

idSucursal nvarchar (4) not null,
nombSucursal nvarchar (20) not null,
direcionSucursal nvarchar (20) not null,
rucSusursal nvarchar (50) not null

)

create table proveedores (
idProveedor nvarchar (4) not null,
nombProveedor nvarchar (20) not null,
telefProveedor nvarchar (20) not null, 
rucProveedor nvarchar (50) not null

)
