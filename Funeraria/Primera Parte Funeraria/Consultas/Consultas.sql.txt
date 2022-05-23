/*Primera Consulta*/

SELECT 
CONCAT (difunto_nombre,' ', difunto_apellido) as Nombre_Y_Apellidos,
difunto_horadifunsion, difunto_horaembalsamamiento,
(difunto_horaembalsamamiento - difunto_horadifunsion) as Hora_entre_Difunsion_Y_Embalsamamiento
FROM 
DIFUNTO


/*Segunda Consulta*/

SELECT 
salavelatorio_nombre AS Nombre_de_la_sala, 
COUNT (*) Cantidad_de_difuntos, 
SUM (salavelatorio_precio) Cantidad_Dinero
FROM 
saladevelatorio
GROUP BY 
salavelatorio_nombre;


/*Tercer Consulta*/

SELECT 
servicio_descripcion,
COUNT (difunto.difunto_nombre) CANTIDAD_DE_DIFUNTOS, 
SUM (servicio.servicio_costo) AS GANANCIAS_SERVICIOS
FROM 
public.difunto_servicio INNER JOIN difunto  ON difunto.difunto_id = difunto_servicio.difunto_id
INNER JOIN servicio ON servicio.servicio_id=difunto_servicio.servicio_id

GROUP BY  servicio_descripcion;


/*Cuarta Consulta*/

SELECT
causa_descripcion,
difunto_genero,
COUNT (causa_descripcion)
FROM 
causa
inner join difunto on causa.causa_id = difunto.causa_id 
GROUP BY causa_descripcion, difunto_genero
