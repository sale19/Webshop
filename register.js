const registerForm = document.getElementById('registerForm');
registerForm.addEventListener('submit', callbackOnRegister);

function callbackOnRegister(event) {
event.preventDefault();
const nameInput = document.getElementById('nameInput').value;
const surnameInput = document.getElementById('surnameInput').value;
const usernameInput = document.getElementById('usernameInput').value;
const emailInput = document.getElementById('emailInput').value;
const passwordInput = document.getElementById('passwordInput').value;
const confirmPasswordInput = document.getElementById('confirmPasswordInput').value;
if(passwordInput != confirmPasswordInput) {
    document.getElementById('labelMessage').innerHTML = "Password doesn't match!";
}else{
document.getElementById('labelMessage').innerHTML = "";
submitRegisterData(nameInput, surnameInput, usernameInput, emailInput, passwordInput);
    }
}


function submitRegisterData(nameInput, surnameInput, usernameInput, emailInput, passwordInput) {



const registerRequestParams = {
    method: "POST",
    headers: {
        "Content-Type": "application/json",

    },
    body: JSON.stringify({nameInput, surnameInput, usernameInput, emailInput, passwordInput}),

};
const registerUrl = 'http://localhost:8080/users';
const urlAddress = `${registerUrl}/register`;
    fetch(urlAddress, registerRequestParams).then((res) => {
        if(res.ok) {
            document.getElementById('labelMessage').innerHTML = "'User successfully registered!";
            localStorage.setItem('user', JSON.stringify({nameInput, surnameInput, usernameInput, emailInput}));
            window.location.href = 'dashboard.html';
            //alert('User successfully registered!');
        }else{
            document.getElementById('labelMessage2').innerHTML = "Problem with user register! That user already exists!";
            //alert('Problem with user register!');
        }
    })
    .catch((error) => {
     alert(`${error}`);
    });
}
