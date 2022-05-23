CREATE or replace function ControlHora ()
returns trigger as $ControlHora$
declare 
Inicio timestamp;
Fin timestamp;
Hora int;
begin 
select difunto_instante ,concat (difunto_diadifunsion,' ',difunto_horadifunsion),
concat (difunto_diaembalsamamiento,' ',difunto_horaembalsamamiento)
into Hora, Inicio,Fin from difunto;
if ( Hora < 48) then 
raise exception 'No se puede realizar el embalsamiento';
end if;
return new ;
end;
$ControlHora$
language plpgsql;

--Create--
create trigger tiempoembal before insert
on difunto for each row 
execute procedure ControlHora();


Insert Into difunto(difunto_id, familiar_id, causa_id, saladevelatorio_id, difunto_nombre, difunto_apellido, difunto_genero,
				    difunto_fechnacimiento, difunto_diadifunsion, difunto_horadifunsion, difunto_diaembalsamamiento,
				    difunto_horaembalsamamiento, difunto_instante)
Values(6,'5', '5', '5', 'Paul', ' Perez', 'Masculino', '1979/10/15', '2021/11/10', '15:00', '2021/11/12',
	   '16:00', '49');
