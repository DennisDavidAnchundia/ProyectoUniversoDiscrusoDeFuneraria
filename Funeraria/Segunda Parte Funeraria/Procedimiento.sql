CREATE OR REPLACE FUNCTION PUBLIC."IngresosSalas" (Salas VARCHAR(50))
RETURNS TABLE 
(saladevelatorio VARCHAR(50), servicio VARCHAR(70), costo DECIMAL(50))
AS $BODY$
BEGIN 
RETURN QUERY 
SELECT 
public.saladevelatorio.salavelatorio_nombre,
public.servicio.servicio_descripcion,
SUM (public.servicio.servicio_costo) 
FROM
public.saladevelatorio
INNER JOIN servicio ON servicio.saladevelatorio_id=saladevelatorio.saladevelatorio_id
WHERE 
public.saladevelatorio.salavelatorio_nombre = Salas
GROUP BY (public.saladevelatorio.salavelatorio_nombre, public.servicio.servicio_descripcion);
END; 
$BODY$
LANGUAGE 'plpgsql'


--Llamar la funcion--
select * from "IngresosSalas" ('Sala Pequeña')

--Llamar la funcion--
select * from "IngresosSalas" ('Sala Mediana')

--Llamar la funcion--
select * from "IngresosSalas" ('Sala Grande')