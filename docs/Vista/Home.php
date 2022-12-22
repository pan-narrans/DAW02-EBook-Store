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

  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
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
            <a class="nav-link" href="#">Géneros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Contacto</a>
          </li>
        </ul>

        <!-- BUSCAR -->
        <!-- <form class="d-flex mx-3">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form> -->

        <div class="input-group w-25 m-4">
          <input type="text" class="form-control" placeholder="Input group example" aria-label="Input group example" aria-describedby="basic-addon1">
          <button type="button" class="btn btn-secondary">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
              <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"></path>
            </svg>
          </button>
        </div>

        <!-- AQUÍ IRÍA EL LOG -->
        <div class="d-flex">
          <img src="Vista/images/default_avatars/1.png" alt="" width="auto" height="25" class="m-4">
          <form action="." method="POST">
            <button name="op" value="mostrar_acceso" class="btn btn-primary m-3">Acceder</button>
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

  <section>
    <div id="carouselOfertas" class="carousel slide mt-0" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselOfertas" data-slide-to="0" class="active"></li>
        <li data-target="#carouselOfertas" data-slide-to="1"></li>
        <li data-target="#carouselOfertas" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img class="d-block w-100" src="Vista/images/Modelo/1.jpg" alt="">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="Vista/images/Modelo/2.jpg" alt="">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="Vista/images/Modelo/3.jpg" alt="">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselOfertas" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      </a>
      <a class="carousel-control-next" href="#carouselOfertas" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
      </a>
    </div>
  </section>

</body>

</html>