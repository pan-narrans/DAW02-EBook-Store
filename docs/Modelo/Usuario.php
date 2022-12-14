<?php

class Usuario
{
  private $nick;
  private $mail;
  private $foto;
  private $tipo;

  public function __construct(
    $nick,
    $mail,
    $tipo,
    $foto = null,
  ) {
    $this->setNick($nick);
    $this->setMail($mail);
    $this->setTipo($tipo);
    $this->setFoto($foto);
  }

  #region GETTERS

  public function getNick()
  {
    return $this->nick;
  }

  public function getMail()
  {
    return $this->mail;
  }

  public function getFoto()
  {
    return $this->foto;
  }

  public function getTipo()
  {
    return $this->tipo;
  }

  #endregion

  #region SETTERS

  public function setNick($nick)
  {
    $this->nick = $nick;
  }

  public function setMail($mail)
  {
    $this->mail = $mail;
  }

  public function setFoto($foto)
  {
    $this->foto = $foto;
  }

  public function setTipo($tipo)
  {
    $this->tipo = $tipo;
  }

  #endregion

  public function getID()
  {
    return (new Modelo())->select(
      DB_TABLA_USUARIOS,
      'correo=?',
      array($this->mail)
    )[0]['id'];
  }

  public function cargar()
  {
  }
}
