let num = document.getElementById("inputScreen");
function displa(n) {
  num.value += n;
}
function equal() {
  try {
    num.value = eval(num.value);
  } catch (e) {
    num.value = "Error";
  }
}
function cler() {
  num.value = "";
}
function sqr() {
  num.value = Math.pow(num.value, 2);
}
function cub() {
  num.value = Math.pow(num.value, 3);
}
function nth() {
  num.value = Math.pow(num.value, Number(num.value));
}
