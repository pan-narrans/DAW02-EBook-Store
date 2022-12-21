<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ebook Store</title>
        
        <!-- BOOTSTRAP -->
        <?php require_once('Plantillas/bootstrap.html') ?>
        
        <!-- CSS -->
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="styles/landing.css">
    </head>
    <body>
        <!-- ACCESSIBILITY BUTTONS -->
        <?php require_once('Plantillas/botones_accesibilidad.html') ?>

        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <div class="container-fluid">

                <!-- LOGO -->
                <a class="navbar-brand" href="#">
                    <img src="images/Logo.png" alt="E-book" width="auto" height="25">
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
                        <!-- <img src="Vista/images/default_avatars/1.png" alt="" width="auto" height="25"> -->
                        <form action="." method="POST">
                            <button name="op" value="mostrar_acceso" class="btn btn-primary">Acceder</button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>

        <article>
            <div class="slide">
                <div class="slide-inner">
                    <input class="slide-open" type="radio" id="slide-1" 
                          name="slide" aria-hidden="true" hidden="" checked="checked">
                    <div class="slide-item">
                        <img src="images/Modelo/1.jpg">
                    </div>
                    <input class="slide-open" type="radio" id="slide-2" 
                          name="slide" aria-hidden="true" hidden="">
                    <div class="slide-item">
                        <img src="images/Modelo/2.jpg">
                    </div>
                    <input class="slide-open" type="radio" id="slide-3" 
                          name="slide" aria-hidden="true" hidden="">
                    <div class="slide-item">
                        <img src="images/Modelo/3.jpg">
                    </div>
                    <label for="slide-3" class="slide-control prev control-1">‹</label>
                    <label for="slide-2" class="slide-control next control-1">›</label>
                    <label for="slide-1" class="slide-control prev control-2">‹</label>
                    <label for="slide-3" class="slide-control next control-2">›</label>
                    <label for="slide-2" class="slide-control prev control-3">‹</label>
                    <label for="slide-1" class="slide-control next control-3">›</label>
                    <ol class="slide-indicador">
                        <li>
                            <label for="slide-1" class="slide-circulo">•</label>
                        </li>
                        <li>
                            <label for="slide-2" class="slide-circulo">•</label>
                        </li>
                        <li>
                            <label for="slide-3" class="slide-circulo">•</label>
                        </li>
                    </ol>
                </div>
            </div>
        </article>
        <article>
            <div class="container-fluid">
                <div class="row justify-content-around">
                    <div class="col-md-2 oferta">
                        <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        <h3>Título</h3>
                    </div>
                    <div class="col-md-2 oferta">
                    <img src="images/Modelo/ModeloLibro.jpg" alt="">
                    <h3>Título</h3>
                    </div>
                    <div class="col-md-2 oferta">
                        <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        <h3>Título</h3>
                    </div>
                    <div class="col-md-2 oferta">
                        <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        <h3>Título</h3>
                    </div>
                    <div class="col-md-2 oferta">
                        <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        <h3>Título</h3>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row justify-content-around">
                    <div class="col-md-8 text-center">
                        <p>Texto explicativo de lo maravillosa que es la tienda y por qué tienen que compar aquí sus libros en vez de piratearlos o comprarlos en otros sitios. Porque somos guays</p>
                    </div>
                    <div class="col-md-4">
                        <img src="images/Modelo/CompranosMolamos.jpg" alt="">
                    </div>
                </div>
            </div>

            <div class="row justifi-content-around"> 
                <div class="container oscuro">
                    <div class="row justifi-content-center text-center">
                        <h2>Beneficios de la lectura</h2>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                            <p>Texto</p>
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                            <p>Texto</p>
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                            <p>Texto</p>
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                            <p>Texto</p>
                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="row text-center">
                        <h2>Géneros más vendidos</h2>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        </div>
                        <div class="col-md-3">
                            <img src="images/Modelo/ModeloLibro.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </article>
    </body>
</html>