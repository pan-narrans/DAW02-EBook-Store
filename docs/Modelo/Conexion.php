<?php

require_once('config.php');

class Conexion
{
  public static function conectar()
  {
    return new mysqli(HOSTNAME, USERNAME, PASSWORD, DATABASE);
  }
}
