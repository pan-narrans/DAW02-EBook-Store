<?php

class Interfaz {
  public function usuarioLogeado() {
    return isset($_SESSION['usuario']);
  }
}
