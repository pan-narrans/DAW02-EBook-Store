<?php

require_once('config.php');
require_once('Control/Controlador.php');
require_once('Modelo/Modelo.php');

session_start();

$modelo      = new Modelo();
$controlador = new Controlador($modelo);

if (isset($_POST['op'])) :
  switch ($_POST['op']) {
    case 'registrar_usuario':
      $_SESSION["datos_formulario"] = $_POST;
      $controlador->registrarUsuario($_POST);
      break;
    case 'mostrar_acceso':
      require_once('Vista/page_acceso.php');
    default:
      # code...
      break;
  }
else :
  require_once('Vista/home.php');
endif;
