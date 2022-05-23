DO
$$
DECLARE
FinalCursor RECORD;
Servicio_Cursor CURSOR FOR SELECT 
servicio_descripcion,
COUNT (difunto.difunto_nombre) Cantidad_de_Difuntos, 
SUM (servicio.servicio_costo) AS Cantidad_de_Servicios
FROM 
public.difunto_servicio INNER JOIN difunto  ON difunto.difunto_id = difunto_servicio.difunto_id
INNER JOIN servicio ON servicio.servicio_id=difunto_servicio.servicio_id

GROUP BY  servicio_descripcion;

BEGIN 
OPEN Servicio_Cursor;
FETCH Servicio_Cursor INTO FinalCursor;
WHILE (FOUND)LOOP
raise NOTICE '
Servicio: %                  Cantidad de Difuntos: %    Ganancias:  %
',
FinalCursor.servicio_descripcion, FinalCursor.Cantidad_de_Difuntos, FinalCursor.Cantidad_de_Servicios;
FETCH Servicio_Cursor INTO FinalCursor;
END LOOP;
END
$$
LANGUAGE 'plpgsql'



