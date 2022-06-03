Do  $$ Declare FinalCursor record;
Servicio_Cursor Cursor For Select serviciofuneraria_descripcion,
Count (fallecido.fallecido_nombre) Cantidad_de_Fallecido, 
Sum (serviciosfuneraria.serviciofuneraria_precio) As Cantidad_de_Servicios
From servicio_fallecido 
Inner Join fallecido  on fallecido.fallecido_id = servicio_fallecido.fallecido_id
Inner Join serviciosfuneraria on serviciosfuneraria.serviciofuneraria_id=servicio_fallecido.serviciofuneraria_id
Group By  serviciofuneraria_descripcion
Order By serviciofuneraria_descripcion;
Begin 
Open Servicio_Cursor;
Fetch Servicio_Cursor Into FinalCursor;
While (Found)Loop
Raise Notice 'Nombre de Servicio: %          Cantidad de Fallecidos: %     Ganancias de los Servicios:  %',
FinalCursor.serviciofuneraria_descripcion, FinalCursor.Cantidad_de_Fallecido, FinalCursor.Cantidad_de_Servicios;
Fetch Servicio_Cursor Into FinalCursor;
End Loop;
End
$$
Language 'plpgsql'