<?php

class Usuario {
  private $nick;
  private $mail;
  private $foto;
  private $tipo;

  public function __construct(
    $mail,
    $nick = null,
    $tipo = null,
    $foto = null,
  ) {
    $this->setMail($mail);

    if ($nick == null && $tipo == null && $foto == null) :
      $this->cargar();
    else :
      $this->setNick($nick);
      $this->setTipo($tipo);
      $this->setFoto($foto);
    endif;
  }

  #region GETTERS

  public function getNick() {
    return $this->nick;
  }

  public function getMail() {
    return $this->mail;
  }

  public function getFoto() {
    return $this->foto;
  }

  public function getTipo() {
    return $this->tipo;
  }

  #endregion

  #region SETTERS

  public function setNick($nick) {
    $this->nick = $nick;
  }

  public function setMail($mail) {
    $this->mail = $mail;
  }

  public function setFoto($foto) {
    $this->foto = $foto;
  }

  public function setTipo($tipo) {
    $this->tipo = $tipo;
  }

  #endregion

  public function getID() {
    return (new Modelo())->select(
      DB_TABLA_USUARIOS,
      'correo=?',
      array($this->mail)
    )[0][USUARIO_ID];
  }

  public function cargar() {
    $datos = (new Modelo())->select(
      DB_TABLA_USUARIOS,
      'correo=?',
      array($this->mail)
    )[0];

    $this->setNick($datos[USUARIO_NICK]);
    $this->setTipo($datos[USUARIO_TIPO]);
    $this->setFoto($datos[USUARIO_AVATAR]);
  }
}
