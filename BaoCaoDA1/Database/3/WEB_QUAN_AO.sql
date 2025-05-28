/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/28/2025 12:08:52 AM                        */
/*==============================================================*/


alter table CHI_TIET_DH 
   drop foreign key FK_CHI_TIET_DH_CTDH_DON_HANG;

alter table CHI_TIET_DH 
   drop foreign key FK_CHI_TIET_SP_CTDH_SAN_PHAM;

alter table CHI_TIET_GH 
   drop foreign key FK_CHI_TIET_GH_CTGH_GIO_HANG;

alter table CHI_TIET_GH 
   drop foreign key FK_CHI_TIET_SP_CTGH_SAN_PHAM;

alter table DON_HANG 
   drop foreign key FK_DON_HANG_ND_DH_NGUOI_DU;

alter table GIO_HANG 
   drop foreign key FK_GIO_HANG_ND_GH_NGUOI_DU;

alter table HINH_ANH_SP 
   drop foreign key FK_HINH_ANH_SP_HASP_SAN_PHAM;

alter table SAN_PHAM 
   drop foreign key FK_SAN_PHAM_DMSP_SP_DANH_MUC;


alter table CHI_TIET_DH 
   drop foreign key FK_CHI_TIET_DH_CTDH_DON_HANG;

alter table CHI_TIET_DH 
   drop foreign key FK_CHI_TIET_SP_CTDH_SAN_PHAM;

drop table if exists CHI_TIET_DH;


alter table CHI_TIET_GH 
   drop foreign key FK_CHI_TIET_SP_CTGH_SAN_PHAM;

alter table CHI_TIET_GH 
   drop foreign key FK_CHI_TIET_GH_CTGH_GIO_HANG;

drop table if exists CHI_TIET_GH;

drop table if exists DANH_MUC_SP;


alter table DON_HANG 
   drop foreign key FK_DON_HANG_ND_DH_NGUOI_DU;

drop table if exists DON_HANG;


alter table GIO_HANG 
   drop foreign key FK_GIO_HANG_ND_GH_NGUOI_DU;

drop table if exists GIO_HANG;


alter table HINH_ANH_SP 
   drop foreign key FK_HINH_ANH_SP_HASP_SAN_PHAM;

drop table if exists HINH_ANH_SP;

drop table if exists NGUOI_DUNG;


alter table SAN_PHAM 
   drop foreign key FK_SAN_PHAM_DMSP_SP_DANH_MUC;

drop table if exists SAN_PHAM;

/*==============================================================*/
/* Table: CHI_TIET_DH                                           */
/*==============================================================*/
create table CHI_TIET_DH
(
   ID_CTDH              int not null  comment '',
   ID_SP                int not null  comment '',
   ID_DH                int not null  comment '',
   SO_LUONG_CTDH        int  comment '',
   GIA_CTDH             decimal(10,2)  comment '',
   primary key (ID_CTDH)
);

/*==============================================================*/
/* Table: CHI_TIET_GH                                           */
/*==============================================================*/
create table CHI_TIET_GH
(
   ID_CTGH              int not null  comment '',
   ID_SP                int not null  comment '',
   ID_GH                int not null  comment '',
   SO_LUONG_CTGH        int  comment '',
   primary key (ID_CTGH)
);

/*==============================================================*/
/* Table: DANH_MUC_SP                                           */
/*==============================================================*/
create table DANH_MUC_SP
(
   ID_DMSP              int not null  comment '',
   TEN_DMSP             nvarchar(50)  comment '',
   MO_TA_DMSP           text  comment '',
   primary key (ID_DMSP)
);

/*==============================================================*/
/* Table: DON_HANG                                              */
/*==============================================================*/
create table DON_HANG
(
   ID_DH                int not null  comment '',
   ID_ND                int not null  comment '',
   TONG_TIEN_DH         decimal(10,2)  comment '',
   TRANG_THAI_DH        enum('DANG_CHO_XU_LY','DA_XY_LY','DA_NHAN','DA_HUY')  comment '',
   NGAY_TAO_DH          timestamp  comment '',
   primary key (ID_DH)
);

/*==============================================================*/
/* Table: GIO_HANG                                              */
/*==============================================================*/
create table GIO_HANG
(
   ID_GH                int not null  comment '',
   ID_ND                int not null  comment '',
   NGAY_TAO_GH          timestamp  comment '',
   primary key (ID_GH)
);

/*==============================================================*/
/* Table: HINH_ANH_SP                                           */
/*==============================================================*/
create table HINH_ANH_SP
(
   ID_HA                int not null  comment '',
   ID_SP                int not null  comment '',
   DUONG_DAN_HA         nvarchar(255)  comment '',
   MO_TA_HA             nvarchar(255)  comment '',
   NGAY_TAO_HA          timestamp  comment '',
   primary key (ID_HA)
);

/*==============================================================*/
/* Table: NGUOI_DUNG                                            */
/*==============================================================*/
create table NGUOI_DUNG
(
   ID_ND                int not null  comment '',
   TEN_DANG_NHAP        nvarchar(50)  comment '',
   MAT_KHAU_ND          nvarchar(50)  comment '',
   EMAIL_ND             nvarchar(100)  comment '',
   VAI_TRO_ND           enum('user','admin')  comment '',
   NGAY_TAO_ND          timestamp  comment '',
   primary key (ID_ND)
);

/*==============================================================*/
/* Table: SAN_PHAM                                              */
/*==============================================================*/
create table SAN_PHAM
(
   ID_SP                int not null  comment '',
   ID_DMSP              int not null  comment '',
   TEN_SP               nvarchar(50)  comment '',
   MO_TA_SP             text  comment '',
   GIA_SP               decimal(10,2)  comment '',
   SO_LUONG_SP          int  comment '',
   NGAY_TAO_SP          timestamp  comment '',
   primary key (ID_SP)
);

alter table CHI_TIET_DH add constraint FK_CHI_TIET_DH_CTDH_DON_HANG foreign key (ID_DH)
      references DON_HANG (ID_DH) on delete restrict on update restrict;

alter table CHI_TIET_DH add constraint FK_CHI_TIET_SP_CTDH_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP) on delete restrict on update restrict;

alter table CHI_TIET_GH add constraint FK_CHI_TIET_GH_CTGH_GIO_HANG foreign key (ID_GH)
      references GIO_HANG (ID_GH) on delete restrict on update restrict;

alter table CHI_TIET_GH add constraint FK_CHI_TIET_SP_CTGH_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP) on delete restrict on update restrict;

alter table DON_HANG add constraint FK_DON_HANG_ND_DH_NGUOI_DU foreign key (ID_ND)
      references NGUOI_DUNG (ID_ND) on delete restrict on update restrict;

alter table GIO_HANG add constraint FK_GIO_HANG_ND_GH_NGUOI_DU foreign key (ID_ND)
      references NGUOI_DUNG (ID_ND) on delete restrict on update restrict;

alter table HINH_ANH_SP add constraint FK_HINH_ANH_SP_HASP_SAN_PHAM foreign key (ID_SP)
      references SAN_PHAM (ID_SP) on delete restrict on update restrict;

alter table SAN_PHAM add constraint FK_SAN_PHAM_DMSP_SP_DANH_MUC foreign key (ID_DMSP)
      references DANH_MUC_SP (ID_DMSP) on delete restrict on update restrict;

