<?php

require_once('config.php');

class Conexion
{
  public static function conectar()
  {
    return new mysqli(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
  }
}
