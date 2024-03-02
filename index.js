const button1 = document.getElementById("dynamic-button-1");
const button2 = document.getElementById("dynamic-button-2");

button1.innerText = "Donate";
button2.innerText = "Register";

// Zip Code Section Of Registration Page
const zipCodeInput = document.getElementById("zipCode");
zipCodeInput.addEventListener("input", function() {
  if (this.value.length !== 6) {
    this.value = "Please Enter Correct Zip Code.";
  }
});