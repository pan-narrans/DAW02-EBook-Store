<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ebook Store</title>

  <!-- BOOTSTRAP -->
  <?php require_once('Plantillas/bootstrap.html') ?>

  <!-- CSS -->
  <link rel="stylesheet" href="Vista/styles/style.css">
  <link rel="stylesheet" href="Vista/styles/landing.css">
</head>

<body>

  <!-- ACCESSIBILITY BUTTONS -->
  <?php require_once('Plantillas/botones_accesibilidad.html') ?>

  <nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">

      <!-- LOGO -->
      <a class="navbar-brand" href="#">
        <img src="Vista/images/Logo.png" alt="E-book" width="auto" height="25">
      </a>

      <!-- V. MÓVILES -->
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <!-- V. DESKTOP -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
          </li>
        </ul>

        <!-- BUSCAR -->
        <form class="d-flex mx-3">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>

        <!-- AQUÍ IRÍA EL LOG -->
        <div class="d-flex">
          <img src="Vista/images/default_avatars/1.png" alt="" width="auto" height="25">
          <form action="." method="POST">
            <button name="op" value="mostrar_acceso" class="btn btn-primary">Acceder</button>
          </form>
        </div>
      </div>
    </div>
  </nav>

  <script>
    var request = new XMLHttpRequest();
    request.open("GET", `Control/Interfaz.php`);
    request.onerror = (e) => console.error(request.statusText);

  </script>

</body>

</html>