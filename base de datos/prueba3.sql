/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     8/25/2017 5:37:00 PM                         */
/*==============================================================*/


drop table if exists article;

drop table if exists bussine;

drop table if exists groupproduct;

drop table if exists registeruser;

drop table if exists section;

drop table if exists typeuser;

drop table if exists user;

/*==============================================================*/
/* Table: article                                               */
/*==============================================================*/
create table article
(
   articleID            int not null auto_increment,
   seccionID            int,
   nameAr               varchar(50),
   codigoAr             varchar(100),
   precyAr              decimal,
   primary key (articleID)
);

/*==============================================================*/
/* Table: bussine                                               */
/*==============================================================*/
create table bussine
(
   bussineId            int not null auto_increment,
   nombreBu             varchar(50),
   primary key (bussineId)
);

/*==============================================================*/
/* Table: groupproduct                                          */
/*==============================================================*/
create table groupproduct
(
   groupID              int not null auto_increment,
   bussineId            int,
   nameGroup            varchar(50),
   primary key (groupID)
);

/*==============================================================*/
/* Table: registeruser                                          */
/*==============================================================*/
create table registeruser
(
   userRegister         int not null auto_increment,
   typeUserID           int,
   userID               int,
   bussineId            int,
   primary key (userRegister)
);

/*==============================================================*/
/* Table: section                                               */
/*==============================================================*/
create table section
(
   seccionID            int not null auto_increment,
   groupID              int,
   nameSeccion          varchar(50),
   primary key (seccionID)
);

/*==============================================================*/
/* Table: typeuser                                              */
/*==============================================================*/
create table typeuser
(
   typeUserID           int not null auto_increment,
   nameType             varchar(50),
   primary key (typeUserID)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   userID               int not null auto_increment,
   firtNameUser         varchar(50),
   lastNameUser         varchar(50),
   emailUser            varchar(50),
   tipoUser             varchar(50),
   primary key (userID)
);

alter table article add constraint FK_RELATIONSHIP_4 foreign key (seccionID)
      references section (seccionID);

alter table groupproduct add constraint FK_RELATIONSHIP_6 foreign key (bussineId)
      references bussine (bussineId);

alter table registeruser add constraint FK_RELATIONSHIP_1 foreign key (typeUserID)
      references typeuser (typeUserID);

alter table registeruser add constraint FK_RELATIONSHIP_2 foreign key (userID)
      references user (userID);

alter table registeruser add constraint FK_RELATIONSHIP_5 foreign key (bussineId)
      references bussine (bussineId);

alter table section add constraint FK_RELATIONSHIP_3 foreign key (groupID)
      references groupproduct (groupID);

