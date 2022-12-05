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

// COLUMNAS TABA TIPOS
// TODO:

// COLUMNAS TABLA USUARIOS
define('USER_ID'  , 'id'     );
define('USER_NICK', 'usuario');
define('USER_MAIL', 'correo' );
define('USER_TIPO', 'tipo'   );
define('USER_FOTO', 'foto'   );

// COLUMNAS TABLA CONTRASEÑAS
define('PASS_ID'          , 'id_usuario');
define('PASS_CONTRASEÑA'  , 'password'  );

// COLUMNAS TABLA DATOS
define('DATOS_ID'         , 'id_usuario'      );
define('DATOS_NOMBRE'     , 'nombre'          );
define('DATOS_APELLIDOS'  , 'apellidos'       );
define('DATOS_GENERO'     , 'genero'          );
define('DATOS_CUMPLEAÑOS' , 'fecha_nacimiento');
define('DATOS_DIRECCION'  , 'direccion'       );
define('DATOS_PAIS'       , 'pais'            );
define('DATOS_TARJETA'    , 'tarjeta'         );
