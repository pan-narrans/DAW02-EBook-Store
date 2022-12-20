<?php

class Controlador {

  private Modelo $modelo;

  public function __construct(Modelo $modelo) {
    $this->modelo = $modelo;
  }

  public function registrarUsuario($datos_formulario) {
    // Mapeo del formulario a la base de datos y separación en tablas para facilitar el insert.
    require_once('form_mapping.php');
    $usuario      = $this->map($mapa_tabla_usuarios, $datos_formulario);
    $datos_extra  = $this->map($mapa_tabla_datos, $datos_formulario);
    $contraseña   = $this->map($mapa_tabla_contraseñas, $datos_formulario);

    // ! tipo hardcodeado
    $usuario[USUARIO_TIPO]  = 2;

    // Guardar el usuario en sesión
    require_once('Modelo/Usuario.php');
    $_SESSION['usuario'] = new Usuario(
      $usuario[USUARIO_MAIL],
      $usuario[USUARIO_NICK],
      $usuario[USUARIO_TIPO]
    );

    // VALIDACIÓN
    require_once('Control/Validacion.php');
    $validador  = new ValidacionDatos($this->modelo);
    $errores = [];
    $errores = array_merge($errores, $validador->validarRegistro($usuario));
    $errores = array_merge($errores, $validador->validarRegistro($datos_extra));
    $errores = array_merge($errores, $validador->validarRegistro($contraseña));

    // INSERCIÓN EN BASE DE DATOS
    if (sizeof($errores) == 0) :
      // Insertar en tabla usuarios.
      $this->modelo->insert(DB_TABLA_USUARIOS, $usuario);

      // Insertar en tabla passwords
      $this->modelo->insert(
        DB_TABLA_CONTRASEÑAS,
        array_merge([CONTRASEÑA_ID  => $_SESSION['usuario']->getId()], $contraseña)
      );

      // Insertar en tabla datos
      $this->modelo->insert(
        DB_TABLA_DATOS,
        array_merge([DATOS_ID => $_SESSION['usuario']->getId()], $datos_extra,)
      );

      // $_POST = [];
      require_once('Vista/home.php');
    else :
      var_dump($errores);
      require_once('Vista/page_acceso.php');
    endif;
  }

  public function logUsuario($datos_formulario) {
    require_once('form_mapping.php');
    $usuario    = $this->map($mapa_tabla_usuarios, $datos_formulario);
    $contraseña = $this->map($mapa_tabla_contraseñas, $datos_formulario);

    require_once('Control/Validacion.php');
    $errores = [];
    $validador  = new ValidacionDatos($this->modelo);
    $errores = array_merge($errores, $validador->validarLogin($usuario[USUARIO_MAIL], $contraseña[CONTRASEÑA_VALOR]));

    if (sizeof($errores) == 0) :
      $_SESSION['usuario'] = new Usuario(
        $usuario[USUARIO_MAIL],
        $usuario[USUARIO_NICK],
        $usuario[USUARIO_TIPO]
      );
    else :
      var_dump($errores);
      require_once('Vista/page_acceso.php');
    endif;
  }

  public function map(array $mapa, array $datos) {
    $datos_mapeados = [];

    foreach ($datos as $clave => $valor) :
      if (isset($mapa[$clave])) :
        $datos_mapeados[$mapa[$clave]] = $valor;
      endif;
    endforeach;

    return $datos_mapeados;
  }
}
