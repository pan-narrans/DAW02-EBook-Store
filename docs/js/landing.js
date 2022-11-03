// HTML DOM references
const form = document.forms["landingForm"];

const username = document.getElementById("usuario");
const name = document.getElementById("nombre");
const surname = document.getElementById("apellidos");

const pass_1 = document.getElementById("password_1");
const pass_2 = document.getElementById("password_2");

const address = document.getElementById("direccion");
const countrySelect = document.getElementById("pais");
const card = document.getElementById("tarjeta_credito");
const card_4 = document.getElementById("tarjeta_num_4");

const regEx = {
  username:   /^\p{L}{3,20}$/u,
  name:       /^\p{L}{3,30}$/u,

  password:   /(?=.*\p{Lu})(?=.*\p{Ll})(?=.*\d)(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\_\-]).{8,}/u,
  upperCase:  /(?=.*\p{Lu}).*/u,
  lowerCase:  /(?=.*\p{Ll}).*/u,
  number:     /(?=.*\d).*/u,
  symbol:     /(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\_\-]).*/,

  cardNumber: /^\d{4}$/,
}

const validate = function (e) {
  e.preventDefault();
  console.log("Le has dado a submit.")

  // Validate username
  if (!validUsername(username.value)) {
    validateUsername();
    username.focus();
    return false;
  }

  // Validate name
  if (!validName(name.value)) {
    validateName();
    name.focus();
    return false;
  }

  // Validate surname
  if (!validSurname(surname.value)) {
    validateSurname();
    surname.focus();
    return false;
  }

  // Validate email
  // Done with default HTML validation for now

  // Validate password
  if (!validPassword(pass_1.value)) {
    validatePassword();
    pass_1.focus();
    return false;
  }

  // Passwords match
  if (pass_1.value !== pass_2.value) {
    passwordMatch();
    pass_2.focus();
    return false;
  }

  // Validate age
  // TODO preguntar a Carlos

  // Validate credit card number
  if (card.style.visibility != "none" && cardHasContent() && !cardHasValidContent()) {
    validateCard();
    card.focus();
    return false;
  }

  console.log("Enviando el formulario.")
  //form.submit();
}

// Validation pure functions

const validUsername = function (str) {
  const length = /^\p{L}{3,20}$/u;
  return length.test(str);
}

const validName = function (str) {
  const length = /^\p{L}{3,30}$/u;
  return length.test(str);
}

const validSurname = function (str) {
  // const twoWords = /^\p{L}+ \p{L}+$/;
  return str.trim().split(' ').length < 3;
}

const validPassword = function (str) {
  const validate = /(?=.*\p{Lu})(?=.*\p{Ll})(?=.*\d)(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\_\-]).{8,}/u;
  return validate.test(str);
}

const validCardNum = function (str) {
  const fourNum = /^\d{4}$/;
  return fourNum.test(str);
}

// Validation events

const validateUsername = function () {
  // Esconder el alert
  document.getElementById("username_alert").innerHTML = "";

  if (!validUsername(username.value)) {
    let message = "El nombre de usuario tiene que tener entre 3 y 20 caracteres.";
    console.log(message)
    document.getElementById("username_alert").innerHTML = message;
  } else {
    console.log("Nombre de usuario válido.")
  }
}

const validateName = function () {
  // Esconder el alert
  document.getElementById("nombre_alert").innerHTML = "";

  if (!validName(name.value)) {
    let message = "El nombre de usuario tiene que tener entre 3 y 30 caracteres.";
    console.log(message)
    document.getElementById("nombre_alert").innerHTML = message;
  } else {
    console.log("Nombre válido.")
  }
}

const validateSurname = function () {
  // Esconder el alert
  document.getElementById("apellidos_alert").innerHTML = "";

  if (!validSurname(surname.value)) {
    let message = "Introduce máximo dos apellidos.";
    console.log(message)
    document.getElementById("apellidos_alert").innerHTML = message;
  } else {
    console.log("Apellidos válidos.")
  }
}


/* PASSWORD VALIDATION */
const validatePassword = function () {
  // Esconder las alerts
  passwordHideCorrections();

  if (!validPassword(pass_1.value)) {
    console.log("La contraseña no es válida.");
    passwordShowCorrections(pass_1.value);
  } else {
    console.log("La contraseña es válida.");
  }
}

const passwordHideCorrections = function () {
  document.getElementById("password_alert_length").innerHTML = "";
  document.getElementById("password_alert_uppercase").innerHTML = "";
  document.getElementById("password_alert_lowercase").innerHTML = "";
  document.getElementById("password_alert_number").innerHTML = "";
  document.getElementById("password_alert_symbol").innerHTML = "";
}

const passwordShowCorrections = function (str) {
  let message = "";
  const length = /.{8,}/;
  const upperCase = /(?=.*\p{Lu}).*/;
  const lowerCase = /(?=.*\p{Ll}).*/;
  const number = /(?=.*\d).*/;
  const symbol = /(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\_\-]).*/;

  if (!length.test(str)) {
    message = "La contraseña tiene que tener un mínimo de 8 caracteres.";
    console.log(message);
    document.getElementById("password_alert_length").innerHTML = message;
  }
  if (!upperCase.test(str)) {
    message = "La contraseña tiene que contener una letra mayúscula.";
    console.log(message);
    document.getElementById("password_alert_uppercase").innerHTML = message;
  }
  if (!lowerCase.test(str)) {
    message = "La contraseña tiene que contener una letra minúscula.";
    console.log(message);
    document.getElementById("password_alert_lowercase").innerHTML = message;
  }
  if (!number.test(str)) {
    message = "La contraseña tiene que contener un número.";
    console.log(message);
    document.getElementById("password_alert_number").innerHTML = message;
  }
  if (!symbol.test(str)) {
    message = "La contraseña tiene que contener uno de estos símbolos: ¿?¡!*.<>|@#~€¬\"·$ %& ()={}[]/\\.";
    console.log(message);
    document.getElementById("password_alert_symbol").innerHTML = message;
  }
}

const passwordMatch = function () {
  document.getElementById("password_alert_match").innerHTML = "";

  if (pass_1.value !== pass_2.value) {
    const message = "Las contraseñas no coinciden.";
    console.log(message);
    document.getElementById("password_alert_match").innerHTML = message;
  } else {
    console.log("Las contraseñas coinciden.")
  }
}

const validateCard = function () {
  document.getElementById("tarjeta_alert").innerHTML = "";

  if (!cardHasValidContent()) {
    let message = "La tarjeta de crédito no es válida.";
    console.log(message)
    document.getElementById("tarjeta_alert").innerHTML = message;
  } else {
    console.log("La tarjeta de crédito es válida.");
  }
}

const cardHasContent = function () {
  for (let i = 1; i < 5; i++)
    if (document.getElementById("tarjeta_num_" + i).value != "")
      return true;
  return false;
}

const cardHasValidContent = function () {
  let valid = true;

  for (let i = 1; i < 5; i++)
    if (!validCardNum(document.getElementById("tarjeta_num_" + i).value))
      valid = false;

  return valid;
}

/* ADDRESS AND SHOW CARD INFO */
const showHideCard = function () {
  if (address.value == "" || countrySelect.options[countrySelect.selectedIndex].disabled)
    card.style.display = "none";
  else
    card.style.display = "flex";
}

// Europe
const countries = [
  { "name": "Aland Islands", "code": "AX" },
  { "name": "Albania", "code": "AL" },
  { "name": "Andorra", "code": "AD" },
  { "name": "Austria", "code": "AT" },
  { "name": "Belarus", "code": "BY" },
  { "name": "Belgium", "code": "BE" },
  { "name": "Bosnia and Herzegovina", "code": "BA" },
  { "name": "Bulgaria", "code": "BG" },
  { "name": "Croatia", "code": "HR" },
  { "name": "Czech Republic", "code": "CZ" },
  { "name": "Denmark", "code": "DK" },
  { "name": "Estonia", "code": "EE" },
  { "name": "Faroe Islands", "code": "FO" },
  { "name": "Finland", "code": "FI" },
  { "name": "France", "code": "FR" },
  { "name": "Germany", "code": "DE" },
  { "name": "Gibraltar", "code": "GI" },
  { "name": "Greece", "code": "GR" },
  { "name": "Guernsey", "code": "GG" },
  { "name": "Holy See (Vatican City State)", "code": "VA" },
  { "name": "Hungary", "code": "HU" },
  { "name": "Iceland", "code": "IS" },
  { "name": "Ireland", "code": "IE" },
  { "name": "Isle of Man", "code": "IM" },
  { "name": "Italy", "code": "IT" },
  { "name": "Jersey", "code": "JE" },
  { "name": "Kosovo", "code": "XK" },
  { "name": "Latvia", "code": "LV" },
  { "name": "Liechtenstein", "code": "LI" },
  { "name": "Lithuania", "code": "LT" },
  { "name": "Luxembourg", "code": "LU" },
  { "name": "Macedonia, the Former Yugoslav Republic of", "code": "MK" },
  { "name": "Malta", "code": "MT" },
  { "name": "Moldova, Republic of", "code": "MD" },
  { "name": "Monaco", "code": "MC" },
  { "name": "Montenegro", "code": "ME" },
  { "name": "Netherlands", "code": "NL" },
  { "name": "Norway", "code": "NO" },
  { "name": "Poland", "code": "PL" },
  { "name": "Portugal", "code": "PT" },
  { "name": "Romania", "code": "RO" },
  { "name": "San Marino", "code": "SM" },
  { "name": "Serbia", "code": "RS" },
  { "name": "Serbia and Montenegro", "code": "CS" },
  { "name": "Slovakia", "code": "SK" },
  { "name": "Slovenia", "code": "SI" },
  { "name": "Spain", "code": "ES" },
  { "name": "Svalbard and Jan Mayen", "code": "SJ" },
  { "name": "Sweden", "code": "SE" },
  { "name": "Switzerland", "code": "CH" },
  { "name": "Ukraine", "code": "UA" },
  { "name": "United Kingdom", "code": "GB" }
];

function generateCountries() {
  let content = ` <option disabled selected > País </option > `;
  for (id in countries) {
    content += `
    <option value=${countries[id].code}>${countries[id].name}</option>
    `;
  }
  countrySelect.innerHTML = content;
}

function init() {
  generateCountries();
  showHideCard();
}

// Event Listeners
window.addEventListener('load', init)

form.addEventListener('submit', e => validate(e));

username.addEventListener('blur', validateUsername);
name.addEventListener('blur', validateName);
surname.addEventListener('blur', validateSurname);

pass_1.addEventListener('blur', validatePassword);
pass_2.addEventListener('blur', passwordMatch);

address.addEventListener('blur', showHideCard);
countrySelect.addEventListener('change', showHideCard);
// TODO revisar la validación de la tarjeta
// TODO preguntar por tarjeta caducidad etc
card_4.addEventListener('blur', validateCard);
