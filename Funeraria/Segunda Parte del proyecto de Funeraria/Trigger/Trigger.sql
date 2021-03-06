Create or Replace Function ControlHora ()
Returns Trigger As $$
	Declare RemotoControl int; 
Begin 
	Select fallecido_rango ,concat (fallecido_diadifunsion,' ',fallecido_horadifunsion),
	concat (fallecido_diaembalsamamiento,' ',falleciod_horaembalsamamiento)
	Into RemotoControl From fallecido;
	If ( RemotoControl < 48) Then 
		Raise Exception 'El fallecido que intenta ingresar imcumple con el reglamento de restricción
		de no mayor 48 horas.';
	End If;
	Return New ;
End;
$$
Language plpgsql;

Create Trigger ControlHora Before Insert
On fallecido For Each Row 
Execute Procedure ControlHora();

Insert Into fallecido(fallecido_id, causafallecido_id , genero_id, ciudad_id , saladevelatorio_id, familiar_id, 
fallecido_nombre, fallecido_apellido, fallecido_fechanacimiento, fallecido_diadifunsion, fallecido_horadifunsion,
 fallecido_diaembalsamamiento, falleciod_horaembalsamamiento,fallecido_rango )
Values(9,'3', '1', '2', '3',  '3', 'Hugo Alberto', 'Vasquez Sandoval', '1972/09/25', '2021/12/28', '12:00', 
'2021/12/30', '13:00',
	   '49');