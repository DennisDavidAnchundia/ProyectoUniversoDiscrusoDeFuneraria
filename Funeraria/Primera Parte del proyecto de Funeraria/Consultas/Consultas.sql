/*Primera Consulta*/

SELECT 
CONCAT (fallecido_nombre,' ', fallecido_apellido) as Nombre__Apellidos,
fallecido_horadifunsion, falleciod_horaembalsamamiento,
(falleciod_horaembalsamamiento - fallecido_horadifunsion) as Hora_entre_Difunsion_Y_Embalsamamiento
FROM 
fallecido


/*Segunda Consulta*/

SELECT 
saladevelatorio_nombre AS Nombre_de_Sala, 
COUNT (*) Cantidad_Fallecido, 
SUM (saladevelatorio_salaprecio) Cantidad_Dinero
FROM 
saladevelatorio
GROUP BY 
saladevelatorio_nombre;


/*Tercer Consulta*/

SELECT 
serviciofuneraria_descripcion,
COUNT (fallecido.fallecido_nombre) Cantidad_Fallecidos, 
SUM (serviciosfuneraria.serviciofuneraria_precio) AS Ganancias_de_Servicios
FROM 
public.servicio_fallecido INNER JOIN fallecido  ON fallecido.fallecido_id = servicio_fallecido.fallecido_id
INNER JOIN serviciosfuneraria ON serviciosfuneraria.serviciofuneraria_id=servicio_fallecido.serviciofuneraria_id

GROUP BY  serviciofuneraria_descripcion;


/*Cuarta Consulta*/

SELECT
causafallecido_descripcion,
genero_descripcion,
COUNT (causafallecido_descripcion)
FROM 
fallecido
inner join genero on genero.genero_id = fallecido.genero_id
inner join causafallecido on causafallecido.causafallecido_id = fallecido.causafallecido_id
GROUP BY causafallecido_descripcion, genero_descripcion