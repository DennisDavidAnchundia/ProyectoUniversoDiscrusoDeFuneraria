/*Script de Reporte Funeraria*/


SELECT 
servicio_descripcion,
COUNT (difunto.difunto_nombre) CANTIDAD_DE_DIFUNTOS, 
SUM (servicio.servicio_costo) AS GANANCIAS_SERVICIOS
FROM 
public.difunto_servicio INNER JOIN difunto  ON difunto.difunto_id = difunto_servicio.difunto_id
INNER JOIN servicio ON servicio.servicio_id=difunto_servicio.servicio_id

GROUP BY  servicio_descripcion;