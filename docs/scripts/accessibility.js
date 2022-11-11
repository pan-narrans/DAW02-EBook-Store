// HTML DOM references
const bigger = document.getElementById("increase_font_size");
const smaller = document.getElementById("decrease_font_size");
const night = document.getElementById("modo_noche");
// HTML DOM references for the night mode in @media
const articuloOscuro = document.getElementById("oscuro");
const pOscuro = document.getElementById("letraOscuro");
var mql = window.matchMedia("(max-device-width: 800px)");

// Functions
const increaseFontAll = function () {
  console.log("Increasing font size...");
  increaseFont(document.body);
};

const decreaseFontAll = function () {
  console.log("Decreasing font size...");
  decreaseFont(document.body);
};

const modoNoche = function () {
  console.log("modonoche...");
  noche(document.body);
};

const increaseFont = function (element) {
  let oldFontSize = window.getComputedStyle(element).fontSize.match(/\d+/)[0];
  let newFontSize = parseInt(oldFontSize) + 1;
  element.style.fontSize = newFontSize + "px";

  for(let i = 0; i < element.children.length; i++)
    increaseFont(element.children[i]);
};

const decreaseFont = function (element) {
  let oldFontSize = window.getComputedStyle(element).fontSize.match(/\d+/)[0];
  let newFontSize = parseInt(oldFontSize) - 1;
  element.style.fontSize = newFontSize + "px";

  for(let i = 0; i < element.children.length; i++)
    decreaseFont(element.children[i]);
};

const noche = function (element){
  if (element.style.backgroundColor === "rgb(35, 33, 33)") {
    element.style.backgroundColor = "white";
    element.style.color = "black";
    if(mql.matches){
      articuloOscuro.style.backgroundColor = "white";
      letraOscuro.style.color = "black";
    }
  }else {
    element.style.backgroundColor = "rgb(35, 33, 33)";
    articuloOscuro.style.backgroundColor = "rgb(35, 33, 33)";
    letraOscuro.style.color = "white";
    element.style.color = "white";
}
};

// Events
bigger.addEventListener("click", increaseFontAll);
smaller.addEventListener("click", decreaseFontAll);
night.addEventListener("click", modoNoche);
