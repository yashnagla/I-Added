const button1 = document.getElementById("dynamic-button-1");
const button2 = document.getElementById("dynamic-button-2");
const button3 = document.getElementById("dynamic-button-3");

button1.innerText = "Donate";
button2.innerText = "Register";
button3.innerText = "Login";

// Sign-Up Button
document.getElementById("signUpButton").addEventListener("click", function () {
  window.location.href = "login.html";
});
// Function to check if passwords match
const checkPasswords = () => {
  const passwordInput = document.getElementById("passwordInput");
  const confirmPasswordInput = document.getElementById("confirmPasswordInput");
  // Check if passwords match and update the message accordingly
  if (passwordInput.value !== confirmPasswordInput.value) {
    confirmPasswordInput.setCustomValidity(
      "Passwords do not match. Please re-enter your password."
    );
  } else {
    confirmPasswordInput.setCustomValidity("");
  }
  // Return true if both inputs are valid, or false otherwise
  return passwordInput.checkValidity() && confirmPasswordInput.checkValidity();
};

// Add event listener to the form submission
document.getElementById("myForm").addEventListener("submit", (event) => {
  if (!checkPasswords()) {
    event.preventDefault(); // Prevent form submission if passwords don't match
  }
});