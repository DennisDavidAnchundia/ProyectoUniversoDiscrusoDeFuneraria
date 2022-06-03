


/* Insercion de el nombre de la Cadena Funeraria */
Insert Into cadenafuneraria(cadenafuneraria_id,cadenafuneraria_descripcion)
Values (1, 'Eternidad');

/* Insercion de las ciudades */
Insert Into ciudad(ciudad_id, ciudad_descripcion)
Values (1, 'Manta');

Insert Into ciudad(ciudad_id, ciudad_descripcion)
Values (2, 'Montecristi');

Insert Into ciudad(ciudad_id, ciudad_descripcion)
Values (3, 'Portoviejo');

/* Insercion de los generos */
Insert Into genero(genero_id, genero_descripcion)
Values('1', 'Masculino');

Insert Into genero(genero_id, genero_descripcion)
Values('2', 'Femenino');


/* Insercion del tipo de empleados que hay */
Insert Into empleadotipo(empleadotipo_id,empleadotipo_descripcion)
Values (1, 'Vendedores');

Insert Into empleadotipo(empleadotipo_id,empleadotipo_descripcion)
Values (2, 'Personal Mantenimiento');

/* Insercion de los empleados */
Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(1, '1', '1', '1' , '1', 'Steven Xavier', 'Rivera Jairala', '1319959587', 'El palmar', '2000/02/17','2019/12/20');

Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(2, '1', '1', '1' , '1', 'Santiago Gustavo', 'Moreira Santana', '1317898568', 'Los Esteros', '2001/02/17','2020/02/10');

Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(3, '1', '2', '1' , '2', 'Adriana Carolina', 'Cruz Garcia', '1313689475', 'San Mateo', '1995/07/01','2017/01/29');

Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(4, '1', '2', '2' , '2', 'Angela Patricia', 'Gomez Rodrigez', '1315588472', 'Eloy Alfaro', '1997/11/30','2018/10/18');

Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(5, '1', '2','3 ' , '2', 'Diana Catalina', 'Puerto Navia', '1315522648', 'Via Shopping', '1998/08/09','2020/04/28');

Insert Into empleado(empleado_id, cadenafuneraria_id, empleadotipo_id, ciudad_id , genero_id, empleado_nombre, empleado_apellido,
					empleado_cedula, empleado_direccion, empleado_fechanacimiento, empleado_fechaingreso)
Values(6, '1', '1', '2' , '1', 'Jose Adolfo', 'Palma Anchundia', '1312998478', 'Tarqui', '2000/12/27','2019/05/23');





/* Insercion del tipo de  profesionales que hay */
Insert Into profesionaltipo(profesionaltipo_id, profesionaltipo_descripcion)
Values (1, 'Maquillaje');

Insert Into profesionaltipo(profesionaltipo_id, profesionaltipo_descripcion)
Values (2, 'Embalsamiento');


/* Insercion del tipo de  profesionales que hay */
Insert Into profesional(profesional_id, cadenafuneraria_id, genero_id, ciudad_id, profesionaltipo_id, profesional_nombre, profesional_apellido,
					   profesional_cedula, profesional_fechanacimiento)
Values(1,'1', '1', '1' ,'1', 'Tonny Eduardo', 'Anchundia Quijije', '1316688478', '1994/10/29');

Insert Into profesional(profesional_id, cadenafuneraria_id, genero_id, ciudad_id, profesionaltipo_id, profesional_nombre, profesional_apellido,
					   profesional_cedula, profesional_fechanacimiento)
Values(2,'1', '1', '1' , '1', 'Mauro Entique', 'Perez Mantuano', '1305588145', '1996/02/15');

Insert Into profesional(profesional_id, cadenafuneraria_id, genero_id, ciudad_id, profesionaltipo_id, profesional_nombre, profesional_apellido,
					   profesional_cedula, profesional_fechanacimiento)
Values(3,'1', '1', '2' , '2', 'Jose Mariano', 'Anchundia Mantuano', '1305588145', '1996/02/15');

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
Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(1, 'Infarto');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(2, 'Taquicardia');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(3, 'Cirrosis');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(4, 'Accidente de Transito');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(5, 'Falla Renal');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(6, 'Enfermedad pulmonar');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(7, 'Enfermedad pulmonar');

Insert Into causaFallecido(causafallecido_id, causafallecido_descripcion)
Values(8, 'Cancer Gastrico');


/* Insercion de las Salas de Velacion */
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(1, '1', '1', 'Sala Pequeña', '15x16', '15 de Septiembre', '40', '13:00', 'Sala Basica de Velacion', 
	  '50.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(2, '1', '2', 'Sala Pequeña', '15x16', '15 de Septiembre', '40', ' 13:00', 'Sala Basica de Velacion', 
	  '50.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(3, '1', '3', 'Sala Pequeña', '15x16', '15 de Septiembre', '40', ' 13:00', 'Sala Basica de Velacion', 
	  '50.00');
	  
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(4, '1', '4', 'Sala Mediana', '19x21', '15 de Septiembre', '65', ' 10:00', 'Sala Plata de Velacion ', 
	  '80.00');

Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(5, '1', '5', 'Sala Mediana', '19x21', '15 de Septiembre', '65', ' 10:00', 'Sala Plata de Velacion', 
	  '80.00');
	  
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(6, '1', '6', 'Sala Grande', '22x24', '15 de Septiembre', '80', ' 14:00', 'Sala Gold Lujosa de Velacion', 
	  '120.00');
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(7, '1', '6', 'Sala Grande', '22x24', '15 de Septiembre', '80', ' 14:00', 'Sala Gold Lujosa de Velacion', 
	  '120.00');
	  
	  
Insert Into saladevelatorio(saladevelatorio_id, cadenafuneraria_id, empleado_id, saladevelatorio_nombre, saladevelatorio_saladimension,
						    saladevelatorio_direccion, saladevelatorio_capacidad, saladevelatorio_salahorareserva,
						    saladevelatorio_salaobservacion, saladevelatorio_salaprecio)
Values(8, '1', '6', 'Sala Gigante', '30x28', '15 de Septiembre', '120', ' 18:00', 'Sala Diamon ', 
	  '180.00');


/* Insercion de los Fallecidos */
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(1,'1', '1', '1', '1', '1', 'Carlos Hernan', 'Sierra Torres', '1980/05/06', '2022/01/18', '10:15', '2022/01/18', '12:45',
	   '2');
	  
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(2,'2', '2', '1', '2', '2', 'Rosa Elizabeth', 'Tabares Trujillo', '1975/10/16', '2022/03/01', '7:30', '2022/03/01', '11:45',
	  '4');
	  
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(3,'3', '1', '2', '3',  '3', 'Hugo Alberto', 'Vasquez Sandoval', '1972/09/25', '2021/12/28', '10:30', '2021/12/28', '13:30',
	   '3');
	  
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(4,'4', '2', '3', '4', '4', 'Olga Adriana', 'Valdes Cenencio', '1970/11/08', '2022/03/22', '15:30', '2022/03/22', '17:45',
	   '2');
	   
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(5,'5', '1', '1', '5', '5', 'Fransisco Alfonso', 'Ruiz Perez', '1979/10/15', '2021/11/18', '11:30', '2021/11/18', '12:30',
	   '1');

Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(6,'6', '2', '2', '6', '6', 'Aura Maria', 'Vera Lopez', '1985/07/26', '2022/04/10', '12:00', '2022/04/10', '16:00',
	   '4');
	   
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(7,'7', '1', '2', '7', '6', 'Luis Fransisco', 'Anchundia Lopez', '1984/02/16', '2022/02/10', '12:00', '2022/02/10', '16:00',
	   '4');
	   
Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento,
				    fallecido_diadifunsion, fallecido_horadifunsion, fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,
				    fallecido_rango )
Values(8,'8', '1', '2', '8', '6', 'Juan Alberto', 'Perez Perez', '1995/01/27', '2022/03/04', '15:00', '2022/03/04', '16:00',
	   '1');





/* Insercion de los Servicios */
Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (1, '1', 'Embalsamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (2, '2', 'Embalsamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (3, '3', 'Embalsamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (4, '4', 'Embalsamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (5, '5', 'Acompañamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (6, '1', 'Acompañamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (7, '2', 'Acompañamiento', '300.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (8, '3', 'Servicio de Comedor', '70.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (9, '4', 'Transporte al Cementerio', '250.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (10, '5', 'Cremacion', '500.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (11, '6', 'Venta de Ataud', '200.00');


Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (12, '6' ,  'Bebidas', '50.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (13, '7', 'Venta de Ataud', '200.00');

Insert Into serviciosfuneraria(serviciofuneraria_id, saladevelatorio_id, serviciofuneraria_descripcion, serviciofuneraria_precio)
Values (14, '8' ,  'Bebidas', '50.00');

/* Insercion de los Difunto Servicios*/
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(1,1);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(6,1);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(2,2);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(7,2);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(3,3);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(8,3);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(4,4);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(9,4);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(5,5);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(10,5);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(11,6);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(12,6);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(13,7);
Insert Into servicio_fallecido(serviciofuneraria_id, fallecido_id )
Values(14,8);