<?php

if (isset($_POST['op'])) :
  require_once('Control/Controlador.php');
  switch ($_POST['op']) {
    case 'insertar':
      require_once('Vista/Home.php');
      break;

    default:
      # code...
      break;
  }
else :
  require_once('Vista/FormRegistro.php');
endif;
