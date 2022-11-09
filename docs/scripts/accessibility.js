// HTML DOM references
const bigger = document.getElementById("increase_font_size");
const smaller = document.getElementById("decrease_font_size");

// Functions
const increaseFontAll = function () {
  console.log("Increasing font size...");
  increaseFont(document.body);
}

const decreaseFontAll = function () {
  console.log("Decreasing font size...");
  decreaseFont(document.body);
}

const increaseFont = function (element) {
  let oldFontSize = window.getComputedStyle(element).fontSize.match(/\d+/)[0];
  let newFontSize = parseInt(oldFontSize) + 1;
  element.style.fontSize = newFontSize + 'px';

  for (let i = 0; i < element.children.length; i++)
    increaseFont(element.children[i]);
}

const decreaseFont = function (element) {
  let oldFontSize = window.getComputedStyle(element).fontSize.match(/\d+/)[0];
  let newFontSize = parseInt(oldFontSize) - 1;
  element.style.fontSize = newFontSize + 'px';

  for (let i = 0; i < element.children.length; i++)
    decreaseFont(element.children[i]);
}

// Events
bigger.addEventListener('click', increaseFontAll);
smaller.addEventListener('click', decreaseFontAll);