CREATE function ControlHora ()
returns trigger as $ControlHora$
declare RemotoControl int; begin 
select fallecido_rango ,concat (fallecido_diadifunsion,' ',fallecido_horadifunsion),
concat (fallecido_diaembalsamamiento,' ',falleciod_horaembalsamamiento)
into RemotoControl from fallecido;
if ( RemotoControl < 48) then 
raise exception 'El fallecido que intenta ingresar imcumple con el reglamento de restricción
de no mayor 48 horas.';
end if;
return new ;
end;
$ControlHora$
language plpgsql;

create trigger ControlHora before insert
on fallecido for each row 
execute procedure ControlHora();

Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, 
fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento, fallecido_diadifunsion, fallecido_horadifunsion,
 fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,fallecido_rango )
Values(9,'3', '1', '2', '3',  '3', 'Hugo Alberto', 'Vasquez Sandoval', '1972/09/25', '2021/12/28', '12:00', 
'2021/12/30', '13:00',
	   '49');