const expresiones = {
    correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
    Mayusculas: /[A-Z]/,
    Minusculas: /[a-z]/,
    Numeros: /[0-9]/
}

document.getElementById("send").onclick = function enviar(event){

    if(validar() == true){
        alert("El formulario se ha enviado correctamente");
        document.getElementById("send").reset();
    }
    else{
        event.preventDefault();
    }   
}

document.addEventListener("keyup", (e)=>{
    if(direccion() == true){
        document.getElementById("tarjeta").style.display = "flex";
    }
    else{
        document.getElementById("tarjeta").style.display = "none";
    }
});

function validar(){

    if(nick() == true && nombre() == true && apellidos() == true && email() == true && contraseña() == true && contraseña_2() == true && direccion() == true && tarjeta() == true){
        return true;
    }
    else{
        return false;
    }
}

function nick(){

    let usuario = document.getElementById("username").value;
    let longitud = 0;

    for(let i=0;i<usuario.length;i++){
        longitud++;
    }

    if(longitud <= 16){
        return true; 
    }
}

function nombre(){

    let name = String(document.getElementById("name").value).trim();

    let Primer_nombre = "";
    let Segundo_nombre = "";
    let longitud_nombre = 0;

        for(let i=0;i < name.length;i++){
            if(name[i] != " " && longitud_nombre == 0){
                Primer_nombre += name[i];
            }
            else if(name[i] == " "){
                longitud_nombre++;
            }
            else if(name[i] != " " && longitud_nombre == 1){
                Segundo_nombre += name[i];
            }
        }

        if(longitud_nombre == 0 || longitud_nombre == 1){
            return true;
        }
}

function apellidos(){

    let surname = String(document.getElementById("surname").value).trim();

    let Primer_apellido = "";
    let Segundo_apellido = "";
    let longitud_apellidos = 0;

        for(let i=0;i < surname.length;i++){
            if(surname[i] != " " && longitud_apellidos == 0){
                Primer_apellido += surname[i];
            }
            else if(surname[i] == " "){
                longitud_apellidos++;
            }
            else if(surname[i] != " " && longitud_apellidos == 1){
                Segundo_apellido += surname[i];
            }
        }

        if(longitud_apellidos == 0 || longitud_apellidos == 1){
            return true;
        }
}

function email(){

    let email = String(document.getElementById("email").value).trim();
    
    if(expresiones.correo.test(email) == true){
        return true;
    }
}

function contraseña(){

    let password = document.getElementById("password").value;

    let mayusculas = 0;
    let minusculas = 0;
    let numeros = 0;
    let caracteres = 0;
    let i = 0;

    for(i;i<password.length;i++){

        if(expresiones.Mayusculas.test(password[i])){
            mayusculas++;
        }
        else if(expresiones.Minusculas.test(password[i])){
            minusculas++;
        }
        else if(expresiones.Numeros.test(password[i])){
            numeros++;
        }
        else{
            caracteres++;
        }
    }

    if(mayusculas >= 1 && minusculas >= 1 && numeros >= 1 && caracteres >= 1 && i >= 8){
        return true;
    }
}

function contraseña_2(){

    let password_2 = document.getElementById("password_2").value;
    let password = document.getElementById("password").value;

    if(contraseña() == true && password == password_2){
        return true;
    }
}

function direccion(){
    var direccion = document.getElementById("direccion").value;
    var pais = document.getElementById("pais").value;

    if(direccion != null && direccion != "" && pais != null && pais != ""){
        return true;
    }
}

function tarjeta(){
    var tarjeta1 = document.getElementById("tarjeta1").value;
    var tarjeta2 = document.getElementById("tarjeta2").value;
    var tarjeta3 = document.getElementById("tarjeta3").value;
    var tarjeta4 = document.getElementById("tarjeta4").value;

    let tamaño_tarjeta1 = 0;
    let tamaño_tarjeta2 = 0;
    let tamaño_tarjeta3 = 0;
    let tamaño_tarjeta4 = 0;

    if(direccion() == true){

        for(let i=0;i<tarjeta1.length;i++){
            tamaño_tarjeta1++;
        }
        for(let i=0;i<tarjeta2.length;i++){
            tamaño_tarjeta2++;
        }
        for(let i=0;i<tarjeta3.length;i++){
            tamaño_tarjeta3++;
        }
        for(let i=0;i<tarjeta4.length;i++){
            tamaño_tarjeta4++;
        }
    }

    if(tamaño_tarjeta1 == 4 && tamaño_tarjeta2 == 4 && tamaño_tarjeta3 == 4 && tamaño_tarjeta4 == 4){
        return true;
    }
}


