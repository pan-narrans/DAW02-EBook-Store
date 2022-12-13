<?php
$conexion = new mysqli("localhost", "ebookadmin", "ebook", "phpdbprk");

if ($conexion) {
  echo "yes";
} else {
  echo "no";
}
