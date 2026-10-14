function displayGreeting() {
let name = document.getElementById("nameInput").value;
let output = document.getElementById("output");

if (name === "") {
output.innerHTML = "Please enter your name.";
} else {
output.innerHTML = "Hello, " + name + "! Welcome.";
}
}
