<?php

// ini_set("SMTP","ssl:smtp.gmail.com");
// ini_set("smtp_port","465");tls://smtp.gmail.com with port 587.
// ini_set("SMTP", "tls://smtp.gmail.com ");
// ini_set("smtp_port", "587");
// var_dump(phpinfo());
// ini_set("SMTP", "smtp.gmail.com");
// ini_set("smtp_port", "587");
// ini_set("sendmail_from", "alejandroperez.alvarez96@gmail.com");
// ini_set("sendmail_path", "C:\\xampp\\sendmail.exe -t");
// ini_set("smtp_server", "smtp.gmail.com");
// mail('alejandroperez.alvarez96@gmail.com', 'prueba', 'hey jude');

require_once('config.php');
require_once('Control/Controlador.php');
require_once('Modelo/Modelo.php');

session_start();

$modelo = new Modelo();
$controlador = new Controlador($modelo);

if (isset($_POST['op'])) :
  switch ($_POST['op']) {
    case 'registrar_usuario':
      $_SESSION["datos_formulario"] = $_POST;
      $controlador->registrarUsuario($_POST);
      break;

    default:
      # code...
      break;
  }
else :
  require_once('Vista/form_registro.php');
endif;
