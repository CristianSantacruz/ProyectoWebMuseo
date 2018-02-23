/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     19/2/2018 2:20:57                            */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('ADMINISTRADOR')
            and   type = 'U')
   drop table ADMINISTRADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESERVA_ECOLOGICA')
            and   type = 'U')
   drop table RESERVA_ECOLOGICA
go

/*==============================================================*/
/* Table: ADMINISTRADOR                                         */
/*==============================================================*/
create table ADMINISTRADOR (
   IDADMINISTRADOR      int                  identity,
   NOMBRESADMINISTRADOR varchar(25)          not null,
   APELLIDOSADMINISTRADOR varchar(25)          not null,
   LOGINADMINISTRADOR   varchar(15)          not null,
   PASSWORDADMINISTRADOR varchar(10)          not null,
   constraint PK_ADMINISTRADOR primary key nonclustered (IDADMINISTRADOR)
)
go

/*==============================================================*/
/* Table: RESERVA_ECOLOGICA                                     */
/*==============================================================*/
create table RESERVA_ECOLOGICA (
   IDRESERVAECOLOGICA   int                  identity,
   NOMBRERESERVAECOLOGICA varchar(200)         not null,
   PROVINCIARESERVAECOLOGICA varchar(50)          not null,
   DESCRIPCIONRESERVAECOLOGICA varchar(10000000)    not null,
   LATITUDRESERVAECOLOGICA varchar(15)          not null,
   LONGITUDRESERVAECOLOGICA varchar(15)          not null,
   SITIOWEBRESERVAECOLOGICA varchar(200)         null,
   constraint PK_RESERVA_ECOLOGICA primary key nonclustered (IDRESERVAECOLOGICA)
)
go

