const loginText = document.querySelector(".title-text .login");
const loginForm = document.querySelector("form.login");
const loginBtn = document.querySelector("label.login");
const signupBtn = document.querySelector("label.signup");
const signupLink = document.querySelector("form .signup-link a");
signupBtn.onclick = (() => {
	loginForm.style.marginLeft = "-50%";
	loginText.style.marginLeft = "-50%";
	var textRemove = document.getElementById("test1");
	console.log(textRemove)
	textRemove.remove();
	var textRemove2 = document.getElementById("test2");
	textRemove2.remove();
	var textRemov3 = document.getElementById("test3");
	textRemov3.remove();



});
loginBtn.onclick = (() => {
	loginForm.style.marginLeft = "0%";
	loginText.style.marginLeft = "0%";

	var textRemove = document.getElementById("test1");
	textRemove.remove();
	var textRemove2 = document.getElementById("test2");
	textRemove2.remove();
	var textRemov3 = document.getElementById("test3");
	textRemov3.remove();


});
signupLink.onclick = (() => {
	signupBtn.click();
	
	return false;
});


