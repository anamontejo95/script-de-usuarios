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
1)
	id $usuario
;;
2)
	lastlog -u $usuario
;;
3)
	groups $usuario
;;
4)
	du -h /home/$usuario |tail -1
;;
5)
	ls /home/$usuario
;;
6)
	passwd $usuario
;;
7)
	deluser $usuario
;;
8)
	su - $usuario
;;
9)
	exit 1
;;
esac
