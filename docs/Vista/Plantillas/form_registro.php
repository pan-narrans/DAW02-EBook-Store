<div class="d-flex justify-content-between align-items-baseline">
  <h1 class="text-center" id="title">Nuevo Registro</h1>
  <p class="text-start text-danger">* Campo obligatorio</p>
</div>

<form action="index.php" method="POST" id="landingForm" aria-label="Formulario para darse de alta en la tienda.">
  <!-- USERNAME -->
  <fieldset>
    <legend class="d-none">Nombre de usuario</legend>
    <div class=" input-group">
      <label for="usuario" class="d-none"> Nombre de Usuario (Obligatorio)</label>
      <input type="usuario" name="usuario" id="usuario" placeholder="Nombre de Usuario" class="form-control w-100" required value="<?= isset($_POST['usuario']) ? $_POST['usuario'] : ""; ?>">
      <span></span>
    </div>

    <!-- USERNAME ALERT -->
    <p id="username_alert" class="text-danger">
  </fieldset>

  <!-- NAME & SURNAME -->
  <fieldset>
    <legend class="d-none">Nombre y Apellidos</legend>
    <div class=" input-group">
      <label for="nombre" class="d-none"> Nombre (Obligatorio)</label>
      <input type="text" name="nombre" id="nombre" placeholder="Nombre" class="form-control" required value="<?= isset($_POST['nombre']) ? $_POST['nombre'] : ""; ?>">
      <span></span>
      <label for="apellidos" class="d-none"> Apellidos (Obligatorio)</label>
      <input type="text" name="apellidos" id="apellidos" placeholder="Apellidos" class="form-control" required value="<?= isset($_POST['apellidos']) ? $_POST['apellidos'] : ""; ?>">
      <span></span>
    </div>

    <!-- NAME & SURNAME ALERT -->
    <p id=" nombre_alert" class="text-danger">
    <p id="apellidos_alert" class="text-danger">
  </fieldset>

  <!-- EMAIL -->
  <fieldset>
    <legend class="d-none">E-mail</legend>
    <div class=" input-group">
      <label for="email" class="d-none"> E-mail (Obligatorio)</label>
      <input type="email" name="email" id="email" placeholder="E-mail" class="form-control" required value="<?= isset($_POST['email']) ? $_POST['email'] : ""; ?>">
      <span></span>
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
      <span></span>
      <label for="password_2" class="d-none"> Repetir Contraseña (Obligatorio)</label>
      <input type="password" name="password_2" id="password_2" placeholder="Repetir Contraseña" class="form-control" required value="<?= isset($_POST['password_2']) ? $_POST['password_2'] : ""; ?>">
      <span></span>
    </div>

    <!-- PASSWORD ALERTS -->
    <div id="password_alerts" class="my-3 text-danger"></div>
    <div id="password_alert_match" class="my-3 text-danger"></div>
  </fieldset>

  <!-- AVATAR -->
  <fieldset>
    <legend class="d-none">Avatar</legend>
    <div class="input-group">
      <label for="avatar" class="input-group-text">Avatar</label>
      <input type="file" accept="image/jpeg" class="form-control" id="avatar" name="avatar">
    </div>
    <p></p>
  </fieldset>

  <!-- CHECKBOXES -->
  <fieldset class="mb-3">
    <legend class="d-none">Notificaciones y suscripción</legend>

    <!-- SUSCRIPCIÓN -->
    <label class="form-check">
      <input type="checkbox" name="suscripcion" id="suscripcion" checked>
      Quiero suscribirme y recibir información periódica.
    </label>
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