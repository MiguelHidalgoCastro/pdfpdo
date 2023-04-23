En el poc de error1
	- Se puede probar el error 500 si no está habilitada la conexión. 
	¿Cómo probarlo? Creamos la bbdd en local, que es cómo viene la conexión en el modelo
	y no abrimos el driver, por lo que no tendremos acceso y dará un error
	- Se puede probar a insertar un grupo con algo mal, y si algo falla, no hace nada,
	hace rollback
En el poc de error2
	- Se puede probar el error de fk, cambiando el id del profesor o la id
	del reto por uno que no exista