## Correr el script SQL para PostgresSQL

1.- Entramos en nuestro shell con el siguiente comando.

       $ sudo su - postgres

2.- Luego crearemos el usuario ` odoo` con el siguiente comando

       $ createuser -s -P -e odoo

3.- Posterior entramos a la carpeta `Podemos/db/postgresql` que se encuentra dentro del proyecto

4.- Ejecutamos el script podemos.sql como usuario 'odoo', password
    'password', en caso de generar algun error se deben colocar las rutas
    completas para importar la informacion de cada una de las tablas de
    este proyecto.

## Instalación de Librerias de Python en una virtualenvs

Instale las dependencias de librerías python con `pip3` usando el archivo de requerimientos.

	$ pip3 install -r requirements.txt

## Se crea un super usuario par nuestro proyecto

Se ejecuta el siguiente comando `python`.

    $ python manager.py createsuperuser

## Para levantar nuestro servidor Django

Se ejecuta el siguiente comando `python`.

    $ python manager.py runserver
