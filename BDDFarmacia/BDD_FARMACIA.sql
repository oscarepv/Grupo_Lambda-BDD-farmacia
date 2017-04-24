create database farmacia

use farmacia



/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     4/24/2017 2:13:57 PM                         */
/*==============================================================*/


drop table if exists CATEGORIA;

drop table if exists CLIENTE;

drop table if exists DETALLE_VENTA;

drop table if exists EMPLEADO;

drop table if exists PRODUCTO;

drop table if exists PROMOCION;

drop table if exists PROVEEDOR;

drop table if exists SUCURSAL;

drop table if exists VENTA;

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   ID_CATEGO            int not null,
   NOMBRE_CATEGO        varchar(50),
   primary key (ID_CATEGO)
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE
(
   ID_CLIEN             int not null,
   NOMBRE_CLIEN         varchar(50),
   APELLIDO_CLIEN       varchar(50),
   DIRECCION_CLIEN      varchar(80),
   CELULAR_CLIEN        numeric(8,0),
   primary key (ID_CLIEN)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA
(
   ID_DVENTA            int not null,
   ID_PROD              int,
   ID_VENTA             int,
   PRECIO_DVENTA        float(8,2),
   CANTIDAD_DVENTA      numeric(8,0),
   primary key (ID_DVENTA)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO
(
   ID_EMPL              int not null,
   ID_SUCUR             int,
   NOMBRE_EMPL          varchar(50),
   DIRECCION_EMPL       varchar(80),
   TELEFONO_EMPL        numeric(8,0),
   CORREO_EMPL          varchar(50),
   CARGO_EMPL           varchar(50),
   primary key (ID_EMPL)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO
(
   ID_PROD              int not null,
   ID_PROVEE            int,
   ID_CATEGO            int,
   PRECIOVENTA_PROD     float(8,2),
   PRECIOCOMPRA_PROD    float(8,2),
   FECHAVENCMIENTOI_PROD date,
   STOCK                numeric(8,0),
   primary key (ID_PROD)
);

/*==============================================================*/
/* Table: PROMOCION                                             */
/*==============================================================*/
create table PROMOCION
(
   ID_PROMO             int not null,
   DECRIPCION_PROMO     varchar(80),
   TIPO_PROMO           varchar(50),
   FECHA_INICIO         date,
   FECHA_FIN            date,
   primary key (ID_PROMO)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR
(
   ID_PROVEE            int not null,
   ID_SUCUR             int,
   NOMBRE_PROVEE        varchar(50),
   DIRECCION_PROVEE     varchar(80),
   CORREO_PROVEE        varchar(50),
   primary key (ID_PROVEE)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL
(
   ID_SUCUR             int not null,
   NOMRE_SUCUR          varchar(50),
   DIRECCION_SUCUR      varchar(80),
   TELEFONO_SUCUR       numeric(8,0),
   ENCARGADO_SUCUR      varchar(50),
   primary key (ID_SUCUR)
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA
(
   ID_VENTA             int not null,
   ID_EMPL              int,
   ID_PROMO             int,
   ID_SUCUR             int,
   ID_CLIEN             int,
   FECHA_VENTA          date,
   TOTAL_VENTA          float(8,2),
   primary key (ID_VENTA)
);

alter table DETALLE_VENTA add constraint FK_RELATIONSHIP_3 foreign key (ID_PROD)
      references PRODUCTO (ID_PROD) on delete restrict on update restrict;

alter table DETALLE_VENTA add constraint FK_RELATIONSHIP_4 foreign key (ID_VENTA)
      references VENTA (ID_VENTA) on delete restrict on update restrict;

alter table EMPLEADO add constraint FK_RELATIONSHIP_10 foreign key (ID_SUCUR)
      references SUCURSAL (ID_SUCUR) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_RELATIONSHIP_1 foreign key (ID_CATEGO)
      references CATEGORIA (ID_CATEGO) on delete restrict on update restrict;

alter table PRODUCTO add constraint FK_RELATIONSHIP_2 foreign key (ID_PROVEE)
      references PROVEEDOR (ID_PROVEE) on delete restrict on update restrict;

alter table PROVEEDOR add constraint FK_RELATIONSHIP_8 foreign key (ID_SUCUR)
      references SUCURSAL (ID_SUCUR) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_5 foreign key (ID_CLIEN)
      references CLIENTE (ID_CLIEN) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_6 foreign key (ID_PROMO)
      references PROMOCION (ID_PROMO) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_7 foreign key (ID_EMPL)
      references EMPLEADO (ID_EMPL) on delete restrict on update restrict;

alter table VENTA add constraint FK_RELATIONSHIP_9 foreign key (ID_SUCUR)
      references SUCURSAL (ID_SUCUR) on delete restrict on update restrict;

