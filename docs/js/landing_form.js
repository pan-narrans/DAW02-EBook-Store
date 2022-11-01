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

const form = document.forms["formCarlos"];
const surname = document.getElementById("surname");
const pass_1 = document.getElementById("password_1");
const pass_2 = document.getElementById("password_2");

const countrySelect = document.getElementById("country");

window.onload = function () {
  generateCountries();
}

function generateCountries() {
  let content = ` <option disabled selected > País </option > `;
  for (id in countries) {
    content += `
    <option value=${countries[id].code}>${countries[id].name}</option>
    `;
  }
  countrySelect.innerHTML = content;
}


const validate = function (e) {
  e.preventDefault();
  console.log("Le has dado a submit.")

  // TODO: Validate nick against db

  // Validate surname
  if (!surnameValid(surname.value)) {
    surnameValidate();
    surname.focus();
    return false;
  }

  // Validate password
  if (!passwordValid(pass_1.value)) {
    passwordValidate();
    pass_1.focus();
    return false;
  }

  // Passwords match
  if (pass_1.value !== pass_2.value) {
    passwordMatch();
    pass_2.focus();
    return false;
  }

  console.log("Enviando el formulario.")
  form.submit();
}

const surnameValidate = function () {
  document.getElementById("surname_alert").innerHTML = "";
  if (!surnameValid(surname.value)) {
    let message = "Introduce dos apellidos.";
    console.log(message)
    document.getElementById("surname_alert").innerHTML = message;
  } else {
    console.log("Apellidos válidos.")
  }
}
const surnameValid = function (str) {
  const twoWords = /^\w+ \w+$/;
  return twoWords.test(str);
}

/* PASSWORD VALIDATION */
const passwordValidate = function () {
  passwordHideCorrections();

  if (passwordValid(pass_1.value)) {
    console.log("La contraseña es válida.");
  } else {
    console.log("La contraseña no es válida.");
    passwordShowCorrections(pass_1.value);
  }
}

const passwordValid = function (str) {
  const validate = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\]).{8,}/;
  return validate.test(str);
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
  const upperCase = /(?=.*[A-Z]).*/;
  const lowerCase = /(?=.*[a-z]).*/;
  const number = /(?=.*[0-9]).*/;
  const symbol = /(?=.*[¿?¡!*.<>|@#~€¬"·$%&()={}\[\]\/\\]).*/;

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


/**
 * Check if both passwords match.
 */
const passwordMatch = function () {
  document.getElementById("password_alert_match").innerHTML = "";

  if (pass_1.value !== pass_2.value) {
    const message = "Las contraseñas no coinciden.";
    console.log(message);
    document.getElementById("password_alert_match").innerHTML = message;
  } else if (valid_password) {
    console.log("Las contraseñas coinciden.")
  }
}

form.addEventListener('submit', e => validate(e));
surname.addEventListener('blur', surnameValidate);
pass_1.addEventListener('blur', passwordValidate);
pass_2.addEventListener('blur', passwordMatch);