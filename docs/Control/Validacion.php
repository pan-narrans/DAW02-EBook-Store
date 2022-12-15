<?php

class ValidaciónDatosRegistro
{
  private Modelo $modelo;

  // TODO:
  private $regex = [
    USUARIO_NICK      => '/.{1,}/',
    DATOS_APELLIDOS   => '/.{1,}/',
    USUARIO_NICK      => '/.{1,}/',
    USUARIO_MAIL      => '/.{1,}/',
    CONTRASEÑA_VALOR  => '/.{1,}/',
  ];

  // TODO:
  private $mensajes = [
    USUARIO_NICK    => 'El nombre de usuario no es válido.',
  ];

  public function __construct(Modelo $modelo)
  {
    $this->modelo = $modelo;
  }

  public function validar($datos)
  {
    $errores = [];

    foreach ($datos as $clave => $valor) :
      // Si no existe regex para esto, pasamos al siguiente dato.
      if (!isset($this->regex[$clave]))
        continue;

      // Si el regex da bien, pasamos al siguiente dato.
      if (preg_match($this->regex[$clave], $valor) == 1)
        continue;

      // El regex ha dado negativo o error, añadimos el mensaje de error al array.
      if (isset($this->mensajes[$clave]))
        array_push($errores, $this->mensajes[$clave]);
      else
        array_push($errores, "Ha ocurrido un error en el campo '$clave'.");
    endforeach;

    if (isset($datos[USUARIO_MAIL])) :
      if (!$this->validar_email($datos[USUARIO_MAIL])) :
        array_push($errores, "Mail ya existente.");
      endif;
    endif;


    return $errores;
  }

  private function validar_email($email)
  {
    return sizeof($this->modelo->select(DB_TABLA_USUARIOS, USUARIO_MAIL . "=?", array($email))) == 0;
  }
}
