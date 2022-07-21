CREATE  OR REPLACE FUNCTION PUBLIC."IngresosSalas" (Velacion VARCHAR(50))
RETURNS TABLE  
	(saladevelatorio VARCHAR(50), 
	 serviciosfuneraria VARCHAR(70), 
	 precio DECIMAL(50))
AS $$
BEGIN 
	RETURN QUERY 
		SELECT 
		public.saladevelatorio.saladevelatorio_nombre, public.serviciosfuneraria.serviciofuneraria_descripcion,
		SUM (public.serviciosfuneraria.serviciofuneraria_precio) 
		FROM
		public.saladevelatorio
		INNER JOIN serviciosfuneraria ON serviciosfuneraria.saladevelatorio_id=saladevelatorio.saladevelatorio_id
		WHERE 
		public.saladevelatorio.saladevelatorio_nombre = Velacion
		GROUP BY (public.saladevelatorio.saladevelatorio_nombre, public.serviciosfuneraria.serviciofuneraria_descripcion);
END; 
$$
LANGUAGE 'plpgsql'

select * from "IngresosSalas" ('Sala Pequeña')  
select * from "IngresosSalas" ('Sala Mediana') 
select * from "IngresosSalas" ('Sala Grande')
select * from "IngresosSalas" ('Sala Gigante')