/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     5/28/2025 9:33:12 AM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHI_TIET_DH') and o.name = 'FK_CHI_TIET_DH_CTDH_DON_HANG')
alter table CHI_TIET_DH
   drop constraint FK_CHI_TIET_DH_CTDH_DON_HANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHI_TIET_DH') and o.name = 'FK_CHI_TIET_SP_CTDH_SAN_PHAM')
alter table CHI_TIET_DH
   drop constraint FK_CHI_TIET_SP_CTDH_SAN_PHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHI_TIET_GH') and o.name = 'FK_CHI_TIET_GH_CTGH_GIO_HANG')
alter table CHI_TIET_GH
   drop constraint FK_CHI_TIET_GH_CTGH_GIO_HANG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHI_TIET_GH') and o.name = 'FK_CHI_TIET_SP_CTGH_SAN_PHAM')
alter table CHI_TIET_GH
   drop constraint FK_CHI_TIET_SP_CTGH_SAN_PHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DON_HANG') and o.name = 'FK_DON_HANG_ND_DH_NGUOI_DU')
alter table DON_HANG
   drop constraint FK_DON_HANG_ND_DH_NGUOI_DU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIO_HANG') and o.name = 'FK_GIO_HANG_ND_GH_NGUOI_DU')
alter table GIO_HANG
   drop constraint FK_GIO_HANG_ND_GH_NGUOI_DU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HINH_ANH_SP') and o.name = 'FK_HINH_ANH_SP_HASP_SAN_PHAM')
alter table HINH_ANH_SP
   drop constraint FK_HINH_ANH_SP_HASP_SAN_PHAM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SAN_PHAM') and o.name = 'FK_SAN_PHAM_DMSP_SP_DANH_MUC')
alter table SAN_PHAM
   drop constraint FK_SAN_PHAM_DMSP_SP_DANH_MUC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHI_TIET_DH')
            and   name  = 'SP_CTDH_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHI_TIET_DH.SP_CTDH_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHI_TIET_DH')
            and   name  = 'DH_CTDH_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHI_TIET_DH.DH_CTDH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHI_TIET_DH')
            and   type = 'U')
   drop table CHI_TIET_DH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHI_TIET_GH')
            and   name  = 'GH_CTGH_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHI_TIET_GH.GH_CTGH_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHI_TIET_GH')
            and   name  = 'SP_CTGH_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHI_TIET_GH.SP_CTGH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHI_TIET_GH')
            and   type = 'U')
   drop table CHI_TIET_GH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANH_MUC_SP')
            and   type = 'U')
   drop table DANH_MUC_SP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DON_HANG')
            and   name  = 'ND_DH_FK'
            and   indid > 0
            and   indid < 255)
   drop index DON_HANG.ND_DH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DON_HANG')
            and   type = 'U')
   drop table DON_HANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIO_HANG')
            and   name  = 'ND_GH_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIO_HANG.ND_GH_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIO_HANG')
            and   type = 'U')
   drop table GIO_HANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HINH_ANH_SP')
            and   name  = 'SP_HASP_FK'
            and   indid > 0
            and   indid < 255)
   drop index HINH_ANH_SP.SP_HASP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HINH_ANH_SP')
            and   type = 'U')
   drop table HINH_ANH_SP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NGUOI_DUNG')
            and   type = 'U')
   drop table NGUOI_DUNG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SAN_PHAM')
            and   name  = 'DMSP_SP_FK'
            and   indid > 0
            and   indid < 255)
   drop index SAN_PHAM.DMSP_SP_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SAN_PHAM')
            and   type = 'U')
   drop table SAN_PHAM
go

/*==============================================================*/
/* Table: CHI_TIET_DH                                           */
/*==============================================================*/
create table CHI_TIET_DH (
   ID_CTDH              int                  not null,
   ID_SP                int                  not null,
   ID_DH                int                  not null,
   SO_LUONG_CTDH        int                  null,
   GIA_CTDH             decimal(10,2)        null,
   constraint PK_CHI_TIET_DH primary key (ID_CTDH)
)
go

/*==============================================================*/
/* Index: DH_CTDH_FK                                            */
/*==============================================================*/




create nonclustered index DH_CTDH_FK on CHI_TIET_DH (ID_DH ASC)
go

/*==============================================================*/
/* Index: SP_CTDH_FK                                            */
/*==============================================================*/




create nonclustered index SP_CTDH_FK on CHI_TIET_DH (ID_SP ASC)
go

/*==============================================================*/
/* Table: CHI_TIET_GH                                           */
/*==============================================================*/
create table CHI_TIET_GH (
   ID_CTGH              int                  not null,
   ID_SP                int                  not null,
   ID_GH                int                  not null,
   SO_LUONG_CTGH        int                  null,
   constraint PK_CHI_TIET_GH primary key (ID_CTGH)
)
go

/*==============================================================*/
/* Index: SP_CTGH_FK                                            */
/*==============================================================*/




create nonclustered index SP_CTGH_FK on CHI_TIET_GH (ID_SP ASC)
go

/*==============================================================*/
/* Index: GH_CTGH_FK                                            */
/*==============================================================*/




create nonclustered index GH_CTGH_FK on CHI_TIET_GH (ID_GH ASC)
go

/*==============================================================*/
/* Table: DANH_MUC_SP                                           */
/*==============================================================*/
create table DANH_MUC_SP (
   ID_DMSP              int                  not null,
   TEN_DMSP             nvarchar(50)         null,
   MO_TA_DMSP           text                 null,
   constraint PK_DANH_MUC_SP primary key (ID_DMSP)
)
go

/*==============================================================*/
/* Table: DON_HANG                                              */
/*==============================================================*/
create table DON_HANG (
   ID_DH                int                  not null,
   ID_ND                int                  not null,
   TONG_TIEN_DH         decimal(10,2)        null,
   TRANG_THAI_DH        enum('DANG_CHO_XU_LY','DA_XY_LY','DA_NHAN','DA_HUY') null,
   NGAY_TAO_DH          timestamp            null,
   constraint PK_DON_HANG primary key (ID_DH)
)
go

/*==============================================================*/
/* Index: ND_DH_FK                                              */
/*==============================================================*/




create nonclustered index ND_DH_FK on DON_HANG (ID_ND ASC)
go

/*==============================================================*/
/* Table: GIO_HANG                                              */
/*==============================================================*/
create table GIO_HANG (
   ID_GH                int                  not null,
   ID_ND                int                  not null,
   NGAY_TAO_GH          timestamp            null,
   constraint PK_GIO_HANG primary key (ID_GH)
)
go

/*==============================================================*/
/* Index: ND_GH_FK                                              */
/*==============================================================*/




create nonclustered index ND_GH_FK on GIO_HANG (ID_ND ASC)
go

/*==============================================================*/
/* Table: HINH_ANH_SP                                           */
/*==============================================================*/
create table HINH_ANH_SP (
   ID_HA                int                  not null,
   ID_SP                int                  not null,
   DUONG_DAN_HA         nvarchar(255)        null,
   MO_TA_HA             nvarchar(255)        null,
   NGAY_TAO_HA          timestamp            null,
   constraint PK_HINH_ANH_SP primary key (ID_HA)
)
go

/*==============================================================*/
/* Index: SP_HASP_FK                                            */
/*==============================================================*/




create nonclustered index SP_HASP_FK on HINH_ANH_SP (ID_SP ASC)
go

/*==============================================================*/
/* Table: NGUOI_DUNG                                            */
/*==============================================================*/
create table NGUOI_DUNG (
   ID_ND                int                  not null,
   TEN_DANG_NHAP        nvarchar(50)         null,
   MAT_KHAU_ND          nvarchar(50)         null,
   EMAIL_ND             nvarchar(100)        null,
   VAI_TRO_ND           enum('user','admin') null,
   NGAY_TAO_ND          timestamp            null,
   constraint PK_NGUOI_DUNG primary key (ID_ND)
)
go

/*==============================================================*/
/* Table: SAN_PHAM                                              */
/*==============================================================*/
create table SAN_PHAM (
   ID_SP                int                  not null,
   ID_DMSP              int                  not null,
   TEN_SP               nvarchar(50)         null,
   MO_TA_SP             text                 null,
   GIA_SP               decimal(10,2)        null,
   SO_LUONG_SP          int                  null,
   NGAY_TAO_SP          timestamp            null,
   constraint PK_SAN_PHAM primary key (ID_SP)
)
go

/*==============================================================*/
/* Index: DMSP_SP_FK                                            */
/*==============================================================*/




create nonclustered index DMSP_SP_FK on SAN_PHAM (ID_DMSP ASC)
go

alter table CHI_TIET_DH
   add constraint FK_CHI_TIET_DH_CTDH_DON_HANG foreign key (ID_DH)
      references DON_HANG (ID_DH)
go

alter table CHI_TIET_DH
   add constraint FK_CHI_TIET_SP_CTDH_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP)
go

alter table CHI_TIET_GH
   add constraint FK_CHI_TIET_GH_CTGH_GIO_HANG foreign key (ID_GH)
      references GIO_HANG (ID_GH)
go

alter table CHI_TIET_GH
   add constraint FK_CHI_TIET_SP_CTGH_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP)
go

alter table DON_HANG
   add constraint FK_DON_HANG_ND_DH_NGUOI_DU foreign key (ID_ND)
      references NGUOI_DUNG (ID_ND)
go

alter table GIO_HANG
   add constraint FK_GIO_HANG_ND_GH_NGUOI_DU foreign key (ID_ND)
      references NGUOI_DUNG (ID_ND)
go

alter table HINH_ANH_SP
   add constraint FK_HINH_ANH_SP_HASP_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP)
go

alter table SAN_PHAM
   add constraint FK_SAN_PHAM_DMSP_SP_DANH_MUC foreign key (ID_DMSP)
      references DANH_MUC_SP (ID_DMSP)
go

