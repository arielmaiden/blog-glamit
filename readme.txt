-lenguaje utilizado: PHP
-Motor de base de datos usado: mysql
-framework utilizando: zend 1
-Librerias: JQuery, Bootstrap 3.


1) carpeta trunk: 
contiene los archivos para el frontend del sitio, en donde se muestran las publicaciones creadas por los usuarios.
inicialmente no contiene publicaciones.

2) carpeta trunk_backend:
contiene los archivos para publicar y administrar las publicaciones.

con usuario: arielmaiden@gmail.com
clave: 1234
es un usuario administrador que puede publicar/despublicar las publicaciones creadas por los cargadores.

con usuario: arblengino@yahoo.com.ar
clave: 1234
es un usuario cargador que puede crear publicaciones que se mostraran en el front.
Por default al crear una publicacion ya aparece en el front, luego el rol administrador puede deshabilitarla si lo desea.


En el backend hay un abm de publicaciones y un listado de usuarios disponibles en el sistema.

3) el cargador a registrarse queda como usuario desactivado, hasta que confirma el mail que le llegó a su correo.

/trunk_backend/application/configs/application.ini
el entorno por default que van a estar usando es 'development'
dentro de ese entorno setear la constante SERVER_SMTP para tener forma de enviar los mails de registro.

Sino lo tienen hay que setear en 1 el campo estado del usuario creado en la tabla usr_usuario para poder ingresar al sistema.

-------

El archivo bloglamit.zip contiene los dos trunk a descomprimir en una carpeta como:
/var/www/html/bloglamit/*

donde var/www/html es la carpeta utiilzado por el apache para los sistemas.

-------
el archivo bloglamit_2020-03-20.sql contiene la exportacion de la bd llamada: 'bloglamit'