<?php

// CREDENCIALES BASE DE DATOS
define('DB_HOSTNAME', 'localhost'  );
define('DB_USERNAME', 'ebook-admin');
define('DB_PASSWORD', 'ebook'      );
define('DB_DATABASE', 'ebook'      );


// TABLAS BASE DE DATOS
define('DB_TABLA_USUARIOS'   , 'usuarios' );
define('DB_TABLA_DATOS'      , 'datos'    );
define('DB_TABLA_CONTRASEÑAS', 'passwords');
define('DB_TABLA_TIPOS'      , 'tipos'    );


// COLUMNAS TABLA USUARIOS
define('USUARIO_ID'     , 'id'     );
define('USUARIO_NICK'   , 'usuario');
define('USUARIO_MAIL'   , 'correo' );
define('USUARIO_TIPO'   , 'tipo'   );
define('USUARIO_AVATAR' , 'foto'   );

// COLUMNAS TABLA DATOS
define('DATOS_ID'         , 'id_usuario'      );
define('DATOS_NOMBRE'     , 'nombre'          );
define('DATOS_APELLIDOS'  , 'apellidos'       );
define('DATOS_GENERO'     , 'genero'          );
define('DATOS_CUMPLEAÑOS' , 'fecha_nacimiento');
define('DATOS_DIRECCION'  , 'direccion'       );
define('DATOS_PAIS'       , 'pais'            );
define('DATOS_TARJETA'    , 'tarjeta'         );

// COLUMNAS TABA TIPOS
define('TIPO_ID'    , 'codigo');
define('TIPO_NOMBRE', 'nombre');

// COLUMNAS TABLA CONTRASEÑAS
define('CONTRASEÑA_ID'    , 'id_usuario');
define('CONTRASEÑA_VALOR' , 'password'  );

