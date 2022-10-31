//Cogido del HTML
const formulario = document.getElementById("registrarse");
const usuario = document.getElementById("usuario");
const nombre = document.getElementById("nombre");
const apellido = document.getElementById("apellido");
const email = document.getElementById("email");
const password = document.getElementById("password");
const password2 = document.getElementById("password-2");
const direccion = document.getElementById("direccion");

//Variables usadas
let mensaje = "";

//Expresiones regulares
const expresiones = {
    usuario: /^[a-zA-Z0-9\_\-]{4,16}$/,
    nombre: /^[a-zA-ZÁ-ÿ\s]{1,40}$/, //máximo 2 palabras
    correo: /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9_.-]+\.[a-zA-Z0-9]+$/,
}

function validarUsuario(){
    if (expresiones.usuario.test(usuario.value) == false) {
        mensaje = "El usuario no es válido, no puede llevar caracteres especiales.";
    } else {
        mensaje = "";
    }
    document.getElementById("textoUsuario").innerHTML = mensaje;
}

function validarNombre(){
    let espacios = 0;
    for (let i = 0; i < nombre.value.length; i++) {
        if(nombre.value[i] === " "){
            espacios++;
        }
    }
    if (expresiones.nombre.test(nombre.value) == false) {
        mensaje = "El nombre no es válido, solo puede constar de letras.";
    } else {
        if(espacios>1){
            mensaje = "Solo puedes incluir dos palabras.";
        } else{
            mensaje = "";
        }
    }
    document.getElementById("textoNombre").innerHTML = mensaje;
}

function validarApellido(){
    let espacios = 0;
    for (let i = 0; i < apellido.value.length; i++) {
        if(apellido.value[i] === " "){
            espacios++;
        }
    }
    if (expresiones.nombre.test(apellido.value) == false) {
        mensaje = "El apellido no es válido, solo puede constar de letras.";
    } else {
        if(espacios>1){
            mensaje = "Solo puedes incluir dos palabras.";
        } else{
            mensaje = "";
        }
    }
    document.getElementById("textoApellido").innerHTML = mensaje;
}

function validarEmail(){
    let espacios = 0;
    let arroba = 0;
    for (let i = 0; i < apellido.value.length; i++) {
        if(email.value[i] === " "){
            espacios++;
        } else if (email.value [i] === "@"){
            arroba ++;
        }
    }
    if (expresiones.correo.test(email.value) == false) {
        if(arroba !== 1){
            mensaje = "El email no es válido, debe tener una @.";
        } else if (espacios > 0){
            mensaje = "El email no es válido, no puede tener espacios.";
        } else{
            mensaje = "El email no es válido, debe seguir la estructura \"ejemplo.correo@ejemplo.es\".";
        }
    } else {
        mensaje = "";
    }
    document.getElementById("textoEmail").innerHTML = mensaje;
}

function validarContrasenia(){
    let expresionMinus = /[a-z]/; 
    let expresionMayus = /[A-Z]/;
    let expresionesDig = /\d/;
    let expresionesEsp = /["·$%&@#~^*+-.,_='¡!¿?]/;

    if (password.value.length < 8) {
        mensaje = "Las contraseñas deben tener mínimo 8 caracteres.";
        console.log("8 caracteres");
    } else if(expresionMinus.test(password.value) === false){ //Esto no funciona
        mensaje = "Debe contar con mínimo una letra minúscula.";
        console.log("minusculas");
    } else if(expresionMayus.test(password.value) === false){ //Esto no funciona
        mensaje = "Debe contar con mínimo una letra mayúscula.";
        console.log("mayusculas");
    } else if(expresionesDig.test(password.value) === false){
        mensaje = "Debe contar con mínimo un dígito.";
        console.log("digitos");
    } else if(expresionesEsp.test(password.value) === false){
        mensaje = "Debe contar con mínimo un caracter especial.";
        console.log("especiales");
    } else if(password.value !== password2.value){
        mensaje = "Las contraseñas deben ser iguales.";
    } else{
        mensaje = "";
    }
    document.getElementById("textoPass").innerHTML = mensaje;
}

function validarDireccion(){
    let espacios = 0;
    let arroba = 0;
    for (let i = 0; i < apellido.value.length; i++) {
        if(email.value[i] === " "){
            espacios++;
        } else if (email.value [i] === "@"){
            arroba ++;
        }
    }
    if (direccion.value.length === 0) {
        mensaje = "Introduce una dirección."
        //como pais siempre está seleccionado, porque españa es por defecto, solo hay que comprbar que se rellene la dirección
        document.getElementById("tarjeta").style.display = "none";
    } else {
        mensaje = "";
        document.getElementById("tarjeta").style.display = "block";
    }
    document.getElementById("textoEmail").innerHTML = mensaje;
}
//No funciona porque da error al ser nulos (arreglar)
function validarEnviar(e) {
    e.preventDefault();

    if (usuario.value === "") {
        alert("Por favor, escribe tu nombre de usuario.");
        usuario.focus();
        return false;
    }

    if (nombre.value === "") {
        alert("Por favor, escribe tu nombre.");
        nombre.focus();
        return false;
    }
    
    if (apellido.value === "") {
        alert("Por favor, escribe tu apellido.");
        apellido.focus();
        return false;
    }
      
    if (email.value === "") {
        alert("Por favor, escribe tu correo electrónico.");
        email.focus();
        return false;
    }

    if (password.value === "" || password2.value === "") {
        alert("Por favor, escribe tu contraseña.");
        password.focus();
        return false;
    }
    return true;
}

//Llamadas a las funciones al escribir una letra y al pinchar fuera de su casilla
usuario.addEventListener("keyup", validarUsuario);
usuario.addEventListener("blur", validarUsuario);
nombre.addEventListener("keyup", validarNombre);
nombre.addEventListener("blur", validarNombre);
apellido.addEventListener("keyup", validarApellido);
apellido.addEventListener("blur", validarApellido);
email.addEventListener("keyup", validarEmail);
email.addEventListener("blur", validarEmail);
password.addEventListener("keyup", validarContrasenia);
password.addEventListener("blur", validarContrasenia);
direccion.addEventListener("keyup", validarDireccion);
direccion.addEventListener("blur", validarDireccion);

formulario.addEventListener('submit', validarEnviar); //Esto me da error, dice que no se puede hacer event listener de null