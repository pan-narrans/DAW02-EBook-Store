<?php

/**
 * Mapeo de los nombres de los campos del formulario a los
 * nombres de las columnas de la base de datos.
 * 
 * nombre_campo_formulario => nombre_columna_tabla
 */

$mapa_tabla_usuarios = [
  'usuario'           => USUARIO_NICK,
  'email'             => USUARIO_MAIL,
  // 'avatar' => USUARIO_AVATAR,
];

$mapa_tabla_datos = [
  'nombre'            => DATOS_NOMBRE,
  'apellidos'         => DATOS_APELLIDOS,
  'genero'            => DATOS_GENERO,
  'fecha_nacimiento'  => DATOS_CUMPLEAÑOS,
  'direccion'         => DATOS_DIRECCION,
  'pais'              => DATOS_PAIS,
  // '' => DATOS_TARJETA,
];

$mapa_tabla_contraseñas = [
  'password_1'        => CONTRASEÑA_VALOR,
];
