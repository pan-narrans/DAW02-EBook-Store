<h1 class="text-center" id="title">Acceso a Cuenta</h1>

<form action="index.php" method="POST" id="landingForm" aria-label="Formulario para darse de alta en la tienda.">
  <!-- USERNAME -->
  <fieldset>
    <legend class="d-none">Nombre de usuario</legend>
    <div class=" input-group">
      <label for="usuario" class="d-none"> Nombre de Usuario (Obligatorio)</label>
      <input type="usuario" name="usuario" id="usuario" placeholder="Nombre de Usuario" class="form-control w-100" required value="<?= isset($_POST['usuario']) ? $_POST['usuario'] : ""; ?>">
    </div>

    <!-- USERNAME ALERT -->
    <p id="username_alert" class="text-danger">
  </fieldset>

  <!-- EMAIL -->
  <fieldset>
    <legend class="d-none">E-mail</legend>
    <div class=" input-group">
      <label for="email" class="d-none"> E-mail (Obligatorio)</label>
      <input type="email" name="email" id="email" placeholder="E-mail" class="form-control" required value="<?= isset($_POST['email']) ? $_POST['email'] : ""; ?>">
    </div>

    <!-- NAME & SURNAME ALERT -->
    <p id="email_alert" class="text-danger">
  </fieldset>

  <!-- PASSWORD -->
  <fieldset>
    <legend class="d-none">Contraseña</legend>
    <div class=" input-group">
      <label for="password_1" class="d-none"> Contraseña (Obligatorio)</label>
      <input type="password" name="password_1" id="password_1" placeholder="Contraseña" class="form-control" required value="<?= isset($_POST['password_1']) ? $_POST['password_1'] : ""; ?>">
    </div>

    <!-- PASSWORD ALERTS -->
    <div id="password_alerts" class="my-3 text-danger"></div>
    <div id="password_alert_match" class="my-3 text-danger"></div>
  </fieldset>

  <!-- SUBMIT -->
  <section class="d-flex justify-content-between">
    <button type="submit" aria-label="Enviar formulario" class="btn btn-primary">
      Enviar formulario</button>
    <input type="reset" value="Resetear valores" aria-label="Resetear los valores del formulario" class="btn btn-secondary">
  </section>

  <input type="text" name="op" id="op" hidden value="registrar_usuario">

  <section class="my-3">
    <p id="submit_alert" class="text-success"></p>
  </section>
</form>