# script-de-usuarios
#Definición del script:

Este script está creado para poder extraer información de los usuarios como el directorio donde trabaja, la información sobre la última conexión o el espacio que ocupa en el disco. También se pueden hacer algunas modificaciones en ellos (aunque estas opciones solo funcionan con el root), como cambiar la contraseña o eliminar el usuario seleccionado.

![vistadelmenu](https://user-images.githubusercontent.com/72501170/116113077-73af6580-a6b8-11eb-8f8a-a9b9bab09fae.png)

##Ejemplos de funcionamiento como usuario normal:

![ultconexion](https://user-images.githubusercontent.com/72501170/116114178-69da3200-a6b9-11eb-9c30-8d3e0e0907d4.png)
![espacio](https://user-images.githubusercontent.com/72501170/116114187-6c3c8c00-a6b9-11eb-8c69-073b559fb1c4.png)

##Ejemplo de funcionamiento como root:

![contrasena](https://user-images.githubusercontent.com/72501170/116114206-71014000-a6b9-11eb-9f79-eb45098d389c.png)
![borrar](https://user-images.githubusercontent.com/72501170/116114212-72326d00-a6b9-11eb-8161-9aae4a74cab9.png)


##Código del script:

#!/bin/bash

#Autora: Ana Montejo

#Versión 1.0

#Parametros

usuario=S1

#Script

read -p "Introduzca el nombre de usuario: " usuario

echo

echo "****************************"

echo

echo "Información sobre el usuario"

echo

echo "****************************"

echo

echo "1-Identificación del usuario"

echo "2-Ultima conexion"

echo "3-Grupos a los que pertenece"

echo "4-Espacio en disco"

echo "5-Ver contenido del directorio"

echo "6-Cambiar contraseña. Solo root"

echo "7-Eliminar usuario. Solo root"

echo "8-Conectarse como $usuario"

echo "9-Salir"

echo

read -p "Elija una opcion: " opcion

case $opcion in

1)	id $usuario
	
;;

2)	lastlog -u $usuario
	
;;

3)  groups $usuario

;;

4)  du -h /home/$usuario |tail -1

;;

5)  ls /home/$usuario

;;

6)	passwd $usuario

;;

7)	deluser $usuario

;;

8)	su - $usuario

;;

9)	exit 1

;;

esac
