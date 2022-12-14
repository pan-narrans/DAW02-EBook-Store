<?php

session_start();

if (isset($_POST['op'])) :
  require_once('Control/Controlador.php');
  switch ($_POST['op']) {
    case 'registrar_usuario':
      $_SESSION["datos_formulario"] = $_POST;
      Controlador::nuevoRegistro();
      break;

    default:
      # code...
      break;
  }
else :
  require_once('Vista/FormRegistro.php');
endif;
