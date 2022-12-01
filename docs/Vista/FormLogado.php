<!-- FORM -->
<article class="col-md-6 col-sm-12">
    <h1 class="text-center"
        id="title">LOGIN</h1>
    <p class="text-end text-danger">* Campo obligatorio</p>
    <form action=""
        id="landingForm"
        aria-label="Formulario para darse de alta en la tienda.">

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