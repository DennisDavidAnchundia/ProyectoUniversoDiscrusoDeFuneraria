/*==============================================================*/
/* Table: CADENA_FUNERARIA                                      */
/*==============================================================*/
create table CADENA_FUNERARIA (
   CADENAF_ID           INT4                 not null,
   CADENAF_NOMBRE       VARCHAR(50)          not null,
   constraint PK_CADENA_FUNERARIA primary key (CADENAF_ID)
);


/*==============================================================*/
/* Table: CAUSA                                                 */
/*==============================================================*/
create table CAUSA (
   CAUSA_ID             SERIAL               not null,
   CAUSA_DESCRIPCION    VARCHAR(50)          not null,
   constraint PK_CAUSA primary key (CAUSA_ID)
);


/*==============================================================*/
/* Table: DIFUNTO                                               */
/*==============================================================*/
create table DIFUNTO (
   DIFUNTO_ID           SERIAL               not null,
   FAMILIAR_ID          INT4                 not null,
   CAUSA_ID             INT4                 not null,
   SALADEVELATORIO_ID   INT4                 not null,
   DIFUNTO_NOMBRE       VARCHAR(50)          not null,
   DIFUNTO_APELLIDO     VARCHAR(50)          not null,
   DIFUNTO_GENERO       VARCHAR(20)          not null,
   DIFUNTO_FECHNACIMIENTO DATE                 not null,
   DIFUNTO_DIADIFUNSION DATE                 not null,
   DIFUNTO_HORADIFUNSION TIME                 not null,
   DIFUNTO_DIAEMBALSAMAMIENTO DATE                 not null,
   DIFUNTO_HORAEMBALSAMAMIENTO TIME                 not null,
   DIFUNTO_INSTANTE     VARCHAR(20)          not null,
   constraint PK_DIFUNTO primary key (DIFUNTO_ID)
);

/*==============================================================*/
/* Table: DIFUNTO_SERVICIO                                      */
/*==============================================================*/
create table DIFUNTO_SERVICIO (
   SERVICIO_ID          INT4                 not null,
   DIFUNTO_ID           INT4                 not null,
   constraint PK_DIFUNTO_SERVICIO primary key (SERVICIO_ID, DIFUNTO_ID)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADO_ID          SERIAL               not null,
   CADENAF_ID           INT4                 not null,
   TIPOEMPLEADO_ID      INT4                 not null,
   EMPLEADO_NOMBRE      VARCHAR(50)          not null,
   EMPLEADO_APELLIDO    VARCHAR(50)          not null,
   EMPLEADO_CEDULA      CHAR(20)             not null,
   EMPLEADO_DIRECION    VARCHAR(60)          not null,
   EMPLEADO_FECHANACIMIENTO DATE                 not null,
   EMPLEADO_INGRESO     DATE                 not null,
   constraint PK_EMPLEADO primary key (EMPLEADO_ID)
);


/*==============================================================*/
/* Table: FAMILIAR                                              */
/*==============================================================*/
create table FAMILIAR (
   FAMILIAR_ID          SERIAL               not null,
   FAMILIAR_NOMBRE      VARCHAR(50)          not null,
   FAMILIAR_APELLIDO    VARCHAR(50)          not null,
   FAMILIAR_CEDULA      VARCHAR(15)          not null,
   constraint PK_FAMILIAR primary key (FAMILIAR_ID)
);

/*==============================================================*/
/* Table: PROFESIONAL                                           */
/*==============================================================*/
create table PROFESIONAL (
   PROFESIONAL_ID       SERIAL               not null,
   CADENAF_ID           INT4                 not null,
   TIPOPROFESIONAL_ID   INT4                 not null,
   PROFESIONAL_NOMBRE   VARCHAR(40)          not null,
   PROFESIONAL_APELLIDO VARCHAR(40)          not null,
   PROFESIONAL_CEDULA   VARCHAR(15)          not null,
   PROFESIONAL_FECHANACIMIENTO CHAR(11)             not null,
   constraint PK_PROFESIONAL primary key (PROFESIONAL_ID)
);

/*==============================================================*/
/* Table: SALADEVELATORIO                                       */
/*==============================================================*/
create table SALADEVELATORIO (
   SALADEVELATORIO_ID   SERIAL               not null,
   CADENAF_ID           INT4                 not null,
   EMPLEADO_ID          INT4                 not null,
   SALAVELATORIO_NOMBRE VARCHAR(50)          not null,
   SALAVELATORIO_DIMENSION VARCHAR(40)          not null,
   SALAVELATORIO_DIRECCION VARCHAR(70)          not null,
   SALAVELATORIO_CAPACIDAD VARCHAR(50)          not null,
   SALAVELATORIO_HORARESERVA DATE                 not null,
   SALAVELATORIO_OBSERVACION VARCHAR(100)         not null,
   SALAVELATORIO_PRECIO DECIMAL(50)          not null,
   constraint PK_SALADEVELATORIO primary key (SALADEVELATORIO_ID)
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   SERVICIO_ID          SERIAL               not null,
   SALADEVELATORIO_ID   INT4                     null,
   SERVICIO_DESCRIPCION VARCHAR(70)          not null,
   SERVICIO_COSTO       DECIMAL(50)          not null,
   constraint PK_SERVICIO primary key (SERVICIO_ID)
);


/*==============================================================*/
/* Table: TIPO_EMPLEADO                                         */
/*==============================================================*/
create table TIPO_EMPLEADO (
   TIPOEMPLEADO_ID      INT4                 not null,
   TIPOEMPLEADO_DESCRIPCION VARCHAR(70)          not null,
   constraint PK_TIPO_EMPLEADO primary key (TIPOEMPLEADO_ID)
);


/*==============================================================*/
/* Table: TIPO_PROFESIONAL                                      */
/*==============================================================*/
create table TIPO_PROFESIONAL (
   TIPOPROFESIONAL_ID   INT4                 not null,
   TIPOPROFESIONAL_DESCRIPCION VARCHAR(70)          not null,
   constraint PK_TIPO_PROFESIONAL primary key (TIPOPROFESIONAL_ID)
);