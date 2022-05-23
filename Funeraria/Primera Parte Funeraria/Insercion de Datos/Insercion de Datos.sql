/* Insercion de el nombre de la Cadena Funeraria */
Insert Into cadena_funeraria(cadenaf_id,cadenaf_nombre)
Values (1, 'Eternidad');

/* Insercion del tipo de empleados que hay */
Insert Into tipo_empleado(tipoempleado_id,tipoempleado_descripcion)
Values (1, 'Vendedores');

Insert Into tipo_empleado(tipoempleado_id,tipoempleado_descripcion)
Values (2, 'Personal Mantenimiento');

/* Insercion de los empleados */
Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(1, '1', '1', 'Steven Xavier', 'Rivera Jairala', '1319959587', 'El palmar', '2000/02/17','2019/12/20');

Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(2, '1', '1', 'Santiago Gustavo', 'Moreira Santana', '1317898568', 'Los Esteros', '2001/02/17','2020/02/10');

Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(3, '1', '2', 'Adriana Carolina', 'Cruz Garcia', '1313689475', 'San Mateo', '1995/07/01','2017/01/29');

Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(4, '1', '2', 'Angela Patricia', 'Gomez Rodrigez', '1315588472', 'Tarqui', '1997/11/30','2018/10/18');

Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(5, '1', '1', 'Diana Catalina', 'Puerto Navia', '1315522648', 'San Juan', '1998/08/09','2020/04/28');

Insert Into empleado(empleado_id, cadenaf_id, tipoempleado_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direcion, empleado_fechanacimiento, empleado_ingreso)
Values(6, '1', '2', 'Jose Adolfo', 'Palma Anchundia', '1312998478', 'Tarqui', '2000/12/27','2019/05/23');


/* Insercion del tipo de  profesionales que hay */
Insert Into tipo_profesional(tipoprofesional_id, tipoprofesional_descripcion)
Values (1, 'Maquillaje');

Insert Into tipo_profesional(tipoprofesional_id, tipoprofesional_descripcion)
Values (2, 'Embalsamiento');


/* Insercion del tipo de  profesionales que hay */
Insert Into profesional(profesional_id, cadenaf_id, tipoprofesional_id, profesional_nombre, profesional_apellido,
					   profesional_cedula, profesional_fechanacimiento)
Values(1,'1', '1', 'Tonny Eduardo', 'Anchundia Quijije', '1316688478', '1994/10/29');

Insert Into profesional(profesional_id, cadenaf_id, tipoprofesional_id, profesional_nombre, profesional_apellido,
					   profesional_cedula, profesional_fechanacimiento)
Values(2,'1', '1', 'Mauro Entique', 'Perez Mantuano', '1305588145', '1996/02/15');


/* Insercion de los familiares */
Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(1, 'William Efrain', 'Abella Herrera', '1317630733');

Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(2, 'Maria Amparo', 'Acosta Aragon', '1301054780');

Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(3, 'Irma Piedad', 'Arango Gaviria', '1317945996');

Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(4, 'Luis Evelio', 'Alvarez Jaramillo', '1301053663');

Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(5, 'Sara Martha', 'Anchundia Anchundia', '1305547895');

Insert Into familiar(familiar_id, familiar_nombre, familiar_apellido, familiar_cedula)
values(6, 'Juana Olivia', 'Perez Reyes', '1307841253');

/* Insercion de las causas de muerte */
Insert Into causa(causa_id, causa_descripcion)
Values(1, 'Infarto');

Insert Into causa(causa_id, causa_descripcion)
Values(2, 'Infarto');

Insert Into causa(causa_id, causa_descripcion)
Values(3, 'Accidente de Transito');

Insert Into causa(causa_id, causa_descripcion)
Values(4, 'Accidente de Transito');

Insert Into causa(causa_id, causa_descripcion)
Values(5, 'Enfermedad pulmonar');

Insert Into causa(causa_id, causa_descripcion)
Values(6, 'Enfermedad pulmonar');


/* Insercion de las Salas de Velacion */
Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(1, '1', '1', 'Sala Pequeña', '10x16', '15 de Septiembre', '20', '2022/05/20 13:00', 'Comoda y Reconfortante', 
	  '50.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(2, '1', '2', 'Sala Pequeña', '10x16', '15 de Septiembre', '20', '2022/05/20 13:00', 'Comoda y Reconfortante', 
	  '50.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(3, '1', '3', 'Sala Pequeña', '10x16', '15 de Septiembre', '20', '2022/05/20 13:00', 'Comoda y Reconfortante', 
	  '50.00');
	  
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(4, '1', '4', 'Sala Mediana', '13x18', '15 de Septiembre', '40', '2022/05/20 10:00', 'Agradable y Limpia', 
	  '80.00');

Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(5, '1', '5', 'Sala Mediana', '13x18', '15 de Septiembre', '40', '2022/05/20 10:00', 'Agradable y Limpia', 
	  '80.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenaf_id, empleado_id, salavelatorio_nombre, salavelatorio_dimension,
						    salavelatorio_direccion, salavelatorio_capacidad, salavelatorio_horareserva,
						    salavelatorio_observacion, salavelatorio_precio)
Values(6, '1', '6', 'Sala Grande', '16x22', '15 de Septiembre', '65', '2022/05/20 14:00', 'Sala de Lujo', 
	  '120.00');

/* Insercion de los difuntos */
Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				     difunto_horaembalsamamiento, difunto_instante)
Values(1,'1', '1', '1', 'Carlos Hernan', 'Sierra Torres', 'Masculino', '1980/05/06', '2022/01/18', '10:15', '2022/01/18',
	   '12:45', '2');
	  
Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				     difunto_horaembalsamamiento, difunto_instante)
Values(2,'2', '2', '1', 'Rosa Elizabeth', 'Tabares Trujillo', 'Femenino', '1975/10/16', '2022/03/01', '7:30', '2022/03/01',
	  '11:45', '4');
	  
Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				     difunto_horaembalsamamiento, difunto_instante)
Values(3,'3', '3', '3', 'Hugo Alberto', 'Vasquez Sandoval', 'Masculino', '1972/09/25', '2021/12/28', '10:30', '2021/12/28',
	   '13:30', '3');
	  
Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				     difunto_horaembalsamamiento, difunto_instante)
Values(4,'4', '4', '4', 'Olga Adriana', 'Valdes Cenencio', 'Femenino', '1970/11/08', '2022/03/22', '15:30', '2022/03/22',
	   '17:45', '2');
	   
Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				    difunto_horaembalsamamiento, difunto_instante)
Values(5,'5', '5', '5', 'Fransisco Alfonso', 'Ruiz Perez', 'Masculino', '1979/10/15', '2021/11/18', '11:30', '2021/11/18',
	   '12:30', '1');

Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				    difunto_horaembalsamamiento, difunto_instante)
Values(6,'6', '6', '6', 'Aura Maria', 'Vera Lopez', 'Femenino', '1985/07/26', '2022/04/10', '12:00', '2022/04/10',
	   '16:00', '4');


/* Insercion de los Servicios */
Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (1, '1', 'Embalsamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (2, '2', 'Embalsamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (3, '3', 'Embalsamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (4, '4', 'Embalsamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (5, '5', 'Acompañamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (6, '1', 'Acompañamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (7, '2', 'Acompañamiento', '300.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (8, '3', 'Servicio de Comedor', '70.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (9, '4', 'Transporte al Cementerio', '250.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (10, '5', 'Cremacion', '500.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (11, '6', 'Venta de Ataud', '200.00');

Insert Into servicio(servicio_id, saladevelatorio_id, servicio_descripcion, servicio_costo)
Values (12, null ,  'Bebidas', '0');

/* Insercion de los Difunto Servicios*/
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(1,1)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(1,6)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(2,2)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(2,7)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(3,3)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(3,8)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(4,4)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(4,9)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(5,5)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(5,10)
Insert Into difunto_servicio(difunto_id, servicio_id)
Values(6,11)
