<?php
    require_once("Plantillas/Cabecera.html");
?>
<div class="row">

<!-- IMAGE & TEXT -->
<article id="oscuro"
            class="col-md-6 col-sm-12 text-center">
    <img src="./images/Mock Book sin fondo.png"
        alt="Libro electrónico con el logo, la e en braille seguida de la palabra 'book'."
        class="img-fluid">
    <p id="letraOscuro">Regístrate en el formulario y recibe un cupón de 15% de descuento para tu primera compra.</p>
</article>

<!-- FORM -->
<article class="col-md-6 col-sm-12">
    <h1 class="text-center"
        id="title">REGÍSTRATE</h1>
    <p class="text-end text-danger">* Campo obligatorio</p>
    <form action=""
        id="landingForm"
        aria-label="Formulario para darse de alta en la tienda.">

    <!-- AVATAR -->
    <fieldset>
        <legend class="d-none">Avatar</legend>
        <label for="avatar" class="d-none">Avatar</label>
        <input type="file" accept="image/jpeg" id="avatar" name="avatar">
    </fieldset>

    <!-- USERNAME -->
    <fieldset>
        <legend class="d-none">Nombre de usuario</legend>
        <div class=" input-group">
        <label for="usuario"
                class="d-none"> Nombre de Usuario (Obligatorio)</label>
        <input type="usuario"
                name="usuario"
                id="usuario"
                placeholder="Nombre de Usuario"
                class="form-control w-100"
                required>
        <span></span>
        </div>

        <!-- USERNAME ALERT -->
        <p id="username_alert"
            class="text-danger">
    </fieldset>

    <!-- NAME & SURNAME -->
    <fieldset>
        <legend class="d-none">Nombre y Apellidos</legend>
        <div class=" input-group">
        <label for="nombre"
                class="d-none"> Nombre (Obligatorio)</label>
        <input type="text"
                name="nombre"
                id="nombre"
                placeholder="Nombre"
                class="form-control"
                required>
        <span></span>
        <label for="apellidos"
                class="d-none"> Apellidos (Obligatorio)</label>
        <input type="text"
                name="apellidos"
                id="apellidos"
                placeholder="Apellidos"
                class="form-control"
                required>
        <span></span>
        </div>

        <!-- NAME & SURNAME ALERT -->
        <p id="nombre_alert"
            class="text-danger">
        <p id="apellidos_alert"
            class="text-danger">
    </fieldset>

    <!-- EMAIL -->
    <fieldset>
        <legend class="d-none">E-mail</legend>
        <div class=" input-group">
        <label for="email"
                class="d-none"> E-mail (Obligatorio)</label>
        <input type="email"
                name="email"
                id="email"
                placeholder="E-mail"
                class="form-control"
                required>
        <span></span>
        </div>

        <!-- NAME & SURNAME ALERT -->
        <p id="email_alert"
            class="text-danger">
    </fieldset>

    <!-- PASSWORD -->
    <fieldset>
        <legend class="d-none">Contraseña</legend>
        <div class=" input-group">
        <label for="password_1"
                class="d-none"> Contraseña (Obligatorio)</label>
        <input type="password"
                name="password_1"
                id="password_1"
                placeholder="Contraseña"
                class="form-control"
                required>
        <span></span>
        <label for="password_2"
                class="d-none"> Repetir Contraseña (Obligatorio)</label>
        <input type="password"
                name="password_2"
                id="password_2"
                placeholder="Repetir Contraseña"
                class="form-control"
                required>
        <span></span>
        </div>

        <!-- PASSWORD ALERTS -->
        <div id="password_alerts">
        <p id="password_alert_match"
            class="text-danger">
        <p id="password_alert_length"
            class="text-danger">
        <p id="password_alert_uppercase"
            class="text-danger">
        <p id="password_alert_lowercase"
            class="text-danger">
        <p id="password_alert_number"
            class="text-danger">
        <p id="password_alert_symbol"
            class="text-danger">
        </div>
    </fieldset>

    <!-- GENERO -->
    <fieldset class="input-group mb-3">
        <legend class="input-group-text form-control">Género </legend>
        <div class="input-group-text">
        <input class="form-check-input mt-0" id="hombre" name="genero" type="radio" value="hombre">
        </div>
        <label for="hombre" class="form-control" >Hombre</label>
        
        <div class="input-group-text">
        <input class="form-check-input mt-0" id="mujer" name="genero" type="radio" value="mujer">
        </div>
        <label for="mujer" class="form-control" >Mujer</label>
    </fieldset>

    <!-- EDAD -->
    <fieldset>
        <legend class="d-none">Fecha de nacimiento</legend>
        <div class="input-group">
        <label for="fecha_nacimiento"
                class="input-group-text">Cumpleaños: </label>
        <input type="date"
                class="form-control"
                name="fecha_nacimiento"
                id="fecha_nacimiento">
        </div>

        <!-- EDAD ALERT -->
        <p id="fecha_alert"
            class="text-danger">
    </fieldset>

    <!-- DIRECCIÓN -->
    <fieldset class="mb-3 input-group">
        <label for="direccion"
                class="input-group-text">Dirección</label>
        <legend class="d-none">Dirección</legend>
        <input type="text"
                name="direccion"
                id="direccion"
                class="form-control">
        <label for="pais"
                class="d-none">País</label>
        <select name="pais"
                id="pais"
                class="form-select"
                placeholder="País"> <!--Cambiar-->
        </select>
    </fieldset>

    <!-- TARJETA DE CRÉDITO -->

    <fieldset id="tarjeta_credito">
        <legend class="d-none">Tarjeta de crédito</legend>
        <div class="input-group">
        <legend class="input-group-text">Tarjeta</legend>
        <label for="tarjeta_num_1" class="d-none">Primeros 4 numeros</label>
        <input type="text"
                name="tarjeta_num_1"
                id="tarjeta_num_1"
                maxlength="4"
                class="form-control">
        <label for="tarjeta_num_2" class="d-none">Segundos 4 numeros</label>
        <input type="text"
                name="tarjeta_num_2"
                id="tarjeta_num_2"
                maxlength="4"
                class="form-control">
        <label for="tarjeta_num_3" class="d-none">Terceros 4 numeros</label>
        <input type="text"
                name="tarjeta_num_3"
                id="tarjeta_num_3"
                maxlength="4"
                class="form-control">
        <label for="tarjeta_num_4" class="d-none">Cuartos 4 numeros</label>
        <input type="text"
                name="tarjeta_num_4"
                id="tarjeta_num_4"
                maxlength="4"
                class="form-control">
        </div>

        <!-- TARJETA ALERT -->
        <p id="tarjeta_alert"
            class="text-danger">
    </fieldset>

    <!-- CHECKBOXES -->
    <fieldset class="mb-3">
        <legend class="d-none">Notificaciones y suscripción</legend>
        <!-- VENDEDOR -->
        <label class="form-check">
        <input type="checkbox"
                name="vendedor"
                id="vendedor">
        Quiero ser vendedor
        </label>
        <!-- NOTIFICACIONES -->
        <label class="form-check">
        <input type="checkbox"
                name="notificaciones"
                id="notificaciones">
        Activar notificaciones de la pagina
        </label>

        <!-- SUSCRIPCIÓN -->
        <label class="form-check">
        <input type="checkbox"
                name="suscripcion"
                id="suscripcion"
                checked>
        Quiero suscribirme y recibir información periódica.
        </label>
    </fieldset>

    <!-- SUBMIT -->

    <section class="d-flex justify-content-between">
        <button type="submit"
                aria-label="Enviar formulario"
                class="btn btn-primary">
        Enviar formulario</button>

        <input type="reset"
                value="Resetear valores"
                aria-label="Resetear los valores del formulario"
                class="btn btn-secondary">
    </section>

    <section class="my-3">
        <p id="submit_alert"
            class="text-success"></p>
    </section>
    </form>
</article>
</div>
</main>
<footer id="franja-movil"></footer>

<script src="./scripts/landing.js"></script>
<?php
    require_once("Plantillas/Pie.html");
?>