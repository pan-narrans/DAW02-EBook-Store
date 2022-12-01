<?php
  echo 'Hola';

if (isset($_POST['op'])) :
  echo 'tenemos operación disponible';
  switch ($_POST['op']) {
    case 'insertar':
      require_once('Vista/Home.php');
      echo 'INSERTAMOS';
      break;

    default:
      # code...
      break;
  }
else :
  echo 'no post';
  require_once('Vista/FormRegistro.php');
endif;
