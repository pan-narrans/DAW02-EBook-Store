<?php

class Controlador
{
  public function registrarUsuario()
  {
    // validar datos
    // registrar
    require_once('Control/Registro.php');
    Registro::registrar();
  }
}
