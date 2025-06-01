/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     5/28/2025 3:17:07 PM                         */
/*==============================================================*/

CREATE DATABASE ICONDEMIN
USE ICONDEMIN

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
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THANH_TOAN') and o.name = 'FK_THANH_TO_DH_CTDH2_DON_HANG')
alter table THANH_TOAN
   drop constraint FK_THANH_TO_DH_CTDH2_DON_HANG
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

if exists (select 1
            from  sysobjects
           where  id = object_id('THANH_TOAN')
            and   type = 'U')
   drop table THANH_TOAN
go

/*==============================================================*/
/* Table: CHI_TIET_DH                                           */
/*==============================================================*/
create table CHI_TIET_DH (
   ID_CTDH              int                  not null IDENTITY(1,1),
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
   ID_CTGH              int                  not null IDENTITY(1,1),
   ID_GH                int                  not null,
   ID_SP                int                  not null,
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
   ID_DMSP              int                  not null IDENTITY(1,1),
   TEN_DMSP             nvarchar(50)         null,
   MO_TA_DMSP           text                 null,
   constraint PK_DANH_MUC_SP primary key (ID_DMSP)
)
go

/*==============================================================*/
/* Table: DON_HANG                                              */
/*==============================================================*/
create table DON_HANG (
   ID_DH                int                  not null IDENTITY(1,1),
   ID_ND                int                  not null,
   TONG_TIEN_DH         decimal(10,2)        null,
   TRANG_THAI_DH        nvarchar(255)        null CHECK (TRANG_THAI_DH IN ('Chờ xử lý', 'Đang giao', 'Hoàn thành', 'Hủy')),
   NGAY_TAO_DH          datetime             null default getdate(),
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
   ID_GH                int                  not null IDENTITY(1,1),
   ID_ND                int                  not null,
   NGAY_TAO_GH          datetime             null default getdate(),
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
   ID_HA                int                  not null IDENTITY(1,1),
   ID_SP                int                  not null,
   DUONG_DAN_HA         nvarchar(255)        null,
   MO_TA_HA             nvarchar(255)        null,
   NGAY_TAO_HA          datetime             null default getdate(),
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
   ID_ND                int                  not null IDENTITY(1,1),
   TEN_DANG_NHAP        nvarchar(50)         null,
   MAT_KHAU_ND          nvarchar(255)        null,
   EMAIL_ND             nvarchar(100)        null,
   VAI_TRO_ND           bit					 null default 0,
   NGAY_TAO_ND          datetime             null default getdate(),
   constraint PK_NGUOI_DUNG primary key (ID_ND)
)
go

/*==============================================================*/
/* Table: SAN_PHAM                                              */
/*==============================================================*/
create table SAN_PHAM (
   ID_SP                int                  not null IDENTITY(1,1),
   ID_DMSP              int                  not null,
   TEN_SP               nvarchar(50)         null,
   MO_TA_SP             text                 null,
   GIA_SP               decimal(10,2)        null,
   SO_LUONG_SP          int                  null,
   NGAY_TAO_SP          datetime             null default getdate(),
   ANH_DAI_DIEN_SP      nvarchar(255)        null,
   constraint PK_SAN_PHAM primary key (ID_SP)
)
go

/*==============================================================*/
/* Index: DMSP_SP_FK                                            */
/*==============================================================*/
create nonclustered index DMSP_SP_FK on SAN_PHAM (ID_DMSP ASC)
go

/*==============================================================*/
/* Table: THANH_TOAN                                            */
/*==============================================================*/
create table THANH_TOAN (
   ID_THANHTOAN         int                  not null IDENTITY(1,1),
   ID_DH                int                  not null,
   PHUONG_THUC_TT       nvarchar(255)        null,
   TRANG_THAI_TT        nvarchar(255)        null CHECK (TRANG_THAI_TT IN ('Chờ xử lý', 'Thành công', 'Thất bại', 'Đã hủy')),
   NGAY_TT              datetime             null default getdate(),
   SOTIEN_TT            decimal(10,2)        null,
   MA_GIAO_DICH         nvarchar(255)        null,
   constraint PK_THANH_TOAN primary key (ID_THANHTOAN)
)
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

alter table THANH_TOAN
   add constraint FK_THANH_TO_DH_CTDH2_DON_HANG foreign key (ID_DH)
      references DON_HANG (ID_DH)
go



INSERT INTO NGUOI_DUNG (ID_ND, TEN_DANG_NHAP, MAT_KHAU_ND, EMAIL_ND, VAI_TRO_ND, NGAY_TAO_ND)
VALUES 
(1, 'admin1', 'hashed_password_admin1', 'admin1@example.com', 'Admin', '2025-05-01 10:00:00'),
(2, 'khachhang1', 'hashed_password_kh1', 'khachhang1@example.com', 'User', '2025-05-02 12:00:00'),
(3, 'khachhang2', 'hashed_password_kh2', 'khachhang2@example.com', 'User', '2025-05-03 15:00:00');
GO

INSERT INTO DANH_MUC_SP (ID_DMSP, TEN_DMSP, MO_TA_DMSP)
VALUES 
(1, 'Áo thun', 'Áo thun nam và nữ, phong cách trẻ trung'),
(2, 'Quần jeans', 'Quần jeans thời trang, đa dạng kích cỡ'),
(3, 'Phụ kiện', 'Mũ, khăn, thắt lưng');
GO

INSERT INTO SAN_PHAM (ID_SP, ID_DMSP, TEN_SP, MO_TA_SP, GIA_SP, SO_LUONG_SP, NGAY_TAO_SP, ANH_DAI_DIEN_SP)
VALUES 
(1, 1, 'Áo thun trắng', 'Áo thun cotton trắng, size M', 150000.00, 50, '2025-05-01 09:00:00', 'blazerjeans.png'),
(2, 1, 'Áo thun đen', 'Áo thun cotton đen, size L', 150000.00, 30, '2025-05-01 09:00:00', 'couplesummer.png'),
(3, 2, 'Quần jeans xanh', 'Quần jeans nam, size 32', 500000.00, 20, '2025-05-02 10:00:00', 'hapthu.png'),
(4, 3, 'Mũ lưỡi trai', 'Mũ lưỡi trai thời trang', 100000.00, 100, '2025-05-03 11:00:00', 'jacket.png');
GO


INSERT INTO HINH_ANH_SP (ID_HA, ID_SP, DUONG_DAN_HA, MO_TA_HA, NGAY_TAO_HA)
VALUES 
(1, 1, 'blazerjeans.png', 'Ảnh áo thun trắng mặt trước', '2025-05-01 09:00:00'),
(2, 1, 'couplesummer.png', 'Ảnh áo thun trắng mặt sau', '2025-05-01 09:00:00'),
(3, 2, 'hapthu.png', 'Ảnh áo thun đen mặt trước', '2025-05-01 09:00:00'),
(4, 3, 'jacket.png', 'Ảnh quần jeans xanh', '2025-05-02 10:00:00'),
(5, 4, 'jeanandhoodie.png', 'Ảnh mũ lưỡi trai', '2025-05-03 11:00:00');
GO


DELETE FROM HINH_ANH_SP;
GO

DELETE FROM SAN_PHAM;
GO

	BACKUP DATABASE [ICONDEMIN] TO DISK = 'D:\ICONDEMIN.bak';
	GO

	SELECT VAI_TRO_ND, COUNT(*) as Count
FROM NGUOI_DUNG
GROUP BY VAI_TRO_ND;

