# Creación y despliegue de la base de datos en PostgreSQL 


La creación de la base de datos se realizó utilizando el motor de PostgreSQL 14 desplegado mediante contenedores Docker.  
También se utilizó la herramienta pgAdmin 4 para la administración y conexión al motor de base de datos.


## Despliegue del contenedor de PostgreSQL

Para ejecutar el contenedor de PostgreSQL se usó el siguiente comando:

**docker run --name servilimar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14** 

Este comando crea un contenedor con el nombre servilimar, define el usuario, la contraseña y expone el puerto 5432 para la conexión desde otras aplicaciones.



## Despliegue del contenedor de pgAdmin 4

Luego se desplegó la herramienta de administración pgAdmin 4 para gestionar la base de datos:

**docker run --rm -p 5050:80 --link servilimar:servilimar -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4**

El contenedor de pgAdmin queda disponible en el navegador en la dirección:  http://localhost:5050



## Conexión al motor de base de datos

En pgAdmin luego de ingresar usando el email y contraseña anteriores, realizo la conexion con el servidor de mi base de datos con los siguientes datos:

Host name/address: servilimar, Port: 5432, Username: ulimar, Password: ex4men_db

Una vez realizada la conexión, se puede acceder al servidor, crear la base de datos servilimar y ejecutar scripts DDL para crear tablas y DML para insertar datos.



