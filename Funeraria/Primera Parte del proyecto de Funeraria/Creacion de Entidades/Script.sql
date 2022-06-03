
/*==============================================================*/
/* Table: CADENAFUNERARIA                                       */
/*==============================================================*/
create table CADENAFUNERARIA (
   CADENAFUNERARIA_ID   INT4                 not null,
   CADENAFUNERARIA_DESCRIPCION VARCHAR(20)          not null,
   constraint PK_CADENAFUNERARIA primary key (CADENAFUNERARIA_ID)
);

/*==============================================================*/
/* Index: CADENAFUNERARIA_PK                                    */
/*==============================================================*/
create unique index CADENAFUNERARIA_PK on CADENAFUNERARIA (
CADENAFUNERARIA_ID
);

/*==============================================================*/
/* Table: CAUSAFALLECIDO                                        */
/*==============================================================*/
create table CAUSAFALLECIDO (
   CAUSAFALLECIDO_ID    INT4                 not null,
   CAUSAFALLECIDO_DESCRIPCION VARCHAR(40)          not null,
   constraint PK_CAUSAFALLECIDO primary key (CAUSAFALLECIDO_ID)
);

/*==============================================================*/
/* Index: CAUSAFALLECIDO_PK                                     */
/*==============================================================*/
create unique index CAUSAFALLECIDO_PK on CAUSAFALLECIDO (
CAUSAFALLECIDO_ID
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIUDAD_ID            INT4                 not null,
   CIUDAD_DESCRIPCION   VARCHAR(30)          not null,
   constraint PK_CIUDAD primary key (CIUDAD_ID)
);

/*==============================================================*/
/* Index: CIUDAD_PK                                             */
/*==============================================================*/
create unique index CIUDAD_PK on CIUDAD (
CIUDAD_ID
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADO_ID          INT4                 not null,
   CADENAFUNERARIA_ID   INT4                 not null,
   EMPLEADOTIPO_ID      INT4                 not null,
   GENERO_ID            INT4                 not null,
   CIUDAD_ID            INT4                 not null,
   EMPLEADO_NOMBRE      VARCHAR(40)          not null,
   EMPLEADO_APELLIDO    VARCHAR(40)          not null,
   EMPLEADO_CEDULA      VARCHAR(15)          not null,
   EMPLEADO_DIRECCION   VARCHAR(40)          not null,
   EMPLEADO_FECHANACIMIENTO DATE                 not null,
   EMPLEADO_FECHAINGRESO DATE                 not null,
   constraint PK_EMPLEADO primary key (EMPLEADO_ID)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
EMPLEADO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on EMPLEADO (
CADENAFUNERARIA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on EMPLEADO (
EMPLEADOTIPO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on EMPLEADO (
GENERO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on EMPLEADO (
CIUDAD_ID
);

/*==============================================================*/
/* Table: EMPLEADOTIPO                                          */
/*==============================================================*/
create table EMPLEADOTIPO (
   EMPLEADOTIPO_ID      INT4                 not null,
   EMPLEADOTIPO_DESCRIPCION VARCHAR(25)          not null,
   constraint PK_EMPLEADOTIPO primary key (EMPLEADOTIPO_ID)
);

/*==============================================================*/
/* Index: EMPLEADOTIPO_PK                                       */
/*==============================================================*/
create unique index EMPLEADOTIPO_PK on EMPLEADOTIPO (
EMPLEADOTIPO_ID
);

/*==============================================================*/
/* Table: FALLECIDO                                             */
/*==============================================================*/
create table FALLECIDO (
   FALLECIDO_ID         INT4                 not null,
   CAUSAFALLECIDO_ID    INT4                 not null,
   GENERO_ID            INT4                 not null,
   CIUDAD_ID            INT4                 not null,
   FAMILIAR_ID          INT4                 not null,
   SALADEVELATORIO_ID   INT4                 not null,
   FALLECIDO_NOMBRE     VARCHAR(40)          not null,
   FALLECIDO_APELLIDO   VARCHAR(45)          not null,
   FALLECIDO_FECHANACIMIENTO DATE                 not null,
   FALLECIDO_DIADIFUNSION DATE                 not null,
   FALLECIDO_HORADIFUNSION TIME                 not null,
   FALLECIDO_DIAEMBALSAMAMIENTO DATE                 not null,
   FALLECIOD_HORAEMBALSAMAMIENTO TIME                 not null,
   FALLECIDO_RANGO      VARCHAR(5)           not null,
   constraint PK_FALLECIDO primary key (FALLECIDO_ID)
);

/*==============================================================*/
/* Index: FALLECIDO_PK                                          */
/*==============================================================*/
create unique index FALLECIDO_PK on FALLECIDO (
FALLECIDO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on FALLECIDO (
CAUSAFALLECIDO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on FALLECIDO (
GENERO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on FALLECIDO (
CIUDAD_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on FALLECIDO (
FAMILIAR_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on FALLECIDO (
SALADEVELATORIO_ID
);

/*==============================================================*/
/* Table: FAMILIAR                                              */
/*==============================================================*/
create table FAMILIAR (
   FAMILIAR_ID          INT4                 not null,
   FAMILIAR_NOMBRE      VARCHAR(30)          not null,
   FAMILIAR_APELLIDO    VARCHAR(30)          not null,
   FAMILIAR_CEDULA      VARCHAR(15)          not null,
   constraint PK_FAMILIAR primary key (FAMILIAR_ID)
);

/*==============================================================*/
/* Index: FAMILIAR_PK                                           */
/*==============================================================*/
create unique index FAMILIAR_PK on FAMILIAR (
FAMILIAR_ID
);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO (
   GENERO_ID            INT4                 not null,
   GENERO_DESCRIPCION   VARCHAR(20)          not null,
   constraint PK_GENERO primary key (GENERO_ID)
);

/*==============================================================*/
/* Index: GENERO_PK                                             */
/*==============================================================*/
create unique index GENERO_PK on GENERO (
GENERO_ID
);

/*==============================================================*/
/* Table: PROFESIONAL                                           */
/*==============================================================*/
create table PROFESIONAL (
   PROFESIONAL_ID       INT4                 not null,
   CADENAFUNERARIA_ID   INT4                 not null,
   PROFESIONALTIPO_ID   INT4                 not null,
   GENERO_ID            INT4                 not null,
   CIUDAD_ID            INT4                 not null,
   PROFESIONAL_NOMBRE   VARCHAR(50)          not null,
   PROFESIONAL_APELLIDO VARCHAR(40)          not null,
   PROFESIONAL_FECHANACIMIENTO DATE                 not null,
   PROFESIONAL_CEDULA   VARCHAR(15)          not null,
   constraint PK_PROFESIONAL primary key (PROFESIONAL_ID)
);

/*==============================================================*/
/* Index: PROFESIONAL_PK                                        */
/*==============================================================*/
create unique index PROFESIONAL_PK on PROFESIONAL (
PROFESIONAL_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on PROFESIONAL (
CADENAFUNERARIA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on PROFESIONAL (
PROFESIONALTIPO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on PROFESIONAL (
GENERO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on PROFESIONAL (
CIUDAD_ID
);

/*==============================================================*/
/* Table: PROFESIONALTIPO                                       */
/*==============================================================*/
create table PROFESIONALTIPO (
   PROFESIONALTIPO_ID   INT4                 not null,
   PROFESIONALTIPO_DESCRIPCION VARCHAR(30)          not null,
   constraint PK_PROFESIONALTIPO primary key (PROFESIONALTIPO_ID)
);

/*==============================================================*/
/* Index: PROFESIONALTIPO_PK                                    */
/*==============================================================*/
create unique index PROFESIONALTIPO_PK on PROFESIONALTIPO (
PROFESIONALTIPO_ID
);

/*==============================================================*/
/* Table: SALADEVELATORIO                                       */
/*==============================================================*/
create table SALADEVELATORIO (
   SALADEVELATORIO_ID   INT4                 not null,
   CADENAFUNERARIA_ID   INT4                 not null,
   EMPLEADO_ID          INT4                 not null,
   SALADEVELATORIO_NOMBRE VARCHAR(40)          not null,
   SALADEVELATORIO_SALADIMENSION VARCHAR(15)          not null,
   SALADEVELATORIO_DIRECCION VARCHAR(50)          not null,
   SALADEVELATORIO_CAPACIDAD VARCHAR(5)           not null,
   SALADEVELATORIO_SALAHORARESERVA TIME                 not null,
   SALADEVELATORIO_SALAOBSERVACION VARCHAR(50)          not null,
   SALADEVELATORIO_SALAPRECIO DECIMAL(10)          not null,
   constraint PK_SALADEVELATORIO primary key (SALADEVELATORIO_ID)
);

/*==============================================================*/
/* Index: SALADEVELATORIO_PK                                    */
/*==============================================================*/
create unique index SALADEVELATORIO_PK on SALADEVELATORIO (
SALADEVELATORIO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on SALADEVELATORIO (
CADENAFUNERARIA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on SALADEVELATORIO (
EMPLEADO_ID
);

/*==============================================================*/
/* Table: SERVICIOSFUNERARIA                                    */
/*==============================================================*/
create table SERVICIOSFUNERARIA (
   SERVICIOFUNERARIA_ID INT4                 not null,
   SALADEVELATORIO_ID   INT4                 not null,
   SERVICIOFUNERARIA_DESCRIPCION VARCHAR(50)          not null,
   SERVICIOFUNERARIA_PRECIO DECIMAL              not null,
   constraint PK_SERVICIOSFUNERARIA primary key (SERVICIOFUNERARIA_ID)
);

/*==============================================================*/
/* Index: SERVICIOSFUNERARIA_PK                                 */
/*==============================================================*/
create unique index SERVICIOSFUNERARIA_PK on SERVICIOSFUNERARIA (
SERVICIOFUNERARIA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on SERVICIOSFUNERARIA (
SALADEVELATORIO_ID
);

/*==============================================================*/
/* Table: SERVICIO_FALLECIDO                                    */
/*==============================================================*/
create table SERVICIO_FALLECIDO (
   SERVICIOFUNERARIA_ID INT4                 not null,
   FALLECIDO_ID         INT4                 not null,
   constraint PK_SERVICIO_FALLECIDO primary key (SERVICIOFUNERARIA_ID, FALLECIDO_ID)
);

/*==============================================================*/
/* Index: SERVICIO_FALLECIDO_PK                                 */
/*==============================================================*/
create unique index SERVICIO_FALLECIDO_PK on SERVICIO_FALLECIDO (
SERVICIOFUNERARIA_ID,
FALLECIDO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on SERVICIO_FALLECIDO (
FALLECIDO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on SERVICIO_FALLECIDO (
SERVICIOFUNERARIA_ID
);

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_CADENAFU foreign key (CADENAFUNERARIA_ID)
      references CADENAFUNERARIA (CADENAFUNERARIA_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_EMPLEADO foreign key (EMPLEADOTIPO_ID)
      references EMPLEADOTIPO (EMPLEADOTIPO_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_GENERO foreign key (GENERO_ID)
      references GENERO (GENERO_ID)
      on delete restrict on update restrict;

alter table FALLECIDO
   add constraint FK_FALLECID_RELATIONS_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID)
      on delete restrict on update restrict;

alter table FALLECIDO
   add constraint FK_FALLECID_RELATIONS_FAMILIAR foreign key (FAMILIAR_ID)
      references FAMILIAR (FAMILIAR_ID)
      on delete restrict on update restrict;

alter table FALLECIDO
   add constraint FK_FALLECID_RELATIONS_SALADEVE foreign key (SALADEVELATORIO_ID)
      references SALADEVELATORIO (SALADEVELATORIO_ID)
      on delete restrict on update restrict;

alter table FALLECIDO
   add constraint FK_FALLECID_RELATIONS_CAUSAFAL foreign key (CAUSAFALLECIDO_ID)
      references CAUSAFALLECIDO (CAUSAFALLECIDO_ID)
      on delete restrict on update restrict;

alter table FALLECIDO
   add constraint FK_FALLECID_RELATIONS_GENERO foreign key (GENERO_ID)
      references GENERO (GENERO_ID)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_RELATIONS_CIUDAD foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_RELATIONS_CADENAFU foreign key (CADENAFUNERARIA_ID)
      references CADENAFUNERARIA (CADENAFUNERARIA_ID)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_RELATIONS_PROFESIO foreign key (PROFESIONALTIPO_ID)
      references PROFESIONALTIPO (PROFESIONALTIPO_ID)
      on delete restrict on update restrict;

alter table PROFESIONAL
   add constraint FK_PROFESIO_RELATIONS_GENERO foreign key (GENERO_ID)
      references GENERO (GENERO_ID)
      on delete restrict on update restrict;

alter table SALADEVELATORIO
   add constraint FK_SALADEVE_RELATIONS_CADENAFU foreign key (CADENAFUNERARIA_ID)
      references CADENAFUNERARIA (CADENAFUNERARIA_ID)
      on delete restrict on update restrict;

alter table SALADEVELATORIO
   add constraint FK_SALADEVE_RELATIONS_EMPLEADO foreign key (EMPLEADO_ID)
      references EMPLEADO (EMPLEADO_ID)
      on delete restrict on update restrict;

alter table SERVICIOSFUNERARIA
   add constraint FK_SERVICIO_RELATIONS_SALADEVE foreign key (SALADEVELATORIO_ID)
      references SALADEVELATORIO (SALADEVELATORIO_ID)
      on delete restrict on update restrict;

alter table SERVICIO_FALLECIDO
   add constraint FK_SERVICIO_RELATIONS_FALLECID foreign key (FALLECIDO_ID)
      references FALLECIDO (FALLECIDO_ID)
      on delete restrict on update restrict;

alter table SERVICIO_FALLECIDO
   add constraint FK_SERVICIO_RELATIONS_SERVICIO foreign key (SERVICIOFUNERARIA_ID)
      references SERVICIOSFUNERARIA (SERVICIOFUNERARIA_ID)
      on delete restrict on update restrict;

