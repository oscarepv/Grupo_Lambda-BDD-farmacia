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