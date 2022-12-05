<?php

class Controlador
{
  public static function nuevoRegistro()
  {
    // validar datos
    // registrar
    require_once('Control/Registro.php');

    if (true) :
      // datos validos
      require_once('Modelo/Modelo.php');
      require_once('Modelo/Usuario.php');

      // Guardar el usuario en sesión
      $_SESSION['usuario'] = new Usuario(
        $_POST['usuario'],
        $_POST['email'],
        2
      );

      // Insertar en tabla usuarios.
      // TODO: No hardcodear el tipo
      (new Modelo(DB_TABLA_USUARIOS))->insert(
        (object) array(
          USER_NICK => $_POST['usuario'],
          USER_MAIL => $_POST['email'],
          USER_TIPO => 2
        )
      );

      // Insertar en tabla passwords
      (new Modelo(DB_TABLA_CONTRASEÑAS))->insert(
        (object) array(
          PASS_ID         => $_SESSION['usuario']->getId(),
          PASS_CONTRASEÑA => $_POST['password_1']
        )
      );

      // Insertar en tabla datos
      (new Modelo(DB_TABLA_DATOS))->insert(
        (object) array(
          DATOS_ID         => $_SESSION['usuario']->getId(),
          DATOS_NOMBRE     => $_POST['nombre'],
          DATOS_APELLIDOS  => $_POST['apellidos'],
          DATOS_GENERO     => isset($_POST['genero']) ? $_POST['genero'] : null,
          DATOS_CUMPLEAÑOS => isset($_POST['fecha_nacimiento']) ? $_POST['fecha_nacimiento'] : null,
          DATOS_DIRECCION  => isset($_POST['direccion']) ? $_POST['direccion'] : null,
          DATOS_PAIS       => isset($_POST['pais']) ? $_POST['pais'] : null,
          DATOS_TARJETA    => null,
        )
      );


    else :
    // datos no validos
    endif;
  }
}
