<?php
require_once("conexion.php");

$nombre = $_POST["nombre"];
$imgs = addslashes(file_get_contents($_FILES["imgs"]["tmp_name"]));
//(addslashes es para almacenar algo en un string pero que para la introducción en una base de datos necesita escapar de parámetros de base de datos)
//(file_get_contents es para que nos lo extraiga en bits y ["tmp_name] es para recuperar el nombre que tiene la imagen)

$query = "Insert into imagenes(nombre,imgs) values ('$nombre','$imgs')";
$cont = $conexion->query($query);

if ($cont) {
  echo "yes";
} else {
  echo "no";
}
